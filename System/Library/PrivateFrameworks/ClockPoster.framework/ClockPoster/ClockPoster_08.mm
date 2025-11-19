uint64_t objectdestroy_46Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E496EE90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E48ECAA8;

  return sub_1E49697D4(a1, v4, v5, v7);
}

uint64_t sub_1E496EF78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E496EFC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E496F02C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = v3[3];
  v9 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v8);
  sub_1E48D61D8(a1, v8, a2, v9, a3);
  v10 = v4[8];
  v11 = v4[9];
  __swift_project_boxed_opaque_existential_1(v4 + 5, v10);
  sub_1E48D61D8(a1, v10, a2, v11, a3 + 5);
  v12 = v4[13];
  v13 = v4[14];
  __swift_project_boxed_opaque_existential_1(v4 + 10, v12);
  return sub_1E48D61D8(a1, v12, a2, v13, a3 + 10);
}

id sub_1E496F0FC()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v5 = v0[8];
  v6 = v0[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  v7 = (*(v6 + 8))(v5, v6);
  v8 = v0[13];
  v9 = v0[14];
  __swift_project_boxed_opaque_existential_1(v1 + 10, v1[13]);
  v10 = (*(v9 + 8))(v8, v9);
  v11 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  return [v11 initWithHue:v4 saturation:v7 brightness:v10 alpha:1.0];
}

unint64_t sub_1E496F210(uint64_t a1)
{
  result = sub_1E496F238();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E496F238()
{
  result = qword_1ECF812C8;
  if (!qword_1ECF812C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF812C8);
  }

  return result;
}

unint64_t sub_1E496F28C(uint64_t a1)
{
  *(a1 + 8) = sub_1E496F238();
  result = sub_1E496F2BC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E496F2BC()
{
  result = qword_1ECF812D0;
  if (!qword_1ECF812D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF812D0);
  }

  return result;
}

BOOL sub_1E496F310(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v7 = a1[8];
  v8 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v7);
  v9 = (*(v8 + 8))(v7, v8);
  v10 = a1[13];
  v11 = a1[14];
  __swift_project_boxed_opaque_existential_1(a1 + 10, v10);
  v12 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithHue:v6 saturation:v9 brightness:(*(v11 + 8))(v10 alpha:{v11), 1.0}];
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  v15 = (*(v14 + 8))(v13, v14);
  v16 = a2[8];
  v17 = a2[9];
  __swift_project_boxed_opaque_existential_1(a2 + 5, v16);
  v18 = (*(v17 + 8))(v16, v17);
  v19 = a2[13];
  v20 = a2[14];
  __swift_project_boxed_opaque_existential_1(a2 + 10, v19);
  v21 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithHue:v15 saturation:v18 brightness:(*(v20 + 8))(v19 alpha:{v20), 1.0}];
  sub_1E496F50C();
  v22 = sub_1E499848C();

  return (v22 & 1) == 0;
}

unint64_t sub_1E496F50C()
{
  result = qword_1ECF7F930;
  if (!qword_1ECF7F930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF7F930);
  }

  return result;
}

uint64_t sub_1E496F5A8(uint64_t a1, char a2)
{
  sub_1E499892C();
  MEMORY[0x1E691C170](qword_1E49A5D48[a2]);
  return sub_1E499896C();
}

uint64_t sub_1E496F5F8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81630, &qword_1E49A5C30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815C0, &qword_1E49A5BD0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v21 - v14;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1E48C1338(a1, &qword_1ECF81630, &qword_1E49A5C30);
    sub_1E4981C28(a2, &qword_1ECF815C0, &qword_1E49A5BD0, &qword_1ECF81638, &qword_1E49A5C38, v9);
    v16 = sub_1E4996DBC();
    (*(*(v16 - 8) + 8))(a2, v16);
    return sub_1E48C1338(v9, &qword_1ECF81630, &qword_1E49A5C30);
  }

  else
  {
    (*(v11 + 32))(v15, a1, v10);
    v18 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;
    sub_1E498649C(v15, a2, isUniquelyReferenced_nonNull_native, &qword_1ECF815C0, &qword_1E49A5BD0, &qword_1ECF81638, &qword_1E49A5C38);
    v20 = sub_1E4996DBC();
    result = (*(*(v20 - 8) + 8))(a2, v20);
    *v2 = v22;
  }

  return result;
}

uint64_t sub_1E496F86C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1E48B7448(a1, v8);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_1E4986200(v8, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1E48C8360(a2);
    *v2 = v7;
  }

  else
  {
    sub_1E48C1338(a1, &qword_1ECF81740, &qword_1E49A5D28);
    sub_1E4981B7C(a2, v8);
    sub_1E48C8360(a2);
    return sub_1E48C1338(v8, &qword_1ECF81740, &qword_1E49A5D28);
  }

  return result;
}

uint64_t sub_1E496F928(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81550, &qword_1E49A5B68);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81530, &unk_1E49A5B50);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v22 - v15;
  if ((*(v11 + 48))(a1, 1, v10, v14) == 1)
  {
    sub_1E48C1338(a1, &qword_1ECF81550, &qword_1E49A5B68);
    sub_1E4981C28(a2, &unk_1ECF81530, &unk_1E49A5B50, &qword_1ECF81558, &qword_1E49A5B70, v9);
    v17 = sub_1E4996DBC();
    (*(*(v17 - 8) + 8))(a2, v17);
    return sub_1E48C1338(v9, &qword_1ECF81550, &qword_1E49A5B68);
  }

  else
  {
    (*(v11 + 32))(v16, a1, v10);
    v19 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_1E498649C(v16, a2, isUniquelyReferenced_nonNull_native, &unk_1ECF81530, &unk_1E49A5B50, &qword_1ECF81558, &qword_1E49A5B70);
    v21 = sub_1E4996DBC();
    result = (*(*(v21 - 8) + 8))(a2, v21);
    *v2 = v23;
  }

  return result;
}

uint64_t sub_1E496FB9C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81518, &qword_1E49A5B38);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF814F0, &unk_1E49A5B10);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v22 - v15;
  if ((*(v11 + 48))(a1, 1, v10, v14) == 1)
  {
    sub_1E48C1338(a1, &qword_1ECF81518, &qword_1E49A5B38);
    sub_1E4981C28(a2, &unk_1ECF814F0, &unk_1E49A5B10, &qword_1ECF81520, &qword_1E49A5B40, v9);
    v17 = sub_1E4996DBC();
    (*(*(v17 - 8) + 8))(a2, v17);
    return sub_1E48C1338(v9, &qword_1ECF81518, &qword_1E49A5B38);
  }

  else
  {
    (*(v11 + 32))(v16, a1, v10);
    v19 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_1E498649C(v16, a2, isUniquelyReferenced_nonNull_native, &unk_1ECF814F0, &unk_1E49A5B10, &qword_1ECF81520, &qword_1E49A5B40);
    v21 = sub_1E4996DBC();
    result = (*(*(v21 - 8) + 8))(a2, v21);
    *v2 = v23;
  }

  return result;
}

uint64_t sub_1E496FE10(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81730, &qword_1E49A5D18);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81718, &qword_1E49A5D00);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v22 - v15;
  if ((*(v11 + 48))(a1, 1, v10, v14) == 1)
  {
    sub_1E48C1338(a1, &qword_1ECF81730, &qword_1E49A5D18);
    sub_1E4981C28(a2, &qword_1ECF81718, &qword_1E49A5D00, &qword_1ECF81738, &qword_1E49A5D20, v9);
    v17 = sub_1E4996DBC();
    (*(*(v17 - 8) + 8))(a2, v17);
    return sub_1E48C1338(v9, &qword_1ECF81730, &qword_1E49A5D18);
  }

  else
  {
    (*(v11 + 32))(v16, a1, v10);
    v19 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_1E498649C(v16, a2, isUniquelyReferenced_nonNull_native, &qword_1ECF81718, &qword_1E49A5D00, &qword_1ECF81738, &qword_1E49A5D20);
    v21 = sub_1E4996DBC();
    result = (*(*(v21 - 8) + 8))(a2, v21);
    *v2 = v23;
  }

  return result;
}

uint64_t sub_1E4970084(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815A8, &qword_1E49A5BB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81598, &qword_1E49A5BB0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v22 - v15;
  if ((*(v11 + 48))(a1, 1, v10, v14) == 1)
  {
    sub_1E48C1338(a1, &qword_1ECF815A8, &qword_1E49A5BB8);
    sub_1E4981C28(a2, &unk_1ECF81598, &qword_1E49A5BB0, &qword_1ECF815B0, &qword_1E49A5BC0, v9);
    v17 = sub_1E4996DBC();
    (*(*(v17 - 8) + 8))(a2, v17);
    return sub_1E48C1338(v9, &qword_1ECF815A8, &qword_1E49A5BB8);
  }

  else
  {
    (*(v11 + 32))(v16, a1, v10);
    v19 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_1E498649C(v16, a2, isUniquelyReferenced_nonNull_native, &unk_1ECF81598, &qword_1E49A5BB0, &qword_1ECF815B0, &qword_1E49A5BC0);
    v21 = sub_1E4996DBC();
    result = (*(*(v21 - 8) + 8))(a2, v21);
    *v2 = v23;
  }

  return result;
}

uint64_t sub_1E49702F8(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for WorldViewModel.Pin(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v13, v17) == 1)
  {
    sub_1E48C1338(a1, &qword_1ECF7F848, &qword_1E499D520);
    v20 = *v4;
    v21 = sub_1E4948350(a2, a3);
    if (v22)
    {
      v23 = v21;
      v24 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *v4;
      v31 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1E4987F18();
        v26 = v31;
      }

      sub_1E498AA50(*(v26 + 56) + *(v14 + 72) * v23, v12, type metadata accessor for WorldViewModel.Pin);
      sub_1E4985130(v23, v26);
      *v4 = v26;
      (*(v14 + 56))(v12, 0, 1, v13);
    }

    else
    {
      (*(v14 + 56))(v12, 1, 1, v13);
    }

    return sub_1E48C1338(v12, &qword_1ECF7F848, &qword_1E499D520);
  }

  else
  {
    sub_1E498AA50(a1, v19, type metadata accessor for WorldViewModel.Pin);
    v27 = *v4;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v4;
    result = sub_1E49866C0(v19, v28, a2, a3);
    *v4 = v31;
  }

  return result;
}

uint64_t sub_1E4970560(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF814A8, &qword_1E49A5AD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81478, &qword_1E49A5AA8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v22 - v15;
  if ((*(v11 + 48))(a1, 1, v10, v14) == 1)
  {
    sub_1E48C1338(a1, &qword_1ECF814A8, &qword_1E49A5AD8);
    sub_1E4981C28(a2, &qword_1ECF81478, &qword_1E49A5AA8, &qword_1ECF814C8, &qword_1E49A5AE8, v9);
    v17 = sub_1E4996DBC();
    (*(*(v17 - 8) + 8))(a2, v17);
    return sub_1E48C1338(v9, &qword_1ECF814A8, &qword_1E49A5AD8);
  }

  else
  {
    (*(v11 + 32))(v16, a1, v10);
    v19 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_1E498649C(v16, a2, isUniquelyReferenced_nonNull_native, &qword_1ECF81478, &qword_1E49A5AA8, &qword_1ECF814C8, &qword_1E49A5AE8);
    v21 = sub_1E4996DBC();
    result = (*(*(v21 - 8) + 8))(a2, v21);
    *v2 = v23;
  }

  return result;
}

uint64_t sub_1E49707D4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81720, &qword_1E49A5D08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF816E8, &unk_1E49A5CD0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v22 - v15;
  if ((*(v11 + 48))(a1, 1, v10, v14) == 1)
  {
    sub_1E48C1338(a1, &qword_1ECF81720, &qword_1E49A5D08);
    sub_1E4981C28(a2, &qword_1ECF816E8, &unk_1E49A5CD0, &qword_1ECF81728, &qword_1E49A5D10, v9);
    v17 = sub_1E4996DBC();
    (*(*(v17 - 8) + 8))(a2, v17);
    return sub_1E48C1338(v9, &qword_1ECF81720, &qword_1E49A5D08);
  }

  else
  {
    (*(v11 + 32))(v16, a1, v10);
    v19 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_1E498649C(v16, a2, isUniquelyReferenced_nonNull_native, &qword_1ECF816E8, &unk_1E49A5CD0, &qword_1ECF81728, &qword_1E49A5D10);
    v21 = sub_1E4996DBC();
    result = (*(*(v21 - 8) + 8))(a2, v21);
    *v2 = v23;
  }

  return result;
}

uint64_t sub_1E4970A48(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81670, &qword_1E49A5C60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815F0, &qword_1E49A5C00);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v22 - v15;
  if ((*(v11 + 48))(a1, 1, v10, v14) == 1)
  {
    sub_1E48C1338(a1, &qword_1ECF81670, &qword_1E49A5C60);
    sub_1E4981C28(a2, &qword_1ECF815F0, &qword_1E49A5C00, &qword_1ECF81678, &qword_1E49A5C68, v9);
    v17 = sub_1E4996DBC();
    (*(*(v17 - 8) + 8))(a2, v17);
    return sub_1E48C1338(v9, &qword_1ECF81670, &qword_1E49A5C60);
  }

  else
  {
    (*(v11 + 32))(v16, a1, v10);
    v19 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_1E498649C(v16, a2, isUniquelyReferenced_nonNull_native, &qword_1ECF815F0, &qword_1E49A5C00, &qword_1ECF81678, &qword_1E49A5C68);
    v21 = sub_1E4996DBC();
    result = (*(*(v21 - 8) + 8))(a2, v21);
    *v2 = v23;
  }

  return result;
}

uint64_t sub_1E4970CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24) == 1)
  {
    sub_1E48C1338(a1, &qword_1ECF81658, &qword_1E49A5C58);
    sub_1E4981E04(a2, a3, v11);

    return sub_1E48C1338(v11, &qword_1ECF81658, &qword_1E49A5C58);
  }

  else
  {
    v7 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v7;
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_1E4986AB0(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10;
  }

  return result;
}

uint64_t sub_1E4970D90(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF816D0, &qword_1E49A5CB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81698, &qword_1E49A5C88);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v22 - v15;
  if ((*(v11 + 48))(a1, 1, v10, v14) == 1)
  {
    sub_1E48C1338(a1, &qword_1ECF816D0, &qword_1E49A5CB8);
    sub_1E4981C28(a2, &qword_1ECF81698, &qword_1E49A5C88, &qword_1ECF816D8, &qword_1E49A5CC0, v9);
    v17 = sub_1E4996DBC();
    (*(*(v17 - 8) + 8))(a2, v17);
    return sub_1E48C1338(v9, &qword_1ECF816D0, &qword_1E49A5CB8);
  }

  else
  {
    (*(v11 + 32))(v16, a1, v10);
    v19 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_1E498649C(v16, a2, isUniquelyReferenced_nonNull_native, &qword_1ECF81698, &qword_1E49A5C88, &qword_1ECF816D8, &qword_1E49A5CC0);
    v21 = sub_1E4996DBC();
    result = (*(*(v21 - 8) + 8))(a2, v21);
    *v2 = v23;
  }

  return result;
}

uint64_t sub_1E4971004(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v28 - v9;
  v11 = sub_1E4996D8C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11, v15) == 1)
  {
    sub_1E48C1338(a1, &qword_1ECF809D0, &qword_1E499D6C0);
    v18 = *v3;
    v19 = sub_1E4948474(a2);
    if (v20)
    {
      v21 = v19;
      v22 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *v3;
      v29 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1E4988CA4();
        v24 = v29;
      }

      (*(v12 + 32))(v10, *(v24 + 56) + *(v12 + 72) * v21, v11);
      sub_1E4985820(v21, v24);
      *v3 = v24;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return sub_1E48C1338(v10, &qword_1ECF809D0, &qword_1E499D6C0);
  }

  else
  {
    (*(v12 + 32))(v17, a1, v11);
    v25 = *v3;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v3;
    result = sub_1E4986F20(v17, a2, v26);
    *v3 = v29;
  }

  return result;
}

uint64_t sub_1E4971254(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81290, &qword_1E49A54F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for ScheduledTask();
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v16 + 48))(a1, 1, v13) == 1)
  {
    sub_1E48C1338(a1, &qword_1ECF81290, &qword_1E49A54F0);
    sub_1E4981EAC(a2, v9);
    v17 = sub_1E4996DBC();
    (*(*(v17 - 8) + 8))(a2, v17);
    return sub_1E48C1338(v9, &qword_1ECF81290, &qword_1E49A54F0);
  }

  else
  {
    sub_1E498AA50(a1, v15, type metadata accessor for ScheduledTask);
    v19 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_1E4987088(v15, a2, isUniquelyReferenced_nonNull_native);
    v21 = sub_1E4996DBC();
    result = (*(*(v21 - 8) + 8))(a2, v21);
    *v2 = v23;
  }

  return result;
}

uint64_t sub_1E4971474(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_1E498725C(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_1E4996DBC();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_1E4947F28(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_1E4989238();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = sub_1E4996DBC();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_1E4985D3C(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = sub_1E4996DBC();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_1E4971634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v45 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815B8, &qword_1E49A5BC8);
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v39 - v16;
  v18 = type metadata accessor for TimeString(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v41 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v27 = &v39 - v26;
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v39 - v29;
  v31 = *(*a2 + 96);
  swift_beginAccess();
  sub_1E48C12D0(a2 + v31, v17, &qword_1ECF815D0, &unk_1E499A370);
  v32 = *(v19 + 48);
  if (v32(v17, 1, v18) == 1)
  {
    v40 = v8;
    v33 = v45;
    sub_1E48C1338(v17, &qword_1ECF815D0, &unk_1E499A370);
    sub_1E48C12D0(v42, v14, &qword_1ECF815D0, &unk_1E499A370);
    if (v32(v14, 1, v18) == 1)
    {
      sub_1E48C1338(v14, &qword_1ECF815D0, &unk_1E499A370);
    }

    else
    {
      v36 = v41;
      sub_1E498AA50(v14, v41, type metadata accessor for TimeString);
      sub_1E498A9E8(v36, v27, type metadata accessor for TimeString);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815C0, &qword_1E49A5BD0);
      v37 = v40;
      sub_1E499818C();
      (*(v43 + 8))(v37, v44);
      sub_1E49736C8(v36);
      sub_1E4989F40(v36, type metadata accessor for TimeString);
    }

    v35 = v33;
  }

  else
  {
    sub_1E498AA50(v17, v30, type metadata accessor for TimeString);
    sub_1E498A9E8(v30, v27, type metadata accessor for TimeString);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815C0, &qword_1E49A5BD0);
    v34 = v45;
    sub_1E499818C();
    (*(v43 + 8))(v8, v44);
    sub_1E4989F40(v30, type metadata accessor for TimeString);
    v35 = v34;
  }

  return sub_1E49790D0(v35);
}

uint64_t sub_1E4971A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v48 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81528, &qword_1E49A5B48);
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF80A60, &unk_1E49A3A10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v44 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v42 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v42 - v29;
  v31 = *(*a2 + 96);
  swift_beginAccess();
  sub_1E48C12D0(a2 + v31, v17, &unk_1ECF80A60, &unk_1E49A3A10);
  v32 = *(v19 + 48);
  if (v32(v17, 1, v18) == 1)
  {
    v43 = v8;
    v33 = v48;
    sub_1E48C1338(v17, &unk_1ECF80A60, &unk_1E49A3A10);
    sub_1E48C12D0(v45, v13, &unk_1ECF80A60, &unk_1E49A3A10);
    if (v32(v13, 1, v18) == 1)
    {
      v34 = &unk_1ECF80A60;
      v35 = &unk_1E49A3A10;
      v36 = v13;
    }

    else
    {
      v39 = v44;
      sub_1E48C15C8(v13, v44, &qword_1ECF809D0, &qword_1E499D6C0);
      sub_1E48C12D0(v39, v26, &qword_1ECF809D0, &qword_1E499D6C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81530, &unk_1E49A5B50);
      v40 = v43;
      sub_1E499818C();
      (*(v46 + 8))(v40, v47);
      sub_1E4974E44(v39);
      v36 = v39;
      v34 = &qword_1ECF809D0;
      v35 = &qword_1E499D6C0;
    }

    sub_1E48C1338(v36, v34, v35);
    v38 = v33;
  }

  else
  {
    sub_1E48C15C8(v17, v30, &qword_1ECF809D0, &qword_1E499D6C0);
    sub_1E48C12D0(v30, v26, &qword_1ECF809D0, &qword_1E499D6C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81530, &unk_1E49A5B50);
    v37 = v48;
    sub_1E499818C();
    (*(v46 + 8))(v8, v47);
    sub_1E48C1338(v30, &qword_1ECF809D0, &qword_1E499D6C0);
    v38 = v37;
  }

  return sub_1E49793C0(v38);
}

uint64_t sub_1E4971E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v48 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF814E8, &qword_1E49A5B08);
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81510, &unk_1E499E0A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F728, &unk_1E499CAB0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v44 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v42 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v42 - v29;
  v31 = *(*a2 + 96);
  swift_beginAccess();
  sub_1E48C12D0(a2 + v31, v17, &qword_1ECF81510, &unk_1E499E0A0);
  v32 = *(v19 + 48);
  if (v32(v17, 1, v18) == 1)
  {
    v43 = v8;
    v33 = v48;
    sub_1E48C1338(v17, &qword_1ECF81510, &unk_1E499E0A0);
    sub_1E48C12D0(v45, v13, &qword_1ECF81510, &unk_1E499E0A0);
    if (v32(v13, 1, v18) == 1)
    {
      v34 = &qword_1ECF81510;
      v35 = &unk_1E499E0A0;
      v36 = v13;
    }

    else
    {
      v39 = v44;
      sub_1E48C15C8(v13, v44, &qword_1ECF7F728, &unk_1E499CAB0);
      sub_1E48C12D0(v39, v26, &qword_1ECF7F728, &unk_1E499CAB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF814F0, &unk_1E49A5B10);
      v40 = v43;
      sub_1E499818C();
      (*(v46 + 8))(v40, v47);
      sub_1E49759A8(v39);
      v36 = v39;
      v34 = &qword_1ECF7F728;
      v35 = &unk_1E499CAB0;
    }

    sub_1E48C1338(v36, v34, v35);
    v38 = v33;
  }

  else
  {
    sub_1E48C15C8(v17, v30, &qword_1ECF7F728, &unk_1E499CAB0);
    sub_1E48C12D0(v30, v26, &qword_1ECF7F728, &unk_1E499CAB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF814F0, &unk_1E49A5B10);
    v37 = v48;
    sub_1E499818C();
    (*(v46 + 8))(v8, v47);
    sub_1E48C1338(v30, &qword_1ECF7F728, &unk_1E499CAB0);
    v38 = v37;
  }

  return sub_1E49796B0(v38);
}

