id sub_1D1345958()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalRecordTimelineSystemStatusItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_15HealthRecordsUI37MedicalRecordTimelineSystemStatusItemC0gH0O(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_1D1345A30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1345A8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D1345AFC()
{
  result = qword_1EC60FAB8;
  if (!qword_1EC60FAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FAB8);
  }

  return result;
}

uint64_t sub_1D1345B50@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI41MedicalRecordTimelineSystemStatusItemCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

uint64_t sub_1D1345BA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI41MedicalRecordTimelineSystemStatusItemCell_item;
  swift_beginAccess();
  sub_1D10B1300(a1, v1 + v3);
  swift_endAccess();
  sub_1D1345644();
  return sub_1D10A72B8(a1);
}

uint64_t (*sub_1D1345C14(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D1345C78;
}

uint64_t sub_1D1345C78(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D1345644();
  }

  return result;
}

uint64_t sub_1D1345D14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MedicalRecordTimelineSystemStatusItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1345D54(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

BOOL sub_1D1345D68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 == 1)
  {
    return 0;
  }

  if (v3)
  {
    if (v4 && (*(a1 + 16) == *(a2 + 16) && v3 == v4 || (sub_1D139162C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

void *sub_1D1345DF0(void *a1, uint64_t a2, void *a3)
{
  v3[5] = a1;
  v3[6] = a2;
  v3[7] = a3;
  v3[8] = 0;
  v5 = a1;

  v6 = a3;
  v7 = ConceptsDataSource.init(arrangedSections:isHidden:)(MEMORY[0x1E69E7CC0], 0);
  swift_allocObject();
  swift_weakInit();
  sub_1D1080F00();
  sub_1D13470CC(&qword_1EC60FAD8, 255, sub_1D1080F00);

  v8 = sub_1D138F90C();

  v7[8] = v8;

  return v7;
}

uint64_t sub_1D1345F40(void **a1)
{
  v2 = sub_1D138FECC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D138FF0C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_1D106F934(0, &qword_1EE06B760);
    v13 = sub_1D1390A7C();
    v18 = v6;
    v14 = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = v10;
    *(v15 + 24) = v12;
    aBlock[4] = sub_1D1347048;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D10CBD3C;
    aBlock[3] = &block_descriptor_78;
    v16 = _Block_copy(aBlock);
    v17 = v10;

    sub_1D138FEEC();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D13470CC(&qword_1EE06B7E0, 255, MEMORY[0x1E69E7F60]);
    sub_1D1347068(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D1080CD4();
    sub_1D139103C();
    MEMORY[0x1D3886400](0, v9, v5, v16);
    _Block_release(v16);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v18);
  }

  return result;
}

void sub_1D134626C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_1D1287820(0);
    sub_1D13462DC(v1);
  }

  else
  {
    sub_1D1287820(1);
  }
}

uint64_t sub_1D13462DC(void *a1)
{
  v2 = sub_1D138D5EC();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MedicalRecordTimelineAccountHeaderItem();
  v5 = swift_allocObject();
  type metadata accessor for MedicalRecordTimelineAccountHeaderItemCell();
  sub_1D13470CC(&qword_1EC60FAE0, 255, type metadata accessor for MedicalRecordTimelineAccountHeaderItemCell);
  v5[3] = sub_1D138DECC();
  v5[4] = v6;
  v5[2] = a1;
  v45[8] = v4;
  v45[9] = sub_1D13470CC(&qword_1EC60FB10, 255, type metadata accessor for MedicalRecordTimelineAccountHeaderItem);
  v45[5] = v5;
  v7 = a1;
  sub_1D1346918(v7, &v46);
  sub_1D1346AB0(v7, v47);
  v8 = type metadata accessor for MedicalRecordTimelineAccountDetailsItem();
  v9 = swift_allocObject();
  type metadata accessor for MedicalRecordTimelineAccountDetailsItemCell();
  sub_1D13470CC(&qword_1EC60FAF8, 255, type metadata accessor for MedicalRecordTimelineAccountDetailsItemCell);
  v9[3] = sub_1D138DECC();
  v9[4] = v10;
  v9[2] = v7;
  v47[8] = v8;
  v47[9] = sub_1D13470CC(&qword_1EC60FB18, 255, type metadata accessor for MedicalRecordTimelineAccountDetailsItem);
  v47[5] = v9;
  v11 = v7;
  v34 = sub_1D138E0FC();
  sub_1D1347068(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
  v12 = *(sub_1D138E52C() - 8);
  v32 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1D139E700;
  v13 = MEMORY[0x1E69E7CC0];
  v14 = 4;
  v15 = MEMORY[0x1E69A3348];
  do
  {
    sub_1D10A71C0(&v45[v14 + 1], v44);
    sub_1D10A71C0(v44, v41);
    v16 = v42;
    if (!v42)
    {
      sub_1D1347170(v44, &qword_1EC60B620, &qword_1EC60A3D0, v15);
      sub_1D1347170(v41, &qword_1EC60B620, &qword_1EC60A3D0, v15);
      v38 = 0u;
      v39 = 0u;
      v40 = 0;
LABEL_3:
      sub_1D1347170(&v38, &qword_1EC60AA38, &qword_1EC60F6A0, MEMORY[0x1E69A3310]);
      goto LABEL_4;
    }

    v17 = v43;
    v18 = __swift_project_boxed_opaque_existential_1Tm(v41, v42);
    *(&v39 + 1) = v16;
    v40 = *(v17 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v38);
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v18, v16);
    sub_1D1347170(v44, &qword_1EC60B620, &qword_1EC60A3D0, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    if (!*(&v39 + 1))
    {
      goto LABEL_3;
    }

    sub_1D102CC18(&v38, v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45[0] = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1D10F75F4(0, v13[2] + 1, 1, v13);
      v45[0] = v13;
    }

    v22 = v13[2];
    v21 = v13[3];
    if (v22 >= v21 >> 1)
    {
      v13 = sub_1D10F75F4((v21 > 1), v22 + 1, 1, v13);
      v45[0] = v13;
    }

    v23 = v42;
    v24 = v43;
    v25 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    v26 = MEMORY[0x1EEE9AC00](v25);
    v28 = &v32 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v28, v26);
    sub_1D125DA54(v22, v28, v45, v23, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
LABEL_4:
    v14 += 5;
  }

  while (v14 != 24);
  sub_1D1347114(0, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D1080EA4);
  swift_arrayDestroy();
  v30 = v35;
  sub_1D138D5DC();
  sub_1D138D59C();
  (*(v36 + 8))(v30, v37);
  sub_1D138E50C();
  sub_1D138E58C();
}

double sub_1D1346918@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EC608E90 != -1)
  {
    v12 = a1;
    swift_once();
    a1 = v12;
  }

  if (byte_1EC60F770 == 1 && (v11 = a1, [a1 needsLogin]))
  {
    v4 = *(v2 + 56);
    v5 = type metadata accessor for MedicalRecordTimelineAccountReconnectItem();
    v6 = swift_allocObject();
    type metadata accessor for MedicalRecordTimelineAccountReconnectItemCell();
    sub_1D13470CC(&qword_1EC60FAE8, 255, type metadata accessor for MedicalRecordTimelineAccountReconnectItemCell);
    v7 = v4;
    v6[4] = sub_1D138DECC();
    v6[5] = v8;
    v6[2] = v11;
    v6[3] = v7;
    *(a2 + 24) = v5;
    *(a2 + 32) = sub_1D13470CC(&qword_1EC60FB08, 255, type metadata accessor for MedicalRecordTimelineAccountReconnectItem);
    *a2 = v6;

    v9 = v11;
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

double sub_1D1346AB0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EC608E90 != -1)
  {
    v12 = a1;
    swift_once();
    a1 = v12;
  }

  if (byte_1EC60F770 == 1 && (v11 = a1, [a1 wantsGatewayUpgrade]))
  {
    v4 = *(v2 + 56);
    v5 = type metadata accessor for MedicalRecordTimelineAccountUpgradeItem();
    v6 = swift_allocObject();
    type metadata accessor for MedicalRecordTimelineAccountUpgradeItemCell();
    sub_1D13470CC(&qword_1EC60FAF0, 255, type metadata accessor for MedicalRecordTimelineAccountUpgradeItemCell);
    v7 = v4;
    v6[4] = sub_1D138DECC();
    v6[5] = v8;
    v6[2] = v11;
    v6[3] = v7;
    *(a2 + 24) = v5;
    *(a2 + 32) = sub_1D13470CC(&qword_1EC60FB00, 255, type metadata accessor for MedicalRecordTimelineAccountUpgradeItem);
    *a2 = v6;

    v9 = v11;
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

uint64_t sub_1D1346C78()
{
}

uint64_t sub_1D1346CB8()
{

  v1 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1D1346D58()
{
  v0 = sub_1D138E6BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138E65C();
  v4 = sub_1D138E6AC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1D1346E88()
{
  type metadata accessor for MedicalRecordTimelineAccountHeaderItemCell();
  sub_1D13470CC(&qword_1EC60FAE0, 255, type metadata accessor for MedicalRecordTimelineAccountHeaderItemCell);
  sub_1D13908AC();
  type metadata accessor for MedicalRecordTimelineAccountReconnectItemCell();
  sub_1D13470CC(&qword_1EC60FAE8, 255, type metadata accessor for MedicalRecordTimelineAccountReconnectItemCell);
  sub_1D13908AC();
  type metadata accessor for MedicalRecordTimelineAccountUpgradeItemCell();
  sub_1D13470CC(&qword_1EC60FAF0, 255, type metadata accessor for MedicalRecordTimelineAccountUpgradeItemCell);
  sub_1D13908AC();
  type metadata accessor for MedicalRecordTimelineAccountDetailsItemCell();
  sub_1D13470CC(&qword_1EC60FAF8, 255, type metadata accessor for MedicalRecordTimelineAccountDetailsItemCell);
  return sub_1D13908AC();
}

uint64_t block_copy_helper_79(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D1347068(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D13470CC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D1347114(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D1390F3C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D1347170(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1D1347114(0, a2, a3, a4, sub_1D1080EA4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D1347280(void *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1D139177C();
  v4 = *a1;
  v5 = a1[2];
  v6 = a1[3];
  MEMORY[0x1D38870E0](*a1);
  sub_1D1390D9C();
  sub_1D139179C();
  if (v6)
  {
    sub_1D139027C();
  }

  v9 = a1[6];
  v8 = a1[7];
  *&v20 = a1[5];
  *(&v20 + 1) = a1[4];
  sub_1D139027C();
  sub_1D123F520(&v22, v9);
  v19 = v8;
  sub_1D123F520(&v22, v8);
  sub_1D1390D9C();
  v10 = sub_1D13917CC();
  v11 = -1 << *(a2 + 32);
  v12 = v10 & ~v11;
  if ((*(a2 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = *(a2 + 48) + 72 * v12;
      v22 = *v14;
      v16 = *(v14 + 32);
      v15 = *(v14 + 48);
      v17 = *(v14 + 16);
      v26 = *(v14 + 64);
      v24 = v16;
      v25 = v15;
      v23 = v17;
      if (v22 != v4)
      {
        goto LABEL_9;
      }

      sub_1D106F934(0, &qword_1EE06B0C0);
      sub_1D1082914(&v22, v21);
      if ((sub_1D1390D8C() & 1) == 0)
      {
        break;
      }

      if (*(&v23 + 1))
      {
        if (!v6 || v23 != __PAIR128__(v6, v5) && (sub_1D139162C() & 1) == 0)
        {
          break;
        }
      }

      else if (v6)
      {
        break;
      }

      if (__PAIR128__(v24, *(&v24 + 1)) != v20 && (sub_1D139162C() & 1) == 0 || (sub_1D1335054(v25, v9) & 1) == 0 || (sub_1D1335054(*(&v25 + 1), v19) & 1) == 0)
      {
        break;
      }

      v18 = sub_1D1390D8C();
      sub_1D1080D98(&v22);
      if (v18)
      {
        return 1;
      }

LABEL_9:
      v12 = (v12 + 1) & v13;
      if (((*(a2 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        return 0;
      }
    }

    sub_1D1080D98(&v22);
    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_1D1347504(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1D139111C();
  }

  else if (*(a2 + 16) && (sub_1D106F934(0, &qword_1EC609A00), v5 = sub_1D1390D7C(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_1D1390D8C();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1D134761C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D138D5EC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1D134FA90(&qword_1EE06B4F8, MEMORY[0x1E69695A8]), v7 = sub_1D139006C(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1D134FA90(&qword_1EC6098A0, MEMORY[0x1E69695A8]);
      v15 = sub_1D139011C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1D1347834(uint64_t a1)
{
  v2 = sub_1D138FF3C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = qword_1EC60FB20;
  v19 = *(a1 + qword_1EC60FB20);
  v7 = sub_1D1349924(v19);
  v8 = sub_1D106F934(0, &qword_1EE06B760);
  *v5 = sub_1D1390A7C();
  v9 = *MEMORY[0x1E69E8020];
  v10 = *MEMORY[0x1E69E8020];
  v21 = *(v3 + 104);
  v21(v5, v10, v2);
  v11 = sub_1D138FF5C();
  v20 = *(v3 + 8);
  result = v20(v5, v2);
  if (v11)
  {

    sub_1D138DEDC();
    v18 = v8;

    sub_1D110A5C8(v7);
    v17 = v9;

    sub_1D138E5AC();

    v13 = *(a1 + v6);
    v14 = sub_1D134A2B8(v13);
    *v5 = sub_1D1390A7C();
    v21(v5, v17, v2);
    v15 = sub_1D138FF5C();
    result = v20(v5, v2);
    if (v15)
    {

      sub_1D110A5C8(v14);

      sub_1D138E5AC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D1347AC4(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = sub_1D138FECC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D138FF0C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + qword_1EC60FB68);
  *(v2 + qword_1EC60FB68) = a1;
  if (v13 != v4)
  {
    sub_1D106F934(0, &qword_1EE06B760);
    v14 = sub_1D1390A7C();
    aBlock[4] = sub_1D134FD3C;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D10CBD3C;
    aBlock[3] = &block_descriptor_99_0;
    v15 = _Block_copy(aBlock);

    sub_1D138FEEC();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D134FA90(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
    sub_1D134E174(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D1080CD4();
    sub_1D139103C();
    MEMORY[0x1D3886400](0, v12, v8, v15);
    _Block_release(v15);

    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1D1347DB8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69A35F8];
  sub_1D134FAD8(0, &qword_1EC60FC58, type metadata accessor for ClinicalSharingOnboardingSelectWhatToShareDataSource, MEMORY[0x1E69A3738], MEMORY[0x1E69A35F8]);
  v92 = *(v7 - 8);
  v93 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v94 = &v87 - v8;
  sub_1D134FAD8(0, &qword_1EC60FC50, MEMORY[0x1E69A35A8], MEMORY[0x1E69A35A0], v6);
  v90 = v9;
  v89 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v87 - v10;
  v11 = sub_1D138D5EC();
  v104 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D138F3FC();
  MEMORY[0x1EEE9AC00](v14 - 8);
  *(v2 + qword_1EC60FB58) = MEMORY[0x1E69E7CC0];
  v15 = qword_1EC60FB60;
  sub_1D106F934(0, &qword_1EE06B760);
  v16 = sub_1D1390A7C();
  v17 = [objc_allocWithZone(MEMORY[0x1E69A3F88]) initWithDelegateQueue_];

  *(v3 + v15) = v17;
  *(v3 + qword_1EC60FB68) = 0;
  *(v3 + qword_1EC60FB20) = a1;
  *(v3 + qword_1EC60FB28) = a2;
  v18 = qword_1EE069F90;
  v88 = a1;
  v96 = a2;

  if (v18 != -1)
  {
LABEL_24:
    swift_once();
  }

  sub_1D138D1CC();
  sub_1D138F37C();
  v19 = sub_1D138DE3C();
  swift_allocObject();
  v20 = sub_1D138DE1C();
  sub_1D134E174(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
  v22 = v21;
  v23 = *(sub_1D138E52C() - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v97 = *(v23 + 80);
  v98 = v24;
  v99 = v22;
  v26 = swift_allocObject();
  v105 = xmmword_1D139E700;
  *(v26 + 16) = xmmword_1D139E700;
  sub_1D138D5DC();
  sub_1D138D59C();
  v27 = *(v104 + 8);
  v104 += 8;
  v101 = v27;
  v102 = v11;
  v27(v13, v11);
  v28 = MEMORY[0x1E69E7CC0];
  v100 = v25;
  sub_1D138E50C();
  sub_1D138EAAC();
  swift_allocObject();
  sub_1D138EA8C();
  v107 = v19;
  v29 = sub_1D134FA90(&qword_1EC60B610, MEMORY[0x1E69A34C8]);
  v108 = v29;
  v106[0] = v20;
  v95 = v20;

  v30 = sub_1D138E23C();

  __swift_destroy_boxed_opaque_existential_1Tm(v106);
  v103 = v3;
  *(v3 + qword_1EC60FB38) = v30;

  v3 = sub_1D10F8F64(0, 1, 1, v28);
  v32 = v3[2];
  v31 = v3[3];
  if (v32 >= v31 >> 1)
  {
    v3 = sub_1D10F8F64((v31 > 1), v32 + 1, 1, v3);
  }

  v33 = sub_1D134FA00();
  v3[2] = v32 + 1;
  v34 = &v3[2 * v32];
  v34[4] = v30;
  v34[5] = v33;
  *(swift_allocObject() + 16) = v105;
  sub_1D138D5DC();
  sub_1D138D59C();
  v101(v13, v102);
  sub_1D138E50C();
  swift_allocObject();
  sub_1D138EA8C();
  v107 = v19;
  v108 = v29;
  v106[0] = v95;

  v35 = sub_1D138E23C();

  __swift_destroy_boxed_opaque_existential_1Tm(v106);
  v36 = v103;
  *(v103 + qword_1EC60FB30) = v35;
  v37 = v3[2];
  v38 = v3[3];

  if (v37 >= v38 >> 1)
  {
    v3 = sub_1D10F8F64((v38 > 1), v37 + 1, 1, v3);
  }

  v3[2] = v37 + 1;
  v39 = &v3[2 * v37];
  v39[4] = v35;
  v39[5] = v33;
  *(swift_allocObject() + 16) = v105;
  sub_1D138D5DC();
  sub_1D138D59C();
  v40 = v101;
  v41 = v102;
  v101(v13, v102);
  sub_1D138E50C();
  v106[0] = 0;
  v106[1] = 0xE000000000000000;
  sub_1D13911EC();

  strcpy(v106, "MutableArray<");
  HIWORD(v106[1]) = -4864;
  sub_1D138D5DC();
  v42 = sub_1D138D59C();
  v44 = v43;
  v40(v13, v41);
  MEMORY[0x1D3885C10](v42, v44);

  MEMORY[0x1D3885C10](62, 0xE100000000000000);
  sub_1D138E5BC();
  swift_allocObject();
  v45 = sub_1D138E56C();
  *(v36 + qword_1EC60FB40) = v45;
  v46 = v3[2];
  v47 = v3[3];

  if (v46 >= v47 >> 1)
  {
    v3 = sub_1D10F8F64((v47 > 1), v46 + 1, 1, v3);
  }

  v3[2] = v46 + 1;
  v48 = &v3[2 * v46];
  v48[4] = v45;
  v48[5] = MEMORY[0x1E69A3698];
  *(swift_allocObject() + 16) = v105;
  sub_1D134CD1C(0, &qword_1EC60B640, &qword_1EC60F6A0, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v49 = swift_allocObject();
  *(v49 + 16) = v105;
  v50 = type metadata accessor for StopSharingItem(0);
  swift_allocObject();
  v51 = v88;
  v52 = v96;

  v53 = sub_1D134E764(v51, v52);
  *&v105 = v51;

  *(v49 + 56) = v50;
  *(v49 + 64) = sub_1D134FA90(&qword_1EC60FC80, type metadata accessor for StopSharingItem);
  *(v49 + 32) = v53;
  sub_1D138D5DC();
  sub_1D138D59C();
  v54 = v101;
  v11 = v102;
  v101(v13, v102);
  sub_1D138E50C();
  strcpy(v106, "ArrayDS<");
  BYTE1(v106[1]) = 0;
  WORD1(v106[1]) = 0;
  HIDWORD(v106[1]) = -402653184;
  sub_1D138D5DC();
  v55 = sub_1D138D59C();
  v57 = v56;
  v54(v13, v11);
  MEMORY[0x1D3885C10](v55, v57);

  MEMORY[0x1D3885C10](62, 0xE100000000000000);
  sub_1D138DF4C();
  swift_allocObject();
  v58 = sub_1D138DF3C();
  v59 = *MEMORY[0x1E69A35E8];
  (*(v89 + 104))(v91, v59, v90);
  sub_1D134FAD8(0, &qword_1EC60FC60, MEMORY[0x1E69A35A8], MEMORY[0x1E69A35A0], MEMORY[0x1E69A3608]);
  swift_allocObject();

  v104 = v58;
  v60 = sub_1D138E17C();
  *(v103 + qword_1EC60FB50) = v60;
  v61 = v3[2];
  v62 = v3[3];

  if (v61 >= v62 >> 1)
  {
    v3 = sub_1D10F8F64((v62 > 1), v61 + 1, 1, v3);
  }

  v63 = sub_1D134F970();
  v3[2] = v61 + 1;
  v64 = &v3[2 * v61];
  v64[4] = v60;
  v64[5] = v63;
  v65 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  type metadata accessor for ClinicalSharingOnboardingSelectWhatToShareDataSource();
  swift_allocObject();
  v66 = v105;
  v102 = v105;
  sub_1D112FA6C(v65, v66, 1, 0, 0);
  (*(v92 + 104))(v94, v59, v93);
  sub_1D134FAD8(0, &qword_1EC60FC88, type metadata accessor for ClinicalSharingOnboardingSelectWhatToShareDataSource, MEMORY[0x1E69A3738], MEMORY[0x1E69A3608]);
  swift_allocObject();

  v67 = sub_1D138E17C();
  *(v103 + qword_1EC60FB48) = v67;
  v69 = v3[2];
  v68 = v3[3];
  v70 = v69 + 1;

  if (v69 >= v68 >> 1)
  {
    v3 = sub_1D10F8F64((v68 > 1), v69 + 1, 1, v3);
  }

  v71 = sub_1D134FB44();
  v72 = 0;
  v3[2] = v70;
  v13 = (v3 + 4);
  v73 = &v3[2 * v69 + 4];
  *v73 = v67;
  v73[1] = v71;
  v74 = MEMORY[0x1E69E7CC0];
LABEL_13:
  v75 = &v13[16 * v72];
  while (v70 != v72)
  {
    if (v72 >= v3[2])
    {
      __break(1u);
      goto LABEL_24;
    }

    ++v72;
    v76 = v75 + 2;
    v77 = *v75;
    v75 += 2;
    if (v77)
    {
      v11 = *(v76 - 1);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v106[0] = v74;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v74 = sub_1D10F776C(0, v74[2] + 1, 1, v74);
        v106[0] = v74;
      }

      v80 = v74[2];
      v79 = v74[3];
      if (v80 >= v79 >> 1)
      {
        v74 = sub_1D10F776C((v79 > 1), v80 + 1, 1, v74);
        v106[0] = v74;
      }

      ObjectType = swift_getObjectType();
      sub_1D11A5FC0(v80, v77, v106, ObjectType, v11);
      goto LABEL_13;
    }
  }

  v82 = sub_1D138E88C();

  v83 = v102;
  sub_1D13490BC(v102);
  v84 = qword_1EC60FB60;
  [*(v82 + qword_1EC60FB60) setDelegate_];
  v85 = *(v82 + v84);
  [v85 resume];

  return v82;
}

uint64_t sub_1D1348C24()
{
  v0 = sub_1D138E6BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138E60C();
  v4 = sub_1D138E6AC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

void sub_1D1348CF8()
{

  v1 = *(v0 + qword_1EC60FB60);
}

uint64_t sub_1D1348DA8()
{
  v1 = qword_1EC60FB60;
  [*(v0 + qword_1EC60FB60) invalidate];
  [*(v0 + v1) setDelegate_];
  v2 = sub_1D138E87C();

  return v2;
}

uint64_t sub_1D1348E90()
{
  sub_1D1348DA8();

  return swift_deallocClassInstance();
}

unint64_t sub_1D1348EC0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D138E6BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SharingDataSource(0);
  v8 = sub_1D138E22C();
  result = sub_1D138E80C();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result >= *(v8 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v17[3] = a1;
  v10 = v8 + 16 * result;
  v12 = *(v10 + 32);
  v11 = *(v10 + 40);

  v14 = *(v2 + qword_1EC60FB58);
  v17[0] = v12;
  v17[1] = v11;
  MEMORY[0x1EEE9AC00](v13);
  v17[-2] = v17;

  v15 = sub_1D10F1D44(sub_1D10EDCD0, &v17[-4], v14);

  if (v15)
  {
    sub_1D138E65C();
  }

  else
  {
    sub_1D138E60C();
  }

  sub_1D138E7EC();
  v16 = sub_1D138E6AC();
  swift_unknownObjectRelease();
  (*(v5 + 8))(v7, v4);
  return v16;
}

uint64_t sub_1D13490BC(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69A35F8];
  sub_1D134FAD8(0, &qword_1EC60FC50, MEMORY[0x1E69A35A8], MEMORY[0x1E69A35A0], MEMORY[0x1E69A35F8]);
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v59 - v6;
  sub_1D134FAD8(0, &qword_1EC60FC58, type metadata accessor for ClinicalSharingOnboardingSelectWhatToShareDataSource, MEMORY[0x1E69A3738], v4);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v59 - v11;
  v12 = sub_1D138FF3C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v2 + qword_1EC60FB20);
  *(v2 + qword_1EC60FB20) = a1;
  v17 = a1;

  v18 = v13;
  v19 = v17;
  v20 = sub_1D1349924(v17);
  v70 = sub_1D106F934(0, &qword_1EE06B760);
  *v15 = sub_1D1390A7C();
  v21 = *(v18 + 104);
  v68 = *MEMORY[0x1E69E8020];
  v69 = v18 + 104;
  v67 = v21;
  v21(v15);
  LOBYTE(v17) = sub_1D138FF5C();
  v23 = *(v18 + 8);
  v22 = v18 + 8;
  v66 = v23;
  result = v23(v15, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v61 = v9;
  v62 = v7;

  sub_1D138DEDC();

  sub_1D110A5C8(v20);

  sub_1D138E5AC();

  v25 = sub_1D134A2B8(v19);
  *v15 = sub_1D1390A7C();
  v67(v15, v68, v12);
  v26 = sub_1D138FF5C();
  result = v66(v15, v12);
  if ((v26 & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v71 = qword_1EC60FB40;

  sub_1D110A5C8(v25);

  sub_1D138E5AC();

  v60 = v12;
  v27 = v19;
  v28 = [v19 clinicalSharingStatus];
  v29 = [v28 userStatus];

  v30 = *(v10 + 104);
  v31 = *MEMORY[0x1E69A35F0];
  v59 = v22;
  v32 = *MEMORY[0x1E69A35E8];
  if (v29 == 2)
  {
    v33 = v31;
  }

  else
  {
    v33 = v32;
  }

  v34 = v64;
  v30(v63, v33, v61);
  sub_1D138E15C();

  if ([v27 isSharingToProvider])
  {
    v35 = v31;
  }

  else
  {
    v35 = v32;
  }

  (*(v34 + 104))(v62, v35, v65);
  sub_1D138E15C();

  v36 = sub_1D134A798(v27);
  *v15 = sub_1D1390A7C();
  v37 = v60;
  v67(v15, v68, v60);
  v38 = sub_1D138FF5C();
  result = v66(v15, v37);
  if ((v38 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_1D138DEDC();

  sub_1D110A5C8(v36);

  sub_1D138E5AC();

  sub_1D134FAD8(0, &qword_1EC60FC60, MEMORY[0x1E69A35A8], MEMORY[0x1E69A35A0], MEMORY[0x1E69A3608]);
  sub_1D134F970();

  v39 = sub_1D138E22C();

  v40 = *(v39 + 16);
  v41 = MEMORY[0x1E69E7CC0];
  if (v40)
  {
    v72 = MEMORY[0x1E69E7CC0];
    sub_1D10FDBA4(0, v40, 0);
    v42 = v72;
    v70 = v39;
    v43 = v39 + 40;
    do
    {

      sub_1D138E13C();

      v44 = sub_1D138E84C();
      v46 = v45;

      v72 = v42;
      v48 = *(v42 + 16);
      v47 = *(v42 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1D10FDBA4((v47 > 1), v48 + 1, 1);
        v42 = v72;
      }

      *(v42 + 16) = v48 + 1;
      v49 = v42 + 16 * v48;
      *(v49 + 32) = v44;
      *(v49 + 40) = v46;
      v43 += 16;
      --v40;
    }

    while (v40);

    v41 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v42 = MEMORY[0x1E69E7CC0];
  }

  sub_1D138E5BC();

  v50 = sub_1D138E22C();

  v51 = *(v50 + 16);
  if (v51)
  {
    v72 = v41;
    sub_1D10FDBA4(0, v51, 0);
    v41 = v72;
    v70 = v50;
    v52 = v50 + 40;
    do
    {

      sub_1D138E53C();

      v53 = sub_1D138E84C();
      v55 = v54;

      v72 = v41;
      v57 = *(v41 + 16);
      v56 = *(v41 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_1D10FDBA4((v56 > 1), v57 + 1, 1);
        v41 = v72;
      }

      *(v41 + 16) = v57 + 1;
      v58 = v41 + 16 * v57;
      *(v58 + 32) = v53;
      *(v58 + 40) = v55;
      v52 += 16;
      --v51;
    }

    while (v51);
  }

  v72 = v42;
  sub_1D1121FC4(v41);
  *(v2 + qword_1EC60FB58) = v72;
}

void *sub_1D1349924(void *a1)
{
  v2 = [a1 clinicalSharingStatus];
  v3 = [v2 userStatus];

  if (v3 != 2)
  {
    v4 = [a1 clinicalSharingStatus];
    v5 = [v4 userStatus];

    if (v5 != 4)
    {
      v6 = [a1 clinicalSharingStatus];
      v7 = [v6 userStatus];

      if (v7 != 5)
      {
        return MEMORY[0x1E69E7CC0];
      }
    }
  }

  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v78 = qword_1EE069F98;
  v8 = sub_1D138D1CC();
  v10 = v9;
  v83 = a1;
  v11 = [a1 displayableLastSharedToProviderDate];
  v12 = sub_1D139016C();
  v14 = v13;

  sub_1D1086E1C();
  v81 = v15;
  v16 = swift_allocObject();
  v79 = xmmword_1D139E710;
  *(v16 + 16) = xmmword_1D139E710;
  v80 = @"UIA.Health.Sharing";
  *(v16 + 32) = sub_1D139016C();
  *(v16 + 40) = v17;
  *(v16 + 48) = 0x6F6C70557473614CLL;
  *(v16 + 56) = 0xEA00000000006461;
  v18 = sub_1D139044C();

  v19 = HKUIJoinStringsForAutomationIdentifier();

  if (v19)
  {
    v20 = sub_1D139016C();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = type metadata accessor for TitleSubtitleDetailItem(0);
  v24 = swift_allocObject();
  sub_1D138D5DC();
  v24[2] = v8;
  v24[3] = v10;
  v24[4] = v12;
  v24[5] = v14;
  v24[6] = 0;
  v25 = MEMORY[0x1E69E7CC0];
  v24[7] = MEMORY[0x1E69E7CC0];
  v24[8] = v20;
  v24[9] = v22;

  v26 = sub_1D10F857C(0, 1, 1, v25);
  v28 = v26[2];
  v27 = v26[3];
  if (v28 >= v27 >> 1)
  {
    v26 = sub_1D10F857C((v27 > 1), v28 + 1, 1, v26);
  }

  v88 = v23;
  v29 = sub_1D134FA90(&qword_1EC60A700, type metadata accessor for TitleSubtitleDetailItem);
  v89 = v29;
  *&v87 = v24;
  v26[2] = v28 + 1;
  sub_1D102CC18(&v87, &v26[5 * v28 + 4]);
  v77 = qword_1EC60FB68;
  if (*(v82 + qword_1EC60FB68) == 1)
  {
    v30 = [v83 clinicalSharingStatus];
    [v30 userStatus];

    v31 = sub_1D138D1CC();
    v33 = v32;
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v34 = sub_1D138D1CC();
    v36 = v35;
    v37 = swift_allocObject();
    *(v37 + 16) = v79;
    *(v37 + 32) = sub_1D139016C();
    *(v37 + 40) = v38;
    *(v37 + 48) = 0x737574617453;
    *(v37 + 56) = 0xE600000000000000;
    v39 = sub_1D139044C();

    v40 = HKUIJoinStringsForAutomationIdentifier();

    if (v40)
    {
      v41 = sub_1D139016C();
      v43 = v42;
    }

    else
    {
      v41 = 0;
      v43 = 0;
    }

    v56 = type metadata accessor for TitleSubtitleDetailItemWithSpinner(0);
    v57 = swift_allocObject();
    sub_1D138D5DC();
    v57[2] = v34;
    v57[3] = v36;
    v57[4] = v31;
    v57[5] = v33;
    v57[6] = v41;
    v57[7] = v43;
    v85 = v56;
    v86 = sub_1D134FA90(&qword_1EC60B260, type metadata accessor for TitleSubtitleDetailItemWithSpinner);
    *&v84 = v57;
  }

  else
  {
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v78 = sub_1D138D1CC();
    v45 = v44;
    v46 = sub_1D1170160();
    v48 = v47;
    v49 = swift_allocObject();
    *(v49 + 16) = v79;
    *(v49 + 32) = sub_1D139016C();
    *(v49 + 40) = v50;
    *(v49 + 48) = 0x737574617453;
    *(v49 + 56) = 0xE600000000000000;
    v51 = sub_1D139044C();

    v52 = HKUIJoinStringsForAutomationIdentifier();

    if (v52)
    {
      v53 = sub_1D139016C();
      v55 = v54;
    }

    else
    {
      v53 = 0;
      v55 = 0;
    }

    v58 = swift_allocObject();
    sub_1D138D5DC();
    v58[2] = v78;
    v58[3] = v45;
    v58[4] = v46;
    v58[5] = v48;
    v58[6] = 0;
    v58[7] = MEMORY[0x1E69E7CC0];
    v58[8] = v53;
    v58[9] = v55;
    v85 = v23;
    v86 = v29;
    *&v84 = v58;
  }

  sub_1D102CC18(&v84, &v87);
  sub_1D1072E70(&v87, &v84);
  v90 = v26;
  v60 = v26[2];
  v59 = v26[3];
  if (v60 >= v59 >> 1)
  {
    v26 = sub_1D10F857C((v59 > 1), v60 + 1, 1, v26);
    v90 = v26;
  }

  v61 = v85;
  v62 = v86;
  v63 = __swift_mutable_project_boxed_opaque_existential_1(&v84, v85);
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v77 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v66 + 16))(v65);
  sub_1D125DA54(v60, v65, &v90, v61, v62);
  __swift_destroy_boxed_opaque_existential_1Tm(&v84);
  v67 = v83;
  if ([v83 state] == 1 && objc_msgSend(v67, sel_isSharingToProvider) && (v68 = objc_msgSend(v67, sel_clinicalSharingStatus), v69 = objc_msgSend(v68, sel_multiDeviceStatus), v68, v69 != 2))
  {
    v71 = *(v82 + v77);

    v72 = sub_1D138E0FC();

    v73 = type metadata accessor for UploadNewDataItem();
    v74 = swift_allocObject();
    *(v74 + 16) = 0xD000000000000011;
    *(v74 + 24) = 0x80000001D13CD7E0;
    *(v74 + 32) = v71;
    *(v74 + 40) = v72;
    v76 = v26[2];
    v75 = v26[3];
    if (v76 >= v75 >> 1)
    {
      v26 = sub_1D10F857C((v75 > 1), v76 + 1, 1, v26);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v87);
    v85 = v73;
    v86 = sub_1D134FA90(&qword_1EC60FC48, type metadata accessor for UploadNewDataItem);
    *&v84 = v74;
    v26[2] = v76 + 1;
    sub_1D102CC18(&v84, &v26[5 * v76 + 4]);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v87);
  }

  return v26;
}

uint64_t sub_1D134A2B8(void *a1)
{
  if ([a1 isSharingToProvider] && (v3 = objc_msgSend(a1, sel_clinicalSharingStatus), v4 = objc_msgSend(v3, sel_multiDeviceStatus), v3, v4 == 4))
  {
    sub_1D134E9C4(a1, *(v1 + qword_1EC60FB28), v39);
    sub_1D134CD1C(0, &qword_1EC60ABA8, &qword_1EC60A3D0, MEMORY[0x1E69A3348], MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D139E700;
    *(v5 + 56) = &type metadata for ClinicalSharingPausedItem;
    *(v5 + 64) = sub_1D134F688();
    v6 = swift_allocObject();
    result = v5;
    *(v5 + 32) = v6;
    v8 = v39[5];
    *(v6 + 80) = v39[4];
    *(v6 + 96) = v8;
    *(v6 + 112) = v40;
    v9 = v39[1];
    *(v6 + 16) = v39[0];
    *(v6 + 32) = v9;
    v10 = v39[3];
    *(v6 + 48) = v39[2];
    *(v6 + 64) = v10;
  }

  else if ([a1 isSharingToProvider] && (v11 = objc_msgSend(a1, sel_clinicalSharingStatus), v12 = objc_msgSend(v11, sel_multiDeviceStatus), v11, v12 == 2))
  {
    v13 = [a1 clinicalSharingStatus];
    v14 = [v13 primaryDeviceName];

    result = MEMORY[0x1E69E7CC0];
    if (v14)
    {
      v38 = v1;
      v15 = sub_1D139016C();
      v17 = v16;

      if (qword_1EE069F90 != -1)
      {
        swift_once();
      }

      sub_1D138D1CC();
      v18 = MEMORY[0x1E69E6F90];
      sub_1D134CD1C(0, &qword_1EE06B080, &qword_1EE06B070, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1D139E710;
      v20 = [a1 title];
      v21 = sub_1D139016C();
      v23 = v22;

      v24 = MEMORY[0x1E69E6158];
      *(v19 + 56) = MEMORY[0x1E69E6158];
      v25 = sub_1D1089930();
      *(v19 + 32) = v21;
      *(v19 + 40) = v23;
      *(v19 + 96) = v24;
      *(v19 + 104) = v25;
      *(v19 + 64) = v25;
      *(v19 + 72) = v15;
      *(v19 + 80) = v17;
      v26 = sub_1D13901AC();
      v28 = v27;

      v29 = type metadata accessor for TextItem();
      v30 = swift_allocObject();
      type metadata accessor for TextItemCell();
      sub_1D134FA90(&unk_1EC60F720, type metadata accessor for TextItemCell);
      v30[10] = sub_1D138DECC();
      v30[11] = v31;
      v30[2] = v26;
      v30[3] = v28;
      v30[4] = 0;
      v30[5] = 0;
      v30[6] = 0;
      v30[7] = MEMORY[0x1E69E7CC0];
      v30[8] = 0;
      v30[9] = 0;
      v32 = *(v38 + qword_1EC60FB28);
      PrimaryDeviceItem = type metadata accessor for MakePrimaryDeviceItem(0);
      swift_allocObject();

      v34 = a1;
      v35 = sub_1D134EDC0(v34, v32);

      sub_1D134CD1C(0, &qword_1EC60ABA8, &qword_1EC60A3D0, MEMORY[0x1E69A3348], v18);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1D139E710;
      *(v36 + 56) = v29;
      *(v36 + 64) = sub_1D134FA90(&qword_1EC60FC28, type metadata accessor for TextItem);
      *(v36 + 32) = v30;
      *(v36 + 96) = PrimaryDeviceItem;
      v37 = sub_1D134FA90(&qword_1EC60FC30, type metadata accessor for MakePrimaryDeviceItem);
      result = v36;
      *(v36 + 104) = v37;
      *(v36 + 72) = v35;
    }
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1D134A798(void *a1)
{
  v3 = sub_1D138D5EC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isSharingToProvider])
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = [a1 clinicalSharingStatus];
  v8 = [v7 userStatus];

  if (v8 == 4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = [a1 clinicalSharingStatus];
  v10 = [v9 userStatus];

  if (v10 == 5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D134F014(v28);
  v12 = *(v1 + qword_1EC60FB28);
  started = type metadata accessor for StartSharingItem(0);
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC15HealthRecordsUI16StartSharingItem_account) = a1;
  v15 = a1;
  v27 = v12;

  v16 = [v15 identifier];
  sub_1D138D5CC();

  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v17 = sub_1D138D1CC();
  v19 = v18;
  v20 = [objc_opt_self() linkColor];
  sub_1D106F934(0, &qword_1EC60E670);
  v21 = sub_1D1390C6C();

  *(v14 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  (*(v4 + 32))(v14 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_accountID, v6, v3);
  *(v14 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_manager) = v27;
  v22 = (v14 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_labelText);
  *v22 = v17;
  v22[1] = v19;
  *(v14 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_labelColor) = v20;
  *(v14 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_labelFont) = v21;
  *(v14 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_shouldAlignWithImageInsetText) = 1;
  sub_1D134CD1C(0, &qword_1EC60ABA8, &qword_1EC60A3D0, MEMORY[0x1E69A3348], MEMORY[0x1E69E6F90]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D139E710;
  *(v23 + 56) = &type metadata for TopAlignedIconListItem;
  *(v23 + 64) = sub_1D12CA280();
  v24 = swift_allocObject();
  *(v23 + 32) = v24;
  v25 = v28[1];
  *(v24 + 16) = v28[0];
  *(v24 + 32) = v25;
  *(v24 + 48) = v28[2];
  *(v24 + 64) = v29;
  *(v23 + 96) = started;
  v26 = sub_1D134FA90(&qword_1EC60FC20, type metadata accessor for StartSharingItem);
  result = v23;
  *(v23 + 104) = v26;
  *(v23 + 72) = v14;
  return result;
}

uint64_t sub_1D134AC08(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;

  sub_1D134F1D4(v6);
}

void sub_1D134AC70(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;

  v6 = a4;
  sub_1D134F394();
}

void sub_1D134AD24(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = [objc_allocWithZone(WDClinicalOnboardingOAuthNavigationViewController) initWithContext:8 onboardingOptions:1 sourceIdentifier:0 profile:*(*(v4 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_manager) + 16) existingAccount:*(v4 + OBJC_IVAR____TtC15HealthRecordsUI16StartSharingItem_account)];
  [a2 showViewController:v5 sender:v4];
}

uint64_t sub_1D134ADF0(void *a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_accountID;
  v4 = sub_1D138D5EC();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  sub_1D102CC38(v1 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_delegate);

  return swift_deallocClassInstance();
}

void sub_1D134AF38(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *v3;
  sub_1D134E174(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v39 - v8;
  swift_getObjectType();
  v10 = swift_conformsToProtocol2();
  if (v10)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = v10;
    v13 = a2;
  }

  else
  {
    v12 = 0;
  }

  *(v3 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_delegate + 8) = v12;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v14 = *(v3 + OBJC_IVAR____TtC15HealthRecordsUI15StopSharingItem_account);
  if ([v14 isSharingToProvider] && (v15 = objc_msgSend(v14, sel_clinicalSharingStatus), v16 = objc_msgSend(v15, sel_multiDeviceStatus), v15, v16 == 2) && objc_msgSend(v14, sel_needsRelogin))
  {
    v17 = sub_1D13905DC();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    sub_1D13905AC();
    v18 = a2;

    v19 = sub_1D139059C();
    v20 = swift_allocObject();
    v21 = MEMORY[0x1E69E85E0];
    v20[2] = v19;
    v20[3] = v21;
    v20[4] = v3;
    v20[5] = v18;
    sub_1D107877C(0, 0, v9, &unk_1D13B2070, v20);
  }

  else
  {
    v40 = a1;
    v42 = v6;
    if (qword_1EE069F90 != -1)
    {
      swift_once();
    }

    v41 = qword_1EE069F98;
    sub_1D138D1CC();
    sub_1D134CD1C(0, &qword_1EE06B080, &qword_1EE06B070, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D139E700;
    v23 = [v14 title];
    v24 = sub_1D139016C();
    v26 = v25;

    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1D1089930();
    *(v22 + 32) = v24;
    *(v22 + 40) = v26;
    sub_1D13901AC();

    v27 = sub_1D139012C();

    v28 = [objc_opt_self() alertControllerWithTitle:0 message:v27 preferredStyle:0];

    v29 = [v28 popoverPresentationController];
    if (v29)
    {
      v30 = v29;
      [v29 setSourceItem_];
    }

    sub_1D138D1CC();
    v31 = swift_allocObject();
    v31[2] = v3;
    v31[3] = a2;
    v31[4] = v42;
    v32 = a2;

    v33 = sub_1D139012C();

    aBlock[4] = sub_1D134CD84;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D10CB11C;
    aBlock[3] = &block_descriptor_79;
    v34 = _Block_copy(aBlock);

    v35 = objc_opt_self();
    v36 = [v35 actionWithTitle:v33 style:2 handler:v34];
    _Block_release(v34);

    [v28 addAction_];
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v37 = sub_1D139012C();

    v38 = [v35 actionWithTitle:v37 style:1 handler:0];

    [v28 addAction_];
    [v32 presentViewController:v28 animated:1 completion:0];
  }
}

uint64_t sub_1D134B5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D13905AC();
  v5[4] = sub_1D139059C();
  v7 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D134B63C, v7, v6);
}

uint64_t sub_1D134B63C()
{
  v1 = v0[3];
  v2 = v0[2];

  sub_1D13181AC(*(v2 + OBJC_IVAR____TtC15HealthRecordsUI15StopSharingItem_account), v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1D134B6CC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a2;
  v7[4] = a4;
  v8 = a3;

  sub_1D135A834(sub_1D134E160, v7);
}

uint64_t sub_1D134B75C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v54 = a2;
  v7 = sub_1D138FECC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D138FF0C();
  v55 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D138F0BC();
  v56 = *(v14 - 8);
  v57 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  if (a1)
  {
    v52 = v11;
    v53 = v8;
    v20 = a1;
    sub_1D138F06C();
    v21 = a1;
    v22 = sub_1D138F0AC();
    v23 = sub_1D13907FC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v59 = v51;
      *v24 = 136446466;
      aBlock[0] = a4;
      swift_getMetatypeMetadata();
      v25 = sub_1D13901EC();
      v27 = sub_1D11DF718(v25, v26, &v59);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2082;
      aBlock[0] = a1;
      v28 = a1;
      sub_1D1080EA4(0, &qword_1EE06B690);
      sub_1D13916AC();
      v29 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_1D139101C();
      swift_unknownObjectRelease();
      v30 = sub_1D13901EC();
      v32 = sub_1D11DF718(v30, v31, &v59);

      *(v24 + 14) = v32;
      _os_log_impl(&dword_1D101F000, v22, v23, "[%{public}s]: failed to stop sharing with error: %{public}s", v24, 0x16u);
      v33 = v51;
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v33, -1, -1);
      MEMORY[0x1D38882F0](v24, -1, -1);
    }

    (*(v56 + 8))(v19, v57);
    sub_1D106F934(0, &qword_1EE06B760);
    v34 = sub_1D1390A7C();
    v35 = swift_allocObject();
    v36 = v54;
    *(v35 + 16) = a1;
    *(v35 + 24) = v36;
    aBlock[4] = sub_1D134E16C;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D10CBD3C;
    aBlock[3] = &block_descriptor_44_1;
    v37 = _Block_copy(aBlock);
    v38 = a1;
    v39 = v36;

    sub_1D138FEEC();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D134FA90(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
    sub_1D134E174(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D1080CD4();
    sub_1D139103C();
    MEMORY[0x1D3886400](0, v13, v10, v37);
    _Block_release(v37);

    (*(v53 + 8))(v10, v7);
    return (*(v55 + 8))(v13, v52);
  }

  else
  {
    v41 = a3 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v42 = *(v41 + 8);
      ObjectType = swift_getObjectType();
      (*(v42 + 16))(ObjectType, v42);
      swift_unknownObjectRelease();
    }

    sub_1D138F06C();
    v44 = sub_1D138F0AC();
    v45 = sub_1D13907DC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v59 = v47;
      *v46 = 136446210;
      aBlock[0] = a4;
      swift_getMetatypeMetadata();
      v48 = sub_1D13901EC();
      v50 = sub_1D11DF718(v48, v49, &v59);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_1D101F000, v44, v45, "[%{public}s]: successfully stopped sharing", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x1D38882F0](v47, -1, -1);
      MEMORY[0x1D38882F0](v46, -1, -1);
    }

    return (*(v56 + 8))(v16, v57);
  }
}

void sub_1D134BDF8(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v4 = sub_1D139012C();

  v5 = sub_1D138D2AC();
  v6 = [v3 basicAlertControllerWithTitle:0 message:v4 internalError:{v5, 0xE000000000000000}];

  [a2 presentViewController:v6 animated:1 completion:0];
}

uint64_t sub_1D134BF58()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_accountID;
  v2 = sub_1D138D5EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1D102CC38(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_delegate);

  return swift_deallocClassInstance();
}

uint64_t sub_1D134C0C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_1D138D5EC();
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D134E174(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - v10;
  v12 = a2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 8);
    swift_getObjectType();
    if (qword_1EE069F90 != -1)
    {
      swift_once();
    }

    v14 = sub_1D138D1CC();
    (*(v13 + 24))(v14);

    swift_unknownObjectRelease();
  }

  v29 = *(a2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_manager);
  v15 = OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_accountID;
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  v17 = sub_1D13905DC();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = v30;
  v19 = v31;
  (*(v31 + 16))(v30, a2 + v15, v7);
  v20 = (*(v19 + 80) + 40) & ~*(v19 + 80);
  v21 = (v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = a3;
  v28 = v11;
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = v29;
  (*(v19 + 32))(&v22[v20], v18, v7);
  *&v22[v21] = 3;
  v23 = &v22[(v21 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v23 = sub_1D134E5F0;
  v23[1] = v16;

  v24 = v27;

  sub_1D107877C(0, 0, v28, &unk_1D13B2078, v22);
}

uint64_t sub_1D134C438(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_1D138FECC();
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D138FF0C();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106F934(0, &qword_1EE06B760);
  v14 = sub_1D1390A7C();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a1;
  v15[4] = a3;
  v15[5] = a4;
  aBlock[4] = sub_1D134E750;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_63;
  v16 = _Block_copy(aBlock);

  v17 = a1;
  v18 = a3;

  sub_1D138FEEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D134FA90(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  sub_1D134E174(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  sub_1D139103C();
  MEMORY[0x1D3886400](0, v13, v10, v16);
  _Block_release(v16);

  (*(v21 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v20);
}

uint64_t sub_1D134C744(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a4;
    v12 = *(v9 + 32);
    v13 = a3;
    v12(a2, sub_1D134E75C, v11, ObjectType, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D134C83C(void *a1, void *a2, void *a3)
{
  v6 = sub_1D138F0BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  if (a1)
  {
    sub_1D138F06C();
    v13 = a1;
    v14 = sub_1D138F0AC();
    v15 = sub_1D13907FC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v38 = v6;
      v39 = a3;
      v18 = v17;
      v40 = v17;
      *v16 = 136446466;
      swift_getMetatypeMetadata();
      v19 = sub_1D13901EC();
      v21 = sub_1D11DF718(v19, v20, &v40);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2082;
      v39 = a1;
      v22 = a1;
      sub_1D134CD1C(0, &qword_1EE06B078, &qword_1EE06B690, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
      sub_1D13916AC();
      v23 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_1D139101C();
      swift_unknownObjectRelease();
      v24 = sub_1D13901EC();
      v26 = sub_1D11DF718(v24, v25, &v40);

      *(v16 + 14) = v26;
      _os_log_impl(&dword_1D101F000, v14, v15, "[%{public}s]: failed to change primary device with error: %{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v18, -1, -1);
      MEMORY[0x1D38882F0](v16, -1, -1);

      (*(v7 + 8))(v9, v38);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    v34 = objc_opt_self();
    if (qword_1EE069F90 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v35 = sub_1D139012C();

    v36 = sub_1D138D2AC();
    v37 = [v34 basicAlertControllerWithTitle:0 message:v35 internalError:v36];

    [a2 presentViewController:v37 animated:1 completion:0];
  }

  else
  {
    sub_1D138F06C();
    v27 = sub_1D138F0AC();
    v28 = sub_1D13907DC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40 = v30;
      *v29 = 136446210;
      v39 = a3;
      swift_getMetatypeMetadata();
      v31 = sub_1D13901EC();
      v33 = sub_1D11DF718(v31, v32, &v40);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1D101F000, v27, v28, "[%{public}s]: successfully changed primary device", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1D38882F0](v30, -1, -1);
      MEMORY[0x1D38882F0](v29, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
  }
}

void sub_1D134CD1C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D1080EA4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t block_copy_helper_80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D134CDA8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    swift_beginAccess();
    v4 = *(a3 + 96);
    v8[4] = *(a3 + 80);
    v8[5] = v4;
    v9 = *(a3 + 112);
    v5 = *(a3 + 32);
    v8[0] = *(a3 + 16);
    v8[1] = v5;
    v6 = *(a3 + 64);
    v8[2] = *(a3 + 48);
    v8[3] = v6;
    sub_1D134F754(v8, &v7);
    sub_1D134CE34();
    return sub_1D134F78C(v8);
  }

  return result;
}

uint64_t sub_1D134CE34()
{
  v0 = sub_1D138F0BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClinicalAccountDetailsViewController();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    swift_unknownObjectRetain();
    sub_1D134CFCC(v5);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1D138F06C();
    v7 = sub_1D138F0AC();
    v8 = sub_1D13907FC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D101F000, v7, v8, "Clincal SharingPausedItemDelegate must be a view controller", v9, 2u);
      MEMORY[0x1D38882F0](v9, -1, -1);
    }

    return (*(v1 + 8))(v3, v0);
  }
}

void sub_1D134CFCC(void *a1)
{
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D134E174(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v40 - v7;
  v9 = sub_1D138D5EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v40 - v13;
  swift_getObjectType();
  v14 = swift_conformsToProtocol2();
  if (v14 && a1)
  {
    v15 = v14;
    v42 = v10;
    v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = v9;
    swift_getObjectType();
    v16 = qword_1EE069F90;
    v17 = a1;
    if (v16 != -1)
    {
      swift_once();
    }

    v18 = sub_1D138D1CC();
    (*(v15 + 24))(v18);

    v19 = *(v45 + 96);
    v20 = [*(v45 + 88) identifier];
    v21 = v46;
    sub_1D138D5CC();

    v22 = swift_allocObject();
    *(v22 + 2) = v17;
    *(v22 + 3) = v15;
    *(v22 + 4) = v17;
    v23 = sub_1D13905DC();
    v24 = *(*(v23 - 8) + 56);
    v41 = v8;
    v24(v8, 1, 1, v23);
    v26 = v42;
    v25 = v43;
    v27 = v44;
    (*(v42 + 16))(v43, v21, v44);
    v28 = (*(v26 + 80) + 40) & ~*(v26 + 80);
    v29 = (v11 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    *(v30 + 2) = 0;
    *(v30 + 3) = 0;
    *(v30 + 4) = v19;
    (*(v26 + 32))(&v30[v28], v25, v27);
    *&v30[v29] = 3;
    v31 = &v30[(v29 + 15) & 0xFFFFFFFFFFFFFFF8];
    *v31 = sub_1D134F7C4;
    v31[1] = v22;
    v32 = v17;

    sub_1D107877C(0, 0, v41, &unk_1D13B20A0, v30);

    (*(v26 + 8))(v46, v27);
  }

  else
  {
    sub_1D138F06C();
    v33 = sub_1D138F0AC();
    v34 = sub_1D139080C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v47 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_1D11DF718(0xD000000000000019, 0x80000001D13B2060, &v47);
      _os_log_impl(&dword_1D101F000, v33, v34, "[%s] Parent view controller did not conform to AccountActionDelegate, cannot resume sharing.", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x1D38882F0](v36, -1, -1);
      MEMORY[0x1D38882F0](v35, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v37 = objc_opt_self();
    if (qword_1EE069F90 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v38 = sub_1D139012C();

    v39 = [v37 basicAlertControllerWithTitle:0 message:v38 internalError:0];

    [a1 presentViewController:v39 animated:1 completion:0];
  }
}

uint64_t sub_1D134D60C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1D138FECC();
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D138FF0C();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106F934(0, &qword_1EE06B760);
  v14 = sub_1D1390A7C();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a1;
  v15[5] = a4;
  aBlock[4] = sub_1D134F914;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_92;
  v16 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v17 = a1;
  v18 = a4;

  sub_1D138FEEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D134FA90(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  sub_1D134E174(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  sub_1D139103C();
  MEMORY[0x1D3886400](0, v13, v10, v16);
  _Block_release(v16);

  (*(v21 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v20);
}

uint64_t sub_1D134D918(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = *(a2 + 32);
  v10 = a4;
  v9(a3, sub_1D134F920, v8, ObjectType, a2);
}

void sub_1D134D9D4(ValueMetadata *a1, void *a2)
{
  v4 = sub_1D138F0BC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - v9;
  if (a1)
  {
    sub_1D138F06C();
    v11 = a1;
    v12 = sub_1D138F0AC();
    v13 = sub_1D13907FC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v37 = v15;
      *v14 = 136446466;
      v36 = &type metadata for ClinicalSharingPausedItem;
      sub_1D134F928();
      v16 = sub_1D13901EC();
      v35 = v4;
      v18 = sub_1D11DF718(v16, v17, &v37);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      v36 = a1;
      v19 = a1;
      sub_1D134CD1C(0, &qword_1EE06B078, &qword_1EE06B690, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
      sub_1D13916AC();
      v20 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_1D139101C();
      swift_unknownObjectRelease();
      v21 = sub_1D13901EC();
      v23 = sub_1D11DF718(v21, v22, &v37);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_1D101F000, v12, v13, "[%{public}s]: failed to update multi device status with error: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v15, -1, -1);
      MEMORY[0x1D38882F0](v14, -1, -1);

      (*(v5 + 8))(v8, v35);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v31 = objc_opt_self();
    if (qword_1EE069F90 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v32 = sub_1D139012C();

    v33 = sub_1D138D2AC();
    v34 = [v31 basicAlertControllerWithTitle:0 message:v32 internalError:v33];

    [a2 presentViewController:v34 animated:1 completion:0];
  }

  else
  {
    sub_1D138F06C();
    v24 = sub_1D138F0AC();
    v25 = sub_1D13907DC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v36 = v27;
      *v26 = 136446210;
      v37 = &type metadata for ClinicalSharingPausedItem;
      sub_1D134F928();
      v28 = sub_1D13901EC();
      v30 = sub_1D11DF718(v28, v29, &v36);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1D101F000, v24, v25, "[%{public}s]: successfully changed updated sharing status", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1D38882F0](v27, -1, -1);
      MEMORY[0x1D38882F0](v26, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
  }
}

uint64_t sub_1D134DEE8()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1D134DF18(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_1D134DF70(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t sub_1D134DFC8()
{
  v1 = *(v0 + 72);
  sub_1D102CE24(v1);
  return v1;
}

uint64_t sub_1D134DFFC(uint64_t a1, uint64_t a2)
{
  result = sub_1D102CC60(*(v2 + 72));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t sub_1D134E054(uint64_t a1)
{
  v2 = sub_1D134F688();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1D134E0A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D108077C;

  return sub_1D134B5A4(a1, v4, v5, v7, v6);
}

void sub_1D134E174(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D134E1D8(void *a1)
{
  v2 = v1;
  v4 = *v2;
  swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (v5)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = v5;
    v8 = a1;
  }

  else
  {
    v7 = 0;
  }

  *(v2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_delegate + 8) = v7;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v9 = sub_1D139012C();

  v10 = [objc_opt_self() alertControllerWithTitle:0 message:v9 preferredStyle:{1, 0xE000000000000000}];

  sub_1D138D1CC();
  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = a1;
  v11[4] = v4;
  v12 = a1;

  v13 = sub_1D139012C();

  aBlock[4] = sub_1D134E590;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CB11C;
  aBlock[3] = &block_descriptor_50;
  v14 = _Block_copy(aBlock);

  v15 = objc_opt_self();
  v16 = [v15 actionWithTitle:v13 style:2 handler:{v14, 0xE000000000000000}];
  _Block_release(v14);

  [v10 addAction_];
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v17 = sub_1D139012C();

  v18 = [v15 actionWithTitle:v17 style:1 handler:{0, 0xE000000000000000}];

  [v10 addAction_];
  [v12 presentViewController:v10 animated:1 completion:0];
}

uint64_t objectdestroyTm_13(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t sub_1D134E5FC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D138D5EC() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v7);
  v12 = v1[4];
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1D10819BC;

  return sub_1D1323894(a1, v9, v10, v12, v1 + v6, v11, v13, v14);
}

uint64_t sub_1D134E764(void *a1, uint64_t a2)
{
  v5 = sub_1D138D5EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC15HealthRecordsUI15StopSharingItem_account) = a1;
  v9 = [a1 identifier];
  sub_1D138D5CC();

  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v10 = sub_1D138D1CC();
  v12 = v11;
  v13 = [objc_opt_self() systemRedColor];
  v14 = [objc_opt_self() preferredFontForTextStyle_];
  *(v2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  (*(v6 + 32))(v2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_accountID, v8, v5);
  *(v2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_manager) = a2;
  v15 = (v2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_labelText);
  *v15 = v10;
  v15[1] = v12;
  *(v2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_labelColor) = v13;
  *(v2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_labelFont) = v14;
  *(v2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_shouldAlignWithImageInsetText) = 0;
  return v2;
}

__n128 sub_1D134E9C4@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a1;
  v38 = a2;
  v39 = a3;
  v3 = sub_1D138D5EC();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v6 = sub_1D138D1CC();
  v7 = MEMORY[0x1D3885BB0](v6);

  v8 = swift_allocObject();
  v9 = sub_1D138D1CC();
  v33 = v10;
  v34 = v9;
  v32 = sub_1D138D1CC();
  v12 = v11;
  sub_1D138E0AC();
  v31 = v7;
  v13 = sub_1D138DECC();
  v15 = v14;
  *&v59 = 0;
  *(&v59 + 1) = 0xE000000000000000;
  sub_1D13911EC();

  *&v59 = 0xD00000000000001ALL;
  *(&v59 + 1) = 0x80000001D13CD720;
  sub_1D138D5DC();
  sub_1D134FA90(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
  v16 = v36;
  v17 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v17);

  (*(v35 + 8))(v5, v16);

  *&v41 = v13;
  *(&v41 + 1) = v15;
  v42 = v59;
  *&v43 = v7;
  *(&v43 + 1) = v34;
  *&v44 = v33;
  *(&v44 + 1) = v32;
  v45 = v12;
  *&v46 = 0;
  *(&v46 + 1) = v37;
  v47 = v38;
  v48[0] = v13;
  v48[1] = v15;
  v49 = v59;
  v50 = v7;
  v51 = v34;
  v52 = v33;
  v53 = v32;
  v54 = v12;
  v55 = 0;
  v56 = 0;
  v57 = v37;
  v58 = v38;
  v18 = v37;

  sub_1D134F754(&v41, &v59);
  sub_1D134F78C(v48);
  v19 = v46;
  *(v8 + 80) = v45;
  *(v8 + 96) = v19;
  *(v8 + 112) = v47;
  v20 = v42;
  *(v8 + 16) = v41;
  *(v8 + 32) = v20;
  v21 = v44;
  *(v8 + 48) = v43;
  *(v8 + 64) = v21;
  swift_beginAccess();
  v22 = *(v8 + 88);
  *(v8 + 88) = sub_1D134F7BC;
  *(v8 + 96) = v8;

  sub_1D102CC60(v22);
  v23 = *(v8 + 96);
  v63 = *(v8 + 80);
  v64 = v23;
  v65 = *(v8 + 112);
  v24 = *(v8 + 32);
  v59 = *(v8 + 16);
  v60 = v24;
  v25 = *(v8 + 64);
  v61 = *(v8 + 48);
  v62 = v25;
  sub_1D134F754(&v59, &v40);

  v26 = v64;
  v27 = v39;
  *(v39 + 64) = v63;
  *(v27 + 80) = v26;
  *(v27 + 96) = v65;
  v28 = v60;
  *v27 = v59;
  *(v27 + 16) = v28;
  result = v62;
  *(v27 + 32) = v61;
  *(v27 + 48) = result;
  return result;
}

uint64_t sub_1D134EDC0(void *a1, uint64_t a2)
{
  v5 = sub_1D138D5EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 identifier];
  sub_1D138D5CC();

  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v10 = sub_1D138D1CC();
  v12 = v11;
  v13 = [objc_opt_self() linkColor];
  v14 = [objc_opt_self() preferredFontForTextStyle_];
  *(v2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  (*(v6 + 32))(v2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_accountID, v8, v5);
  *(v2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_manager) = a2;
  v15 = (v2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_labelText);
  *v15 = v10;
  v15[1] = v12;
  *(v2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_labelColor) = v13;
  *(v2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_labelFont) = v14;
  *(v2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_shouldAlignWithImageInsetText) = 0;
  return v2;
}

void sub_1D134F014(void *a1@<X8>)
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v2 = sub_1D138D1CC();
  v4 = v3;
  v5 = sub_1D138D1CC();
  v7 = v6;
  if (qword_1EE06A528 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE06B6C8;
  v9 = sub_1D139012C();
  v10 = [objc_opt_self() imageNamed:v9 inBundle:{v8, 0xE000000000000000}];

  *a1 = 0xD00000000000001BLL;
  a1[1] = 0x80000001D13CD5E0;
  a1[2] = v2;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v7;
  a1[6] = v10;
}

void sub_1D134F1D4(void *a1)
{
  v3 = sub_1D138D5EC();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 accountIdentifiers];
  sub_1D134FA90(&qword_1EE06B4F8, MEMORY[0x1E69695A8]);
  v9 = sub_1D13906BC();

  v10 = [*(v1 + qword_1EC60FB20) identifier];
  sub_1D138D5CC();

  LOBYTE(v10) = sub_1D134761C(v7, v9);

  (*(v4 + 8))(v7, v3);
  if (v10)
  {

    sub_1D138E0FC();

    sub_1D1130200(0);

    sub_1D1347AC4(1);
  }
}

void sub_1D134F394()
{
  v1 = sub_1D138FECC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D138FF0C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + qword_1EC60FB68);
  *(v0 + qword_1EC60FB68) = 0;
  if (v9 == 1)
  {
    sub_1D106F934(0, &qword_1EE06B760);
    v10 = sub_1D1390A7C();
    aBlock[4] = sub_1D134F680;
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D10CBD3C;
    aBlock[3] = &block_descriptor_69_0;
    v11 = _Block_copy(aBlock);

    sub_1D138FEEC();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D134FA90(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
    sub_1D134E174(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D1080CD4();
    sub_1D139103C();
    MEMORY[0x1D3886400](0, v8, v4, v11);
    _Block_release(v11);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }
}

unint64_t sub_1D134F688()
{
  result = qword_1EC60FC38;
  if (!qword_1EC60FC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FC38);
  }

  return result;
}

uint64_t objectdestroy_74Tm()
{

  if (*(v0 + 88))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t objectdestroy_55Tm()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t objectdestroy_33Tm(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 48, 7);
}

unint64_t sub_1D134F928()
{
  result = qword_1EC60FC40;
  if (!qword_1EC60FC40)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC60FC40);
  }

  return result;
}

unint64_t sub_1D134F970()
{
  result = qword_1EC60FC68;
  if (!qword_1EC60FC68)
  {
    sub_1D134FAD8(255, &qword_1EC60FC60, MEMORY[0x1E69A35A8], MEMORY[0x1E69A35A0], MEMORY[0x1E69A3608]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FC68);
  }

  return result;
}

unint64_t sub_1D134FA00()
{
  result = qword_1EC60FC70;
  if (!qword_1EC60FC70)
  {
    sub_1D134FAD8(255, &qword_1EC60FC78, MEMORY[0x1E69A37B8], MEMORY[0x1E69A3698], MEMORY[0x1E69A3570]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FC70);
  }

  return result;
}

uint64_t sub_1D134FA90(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D134FAD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D134FB44()
{
  result = qword_1EC60FC90;
  if (!qword_1EC60FC90)
  {
    sub_1D134FAD8(255, &qword_1EC60FC88, type metadata accessor for ClinicalSharingOnboardingSelectWhatToShareDataSource, MEMORY[0x1E69A3738], MEMORY[0x1E69A3608]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FC90);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI25SharingPausedItemDelegate_pSgIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1D134FC18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1D134FC60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D134FCCC()
{
  result = qword_1EC60FC98;
  if (!qword_1EC60FC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FC98);
  }

  return result;
}

uint64_t sub_1D134FD64()
{
  v1 = v0;
  v2 = MEMORY[0x1E695C060];
  sub_1D13505EC(0, &qword_1EE06A6C8, &qword_1EE06B600, &type metadata for HealthRecordsSupportedChange, MEMORY[0x1E695C060]);
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - v5;
  sub_1D13505EC(0, &qword_1EE06A6B8, &qword_1EE06B5D0, &type metadata for AccountStateChange, v2);
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  sub_1D1350654();
  v11 = *(v10 - 8);
  v34 = v10;
  v35 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v28 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D13507E8();
  v14 = *(v13 - 8);
  v36 = v13;
  v37 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v31 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v1 + 64) addAccountStateChangeListener_];
  [*(v1 + 48) addHealthRecordsSupportedChangeListener_];
  [*(v1 + 56) addIngestionStateListener_];
  [*(v1 + 72) registerAsConceptObserver:*(v1 + 104) onQueue:0];
  swift_beginAccess();
  v16 = MEMORY[0x1E695C070];
  sub_1D13505EC(0, &unk_1EE06B588, &qword_1EE06B5D0, &type metadata for AccountStateChange, MEMORY[0x1E695C070]);
  sub_1D138F78C();
  swift_endAccess();
  swift_beginAccess();
  sub_1D13505EC(0, &unk_1EE06B598, &qword_1EE06B600, &type metadata for HealthRecordsSupportedChange, v16);
  sub_1D138F78C();
  swift_endAccess();
  sub_1D1350784(&qword_1EE06A6C0, &qword_1EE06A6B8, &qword_1EE06B5D0, &type metadata for AccountStateChange);
  sub_1D1350784(&qword_1EE06A6D0, &qword_1EE06A6C8, &qword_1EE06B600, &type metadata for HealthRecordsSupportedChange);
  v17 = v28;
  v18 = v30;
  v19 = v32;
  sub_1D138F83C();
  (*(v33 + 8))(v6, v19);
  (*(v29 + 8))(v9, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1D1350938;
  *(v20 + 24) = v1;

  sub_1D138F61C();
  v21 = MEMORY[0x1E695BED0];
  sub_1D1350F14(0, &unk_1EE06A770, MEMORY[0x1E695BED0]);
  sub_1D13509AC(&qword_1EE06A7D0, sub_1D1350654);
  sub_1D13508F4(&qword_1EE06A780, &unk_1EE06A770, v21);
  v22 = v31;
  v23 = v34;
  sub_1D138F91C();

  (*(v35 + 8))(v17, v23);
  sub_1D13509AC(&qword_1EE06A7B0, sub_1D13507E8);

  v24 = v36;
  v25 = sub_1D138F90C();

  (*(v37 + 8))(v22, v24);
  *(v1 + 112) = v25;
}

uint64_t sub_1D1350358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D11A9E0C();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 64);
  *(swift_allocObject() + 16) = v9;
  v10 = MEMORY[0x1E695C028];
  sub_1D1350F14(0, &qword_1EE06A6F8, MEMORY[0x1E695C028]);
  sub_1D13508F4(&qword_1EE06A700, &qword_1EE06A6F8, v10);
  v11 = v9;
  sub_1D138F75C();
  sub_1D13509AC(&qword_1EE06A6E0, sub_1D11A9E0C);
  v12 = sub_1D138F80C();
  (*(v6 + 8))(v8, v5);
  return v12;
}

id *sub_1D1350514()
{

  return v0;
}

uint64_t sub_1D1350594()
{
  sub_1D1350514();

  return swift_deallocClassInstance();
}

void sub_1D13505EC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D112F2A8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D1350654()
{
  if (!qword_1EE06A7C8)
  {
    v0 = MEMORY[0x1E695C060];
    sub_1D13505EC(255, &qword_1EE06A6B8, &qword_1EE06B5D0, &type metadata for AccountStateChange, MEMORY[0x1E695C060]);
    sub_1D13505EC(255, &qword_1EE06A6C8, &qword_1EE06B600, &type metadata for HealthRecordsSupportedChange, v0);
    sub_1D1350784(&qword_1EE06A6C0, &qword_1EE06A6B8, &qword_1EE06B5D0, &type metadata for AccountStateChange);
    sub_1D1350784(&qword_1EE06A6D0, &qword_1EE06A6C8, &qword_1EE06B600, &type metadata for HealthRecordsSupportedChange);
    v1 = sub_1D138F4FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE06A7C8);
    }
  }
}

uint64_t sub_1D1350784(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D13505EC(255, a2, a3, a4, MEMORY[0x1E695C060]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D13507E8()
{
  if (!qword_1EE06A7A8)
  {
    v0 = MEMORY[0x1E695BED0];
    sub_1D1350F14(255, &unk_1EE06A770, MEMORY[0x1E695BED0]);
    sub_1D1350654();
    sub_1D13508F4(&qword_1EE06A780, &unk_1EE06A770, v0);
    sub_1D13509AC(&qword_1EE06A7D0, sub_1D1350654);
    v1 = sub_1D138F59C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE06A7A8);
    }
  }
}

uint64_t sub_1D13508F4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1D1350F14(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1350940@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(a1, a1 + 24);
  *a2 = result;
  return result;
}

uint64_t sub_1D13509AC(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1D13509F4(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E695C070];
  sub_1D13505EC(0, &unk_1EE06B598, &qword_1EE06B600, &type metadata for HealthRecordsSupportedChange, MEMORY[0x1E695C070]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  sub_1D13505EC(0, &unk_1EE06B588, &qword_1EE06B5D0, &type metadata for AccountStateChange, v4);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  LOBYTE(v36) = 0;
  sub_1D1350F14(0, &qword_1EE06A738, MEMORY[0x1E695BF98]);
  swift_allocObject();
  v2[2] = sub_1D138F6EC();
  v2[14] = 0;
  v2[6] = [objc_allocWithZone(MEMORY[0x1E696C1A8]) initWithHealthStore_];
  v2[7] = [objc_allocWithZone(MEMORY[0x1E69A3F38]) initWithHealthStore_];
  v2[8] = [objc_allocWithZone(MEMORY[0x1E69A3F10]) initWithHealthStore_];
  v2[9] = [objc_allocWithZone(MEMORY[0x1E696C038]) initWithHealthStore_];
  v15 = type metadata accessor for AccountStateChangeListener();
  v16 = objc_allocWithZone(v15);
  v17 = OBJC_IVAR____TtC15HealthRecordsUI26AccountStateChangeListener__latestChange;
  sub_1D112F2A8(0, &qword_1EE06B5D0);
  v37 = 0;
  v38 = 0;
  v36 = 0;
  sub_1D138F77C();
  (*(v12 + 32))(&v16[v17], v14, v11);
  v18 = OBJC_IVAR____TtC15HealthRecordsUI26AccountStateChangeListener_changePublisher;
  sub_1D112F230();
  swift_allocObject();
  *&v16[v18] = sub_1D138F69C();
  v19 = &v16[OBJC_IVAR____TtC15HealthRecordsUI26AccountStateChangeListener_handler];
  *v19 = nullsub_1;
  *(v19 + 1) = 0;
  v35.receiver = v16;
  v35.super_class = v15;
  v2[10] = objc_msgSendSuper2(&v35, sel_init);
  v20 = type metadata accessor for HealthRecordsSupportedStateChangeListener();
  v21 = objc_allocWithZone(v20);
  v22 = OBJC_IVAR____TtC15HealthRecordsUI41HealthRecordsSupportedStateChangeListener__latestChange;
  v36 = 0;
  LOBYTE(v37) = 0;
  sub_1D112F2A8(0, &qword_1EE06B600);
  sub_1D138F77C();
  (*(v7 + 32))(&v21[v22], v9, v6);
  v23 = &v21[OBJC_IVAR____TtC15HealthRecordsUI41HealthRecordsSupportedStateChangeListener_handler];
  *v23 = nullsub_1;
  *(v23 + 1) = 0;
  v34.receiver = v21;
  v34.super_class = v20;
  v2[11] = objc_msgSendSuper2(&v34, sel_init);
  v24 = type metadata accessor for IngestionStateChangeListener();
  v25 = objc_allocWithZone(v24);
  v36 = 0;
  LOBYTE(v37) = 1;
  sub_1D1350FD0(0, &qword_1EE06A730, &unk_1EE06A5D8, type metadata accessor for HKClinicalIngestionState);
  swift_allocObject();
  *&v25[OBJC_IVAR____TtC15HealthRecordsUI28IngestionStateChangeListener_changePublisher] = sub_1D138F6EC();
  v26 = &v25[OBJC_IVAR____TtC15HealthRecordsUI28IngestionStateChangeListener_handler];
  *v26 = nullsub_1;
  *(v26 + 1) = 0;
  v33.receiver = v25;
  v33.super_class = v24;
  v2[12] = objc_msgSendSuper2(&v33, sel_init);
  v27 = type metadata accessor for IndexManagerStateChangeListener();
  v28 = objc_allocWithZone(v27);
  v36 = 0;
  LOBYTE(v37) = 0;
  sub_1D1350FD0(0, &unk_1EE06A720, &qword_1EE06A5C8, type metadata accessor for HKConceptIndexManagerState);
  swift_allocObject();
  *&v28[OBJC_IVAR____TtC15HealthRecordsUI31IndexManagerStateChangeListener_changePublisher] = sub_1D138F6EC();
  v32.receiver = v28;
  v32.super_class = v27;
  v29 = objc_msgSendSuper2(&v32, sel_init);
  v2[13] = v29;
  v2[3] = *(v2[10] + OBJC_IVAR____TtC15HealthRecordsUI26AccountStateChangeListener_changePublisher);
  v2[4] = *(v2[12] + OBJC_IVAR____TtC15HealthRecordsUI28IngestionStateChangeListener_changePublisher);
  v2[5] = *&v29[OBJC_IVAR____TtC15HealthRecordsUI31IndexManagerStateChangeListener_changePublisher];

  sub_1D134FD64();
  return v2;
}

void sub_1D1350F14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370], MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D1350F7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D1350FD0(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D1350F7C(255, a3, a4);
    v5 = sub_1D138F6DC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

id sub_1D1351038()
{
  v1 = OBJC_IVAR___HRMedicationDispenseFormatter____lazy_storage___dosagesFormatter;
  v2 = *(v0 + OBJC_IVAR___HRMedicationDispenseFormatter____lazy_storage___dosagesFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HRMedicationDispenseFormatter____lazy_storage___dosagesFormatter);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR___HRMedicationDispenseFormatter_store);
    v5 = *(v0 + OBJC_IVAR___HRMedicationDispenseFormatter_context);
    v6 = type metadata accessor for MedicationDosageFormatter();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC15HealthRecordsUI25MedicationDosageFormatter_store] = v4;
    *&v7[OBJC_IVAR____TtC15HealthRecordsUI25MedicationDosageFormatter_context] = v5;
    v13.receiver = v7;
    v13.super_class = v6;
    v8 = v4;
    v9 = objc_msgSendSuper2(&v13, sel_init);
    v10 = *(v0 + v1);
    *(v0 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_1D1351138()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationDispenseFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D13511DC(uint64_t a1)
{
  result = sub_1D1351204();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D1351204()
{
  result = qword_1EC60FCB8;
  if (!qword_1EC60FCB8)
  {
    type metadata accessor for MedicationDispenseFormatter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FCB8);
  }

  return result;
}

id sub_1D1351258(void *a1)
{
  v1 = [a1 quantityDispensed];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 displayString];

  v4 = sub_1D139016C();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    return 0;
  }

  v8 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
  [v8 setDisplayItemType_];
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v9 = sub_1D139012C();

  [v8 setTitle_];

  v10 = sub_1D139012C();

  [v8 setSubtitle_];

  [v8 setSeparatorStyle_];
  [v8 setSeparatorHidden_];
  [v8 setExtraTopPadding_];

  return v8;
}

id sub_1D1351440(void *a1)
{
  v1 = [a1 daysSupplyQuantity];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 displayString];

  v4 = sub_1D139016C();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    return 0;
  }

  v8 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
  [v8 setDisplayItemType_];
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v9 = sub_1D139012C();

  [v8 setTitle_];

  v10 = sub_1D139012C();

  [v8 setSubtitle_];

  [v8 setSeparatorStyle_];
  [v8 setSeparatorHidden_];
  [v8 setExtraTopPadding_];

  return v8;
}

void *sub_1D1351628(void *a1)
{
  v1 = a1;
  v33[4] = sub_1D1351258(a1);
  v33[5] = sub_1D1201230(v1);
  if (qword_1EE06AD00 != -1)
  {
LABEL_14:
    swift_once();
  }

  v2 = sub_1D138D1CC();
  v30 = v3;
  v31 = v2;
  sub_1D111A42C();
  v4 = [v1 earliestDosageDate];
  v5 = [v1 meaningfulDateTitle];
  v6 = sub_1D139016C();
  v8 = v7;

  v33[6] = sub_1D11EDE68(v31, v30, v4, v6, v8);
  v9 = sub_1D138D1CC();
  v11 = v10;
  v12 = [v1 handOverDate];
  v13 = [v1 meaningfulDateTitle];
  v14 = sub_1D139016C();
  v16 = v15;

  v33[7] = sub_1D11EDE68(v9, v11, v12, v14, v16);
  v17 = sub_1D138D1CC();
  v19 = v18;
  v20 = [v1 preparationDate];
  v21 = [v1 meaningfulDateTitle];
  v22 = sub_1D139016C();
  v24 = v23;

  v33[8] = sub_1D11EDE68(v17, v19, v20, v22, v24);
  v33[9] = sub_1D1351440(v1);
  v25 = 0;
  v33[10] = sub_1D128719C(v1);
  v1 = MEMORY[0x1E69E7CC0];
  v32 = MEMORY[0x1E69E7CC0];
LABEL_3:
  if (v25 <= 7)
  {
    v26 = 7;
  }

  else
  {
    v26 = v25;
  }

  while (v25 != 7)
  {
    if (v26 == v25)
    {
      __break(1u);
      goto LABEL_14;
    }

    v27 = v33[v25++ + 4];
    if (v27)
    {
      v28 = v27;
      MEMORY[0x1D3885D90]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      v1 = v32;
      goto LABEL_3;
    }
  }

  sub_1D10CD53C();
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_1D13519A8(void *a1)
{
  v9[4] = sub_1D1351258(a1);
  v2 = 0;
  v9[5] = sub_1D1351440(a1);
  v3 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  while (v2 != 2)
  {
    v4 = v9[v2++ + 4];
    if (v4)
    {
      v5 = v4;
      MEMORY[0x1D3885D90]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      v3 = v10;
    }
  }

  sub_1D10CD53C();
  swift_arrayDestroy();
  v10 = v3;
  if (v3 >> 62)
  {
    if (sub_1D13910DC() >= 2)
    {
      return v3;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
  {
    return v3;
  }

  v6 = sub_1D128719C(a1);
  if (v6)
  {
    v7 = v6;
    MEMORY[0x1D3885D90]();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();

    return v10;
  }

  return v3;
}

id sub_1D1351B40()
{
  if (![objc_opt_self() isAppleInternalInstall])
  {
    return 0;
  }

  v0 = sub_1D139012C();
  v1 = sub_1D139012C();
  v2 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v0 message:v1 preferredStyle:1];

  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v3 = sub_1D139012C();

  v4 = [objc_opt_self() actionWithTitle:v3 style:0 handler:{0, 0xE000000000000000}];

  [v2 addAction_];
  return v2;
}

id HealthRecordsNotAvailableViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D139012C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id HealthRecordsNotAvailableViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1D139012C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for HealthRecordsNotAvailableViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id HealthRecordsNotAvailableViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HealthRecordsNotAvailableViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HealthRecordsNotAvailableViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id HealthRecordsNotAvailableViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthRecordsNotAvailableViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BrowseCategory.sidebarFeedItemIdentifier.getter()
{
  v2 = sub_1D139024C();
  MEMORY[0x1D3885C10](95, 0xE100000000000000);
  v0 = sub_1D13567F8();
  MEMORY[0x1D3885C10](v0);

  return v2;
}

id BrowseCategory.image.getter()
{
  v1 = type metadata accessor for BrowseCategory();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D10F3604(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 8)
  {
    goto LABEL_6;
  }

  if (((1 << EnumCaseMultiPayload) & 0xEC) != 0)
  {
    return 0;
  }

  if (EnumCaseMultiPayload != 4 && EnumCaseMultiPayload != 8)
  {
LABEL_6:
    if (EnumCaseMultiPayload)
    {
      sub_1D107D12C();

      v14 = sub_1D138D5EC();
      (*(*(v14 - 8) + 8))(v3, v14);
      return 0;
    }

    v6 = *v3;
    if (v6 == 8)
    {
      return 0;
    }

    if (qword_1EE069F78 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = off_1EE069F80;
    if (*(off_1EE069F80 + 2) && (v8 = sub_1D12A2F78(v6), (v9 & 1) != 0))
    {
      v10 = v7[7] + 72 * v8;
      v21 = *v10;
      v12 = *(v10 + 32);
      v11 = *(v10 + 48);
      v13 = *(v10 + 64);
      v22 = *(v10 + 16);
      v23 = v12;
      v25 = v13;
      v24 = v11;
      swift_endAccess();
      v28 = v23;
      v29 = v24;
      v30 = v25;
      v26 = v21;
      v27 = v22;
      sub_1D1082914(&v21, v20);
    }

    else
    {
      swift_endAccess();
      result = [objc_opt_self() unknownRecordCategory];
      if (!result)
      {
        __break(1u);
        return result;
      }

      sub_1D123E1C4(result, &v26);
    }

    v23 = v28;
    v24 = v29;
    v25 = v30;
    v21 = v26;
    v22 = v27;
    v15 = *(&v27 + 1);

    sub_1D1080D98(&v21);
    if (!v15)
    {
      return 0;
    }
  }

  if (qword_1EE06A538 != -1)
  {
    swift_once();
  }

  v16 = qword_1EE06B6D0;
  v17 = sub_1D139012C();

  v18 = [objc_opt_self() imageNamed:v17 inBundle:v16 compatibleWithTraitCollection:0];

  return v18;
}

id BrowseCategory.tintColorForTemplateImage.getter()
{
  v1 = type metadata accessor for BrowseCategory();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D10F3604(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 8)
  {
    goto LABEL_13;
  }

  if (((1 << EnumCaseMultiPayload) & 0xDC) != 0)
  {
    if (qword_1EE069530 != -1)
    {
      swift_once();
    }

    v5 = qword_1EE06A5B8;
LABEL_6:
    v6 = v5;
    return v5;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 8)
    {
      if (qword_1EC608D28 != -1)
      {
        swift_once();
      }

      v5 = qword_1EC60D760;
      goto LABEL_6;
    }

LABEL_13:
    sub_1D10F3688(v3);
    return 0;
  }

  v8 = *v3;
  if (qword_1EE069F78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = off_1EE069F80;
  if (*(off_1EE069F80 + 2))
  {
    v10 = sub_1D12A2F78(v8);
    if (v11)
    {
      v12 = v9[7] + 72 * v10;
      v18 = *v12;
      v14 = *(v12 + 32);
      v13 = *(v12 + 48);
      v15 = *(v12 + 64);
      v19 = *(v12 + 16);
      v20 = v14;
      v22 = v15;
      v21 = v13;
      swift_endAccess();
      v25 = v20;
      v26 = v21;
      v27 = v22;
      v23 = v18;
      v24 = v19;
      sub_1D1082914(&v18, v17);
LABEL_21:
      v18 = v23;
      v19 = v24;
      v20 = v25;
      v21 = v26;
      v22 = v27;
      v5 = *(&v23 + 1);
      sub_1D1080D98(&v18);
      return v5;
    }
  }

  swift_endAccess();
  result = [objc_opt_self() unknownRecordCategory];
  if (result)
  {
    sub_1D123E1C4(result, &v23);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

id BrowseCategory.systemImage.getter()
{
  v1 = type metadata accessor for BrowseCategory();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D10F3604(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 4)
    {
LABEL_15:
      v15 = sub_1D139012C();

      v16 = [objc_opt_self() systemImageNamed_];

      if (v16)
      {
        v17 = [v16 imageWithRenderingMode_];

        return v17;
      }

      return 0;
    }

    sub_1D10F3688(v3);
    return 0;
  }

  v5 = *v3;
  if (qword_1EE069F78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1EE069F80;
  if (*(off_1EE069F80 + 2))
  {
    v7 = sub_1D12A2F78(v5);
    if (v8)
    {
      v9 = v6[7] + 72 * v7;
      v20 = *v9;
      v11 = *(v9 + 32);
      v10 = *(v9 + 48);
      v12 = *(v9 + 64);
      v21 = *(v9 + 16);
      v22 = v11;
      v24 = v12;
      v23 = v10;
      swift_endAccess();
      v27 = v22;
      v28 = v23;
      v29 = v24;
      v25 = v20;
      v26 = v21;
      sub_1D1082914(&v20, v19);
      goto LABEL_14;
    }
  }

  swift_endAccess();
  result = [objc_opt_self() unknownRecordCategory];
  if (result)
  {
    sub_1D123E1C4(result, &v25);
LABEL_14:
    v22 = v27;
    v23 = v28;
    v24 = v29;
    v20 = v25;
    v21 = v26;
    sub_1D1080D98(&v20);
    v19[0] = v20;
    DisplayCategory.Kind.systemImageName.getter();
    if (v14)
    {
      goto LABEL_15;
    }

    return 0;
  }

  __break(1u);
  return result;
}

id BrowseCategory.localizedTitle.getter()
{
  v1 = type metadata accessor for BrowseCategory();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D10F3604(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6 && EnumCaseMultiPayload != 7)
      {
        if (qword_1EE06AD08 == -1)
        {
          return sub_1D138D1CC();
        }

        goto LABEL_28;
      }

      goto LABEL_15;
    }

    if (EnumCaseMultiPayload == 4)
    {
      if (qword_1EE06AD00 == -1)
      {
        return sub_1D138D1CC();
      }
    }

    else if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
LABEL_15:
      if (qword_1EE06AD00 == -1)
      {
        return sub_1D138D1CC();
      }

      goto LABEL_28;
    }

    if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

LABEL_28:
    swift_once();
    return sub_1D138D1CC();
  }

  if (EnumCaseMultiPayload)
  {
    sub_1D107D12C();
    v14 = *&v3[*(v13 + 48)];
    v15 = sub_1D138D5EC();
    (*(*(v15 - 8) + 8))(v3, v15);
    return v14;
  }

  v5 = *v3;
  if (qword_1EE069F78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1EE069F80;
  if (*(off_1EE069F80 + 2))
  {
    v7 = sub_1D12A2F78(v5);
    if (v8)
    {
      v9 = v6[7] + 72 * v7;
      v20 = *v9;
      v11 = *(v9 + 32);
      v10 = *(v9 + 48);
      v12 = *(v9 + 64);
      v21 = *(v9 + 16);
      v22 = v11;
      v24 = v12;
      v23 = v10;
      swift_endAccess();
      v27 = v22;
      v28 = v23;
      v29 = v24;
      v25 = v20;
      v26 = v21;
      sub_1D1082914(&v20, v19);
LABEL_27:
      v22 = v27;
      v23 = v28;
      v24 = v29;
      v20 = v25;
      v21 = v26;
      v17 = v27;

      sub_1D1080D98(&v20);
      return v17;
    }
  }

  swift_endAccess();
  result = [objc_opt_self() unknownRecordCategory];
  if (result)
  {
    sub_1D123E1C4(result, &v25);
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

unint64_t BrowseCategory.systemImageName.getter()
{
  v1 = type metadata accessor for BrowseCategory();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D10F3604(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 0:
      v6 = *v3;
      if (qword_1EE069F78 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v7 = off_1EE069F80;
      if (*(off_1EE069F80 + 2) && (v8 = sub_1D12A2F78(v6), (v9 & 1) != 0))
      {
        v10 = v7[7] + 72 * v8;
        v16 = *v10;
        v12 = *(v10 + 32);
        v11 = *(v10 + 48);
        v13 = *(v10 + 64);
        v17 = *(v10 + 16);
        v18 = v12;
        v20 = v13;
        v19 = v11;
        swift_endAccess();
        v23 = v18;
        v24 = v19;
        v25 = v20;
        v21 = v16;
        v22 = v17;
        sub_1D1082914(&v16, v15);
      }

      else
      {
        swift_endAccess();
        result = [objc_opt_self() unknownRecordCategory];
        if (!result)
        {
          __break(1u);
          return result;
        }

        sub_1D123E1C4(result, &v21);
      }

      v18 = v23;
      v19 = v24;
      v20 = v25;
      v16 = v21;
      v17 = v22;
      sub_1D1080D98(&v16);
      v15[0] = v16;
      return DisplayCategory.Kind.systemImageName.getter();
    case 8:
      return 0x696C632E7473696CLL;
    case 4:
      return 0xD000000000000012;
  }

  sub_1D10F3688(v3);
  return 0;
}

id BrowseCategory.coloredImage.getter()
{
  BrowseCategory.coloredImageName.getter();
  v1 = v0;
  if (v0)
  {
    if (qword_1EE06A528 != -1)
    {
      swift_once();
    }

    v2 = qword_1EE06B6C8;
    v3 = sub_1D139012C();

    v1 = [objc_opt_self() imageNamed:v3 inBundle:v2 compatibleWithTraitCollection:0];
  }

  return v1;
}

uint64_t sub_1D1353004(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = a2 + 32;
    v6 = (result + 32);
    v7 = MEMORY[0x1E69E7CC0];
    while (v4 < v2)
    {
      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_18;
      }

      v11 = *(v5 + v4++);
      v12 = *(v3 + 16);
      v13 = v6;
      while (v12)
      {
        v14 = *v13++;
        --v12;
        if (v14 == v11)
        {
          goto LABEL_6;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D10FE19C(0, *(v7 + 16) + 1, 1);
      }

      v9 = *(v7 + 16);
      v8 = *(v7 + 24);
      if (v9 >= v8 >> 1)
      {
        result = sub_1D10FE19C((v8 > 1), v9 + 1, 1);
      }

      *(v7 + 16) = v9 + 1;
      *(v7 + v9 + 32) = v11;
LABEL_6:
      if (v10 == v2)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1D135312C()
{
  sub_1D138CE9C();
  swift_allocObject();
  result = sub_1D138CE8C();
  qword_1EC60FCC0 = result;
  return result;
}

uint64_t static BrowseCategory.account(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D107D12C();
  v5 = (a2 + *(v4 + 48));
  v6 = [a1 identifier];
  sub_1D138D5CC();

  v7 = [a1 title];
  v8 = sub_1D139016C();
  v10 = v9;

  *v5 = v8;
  v5[1] = v10;
  type metadata accessor for BrowseCategory();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D135322C()
{
  result = sub_1D135324C();
  qword_1EE06B4E0 = result;
  return result;
}

uint64_t sub_1D135324C()
{
  v0 = type metadata accessor for BrowseCategory();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D1353004(&unk_1F4D05048, &unk_1F4D04598);
  v5 = *(v4 + 16);
  if (v5)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1D10FDF04(0, v5, 0);
    v6 = 32;
    v7 = v13;
    do
    {
      *v3 = *(v4 + v6);
      swift_storeEnumTagMultiPayload();
      v13 = v7;
      v9 = *(v7 + 16);
      v8 = *(v7 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1D10FDF04(v8 > 1, v9 + 1, 1);
        v7 = v13;
      }

      *(v7 + 16) = v9 + 1;
      sub_1D10F36E4(v3, v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v9);
      ++v6;
      --v5;
    }

    while (v5);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  sub_1D1356EE4(0, &unk_1EE06B568, type metadata accessor for BrowseCategory, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D139E700;
  swift_storeEnumTagMultiPayload();
  v13 = v10;
  sub_1D11228E8(v7);
  return v13;
}

uint64_t static BrowseCategory.allCasesExceptAccounts.getter()
{
  if (qword_1EE06A230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static BrowseCategory.allCasesExceptAccounts.setter(uint64_t a1)
{
  if (qword_1EE06A230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EE06B4E0 = a1;
}

uint64_t (*static BrowseCategory.allCasesExceptAccounts.modify())()
{
  if (qword_1EE06A230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1D13535F4@<X0>(void *a1@<X8>)
{
  if (qword_1EE06A230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EE06B4E0;
}

uint64_t sub_1D1353674(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EE06A230;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EE06B4E0 = v1;
}

uint64_t static BrowseCategory.regularSubcategories.getter()
{
  v0 = type metadata accessor for BrowseCategory();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE06A180 != -1)
  {
    swift_once();
  }

  v4 = off_1EE06B4C8;
  v5 = *(off_1EE06B4C8 + 2);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1D10FDF04(0, v5, 0);
    v6 = v13;
    v7 = v4 + 32;
    do
    {
      v8 = *v7++;
      *v3 = v8;
      swift_storeEnumTagMultiPayload();
      v13 = v6;
      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1D10FDF04(v9 > 1, v10 + 1, 1);
        v6 = v13;
      }

      *(v6 + 16) = v10 + 1;
      sub_1D10F36E4(v3, v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v10);
      --v5;
    }

    while (v5);
  }

  return v6;
}

uint64_t static BrowseCategory.hiddenWhenEmpty.getter()
{
  sub_1D1356EE4(0, &unk_1EE06B568, type metadata accessor for BrowseCategory, MEMORY[0x1E69E6F90]);
  v0 = *(type metadata accessor for BrowseCategory() - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D139E700;
  swift_storeEnumTagMultiPayload();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D139E700;
  *(v3 + v1) = 8;
  swift_storeEnumTagMultiPayload();
  sub_1D11228E8(v3);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D139E700;
  *(v4 + v1) = 9;
  swift_storeEnumTagMultiPayload();
  sub_1D11228E8(v4);
  return v2;
}

uint64_t sub_1D1353A28()
{
  sub_1D139177C();
  sub_1D139027C();
  return sub_1D13917CC();
}

uint64_t sub_1D1353A94()
{
  sub_1D139177C();
  sub_1D139027C();
  return sub_1D13917CC();
}

uint64_t sub_1D1353AE4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D139147C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D1353B6C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D139147C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D1353BC4(uint64_t a1)
{
  v2 = sub_1D1356AE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1353C00(uint64_t a1)
{
  v2 = sub_1D1356AE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BrowseCategory.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v4 = sub_1D138F0BC();
  v5 = *(v4 - 8);
  v36 = v4;
  v37 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1356EE4(0, &qword_1EE06B4D8, type metadata accessor for BrowseCategory, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  sub_1D1356BFC(0, &qword_1EE06A4E0, MEMORY[0x1E69E6F48]);
  v12 = v11;
  v38 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D1356AE4();
  sub_1D13917FC();
  if (v2)
  {
LABEL_8:
    v29 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  v15 = v39;
  v35 = a1;
  v16 = sub_1D13914CC();
  v17 = v38;
  v18 = v16;
  v20 = v19;

  BrowseCategory.init(rawValue:)(v18, v20, v10);
  v21 = type metadata accessor for BrowseCategory();
  if ((*(*(v21 - 8) + 48))(v10, 1, v21) == 1)
  {
    v34 = v18;
    v39 = v14;
    sub_1D1356B38(v10, &qword_1EE06B4D8, type metadata accessor for BrowseCategory);
    sub_1D138F04C();

    v22 = v20;
    v23 = sub_1D138F0AC();
    v24 = sub_1D13907FC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v33 = v7;
      v26 = v25;
      v27 = swift_slowAlloc();
      v40 = v27;
      *v26 = 136446210;
      v28 = v34;
      *(v26 + 4) = sub_1D11DF718(v34, v22, &v40);
      _os_log_impl(&dword_1D101F000, v23, v24, "Unable to decode BrowseCategory from rawValue: %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1D38882F0](v27, -1, -1);
      MEMORY[0x1D38882F0](v26, -1, -1);

      (*(v37 + 8))(v33, v36);
    }

    else
    {

      (*(v37 + 8))(v7, v36);
      v28 = v34;
    }

    sub_1D1356BA8();
    swift_allocError();
    *v30 = v28;
    v30[1] = v22;
    swift_willThrow();
    (*(v17 + 8))(v39, v12);
    a1 = v35;
    goto LABEL_8;
  }

  (*(v17 + 8))(v14, v12);

  sub_1D10F36E4(v10, v15);
  v29 = v35;
  return __swift_destroy_boxed_opaque_existential_1Tm(v29);
}

uint64_t BrowseCategory.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v5 = sub_1D138F0BC();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v42 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  sub_1D1356EE4(0, &qword_1EE06B4D8, type metadata accessor for BrowseCategory, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  v19 = type metadata accessor for BrowseCategory();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 != 0xD000000000000011 || 0x80000001D13CDB90 != a2) && (sub_1D139162C() & 1) == 0 && (a1 != 0xD000000000000010 || 0x80000001D13CDBB0 != a2) && (sub_1D139162C() & 1) == 0 && (a1 != 0x73746E756F636361 || a2 != 0xEE00726564616548) && (sub_1D139162C() & 1) == 0 && (a1 != 0x756F636341646461 || a2 != 0xEA0000000000746ELL) && (sub_1D139162C() & 1) == 0 && (a1 != 0xD000000000000011 || 0x80000001D13CDBD0 != a2) && (sub_1D139162C() & 1) == 0 && (a1 != 0xD000000000000011 || 0x80000001D13CDBF0 != a2) && (sub_1D139162C() & 1) == 0 && (a1 != 0xD00000000000001DLL || 0x80000001D13CDC10 != a2) && (sub_1D139162C() & 1) == 0)
  {
    if (sub_1D139032C())
    {

      sub_1D13552E4(a1, a2, v18);
      if ((*(v20 + 48))(v18, 1, v19) == 1)
      {
        sub_1D1356B38(v18, &qword_1EE06B4D8, type metadata accessor for BrowseCategory);
        sub_1D138F04C();

        v26 = sub_1D138F0AC();
        v27 = sub_1D13907FC();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v47 = v29;
          *v28 = 136642819;
          v30 = sub_1D11DF718(a1, a2, &v47);

          *(v28 + 4) = v30;
          _os_log_impl(&dword_1D101F000, v26, v27, "Invalid subcategory: %{sensitive}s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          MEMORY[0x1D38882F0](v29, -1, -1);
          MEMORY[0x1D38882F0](v28, -1, -1);
        }

        else
        {
        }

        (*(v44 + 8))(v12, v45);
LABEL_50:
        v24 = 1;
        v23 = v46;
        return (*(v20 + 56))(v23, v24, 1, v19);
      }

      v36 = v18;
    }

    else
    {
      if ((sub_1D139032C() & 1) == 0)
      {
        sub_1D138F04C();

        v37 = sub_1D138F0AC();
        v38 = sub_1D13907FC();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v47 = v40;
          *v39 = 136642819;
          v41 = sub_1D11DF718(a1, a2, &v47);

          *(v39 + 4) = v41;
          _os_log_impl(&dword_1D101F000, v37, v38, "Invalid browseCategoryRawValue: %{sensitive}s", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v40);
          MEMORY[0x1D38882F0](v40, -1, -1);
          MEMORY[0x1D38882F0](v39, -1, -1);
        }

        else
        {
        }

        (*(v44 + 8))(v7, v45);
        goto LABEL_50;
      }

      sub_1D1355808(a1, a2, v15);
      if ((*(v20 + 48))(v15, 1, v19) == 1)
      {
        sub_1D1356B38(v15, &qword_1EE06B4D8, type metadata accessor for BrowseCategory);
        sub_1D138F04C();

        v31 = sub_1D138F0AC();
        v32 = sub_1D13907FC();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v47 = v34;
          *v33 = 136642819;
          v35 = sub_1D11DF718(a1, a2, &v47);

          *(v33 + 4) = v35;
          _os_log_impl(&dword_1D101F000, v31, v32, "Invalid account: %{sensitive}s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v34);
          MEMORY[0x1D38882F0](v34, -1, -1);
          MEMORY[0x1D38882F0](v33, -1, -1);
        }

        else
        {
        }

        (*(v44 + 8))(v43, v45);
        goto LABEL_50;
      }

      v36 = v15;
    }

    sub_1D10F36E4(v36, v22);
    goto LABEL_5;
  }

  swift_storeEnumTagMultiPayload();
LABEL_5:
  v23 = v46;
  sub_1D10F36E4(v22, v46);
  v24 = 0;
  return (*(v20 + 56))(v23, v24, 1, v19);
}

uint64_t BrowseCategory.encode(to:)(void *a1)
{
  sub_1D1356BFC(0, &qword_1EE06B0A0, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D1356AE4();
  sub_1D139181C();
  BrowseCategory.rawValue.getter();
  sub_1D139155C();
  (*(v4 + 8))(v6, v3);
}

uint64_t BrowseCategory.rawValue.getter()
{
  v1 = sub_1D138F0BC();
  v33[4] = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D13901DC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D138CECC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1D138D5EC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BrowseCategory();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D10F3604(v0, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v33[1] = v6;
    v33[2] = v3;
    v33[3] = v1;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        return 0xD00000000000001DLL;
      }

      else
      {
        return 0xD000000000000011;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_1D107D12C();
      v20 = &v14[*(v19 + 48)];
      v22 = *v20;
      v21 = *(v20 + 1);
      v33[0] = v9;
      (*(v9 + 32))(v11, v14, v8);
      sub_1D138CF0C();
      swift_allocObject();
      sub_1D138CEFC();
      sub_1D138CEAC();
      sub_1D138CEDC();
      sub_1D1356EE4(0, &qword_1EC609C98, sub_1D1356C60, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D139EAB0;
      *(inited + 32) = 1684957547;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = 0x746E756F636361;
      *(inited + 56) = 0xE700000000000000;
      *(inited + 64) = 25705;
      *(inited + 72) = 0xE200000000000000;
      *(inited + 80) = sub_1D138D59C();
      *(inited + 88) = v24;
      *(inited + 96) = 0x656C746974;
      *(inited + 104) = 0xE500000000000000;
      *(inited + 112) = v22;
      *(inited + 120) = v21;

      v25 = sub_1D109AD94(inited);
      swift_setDeallocating();
      sub_1D1356C60();
      swift_arrayDestroy();
      v34[0] = v25;
      sub_1D10FA6A8();
      sub_1D115314C(&qword_1EC60B9D8);
      v26 = sub_1D138CEEC();
      v28 = v27;

      sub_1D13901BC();
      result = sub_1D139018C();
      if (v29)
      {
        v30 = result;
        v31 = v29;

        strcpy(v34, "account: ");
        WORD1(v34[1]) = 0;
        HIDWORD(v34[1]) = -385875968;
        MEMORY[0x1D3885C10](v30, v31);

        sub_1D1083DAC(v26, v28);

        v32 = v34[0];
        (*(v33[0] + 8))(v11, v8);
        return v32;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v17 = *v14;
      strcpy(v34, "subcategory:");
      BYTE5(v34[1]) = 0;
      HIWORD(v34[1]) = -5120;
      v34[4] = v17;
      v18 = sub_1D13915CC();
      MEMORY[0x1D3885C10](v18);

      return v34[0];
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0x73746E756F636361;
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    return 0x756F636341646461;
  }

  else if (EnumCaseMultiPayload == 7)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000011;
  }

  return result;
}

uint64_t sub_1D13552E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for BrowseCategory();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1D139032C() & 1) == 0)
  {
    goto LABEL_67;
  }

  result = sub_1D139032C();
  if (result)
  {
    v11 = sub_1D139028C();
    v12 = sub_1D139028C();
    v13 = __OFSUB__(v11, v12);
    v14 = v11 - v12;
    if (v13)
    {
      __break(1u);
      goto LABEL_82;
    }

    v15 = sub_1D10EE5AC(v14, a1, a2);
    v17 = v16;
    v19 = v18;
    v21 = v20;

    a1 = MEMORY[0x1D3885B80](v15, v17, v19, v21);
    a2 = v22;
  }

  v23 = HIBYTE(a2) & 0xF;
  v24 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v25 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v53 = 0;

    v27 = sub_1D12C6850(a1, a2, 10);
    v47 = v46;

    if (v47)
    {
      goto LABEL_67;
    }

    goto LABEL_71;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_13:
      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = (result + 1);
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_85;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
LABEL_66:
        v53 = v23;
        if (v23)
        {
LABEL_67:

LABEL_68:
          v45 = 1;
          return (*(v7 + 56))(a3, v45, 1, v6);
        }

LABEL_71:
        v52[0] = v27;
        if (a1 == sub_1D13915CC() && a2 == v48)
        {
        }

        else
        {
          v50 = sub_1D139162C();

          if ((v50 & 1) == 0)
          {
            goto LABEL_68;
          }
        }

        DisplayCategory.Kind.init(rawValue:)(v27);
        v45 = 1;
        if (LOBYTE(v52[0]))
        {
          if (LOBYTE(v52[0]) != 11)
          {
            *v9 = v52[0];
            swift_storeEnumTagMultiPayload();
            sub_1D10F36E4(v9, a3);
            v45 = 0;
          }
        }

        return (*(v7 + 56))(a3, v45, 1, v6);
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = (result + 1);
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
          goto LABEL_66;
        }

        goto LABEL_65;
      }

      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

LABEL_82:
    result = sub_1D139128C();
    goto LABEL_13;
  }

  v52[0] = a1;
  v52[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 != 43)
  {
    if (a1 != 45)
    {
      if (v23)
      {
        v27 = 0;
        v42 = v52;
        while (1)
        {
          v43 = *v42 - 48;
          if (v43 > 9)
          {
            break;
          }

          v44 = 10 * v27;
          if ((v27 * 10) >> 64 != (10 * v27) >> 63)
          {
            break;
          }

          v27 = v44 + v43;
          if (__OFADD__(v44, v43))
          {
            break;
          }

          ++v42;
          if (!--v23)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    if (v23)
    {
      if (--v23)
      {
        v27 = 0;
        v31 = v52 + 1;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = 10 * v27;
          if ((v27 * 10) >> 64 != (10 * v27) >> 63)
          {
            break;
          }

          v27 = v33 - v32;
          if (__OFSUB__(v33, v32))
          {
            break;
          }

          ++v31;
          if (!--v23)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_84;
  }

  if (v23)
  {
    if (--v23)
    {
      v27 = 0;
      v37 = v52 + 1;
      while (1)
      {
        v38 = *v37 - 48;
        if (v38 > 9)
        {
          break;
        }

        v39 = 10 * v27;
        if ((v27 * 10) >> 64 != (10 * v27) >> 63)
        {
          break;
        }

        v27 = v39 + v38;
        if (__OFADD__(v39, v38))
        {
          break;
        }

        ++v37;
        if (!--v23)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_86:
  __break(1u);
  return result;
}

uint64_t sub_1D1355808@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0x3A746E756F636361;
  v7 = sub_1D138F0BC();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v62 - v10;
  v12 = type metadata accessor for BrowseCategory();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1356EE4(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v65 = &v62 - v16;
  v17 = sub_1D138D5EC();
  v18 = *(v17 - 8);
  v67 = v17;
  v68 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v66 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D13901DC();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D139032C())
  {
    if (sub_1D139032C())
    {
      v24 = sub_1D139028C();
      v25 = sub_1D139028C();
      v26 = __OFSUB__(v24, v25);
      v27 = v24 - v25;
      if (v26)
      {
        __break(1u);
LABEL_27:
        swift_once();
LABEL_11:
        sub_1D10FA6A8();
        sub_1D115314C(&qword_1EC60B9C8);
        sub_1D138CE7C();
        v43 = v72;
        if (*(v72 + 16) && (v44 = sub_1D11362EC(1684957547, 0xE400000000000000), (v45 & 1) != 0) && ((v46 = (*(v43 + 56) + 16 * v44), *v46 == 0x746E756F636361) && v46[1] == 0xE700000000000000 || (sub_1D139162C() & 1) != 0) && *(v43 + 16) && (sub_1D11362EC(25705, 0xE200000000000000), (v47 & 1) != 0))
        {
          v48 = v6;

          v49 = v65;
          sub_1D138D58C();

          v51 = v67;
          v50 = v68;
          if ((*(v68 + 48))(v49, 1, v67) == 1)
          {
            sub_1D10847DC(v48, v24);

            sub_1D1356B38(v49, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
            v38 = 1;
          }

          else
          {
            v53 = v49;
            v54 = *(v50 + 32);
            v54(v66, v53, v51);
            if (*(v43 + 16) && (v55 = sub_1D11362EC(0x656C746974, 0xE500000000000000), (v56 & 1) != 0))
            {
              v57 = (*(v43 + 56) + 16 * v55);
              v58 = v57[1];
              v71 = *v57;

              sub_1D10847DC(v48, v24);

              sub_1D107D12C();
              v60 = v64;
              v61 = &v64[*(v59 + 48)];
              v54(v64, v66, v51);
              *v61 = v71;
              *(v61 + 1) = v58;
              swift_storeEnumTagMultiPayload();
              sub_1D10F36E4(v60, a3);
              v38 = 0;
            }

            else
            {
              sub_1D10847DC(v48, v24);

              (*(v68 + 8))(v66, v51);
              v38 = 1;
            }
          }
        }

        else
        {
          sub_1D10847DC(v6, v24);

          v38 = 1;
        }

        return (*(v13 + 56))(a3, v38, 1, v12);
      }

      v28 = sub_1D10EE5AC(v27, a1, a2);
      v30 = v29;
      v32 = v31;
      v63 = v13;
      v33 = v12;
      v34 = a3;
      v36 = v35;

      MEMORY[0x1D3885B80](v28, v30, v32, v36);
      a3 = v34;
      v12 = v33;
      v13 = v63;
    }

    sub_1D13901BC();
    v6 = sub_1D139017C();
    v24 = v37;

    (*(v21 + 8))(v23, v20);
    if (v24 >> 60 == 15)
    {
      v38 = 1;
      return (*(v13 + 56))(a3, v38, 1, v12);
    }

    if (qword_1EC608E98 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

  v39 = v12;

  sub_1D138F04C();
  v40 = sub_1D138F0AC();
  v41 = sub_1D13907FC();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1D101F000, v40, v41, "rawValue must start with 'account:'", v42, 2u);
    MEMORY[0x1D38882F0](v42, -1, -1);
  }

  (*(v70 + 8))(v11, v71);
  v38 = 1;
  v12 = v39;
  return (*(v13 + 56))(a3, v38, 1, v12);
}

uint64_t sub_1D1356128@<X0>(uint64_t *a1@<X8>)
{
  result = BrowseCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D1356168(void *a1)
{
  sub_1D1356BFC(0, &qword_1EE06B0A0, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D1356AE4();
  sub_1D139181C();
  BrowseCategory.rawValue.getter();
  sub_1D139155C();
  (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D13562B8()
{
  sub_1D139177C();
  BrowseCategory.rawValue.getter();
  sub_1D139027C();

  return sub_1D13917CC();
}

uint64_t sub_1D1356314()
{
  BrowseCategory.rawValue.getter();
  sub_1D139027C();
}

uint64_t sub_1D1356364()
{
  sub_1D139177C();
  BrowseCategory.rawValue.getter();
  sub_1D139027C();

  return sub_1D13917CC();
}

uint64_t sub_1D13563BC()
{
  v0 = BrowseCategory.rawValue.getter();
  v2 = v1;
  if (v0 == BrowseCategory.rawValue.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D139162C();
  }

  return v4 & 1;
}

uint64_t BrowseCategory.coloredImageName.getter()
{
  v1 = type metadata accessor for BrowseCategory();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D10F3604(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 8)
  {
    goto LABEL_7;
  }

  result = 0;
  if (((1 << EnumCaseMultiPayload) & 0xEC) != 0)
  {
    return result;
  }

  if (EnumCaseMultiPayload == 4)
  {
    return 0x655268746C616548;
  }

  if (EnumCaseMultiPayload == 8)
  {
    return 0xD000000000000011;
  }

LABEL_7:
  if (!EnumCaseMultiPayload)
  {
    return qword_1D13B2630[*v3];
  }

  sub_1D107D12C();

  v6 = sub_1D138D5EC();
  (*(*(v6 - 8) + 8))(v3, v6);
  return 0;
}

id BrowseCategory.searchBackgroundColor.getter()
{
  v1 = type metadata accessor for BrowseCategory();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D10F3604(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 4)
    {
      if (qword_1EE06A568 != -1)
      {
        swift_once();
      }

      v7 = qword_1EE06A570;
      v6 = qword_1EE06A570;
    }

    else
    {
      sub_1D10F3688(v3);
      return 0;
    }

    return v7;
  }

  v8 = *v3;
  if (qword_1EE069F78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = off_1EE069F80;
  if (*(off_1EE069F80 + 2))
  {
    v10 = sub_1D12A2F78(v8);
    if (v11)
    {
      v12 = v9[7] + 72 * v10;
      v19 = *v12;
      v14 = *(v12 + 32);
      v13 = *(v12 + 48);
      v15 = *(v12 + 64);
      v20 = *(v12 + 16);
      v21 = v14;
      v23 = v15;
      v22 = v13;
      swift_endAccess();
      v26 = v21;
      v27 = v22;
      v28 = v23;
      v24 = v19;
      v25 = v20;
      sub_1D1082914(&v19, v18);
LABEL_17:
      v19 = v24;
      v20 = v25;
      v21 = v26;
      v22 = v27;
      v23 = v28;
      v7 = *(&v24 + 1);
      sub_1D1080D98(&v19);
      return v7;
    }
  }

  swift_endAccess();
  result = [objc_opt_self() unknownRecordCategory];
  if (result)
  {
    sub_1D123E1C4(result, &v24);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D13567F8()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BrowseCategory();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D10F3604(v0, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3 && (EnumCaseMultiPayload - 2) >= 2 && EnumCaseMultiPayload)
  {
    sub_1D107D12C();

    (*(v2 + 32))(v4, v7, v1);
    v13 = 0x2D746E756F636361;
    v14 = 0xE800000000000000;
    v9 = sub_1D138D59C();
    MEMORY[0x1D3885C10](v9);

    MEMORY[0x1D3885C10](23849, 0xE200000000000000);
    v10 = v13;
    (*(v2 + 8))(v4, v1);
    return v10;
  }

  else
  {
    v13 = BrowseCategory.rawValue.getter();
    v14 = v12;
    return sub_1D139036C();
  }
}

uint64_t type metadata accessor for BrowseCategory()
{
  result = qword_1EE06BBD0;
  if (!qword_1EE06BBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BrowseCategory.init(kind:)@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *a1;
  type metadata accessor for BrowseCategory();

  return swift_storeEnumTagMultiPayload();
}

uint64_t static BrowseCategory.unreadableData.getter@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 8;
  type metadata accessor for BrowseCategory();

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1D1356AE4()
{
  result = qword_1EE06BC00;
  if (!qword_1EE06BC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06BC00);
  }

  return result;
}

uint64_t sub_1D1356B38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D1356EE4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D1356BA8()
{
  result = qword_1EC60FCC8;
  if (!qword_1EC60FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FCC8);
  }

  return result;
}

void sub_1D1356BFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D1356AE4();
    v7 = a3(a1, &type metadata for BrowseCategory.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D1356C60()
{
  if (!qword_1EC609CA0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC609CA0);
    }
  }
}

unint64_t sub_1D1356CC0()
{
  result = qword_1EE06BBE0;
  if (!qword_1EE06BBE0)
  {
    type metadata accessor for BrowseCategory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06BBE0);
  }

  return result;
}

void sub_1D1356D28()
{
  sub_1D1356D9C();
  if (v0 <= 0x3F)
  {
    sub_1D107D12C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

ValueMetadata *sub_1D1356D9C()
{
  result = qword_1EE06AEC0;
  if (!qword_1EE06AEC0)
  {
    result = &type metadata for DisplayCategory.Kind;
    atomic_store(&type metadata for DisplayCategory.Kind, &qword_1EE06AEC0);
  }

  return result;
}

unint64_t sub_1D1356DE0()
{
  result = qword_1EC60FCD0;
  if (!qword_1EC60FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FCD0);
  }

  return result;
}

unint64_t sub_1D1356E38()
{
  result = qword_1EE06BBF0;
  if (!qword_1EE06BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06BBF0);
  }

  return result;
}

unint64_t sub_1D1356E90()
{
  result = qword_1EE06BBF8;
  if (!qword_1EE06BBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06BBF8);
  }

  return result;
}

void sub_1D1356EE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1D1356F48()
{
  v1 = OBJC_IVAR___HRConceptHeaderCell____lazy_storage___bottomConstraint;
  v2 = *&v0[OBJC_IVAR___HRConceptHeaderCell____lazy_storage___bottomConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___HRConceptHeaderCell____lazy_storage___bottomConstraint];
  }

  else
  {
    v4 = [*&v0[OBJC_IVAR___HRConceptHeaderCell_titleLabel] bottomAnchor];
    v5 = [v0 pillBackgroundView];
    v6 = [v5 bottomAnchor];

    v7 = [v4 constraintEqualToAnchor:v6 constant:0.0];
    v8 = *&v0[v1];
    *&v0[v1] = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void *sub_1D135707C()
{
  v1 = OBJC_IVAR___HRConceptHeaderCell_headerImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*sub_1D1357140(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___HRConceptHeaderCell_headerImage;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1D13571DC;
}

uint64_t sub_1D1357290()
{
  v1 = (v0 + OBJC_IVAR___HRConceptHeaderCell_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1D1357368(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___HRConceptHeaderCell_title);
  swift_beginAccess();
  result = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (v7)
  {
    if (a2)
    {
      v8 = result == a1 && v7 == a2;
      if (v8 || (sub_1D139162C() & 1) != 0)
      {
      }
    }
  }

  else if (!a2)
  {
    return result;
  }

  sub_1D13581F4();
}

void (*sub_1D135740C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___HRConceptHeaderCell_title;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_1D13574AC;
}

void sub_1D13574AC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    sub_1D1357368(v3, v4);
  }

  else
  {
    v5 = (v2[5] + v2[6]);
    v6 = *v5;
    v7 = v5[1];
    *v5 = v3;
    v5[1] = v4;
    if (v7)
    {
      if (v4)
      {
        v8 = v6 == v3 && v7 == v4;
        if (v8 || (sub_1D139162C() & 1) != 0)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v4)
    {
      goto LABEL_14;
    }

    sub_1D13581F4();
  }

LABEL_13:

LABEL_14:

  free(v2);
}

void *sub_1D13575C0()
{
  v1 = OBJC_IVAR___HRConceptHeaderCell_categoryColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D1357684(id a1, uint64_t *a2, unint64_t *a3)
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  if (!v7)
  {
    if (!a1)
    {
      return;
    }

    a1 = a1;
    goto LABEL_7;
  }

  if (!a1 || (sub_1D106F934(0, a3), a1 = a1, v8 = v7, v9 = sub_1D1390D8C(), v8, (v9 & 1) == 0))
  {
LABEL_7:
    sub_1D13581F4();

    goto LABEL_8;
  }

  v7 = v8;
LABEL_8:
}

void (*sub_1D1357754(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___HRConceptHeaderCell_categoryColor;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1D13577F0;
}

void sub_1D1357818(uint64_t a1, char a2, unint64_t *a3, uint64_t a4, void (*a5)(id))
{
  v5 = *a1;
  v6 = *(*a1 + 24);
  if ((a2 & 1) == 0)
  {
    v10 = v5[4];
    v9 = v5[5];
    v11 = *(v10 + v9);
    *(v10 + v9) = v6;
    if (v11)
    {
      if (v6)
      {
        sub_1D106F934(0, a3);
        v6 = v6;
        v12 = v11;
        v13 = sub_1D1390D8C();

        if (v13)
        {

          goto LABEL_10;
        }
      }
    }

    else
    {
      if (!v6)
      {
        goto LABEL_11;
      }

      v6 = v6;
    }

    sub_1D13581F4();

    v6 = v11;
    goto LABEL_10;
  }

  v8 = v6;
  a5(v6);
  v6 = v5[3];
LABEL_10:

LABEL_11:

  free(v5);
}

void sub_1D1357964()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ConceptHeaderCell();
  objc_msgSendSuper2(&v6, sel_setupSubviews);
  v1 = *&v0[OBJC_IVAR___HRConceptHeaderCell_titleLabel];
  [v1 setNumberOfLines_];
  [v1 setLineBreakMode_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v2) = 1148846080;
  [v1 setContentCompressionResistancePriority:1 forAxis:v2];
  v3 = [objc_opt_self() _preferredFontForTextStyle_variant_];
  [v1 setFont_];

  v4 = [v0 pillBackgroundView];
  [v4 addSubview_];

  v5 = [v0 pillBackgroundView];
  [v5 addSubview_];
}

void sub_1D1357B08()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for ConceptHeaderCell();
  objc_msgSendSuper2(&v24, sel_setUpConstraints);
  v23 = objc_opt_self();
  sub_1D106F424();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D13A68D0;
  v2 = *&v0[OBJC_IVAR___HRConceptHeaderCell_titleLabel];
  v3 = [v2 leadingAnchor];
  v4 = [v0 pillBackgroundView];
  v5 = [v4 leadingAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:14.0];
  *(v1 + 32) = v6;
  v7 = [v2 topAnchor];
  v8 = [v0 pillBackgroundView];
  v9 = [v8 topAnchor];

  v10 = [v7 constraintEqualToAnchor:v9 constant:14.0];
  *(v1 + 40) = v10;
  *(v1 + 48) = sub_1D1356F48();
  v11 = [v2 trailingAnchor];
  v12 = *&v0[OBJC_IVAR___HRConceptHeaderCell_chevronView];
  v13 = [v12 leadingAnchor];
  v14 = [v11 constraintLessThanOrEqualToAnchor:v13 constant:-8.0];

  *(v1 + 56) = v14;
  v15 = [v12 firstBaselineAnchor];
  v16 = [v2 firstBaselineAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v1 + 64) = v17;
  v18 = [v12 trailingAnchor];
  v19 = [v0 pillBackgroundView];
  v20 = [v19 trailingAnchor];

  v21 = [v18 constraintEqualToAnchor:v20 constant:-16.0];
  *(v1 + 72) = v21;
  sub_1D106F934(0, &qword_1EC609690);
  v22 = sub_1D139044C();

  [v23 activateConstraints_];
}

id sub_1D1357F10(id a1)
{
  result = [v1 intendedPlacement];
  if (result != a1)
  {
    if ((a1 == 2) == ([v1 intendedPlacement] != 2))
    {
      v4 = sub_1D1356F48();
      v5 = v4;
      v6 = 0.0;
      if (a1 == 2)
      {
        v6 = -14.0;
      }

      [v4 setConstant_];
    }

    v7.receiver = v1;
    v7.super_class = type metadata accessor for ConceptHeaderCell();
    return objc_msgSendSuper2(&v7, sel_setIntendedPlacement_, a1);
  }

  return result;
}

void sub_1D1358070(void *a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for ConceptHeaderCell();
  objc_msgSendSuper2(&v10, sel__traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  [v3 displayScale];
  v5 = v4;

  if (!a1 || ([a1 displayScale], v5 != v6) || (v7 = objc_msgSend(v1, sel_traitCollection), v8 = objc_msgSend(v7, sel_preferredContentSizeCategory), v7, LODWORD(v7) = sub_1D1390B5C() & 1, v8, v9 = objc_msgSend(a1, sel_preferredContentSizeCategory), LODWORD(v8) = sub_1D1390B5C() & 1, v9, v8 != v7))
  {
    sub_1D13581F4();
  }
}

void sub_1D13581F4()
{
  v1 = OBJC_IVAR___HRConceptHeaderCell_headerImage;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = [v2 imageWithRenderingMode_];
  }

  else
  {
    v3 = 0;
  }

  v4 = &v0[OBJC_IVAR___HRConceptHeaderCell_title];
  swift_beginAccess();
  if (!*(v4 + 1))
  {

    [*&v0[OBJC_IVAR___HRConceptHeaderCell_titleLabel] setAttributedText_];
    return;
  }

  if (!v3)
  {
    v10 = *&v0[OBJC_IVAR___HRConceptHeaderCell_titleLabel];

    v9 = sub_1D139012C();

    [v10 setText_];
    goto LABEL_10;
  }

  v5 = [v0 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = sub_1D1390B5C();
  v8 = *&v0[OBJC_IVAR___HRConceptHeaderCell_titleLabel];
  if (v7)
  {
    v9 = sub_1D139012C();

    [v8 setText_];

LABEL_10:
    return;
  }

  v11 = [*&v0[OBJC_IVAR___HRConceptHeaderCell_titleLabel] font];
  if (v11)
  {
    v12 = v11;
    sub_1D106F934(0, &qword_1EC60C410);
    v13 = [v0 traitCollection];
    [v13 displayScale];
    v15 = v14;

    v16 = OBJC_IVAR___HRConceptHeaderCell_categoryColor;
    swift_beginAccess();
    v17 = *&v0[v16];
    v18 = objc_opt_self();
    v19 = v17;
    v20 = [v18 labelColor];
    v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v22 = v3;
    v23 = sub_1D139012C();

    v24 = [v21 initWithLeadingImage:v22 text:v23 font:v12 displayScale:v19 imageTintColor:v20 textColor:1 adjustsImageSizeForAccessibilityContentSizeCategory:v15];

    if ([v0 effectiveUserInterfaceLayoutDirection] == 1)
    {
      v25 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v26 = sub_1D139012C();
      v27 = [v25 initWithString_];

      [v24 insertAttributedString:v27 atIndex:0];
    }

    [v8 setAttributedText_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1D135857C()
{
  result = qword_1EC60FCF0;
  if (!qword_1EC60FCF0)
  {
    type metadata accessor for ConceptHeaderCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC60FCF0);
  }

  return result;
}

id ConceptHeaderCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1D139012C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id ConceptHeaderCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = OBJC_IVAR___HRConceptHeaderCell_titleLabel;
  *&v4[v7] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v8 = OBJC_IVAR___HRConceptHeaderCell_chevronView;
  v9 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v9 setContentMode_];
  sub_1D106F934(0, &qword_1EE06A540);
  v10 = sub_1D1390CFC();
  [v9 setImage_];

  v11 = [objc_opt_self() tertiaryLabelColor];
  [v9 setTintColor_];

  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v12) = 1148846080;
  [v9 setContentHuggingPriority:0 forAxis:v12];
  LODWORD(v13) = 1148846080;
  [v9 setContentCompressionResistancePriority:0 forAxis:v13];

  *&v4[v8] = v9;
  *&v4[OBJC_IVAR___HRConceptHeaderCell____lazy_storage___bottomConstraint] = 0;
  *&v4[OBJC_IVAR___HRConceptHeaderCell_headerImage] = 0;
  v14 = &v4[OBJC_IVAR___HRConceptHeaderCell_title];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v4[OBJC_IVAR___HRConceptHeaderCell_categoryColor] = 0;
  if (a3)
  {
    v15 = sub_1D139012C();
  }

  else
  {
    v15 = 0;
  }

  v18.receiver = v4;
  v18.super_class = type metadata accessor for ConceptHeaderCell();
  v16 = objc_msgSendSuper2(&v18, sel_initWithStyle_reuseIdentifier_, a1, v15);

  return v16;
}

id ConceptHeaderCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ConceptHeaderCell.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___HRConceptHeaderCell_titleLabel;
  *&v2[v4] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v5 = OBJC_IVAR___HRConceptHeaderCell_chevronView;
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v6 setContentMode_];
  sub_1D106F934(0, &qword_1EE06A540);
  v7 = sub_1D1390CFC();
  [v6 setImage_];

  v8 = [objc_opt_self() tertiaryLabelColor];
  [v6 setTintColor_];

  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v9) = 1148846080;
  [v6 setContentHuggingPriority:0 forAxis:v9];
  LODWORD(v10) = 1148846080;
  [v6 setContentCompressionResistancePriority:0 forAxis:v10];

  *&v2[v5] = v6;
  *&v2[OBJC_IVAR___HRConceptHeaderCell____lazy_storage___bottomConstraint] = 0;
  *&v2[OBJC_IVAR___HRConceptHeaderCell_headerImage] = 0;
  v11 = &v2[OBJC_IVAR___HRConceptHeaderCell_title];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v2[OBJC_IVAR___HRConceptHeaderCell_categoryColor] = 0;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for ConceptHeaderCell();
  v12 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);

  if (v12)
  {
  }

  return v12;
}

id ConceptHeaderCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConceptHeaderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D1358E70(uint64_t a1, unint64_t *a2, uint64_t a3, void *a4)
{
  sub_1D106F934(0, a2);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  *a4 = result;
  return result;
}

id BloodPressureChartSeries.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BloodPressureChartSeries.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureChartSeries();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BloodPressureChartSeries.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureChartSeries();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ProfileOnboardingActionViewController.init(context:)(uint64_t a1)
{
  v3 = sub_1D138E98C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v14 = *(v4 + 16);
  v23 = a1;
  v14(&v22 - v12, a1, v3, v11);
  v15 = qword_1EE0698B8;
  if (qword_1EE069ED0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EE06AA70;
  *(v1 + v15) = qword_1EE06AA70;
  v17 = (v1 + qword_1EE0698C0);
  *v17 = 0;
  v17[1] = 0;
  v17[2] = 2;
  (v14)(v9, v13, v3);
  (v14)(v6, v9, v3);
  v18 = v16;
  v19 = sub_1D138EB9C();
  v20 = *(v4 + 8);
  v20(v23, v3);
  v20(v9, v3);
  v20(v13, v3);
  return v19;
}

id sub_1D13593F4(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for NonDismissiblePromotionTileView(0);
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_1D1359468(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for NonDismissiblePromotionTileView(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_1D13594FC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D1359618()
{
  v1 = v0;
  v24 = sub_1D138DEBC();
  v2 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D138DA1C();
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = [objc_allocWithZone(type metadata accessor for NonDismissiblePromotionTileView(0)) initWithFrame_];
  v11 = sub_1D138DADC();
  v12 = qword_1EC60FD40;
  v13 = [*(v1 + qword_1EC60FD40) healthStore];
  v14 = sub_1D138DACC();
  sub_1D1359960(*(v1 + qword_1EC60FD48), *(v1 + qword_1EC60FD48 + 8), v9);
  v15 = *(v1 + v12);
  v16 = v10;
  v17 = [v15 healthStore];
  v27 = v11;
  v28 = MEMORY[0x1E69A3CF8];
  v26 = v14;
  (*(v25 + 16))(v6, v9, v4);
  (*(v2 + 104))(v23, *MEMORY[0x1E69A34F8], v24);
  v29[3] = sub_1D138EAFC();
  v29[4] = MEMORY[0x1E69A37D0];
  __swift_allocate_boxed_opaque_existential_1(v29);

  sub_1D138EAEC();
  sub_1D138E09C();

  result = sub_1D138E04C();
  if (result)
  {
    v19 = result;
    v20 = v16;
    sub_1D138ECBC();

    sub_1D138DA0C();
    if (v21)
    {
      sub_1D138E06C();

      return (*(v25 + 8))(v9, v4);
    }

    else
    {
      (*(v25 + 8))(v9, v4);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1359960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a1;
  v31 = a3;
  v23 = sub_1D138D97C();
  v22[4] = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v22[5] = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D138F0BC();
  v22[2] = *(v5 - 8);
  v22[3] = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D138DC1C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D138DC7C();
  v29 = *(v11 - 8);
  v30 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = qword_1EE06A528;
  v27 = a2;

  if (v14 != -1)
  {
    swift_once();
  }

  v28 = v13;
  v22[1] = v7;
  v25 = "OnboardingTableViewCell.swift";
  v15 = qword_1EE06B6C8;
  sub_1D138DC0C();
  v24 = v10;
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  sub_1D138D1CC();
  sub_1D138D1CC();
  sub_1D138D1CC();
  v16 = v28;
  sub_1D138DC6C();
  sub_1D138CF0C();
  swift_allocObject();
  sub_1D138CEFC();
  LOBYTE(v32) = 0;
  v33 = v26;
  v34 = v27;
  sub_1D11ECAA4();
  v17 = sub_1D138CEEC();
  v19 = v18;

  sub_1D1083D58(v17, v19);
  v20 = sub_1D138D99C();
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1D13910DC())
  {
    sub_1D135A404(MEMORY[0x1E69E7CC0]);
  }

  type metadata accessor for ProfileOnboardingActionViewController(0);
  sub_1D135A3AC();
  sub_1D138D9BC();

  sub_1D1083DAC(v17, v19);
  sub_1D1083DAC(v17, v19);
  return (*(v29 + 8))(v16, v30);
}

uint64_t sub_1D135A0D8()
{
}

uint64_t sub_1D135A134(uint64_t a1)
{
}

id sub_1D135A18C()
{
  v1 = [*(*v0 + qword_1EC60FD40) healthStore];

  return v1;
}

uint64_t sub_1D135A1D0(unint64_t a1, unint64_t a2)
{
  sub_1D106F934(0, &qword_1EC60B520);
  if (a2 >> 62)
  {
    v4 = sub_1D139140C();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    sub_1D13911EC();
    v6 = 0xD000000000000046;
    v5 = 0x80000001D13CDF40;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  sub_1D13911EC();
  v5 = 0x80000001D13CDEF0;
  v6 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x1D3885C10](v6, v5);
  v8 = sub_1D139184C();
  MEMORY[0x1D3885C10](v8);

  MEMORY[0x1D3885C10](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v9 = sub_1D139184C();
  MEMORY[0x1D3885C10](v9);

  result = sub_1D13913CC();
  __break(1u);
  return result;
}

unint64_t sub_1D135A3AC()
{
  result = qword_1EC60FD60;
  if (!qword_1EC60FD60)
  {
    type metadata accessor for ProfileOnboardingActionViewController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FD60);
  }

  return result;
}

void sub_1D135A404(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1D13910DC())
    {
LABEL_3:
      sub_1D112F0D4();
      v3 = sub_1D13911AC();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1D13910DC();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = sub_1D135A1D0(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1D1390D7C();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1D106F934(0, &qword_1EC60B520);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1D1390D8C();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_1D1390D7C();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1D106F934(0, &qword_1EC60B520);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1D1390D8C();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1D135A748()
{
  type metadata accessor for AccountActionCell();
  sub_1D135C13C(&qword_1EC60E7D0, v0, type metadata accessor for AccountActionCell);
  return sub_1D138DECC();
}

uint64_t sub_1D135A7AC()
{
  v2 = sub_1D139184C();
  MEMORY[0x1D3885C10](95, 0xE100000000000000);
  MEMORY[0x1D3885C10](*(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_labelText), *(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_labelText + 8));
  return v2;
}

uint64_t sub_1D135A834(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = v2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  if (Strong)
  {
    swift_getObjectType();
    v9 = qword_1EE069F90;
    swift_unknownObjectRetain();
    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_1D138D1CC();
    (*(v8 + 24))(v10);

    swift_unknownObjectRelease();
  }

  v11 = OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_accountID;
  v12 = swift_allocObject();
  v12[2] = Strong;
  v12[3] = v8;
  v12[4] = a1;
  v12[5] = a2;
  swift_unknownObjectRetain();

  sub_1D131CD38(v3 + v11, sub_1D135C194, v12);
  swift_unknownObjectRelease();
}

uint64_t sub_1D135A9D4()
{
  v1 = v0;
  v2 = sub_1D138F3FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15HealthRecordsUI17AccountActionCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v1 + v6, v27);
  if (!v28)
  {
    return sub_1D10A72B8(v27);
  }

  sub_1D10A7254();
  type metadata accessor for AccountActionItem();
  result = swift_dynamicCast();
  if (result)
  {
    v8 = v26[1];
    MEMORY[0x1D38864F0]();

    sub_1D138F3BC();
    v9 = *(v8 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_labelColor);
    v10 = sub_1D138F2FC();
    sub_1D138F2DC();
    v10(v27, 0);
    v11 = *(v8 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_labelFont);
    v12 = sub_1D138F2FC();
    sub_1D138F2CC();
    v12(v27, 0);
    if (*(v8 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_shouldAlignWithImageInsetText) == 1)
    {
      v13 = [v1 traitCollection];
      v14 = [v13 preferredContentSizeCategory];

      LOBYTE(v13) = sub_1D1390B5C();
      if ((v13 & 1) == 0)
      {
        v15 = [objc_opt_self() hk:45.0 transparentInterfaceImageWithSize:0.01];
        sub_1D138F3CC();
      }
    }

    v28 = v2;
    v29 = MEMORY[0x1E69DC110];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
    (*(v3 + 16))(boxed_opaque_existential_1, v5, v2);
    MEMORY[0x1D3886480](v27);
    sub_1D1086E1C();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D139E710;
    *(v17 + 32) = sub_1D139016C();
    *(v17 + 40) = v18;
    v19 = sub_1D139012C();
    v20 = [v19 removeSpecialCharactersAndWhiteSpaces];

    v21 = sub_1D139016C();
    v23 = v22;

    *(v17 + 48) = v21;
    *(v17 + 56) = v23;
    v24 = sub_1D139044C();

    v25 = HKUIJoinStringsForAutomationIdentifier();

    [v1 setAccessibilityIdentifier_];
    [v1 setAccessibilityTraits_];

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

id sub_1D135AEB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountActionCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D135AF18@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI17AccountActionCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

uint64_t sub_1D135AF70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI17AccountActionCell_item;
  swift_beginAccess();
  sub_1D10B1300(a1, v1 + v3);
  swift_endAccess();
  sub_1D135A9D4();
  return sub_1D10A72B8(a1);
}

uint64_t (*sub_1D135AFDC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D135B040;
}

uint64_t sub_1D135B040(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D135A9D4();
  }

  return result;
}

uint64_t sub_1D135B074()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_accountID;
  v2 = sub_1D138D5EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1D102CC38(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_delegate);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccountActionItem()
{
  result = qword_1EC60FD70;
  if (!qword_1EC60FD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D135B1B8()
{
  result = sub_1D138D5EC();
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

uint64_t sub_1D135B33C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1D135B3EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1D138FECC();
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D138FF0C();
  v13 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D108310C();
  v22 = sub_1D1390A7C();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a1;
  v16[5] = a4;
  v16[6] = a5;
  aBlock[4] = sub_1D135C1A0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_29_1;
  v17 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v18 = a1;

  sub_1D138FEEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D135C13C(&qword_1EE06B7E0, 255, MEMORY[0x1E69E7F60]);
  sub_1D135C210(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  sub_1D139103C();
  v19 = v22;
  MEMORY[0x1D3886400](0, v15, v12, v17);
  _Block_release(v17);

  (*(v24 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v23);
}

uint64_t sub_1D135B720(uint64_t result, uint64_t a2)
{
  if (result)
  {
    swift_getObjectType();
    if (qword_1EE069F90 != -1)
    {
      swift_once();
    }

    v3 = sub_1D138D1CC();
    (*(a2 + 24))(v3);
  }

  return result;
}

uint64_t sub_1D135B830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v20 = a5;
  v7 = sub_1D138FECC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D138FF0C();
  v11 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D108310C();
  v14 = sub_1D1390A7C();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  aBlock[4] = v19;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = v20;
  v16 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_1D138FEEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D135C13C(&qword_1EE06B7E0, 255, MEMORY[0x1E69E7F60]);
  sub_1D135C210(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  sub_1D139103C();
  MEMORY[0x1D3886400](0, v13, v10, v16);
  _Block_release(v16);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v21);
}

uint64_t sub_1D135BB08(uint64_t result, uint64_t a2)
{
  if (result)
  {
    swift_getObjectType();
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v3 = sub_1D138D1CC();
    (*(a2 + 24))(v3);
  }

  return result;
}

uint64_t sub_1D135BBF0(char a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1D138FECC();
  v25 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D138FF0C();
  v13 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D108310C();
  v23 = sub_1D1390A7C();
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a2;
  *(v16 + 40) = a1;
  *(v16 + 48) = a5;
  aBlock[4] = sub_1D135C110;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_80;
  v17 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v18 = a2;
  v19 = a5;

  sub_1D138FEEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D135C13C(&qword_1EE06B7E0, 255, MEMORY[0x1E69E7F60]);
  sub_1D135C210(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  sub_1D139103C();
  v20 = v23;
  MEMORY[0x1D3886400](0, v15, v12, v17);
  _Block_release(v17);

  (*(v25 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v24);
}

void sub_1D135BEFC(uint64_t a1, uint64_t a2, void *a3, char a4, void *a5)
{
  if (a1)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 32))(a3, nullsub_1, 0, ObjectType, a2);
  }

  if (a4)
  {
    if (a4 == 5)
    {
      if (qword_1EE069F90 == -1)
      {
        goto LABEL_9;
      }
    }

    else if (qword_1EE06AD00 == -1)
    {
LABEL_9:
      sub_1D138D1CC();
      v10 = sub_1D139012C();

      if (a3)
      {
        a3 = sub_1D138D2AC();
      }

      v11 = [objc_opt_self() basicAlertControllerWithTitle:0 message:v10 internalError:{a3, 0xE000000000000000}];

      [a5 presentViewController:v11 animated:1 completion:0];

      return;
    }

    swift_once();
    goto LABEL_9;
  }
}

uint64_t block_copy_helper_81(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D135C13C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D135C1A0()
{
  if (v0[2])
  {
    v2 = v0[5];
    v1 = v0[6];
    v4 = v0[3];
    v3 = v0[4];
    ObjectType = swift_getObjectType();
    (*(v4 + 32))(v3, v2, v1, ObjectType, v4);
  }
}

void sub_1D135C210(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id ProviderNotFoundView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ProviderNotFoundView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDD58] scale:2];
  v10 = sub_1D139012C();
  v11 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

  v12 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  *&v4[OBJC_IVAR___HRProviderNotFoundView_glyphView] = v12;
  v13 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *&v4[OBJC_IVAR___HRProviderNotFoundView_providerStatusLabel] = v13;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for ProviderNotFoundView();
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1D135C500();

  return v14;
}

id sub_1D135C500()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = *&v0[OBJC_IVAR___HRProviderNotFoundView_glyphView];
  v2 = objc_opt_self();
  v3 = [v2 secondaryLabelColor];
  [v1 setTintColor_];

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v4 = [v1 centerXAnchor];
  v5 = [v0 centerXAnchor];
  v6 = [v4 constraintEqualToAnchor_];

  [v6 setActive_];
  v7 = [v1 topAnchor];
  v8 = [v0 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:16.0];

  [v9 setActive_];
  LODWORD(v10) = 1148846080;
  [v1 setContentCompressionResistancePriority:1 forAxis:v10];
  v11 = *&v0[OBJC_IVAR___HRProviderNotFoundView_providerStatusLabel];
  [v11 setAdjustsFontForContentSizeCategory_];
  v12 = [objc_opt_self() preferredFontForTextStyle_];
  [v11 setFont_];

  [v11 setNumberOfLines_];
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v13 = sub_1D139012C();

  [v11 setText_];

  [v11 setLineBreakMode_];
  [v11 setTextAlignment_];
  v14 = [v2 systemGrayColor];
  [v11 setTextColor_];

  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v15 = [v11 leadingAnchor];
  v16 = [v0 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:16.0];

  [v17 setActive_];
  v18 = [v11 trailingAnchor];
  v19 = [v0 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:-16.0];

  [v20 setActive_];
  v21 = [v11 topAnchor];
  v22 = [v1 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:12.0];

  [v23 setActive_];
  v24 = [v11 bottomAnchor];
  v25 = [v0 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:8.0];

  [v26 setActive_];
  type metadata accessor for UILayoutPriority(0);
  sub_1D11965C4();
  sub_1D138F0DC();
  LODWORD(v27) = v29;
  return [v11 setContentCompressionResistancePriority:1 forAxis:v27];
}

id ProviderNotFoundView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProviderNotFoundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D135CB04()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D135CB40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D135CB88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D135CC04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_1D135CC4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D135CCC4(void *a1)
{
  v3 = v1;
  sub_1D135FB24(0, &qword_1EC60FE30, sub_1D135E644, &_s13SortedSectionV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D135E644();
  sub_1D139181C();
  v15 = 0;
  sub_1D139155C();
  if (!v2)
  {
    v14 = 1;
    sub_1D139155C();
    v11 = *(v3 + 32);
    v12 = *(v3 + 40);
    v13 = 2;
    sub_1D135E6EC();
    sub_1D139158C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D135CEA4(void *a1, uint64_t a2, int a3)
{
  v51 = a3;
  v52 = a2;
  v4 = MEMORY[0x1E69E6F58];
  sub_1D135FB24(0, &qword_1EC60FFB0, sub_1D135F2B8, &_s13SortedRecordsO18MetadataCodingKeysON, MEMORY[0x1E69E6F58]);
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v37 - v6;
  sub_1D135FB24(0, &qword_1EC60FFB8, sub_1D135F30C, &_s13SortedRecordsO21ThreeValuesCodingKeysON, v4);
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v37 - v8;
  sub_1D135FB24(0, &qword_1EC60FFC0, sub_1D135F360, &_s13SortedRecordsO22ValueInRangeCodingKeysON, v4);
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v37 - v10;
  sub_1D135FB24(0, &qword_1EC60FFC8, sub_1D135F3B4, &_s13SortedRecordsO15ValueCodingKeysON, v4);
  v48 = *(v11 - 8);
  v49 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  sub_1D135FB24(0, &qword_1EC60FFD0, sub_1D135F408, &_s13SortedRecordsO15PlainCodingKeysON, v4);
  v15 = v14;
  v47 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - v16;
  sub_1D135FB24(0, &qword_1EC60FFD8, sub_1D135F45C, &_s13SortedRecordsO10CodingKeysON, v4);
  v50 = v18;
  v53 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D135F45C();
  v21 = v20;
  sub_1D139181C();
  if (v51 <= 1u)
  {
    v27 = v17;
    v29 = v47;
    v28 = v48;
    v30 = v49;
    if (v51)
    {
      LOBYTE(v54) = 1;
      sub_1D135F3B4();
      v36 = v50;
      sub_1D139152C();
      v54 = v52;
      sub_1D135F5E4(0, &qword_1EC60FF80, &qword_1EC60AC20, sub_1D10FA2F0, &_s20FormattedRecordValueVN);
      sub_1D135FF28();
      sub_1D139158C();
      (*(v28 + 8))(v13, v30);
      return (*(v53 + 8))(v21, v36);
    }

    LOBYTE(v54) = 0;
    sub_1D135F408();
    v31 = v50;
    v32 = v21;
    sub_1D139152C();
    v54 = v52;
    sub_1D135F5E4(0, &qword_1EC60FF98, &qword_1EC60AC08, sub_1D10FA220, &_s15FormattedRecordVN);
    sub_1D136005C();
    sub_1D139158C();
    (*(v29 + 8))(v27, v15);
    return (*(v53 + 8))(v32, v31);
  }

  if (v51 == 2)
  {
    LOBYTE(v54) = 2;
    sub_1D135F360();
    v33 = v38;
    v31 = v50;
    v32 = v20;
    sub_1D139152C();
    v54 = v52;
    sub_1D135F5E4(0, &qword_1EC60FF68, &qword_1EC60AC38, sub_1D10FA3C0, &_s27FormattedRecordValueInRangeVN);
    sub_1D135FDF4();
    v34 = v40;
    sub_1D139158C();
    (*(v39 + 8))(v33, v34);
    return (*(v53 + 8))(v32, v31);
  }

  v22 = v50;
  v23 = v20;
  if (v51 == 3)
  {
    LOBYTE(v54) = 3;
    sub_1D135F30C();
    v24 = v41;
    sub_1D139152C();
    v54 = v52;
    sub_1D135F5E4(0, &qword_1EC60FF50, &qword_1EC60AC50, sub_1D10FA490, &_s22FormattedRecord3ValuesVN);
    sub_1D135FCC0();
    v25 = v43;
    sub_1D139158C();
    v26 = v42;
  }

  else
  {
    LOBYTE(v54) = 4;
    sub_1D135F2B8();
    v24 = v44;
    sub_1D139152C();
    v54 = v52;
    sub_1D135F5E4(0, &qword_1EC60FF38, &qword_1EC60AC68, sub_1D10FA5C0, &_s23FormattedRecordMetadataVN);
    sub_1D135FB8C();
    v25 = v46;
    sub_1D139158C();
    v26 = v45;
  }

  (*(v26 + 8))(v24, v25);
  return (*(v53 + 8))(v23, v22);
}

uint64_t sub_1D135D6E8(uint64_t a1)
{
  v2 = sub_1D135E644();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D135D724(uint64_t a1)
{
  v2 = sub_1D135E644();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D135D760@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D135E3A4(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1D135D7BC(uint64_t a1)
{
  v2 = sub_1D135F45C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D135D7F8(uint64_t a1)
{
  v2 = sub_1D135F45C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D135D834(uint64_t a1)
{
  v2 = sub_1D135F2B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D135D870(uint64_t a1)
{
  v2 = sub_1D135F2B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D135D8AC(uint64_t a1)
{
  v2 = sub_1D135F408();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D135D8E8(uint64_t a1)
{
  v2 = sub_1D135F408();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D135D924(uint64_t a1)
{
  v2 = sub_1D135F30C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D135D960(uint64_t a1)
{
  v2 = sub_1D135F30C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D135D99C(uint64_t a1)
{
  v2 = sub_1D135F3B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D135D9D8(uint64_t a1)
{
  v2 = sub_1D135F3B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D135DA14(uint64_t a1)
{
  v2 = sub_1D135F360();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D135DA50(uint64_t a1)
{
  v2 = sub_1D135F360();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D135DA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D135E8BC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_1D135DADC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D139162C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xE800000000000000 || (sub_1D139162C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7364726F636572 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D139162C();

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

uint64_t sub_1D135DC28(unsigned __int8 a1)
{
  sub_1D139177C();
  MEMORY[0x1D38870E0](a1);
  return sub_1D13917CC();
}

uint64_t sub_1D135DC70(char a1)
{
  if (!a1)
  {
    return 0x656C746974;
  }

  if (a1 == 1)
  {
    return 0x72656469766F7270;
  }

  return 0x7364726F636572;
}

uint64_t sub_1D135DCC4(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 24);
  v15 = *(a2 + 16);
  v14 = v5;
  _s12SortedRecordV10CodingKeysOMa();
  swift_getWitnessTable();
  v6 = sub_1D139159C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D139181C();
  LOBYTE(v19) = 0;
  v10 = v16;
  sub_1D139155C();
  if (!v10)
  {
    v11 = v14;
    LOBYTE(v19) = 1;
    sub_1D139153C();
    v19 = *(v3 + 32);
    v18 = 2;
    sub_1D139052C();
    v17 = *(v11 + 16);
    swift_getWitnessTable();
    sub_1D139158C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D135DED4@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v23 = a3;
  _s12SortedRecordV10CodingKeysOMa();
  swift_getWitnessTable();
  v24 = sub_1D139151C();
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D13917FC();
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v21 = a1;
  v8 = v22;
  v9 = v23;
  LOBYTE(v27) = 0;
  v10 = v24;
  v19 = sub_1D13914CC();
  v20 = v11;
  LOBYTE(v27) = 1;
  v17 = sub_1D13914AC();
  v18 = v12;
  sub_1D139052C();
  v26 = 2;
  v25 = *(a2 + 8);
  swift_getWitnessTable();
  sub_1D13914FC();
  (*(v8 + 8))(v7, v10);
  v13 = v27;
  result = __swift_destroy_boxed_opaque_existential_1Tm(v21);
  v15 = v20;
  *v9 = v19;
  v9[1] = v15;
  v16 = v18;
  v9[2] = v17;
  v9[3] = v16;
  v9[4] = v13;
  return result;
}

uint64_t sub_1D135E1CC()
{
  sub_1D139177C();
  sub_1D135DC00(v2, *v0);
  return sub_1D13917CC();
}

uint64_t sub_1D135E220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D135DADC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D135E250@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D135F2B0();
  *a1 = result;
  return result;
}

uint64_t sub_1D135E27C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D135E2D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

double sub_1D135E324@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D135DED4(a1, *(a2 + 24), v7);
  if (!v3)
  {
    result = *v7;
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    *(a3 + 32) = v8;
  }

  return result;
}

uint64_t sub_1D135E3A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_1D135FB24(0, &qword_1EC60FE18, sub_1D135E644, &_s13SortedSectionV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D135E644();
  sub_1D13917FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v9 = v6;
  v10 = v22;
  v27 = 0;
  v11 = sub_1D13914CC();
  v13 = v12;
  v21 = v11;
  v26 = 1;
  v19 = sub_1D13914CC();
  v20 = v14;
  v25 = 2;
  sub_1D135E698();
  sub_1D13914FC();
  (*(v9 + 8))(v8, v5);
  v15 = v23;
  v16 = v24;
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *v10 = v21;
  *(v10 + 8) = v13;
  v18 = v20;
  *(v10 + 16) = v19;
  *(v10 + 24) = v18;
  *(v10 + 32) = v15;
  *(v10 + 40) = v16;
  return result;
}

unint64_t sub_1D135E644()
{
  result = qword_1EC60FE20;
  if (!qword_1EC60FE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FE20);
  }

  return result;
}

unint64_t sub_1D135E698()
{
  result = qword_1EC60FE28;
  if (!qword_1EC60FE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FE28);
  }

  return result;
}

unint64_t sub_1D135E6EC()
{
  result = qword_1EC60FE38[0];
  if (!qword_1EC60FE38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC60FE38);
  }

  return result;
}

unint64_t sub_1D135E780()
{
  result = qword_1EC60FEC0;
  if (!qword_1EC60FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FEC0);
  }

  return result;
}

unint64_t sub_1D135E7D8()
{
  result = qword_1EC60FEC8;
  if (!qword_1EC60FEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FEC8);
  }

  return result;
}

unint64_t sub_1D135E830()
{
  result = qword_1EC60FED0;
  if (!qword_1EC60FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FED0);
  }

  return result;
}

uint64_t sub_1D135E8BC(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6F48];
  sub_1D135FB24(0, &qword_1EC60FED8, sub_1D135F2B8, &_s13SortedRecordsO18MetadataCodingKeysON, MEMORY[0x1E69E6F48]);
  v49 = v3;
  v51 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v42 - v4;
  sub_1D135FB24(0, &qword_1EC60FEE8, sub_1D135F30C, &_s13SortedRecordsO21ThreeValuesCodingKeysON, v2);
  v48 = v5;
  v50 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v42 - v6;
  sub_1D135FB24(0, &qword_1EC60FEF8, sub_1D135F360, &_s13SortedRecordsO22ValueInRangeCodingKeysON, v2);
  v8 = *(v7 - 8);
  v46 = v7;
  v47 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v42 - v9;
  sub_1D135FB24(0, &qword_1EC60FF08, sub_1D135F3B4, &_s13SortedRecordsO15ValueCodingKeysON, v2);
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v42 - v11;
  sub_1D135FB24(0, &qword_1EC60FF18, sub_1D135F408, &_s13SortedRecordsO15PlainCodingKeysON, v2);
  v13 = v12;
  v43 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - v14;
  sub_1D135FB24(0, &qword_1EC60FF28, sub_1D135F45C, &_s13SortedRecordsO10CodingKeysON, v2);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = *(a1 + 24);
  v19 = *(a1 + 32);
  v57 = a1;
  v21 = a1;
  v23 = &v42 - v22;
  __swift_project_boxed_opaque_existential_1Tm(v21, v20);
  sub_1D135F45C();
  v56 = v23;
  v24 = v58;
  sub_1D13917FC();
  if (!v24)
  {
    v58 = v13;
    v26 = v53;
    v25 = v54;
    v27 = v55;
    v28 = sub_1D139150C();
    v29 = (2 * *(v28 + 16)) | 1;
    v59 = v28;
    v60 = v28 + 32;
    v61 = 0;
    v62 = v29;
    v30 = sub_1D11ED440();
    if (v30 != 5 && v61 == v62 >> 1)
    {
      if (v30 <= 1u)
      {
        if (!v30)
        {
          LOBYTE(v63) = 0;
          sub_1D135F408();
          sub_1D139148C();
          sub_1D135F5E4(0, &qword_1EC60FF98, &qword_1EC60AC08, sub_1D10FA220, &_s15FormattedRecordVN);
          sub_1D135F9F0();
          v37 = v58;
          sub_1D13914FC();
          (*(v43 + 8))(v15, v37);
LABEL_17:
          (*(v18 + 8))(v56, v17);
          swift_unknownObjectRelease();
          v19 = v63;
          __swift_destroy_boxed_opaque_existential_1Tm(v57);
          return v19;
        }

        LOBYTE(v63) = 1;
        sub_1D135F3B4();
        sub_1D139148C();
        sub_1D135F5E4(0, &qword_1EC60FF80, &qword_1EC60AC20, sub_1D10FA2F0, &_s20FormattedRecordValueVN);
        sub_1D135F8BC();
        v38 = v45;
        sub_1D13914FC();
        v41 = v44;
      }

      else
      {
        if (v30 != 2)
        {
          if (v30 == 3)
          {
            LOBYTE(v63) = 3;
            sub_1D135F30C();
            sub_1D139148C();
            sub_1D135F5E4(0, &qword_1EC60FF50, &qword_1EC60AC50, sub_1D10FA490, &_s22FormattedRecord3ValuesVN);
            sub_1D135F654();
            v31 = v48;
            v32 = v52;
            sub_1D13914FC();
            (*(v50 + 8))(v32, v31);
          }

          else
          {
            LOBYTE(v63) = 4;
            sub_1D135F2B8();
            sub_1D139148C();
            sub_1D135F5E4(0, &qword_1EC60FF38, &qword_1EC60AC68, sub_1D10FA5C0, &_s23FormattedRecordMetadataVN);
            sub_1D135F4B0();
            v39 = v49;
            sub_1D13914FC();
            (*(v51 + 8))(v27, v39);
          }

          goto LABEL_17;
        }

        LOBYTE(v63) = 2;
        sub_1D135F360();
        v26 = v25;
        sub_1D139148C();
        sub_1D135F5E4(0, &qword_1EC60FF68, &qword_1EC60AC38, sub_1D10FA3C0, &_s27FormattedRecordValueInRangeVN);
        sub_1D135F788();
        v38 = v46;
        sub_1D13914FC();
        v41 = v47;
      }

      (*(v41 + 8))(v26, v38);
      goto LABEL_17;
    }

    v19 = sub_1D139126C();
    swift_allocError();
    v33 = v17;
    v35 = v34;
    sub_1D115427C();
    *v35 = &_s13SortedRecordsON;
    v36 = v56;
    sub_1D139149C();
    sub_1D139124C();
    (*(*(v19 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v18 + 8))(v36, v33);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  return v19;
}

unint64_t sub_1D135F2B8()
{
  result = qword_1EC60FEE0;
  if (!qword_1EC60FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FEE0);
  }

  return result;
}

unint64_t sub_1D135F30C()
{
  result = qword_1EC60FEF0;
  if (!qword_1EC60FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FEF0);
  }

  return result;
}

unint64_t sub_1D135F360()
{
  result = qword_1EC60FF00;
  if (!qword_1EC60FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FF00);
  }

  return result;
}

unint64_t sub_1D135F3B4()
{
  result = qword_1EC60FF10;
  if (!qword_1EC60FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FF10);
  }

  return result;
}

unint64_t sub_1D135F408()
{
  result = qword_1EC60FF20;
  if (!qword_1EC60FF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FF20);
  }

  return result;
}

unint64_t sub_1D135F45C()
{
  result = qword_1EC60FF30;
  if (!qword_1EC60FF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FF30);
  }

  return result;
}

unint64_t sub_1D135F4B0()
{
  result = qword_1EC60FF40;
  if (!qword_1EC60FF40)
  {
    sub_1D135F5E4(255, &qword_1EC60FF38, &qword_1EC60AC68, sub_1D10FA5C0, &_s23FormattedRecordMetadataVN);
    sub_1D135F554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FF40);
  }

  return result;
}

unint64_t sub_1D135F554()
{
  result = qword_1EC60FF48;
  if (!qword_1EC60FF48)
  {
    sub_1D135FB24(255, &qword_1EC60AC68, sub_1D10FA5C0, &_s23FormattedRecordMetadataVN, _s12SortedRecordVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FF48);
  }

  return result;
}

void sub_1D135F5E4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    sub_1D135FB24(255, a3, a4, a5, _s12SortedRecordVMa);
    v6 = sub_1D139052C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D135F654()
{
  result = qword_1EC60FF58;
  if (!qword_1EC60FF58)
  {
    sub_1D135F5E4(255, &qword_1EC60FF50, &qword_1EC60AC50, sub_1D10FA490, &_s22FormattedRecord3ValuesVN);
    sub_1D135F6F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FF58);
  }

  return result;
}

unint64_t sub_1D135F6F8()
{
  result = qword_1EC60FF60;
  if (!qword_1EC60FF60)
  {
    sub_1D135FB24(255, &qword_1EC60AC50, sub_1D10FA490, &_s22FormattedRecord3ValuesVN, _s12SortedRecordVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FF60);
  }

  return result;
}

unint64_t sub_1D135F788()
{
  result = qword_1EC60FF70;
  if (!qword_1EC60FF70)
  {
    sub_1D135F5E4(255, &qword_1EC60FF68, &qword_1EC60AC38, sub_1D10FA3C0, &_s27FormattedRecordValueInRangeVN);
    sub_1D135F82C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FF70);
  }

  return result;
}

unint64_t sub_1D135F82C()
{
  result = qword_1EC60FF78;
  if (!qword_1EC60FF78)
  {
    sub_1D135FB24(255, &qword_1EC60AC38, sub_1D10FA3C0, &_s27FormattedRecordValueInRangeVN, _s12SortedRecordVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FF78);
  }

  return result;
}

unint64_t sub_1D135F8BC()
{
  result = qword_1EC60FF88;
  if (!qword_1EC60FF88)
  {
    sub_1D135F5E4(255, &qword_1EC60FF80, &qword_1EC60AC20, sub_1D10FA2F0, &_s20FormattedRecordValueVN);
    sub_1D135F960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FF88);
  }

  return result;
}

unint64_t sub_1D135F960()
{
  result = qword_1EC60FF90;
  if (!qword_1EC60FF90)
  {
    sub_1D135FB24(255, &qword_1EC60AC20, sub_1D10FA2F0, &_s20FormattedRecordValueVN, _s12SortedRecordVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FF90);
  }

  return result;
}

unint64_t sub_1D135F9F0()
{
  result = qword_1EC60FFA0;
  if (!qword_1EC60FFA0)
  {
    sub_1D135F5E4(255, &qword_1EC60FF98, &qword_1EC60AC08, sub_1D10FA220, &_s15FormattedRecordVN);
    sub_1D135FA94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FFA0);
  }

  return result;
}

unint64_t sub_1D135FA94()
{
  result = qword_1EC60FFA8;
  if (!qword_1EC60FFA8)
  {
    sub_1D135FB24(255, &qword_1EC60AC08, sub_1D10FA220, &_s15FormattedRecordVN, _s12SortedRecordVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FFA8);
  }

  return result;
}

void sub_1D135FB24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D135FB8C()
{
  result = qword_1EC60FFE0;
  if (!qword_1EC60FFE0)
  {
    sub_1D135F5E4(255, &qword_1EC60FF38, &qword_1EC60AC68, sub_1D10FA5C0, &_s23FormattedRecordMetadataVN);
    sub_1D135FC30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FFE0);
  }

  return result;
}

unint64_t sub_1D135FC30()
{
  result = qword_1EC60FFE8;
  if (!qword_1EC60FFE8)
  {
    sub_1D135FB24(255, &qword_1EC60AC68, sub_1D10FA5C0, &_s23FormattedRecordMetadataVN, _s12SortedRecordVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FFE8);
  }

  return result;
}

unint64_t sub_1D135FCC0()
{
  result = qword_1EC60FFF0;
  if (!qword_1EC60FFF0)
  {
    sub_1D135F5E4(255, &qword_1EC60FF50, &qword_1EC60AC50, sub_1D10FA490, &_s22FormattedRecord3ValuesVN);
    sub_1D135FD64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FFF0);
  }

  return result;
}

unint64_t sub_1D135FD64()
{
  result = qword_1EC60FFF8;
  if (!qword_1EC60FFF8)
  {
    sub_1D135FB24(255, &qword_1EC60AC50, sub_1D10FA490, &_s22FormattedRecord3ValuesVN, _s12SortedRecordVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FFF8);
  }

  return result;
}

unint64_t sub_1D135FDF4()
{
  result = qword_1EC610000;
  if (!qword_1EC610000)
  {
    sub_1D135F5E4(255, &qword_1EC60FF68, &qword_1EC60AC38, sub_1D10FA3C0, &_s27FormattedRecordValueInRangeVN);
    sub_1D135FE98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC610000);
  }

  return result;
}

unint64_t sub_1D135FE98()
{
  result = qword_1EC610008;
  if (!qword_1EC610008)
  {
    sub_1D135FB24(255, &qword_1EC60AC38, sub_1D10FA3C0, &_s27FormattedRecordValueInRangeVN, _s12SortedRecordVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC610008);
  }

  return result;
}

unint64_t sub_1D135FF28()
{
  result = qword_1EC610010;
  if (!qword_1EC610010)
  {
    sub_1D135F5E4(255, &qword_1EC60FF80, &qword_1EC60AC20, sub_1D10FA2F0, &_s20FormattedRecordValueVN);
    sub_1D135FFCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC610010);
  }

  return result;
}

unint64_t sub_1D135FFCC()
{
  result = qword_1EC610018;
  if (!qword_1EC610018)
  {
    sub_1D135FB24(255, &qword_1EC60AC20, sub_1D10FA2F0, &_s20FormattedRecordValueVN, _s12SortedRecordVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC610018);
  }

  return result;
}

unint64_t sub_1D136005C()
{
  result = qword_1EC610020;
  if (!qword_1EC610020)
  {
    sub_1D135F5E4(255, &qword_1EC60FF98, &qword_1EC60AC08, sub_1D10FA220, &_s15FormattedRecordVN);
    sub_1D1360100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC610020);
  }

  return result;
}

unint64_t sub_1D1360100()
{
  result = qword_1EC610028;
  if (!qword_1EC610028)
  {
    sub_1D135FB24(255, &qword_1EC60AC08, sub_1D10FA220, &_s15FormattedRecordVN, _s12SortedRecordVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC610028);
  }

  return result;
}

unint64_t sub_1D13601F4()
{
  result = qword_1EC610030;
  if (!qword_1EC610030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC610030);
  }

  return result;
}

unint64_t sub_1D136024C()
{
  result = qword_1EC610038;
  if (!qword_1EC610038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC610038);
  }

  return result;
}

unint64_t sub_1D13602A4()
{
  result = qword_1EC610040;
  if (!qword_1EC610040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC610040);
  }

  return result;
}

unint64_t sub_1D13602FC()
{
  result = qword_1EC610048;
  if (!qword_1EC610048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC610048);
  }

  return result;
}

unint64_t sub_1D1360354()
{
  result = qword_1EC610050;
  if (!qword_1EC610050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC610050);
  }

  return result;
}

unint64_t sub_1D13603AC()
{
  result = qword_1EC610058;
  if (!qword_1EC610058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC610058);
  }

  return result;
}

unint64_t sub_1D1360404()
{
  result = qword_1EC610060;
  if (!qword_1EC610060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC610060);
  }

  return result;
}

unint64_t sub_1D136045C()
{
  result = qword_1EC610068;
  if (!qword_1EC610068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC610068);
  }

  return result;
}

unint64_t sub_1D13604B4()
{
  result = qword_1EC610070;
  if (!qword_1EC610070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC610070);
  }

  return result;
}

unint64_t sub_1D136050C()
{
  result = qword_1EC610078;
  if (!qword_1EC610078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC610078);
  }

  return result;
}

unint64_t sub_1D1360564()
{
  result = qword_1EC610080;
  if (!qword_1EC610080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC610080);
  }

  return result;
}

unint64_t sub_1D13605BC()
{
  result = qword_1EC610088;
  if (!qword_1EC610088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC610088);
  }

  return result;
}

unint64_t sub_1D1360614()
{
  result = qword_1EC610090;
  if (!qword_1EC610090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC610090);
  }

  return result;
}

unint64_t sub_1D136066C()
{
  result = qword_1EC610098;
  if (!qword_1EC610098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC610098);
  }

  return result;
}

unint64_t sub_1D13606C4()
{
  result = qword_1EC6100A0;
  if (!qword_1EC6100A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6100A0);
  }

  return result;
}

unint64_t sub_1D136071C()
{
  result = qword_1EC6100A8;
  if (!qword_1EC6100A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6100A8);
  }

  return result;
}

unint64_t sub_1D1360774()
{
  result = qword_1EC6100B0;
  if (!qword_1EC6100B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6100B0);
  }

  return result;
}

unint64_t sub_1D13607CC()
{
  result = qword_1EC6100B8;
  if (!qword_1EC6100B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6100B8);
  }

  return result;
}

uint64_t sub_1D136082C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

id sub_1D136086C()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordDetailDataSourceProvider____lazy_storage___signedClinicalDataStore;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordDetailDataSourceProvider____lazy_storage___signedClinicalDataStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordDetailDataSourceProvider____lazy_storage___signedClinicalDataStore);
  }

  else
  {
    v4 = [*(v0 + 24) healthStore];
    v5 = [objc_allocWithZone(MEMORY[0x1E69A3FD8]) initWithHealthStore_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1D13609A0()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordDetailDataSourceProvider____lazy_storage___recordSourceDataSource;
  if (*(v0 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordDetailDataSourceProvider____lazy_storage___recordSourceDataSource))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordDetailDataSourceProvider____lazy_storage___recordSourceDataSource);
  }

  else
  {
    v3 = [*(v0 + 16) sourceRevision];
    v4 = [v3 source];

    v5 = [*(v0 + 24) clinicalSourcesDataProvider];
    type metadata accessor for RecordSourceDataSource();
    swift_allocObject();
    v2 = sub_1D113949C(v4, v5);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1D1360AC8(uint64_t *a1, uint64_t (*a2)(void), void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(v4 + *a1);
  v8 = v7;
  if (v7 == 1)
  {
    v8 = a2();
    v10 = *(v4 + v6);
    *(v4 + v6) = v8;

    a3(v10);
  }

  a4(v7);
  return v8;
}

uint64_t sub_1D1360BA4()
{
  v1 = v0;
  v57 = *v0;
  sub_1D1364124();
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v58 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D13641E8();
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1D1363FAC(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v68 = MEMORY[0x1E69E8050];
  v69 = &v54 - v8;
  sub_1D1363FAC(0, &qword_1EE06A620, MEMORY[0x1E69E8050], v6);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v54 - v10;
  sub_1D12AF69C();
  v64 = v12;
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1364428();
  v17 = *(v16 - 8);
  v66 = v16;
  v67 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v65 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [v1[3] clinicalAccountStore];
  v20 = [v1[2] sourceRevision];
  v21 = [v20 source];

  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = v21;
  v23 = MEMORY[0x1E695C028];
  sub_1D13642E4(0, &qword_1EC60EB40, &qword_1EC609A00, 0x1E69A3F00, MEMORY[0x1E695C028]);
  sub_1D13643D0(&qword_1EC60EB48, &qword_1EC60EB40, v23);
  v24 = v19;
  v25 = v21;
  sub_1D138F75C();
  sub_1D136452C(&qword_1EC60EB58, sub_1D12AF69C);
  v26 = v64;
  v27 = sub_1D138F80C();

  (*(v13 + 8))(v15, v26);
  v71 = v27;
  sub_1D106F934(0, &qword_1EE06B760);
  v28 = sub_1D1390A7C();
  v70 = v28;
  v29 = sub_1D1390A2C();
  v30 = *(v29 - 8);
  v55 = *(v30 + 56);
  v56 = v29;
  v54 = v30 + 56;
  v55(v11, 1, 1);
  v31 = MEMORY[0x1E695BED0];
  sub_1D13642E4(0, &qword_1EC60EB68, &qword_1EC609A00, 0x1E69A3F00, MEMORY[0x1E695BED0]);
  sub_1D13643D0(&qword_1EC60EB70, &qword_1EC60EB68, v31);
  v32 = sub_1D10EDC58();
  v33 = v65;
  sub_1D138F8BC();
  v64 = v11;
  sub_1D1364574(v11, &qword_1EE06A620, v68);

  sub_1D136452C(&qword_1EC610140, sub_1D1364428);

  v34 = v66;
  sub_1D138F7FC();

  (*(v67 + 8))(v33, v34);
  v35 = [v1[2] originIdentifier];
  v36 = [v35 signedClinicalDataRecordIdentifier];

  if (v36)
  {
    v37 = v69;
    sub_1D138D5CC();

    v38 = sub_1D138D5EC();
    (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
    sub_1D1364574(v37, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
    v39 = sub_1D136086C();
    v40 = swift_allocObject();
    v40[2] = v39;
    v40[3] = v1;
    v40[4] = 11;
    v40[5] = v57;
    v41 = MEMORY[0x1E695C028];
    sub_1D13642E4(0, &qword_1EC610108, &qword_1EC610110, 0x1E69A3FB8, MEMORY[0x1E695C028]);
    v69 = v32;
    sub_1D1364378(&qword_1EC610118, &qword_1EC610108, v41);

    v42 = v39;
    v43 = v58;
    sub_1D138F75C();
    sub_1D136452C(&qword_1EC610148, sub_1D1364124);
    v44 = v60;
    v45 = sub_1D138F80C();

    (*(v59 + 8))(v43, v44);
    v71 = v45;
    v46 = sub_1D1390A7C();
    v70 = v46;
    v47 = v64;
    (v55)(v64, 1, 1, v56);
    v48 = MEMORY[0x1E695BED0];
    sub_1D13642E4(0, &qword_1EC610128, &qword_1EC610110, 0x1E69A3FB8, MEMORY[0x1E695BED0]);
    sub_1D1364378(&qword_1EC610130, &qword_1EC610128, v48);
    v49 = v61;
    sub_1D138F8BC();
    sub_1D1364574(v47, &qword_1EE06A620, MEMORY[0x1E69E8050]);

    sub_1D136452C(&qword_1EC610150, sub_1D13641E8);

    v50 = v63;
    sub_1D138F7FC();

    return (*(v62 + 8))(v49, v50);
  }

  else
  {
    v52 = sub_1D138D5EC();
    v53 = v69;
    (*(*(v52 - 8) + 56))(v69, 1, 1, v52);
    return sub_1D1364574(v53, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  }
}

void sub_1D1361618(void *a1)
{
  v2 = v1;
  v45[0] = sub_1D13619F8(a1);
  v45[1] = v3;
  v4 = v1[2];
  v5 = v1[3];
  type metadata accessor for RecordDetailsDataSource();
  v6 = swift_allocObject();
  *(v6 + qword_1EC60C4F0) = v4;
  v7 = v4;
  v8 = v5;
  v9 = [v8 healthRecordsStore];
  *(v6 + qword_1EC60C4F8) = v9;
  v10 = [v8 conceptStore];
  *(v6 + qword_1EC60C500) = v10;
  v11 = sub_1D138EA8C();

  sub_1D11917D4();

  v12 = MEMORY[0x1E69A3698];
  v45[2] = v11;
  v45[3] = MEMORY[0x1E69A3698];
  v13 = sub_1D1360910();
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v45[4] = v13;
  v45[5] = v14;
  v15 = sub_1D1360958();
  if (v15)
  {
    v16 = v12;
  }

  else
  {
    v16 = 0;
  }

  v45[6] = v15;
  v45[7] = v16;
  v17 = v2[2];
  v18 = v2[4];
  v19 = v2[5];
  type metadata accessor for RecordAttachmentsDataSource();
  swift_allocObject();
  v20 = v18;
  v45[8] = sub_1D11192D0(v17, v20, v19);
  v45[9] = v12;
  v21 = v2[2];
  type metadata accessor for RecordDisplayNamesDataSource();
  swift_allocObject();
  v45[10] = sub_1D10B68C4(v21, v20);
  v45[11] = v12;
  v45[12] = sub_1D13609A0();
  v45[13] = v12;
  v22 = v2[2];
  type metadata accessor for FHIRSourceDataSource();
  swift_allocObject();
  v23 = v22;
  v24 = sub_1D12F03A4(v8, v23);

  v45[14] = v24;
  v45[15] = MEMORY[0x1E69A35A0];
  v25 = sub_1D1360A80();
  if (v25)
  {
    v26 = v12;
  }

  else
  {
    v26 = 0;
  }

  v45[16] = v25;
  v45[17] = v26;
  v27 = [objc_opt_self() isAppleInternalInstall];
  v28 = 0;
  v29 = 0;
  if (v27)
  {
    v30 = v2[2];
    type metadata accessor for RecordConceptsDataSource();
    *(swift_allocObject() + qword_1EC60C6A0) = v30;
    v31 = v30;
    v28 = sub_1D138EA8C();

    sub_1D11A94C4();

    v29 = MEMORY[0x1E69A3698];
  }

  v32 = 0;
  v45[18] = v28;
  v45[19] = v29;
  v33 = MEMORY[0x1E69E7CC0];
LABEL_13:
  if (v32 <= 0xA)
  {
    v34 = 10;
  }

  else
  {
    v34 = v32;
  }

  v35 = v34 + 1;
  v36 = &v45[2 * v32];
  while (1)
  {
    if (v32 == 10)
    {
      sub_1D13640C4(0, &qword_1EC60ACB0, &qword_1EC60A0A0);
      swift_arrayDestroy();
      return;
    }

    if (v35 == ++v32)
    {
      break;
    }

    v37 = v36 + 2;
    v38 = *v36;
    v36 += 2;
    if (v38)
    {
      v39 = *(v37 - 1);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = sub_1D10F776C(0, v33[2] + 1, 1, v33);
        v44 = v33;
      }

      v42 = v33[2];
      v41 = v33[3];
      if (v42 >= v41 >> 1)
      {
        v33 = sub_1D10F776C((v41 > 1), v42 + 1, 1, v33);
        v44 = v33;
      }

      ObjectType = swift_getObjectType();
      sub_1D11A5FC0(v42, v38, &v44, ObjectType, v39);
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1D13619F8(void *a1)
{
  v2 = v1;
  sub_1D1363FAC(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v39 - v5;
  v7 = sub_1D138D5EC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PresentationContext(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 16);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    return 0;
  }

  v41 = v7;
  swift_getObjectType();
  v15 = swift_conformsToProtocol2();
  v16 = 0;
  v42 = v6;
  v17 = 0;
  if (v15 && a1)
  {
    v18 = v15;
    v19 = a1;
    v16 = a1;
    v17 = v18;
  }

  v20 = *(v2 + 24);
  v21 = v14;
  v22 = [v20 healthStore];
  sub_1D13124B0(v2 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordDetailDataSourceProvider_presentationContext, v13);
  type metadata accessor for MedicalAttachmentDataSource();
  v23 = swift_allocObject();
  *(v23 + qword_1EC610638) = 0;
  *(v23 + qword_1EC62FEA8) = 0;
  *(v23 + qword_1EC62FEB0) = 0;
  *(v23 + qword_1EC610618) = v21;
  type metadata accessor for MedicalAttachmentSectionProvider();
  swift_unknownObjectRetain();
  v24 = v21;
  v25 = v22;
  v40 = v2;
  v26 = sub_1D1246970(v24, v25, v16, v17);

  swift_unknownObjectRelease();
  *(v23 + qword_1EC610620) = v26;
  v27 = [objc_allocWithZone(MEMORY[0x1E69A3F18]) initWithHealthStore_];
  *(v23 + qword_1EC610628) = v27;
  sub_1D13124B0(v13, v23 + qword_1EC610630);
  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  sub_1D13911EC();

  strcpy(v43, "MutableArray<");
  HIWORD(v43[1]) = -4864;
  sub_1D138D5DC();
  v28 = sub_1D138D59C();
  v30 = v29;
  (*(v8 + 8))(v10, v41);
  MEMORY[0x1D3885C10](v28, v30);

  MEMORY[0x1D3885C10](62, 0xE100000000000000);
  v31 = sub_1D138E56C();
  v32 = sub_1D13905DC();
  v33 = v42;
  (*(*(v32 - 8) + 56))(v42, 1, 1, v32);
  sub_1D13905AC();
  swift_retain_n();
  v34 = sub_1D139059C();
  v35 = swift_allocObject();
  v36 = MEMORY[0x1E69E85E0];
  v35[2] = v34;
  v35[3] = v36;
  v35[4] = v31;
  sub_1D107877C(0, 0, v33, &unk_1D13B36C8, v35);

  v37 = sub_1D1389AA4();

  swift_unknownObjectRelease();
  sub_1D1312514(v13);
  *(v31 + qword_1EC62FEB0) = v37;

  *(v40 + 56) = v31;

  return v31;
}