uint64_t sub_1E4972284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81710, &qword_1E49A5CF8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v20 - v10;
  swift_beginAccess();
  v12 = *(a2 + 24);
  if (v12 == 1)
  {
    v13 = *(a3 + 8);
    if (v13 != 1)
    {
      v14 = *(a3 + 16);
      v16 = *(a3 + 24);
      v21 = *a3;
      v15 = v21;
      v22 = v13;
      v23 = v14;
      v24 = v16;
      sub_1E498ADB8(v21, v13);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81718, &qword_1E49A5D00);
      sub_1E499818C();
      (*(v7 + 8))(v11, v6);
      sub_1E4976548(v15, v13, v14, v16);
      sub_1E48EC78C(v15, v13);
    }
  }

  else
  {
    v17 = *(a2 + 40);
    v18 = *(a2 + 32);
    v21 = *(a2 + 16);
    v22 = v12;
    v23 = v18;
    v24 = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81718, &qword_1E49A5D00);
    sub_1E499818C();
    (*(v7 + 8))(v11, v6);
  }

  return sub_1E49799A0(a1);
}

uint64_t sub_1E497248C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81590, &qword_1E49A5BA8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v14 - v10;
  swift_beginAccess();
  if (*(a2 + 16) == 1)
  {
    v12 = *a3;
    if (*a3 != 1)
    {
      v14 = *a3;
      sub_1E498AC20(v12);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81598, &qword_1E49A5BB0);
      sub_1E499818C();
      (*(v7 + 8))(v11, v6);
      sub_1E4974B14(v12);
      sub_1E48EC714(v12);
    }
  }

  else
  {
    v14 = *(a2 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81598, &qword_1E49A5BB0);
    sub_1E499818C();
    (*(v7 + 8))(v11, v6);
  }

  return sub_1E4979C7C(a1);
}

uint64_t sub_1E4972640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v45 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81470, &qword_1E49A5AA0);
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A8, &unk_1E49A62B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v39 - v16;
  v18 = type metadata accessor for CurrentLocationResult(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v41 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v39 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v39 - v29;
  v31 = *(*a2 + 96);
  swift_beginAccess();
  sub_1E48C12D0(a2 + v31, v17, &qword_1ECF7F8A8, &unk_1E49A62B0);
  v32 = *(v19 + 48);
  if (v32(v17, 1, v18) == 1)
  {
    v40 = v8;
    v33 = v45;
    sub_1E48C1338(v17, &qword_1ECF7F8A8, &unk_1E49A62B0);
    sub_1E48C12D0(v42, v13, &qword_1ECF7F8A8, &unk_1E49A62B0);
    if (v32(v13, 1, v18) == 1)
    {
      sub_1E48C1338(v13, &qword_1ECF7F8A8, &unk_1E49A62B0);
    }

    else
    {
      v36 = v41;
      sub_1E498AA50(v13, v41, type metadata accessor for CurrentLocationResult);
      sub_1E498A9E8(v36, v26, type metadata accessor for CurrentLocationResult);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81478, &qword_1E49A5AA8);
      v37 = v40;
      sub_1E499818C();
      (*(v43 + 8))(v37, v44);
      sub_1E4976930(v36);
      sub_1E4989F40(v36, type metadata accessor for CurrentLocationResult);
    }

    v35 = v33;
  }

  else
  {
    sub_1E498AA50(v17, v30, type metadata accessor for CurrentLocationResult);
    sub_1E498A9E8(v30, v26, type metadata accessor for CurrentLocationResult);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81478, &qword_1E49A5AA8);
    v34 = v45;
    sub_1E499818C();
    (*(v43 + 8))(v8, v44);
    sub_1E4989F40(v30, type metadata accessor for CurrentLocationResult);
    v35 = v34;
  }

  return sub_1E4979F58(v35);
}

uint64_t sub_1E4972A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v48 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF816E0, &qword_1E49A5CC8);
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB70, &unk_1E499E400);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v44 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v42 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v42 - v29;
  v31 = *(*a2 + 96);
  swift_beginAccess();
  sub_1E48C12D0(a2 + v31, v17, &qword_1ECF7FB70, &unk_1E499E400);
  v32 = *(v19 + 48);
  if (v32(v17, 1, v18) == 1)
  {
    v43 = v8;
    v33 = v48;
    sub_1E48C1338(v17, &qword_1ECF7FB70, &unk_1E499E400);
    sub_1E48C12D0(v45, v13, &qword_1ECF7FB70, &unk_1E499E400);
    if (v32(v13, 1, v18) == 1)
    {
      v34 = &qword_1ECF7FB70;
      v35 = &unk_1E499E400;
      v36 = v13;
    }

    else
    {
      v39 = v44;
      sub_1E48C15C8(v13, v44, &unk_1ECF816F0, &qword_1E49A5090);
      sub_1E48C12D0(v39, v26, &unk_1ECF816F0, &qword_1E49A5090);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF816E8, &unk_1E49A5CD0);
      v40 = v43;
      sub_1E499818C();
      (*(v46 + 8))(v40, v47);
      sub_1E4977138(v39);
      v36 = v39;
      v34 = &unk_1ECF816F0;
      v35 = &qword_1E49A5090;
    }

    sub_1E48C1338(v36, v34, v35);
    v38 = v33;
  }

  else
  {
    sub_1E48C15C8(v17, v30, &unk_1ECF816F0, &qword_1E49A5090);
    sub_1E48C12D0(v30, v26, &unk_1ECF816F0, &qword_1E49A5090);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF816E8, &unk_1E49A5CD0);
    v37 = v48;
    sub_1E499818C();
    (*(v46 + 8))(v8, v47);
    sub_1E48C1338(v30, &unk_1ECF816F0, &qword_1E49A5090);
    v38 = v37;
  }

  return sub_1E497A248(v38);
}

uint64_t sub_1E4972E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v44 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815E8, &qword_1E49A5BF8);
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v39 - v16;
  v18 = sub_1E4996D8C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v40 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v39 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v39 - v29;
  v31 = *(*a2 + 96);
  swift_beginAccess();
  v45 = a2;
  sub_1E48C12D0(a2 + v31, v17, &qword_1ECF809D0, &qword_1E499D6C0);
  v32 = *(v19 + 48);
  if (v32(v17, 1, v18) == 1)
  {
    v39 = v8;
    v33 = v44;
    sub_1E48C1338(v17, &qword_1ECF809D0, &qword_1E499D6C0);
    sub_1E48C12D0(v41, v13, &qword_1ECF809D0, &qword_1E499D6C0);
    if (v32(v13, 1, v18) == 1)
    {
      sub_1E48C1338(v13, &qword_1ECF809D0, &qword_1E499D6C0);
    }

    else
    {
      v36 = v40;
      (*(v19 + 32))(v40, v13, v18);
      (*(v19 + 16))(v26, v36, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815F0, &qword_1E49A5C00);
      v37 = v39;
      sub_1E499818C();
      (*(v42 + 8))(v37, v43);
      sub_1E4977C88(v36);
      (*(v19 + 8))(v36, v18);
    }

    v35 = v33;
  }

  else
  {
    (*(v19 + 32))(v30, v17, v18);
    (*(v19 + 16))(v26, v30, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815F0, &qword_1E49A5C00);
    v34 = v44;
    sub_1E499818C();
    (*(v42 + 8))(v8, v43);
    (*(v19 + 8))(v30, v18);
    v35 = v34;
  }

  return sub_1E497A538(v35);
}

uint64_t sub_1E49732B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v48 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81690, &qword_1E49A5C80);
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816C0, &qword_1E49A5CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80368, &unk_1E49A2840);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v44 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v42 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v42 - v29;
  v31 = *(*a2 + 96);
  swift_beginAccess();
  sub_1E48C12D0(a2 + v31, v17, &unk_1ECF816C0, &qword_1E49A5CB0);
  v32 = *(v19 + 48);
  if (v32(v17, 1, v18) == 1)
  {
    v43 = v8;
    v33 = v48;
    sub_1E48C1338(v17, &unk_1ECF816C0, &qword_1E49A5CB0);
    sub_1E48C12D0(v45, v13, &unk_1ECF816C0, &qword_1E49A5CB0);
    if (v32(v13, 1, v18) == 1)
    {
      v34 = &unk_1ECF816C0;
      v35 = &qword_1E49A5CB0;
      v36 = v13;
    }

    else
    {
      v39 = v44;
      sub_1E48C15C8(v13, v44, &qword_1ECF80368, &unk_1E49A2840);
      sub_1E48C12D0(v39, v26, &qword_1ECF80368, &unk_1E49A2840);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81698, &qword_1E49A5C88);
      v40 = v43;
      sub_1E499818C();
      (*(v46 + 8))(v40, v47);
      sub_1E4978568(v39);
      v36 = v39;
      v34 = &qword_1ECF80368;
      v35 = &unk_1E49A2840;
    }

    sub_1E48C1338(v36, v34, v35);
    v38 = v33;
  }

  else
  {
    sub_1E48C15C8(v17, v30, &qword_1ECF80368, &unk_1E49A2840);
    sub_1E48C12D0(v30, v26, &qword_1ECF80368, &unk_1E49A2840);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81698, &qword_1E49A5C88);
    v37 = v48;
    sub_1E499818C();
    (*(v46 + 8))(v8, v47);
    sub_1E48C1338(v30, &qword_1ECF80368, &unk_1E49A2840);
    v38 = v37;
  }

  return sub_1E497A828(v38);
}

uint64_t sub_1E49736C8(uint64_t a1)
{
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815B8, &qword_1E49A5BC8);
  v75 = *(v67 - 8);
  v3 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v67, v4);
  v66 = &v64 - v5;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815C0, &qword_1E49A5BD0);
  v78 = *(v80 - 8);
  v6 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v80, v7);
  v79 = &v64 - v8;
  v9 = type metadata accessor for TimeString(0);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v65 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v68 = (&v64 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815C8, &unk_1E49A5BD8);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v64 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v23 - 8, v25);
  v69 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v72 = &v64 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v34 = (&v64 - v33);
  MEMORY[0x1EEE9AC00](v32, v35);
  v37 = &v64 - v36;
  v38 = *(*v1 + 96);
  swift_beginAccess();
  v74 = a1;
  sub_1E498A9E8(a1, v37, type metadata accessor for TimeString);
  v73 = v10[7];
  (v73)(v37, 0, 1, v9);
  v39 = *(v18 + 56);
  v76 = v1;
  v77 = v38;
  sub_1E48C12D0(v1 + v38, v22, &qword_1ECF815D0, &unk_1E499A370);
  sub_1E48C12D0(v37, &v22[v39], &qword_1ECF815D0, &unk_1E499A370);
  v40 = v10[6];
  v41 = v40(v22, 1, v9);
  v70 = v10 + 6;
  if (v41 == 1)
  {
    sub_1E48C1338(v37, &qword_1ECF815D0, &unk_1E499A370);
    if (v40(&v22[v39], 1, v9) == 1)
    {
      return sub_1E48C1338(v22, &qword_1ECF815D0, &unk_1E499A370);
    }
  }

  else
  {
    sub_1E48C12D0(v22, v34, &qword_1ECF815D0, &unk_1E499A370);
    if (v40(&v22[v39], 1, v9) != 1)
    {
      v61 = &v22[v39];
      v62 = v68;
      sub_1E498AA50(v61, v68, type metadata accessor for TimeString);
      v63 = _s11ClockPoster10TimeStringV2eeoiySbAC_ACtFZ_0(v34, v62);
      sub_1E4989F40(v62, type metadata accessor for TimeString);
      sub_1E48C1338(v37, &qword_1ECF815D0, &unk_1E499A370);
      sub_1E4989F40(v34, type metadata accessor for TimeString);
      result = sub_1E48C1338(v22, &qword_1ECF815D0, &unk_1E499A370);
      if (v63)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_1E48C1338(v37, &qword_1ECF815D0, &unk_1E499A370);
    sub_1E4989F40(v34, type metadata accessor for TimeString);
  }

  sub_1E48C1338(v22, &qword_1ECF815C8, &unk_1E49A5BD8);
LABEL_7:
  v43 = v72;
  sub_1E498A9E8(v74, v72, type metadata accessor for TimeString);
  v74 = v9;
  (v73)(v43, 0, 1, v9);
  v73 = v40;
  v45 = v76;
  v44 = v77;
  swift_beginAccess();
  sub_1E48EC0CC(v43, v45 + v44, &qword_1ECF815D0, &unk_1E499A370);
  swift_endAccess();
  v46 = *(*v45 + 112);
  swift_beginAccess();
  v47 = *(v45 + v46);
  v48 = v47 + 64;
  v49 = 1 << *(v47 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & *(v47 + 64);
  v52 = (v49 + 63) >> 6;
  v72 = v78 + 16;
  v64 = (v75 + 8);
  v71 = (v78 + 8);
  v75 = v47;
  result = swift_bridgeObjectRetain_n();
  v53 = 0;
  v54 = v79;
  v55 = v69;
  while (v51)
  {
LABEL_17:
    (*(v78 + 16))(v54, *(v75 + 56) + *(v78 + 72) * (__clz(__rbit64(v51)) | (v53 << 6)), v80);
    sub_1E48C12D0(v76 + v77, v55, &qword_1ECF815D0, &unk_1E499A370);
    if (v73(v55, 1, v74) == 1)
    {
      sub_1E48C1338(v55, &qword_1ECF815D0, &unk_1E499A370);
    }

    else
    {
      v57 = v55;
      v58 = v65;
      sub_1E498AA50(v57, v65, type metadata accessor for TimeString);
      sub_1E498A9E8(v58, v68, type metadata accessor for TimeString);
      v59 = v66;
      sub_1E499818C();
      v54 = v79;
      (*v64)(v59, v67);
      v60 = v58;
      v55 = v69;
      sub_1E4989F40(v60, type metadata accessor for TimeString);
    }

    v51 &= v51 - 1;
    result = (*v71)(v54, v80);
  }

  while (1)
  {
    v56 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v56 >= v52)
    {
    }

    v51 = *(v48 + 8 * v56);
    ++v53;
    if (v51)
    {
      v53 = v56;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4973ED0(uint64_t a1)
{
  v2 = v1;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81560, &qword_1E49A5B78);
  v114 = *(v107 - 8);
  v4 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v107, v5);
  v106 = &v94 - v6;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81568, &unk_1E49A5B80);
  v115 = *(v109 - 8);
  v7 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v109, v8);
  v117 = &v94 - v9;
  v100 = type metadata accessor for City();
  v99 = *(v100 - 8);
  v10 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v100, v11);
  v97 = (&v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81570, &qword_1E49A4BF8);
  v14 = *(v13 - 8);
  v15 = v14[8];
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v105 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v104 = &v94 - v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v98 = (&v94 - v23);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81578, &qword_1E49A5B90);
  v24 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113, v25);
  v101 = &v94 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81580, &qword_1E49A5B98);
  v28 = v27 - 8;
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27, v30);
  v32 = &v94 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81588, &qword_1E49A5BA0);
  v34 = *(*(v33 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v33 - 8, v35);
  v108 = &v94 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v111 = &v94 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v44 = &v94 - v43;
  MEMORY[0x1EEE9AC00](v42, v45);
  v47 = &v94 - v46;
  v48 = *(*v2 + 96);
  swift_beginAccess();
  v112 = a1;
  sub_1E48C12D0(a1, v47, &qword_1ECF81570, &qword_1E49A4BF8);
  v49 = v14[7];
  v110 = (v14 + 7);
  v102 = v49;
  (v49)(v47, 0, 1, v13);
  v50 = *(v28 + 56);
  v118 = v2;
  v116 = v48;
  sub_1E48C12D0(v2 + v48, v32, &qword_1ECF81588, &qword_1E49A5BA0);
  sub_1E48C12D0(v47, &v32[v50], &qword_1ECF81588, &qword_1E49A5BA0);
  v53 = v14[6];
  v51 = v14 + 6;
  v52 = v53;
  if (v53(v32, 1, v13) == 1)
  {
    sub_1E48C1338(v47, &qword_1ECF81588, &qword_1E49A5BA0);
    if (v52(&v32[v50], 1, v13) == 1)
    {
      v54 = v32;
      return sub_1E48C1338(v54, &qword_1ECF81588, &qword_1E49A5BA0);
    }

    goto LABEL_7;
  }

  sub_1E48C12D0(v32, v44, &qword_1ECF81588, &qword_1E49A5BA0);
  if (v52(&v32[v50], 1, v13) == 1)
  {
    sub_1E48C1338(v47, &qword_1ECF81588, &qword_1E49A5BA0);
    sub_1E48C1338(v44, &qword_1ECF81570, &qword_1E49A4BF8);
LABEL_7:
    v113 = v51;
    v56 = &qword_1ECF81580;
    v57 = &qword_1E49A5B98;
    v58 = v32;
LABEL_8:
    sub_1E48C1338(v58, v56, v57);
    goto LABEL_9;
  }

  v83 = *(v113 + 48);
  v96 = v44;
  v84 = v44;
  v85 = v101;
  sub_1E48C12D0(v84, v101, &qword_1ECF81570, &qword_1E49A4BF8);
  v95 = v32;
  sub_1E48C15C8(&v32[v50], v85 + v83, &qword_1ECF81570, &qword_1E49A4BF8);
  v86 = *(v99 + 48);
  v87 = v100;
  if (v86(v85, 1, v100) == 1)
  {
    sub_1E48C1338(v47, &qword_1ECF81588, &qword_1E49A5BA0);
    if (v86(v85 + v83, 1, v87) == 1)
    {
      sub_1E48C1338(v85, &qword_1ECF81570, &qword_1E49A4BF8);
      sub_1E48C1338(v96, &qword_1ECF81570, &qword_1E49A4BF8);
      v54 = v95;
      return sub_1E48C1338(v54, &qword_1ECF81588, &qword_1E49A5BA0);
    }

    goto LABEL_28;
  }

  v88 = v98;
  sub_1E48C12D0(v85, v98, &qword_1ECF81570, &qword_1E49A4BF8);
  if (v86(v85 + v83, 1, v87) == 1)
  {
    sub_1E48C1338(v47, &qword_1ECF81588, &qword_1E49A5BA0);
    sub_1E4989F40(v88, type metadata accessor for City);
LABEL_28:
    v113 = v51;
    sub_1E48C1338(v85, &qword_1ECF81578, &qword_1E49A5B90);
    sub_1E48C1338(v96, &qword_1ECF81570, &qword_1E49A4BF8);
    v56 = &qword_1ECF81588;
    v57 = &qword_1E49A5BA0;
    v58 = v95;
    goto LABEL_8;
  }

  v113 = v51;
  v89 = v85 + v83;
  v90 = v97;
  sub_1E498AA50(v89, v97, type metadata accessor for City);
  if (*v88 == *v90 && v88[1] == v90[1] || (sub_1E499884C()) && (sub_1E48D9CFC(0, &qword_1ECF80A10, 0x1E69E58C0), v91 = v88[2], v92 = v90[2], (sub_1E499848C()))
  {
    v93 = MEMORY[0x1E691A740](v88 + *(v87 + 24), v90 + *(v87 + 24));
    sub_1E48C1338(v47, &qword_1ECF81588, &qword_1E49A5BA0);
    sub_1E4989F40(v90, type metadata accessor for City);
    sub_1E4989F40(v88, type metadata accessor for City);
    sub_1E48C1338(v85, &qword_1ECF81570, &qword_1E49A4BF8);
    sub_1E48C1338(v96, &qword_1ECF81570, &qword_1E49A4BF8);
    result = sub_1E48C1338(v95, &qword_1ECF81588, &qword_1E49A5BA0);
    if (v93)
    {
      return result;
    }
  }

  else
  {
    sub_1E48C1338(v47, &qword_1ECF81588, &qword_1E49A5BA0);
    sub_1E4989F40(v90, type metadata accessor for City);
    sub_1E4989F40(v88, type metadata accessor for City);
    sub_1E48C1338(v85, &qword_1ECF81570, &qword_1E49A4BF8);
    sub_1E48C1338(v96, &qword_1ECF81570, &qword_1E49A4BF8);
    sub_1E48C1338(v95, &qword_1ECF81588, &qword_1E49A5BA0);
  }

LABEL_9:
  v59 = v111;
  sub_1E48C12D0(v112, v111, &qword_1ECF81570, &qword_1E49A4BF8);
  v112 = v13;
  (v102)(v59, 0, 1, v13);
  v60 = v118;
  v61 = v116;
  swift_beginAccess();
  v62 = v59;
  v63 = &qword_1ECF81588;
  sub_1E48EC0CC(v62, v60 + v61, &qword_1ECF81588, &qword_1E49A5BA0);
  swift_endAccess();
  v64 = *(*v60 + 112);
  swift_beginAccess();
  v65 = *(v60 + v64);
  v66 = v65 + 64;
  v67 = 1 << *(v65 + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & *(v65 + 64);
  v70 = (v67 + 63) >> 6;
  v111 = v115 + 16;
  v102 = (v114 + 8);
  v110 = (v115 + 8);
  v114 = v65;
  result = swift_bridgeObjectRetain_n();
  v71 = 0;
  v73 = v108;
  v72 = v109;
  v74 = v117;
  v103 = v52;
  while (v69)
  {
LABEL_19:
    (*(v115 + 16))(v74, *(v114 + 56) + *(v115 + 72) * (__clz(__rbit64(v69)) | (v71 << 6)), v72);
    sub_1E48C12D0(v118 + v116, v73, v63, &qword_1E49A5BA0);
    if (v52(v73, 1, v112) == 1)
    {
      v75 = v73;
      v76 = v63;
      v77 = &qword_1E49A5BA0;
    }

    else
    {
      v79 = v104;
      sub_1E48C15C8(v73, v104, &qword_1ECF81570, &qword_1E49A4BF8);
      sub_1E48C12D0(v79, v105, &qword_1ECF81570, &qword_1E49A4BF8);
      v80 = v63;
      v81 = v106;
      v73 = v108;
      sub_1E499818C();
      v72 = v109;
      v82 = v81;
      v63 = v80;
      v74 = v117;
      (*v102)(v82, v107);
      v75 = v79;
      v52 = v103;
      v76 = &qword_1ECF81570;
      v77 = &qword_1E49A4BF8;
    }

    sub_1E48C1338(v75, v76, v77);
    v69 &= v69 - 1;
    result = (*v110)(v74, v72);
  }

  while (1)
  {
    v78 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      break;
    }

    if (v78 >= v70)
    {
    }

    v69 = *(v66 + 8 * v78);
    ++v71;
    if (v69)
    {
      v71 = v78;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4974B14(uint64_t a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81590, &qword_1E49A5BA8);
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v36, v5);
  v35 = v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81598, &qword_1E49A5BB0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v34 - v11;
  swift_beginAccess();
  v13 = *(v1 + 16);
  if (v13)
  {
    if (v13 != 1)
    {
      if (a1)
      {
        v14 = *(v1 + 16);

        v16 = sub_1E49894B8(v15, a1);
        result = sub_1E48EC714(v13);
        if (v16)
        {
          return result;
        }
      }
    }
  }

  else
  {
    result = sub_1E48EC714(0);
    if (!a1)
    {
      return result;
    }
  }

  v18 = *(v1 + 16);
  *(v1 + 16) = a1;

  sub_1E48EC714(v18);
  swift_beginAccess();
  v19 = *(v1 + 32);
  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;
  v34[0] = v3 + 8;
  v37 = (v8 + 8);
  result = swift_bridgeObjectRetain_n();
  v25 = 0;
  v34[1] = v8 + 16;
  while (v23)
  {
LABEL_16:
    (*(v8 + 16))(v12, *(v19 + 56) + *(v8 + 72) * (__clz(__rbit64(v23)) | (v25 << 6)), v7);
    if (*(v1 + 16) != 1)
    {
      v38 = *(v1 + 16);

      v27 = v19;
      v28 = v8;
      v29 = v1;
      v30 = v12;
      v31 = v7;
      v32 = v35;
      sub_1E499818C();
      v33 = v32;
      v7 = v31;
      v12 = v30;
      v1 = v29;
      v8 = v28;
      v19 = v27;
      (*v34[0])(v33, v36);
    }

    v23 &= v23 - 1;
    result = (*v37)(v12, v7);
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
    }

    v23 = *(v20 + 8 * v26);
    ++v25;
    if (v23)
    {
      v25 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4974E44(uint64_t a1)
{
  v103 = a1;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81528, &qword_1E49A5B48);
  v99 = *(v94 - 8);
  v2 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v94, v3);
  v93 = &v84 - v4;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81530, &unk_1E49A5B50);
  v104 = *(v98 - 8);
  v5 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v98, v6);
  v106 = &v84 - v7;
  v101 = sub_1E4996D8C();
  v88 = *(v101 - 1);
  v8 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v101, v9);
  v84 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v12 = *(v11 - 8);
  v13 = v12[8];
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v92 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v91 = &v84 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v85 = &v84 - v21;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F898, &qword_1E499D6F0);
  v22 = *(*(v86 - 1) + 64);
  MEMORY[0x1EEE9AC00](v86, v23);
  v87 = &v84 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81540, &qword_1E49A5B60);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v84 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF80A60, &unk_1E49A3A10);
  v32 = *(*(v31 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v31 - 8, v33);
  v96 = &v84 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v100 = &v84 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v42 = &v84 - v41;
  MEMORY[0x1EEE9AC00](v40, v43);
  v45 = &v84 - v44;
  v46 = *(*v1 + 96);
  swift_beginAccess();
  sub_1E48C12D0(v103, v45, &qword_1ECF809D0, &qword_1E499D6C0);
  v47 = v12[7];
  v90 = (v12 + 7);
  v89 = v47;
  v47(v45, 0, 1, v11);
  v48 = *(v26 + 56);
  v105 = v1;
  v95 = v46;
  sub_1E48C12D0(v1 + v46, v30, &unk_1ECF80A60, &unk_1E49A3A10);
  sub_1E48C12D0(v45, &v30[v48], &unk_1ECF80A60, &unk_1E49A3A10);
  v49 = v12[6];
  v50 = v49(v30, 1, v11);
  v97 = v12 + 6;
  v102 = v11;
  if (v50 == 1)
  {
    sub_1E48C1338(v45, &unk_1ECF80A60, &unk_1E49A3A10);
    if (v49(&v30[v48], 1, v11) == 1)
    {
      return sub_1E48C1338(v30, &unk_1ECF80A60, &unk_1E49A3A10);
    }

    goto LABEL_6;
  }

  sub_1E48C12D0(v30, v42, &unk_1ECF80A60, &unk_1E49A3A10);
  if (v49(&v30[v48], 1, v11) == 1)
  {
    sub_1E48C1338(v45, &unk_1ECF80A60, &unk_1E49A3A10);
    sub_1E48C1338(v42, &qword_1ECF809D0, &qword_1E499D6C0);
LABEL_6:
    sub_1E48C1338(v30, &unk_1ECF81540, &qword_1E49A5B60);
    goto LABEL_7;
  }

  v74 = *(v86 + 12);
  v86 = v42;
  v75 = v87;
  sub_1E48C12D0(v42, v87, &qword_1ECF809D0, &qword_1E499D6C0);
  sub_1E48C15C8(&v30[v48], v75 + v74, &qword_1ECF809D0, &qword_1E499D6C0);
  v76 = v88;
  v77 = *(v88 + 48);
  v78 = v101;
  if (v77(v75, 1, v101) == 1)
  {
    sub_1E48C1338(v45, &unk_1ECF80A60, &unk_1E49A3A10);
    if (v77(v75 + v74, 1, v78) == 1)
    {
      sub_1E48C1338(v75, &qword_1ECF809D0, &qword_1E499D6C0);
      sub_1E48C1338(v86, &qword_1ECF809D0, &qword_1E499D6C0);
      return sub_1E48C1338(v30, &unk_1ECF80A60, &unk_1E49A3A10);
    }
  }

  else
  {
    v79 = v85;
    sub_1E48C12D0(v75, v85, &qword_1ECF809D0, &qword_1E499D6C0);
    if (v77(v75 + v74, 1, v78) != 1)
    {
      v80 = v75 + v74;
      v81 = v84;
      (*(v76 + 32))(v84, v80, v78);
      sub_1E498AB30(&qword_1ECF7F440, MEMORY[0x1E6969530]);
      v82 = sub_1E4997E9C();
      v83 = *(v76 + 8);
      v83(v81, v78);
      sub_1E48C1338(v45, &unk_1ECF80A60, &unk_1E49A3A10);
      v83(v79, v78);
      sub_1E48C1338(v75, &qword_1ECF809D0, &qword_1E499D6C0);
      sub_1E48C1338(v86, &qword_1ECF809D0, &qword_1E499D6C0);
      result = sub_1E48C1338(v30, &unk_1ECF80A60, &unk_1E49A3A10);
      v11 = v102;
      if (v82)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_1E48C1338(v45, &unk_1ECF80A60, &unk_1E49A3A10);
    (*(v76 + 8))(v79, v78);
  }

  sub_1E48C1338(v75, &qword_1ECF7F898, &qword_1E499D6F0);
  sub_1E48C1338(v86, &qword_1ECF809D0, &qword_1E499D6C0);
  sub_1E48C1338(v30, &unk_1ECF80A60, &unk_1E49A3A10);
  v11 = v102;
LABEL_7:
  v101 = v49;
  v52 = v100;
  sub_1E48C12D0(v103, v100, &qword_1ECF809D0, &qword_1E499D6C0);
  v89(v52, 0, 1, v11);
  v53 = v105;
  v54 = v95;
  swift_beginAccess();
  v55 = &unk_1ECF80A60;
  sub_1E48EC0CC(v52, v53 + v54, &unk_1ECF80A60, &unk_1E49A3A10);
  swift_endAccess();
  v56 = *(*v53 + 112);
  swift_beginAccess();
  v57 = *(v53 + v56);
  v58 = v57 + 64;
  v59 = 1 << *(v57 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & *(v57 + 64);
  v62 = (v59 + 63) >> 6;
  v100 = v104 + 16;
  v90 = (v99 + 8);
  v99 = v104 + 8;
  v103 = v57;
  result = swift_bridgeObjectRetain_n();
  v63 = 0;
  v64 = v98;
  v65 = v96;
  while (v61)
  {
LABEL_17:
    (*(v104 + 16))(v106, *(v103 + 56) + *(v104 + 72) * (__clz(__rbit64(v61)) | (v63 << 6)), v64);
    sub_1E48C12D0(v105 + v54, v65, v55, &unk_1E49A3A10);
    if ((v101)(v65, 1, v102) == 1)
    {
      v66 = v65;
      v67 = v55;
      v68 = &unk_1E49A3A10;
    }

    else
    {
      v70 = v91;
      sub_1E48C15C8(v65, v91, &qword_1ECF809D0, &qword_1E499D6C0);
      sub_1E48C12D0(v70, v92, &qword_1ECF809D0, &qword_1E499D6C0);
      v71 = v55;
      v72 = v93;
      v65 = v96;
      sub_1E499818C();
      v64 = v98;
      v73 = v72;
      v55 = v71;
      (*v90)(v73, v94);
      v66 = v70;
      v54 = v95;
      v67 = &qword_1ECF809D0;
      v68 = &qword_1E499D6C0;
    }

    sub_1E48C1338(v66, v67, v68);
    v61 &= v61 - 1;
    result = (*v99)(v106, v64);
  }

  while (1)
  {
    v69 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v69 >= v62)
    {
    }

    v61 = *(v58 + 8 * v69);
    ++v63;
    if (v61)
    {
      v63 = v69;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E49759A8(uint64_t a1)
{
  v2 = v1;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF814E8, &qword_1E49A5B08);
  v113 = *(v105 - 8);
  v4 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v105, v5);
  v104 = &v95 - v6;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF814F0, &unk_1E49A5B10);
  v114 = *(v108 - 8);
  v7 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v108, v8);
  v117 = &v95 - v9;
  v111 = type metadata accessor for Alarm();
  v98 = *(v111 - 8);
  v10 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v111, v11);
  v96 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F728, &unk_1E499CAB0);
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x1EEE9AC00](v13, v16);
  v103 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v102 = &v95 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v99 = &v95 - v23;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81500, &qword_1E49A5B20);
  v24 = *(*(v97 - 1) + 64);
  MEMORY[0x1EEE9AC00](v97, v25);
  v100 = &v95 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81508, &unk_1E49A5B28);
  v28 = v27 - 8;
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27, v30);
  v32 = &v95 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81510, &unk_1E499E0A0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8, v35);
  v107 = &v95 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v110 = &v95 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v95 - v42;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v95 - v46;
  v48 = *(*v2 + 96);
  swift_beginAccess();
  v112 = a1;
  sub_1E48C12D0(a1, v47, &qword_1ECF7F728, &unk_1E499CAB0);
  v49 = v14[7];
  v109 = (v14 + 7);
  v101 = v49;
  (v49)(v47, 0, 1, v13);
  v50 = *(v28 + 56);
  v115 = v48;
  v116 = v2;
  v51 = v2 + v48;
  v52 = v13;
  sub_1E48C12D0(v51, v32, &qword_1ECF81510, &unk_1E499E0A0);
  sub_1E48C12D0(v47, &v32[v50], &qword_1ECF81510, &unk_1E499E0A0);
  v55 = v14[6];
  v53 = v14 + 6;
  v54 = v55;
  v56 = v55(v32, 1, v13);
  v106 = v55;
  if (v56 == 1)
  {
    sub_1E48C1338(v47, &qword_1ECF81510, &unk_1E499E0A0);
    if (v54(&v32[v50], 1, v13) == 1)
    {
      return sub_1E48C1338(v32, &qword_1ECF81510, &unk_1E499E0A0);
    }

    goto LABEL_6;
  }

  sub_1E48C12D0(v32, v43, &qword_1ECF81510, &unk_1E499E0A0);
  if (v54(&v32[v50], 1, v13) != 1)
  {
    v59 = *(v97 + 12);
    v97 = v43;
    v60 = v100;
    sub_1E48C12D0(v43, v100, &qword_1ECF7F728, &unk_1E499CAB0);
    sub_1E48C15C8(&v32[v50], v60 + v59, &qword_1ECF7F728, &unk_1E499CAB0);
    v61 = *(v98 + 48);
    v62 = v111;
    if (v61(v60, 1, v111) == 1)
    {
      sub_1E48C1338(v47, &qword_1ECF81510, &unk_1E499E0A0);
      v63 = v61(v60 + v59, 1, v62);
      v58 = v117;
      if (v63 == 1)
      {
        sub_1E48C1338(v60, &qword_1ECF7F728, &unk_1E499CAB0);
        sub_1E48C1338(v97, &qword_1ECF7F728, &unk_1E499CAB0);
        return sub_1E48C1338(v32, &qword_1ECF81510, &unk_1E499E0A0);
      }
    }

    else
    {
      sub_1E48C12D0(v60, v99, &qword_1ECF7F728, &unk_1E499CAB0);
      v64 = v61(v60 + v59, 1, v62);
      v58 = v117;
      if (v64 != 1)
      {
        v86 = v60 + v59;
        v87 = v96;
        sub_1E498AA50(v86, v96, type metadata accessor for Alarm);
        v88 = v99;
        v89 = sub_1E4996D2C();
        sub_1E48C1338(v47, &qword_1ECF81510, &unk_1E499E0A0);
        if (v89)
        {
          v90 = *(v62 + 20);
          v91 = *(v88 + v90);
          v92 = v87;
          v93 = *(v87 + v90);
          sub_1E4989F40(v92, type metadata accessor for Alarm);
          sub_1E4989F40(v88, type metadata accessor for Alarm);
          sub_1E48C1338(v60, &qword_1ECF7F728, &unk_1E499CAB0);
          sub_1E48C1338(v97, &qword_1ECF7F728, &unk_1E499CAB0);
          result = sub_1E48C1338(v32, &qword_1ECF81510, &unk_1E499E0A0);
          v94 = v91 == v93;
          v54 = v106;
          if (v94)
          {
            return result;
          }

          goto LABEL_14;
        }

        sub_1E4989F40(v87, type metadata accessor for Alarm);
        sub_1E4989F40(v88, type metadata accessor for Alarm);
        sub_1E48C1338(v60, &qword_1ECF7F728, &unk_1E499CAB0);
        v65 = v97;
        goto LABEL_13;
      }

      sub_1E48C1338(v47, &qword_1ECF81510, &unk_1E499E0A0);
      sub_1E4989F40(v99, type metadata accessor for Alarm);
    }

    sub_1E48C1338(v60, &qword_1ECF81500, &qword_1E49A5B20);
    v65 = v97;
LABEL_13:
    sub_1E48C1338(v65, &qword_1ECF7F728, &unk_1E499CAB0);
    sub_1E48C1338(v32, &qword_1ECF81510, &unk_1E499E0A0);
    v54 = v106;
    goto LABEL_14;
  }

  sub_1E48C1338(v47, &qword_1ECF81510, &unk_1E499E0A0);
  sub_1E48C1338(v43, &qword_1ECF7F728, &unk_1E499CAB0);
LABEL_6:
  sub_1E48C1338(v32, &qword_1ECF81508, &unk_1E49A5B28);
  v58 = v117;
LABEL_14:
  v111 = v53;
  v66 = v110;
  sub_1E48C12D0(v112, v110, &qword_1ECF7F728, &unk_1E499CAB0);
  v112 = v52;
  (v101)(v66, 0, 1, v52);
  v68 = v115;
  v67 = v116;
  swift_beginAccess();
  sub_1E48EC0CC(v66, v67 + v68, &qword_1ECF81510, &unk_1E499E0A0);
  swift_endAccess();
  v69 = *(*v67 + 112);
  swift_beginAccess();
  v70 = *(v67 + v69);
  v71 = v70 + 64;
  v72 = 1 << *(v70 + 32);
  v73 = -1;
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  v74 = v73 & *(v70 + 64);
  v75 = (v72 + 63) >> 6;
  v110 = v114 + 16;
  v101 = (v113 + 8);
  v109 = (v114 + 8);
  v113 = v70;
  result = swift_bridgeObjectRetain_n();
  v76 = 0;
  v78 = v107;
  for (i = v108; ; result = (*v109)(v58, i))
  {
    v81 = &unk_1E499E0A0;
    if (!v74)
    {
      break;
    }

LABEL_24:
    (*(v114 + 16))(v58, *(v113 + 56) + *(v114 + 72) * (__clz(__rbit64(v74)) | (v76 << 6)), i);
    sub_1E48C12D0(v116 + v115, v78, &qword_1ECF81510, &unk_1E499E0A0);
    if (v54(v78, 1, v112) == 1)
    {
      v79 = v78;
      v80 = &qword_1ECF81510;
    }

    else
    {
      v83 = v102;
      v81 = &unk_1E499CAB0;
      sub_1E48C15C8(v78, v102, &qword_1ECF7F728, &unk_1E499CAB0);
      sub_1E48C12D0(v83, v103, &qword_1ECF7F728, &unk_1E499CAB0);
      v84 = v104;
      v78 = v107;
      sub_1E499818C();
      i = v108;
      v85 = v84;
      v58 = v117;
      (*v101)(v85, v105);
      v79 = v83;
      v54 = v106;
      v80 = &qword_1ECF7F728;
    }

    sub_1E48C1338(v79, v80, v81);
    v74 &= v74 - 1;
  }

  while (1)
  {
    v82 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      break;
    }

    if (v82 >= v75)
    {
    }

    v74 = *(v71 + 8 * v82);
    ++v76;
    if (v74)
    {
      v76 = v82;
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4976548(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v51) = a4;
  v49 = a3;
  v54 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81710, &qword_1E49A5CF8);
  v6 = *(v53 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v53, v8);
  v52 = &v47[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81718, &qword_1E49A5D00);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v47[-v14];
  swift_beginAccess();
  v16 = *(v4 + 16);
  v17 = *(v4 + 24);
  v18 = *(v4 + 32);
  v19 = *(v4 + 40);
  if (v17)
  {
    if (v17 != 1)
    {
      if (a2)
      {
        if (((v16 ^ v54) & 1) == 0)
        {
          v48 = sub_1E498D6B8(*(v4 + 24), a2);
          sub_1E498ADB8(v16, v17);

          if (v48)
          {
            if (v19)
            {
              if (v51)
              {
                return result;
              }
            }

            else if ((v51 & 1) == 0 && v18 == v49)
            {
              return result;
            }
          }
        }
      }

      else
      {
        v23 = *(v4 + 32);
        v24 = *(v4 + 40);
        sub_1E498ADB8(*(v4 + 16), *(v4 + 24));
      }
    }
  }

  else
  {
    v21 = *(v4 + 32);
    v22 = *(v4 + 40);
    result = sub_1E48EC78C(*(v4 + 16), 0);
    if (!a2)
    {
      return result;
    }
  }

  v25 = *(v4 + 16);
  v26 = *(v4 + 24);
  v27 = *(v4 + 32);
  *(v4 + 16) = v54;
  *(v4 + 24) = a2;
  *(v4 + 32) = v49;
  v28 = *(v4 + 40);
  *(v4 + 40) = v51;

  sub_1E48EC78C(v25, v26);
  swift_beginAccess();
  v29 = *(v4 + 56);
  v30 = v29 + 64;
  v31 = 1 << *(v29 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v29 + 64);
  v34 = (v31 + 63) >> 6;
  v54 = v11 + 16;
  v51 = (v6 + 8);
  v35 = (v11 + 8);
  result = swift_bridgeObjectRetain_n();
  v36 = 0;
  v50 = v4;
  while (v33)
  {
LABEL_21:
    (*(v11 + 16))(v15, *(v29 + 56) + *(v11 + 72) * (__clz(__rbit64(v33)) | (v36 << 6)), v10);
    v38 = *(v4 + 24);
    if (v38 != 1)
    {
      v39 = *(v4 + 40);
      v40 = *(v4 + 32);
      v55 = *(v4 + 16);
      v56 = v38;
      v57 = v40;
      v58 = v39;

      v41 = v15;
      v42 = v35;
      v43 = v29;
      v44 = v11;
      v45 = v52;
      sub_1E499818C();
      v46 = v45;
      v11 = v44;
      v29 = v43;
      v35 = v42;
      v15 = v41;
      v4 = v50;
      (*v51)(v46, v53);
    }

    v33 &= v33 - 1;
    result = (*v35)(v15, v10);
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v37 >= v34)
    {
    }

    v33 = *(v30 + 8 * v37);
    ++v36;
    if (v33)
    {
      v36 = v37;
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4976930(uint64_t a1)
{
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81470, &qword_1E49A5AA0);
  v75 = *(v67 - 8);
  v3 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v67, v4);
  v66 = &v64 - v5;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81478, &qword_1E49A5AA8);
  v78 = *(v80 - 8);
  v6 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v80, v7);
  v79 = &v64 - v8;
  v9 = type metadata accessor for CurrentLocationResult(0);
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v9, v12);
  v65 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v68 = &v64 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81480, &unk_1E49A5AB0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v64 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A8, &unk_1E49A62B0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8, v25);
  v69 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v72 = &v64 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v64 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v64 - v36;
  v38 = *(*v1 + 96);
  swift_beginAccess();
  v74 = a1;
  sub_1E498A9E8(a1, v37, type metadata accessor for CurrentLocationResult);
  v73 = v10[7];
  (v73)(v37, 0, 1, v9);
  v39 = *(v18 + 56);
  v76 = v1;
  v77 = v38;
  sub_1E48C12D0(v1 + v38, v22, &qword_1ECF7F8A8, &unk_1E49A62B0);
  sub_1E48C12D0(v37, &v22[v39], &qword_1ECF7F8A8, &unk_1E49A62B0);
  v40 = v10[6];
  v41 = v40(v22, 1, v9);
  v70 = v10 + 6;
  if (v41 == 1)
  {
    sub_1E48C1338(v37, &qword_1ECF7F8A8, &unk_1E49A62B0);
    if (v40(&v22[v39], 1, v9) == 1)
    {
      return sub_1E48C1338(v22, &qword_1ECF7F8A8, &unk_1E49A62B0);
    }
  }

  else
  {
    sub_1E48C12D0(v22, v33, &qword_1ECF7F8A8, &unk_1E49A62B0);
    if (v40(&v22[v39], 1, v9) != 1)
    {
      v61 = &v22[v39];
      v62 = v68;
      sub_1E498AA50(v61, v68, type metadata accessor for CurrentLocationResult);
      v63 = sub_1E4989BD8(v33, v62);
      sub_1E4989F40(v62, type metadata accessor for CurrentLocationResult);
      sub_1E48C1338(v37, &qword_1ECF7F8A8, &unk_1E49A62B0);
      sub_1E4989F40(v33, type metadata accessor for CurrentLocationResult);
      result = sub_1E48C1338(v22, &qword_1ECF7F8A8, &unk_1E49A62B0);
      if (v63)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_1E48C1338(v37, &qword_1ECF7F8A8, &unk_1E49A62B0);
    sub_1E4989F40(v33, type metadata accessor for CurrentLocationResult);
  }

  sub_1E48C1338(v22, &unk_1ECF81480, &unk_1E49A5AB0);
LABEL_7:
  v43 = v72;
  sub_1E498A9E8(v74, v72, type metadata accessor for CurrentLocationResult);
  v74 = v9;
  (v73)(v43, 0, 1, v9);
  v73 = v40;
  v45 = v76;
  v44 = v77;
  swift_beginAccess();
  sub_1E48EC0CC(v43, v45 + v44, &qword_1ECF7F8A8, &unk_1E49A62B0);
  swift_endAccess();
  v46 = *(*v45 + 112);
  swift_beginAccess();
  v47 = *(v45 + v46);
  v48 = v47 + 64;
  v49 = 1 << *(v47 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & *(v47 + 64);
  v52 = (v49 + 63) >> 6;
  v72 = v78 + 16;
  v64 = (v75 + 8);
  v71 = (v78 + 8);
  v75 = v47;
  result = swift_bridgeObjectRetain_n();
  v53 = 0;
  v54 = v79;
  v55 = v69;
  while (v51)
  {
LABEL_17:
    (*(v78 + 16))(v54, *(v75 + 56) + *(v78 + 72) * (__clz(__rbit64(v51)) | (v53 << 6)), v80);
    sub_1E48C12D0(v76 + v77, v55, &qword_1ECF7F8A8, &unk_1E49A62B0);
    if (v73(v55, 1, v74) == 1)
    {
      sub_1E48C1338(v55, &qword_1ECF7F8A8, &unk_1E49A62B0);
    }

    else
    {
      v57 = v55;
      v58 = v65;
      sub_1E498AA50(v57, v65, type metadata accessor for CurrentLocationResult);
      sub_1E498A9E8(v58, v68, type metadata accessor for CurrentLocationResult);
      v59 = v66;
      sub_1E499818C();
      v54 = v79;
      (*v64)(v59, v67);
      v60 = v58;
      v55 = v69;
      sub_1E4989F40(v60, type metadata accessor for CurrentLocationResult);
    }

    v51 &= v51 - 1;
    result = (*v71)(v54, v80);
  }

  while (1)
  {
    v56 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v56 >= v52)
    {
    }

    v51 = *(v48 + 8 * v56);
    ++v53;
    if (v51)
    {
      v53 = v56;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4977138(uint64_t a1)
{
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF816E0, &qword_1E49A5CC8);
  v105 = *(v97 - 8);
  v3 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v97, v4);
  v96 = &v87 - v5;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF816E8, &unk_1E49A5CD0);
  v106 = *(v100 - 8);
  v6 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v100, v7);
  v109 = &v87 - v8;
  v103 = type metadata accessor for CurrentLocationSolarPosition(0);
  v90 = *(v103 - 8);
  v9 = *(v90 + 8);
  MEMORY[0x1EEE9AC00](v103, v10);
  v87 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  v13 = *(v12 - 8);
  v14 = v13[8];
  MEMORY[0x1EEE9AC00](v12, v15);
  v95 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v94 = &v87 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v88 = &v87 - v22;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF801F0, &qword_1E49A5CE0);
  v23 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89, v24);
  v91 = &v87 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81700, &unk_1E49A5CE8);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26, v29);
  v31 = &v87 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB70, &unk_1E499E400);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8, v34);
  v99 = &v87 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v101 = (&v87 - v38);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v87 - v41;
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v87 - v45;
  v47 = *(*v1 + 96);
  swift_beginAccess();
  v102 = a1;
  sub_1E48C12D0(a1, v46, &unk_1ECF816F0, &qword_1E49A5090);
  v48 = v13[7];
  v93 = (v13 + 7);
  v92 = v48;
  v48(v46, 0, 1, v12);
  v49 = *(v27 + 56);
  v107 = v1;
  v98 = v47;
  sub_1E48C12D0(v1 + v47, v31, &qword_1ECF7FB70, &unk_1E499E400);
  sub_1E48C12D0(v46, &v31[v49], &qword_1ECF7FB70, &unk_1E499E400);
  v51 = v13[6];
  v50 = v13 + 6;
  v108 = v51;
  v52 = v51(v31, 1, v12);
  v104 = v12;
  if (v52 == 1)
  {
    sub_1E48C1338(v46, &qword_1ECF7FB70, &unk_1E499E400);
    v53 = v108(&v31[v49], 1, v12);
    v54 = v109;
    if (v53 == 1)
    {
      return sub_1E48C1338(v31, &qword_1ECF7FB70, &unk_1E499E400);
    }

    goto LABEL_6;
  }

  sub_1E48C12D0(v31, v42, &qword_1ECF7FB70, &unk_1E499E400);
  v56 = v42;
  if (v108(&v31[v49], 1, v12) == 1)
  {
    sub_1E48C1338(v46, &qword_1ECF7FB70, &unk_1E499E400);
    sub_1E48C1338(v42, &unk_1ECF816F0, &qword_1E49A5090);
    v54 = v109;
LABEL_6:
    v103 = v50;
    sub_1E48C1338(v31, &unk_1ECF81700, &unk_1E49A5CE8);
    goto LABEL_7;
  }

  v79 = *(v89 + 48);
  v80 = v91;
  sub_1E48C12D0(v42, v91, &unk_1ECF816F0, &qword_1E49A5090);
  sub_1E48C15C8(&v31[v49], v80 + v79, &unk_1ECF816F0, &qword_1E49A5090);
  v81 = *(v90 + 6);
  v82 = v103;
  if (v81(v80, 1, v103) == 1)
  {
    sub_1E48C1338(v46, &qword_1ECF7FB70, &unk_1E499E400);
    v83 = v81(v80 + v79, 1, v82);
    v54 = v109;
    if (v83 == 1)
    {
      sub_1E48C1338(v80, &unk_1ECF816F0, &qword_1E49A5090);
      sub_1E48C1338(v56, &unk_1ECF816F0, &qword_1E49A5090);
      return sub_1E48C1338(v31, &qword_1ECF7FB70, &unk_1E499E400);
    }
  }

  else
  {
    v90 = v42;
    v84 = v88;
    sub_1E48C12D0(v80, v88, &unk_1ECF816F0, &qword_1E49A5090);
    if (v81(v80 + v79, 1, v82) != 1)
    {
      v103 = v50;
      v85 = v87;
      sub_1E498AA50(v80 + v79, v87, type metadata accessor for CurrentLocationSolarPosition);
      v86 = sub_1E48F778C(v84, v85);
      sub_1E4989F40(v85, type metadata accessor for CurrentLocationSolarPosition);
      sub_1E48C1338(v46, &qword_1ECF7FB70, &unk_1E499E400);
      sub_1E4989F40(v84, type metadata accessor for CurrentLocationSolarPosition);
      sub_1E48C1338(v80, &unk_1ECF816F0, &qword_1E49A5090);
      sub_1E48C1338(v90, &unk_1ECF816F0, &qword_1E49A5090);
      result = sub_1E48C1338(v31, &qword_1ECF7FB70, &unk_1E499E400);
      v54 = v109;
      v12 = v104;
      if (v86)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_1E48C1338(v46, &qword_1ECF7FB70, &unk_1E499E400);
    sub_1E4989F40(v84, type metadata accessor for CurrentLocationSolarPosition);
    v54 = v109;
    v56 = v90;
  }

  v103 = v50;
  sub_1E48C1338(v80, &qword_1ECF801F0, &qword_1E49A5CE0);
  sub_1E48C1338(v56, &unk_1ECF816F0, &qword_1E49A5090);
  sub_1E48C1338(v31, &qword_1ECF7FB70, &unk_1E499E400);
  v12 = v104;
LABEL_7:
  v57 = v101;
  sub_1E48C12D0(v102, v101, &unk_1ECF816F0, &qword_1E49A5090);
  v92(v57, 0, 1, v12);
  v58 = v107;
  v59 = v98;
  swift_beginAccess();
  sub_1E48EC0CC(v57, v58 + v59, &qword_1ECF7FB70, &unk_1E499E400);
  swift_endAccess();
  v60 = *(*v58 + 112);
  swift_beginAccess();
  v61 = *(v58 + v60);
  v62 = v61 + 64;
  v63 = 1 << *(v61 + 32);
  v64 = -1;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  v65 = v64 & *(v61 + 64);
  v66 = (v63 + 63) >> 6;
  v102 = v106 + 16;
  v93 = (v105 + 8);
  v101 = (v106 + 8);
  v105 = v61;
  result = swift_bridgeObjectRetain_n();
  v67 = 0;
  v69 = v99;
  v68 = v100;
  while (v65)
  {
LABEL_17:
    (*(v106 + 16))(v54, *(v105 + 56) + *(v106 + 72) * (__clz(__rbit64(v65)) | (v67 << 6)), v68);
    sub_1E48C12D0(v107 + v59, v69, &qword_1ECF7FB70, &unk_1E499E400);
    if (v108(v69, 1, v104) == 1)
    {
      v70 = v69;
      v71 = &qword_1ECF7FB70;
      v72 = &unk_1E499E400;
    }

    else
    {
      v74 = v69;
      v75 = v94;
      sub_1E48C15C8(v74, v94, &unk_1ECF816F0, &qword_1E49A5090);
      sub_1E48C12D0(v75, v95, &unk_1ECF816F0, &qword_1E49A5090);
      v76 = v96;
      v59 = v98;
      sub_1E499818C();
      v68 = v100;
      v77 = v76;
      v78 = v109;
      (*v93)(v77, v97);
      v70 = v75;
      v69 = v99;
      v71 = &unk_1ECF816F0;
      v72 = &qword_1E49A5090;
      v54 = v78;
    }

    sub_1E48C1338(v70, v71, v72);
    v65 &= v65 - 1;
    result = (*v101)(v54, v68);
  }

  while (1)
  {
    v73 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      break;
    }

    if (v73 >= v66)
    {
    }

    v65 = *(v62 + 8 * v73);
    ++v67;
    if (v65)
    {
      v67 = v73;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4977C88(uint64_t a1)
{
  v2 = v1;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815E8, &qword_1E49A5BF8);
  v88 = *(v81 - 8);
  v4 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v81, v5);
  v80 = &v76 - v6;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815F0, &qword_1E49A5C00);
  v93 = *(v87 - 8);
  v7 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v87, v8);
  v96 = &v76 - v9;
  v10 = sub_1E4996D8C();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x1EEE9AC00](v10, v13);
  v79 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v82 = &v76 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F898, &qword_1E499D6F0);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v76 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8, v26);
  v86 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v78 = (&v76 - v30);
  MEMORY[0x1EEE9AC00](v31, v32);
  v90 = &v76 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v76 - v36;
  v38 = *(*v2 + 96);
  swift_beginAccess();
  v39 = v11[2];
  v89 = a1;
  v83 = v39;
  v84 = v11 + 2;
  v39(v37, a1, v10);
  v77 = v11[7];
  (v77)(v37, 0, 1, v10);
  v40 = *(v19 + 56);
  v94 = v2;
  v85 = v38;
  sub_1E48C12D0(v2 + v38, v23, &qword_1ECF809D0, &qword_1E499D6C0);
  sub_1E48C12D0(v37, &v23[v40], &qword_1ECF809D0, &qword_1E499D6C0);
  v92 = v11;
  v43 = v11[6];
  v42 = (v11 + 6);
  v41 = v43;
  v95 = v10;
  if (v43(v23, 1, v10) == 1)
  {
    sub_1E48C1338(v37, &qword_1ECF809D0, &qword_1E499D6C0);
    if (v41(&v23[v40], 1, v95) == 1)
    {
      return sub_1E48C1338(v23, &qword_1ECF809D0, &qword_1E499D6C0);
    }
  }

  else
  {
    v45 = v90;
    sub_1E48C12D0(v23, v90, &qword_1ECF809D0, &qword_1E499D6C0);
    if (v41(&v23[v40], 1, v95) != 1)
    {
      v91 = v41;
      v70 = &v23[v40];
      v71 = v92;
      v72 = v82;
      v73 = v95;
      (v92[4])(v82, v70, v95);
      sub_1E498AB30(&qword_1ECF7F440, MEMORY[0x1E6969530]);
      v74 = sub_1E4997E9C();
      v75 = v71[1];
      v75(v72, v73);
      sub_1E48C1338(v37, &qword_1ECF809D0, &qword_1E499D6C0);
      v75(v45, v73);
      result = sub_1E48C1338(v23, &qword_1ECF809D0, &qword_1E499D6C0);
      if (v74)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_1E48C1338(v37, &qword_1ECF809D0, &qword_1E499D6C0);
    (v92[1])(v45, v95);
  }

  v91 = v41;
  sub_1E48C1338(v23, &qword_1ECF7F898, &qword_1E499D6F0);
LABEL_7:
  v90 = v42;
  v46 = v78;
  v47 = v95;
  v83(v78, v89, v95);
  (v77)(v46, 0, 1, v47);
  v48 = v94;
  v49 = v85;
  swift_beginAccess();
  v50 = &qword_1E499D6C0;
  v51 = v49;
  sub_1E48EC0CC(v46, v48 + v49, &qword_1ECF809D0, &qword_1E499D6C0);
  swift_endAccess();
  v52 = *(*v48 + 112);
  swift_beginAccess();
  v53 = *(v48 + v52);
  v54 = v53 + 64;
  v55 = 1 << *(v53 + 32);
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & *(v53 + 64);
  v58 = (v55 + 63) >> 6;
  v89 = v93 + 16;
  v78 = (v92 + 4);
  v77 = (v88 + 8);
  v76 = (v92 + 1);
  v88 = v93 + 8;
  v92 = v53;
  result = swift_bridgeObjectRetain_n();
  v59 = 0;
  v61 = v86;
  v60 = v87;
  while (v57)
  {
    v62 = v50;
    v63 = v96;
LABEL_19:
    (*(v93 + 16))(v63, v92[7] + *(v93 + 72) * (__clz(__rbit64(v57)) | (v59 << 6)), v60);
    v65 = v60;
    v50 = v62;
    sub_1E48C12D0(v94 + v51, v61, &qword_1ECF809D0, v62);
    if (v91(v61, 1, v95) == 1)
    {
      sub_1E48C1338(v61, &qword_1ECF809D0, v62);
    }

    else
    {
      v66 = v95;
      v67 = v79;
      (*v78)(v79, v61, v95);
      v83(v82, v67, v66);
      v68 = v80;
      v61 = v86;
      sub_1E499818C();
      v65 = v87;
      (*v77)(v68, v81);
      v69 = v66;
      v51 = v85;
      (*v76)(v67, v69);
    }

    v57 &= v57 - 1;
    result = (*v88)(v96, v65);
    v60 = v65;
  }

  v63 = v96;
  while (1)
  {
    v64 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      break;
    }

    if (v64 >= v58)
    {
    }

    v57 = *(v54 + 8 * v64);
    ++v59;
    if (v57)
    {
      v62 = v50;
      v59 = v64;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4978568(uint64_t a1)
{
  v103 = a1;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81690, &qword_1E49A5C80);
  v99 = *(v94 - 8);
  v2 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v94, v3);
  v93 = &v84 - v4;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81698, &qword_1E49A5C88);
  v104 = *(v98 - 8);
  v5 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v98, v6);
  v106 = &v84 - v7;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816A0, &unk_1E49A5C90);
  v88 = *(v101 - 1);
  v8 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v101, v9);
  v84 = &v84 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80368, &unk_1E49A2840);
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](v11, v14);
  v92 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v91 = &v84 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v85 = &v84 - v21;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF816B0, &qword_1E49A5CA0);
  v22 = *(*(v86 - 1) + 64);
  MEMORY[0x1EEE9AC00](v86, v23);
  v87 = &v84 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF816B8, &qword_1E49A5CA8);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v84 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816C0, &qword_1E49A5CB0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8, v33);
  v96 = &v84 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v100 = &v84 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v84 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v84 - v44;
  v46 = *(*v1 + 96);
  swift_beginAccess();
  sub_1E48C12D0(v103, v45, &qword_1ECF80368, &unk_1E49A2840);
  v47 = v12[7];
  v90 = (v12 + 7);
  v89 = v47;
  v47(v45, 0, 1, v11);
  v48 = *(v26 + 56);
  v105 = v1;
  v95 = v46;
  sub_1E48C12D0(v1 + v46, v30, &unk_1ECF816C0, &qword_1E49A5CB0);
  sub_1E48C12D0(v45, &v30[v48], &unk_1ECF816C0, &qword_1E49A5CB0);
  v49 = v12[6];
  v50 = v49(v30, 1, v11);
  v97 = v12 + 6;
  v102 = v11;
  if (v50 == 1)
  {
    sub_1E48C1338(v45, &unk_1ECF816C0, &qword_1E49A5CB0);
    if (v49(&v30[v48], 1, v11) == 1)
    {
      return sub_1E48C1338(v30, &unk_1ECF816C0, &qword_1E49A5CB0);
    }

    goto LABEL_6;
  }

  sub_1E48C12D0(v30, v41, &unk_1ECF816C0, &qword_1E49A5CB0);
  if (v49(&v30[v48], 1, v11) == 1)
  {
    sub_1E48C1338(v45, &unk_1ECF816C0, &qword_1E49A5CB0);
    sub_1E48C1338(v41, &qword_1ECF80368, &unk_1E49A2840);
LABEL_6:
    sub_1E48C1338(v30, &qword_1ECF816B8, &qword_1E49A5CA8);
    goto LABEL_7;
  }

  v74 = *(v86 + 12);
  v86 = v41;
  v75 = v87;
  sub_1E48C12D0(v41, v87, &qword_1ECF80368, &unk_1E49A2840);
  sub_1E48C15C8(&v30[v48], v75 + v74, &qword_1ECF80368, &unk_1E49A2840);
  v76 = v88;
  v77 = *(v88 + 48);
  v78 = v101;
  if (v77(v75, 1, v101) == 1)
  {
    sub_1E48C1338(v45, &unk_1ECF816C0, &qword_1E49A5CB0);
    if (v77(v75 + v74, 1, v78) == 1)
    {
      sub_1E48C1338(v75, &qword_1ECF80368, &unk_1E49A2840);
      sub_1E48C1338(v86, &qword_1ECF80368, &unk_1E49A2840);
      return sub_1E48C1338(v30, &unk_1ECF816C0, &qword_1E49A5CB0);
    }
  }

  else
  {
    v79 = v85;
    sub_1E48C12D0(v75, v85, &qword_1ECF80368, &unk_1E49A2840);
    if (v77(v75 + v74, 1, v78) != 1)
    {
      v80 = v75 + v74;
      v81 = v84;
      (*(v76 + 32))(v84, v80, v78);
      sub_1E48C1B44(&qword_1ECF80378, &unk_1ECF816A0, &unk_1E49A5C90);
      v82 = sub_1E4997E9C();
      v83 = *(v76 + 8);
      v83(v81, v78);
      sub_1E48C1338(v45, &unk_1ECF816C0, &qword_1E49A5CB0);
      v83(v79, v78);
      sub_1E48C1338(v75, &qword_1ECF80368, &unk_1E49A2840);
      sub_1E48C1338(v86, &qword_1ECF80368, &unk_1E49A2840);
      result = sub_1E48C1338(v30, &unk_1ECF816C0, &qword_1E49A5CB0);
      v11 = v102;
      if (v82)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_1E48C1338(v45, &unk_1ECF816C0, &qword_1E49A5CB0);
    (*(v76 + 8))(v79, v78);
  }

  sub_1E48C1338(v75, &qword_1ECF816B0, &qword_1E49A5CA0);
  sub_1E48C1338(v86, &qword_1ECF80368, &unk_1E49A2840);
  sub_1E48C1338(v30, &unk_1ECF816C0, &qword_1E49A5CB0);
  v11 = v102;
LABEL_7:
  v101 = v49;
  v52 = v100;
  sub_1E48C12D0(v103, v100, &qword_1ECF80368, &unk_1E49A2840);
  v89(v52, 0, 1, v11);
  v53 = v105;
  v54 = v95;
  swift_beginAccess();
  v55 = &unk_1ECF816C0;
  sub_1E48EC0CC(v52, v53 + v54, &unk_1ECF816C0, &qword_1E49A5CB0);
  swift_endAccess();
  v56 = *(*v53 + 112);
  swift_beginAccess();
  v57 = *(v53 + v56);
  v58 = v57 + 64;
  v59 = 1 << *(v57 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & *(v57 + 64);
  v62 = (v59 + 63) >> 6;
  v100 = v104 + 16;
  v90 = (v99 + 8);
  v99 = v104 + 8;
  v103 = v57;
  result = swift_bridgeObjectRetain_n();
  v63 = 0;
  v64 = v98;
  v65 = v96;
  while (v61)
  {
LABEL_17:
    (*(v104 + 16))(v106, *(v103 + 56) + *(v104 + 72) * (__clz(__rbit64(v61)) | (v63 << 6)), v64);
    sub_1E48C12D0(v105 + v54, v65, v55, &qword_1E49A5CB0);
    if ((v101)(v65, 1, v102) == 1)
    {
      v66 = v65;
      v67 = v55;
      v68 = &qword_1E49A5CB0;
    }

    else
    {
      v70 = v91;
      sub_1E48C15C8(v65, v91, &qword_1ECF80368, &unk_1E49A2840);
      sub_1E48C12D0(v70, v92, &qword_1ECF80368, &unk_1E49A2840);
      v71 = v55;
      v72 = v93;
      v65 = v96;
      sub_1E499818C();
      v64 = v98;
      v73 = v72;
      v55 = v71;
      (*v90)(v73, v94);
      v66 = v70;
      v54 = v95;
      v67 = &qword_1ECF80368;
      v68 = &unk_1E49A2840;
    }

    sub_1E48C1338(v66, v67, v68);
    v61 &= v61 - 1;
    result = (*v99)(v106, v64);
  }

  while (1)
  {
    v69 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v69 >= v62)
    {
    }

    v61 = *(v58 + 8 * v69);
    ++v63;
    if (v61)
    {
      v63 = v69;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E49790D0(uint64_t a1)
{
  v2 = v1;
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81630, &qword_1E49A5C30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v24 - v6;
  v8 = sub_1E4996DBC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v24 - v15;
  sub_1E4996DAC();
  v25 = *(v9 + 16);
  v25(v13, v16, v8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815C0, &qword_1E49A5BD0);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7, v26, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  v19 = *(*v2 + 112);
  swift_beginAccess();
  sub_1E496F5F8(v7, v13);
  swift_endAccess();
  v20 = swift_allocObject();
  swift_weakInit();
  v25(v13, v16, v8);
  v21 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  (*(v9 + 32))(v22 + v21, v13, v8);

  sub_1E499817C();
  (*(v9 + 8))(v16, v8);
}

uint64_t sub_1E49793C0(uint64_t a1)
{
  v2 = v1;
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81550, &qword_1E49A5B68);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v24 - v6;
  v8 = sub_1E4996DBC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v12 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v24 - v15;
  sub_1E4996DAC();
  v25 = *(v9 + 16);
  v25(v12, v16, v8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81530, &unk_1E49A5B50);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7, v26, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  v19 = *(*v2 + 112);
  swift_beginAccess();
  sub_1E496F928(v7, v12);
  swift_endAccess();
  v20 = swift_allocObject();
  swift_weakInit();
  v25(v12, v16, v8);
  v21 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  (*(v9 + 32))(v22 + v21, v12, v8);

  sub_1E499817C();
  (*(v9 + 8))(v16, v8);
}

uint64_t sub_1E49796B0(uint64_t a1)
{
  v2 = v1;
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81518, &qword_1E49A5B38);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v24 - v6;
  v8 = sub_1E4996DBC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v12 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v24 - v15;
  sub_1E4996DAC();
  v25 = *(v9 + 16);
  v25(v12, v16, v8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF814F0, &unk_1E49A5B10);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7, v26, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  v19 = *(*v2 + 112);
  swift_beginAccess();
  sub_1E496FB9C(v7, v12);
  swift_endAccess();
  v20 = swift_allocObject();
  swift_weakInit();
  v25(v12, v16, v8);
  v21 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  (*(v9 + 32))(v22 + v21, v12, v8);

  sub_1E499817C();
  (*(v9 + 8))(v16, v8);
}

uint64_t sub_1E49799A0(uint64_t a1)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81730, &qword_1E49A5D18);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v21 - v4;
  v6 = sub_1E4996DBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v21 - v13;
  sub_1E4996DAC();
  v22 = *(v7 + 16);
  v22(v10, v14, v6);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81718, &qword_1E49A5D00);
  v16 = *(v15 - 8);
  (*(v16 + 16))(v5, v23, v15);
  (*(v16 + 56))(v5, 0, 1, v15);
  swift_beginAccess();
  sub_1E496FE10(v5, v10);
  swift_endAccess();
  v17 = swift_allocObject();
  swift_weakInit();
  v22(v10, v14, v6);
  v18 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v7 + 32))(v19 + v18, v10, v6);

  sub_1E499817C();
  (*(v7 + 8))(v14, v6);
}

uint64_t sub_1E4979C7C(uint64_t a1)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815A8, &qword_1E49A5BB8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v21 - v4;
  v6 = sub_1E4996DBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v21 - v13;
  sub_1E4996DAC();
  v22 = *(v7 + 16);
  v22(v10, v14, v6);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81598, &qword_1E49A5BB0);
  v16 = *(v15 - 8);
  (*(v16 + 16))(v5, v23, v15);
  (*(v16 + 56))(v5, 0, 1, v15);
  swift_beginAccess();
  sub_1E4970084(v5, v10);
  swift_endAccess();
  v17 = swift_allocObject();
  swift_weakInit();
  v22(v10, v14, v6);
  v18 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v7 + 32))(v19 + v18, v10, v6);

  sub_1E499817C();
  (*(v7 + 8))(v14, v6);
}

uint64_t sub_1E4979F58(uint64_t a1)
{
  v2 = v1;
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF814A8, &qword_1E49A5AD8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v24 - v6;
  v8 = sub_1E4996DBC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v12 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v24 - v15;
  sub_1E4996DAC();
  v25 = *(v9 + 16);
  v25(v12, v16, v8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81478, &qword_1E49A5AA8);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7, v26, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  v19 = *(*v2 + 112);
  swift_beginAccess();
  sub_1E4970560(v7, v12);
  swift_endAccess();
  v20 = swift_allocObject();
  swift_weakInit();
  v25(v12, v16, v8);
  v21 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  (*(v9 + 32))(v22 + v21, v12, v8);

  sub_1E499817C();
  (*(v9 + 8))(v16, v8);
}

uint64_t sub_1E497A248(uint64_t a1)
{
  v2 = v1;
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81720, &qword_1E49A5D08);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v24 - v6;
  v8 = sub_1E4996DBC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v12 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v24 - v15;
  sub_1E4996DAC();
  v25 = *(v9 + 16);
  v25(v12, v16, v8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF816E8, &unk_1E49A5CD0);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7, v26, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  v19 = *(*v2 + 112);
  swift_beginAccess();
  sub_1E49707D4(v7, v12);
  swift_endAccess();
  v20 = swift_allocObject();
  swift_weakInit();
  v25(v12, v16, v8);
  v21 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  (*(v9 + 32))(v22 + v21, v12, v8);

  sub_1E499817C();
  (*(v9 + 8))(v16, v8);
}

uint64_t sub_1E497A538(uint64_t a1)
{
  v2 = v1;
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81670, &qword_1E49A5C60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v24 - v6;
  v8 = sub_1E4996DBC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v12 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v24 - v15;
  sub_1E4996DAC();
  v25 = *(v9 + 16);
  v25(v12, v16, v8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815F0, &qword_1E49A5C00);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7, v26, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  v19 = *(*v2 + 112);
  swift_beginAccess();
  sub_1E4970A48(v7, v12);
  swift_endAccess();
  v20 = swift_allocObject();
  swift_weakInit();
  v25(v12, v16, v8);
  v21 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  (*(v9 + 32))(v22 + v21, v12, v8);

  sub_1E499817C();
  (*(v9 + 8))(v16, v8);
}

uint64_t sub_1E497A828(uint64_t a1)
{
  v2 = v1;
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF816D0, &qword_1E49A5CB8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v24 - v6;
  v8 = sub_1E4996DBC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v12 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v24 - v15;
  sub_1E4996DAC();
  v25 = *(v9 + 16);
  v25(v12, v16, v8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81698, &qword_1E49A5C88);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7, v26, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  v19 = *(*v2 + 112);
  swift_beginAccess();
  sub_1E4970D90(v7, v12);
  swift_endAccess();
  v20 = swift_allocObject();
  swift_weakInit();
  v25(v12, v16, v8);
  v21 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  (*(v9 + 32))(v22 + v21, v12, v8);

  sub_1E499817C();
  (*(v9 + 8))(v16, v8);
}

uint64_t sub_1E497AB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E497ABAC(a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_1E497ABAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v32 = a1;
  v33 = a3;
  v31[1] = a2;
  v36 = sub_1E4997DBC();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36, v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4997DFC();
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E4996DBC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v18 = sub_1E4997DCC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E48D9CFC(0, &qword_1ECF809E0, 0x1E69E9610);
  (*(v19 + 104))(v23, *MEMORY[0x1E69E7F80], v18);
  v31[0] = sub_1E49983CC();
  (*(v19 + 8))(v23, v18);
  v24 = swift_allocObject();
  swift_weakInit();
  (*(v15 + 16))(v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v14);
  v25 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  (*(v15 + 32))(v26 + v25, v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  aBlock[4] = v34;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E4913064;
  aBlock[3] = v35;
  v27 = _Block_copy(aBlock);

  sub_1E4997DDC();
  v40 = MEMORY[0x1E69E7CC0];
  sub_1E498AB30(&qword_1ECF80100, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF814B0, &qword_1E49A5AE0);
  sub_1E48C1B44(&qword_1ECF80108, &unk_1ECF814B0, &qword_1E49A5AE0);
  v28 = v36;
  sub_1E499850C();
  v29 = v31[0];
  MEMORY[0x1E691BBC0](0, v13, v8, v27);
  _Block_release(v27);

  (*(v39 + 8))(v8, v28);
  (*(v37 + 8))(v13, v38);
}

uint64_t sub_1E497B040(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81630, &qword_1E49A5C30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v14[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(*result + 104);
    v10 = *(result + v9);
    v11 = result;
    swift_beginAccess();
    os_unfair_lock_lock(v10 + 4);
    swift_endAccess();
    v12 = *(*v11 + 112);
    swift_beginAccess();
    sub_1E4981C28(a2, &qword_1ECF815C0, &qword_1E49A5BD0, &qword_1ECF81638, &qword_1E49A5C38, v7);
    sub_1E48C1338(v7, &qword_1ECF81630, &qword_1E49A5C30);
    swift_endAccess();
    v13 = *(v11 + v9);
    swift_beginAccess();
    os_unfair_lock_unlock(v13 + 4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1E497B1D0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81550, &qword_1E49A5B68);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v14[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(*result + 104);
    v10 = *(result + v9);
    v11 = result;
    swift_beginAccess();
    os_unfair_lock_lock(v10 + 4);
    swift_endAccess();
    v12 = *(*v11 + 112);
    swift_beginAccess();
    sub_1E4981C28(a2, &unk_1ECF81530, &unk_1E49A5B50, &qword_1ECF81558, &qword_1E49A5B70, v7);
    sub_1E48C1338(v7, &qword_1ECF81550, &qword_1E49A5B68);
    swift_endAccess();
    v13 = *(v11 + v9);
    swift_beginAccess();
    os_unfair_lock_unlock(v13 + 4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1E497B360(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81518, &qword_1E49A5B38);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v14[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(*result + 104);
    v10 = *(result + v9);
    v11 = result;
    swift_beginAccess();
    os_unfair_lock_lock(v10 + 4);
    swift_endAccess();
    v12 = *(*v11 + 112);
    swift_beginAccess();
    sub_1E4981C28(a2, &unk_1ECF814F0, &unk_1E49A5B10, &qword_1ECF81520, &qword_1E49A5B40, v7);
    sub_1E48C1338(v7, &qword_1ECF81518, &qword_1E49A5B38);
    swift_endAccess();
    v13 = *(v11 + v9);
    swift_beginAccess();
    os_unfair_lock_unlock(v13 + 4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1E497B4F0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81730, &qword_1E49A5D18);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v12[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(result + 48);
    v10 = result;
    swift_beginAccess();
    os_unfair_lock_lock(v9 + 4);
    swift_endAccess();
    swift_beginAccess();
    sub_1E4981C28(a2, &qword_1ECF81718, &qword_1E49A5D00, &qword_1ECF81738, &qword_1E49A5D20, v7);
    sub_1E48C1338(v7, &qword_1ECF81730, &qword_1E49A5D18);
    swift_endAccess();
    v11 = *(v10 + 48);
    swift_beginAccess();
    os_unfair_lock_unlock(v11 + 4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1E497B650(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815A8, &qword_1E49A5BB8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v12[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(result + 24);
    v10 = result;
    swift_beginAccess();
    os_unfair_lock_lock(v9 + 4);
    swift_endAccess();
    swift_beginAccess();
    sub_1E4981C28(a2, &unk_1ECF81598, &qword_1E49A5BB0, &qword_1ECF815B0, &qword_1E49A5BC0, v7);
    sub_1E48C1338(v7, &qword_1ECF815A8, &qword_1E49A5BB8);
    swift_endAccess();
    v11 = *(v10 + 24);
    swift_beginAccess();
    os_unfair_lock_unlock(v11 + 4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1E497B7B0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF814A8, &qword_1E49A5AD8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v14[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(*result + 104);
    v10 = *(result + v9);
    v11 = result;
    swift_beginAccess();
    os_unfair_lock_lock(v10 + 4);
    swift_endAccess();
    v12 = *(*v11 + 112);
    swift_beginAccess();
    sub_1E4981C28(a2, &qword_1ECF81478, &qword_1E49A5AA8, &qword_1ECF814C8, &qword_1E49A5AE8, v7);
    sub_1E48C1338(v7, &qword_1ECF814A8, &qword_1E49A5AD8);
    swift_endAccess();
    v13 = *(v11 + v9);
    swift_beginAccess();
    os_unfair_lock_unlock(v13 + 4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1E497B940(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81720, &qword_1E49A5D08);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v14[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(*result + 104);
    v10 = *(result + v9);
    v11 = result;
    swift_beginAccess();
    os_unfair_lock_lock(v10 + 4);
    swift_endAccess();
    v12 = *(*v11 + 112);
    swift_beginAccess();
    sub_1E4981C28(a2, &qword_1ECF816E8, &unk_1E49A5CD0, &qword_1ECF81728, &qword_1E49A5D10, v7);
    sub_1E48C1338(v7, &qword_1ECF81720, &qword_1E49A5D08);
    swift_endAccess();
    v13 = *(v11 + v9);
    swift_beginAccess();
    os_unfair_lock_unlock(v13 + 4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1E497BAD0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81670, &qword_1E49A5C60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v14[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(*result + 104);
    v10 = *(result + v9);
    v11 = result;
    swift_beginAccess();
    os_unfair_lock_lock(v10 + 4);
    swift_endAccess();
    v12 = *(*v11 + 112);
    swift_beginAccess();
    sub_1E4981C28(a2, &qword_1ECF815F0, &qword_1E49A5C00, &qword_1ECF81678, &qword_1E49A5C68, v7);
    sub_1E48C1338(v7, &qword_1ECF81670, &qword_1E49A5C60);
    swift_endAccess();
    v13 = *(v11 + v9);
    swift_beginAccess();
    os_unfair_lock_unlock(v13 + 4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1E497BC60(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF816D0, &qword_1E49A5CB8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v14[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(*result + 104);
    v10 = *(result + v9);
    v11 = result;
    swift_beginAccess();
    os_unfair_lock_lock(v10 + 4);
    swift_endAccess();
    v12 = *(*v11 + 112);
    swift_beginAccess();
    sub_1E4981C28(a2, &qword_1ECF81698, &qword_1E49A5C88, &qword_1ECF816D8, &qword_1E49A5CC0, v7);
    sub_1E48C1338(v7, &qword_1ECF816D0, &qword_1E49A5CB8);
    swift_endAccess();
    v13 = *(v11 + v9);
    swift_beginAccess();
    os_unfair_lock_unlock(v13 + 4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1E497BDF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF813E0, &unk_1E49A57F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v15 - v11;
  sub_1E498A9E8(v3, v6, type metadata accessor for LocationAccuracy);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1E4989F40(v6, type metadata accessor for LocationAccuracy);
    return 0x6E776F6E6B6E55;
  }

  else
  {
    (*(v8 + 32))(v12, v6, v7);
    v14 = sub_1E49968CC();
    (*(v8 + 8))(v12, v7);
    return v14;
  }
}

uint64_t sub_1E497BFB4()
{
  sub_1E49985BC();

  v1 = *v0;
  [*v0 coordinate];
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB58, &unk_1E499E500);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E63B0];
  *(v4 + 16) = xmmword_1E499B670;
  v6 = MEMORY[0x1E69E6438];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v3;
  v7 = sub_1E4997EFC();
  MEMORY[0x1E691B7A0](v7);

  MEMORY[0x1E691B7A0](44, 0xE100000000000000);
  [v1 coordinate];
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E499B670;
  *(v10 + 56) = v5;
  *(v10 + 64) = v6;
  *(v10 + 32) = v9;
  v11 = sub_1E4997EFC();
  MEMORY[0x1E691B7A0](v11);

  MEMORY[0x1E691B7A0](0x636172756363417CLL, 0xEA00000000003A79);
  v12 = *(type metadata accessor for CurrentLocation(0) + 20);
  type metadata accessor for LocationAccuracy(0);
  sub_1E498AB30(&unk_1ECF81430, type metadata accessor for LocationAccuracy);
  v13 = sub_1E49987FC();
  MEMORY[0x1E691B7A0](v13);

  MEMORY[0x1E691B7A0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_1E497C1BC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_1E48D9CFC(0, &qword_1ECF80A10, 0x1E69E58C0);
  v6 = *a1;
  v7 = *a2;
  if ((sub_1E499848C() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 20);

  return sub_1E49898C4(a1 + v8, a2 + v8);
}

id sub_1E497C250()
{
  v0 = type metadata accessor for LocationDataProvider();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[14] = MEMORY[0x1E69E7CC8];
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, sel_init);
  qword_1ECF819C0 = result;
  return result;
}

id sub_1E497C2B8()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[14] = MEMORY[0x1E69E7CC8];
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1E497C314(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x4B72656874616577;
  }

  else
  {
    v4 = 0x6C616E7265746E69;
  }

  if (v3)
  {
    v5 = 0xEA00000000004955;
  }

  else
  {
    v5 = 0xEA00000000007469;
  }

  if (*a2)
  {
    v6 = 0x4B72656874616577;
  }

  else
  {
    v6 = 0x6C616E7265746E69;
  }

  if (*a2)
  {
    v7 = 0xEA00000000007469;
  }

  else
  {
    v7 = 0xEA00000000004955;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E499884C();
  }

  return v9 & 1;
}

uint64_t sub_1E497C3C4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1E499873C();

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

void sub_1E497C424(uint64_t *a1@<X8>)
{
  v2 = 0x6C616E7265746E69;
  if (*v1)
  {
    v2 = 0x4B72656874616577;
  }

  v3 = 0xEA00000000004955;
  if (*v1)
  {
    v3 = 0xEA00000000007469;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1E497C46C()
{
  v1 = *v0;
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

uint64_t sub_1E497C4F8()
{
  *v0;
  sub_1E4997F5C();
}

uint64_t sub_1E497C570()
{
  v1 = *v0;
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

uint64_t sub_1E497C650()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

id sub_1E497C6B8(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v51) = a3;
  v56 = sub_1E499837C();
  v7 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56, v8);
  v55 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1E499838C();
  v10 = *(v52 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v52, v12);
  v54 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E4997DFC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v53 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A0, &unk_1E499D7B0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v22 = &v51 - v21;
  v23 = OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource__isLocationUpdating;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81600, &qword_1E49A5C10);
  v24 = swift_allocObject();
  type metadata accessor for CPUnfairLock();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v24 + 16) = v25;
  *(v24 + 24) = 0;
  *&v3[v23] = v24;
  v26 = OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource__location;
  v27 = type metadata accessor for CurrentLocation(0);
  (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81608, &qword_1E49A5C18);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  v31[2] = v32;
  sub_1E48C15C8(v22, v31 + *(*v31 + 96), &qword_1ECF7F8A0, &unk_1E499D7B0);
  *&v3[v26] = v31;
  v33 = OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_stream;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81610, &qword_1E49A5C20);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  v38 = *(*v37 + 96);
  v39 = type metadata accessor for CurrentLocationResult(0);
  (*(*(v39 - 8) + 56))(v37 + v38, 1, 1, v39);
  v40 = *(*v37 + 104);
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v37 + v40) = v41;
  *(v37 + *(*v37 + 112)) = MEMORY[0x1E69E7CC8];
  *(v37 + *(*v37 + 120)) = 0;
  *&v3[v33] = v37;
  v42 = [objc_opt_self() meters];
  sub_1E48D9CFC(0, &qword_1ECF80200, 0x1E696B058);
  sub_1E49968BC();
  *&v3[OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_inUseAssertion] = 0;
  *&v3[OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource____lazy_storage___locationManager] = 1;
  v43 = &v3[OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_source];
  *v43 = a1;
  *(v43 + 1) = a2;
  LOBYTE(v37) = v51;
  v43[16] = v51 & 1;
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_1E48CCD00();
  sub_1E49985BC();

  v58 = 0xD00000000000001FLL;
  v59 = 0x80000001E49A8BD0;
  if (v37)
  {
    v44 = sub_1E4997EAC();
    v45 = [v44 lastPathComponent];

    v46 = sub_1E4997EEC();
    v48 = v47;

    sub_1E494E540();
    a1 = v46;
    a2 = v48;
  }

  v51 = sub_1E48D9CFC(0, &qword_1ECF809E0, 0x1E69E9610);
  MEMORY[0x1E691B7A0](a1, a2);

  sub_1E4997DEC();
  (*(v10 + 104))(v54, *MEMORY[0x1E69E8098], v52);
  v58 = MEMORY[0x1E69E7CC0];
  sub_1E498AB30(&qword_1ECF81618, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81620, &qword_1E49A5C28);
  sub_1E48C1B44(&qword_1ECF81628, &qword_1ECF81620, &qword_1E49A5C28);
  sub_1E499850C();
  *&v4[OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_locationQueue] = sub_1E49983BC();
  v49 = type metadata accessor for LocationSource(0);
  v57.receiver = v4;
  v57.super_class = v49;
  return objc_msgSendSuper2(&v57, sel_init);
}

void sub_1E497CCF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v28 - v4;
  v6 = sub_1E499708C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v0[OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_source];
  if ((v0[OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_source + 16] & 1) == 0)
  {
    v13 = *(v12 + 1);
    v28 = *v12;
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v14 = qword_1EE2BB458;
    v15 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_location_private;
    swift_beginAccess();
    sub_1E48C12D0(v14 + v15, v5, &qword_1ECF7F008, &qword_1E499B170);
    v16 = *(v7 + 48);
    if (v16(v5, 1, v6) == 1)
    {
      sub_1E4904BF4(v11);
      if (v16(v5, 1, v6) != 1)
      {
        sub_1E48C1338(v5, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v7 + 32))(v11, v5, v6);
    }

    v17 = v0;
    v18 = sub_1E499706C();
    v19 = sub_1E499832C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_1E48B0000, v18, v19, "[%{public}@] Taking in-use assertion'", v20, 0xCu);
      sub_1E48C1338(v21, &qword_1ECF7F718, &unk_1E499CA90);
      MEMORY[0x1E691CED0](v21, -1, -1);
      MEMORY[0x1E691CED0](v20, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    v23 = objc_opt_self();
    v24 = sub_1E4997EAC();
    v25 = sub_1E4997EAC();
    v26 = [v23 newAssertionForBundleIdentifier:v24 withReason:{v25, v28}];

    v27 = *&v17[OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_inUseAssertion];
    *&v17[OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_inUseAssertion] = v26;
  }
}

void *sub_1E497D07C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v25 - v4;
  v6 = sub_1E499708C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  *&v10 = MEMORY[0x1EEE9AC00](v6, v9).n128_u64[0];
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_inUseAssertion;
  result = *&v0[OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_inUseAssertion];
  if (result)
  {
    [result invalidate];
    v15 = *&v0[v13];
    *&v0[v13] = 0;

    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v16 = qword_1EE2BB458;
    v17 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_location_private;
    swift_beginAccess();
    sub_1E48C12D0(v16 + v17, v5, &qword_1ECF7F008, &qword_1E499B170);
    v18 = *(v7 + 48);
    if (v18(v5, 1, v6) == 1)
    {
      sub_1E4904BF4(v12);
      if (v18(v5, 1, v6) != 1)
      {
        sub_1E48C1338(v5, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v7 + 32))(v12, v5, v6);
    }

    v19 = v0;
    v20 = sub_1E499706C();
    v21 = sub_1E499832C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138543362;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&dword_1E48B0000, v20, v21, "[%{public}@] Removing in-use assertion", v22, 0xCu);
      sub_1E48C1338(v23, &qword_1ECF7F718, &unk_1E499CA90);
      MEMORY[0x1E691CED0](v23, -1, -1);
      MEMORY[0x1E691CED0](v22, -1, -1);
    }

    return (*(v7 + 8))(v12, v6);
  }

  return result;
}

void sub_1E497D394(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81490, &qword_1E49A5AC0);
  v53 = *(v2 - 8);
  v54 = v2;
  v3 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v52 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81498, &unk_1E49A5AC8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v56 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v51 = &v46 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A8, &unk_1E49A62B0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v46 - v24;
  v26 = *&v1[OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_stream];
  v27 = *(*v26 + 104);
  v28 = *(v26 + v27);
  swift_beginAccess();

  v29 = v1;
  os_unfair_lock_lock(v28 + 4);
  swift_endAccess();
  v30 = *(*v26 + 120);
  v31 = *(v26 + v30);
  if ((v31 & 1) == 0)
  {
    *(v26 + v30) = 1;
  }

  v32 = v27;
  v33 = *(v26 + v27);
  swift_beginAccess();
  os_unfair_lock_unlock(v33 + 4);
  swift_endAccess();
  v34 = type metadata accessor for CurrentLocationResult(0);
  v35 = *(*(v34 - 8) + 56);
  v35(v25, 1, 1, v34);
  if ((v31 & 1) == 0)
  {
    sub_1E497DD48(v21);
    v35(v21, 0, 1, v34);
    sub_1E48EC0CC(v21, v25, &qword_1ECF7F8A8, &unk_1E49A62B0);
  }

  v55 = v29;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF814A0, &unk_1E499D7C0);
  v50 = *(v36 - 8);
  v48 = *(v50 + 56);
  v49 = v50 + 56;
  v48(v16, 1, 1, v36);
  v37 = v32;
  v38 = *(v26 + v32);
  swift_beginAccess();
  os_unfair_lock_lock(v38 + 4);
  v39 = swift_endAccess();
  v41 = MEMORY[0x1EEE9AC00](v39, v40);
  *(&v46 - 2) = v26;
  *(&v46 - 1) = v25;
  v46 = v25;
  (*(v53 + 104))(v52, *MEMORY[0x1E69E8650], v54, v41);
  v42 = v51;
  sub_1E49981BC();
  sub_1E48C1338(v16, &qword_1ECF81498, &unk_1E49A5AC8);
  v48(v42, 0, 1, v36);
  sub_1E48C15C8(v42, v16, &qword_1ECF81498, &unk_1E49A5AC8);
  v43 = *(v26 + v37);
  swift_beginAccess();
  os_unfair_lock_unlock(v43 + 4);
  swift_endAccess();
  v44 = v56;
  v45 = v50;
  sub_1E48C12D0(v16, v56, &qword_1ECF81498, &unk_1E49A5AC8);
  if ((*(v45 + 48))(v44, 1, v36) == 1)
  {

    __break(1u);
  }

  else
  {

    sub_1E48C1338(v16, &qword_1ECF81498, &unk_1E49A5AC8);
    (*(v45 + 32))(v47, v44, v36);
    sub_1E48C1338(v46, &qword_1ECF7F8A8, &unk_1E49A62B0);
  }
}

id sub_1E497D904()
{
  v1 = OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource____lazy_storage___locationManager;
  v2 = *&v0[OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource____lazy_storage___locationManager];
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_1E497D974(v0);
    v4 = *&v0[v1];
    *&v0[v1] = v3;
    v5 = v3;
    sub_1E498AAC0(v4);
  }

  sub_1E498AAD0(v2);
  return v3;
}

id sub_1E497D974(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v33 - v5;
  v7 = sub_1E499708C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&a1[OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_source];
  v14 = *&a1[OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_source + 8];
  if (a1[OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_source + 16])
  {
    if (sub_1E494CCB0())
    {
      v15 = [objc_allocWithZone(MEMORY[0x1E695FBE8]) init];
      if (v15)
      {
        return v15;
      }

      goto LABEL_8;
    }

    v21 = *&a1[OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_locationQueue];
    v22 = objc_allocWithZone(MEMORY[0x1E695FBE8]);
    v18 = v21;
    v19 = sub_1E4997EAC();
    v20 = [v22 initWithEffectiveBundlePath:v19 delegate:a1 onQueue:v18];
  }

  else
  {
    v16 = *&a1[OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_locationQueue];
    v17 = objc_allocWithZone(MEMORY[0x1E695FBE8]);
    v18 = v16;
    v19 = sub_1E4997EAC();
    v20 = [v17 initWithEffectiveBundleIdentifier:v19 delegate:a1 onQueue:v18];
  }

  v15 = v20;

  if (v15)
  {
    return v15;
  }

LABEL_8:
  if (qword_1EE2BB450 != -1)
  {
    swift_once();
  }

  v23 = qword_1EE2BB458;
  v24 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_location_private;
  swift_beginAccess();
  sub_1E48C12D0(v23 + v24, v6, &qword_1ECF7F008, &qword_1E499B170);
  v25 = *(v8 + 48);
  if (v25(v6, 1, v7) == 1)
  {
    sub_1E4904BF4(v12);
    if (v25(v6, 1, v7) != 1)
    {
      sub_1E48C1338(v6, &qword_1ECF7F008, &qword_1E499B170);
    }
  }

  else
  {
    (*(v8 + 32))(v12, v6, v7);
  }

  v26 = a1;
  v27 = sub_1E499706C();
  v28 = sub_1E499831C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138543362;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&dword_1E48B0000, v27, v28, "[%{public}@] Error initing location manager'", v29, 0xCu);
    sub_1E48C1338(v30, &qword_1ECF7F718, &unk_1E499CA90);
    MEMORY[0x1E691CED0](v30, -1, -1);
    MEMORY[0x1E691CED0](v29, -1, -1);
  }

  (*(v8 + 8))(v12, v7);
  return 0;
}

uint64_t sub_1E497DD48@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A8, &unk_1E49A62B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for CurrentLocationResult(0);
  v12 = *(v11 - 8);
  (*(v12 + 56))(v10, 1, 1, v11);
  v13 = *&v1[OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_locationQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = v10;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1E498AAB8;
  *(v15 + 24) = v14;
  aBlock[4] = sub_1E496DC1C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E496F580;
  aBlock[3] = &block_descriptor_68;
  v16 = _Block_copy(aBlock);
  v17 = v13;
  v18 = v1;

  dispatch_sync(v17, v16);

  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_1E48C12D0(v10, v6, &qword_1ECF7F8A8, &unk_1E49A62B0);
    result = (*(v12 + 48))(v6, 1, v11);
    if (result != 1)
    {
      sub_1E498AA50(v6, v22, type metadata accessor for CurrentLocationResult);
      sub_1E48C1338(v10, &qword_1ECF7F8A8, &unk_1E49A62B0);
    }
  }

  __break(1u);
  return result;
}

void sub_1E497E000(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for LocationAccuracy(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1E497E984())
  {
    v8 = sub_1E497D904();
    if (v8 && (v9 = v8, v10 = [v8 location], v9, v10))
    {
      [v10 horizontalAccuracy];
      v11 = [objc_opt_self() meters];
      sub_1E48D9CFC(0, &qword_1ECF80200, 0x1E696B058);
      sub_1E49968BC();
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF813E0, &unk_1E49A57F0);
      (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
      sub_1E48C1338(a2, &qword_1ECF7F8A8, &unk_1E49A62B0);
      v13 = type metadata accessor for CurrentLocation(0);
      sub_1E498AA50(v7, a2 + *(v13 + 20), type metadata accessor for LocationAccuracy);
      *a2 = v10;
      (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
      v14 = type metadata accessor for CurrentLocationResult(0);
      v15 = v14;
      *(a2 + *(v14 + 20)) = 2;
    }

    else
    {
      sub_1E48C1338(a2, &qword_1ECF7F8A8, &unk_1E49A62B0);
      v17 = type metadata accessor for CurrentLocation(0);
      (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
      v14 = type metadata accessor for CurrentLocationResult(0);
      v15 = v14;
      *(a2 + *(v14 + 20)) = 1;
    }
  }

  else
  {
    sub_1E48C1338(a2, &qword_1ECF7F8A8, &unk_1E49A62B0);
    v16 = type metadata accessor for CurrentLocation(0);
    (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
    v14 = type metadata accessor for CurrentLocationResult(0);
    v15 = v14;
    *(a2 + *(v14 + 20)) = 0;
  }

  (*(*(v14 - 8) + 56))(a2, 0, 1, v15);
  sub_1E497E320();
}

void sub_1E497E320()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81460, &qword_1E49A5A90);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v26 - v4;
  v6 = sub_1E4997E0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v0 + OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_locationQueue);
  *v12 = v13;
  (*(v7 + 104))(v12, *MEMORY[0x1E69E8020], v6, v10);
  v14 = v13;
  LOBYTE(v13) = sub_1E4997E1C();
  (*(v7 + 8))(v12, v6);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v15 = sub_1E497D904();
  if (!v15)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81468, &qword_1E49A5A98);
    (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
    sub_1E497FA74(v5);
LABEL_9:
    sub_1E48C1338(v5, &qword_1ECF81460, &qword_1E49A5A90);
    return;
  }

  v16 = v15;
  if ((sub_1E497E984() & 1) == 0)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81468, &qword_1E49A5A98);
    (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
    sub_1E497FA74(v5);

    goto LABEL_9;
  }

  v17 = OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource__isLocationUpdating;
  v18 = *(v0 + OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource__isLocationUpdating);
  v19 = *(v18 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v19 + 4);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v19) = *(v18 + 24);
  v20 = *(v18 + 16);
  swift_beginAccess();
  os_unfair_lock_unlock(v20 + 4);
  swift_endAccess();

  if ((v19 & 1) == 0)
  {
    v21 = *(v0 + v17);
    v22 = *(v21 + 16);
    swift_beginAccess();

    os_unfair_lock_lock(v22 + 4);
    swift_endAccess();
    swift_beginAccess();
    *(v21 + 24) = 1;
    v23 = *(v21 + 16);
    swift_beginAccess();
    os_unfair_lock_unlock(v23 + 4);
    swift_endAccess();

    [v16 startUpdatingLocation];
  }
}

void sub_1E497E67C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v24 - v5;
  v7 = sub_1E499708C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E497D904();
  if (v13)
  {
    v14 = v13;
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v15 = qword_1EE2BB458;
    v16 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_location_private;
    swift_beginAccess();
    sub_1E48C12D0(v15 + v16, v6, &qword_1ECF7F008, &qword_1E499B170);
    v17 = *(v8 + 48);
    if (v17(v6, 1, v7) == 1)
    {
      sub_1E4904BF4(v12);
      if (v17(v6, 1, v7) != 1)
      {
        sub_1E48C1338(v6, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v8 + 32))(v12, v6, v7);
    }

    v18 = v1;
    v19 = sub_1E499706C();
    v20 = sub_1E499832C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543362;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_1E48B0000, v19, v20, "[%{public}@] Requesting location authorization", v21, 0xCu);
      sub_1E48C1338(v22, &qword_1ECF7F718, &unk_1E499CA90);
      MEMORY[0x1E691CED0](v22, -1, -1);
      MEMORY[0x1E691CED0](v21, -1, -1);
    }

    (*(v8 + 8))(v12, v7);
    [v14 requestWhenInUseAuthorizationWithPrompt];
  }
}

uint64_t sub_1E497E984()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v107 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v107 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v107 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v107 - v20;
  v22 = sub_1E499708C();
  v110 = *(v22 - 8);
  v111 = v22;
  v23 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v22, v24);
  v108 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v107 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v107 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v107 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v107 - v40;
  v109 = v0;
  result = sub_1E497D904();
  if (!result)
  {
    return result;
  }

  v43 = result;
  v44 = [result _authorizationStatus];
  if (v44 <= 1)
  {
    if (!v44)
    {
      v69 = v43;
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v70 = qword_1EE2BB458;
      v71 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_location_private;
      swift_beginAccess();
      sub_1E48C12D0(v70 + v71, v5, &qword_1ECF7F008, &qword_1E499B170);
      v73 = v110;
      v72 = v111;
      v74 = *(v110 + 48);
      v75 = v74(v5, 1, v111);
      v76 = v108;
      if (v75 == 1)
      {
        sub_1E4904BF4(v108);
        if (v74(v5, 1, v72) != 1)
        {
          sub_1E48C1338(v5, &qword_1ECF7F008, &qword_1E499B170);
        }
      }

      else
      {
        (*(v73 + 32))(v108, v5, v72);
      }

      v89 = v109;
      v90 = sub_1E499706C();
      v91 = sub_1E499832C();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        *v92 = 138543362;
        *(v92 + 4) = v89;
        *v93 = v89;
        v94 = v89;
        _os_log_impl(&dword_1E48B0000, v90, v91, "[%{public}@] Location Permissions - notDetermined", v92, 0xCu);
        sub_1E48C1338(v93, &qword_1ECF7F718, &unk_1E499CA90);
        MEMORY[0x1E691CED0](v93, -1, -1);
        MEMORY[0x1E691CED0](v92, -1, -1);
      }

      (*(v73 + 8))(v76, v72);
      sub_1E497E67C();

      return 0;
    }

    if (v44 == 1)
    {
      v51 = v43;
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v52 = qword_1EE2BB458;
      v53 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_location_private;
      swift_beginAccess();
      sub_1E48C12D0(v52 + v53, v9, &qword_1ECF7F008, &qword_1E499B170);
      v54 = v110;
      v55 = v111;
      v56 = *(v110 + 48);
      if (v56(v9, 1, v111) == 1)
      {
        sub_1E4904BF4(v29);
        if (v56(v9, 1, v55) != 1)
        {
          sub_1E48C1338(v9, &qword_1ECF7F008, &qword_1E499B170);
        }
      }

      else
      {
        (*(v54 + 32))(v29, v9, v55);
      }

      v101 = v109;
      v102 = sub_1E499706C();
      v103 = sub_1E499832C();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *v104 = 138543362;
        *(v104 + 4) = v101;
        *v105 = v101;
        v106 = v101;
        _os_log_impl(&dword_1E48B0000, v102, v103, "[%{public}@] Location Permissions - restricted", v104, 0xCu);
        sub_1E48C1338(v105, &qword_1ECF7F718, &unk_1E499CA90);
        MEMORY[0x1E691CED0](v105, -1, -1);
        MEMORY[0x1E691CED0](v104, -1, -1);
      }

      (*(v54 + 8))(v29, v55);
      return 0;
    }

    goto LABEL_33;
  }

  if (v44 == 2)
  {
    v57 = v43;
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v58 = qword_1EE2BB458;
    v59 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_location_private;
    swift_beginAccess();
    sub_1E48C12D0(v58 + v59, v13, &qword_1ECF7F008, &qword_1E499B170);
    v61 = v110;
    v60 = v111;
    v62 = *(v110 + 48);
    if (v62(v13, 1, v111) == 1)
    {
      sub_1E4904BF4(v33);
      if (v62(v13, 1, v60) != 1)
      {
        sub_1E48C1338(v13, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v61 + 32))(v33, v13, v60);
    }

    v77 = v109;
    v78 = sub_1E499706C();
    v79 = sub_1E499832C();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v80 = 138543362;
      *(v80 + 4) = v77;
      *v81 = v77;
      v82 = v77;
      _os_log_impl(&dword_1E48B0000, v78, v79, "[%{public}@] Location Permissions - denied", v80, 0xCu);
      sub_1E48C1338(v81, &qword_1ECF7F718, &unk_1E499CA90);
      MEMORY[0x1E691CED0](v81, -1, -1);
      MEMORY[0x1E691CED0](v80, -1, -1);
    }

    (*(v61 + 8))(v33, v60);
    return 0;
  }

  if (v44 != 4)
  {
    if (v44 == 3)
    {
      v45 = v43;
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v46 = qword_1EE2BB458;
      v47 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_location_private;
      swift_beginAccess();
      sub_1E48C12D0(v46 + v47, v21, &qword_1ECF7F008, &qword_1E499B170);
      v49 = v110;
      v48 = v111;
      v50 = *(v110 + 48);
      if (v50(v21, 1, v111) == 1)
      {
        sub_1E4904BF4(v41);
        if (v50(v21, 1, v48) != 1)
        {
          sub_1E48C1338(v21, &qword_1ECF7F008, &qword_1E499B170);
        }
      }

      else
      {
        (*(v49 + 32))(v41, v21, v48);
      }

      v95 = v109;
      v96 = sub_1E499706C();
      v97 = sub_1E499832C();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *v98 = 138543362;
        *(v98 + 4) = v95;
        *v99 = v95;
        v100 = v95;
        _os_log_impl(&dword_1E48B0000, v96, v97, "[%{public}@] Location Permissions - always", v98, 0xCu);
        sub_1E48C1338(v99, &qword_1ECF7F718, &unk_1E499CA90);
        MEMORY[0x1E691CED0](v99, -1, -1);
        MEMORY[0x1E691CED0](v98, -1, -1);
      }

      (*(v110 + 8))(v41, v111);
      return 1;
    }

LABEL_33:
    sub_1E497E67C();

    return 0;
  }

  v63 = v43;
  if (qword_1EE2BB450 != -1)
  {
    swift_once();
  }

  v64 = qword_1EE2BB458;
  v65 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_location_private;
  swift_beginAccess();
  sub_1E48C12D0(v64 + v65, v17, &qword_1ECF7F008, &qword_1E499B170);
  v67 = v110;
  v66 = v111;
  v68 = *(v110 + 48);
  if (v68(v17, 1, v111) == 1)
  {
    sub_1E4904BF4(v37);
    if (v68(v17, 1, v66) != 1)
    {
      sub_1E48C1338(v17, &qword_1ECF7F008, &qword_1E499B170);
    }
  }

  else
  {
    (*(v67 + 32))(v37, v17, v66);
  }

  v83 = v109;
  v84 = sub_1E499706C();
  v85 = sub_1E499832C();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    *v86 = 138543362;
    *(v86 + 4) = v83;
    *v87 = v83;
    v88 = v83;
    _os_log_impl(&dword_1E48B0000, v84, v85, "[%{public}@] Location Permissions - whenInUse", v86, 0xCu);
    sub_1E48C1338(v87, &qword_1ECF7F718, &unk_1E499CA90);
    MEMORY[0x1E691CED0](v87, -1, -1);
    MEMORY[0x1E691CED0](v86, -1, -1);
  }

  (*(v67 + 8))(v37, v66);
  return 1;
}

unint64_t sub_1E497F61C()
{
  sub_1E49985BC();

  v2 = *(v0 + OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_source);
  v1 = *(v0 + OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_source + 8);
  v3 = *(v0 + OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_source + 16);
  if (v3)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0xD000000000000019;
  }

  if (*(v0 + OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_source + 16))
  {
    v5 = "LocationSource: type:";
  }

  else
  {
    v5 = "nager, Failed to Load>";
  }

  MEMORY[0x1E691B7A0](v4, v5 | 0x8000000000000000);

  MEMORY[0x1E691B7A0](979659040, 0xE400000000000000);
  if (v3)
  {
    v6 = sub_1E4997EAC();
    v7 = [v6 lastPathComponent];

    v2 = sub_1E4997EEC();
    v1 = v8;
  }

  else
  {
  }

  MEMORY[0x1E691B7A0](v2, v1);

  MEMORY[0x1E691B7A0](32, 0xE100000000000000);
  v9 = sub_1E497D904();
  if (v9)
  {

    v10 = 0;
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = 0x80000001E49A8B80;
    v10 = 0xD000000000000026;
  }

  MEMORY[0x1E691B7A0](v10, v11);

  return 0xD000000000000015;
}

id sub_1E497F7EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E497F93C()
{
  sub_1E497FA0C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1E497FA0C()
{
  if (!qword_1ECF81330)
  {
    sub_1E48D9CFC(255, &qword_1ECF80200, 0x1E696B058);
    v0 = sub_1E49968DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF81330);
    }
  }
}

uint64_t sub_1E497FA74(uint64_t a1)
{
  v2 = v1;
  v88 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v83 = &v82 - v6;
  v7 = sub_1E499708C();
  v86 = *(v7 - 8);
  v87 = v7;
  v8 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v85 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for CurrentLocationResult(0);
  v11 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92, v12);
  v93 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CurrentLocation(0);
  v90 = *(v14 - 8);
  v91 = v14;
  v15 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v84 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81460, &qword_1E49A5A90);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v22 = &v82 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81468, &qword_1E49A5A98);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = (&v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = (&v82 - v31);
  MEMORY[0x1EEE9AC00](v33, v34);
  v89 = &v82 - v35;
  v36 = sub_1E4997E0C();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v40 = MEMORY[0x1EEE9AC00](v36, v39);
  v42 = (&v82 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = *&v2[OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_locationQueue];
  *v42 = v43;
  (*(v37 + 104))(v42, *MEMORY[0x1E69E8020], v36, v40);
  v44 = v43;
  LOBYTE(v43) = sub_1E4997E1C();
  (*(v37 + 8))(v42, v36);
  if ((v43 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  v45 = *&v2[OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource__isLocationUpdating];
  v46 = *(v45 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v46 + 4);
  swift_endAccess();
  swift_beginAccess();
  *(v45 + 24) = 0;
  v47 = *(v45 + 16);
  swift_beginAccess();
  os_unfair_lock_unlock(v47 + 4);
  swift_endAccess();

  v48 = sub_1E497D904();
  [v48 stopUpdatingLocation];

  sub_1E48C12D0(v88, v22, &qword_1ECF81460, &qword_1E49A5A90);
  if ((*(v24 + 48))(v22, 1, v23) != 1)
  {
    v57 = v89;
    sub_1E48C15C8(v22, v89, &qword_1ECF81468, &qword_1E49A5A98);
    sub_1E48C12D0(v57, v32, &qword_1ECF81468, &qword_1E49A5A98);
    v58 = *v32;
    v88 = *(v23 + 48);
    v59 = v91;
    v60 = *(v91 + 20);
    sub_1E48C12D0(v57, v28, &qword_1ECF81468, &qword_1E49A5A98);

    v61 = *(v23 + 48);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF813E0, &unk_1E49A57F0);
    v63 = *(v62 - 8);
    v64 = v84;
    (*(v63 + 32))(&v84[v60], v28 + v61, v62);
    (*(v63 + 56))(&v64[v60], 0, 1, v62);
    *v64 = v58;
    (*(v63 + 8))(v32 + v88, v62);
    v65 = *&v2[OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_stream];
    v66 = v93;
    sub_1E498A9E8(v64, v93, type metadata accessor for CurrentLocation);
    (*(v90 + 56))(v66, 0, 1, v59);
    *(v66 + *(v92 + 20)) = 2;
    v67 = *(*v65 + 104);
    v68 = *(v65 + v67);
    swift_beginAccess();

    os_unfair_lock_lock(v68 + 4);
    swift_endAccess();
    sub_1E4976930(v66);
    v69 = *(v65 + v67);
    swift_beginAccess();
    os_unfair_lock_unlock(v69 + 4);
    swift_endAccess();
    sub_1E4989F40(v66, type metadata accessor for CurrentLocationResult);
    sub_1E4989F40(v64, type metadata accessor for CurrentLocation);
    sub_1E48C1338(v89, &qword_1ECF81468, &qword_1E49A5A98);
  }

  sub_1E48C1338(v22, &qword_1ECF81460, &qword_1E49A5A90);
  if (qword_1EE2BB450 != -1)
  {
    goto LABEL_14;
  }

LABEL_4:
  v49 = qword_1EE2BB458;
  v50 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_location_private;
  swift_beginAccess();
  v51 = v83;
  sub_1E48C12D0(v49 + v50, v83, &qword_1ECF7F008, &qword_1E499B170);
  v53 = v86;
  v52 = v87;
  v54 = *(v86 + 48);
  v55 = v54(v51, 1, v87);
  v56 = v85;
  if (v55 == 1)
  {
    sub_1E4904BF4(v85);
    if (v54(v51, 1, v52) != 1)
    {
      sub_1E48C1338(v51, &qword_1ECF7F008, &qword_1E499B170);
    }
  }

  else
  {
    (*(v53 + 32))(v85, v51, v52);
  }

  v70 = v2;
  v71 = sub_1E499706C();
  v72 = sub_1E499832C();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v73 = 138543362;
    *(v73 + 4) = v70;
    *v74 = v70;
    v75 = v70;
    _os_log_impl(&dword_1E48B0000, v71, v72, "[%{public}@] No location found. Return fallback location", v73, 0xCu);
    sub_1E48C1338(v74, &qword_1ECF7F718, &unk_1E499CA90);
    MEMORY[0x1E691CED0](v74, -1, -1);
    MEMORY[0x1E691CED0](v73, -1, -1);
  }

  (*(v53 + 8))(v56, v52);
  v76 = *&v70[OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_stream];
  v77 = v93;
  (*(v90 + 56))(v93, 1, 1, v91);
  *(v77 + *(v92 + 20)) = 0;
  v78 = *(*v76 + 104);
  v79 = *(v76 + v78);
  swift_beginAccess();

  os_unfair_lock_lock(v79 + 4);
  swift_endAccess();
  sub_1E4976930(v77);
  v80 = *(v76 + v78);
  swift_beginAccess();
  os_unfair_lock_unlock(v80 + 4);
  swift_endAccess();
  sub_1E4989F40(v77, type metadata accessor for CurrentLocationResult);
}

void sub_1E498043C(void *a1, unint64_t a2)
{
  v3 = v2;
  v82 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81460, &qword_1E49A5A90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v84 = (&v82 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v82 - v16;
  v85 = sub_1E499708C();
  v18 = *(v85 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v85, v20);
  v22 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v83 = &v82 - v25;
  v26 = sub_1E4997E0C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = (&v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = *&v3[OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_locationQueue];
  *v32 = v33;
  (*(v27 + 104))(v32, *MEMORY[0x1E69E8020], v26, v30);
  v34 = v33;
  LOBYTE(v33) = sub_1E4997E1C();
  (*(v27 + 8))(v32, v26);
  if (v33)
  {
    v35 = *&v3[OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource__isLocationUpdating];
    v36 = *(v35 + 16);
    swift_beginAccess();

    os_unfair_lock_lock(v36 + 4);
    swift_endAccess();
    swift_beginAccess();
    *(v35 + 24) = 1;
    v37 = *(v35 + 16);
    swift_beginAccess();
    os_unfair_lock_unlock(v37 + 4);
    swift_endAccess();

    if (!(a2 >> 62))
    {
      v38 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v39 = v18;
      if (v38)
      {
        goto LABEL_4;
      }

LABEL_23:
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v69 = qword_1EE2BB458;
      v70 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_location_private;
      swift_beginAccess();
      sub_1E48C12D0(v69 + v70, v13, &qword_1ECF7F008, &qword_1E499B170);
      v71 = *(v39 + 48);
      v72 = v85;
      v73 = v71(v13, 1, v85);
      v74 = v84;
      if (v73 == 1)
      {
        sub_1E4904BF4(v22);
        if (v71(v13, 1, v72) != 1)
        {
          sub_1E48C1338(v13, &qword_1ECF7F008, &qword_1E499B170);
        }
      }

      else
      {
        (*(v39 + 32))(v22, v13, v72);
      }

      v75 = v3;
      v76 = sub_1E499706C();
      v77 = sub_1E49982FC();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *v78 = 138543362;
        *(v78 + 4) = v75;
        *v79 = v75;
        v80 = v75;
        _os_log_impl(&dword_1E48B0000, v76, v77, "[%{public}@] singleLocationUpdate ends (no location)", v78, 0xCu);
        sub_1E48C1338(v79, &qword_1ECF7F718, &unk_1E499CA90);
        MEMORY[0x1E691CED0](v79, -1, -1);
        MEMORY[0x1E691CED0](v78, -1, -1);
      }

      (*(v39 + 8))(v22, v72);
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81468, &qword_1E49A5A98);
      (*(*(v81 - 8) + 56))(v74, 1, 1, v81);
      sub_1E497FA74(v74);
      v68 = v74;
      goto LABEL_32;
    }
  }

  else
  {
    __break(1u);
  }

  v38 = sub_1E49986EC();
  v39 = v18;
  if (!v38)
  {
    goto LABEL_23;
  }

LABEL_4:
  v40 = __OFSUB__(v38, 1);
  v41 = v38 - 1;
  if (v40)
  {
    __break(1u);
    goto LABEL_34;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_34:
    v42 = MEMORY[0x1E691BDE0](v41, a2);
    goto LABEL_9;
  }

  if ((v41 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v41 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v42 = *(a2 + 8 * v41 + 32);
LABEL_9:
    v22 = v42;
    v43 = [v82 _limitsPrecision];
    a2 = v85;
    if ((v43 & 1) == 0)
    {
      [v22 horizontalAccuracy];
      if (v44 > 1500.0)
      {

        return;
      }
    }

    if (qword_1EE2BB450 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

  __break(1u);
LABEL_37:
  swift_once();
LABEL_13:
  v45 = qword_1EE2BB458;
  v46 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_location_private;
  swift_beginAccess();
  sub_1E48C12D0(v45 + v46, v17, &qword_1ECF7F008, &qword_1E499B170);
  v47 = *(v39 + 48);
  if (v47(v17, 1, a2) == 1)
  {
    v48 = v83;
    sub_1E4904BF4(v83);
    v49 = v48;
    if (v47(v17, 1, a2) != 1)
    {
      sub_1E48C1338(v17, &qword_1ECF7F008, &qword_1E499B170);
    }
  }

  else
  {
    v49 = v83;
    (*(v39 + 32))(v83, v17, a2);
  }

  v50 = v3;
  v51 = v22;
  v52 = sub_1E499706C();
  v53 = sub_1E49982FC();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = v39;
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v86 = v51;
    v87 = v57;
    *v54 = 138543619;
    *(v54 + 4) = v50;
    *v56 = v50;
    *(v54 + 12) = 2081;
    sub_1E48D9CFC(0, &unk_1ECF813D0, 0x1E6985C40);
    v58 = v50;
    v59 = v51;
    v60 = sub_1E4997F1C();
    v62 = sub_1E48CA094(v60, v61, &v87);

    *(v54 + 14) = v62;
    _os_log_impl(&dword_1E48B0000, v52, v53, "[%{public}@] singleLocationUpdate ends (location: %{private}s)", v54, 0x16u);
    sub_1E48C1338(v56, &qword_1ECF7F718, &unk_1E499CA90);
    MEMORY[0x1E691CED0](v56, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v57);
    MEMORY[0x1E691CED0](v57, -1, -1);
    MEMORY[0x1E691CED0](v54, -1, -1);

    (*(v55 + 8))(v83, v85);
  }

  else
  {

    (*(v39 + 8))(v49, a2);
  }

  v63 = v84;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81468, &qword_1E49A5A98);
  v65 = *(v64 + 48);
  *v63 = v51;
  v66 = v51;
  [v66 horizontalAccuracy];
  v67 = [objc_opt_self() meters];
  sub_1E48D9CFC(0, &qword_1ECF80200, 0x1E696B058);
  sub_1E49968BC();
  (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
  sub_1E497FA74(v63);

  v68 = v63;
LABEL_32:
  sub_1E48C1338(v68, &qword_1ECF81460, &qword_1E49A5A90);
}

id sub_1E4980F4C()
{
  type metadata accessor for PlacemarkNameLookup();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = [objc_allocWithZone(MEMORY[0x1E695FBC8]) init];
  *(v0 + 112) = result;
  qword_1ECF819C8 = v0;
  return result;
}

uint64_t sub_1E4980FA4(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v4 = sub_1E499708C();
  v2[25] = v4;
  v5 = *(v4 - 8);
  v2[26] = v5;
  v6 = *(v5 + 64) + 15;
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E498109C, v1, 0);
}

uint64_t sub_1E498109C()
{
  v1 = v0[22];
  v2 = *(v0[23] + 112);
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_1E49811C8;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81440, &qword_1E49A5A88);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E4981690;
  v0[13] = &block_descriptor_13;
  v0[14] = v3;
  [v2 reverseGeocodeLocation:v1 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E49811C8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 224) = v3;
  v4 = *(v1 + 184);
  if (v3)
  {
    v5 = sub_1E49813F4;
  }

  else
  {
    v5 = sub_1E49812E8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1E49812E8()
{
  v1 = v0[21];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v8 = v0[21];
    }

    result = sub_1E49986EC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    v5 = 0;
    v7 = 0;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1E691BDE0](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

  v5 = sub_1E4989FCC(v4);
  v7 = v6;

LABEL_11:
  v9 = v0[27];
  v10 = v0[24];

  v11 = v0[1];

  return v11(v5, v7);
}

uint64_t sub_1E49813F4()
{
  v1 = v0[28];
  swift_willThrow();
  if (qword_1EE2BB450 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[24];
  v5 = qword_1EE2BB458;
  v6 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_location_private;
  swift_beginAccess();
  sub_1E48C12D0(v5 + v6, v4, &qword_1ECF7F008, &qword_1E499B170);
  v7 = *(v3 + 48);
  if (v7(v4, 1, v2) == 1)
  {
    v9 = v0[24];
    v8 = v0[25];
    sub_1E4904BF4(v0[27]);
    if (v7(v9, 1, v8) != 1)
    {
      sub_1E48C1338(v0[24], &qword_1ECF7F008, &qword_1E499B170);
    }
  }

  else
  {
    (*(v0[26] + 32))(v0[27], v0[24], v0[25]);
  }

  v10 = v0[28];
  v11 = v10;
  v12 = sub_1E499706C();
  v13 = sub_1E49982FC();

  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[28];
  if (v14)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138477827;
    v18 = v15;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    _os_log_impl(&dword_1E48B0000, v12, v13, "Error lookup name for location %{private}@", v16, 0xCu);
    sub_1E48C1338(v17, &qword_1ECF7F718, &unk_1E499CA90);
    MEMORY[0x1E691CED0](v17, -1, -1);
    MEMORY[0x1E691CED0](v16, -1, -1);
  }

  else
  {
  }

  (*(v0[26] + 8))(v0[27], v0[25]);
  v20 = v0[27];
  v21 = v0[24];

  v22 = v0[1];

  return v22(0, 0);
}

uint64_t sub_1E4981690(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F268, &qword_1E49A3980);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    sub_1E48D9CFC(0, &unk_1ECF81450, 0x1E695FC20);
    **(*(v4 + 64) + 40) = sub_1E49980BC();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t sub_1E4981780()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

void sub_1E4981840()
{
  sub_1E48F735C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1E498193C()
{
  result = sub_1E48D9CFC(319, &unk_1ECF813D0, 0x1E6985C40);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LocationAccuracy(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E49819F8()
{
  sub_1E497FA0C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_1E4981A54()
{
  result = qword_1ECF813F8;
  if (!qword_1ECF813F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF813F8);
  }

  return result;
}

unint64_t sub_1E4981AAC()
{
  result = qword_1ECF81400;
  if (!qword_1ECF81400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF81400);
  }

  return result;
}

unint64_t sub_1E4981B00(uint64_t a1)
{
  result = sub_1E4981B28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4981B28()
{
  result = qword_1ECF81408;
  if (!qword_1ECF81408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF81408);
  }

  return result;
}

double sub_1E4981B7C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1E49481EC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E4987BF8();
      v11 = v13;
    }

    sub_1E48C8360(*(v11 + 48) + 104 * v8);
    sub_1E48B7448((*(v11 + 56) + 40 * v8), a2);
    sub_1E4984D3C(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1E4981C28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = *v6;
  v14 = sub_1E4947F28(a1);
  if (v15)
  {
    v16 = v14;
    v17 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v11;
    v32 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E49885C0(a2, a3, a4, a5);
      v19 = v32;
    }

    v20 = *(v19 + 48);
    v21 = sub_1E4996DBC();
    v22 = v16;
    (*(*(v21 - 8) + 8))(v20 + *(*(v21 - 8) + 72) * v16, v21);
    v23 = *(v19 + 56);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v31 = *(v24 - 8);
    (*(v31 + 32))(a6, v23 + *(v31 + 72) * v22, v24);
    sub_1E49854DC(v22, v19, a2, a3);
    *v11 = v19;
    v25 = *(v31 + 56);
    v26 = a6;
    v27 = 0;
    v28 = v24;
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v25 = *(*(v29 - 8) + 56);
    v28 = v29;
    v26 = a6;
    v27 = 1;
  }

  return v25(v26, v27, 1, v28);
}

unint64_t sub_1E4981E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  result = sub_1E494812C(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v16 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E498840C();
      v12 = v16;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = (*(v12 + 56) + 32 * v9);
    v15 = v14[1];
    *a3 = *v14;
    *(a3 + 16) = v15;
    result = sub_1E498532C(v9, v12);
    *v4 = v12;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 1;
  }

  return result;
}

uint64_t sub_1E4981EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1E4947F28(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E4988F0C();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_1E4996DBC();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for ScheduledTask();
    v22 = *(v15 - 8);
    sub_1E498AA50(v14 + *(v22 + 72) * v8, a2, type metadata accessor for ScheduledTask);
    sub_1E49859F8(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for ScheduledTask();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1E4982048(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for TextClockDescriptor(0);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81640, &unk_1E49A5C40);
  v46 = a2;
  result = sub_1E499870C();
  v14 = v11;
  v15 = result;
  if (*(v11 + 16))
  {
    v42 = v3;
    v43 = v11;
    v16 = 0;
    v17 = (v11 + 64);
    v18 = 1 << *(v11 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v11 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v27 = v24 | (v16 << 6);
      v28 = *(v44 + 72);
      v29 = *(v14 + 48) + v28 * v27;
      if (v46)
      {
        sub_1E498AA50(v29, v10, type metadata accessor for TextClockDescriptor);
        v47 = *(*(v14 + 56) + 8 * v27);
      }

      else
      {
        sub_1E498A9E8(v29, v10, type metadata accessor for TextClockDescriptor);
        v47 = *(*(v14 + 56) + 8 * v27);
      }

      v30 = *(v15 + 40);
      sub_1E499892C();
      v31 = *v10;
      if (*v10 == 0.0)
      {
        v31 = 0.0;
      }

      MEMORY[0x1E691C170](*&v31);
      v32 = *(v45 + 20);
      sub_1E4996F4C();
      sub_1E498AB30(&unk_1ECF809B0, MEMORY[0x1E6969BC0]);
      sub_1E4997E5C();
      result = sub_1E499896C();
      v33 = -1 << *(v15 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v22 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v14 = v43;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v22 + 8 * v35);
          if (v39 != -1)
          {
            v23 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v34) & ~*(v22 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v14 = v43;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = sub_1E498AA50(v10, *(v15 + 48) + v28 * v23, type metadata accessor for TextClockDescriptor);
      *(*(v15 + 56) + 8 * v23) = v47;
      ++*(v15 + 16);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_38;
    }

    v40 = 1 << *(v14 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v17, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v40;
    }

    *(v14 + 16) = 0;
  }

LABEL_38:
  *v3 = v15;
  return result;
}

uint64_t sub_1E4982444(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81748, &qword_1E49A5D30);
  result = sub_1E499870C();
  v8 = result;
  if (*(v5 + 16))
  {
    v42 = v3;
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
      v23 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v26 = v23 | (v9 << 6);
      v27 = *(v5 + 48) + 104 * v26;
      if (a2)
      {
        v28 = *(v27 + 48);
        v29 = *(v27 + 64);
        v30 = *(v27 + 80);
        v50 = *(v27 + 96);
        v48 = v29;
        v49 = v30;
        v47 = v28;
        v31 = *v27;
        v32 = *(v27 + 32);
        v45 = *(v27 + 16);
        v46 = v32;
        v44 = v31;
        sub_1E48B7448((*(v5 + 56) + 40 * v26), v43);
      }

      else
      {
        sub_1E48C8304(v27, &v44);
        sub_1E48CD210(*(v5 + 56) + 40 * v26, v43);
      }

      v33 = *(v8 + 40);
      sub_1E499892C();
      ClockFaceLook.hash(into:)();
      result = sub_1E499896C();
      v34 = -1 << *(v8 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v15 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v15 + 8 * v36);
          if (v40 != -1)
          {
            v16 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v35) & ~*(v15 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 104 * v16;
      v18 = v46;
      v19 = v44;
      *(v17 + 16) = v45;
      *(v17 + 32) = v18;
      v20 = v47;
      v21 = v48;
      v22 = v49;
      *(v17 + 96) = v50;
      *(v17 + 64) = v21;
      *(v17 + 80) = v22;
      *(v17 + 48) = v20;
      *v17 = v19;
      result = sub_1E48B7448(v43, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v24 = v9;
    while (1)
    {
      v9 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v25 = v10[v9];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v13 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v41 = 1 << *(v5 + 32);
      if (v41 >= 64)
      {
        bzero((v5 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v41;
      }

      *(v5 + 16) = 0;
    }

    v3 = v42;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1E498274C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81750, &unk_1E49A5D38);
  v33 = a2;
  result = sub_1E499870C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      if ((v33 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_1E499892C();
      sub_1E4997F5C();

      result = sub_1E499896C();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 8 * v19) = v25;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_36;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1E4982A60(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for WorldViewModel.Pin(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81650, &qword_1E49A5C50);
  v44 = a2;
  result = sub_1E499870C();
  v14 = result;
  if (*(v11 + 16))
  {
    v42 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 56);
      v45 = *(*(v11 + 48) + 16 * v26);
      v28 = *(v43 + 72);
      v29 = v27 + v28 * v26;
      if (v44)
      {
        sub_1E498AA50(v29, v10, type metadata accessor for WorldViewModel.Pin);
      }

      else
      {
        sub_1E498A9E8(v29, v10, type metadata accessor for WorldViewModel.Pin);
      }

      v30 = *(v14 + 40);
      sub_1E499892C();
      v31 = *&v45;
      if (*&v45 == 0.0)
      {
        v31 = 0.0;
      }

      MEMORY[0x1E691C170](*&v31);
      v32 = *(&v45 + 1);
      if (*(&v45 + 1) == 0.0)
      {
        v32 = 0.0;
      }

      MEMORY[0x1E691C170](*&v32);
      result = sub_1E499896C();
      v33 = -1 << *(v14 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v21 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v14 + 48) + 16 * v22) = v45;
      result = sub_1E498AA50(v10, *(v14 + 56) + v28 * v22, type metadata accessor for WorldViewModel.Pin);
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_40;
    }

    v40 = 1 << *(v11 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero((v11 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v11 + 16) = 0;
  }

LABEL_40:
  *v3 = v14;
  return result;
}

uint64_t sub_1E4982DF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815F8, &qword_1E49A5C08);
  v34 = a2;
  result = sub_1E499870C();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      sub_1E499892C();
      sub_1E4997F5C();

      result = sub_1E499896C();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v34)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1E49830BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81680, &qword_1E49A5C70);
  v33 = a2;
  result = sub_1E499870C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_1E499892C();
      MEMORY[0x1E691C170](qword_1E49A5D48[v21]);
      result = sub_1E499896C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1E4983358(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80B80, &unk_1E49A3E30);
  v39 = a2;
  result = sub_1E499870C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + 32 * v23);
      if (v39)
      {
        v28 = v27[1];
        v40 = *v27;
        v41 = v28;
      }

      else
      {
        sub_1E48C12D0(v27, &v40, &unk_1ECF81660, &qword_1E49A3AE0);
      }

      v29 = *(v8 + 40);
      sub_1E499892C();
      sub_1E4997F5C();
      result = sub_1E499896C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v25;
      v17[1] = v26;
      v18 = (*(v8 + 56) + 32 * v16);
      v19 = v41;
      *v18 = v40;
      v18[1] = v19;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1E4983620(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v64, v14);
  v63 = &v52 - v15;
  v16 = sub_1E4996DBC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  v65 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v22 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v59 = a2;
  result = sub_1E499870C();
  v24 = result;
  if (*(v21 + 16))
  {
    v25 = 0;
    v26 = (v21 + 64);
    v27 = 1 << *(v21 + 32);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v17;
    v30 = v28 & *(v21 + 64);
    v31 = (v27 + 63) >> 6;
    v55 = (v29 + 16);
    v56 = v29;
    v53 = v9;
    v54 = v12 + 16;
    v57 = v21;
    v58 = v12;
    v60 = (v12 + 32);
    v61 = (v29 + 32);
    v32 = result + 64;
    while (v30)
    {
      v34 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
LABEL_17:
      v37 = v34 | (v25 << 6);
      v38 = *(v21 + 48);
      v62 = *(v29 + 72);
      v39 = v38 + v62 * v37;
      if (v59)
      {
        (*v61)(v65, v39, v16);
        v40 = *(v21 + 56);
        v41 = *(v58 + 72);
        (*(v58 + 32))(v63, v40 + v41 * v37, v64);
      }

      else
      {
        (*v55)(v65, v39, v16);
        v42 = *(v21 + 56);
        v41 = *(v58 + 72);
        (*(v58 + 16))(v63, v42 + v41 * v37, v64);
      }

      v43 = *(v24 + 40);
      sub_1E498AB30(&qword_1ECF814C0, MEMORY[0x1E69695A8]);
      result = sub_1E4997E4C();
      v44 = -1 << *(v24 + 32);
      v45 = result & ~v44;
      v46 = v45 >> 6;
      if (((-1 << v45) & ~*(v32 + 8 * (v45 >> 6))) == 0)
      {
        v47 = 0;
        v48 = (63 - v44) >> 6;
        while (++v46 != v48 || (v47 & 1) == 0)
        {
          v49 = v46 == v48;
          if (v46 == v48)
          {
            v46 = 0;
          }

          v47 |= v49;
          v50 = *(v32 + 8 * v46);
          if (v50 != -1)
          {
            v33 = __clz(__rbit64(~v50)) + (v46 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v33 = __clz(__rbit64((-1 << v45) & ~*(v32 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v32 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      (*v61)((*(v24 + 48) + v62 * v33), v65, v16);
      result = (*v60)(*(v24 + 56) + v41 * v33, v63, v64);
      ++*(v24 + 16);
      v29 = v56;
      v21 = v57;
    }

    v35 = v25;
    while (1)
    {
      v25 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v25 >= v31)
      {
        break;
      }

      v36 = v26[v25];
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v30 = (v36 - 1) & v36;
        goto LABEL_17;
      }
    }

    if ((v59 & 1) == 0)
    {

      v9 = v53;
      goto LABEL_36;
    }

    v51 = 1 << *(v21 + 32);
    v9 = v53;
    if (v51 >= 64)
    {
      bzero(v26, ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v26 = -1 << v51;
    }

    *(v21 + 16) = 0;
  }

LABEL_36:
  *v9 = v24;
  return result;
}

uint64_t sub_1E4983AC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815E0, &qword_1E49A5BF0);
  v34 = a2;
  result = sub_1E499870C();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      sub_1E499892C();
      MEMORY[0x1E691C170](qword_1E49A5D48[v21]);
      result = sub_1E499896C();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v34)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1E4983D58(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for TextClockDescriptor(0);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D8, &qword_1E49A5BE8);
  v46 = a2;
  result = sub_1E499870C();
  v14 = v11;
  v15 = result;
  if (*(v11 + 16))
  {
    v42 = v3;
    v43 = v11;
    v16 = 0;
    v17 = (v11 + 64);
    v18 = 1 << *(v11 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v11 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v27 = v24 | (v16 << 6);
      v28 = *(v44 + 72);
      v29 = *(v14 + 48) + v28 * v27;
      if (v46)
      {
        sub_1E498AA50(v29, v10, type metadata accessor for TextClockDescriptor);
        v47 = *(*(v14 + 56) + 8 * v27);
      }

      else
      {
        sub_1E498A9E8(v29, v10, type metadata accessor for TextClockDescriptor);
        v47 = *(*(v14 + 56) + 8 * v27);
      }

      v30 = *(v15 + 40);
      sub_1E499892C();
      v31 = *v10;
      if (*v10 == 0.0)
      {
        v31 = 0.0;
      }

      MEMORY[0x1E691C170](*&v31);
      v32 = *(v45 + 20);
      sub_1E4996F4C();
      sub_1E498AB30(&unk_1ECF809B0, MEMORY[0x1E6969BC0]);
      sub_1E4997E5C();
      result = sub_1E499896C();
      v33 = -1 << *(v15 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v22 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v14 = v43;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v22 + 8 * v35);
          if (v39 != -1)
          {
            v23 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v34) & ~*(v22 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v14 = v43;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = sub_1E498AA50(v10, *(v15 + 48) + v28 * v23, type metadata accessor for TextClockDescriptor);
      *(*(v15 + 56) + 8 * v23) = v47;
      ++*(v15 + 16);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_38;
    }

    v40 = 1 << *(v14 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v17, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v40;
    }

    *(v14 + 16) = 0;
  }

LABEL_38:
  *v3 = v15;
  return result;
}

uint64_t sub_1E4984154(uint64_t a1, int a2)
{
  v3 = v2;
  v46 = sub_1E4996D8C();
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v46, v8);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81688, &qword_1E49A5C78);
  v44 = a2;
  result = sub_1E499870C();
  v13 = result;
  if (*(v10 + 16))
  {
    v40 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v6;
    v20 = (v6 + 32);
    v21 = result + 64;
    v43 = v10;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 56);
      v28 = *(*(v10 + 48) + v26);
      v29 = *(v6 + 72);
      v30 = v27 + v29 * v26;
      if (v44)
      {
        (*v20)(v45, v30, v46);
      }

      else
      {
        (*v41)(v45, v30, v46);
      }

      v31 = *(v13 + 40);
      sub_1E499892C();
      MEMORY[0x1E691C170](qword_1E49A5D48[v28]);
      result = sub_1E499896C();
      v32 = -1 << *(v13 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v13 + 48) + v22) = v28;
      result = (*v20)(*(v13 + 56) + v29 * v22, v45, v46);
      ++*(v13 + 16);
      v6 = v42;
      v10 = v43;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_1E49844C0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ScheduledTask();
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E4996DBC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v53 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v16 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF814E0, &qword_1E49A5B00);
  v50 = a2;
  result = sub_1E499870C();
  v18 = result;
  if (*(v15 + 16))
  {
    v45 = v3;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v46 = (v11 + 16);
    v47 = v11;
    v51 = (v11 + 32);
    v25 = result + 64;
    v48 = v15;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v52 = *(v11 + 72);
      v32 = v31 + v52 * v30;
      if (v50)
      {
        (*v51)(v53, v32, v10);
        v33 = *(v15 + 56);
        v34 = *(v49 + 72);
        sub_1E498AA50(v33 + v34 * v30, v54, type metadata accessor for ScheduledTask);
      }

      else
      {
        (*v46)(v53, v32, v10);
        v35 = *(v15 + 56);
        v34 = *(v49 + 72);
        sub_1E498A9E8(v35 + v34 * v30, v54, type metadata accessor for ScheduledTask);
      }

      v36 = *(v18 + 40);
      sub_1E498AB30(&qword_1ECF814C0, MEMORY[0x1E69695A8]);
      result = sub_1E4997E4C();
      v37 = -1 << *(v18 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v25 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v25 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v25 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v51)((*(v18 + 48) + v52 * v26), v53, v10);
      result = sub_1E498AA50(v54, *(v18 + 56) + v34 * v26, type metadata accessor for ScheduledTask);
      ++*(v18 + 16);
      v11 = v47;
      v15 = v48;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_36;
    }

    v44 = 1 << *(v15 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v20, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v44;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v3 = v18;
  return result;
}

uint64_t sub_1E4984960(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1E4996DBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF814D0, &unk_1E49A5AF0);
  v44 = a2;
  result = sub_1E499870C();
  v15 = result;
  if (*(v12 + 16))
  {
    v48 = v11;
    v40 = v3;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v12;
    v43 = v7;
    v45 = (v7 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v27 = v24 | (v16 << 6);
      v28 = *(v12 + 48);
      v47 = *(v43 + 72);
      v29 = v28 + v47 * v27;
      if (v44)
      {
        (*v45)(v48, v29, v6);
        v46 = *(*(v12 + 56) + 8 * v27);
      }

      else
      {
        (*v41)(v48, v29, v6);
        v46 = *(*(v12 + 56) + 8 * v27);
      }

      v30 = *(v15 + 40);
      sub_1E498AB30(&qword_1ECF814C0, MEMORY[0x1E69695A8]);
      result = sub_1E4997E4C();
      v31 = -1 << *(v15 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v45)(*(v15 + 48) + v47 * v23, v48, v6);
      *(*(v15 + 56) + 8 * v23) = v46;
      ++*(v15 + 16);
      v12 = v42;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v12 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

char *sub_1E4984D3C(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E499851C() + 1) & ~v5;
    do
    {
      v11 = 104 * v6;
      sub_1E48C8304(*(a2 + 48) + 104 * v6, v24);
      v12 = *(a2 + 40);
      sub_1E499892C();
      ClockFaceLook.hash(into:)();
      v13 = sub_1E499896C();
      result = sub_1E48C8360(v24);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        result = (v15 + 104 * v3);
        v16 = (v15 + v11);
        if (104 * v3 < v11 || (result < v16 + 104 ? (v17 = v3 == v6) : (v17 = 0), !v17))
        {
          result = memmove(result, v16, 0x68uLL);
        }

        v18 = *(a2 + 56);
        v19 = v18 + 40 * v3;
        v20 = (v18 + 40 * v6);
        if (v3 != v6 || v19 >= v20 + 40)
        {
          v9 = *v20;
          v10 = v20[1];
          *(v19 + 32) = *(v20 + 4);
          *v19 = v9;
          *(v19 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1E4984F08(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E499851C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_1E499892C();
      sub_1E4997F5C();

      result = sub_1E499896C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1E4985130(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E499851C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1E499892C();
      v13 = v11 == 0.0 ? 0.0 : v11;
      MEMORY[0x1E691C170](*&v13);
      v14 = v12 == 0.0 ? 0.0 : v12;
      MEMORY[0x1E691C170](*&v14);
      result = sub_1E499896C();
      v15 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v15 < v8)
      {
        goto LABEL_16;
      }

LABEL_17:
      v16 = *(a2 + 48);
      v17 = (v16 + 16 * v3);
      v18 = (v16 + 16 * v6);
      if (v3 != v6 || v17 >= v18 + 1)
      {
        *v17 = *v18;
      }

      v19 = *(a2 + 56);
      v20 = *(*(type metadata accessor for WorldViewModel.Pin(0) - 8) + 72);
      v21 = v20 * v3;
      result = v19 + v20 * v3;
      v22 = v20 * v6;
      v23 = v19 + v20 * v6 + v20;
      if (v21 < v22 || result >= v23)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v21 == v22)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if (v15 < v8)
    {
      goto LABEL_5;
    }

LABEL_16:
    if (v3 < v15)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_26:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1E498532C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E499851C() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1E499892C();

      sub_1E4997F5C();
      v14 = sub_1E499896C();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1E49854DC(int64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v41 = a3;
  v42 = a4;
  v6 = sub_1E4996DBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2 + 64;
  v14 = -1 << *(a2 + 32);
  v15 = (a1 + 1) & ~v14;
  if ((*(a2 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = sub_1E499851C();
    v18 = v16;
    v46 = (v17 + 1) & v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v44 = a2 + 64;
    v45 = v20;
    v21 = *(v19 + 56);
    v43 = (v19 - 8);
    v47 = v21;
    do
    {
      v22 = v21 * v15;
      v23 = v18;
      v24 = v19;
      v45(v12, *(a2 + 48) + v21 * v15, v6);
      v25 = *(a2 + 40);
      sub_1E498AB30(&qword_1ECF814C0, MEMORY[0x1E69695A8]);
      v26 = sub_1E4997E4C();
      result = (*v43)(v12, v6);
      v18 = v23;
      v27 = v26 & v23;
      if (a1 >= v46)
      {
        if (v27 >= v46 && a1 >= v27)
        {
LABEL_15:
          v19 = v24;
          if (v47 * a1 < v22 || *(a2 + 48) + v47 * a1 >= (*(a2 + 48) + v22 + v47))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v47 * a1 != v22)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v30 = *(a2 + 56);
          v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v41, v42) - 8) + 72);
          v32 = v31 * a1;
          result = v30 + v31 * a1;
          v33 = v31 * v15;
          v34 = v30 + v31 * v15 + v31;
          if (v32 < v33 || result >= v34)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v15;
            v13 = v44;
            v18 = v23;
          }

          else
          {
            a1 = v15;
            v36 = v32 == v33;
            v13 = v44;
            v18 = v23;
            if (!v36)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v18 = v23;
              a1 = v15;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v46 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v19 = v24;
      v13 = v44;
LABEL_4:
      v15 = (v15 + 1) & v18;
      v21 = v47;
    }

    while (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v37 = *(a2 + 16);
  v38 = __OFSUB__(v37, 1);
  v39 = v37 - 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v39;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1E4985820(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E499851C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_1E499892C();
      MEMORY[0x1E691C170](qword_1E49A5D48[v10]);
      result = sub_1E499896C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_1E4996D8C() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1E49859F8(int64_t a1, uint64_t a2)
{
  v4 = sub_1E4996DBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v44 = a2;
    v13 = ~v11;
    v14 = sub_1E499851C();
    v15 = v13;
    a2 = v44;
    v43 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v41 = v10;
    v42 = v17;
    v18 = *(v16 + 56);
    v40 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v42(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_1E498AB30(&qword_1ECF814C0, MEMORY[0x1E69695A8]);
      v24 = sub_1E4997E4C();
      (*v40)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v43)
      {
        if (v25 >= v43 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v44 + 48) + v19 * a1 >= (*(v44 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v28 = *(v44 + 56);
          v29 = *(*(type metadata accessor for ScheduledTask() - 8) + 72);
          v30 = v29 * a1;
          v31 = v28 + v29 * a1;
          v32 = v29 * v12;
          v33 = v28 + v29 * v12 + v29;
          if (v30 < v32 || v31 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v41;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v35 = v30 == v32;
            v10 = v41;
            v15 = v21;
            if (!v35)
            {
              swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v43 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v41;
      a2 = v44;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }
}

void sub_1E4985D3C(int64_t a1, uint64_t a2)
{
  v42 = sub_1E4996DBC();
  v4 = *(v42 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v43 = v7;
    v13 = sub_1E499851C();
    v14 = v42;
    v7 = v43;
    v15 = v12;
    v40 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v38 = a2 + 64;
    v39 = v17;
    v18 = *(v16 + 56);
    v37 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v41;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v39(v41, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1E498AB30(&qword_1ECF814C0, MEMORY[0x1E69695A8]);
      v26 = sub_1E4997E4C();
      (*v37)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v40)
      {
        if (v27 >= v40 && a1 >= v27)
        {
LABEL_15:
          v7 = v43;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v7 = v43;
            v18 = v19;
            v15 = v22;
            v9 = v38;
          }

          else
          {
            v9 = v38;
            if (v19 * a1 != v20)
            {
              swift_arrayInitWithTakeBackToFront();
              v7 = v43;
              v18 = v19;
              v15 = v22;
            }
          }

          v30 = *(v7 + 56);
          v31 = (v30 + 8 * a1);
          v32 = (v30 + 8 * v11);
          if (a1 != v11 || v31 >= v32 + 1)
          {
            *v31 = *v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v40 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v38;
      v18 = v19;
      v7 = v43;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(v7 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v35;
    ++*(v7 + 36);
  }
}

uint64_t sub_1E498605C(uint64_t a1, double *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for TextClockDescriptor(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1E4947FC0(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1E49879B8();
      goto LABEL_7;
    }

    sub_1E4982048(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_1E4947FC0(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1E498A9E8(a2, v12, type metadata accessor for TextClockDescriptor);
      return sub_1E49876B0(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1E499887C();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_1E4986200(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1E49481EC(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1E4987BF8();
      goto LABEL_7;
    }

    sub_1E4982444(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_1E49481EC(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1E48C8304(a2, v22);
      return sub_1E4987428(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_1E499887C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 40 * v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v17);

  return sub_1E48B7448(a1, v17);
}

unint64_t sub_1E4986350(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1E4948258(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1E498274C(v14, a3 & 1);
      v18 = *v4;
      result = sub_1E4948258(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_1E499887C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1E4987DBC();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t sub_1E498649C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v37 = a6;
  v38 = a7;
  v39 = a4;
  v40 = a5;
  v8 = v7;
  v12 = sub_1E4996DBC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v7;
  v20 = sub_1E4947F28(a2);
  v21 = *(v18 + 16);
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
    goto LABEL_15;
  }

  v24 = v19;
  v25 = *(v18 + 24);
  if (v25 < v23 || (a3 & 1) == 0)
  {
    if (v25 >= v23 && (a3 & 1) == 0)
    {
      sub_1E49885C0(v39, v40, v37, v38);
      goto LABEL_7;
    }

    sub_1E4983620(v23, a3 & 1, v39, v40, v37, v38);
    v34 = *v8;
    v35 = sub_1E4947F28(a2);
    if ((v24 & 1) == (v36 & 1))
    {
      v20 = v35;
      v26 = *v8;
      if (v24)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v13 + 16))(v17, a2, v12);
      return sub_1E49875A8(v20, v17, a1, v26, v39, v40);
    }

LABEL_15:
    result = sub_1E499887C();
    __break(1u);
    return result;
  }

LABEL_7:
  v26 = *v8;
  if ((v24 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v27 = v26[7];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
  v29 = *(v28 - 8);
  v30 = *(v29 + 40);
  v31 = v28;
  v32 = v27 + *(v29 + 72) * v20;

  return v30(v32, a1, v31);
}

uint64_t sub_1E49866C0(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1E4948350(a3, a4);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a2 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for WorldViewModel.Pin(0);
      return sub_1E498ACC0(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for WorldViewModel.Pin);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a2 & 1) == 0)
  {
    sub_1E4987F18();
    goto LABEL_7;
  }

  sub_1E4982A60(v15, a2 & 1);
  v22 = *v5;
  v23 = sub_1E4948350(a3, a4);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    type metadata accessor for CLLocationCoordinate2D(0);
    result = sub_1E499887C();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1E49874FC(v12, a1, v18, a3, a4);
}

unint64_t sub_1E498681C(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  result = sub_1E49483C4(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      v21 = v20[7];
      v22 = *(v21 + 8 * result);
      *(v21 + 8 * result) = a1;

      return MEMORY[0x1EEE66BB8]();
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = v8;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1E4988154();
    result = v17;
    goto LABEL_8;
  }

  sub_1E4982DF0(v14, a3 & 1);
  v18 = *v4;
  result = sub_1E49483C4(v8);
  if ((v15 & 1) == (v19 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_1E499887C();
  __break(1u);
  return MEMORY[0x1EEE66BB8]();
}

unint64_t sub_1E4986964(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1E4948474(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1E49830BC(v14, a3 & 1);
      v18 = *v4;
      result = sub_1E4948474(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_1E499887C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1E49882B0();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t sub_1E4986AB0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1E494812C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1E4983358(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1E494812C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1E499887C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1E498840C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    return sub_1E48EC0CC(a1, v22[7] + 32 * v11, &unk_1ECF81660, &qword_1E49A3AE0);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v22[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v22[7] + 32 * v11);
  v26 = a1[1];
  *v25 = *a1;
  v25[1] = v26;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v28;
}

unint64_t sub_1E4986C34(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1E4948474(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      v21 = v20[7];
      v22 = *(v21 + 8 * result);
      *(v21 + 8 * result) = a1;

      return MEMORY[0x1EEE66BB8]();
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1E498890C();
    result = v17;
    goto LABEL_8;
  }

  sub_1E4983AC4(v14, a3 & 1);
  v18 = *v4;
  result = sub_1E4948474(a2);
  if ((v15 & 1) == (v19 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_1E499887C();
  __break(1u);
  return MEMORY[0x1EEE66BB8]();
}

void sub_1E4986D7C(uint64_t a1, double *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for TextClockDescriptor(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1E4947FC0(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1E4988A68();
      goto LABEL_7;
    }

    sub_1E4983D58(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_1E4947FC0(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1E498A9E8(a2, v12, type metadata accessor for TextClockDescriptor);
      sub_1E49876B0(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_1E499887C();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_1E4986F20(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1E4948474(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1E4988CA4();
      goto LABEL_7;
    }

    sub_1E4984154(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_1E4948474(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1E499887C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_1E4996D8C();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1E4987764(v10, a2, a1, v16);
}