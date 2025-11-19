uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1DF5B3664()
{
  if (qword_1ED8E60B0 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *(v1 + 16) = *(v0 + 40);
  v2 = *(MEMORY[0x1E69E8950] + 4);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1DF5B5D14;
  v4 = *(v0 + 24);

  return MEMORY[0x1EEE6DE98](v4, v0 + 16, &unk_1DF639B48, v1, 0, 0, 0xD00000000000001CLL, 0x80000001DF634F90);
}

void valueOf(entitlement:)(uint64_t a1@<X8>)
{
  task = SecTaskCreateFromSelf(0);
  if (task)
  {
    v2 = sub_1DF63295C();
    v3 = SecTaskCopyValueForEntitlement(task, v2, 0);

    if (v3)
    {
      *(a1 + 24) = swift_getObjectType();

      *a1 = v3;
    }

    else
    {
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

uint64_t sub_1DF5B387C(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;

  *a1 = v3;
}

uint64_t DataProtocol.nullTerminatedUTF8String.getter(uint64_t a1, uint64_t a2)
{
  v33[5] = *MEMORY[0x1E69E9840];
  v4 = sub_1DF632A1C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = DataProtocol.nullTerminated.getter(a1, a2);
  v33[3] = MEMORY[0x1E6969080];
  v33[4] = MEMORY[0x1E6969078];
  v33[0] = v6;
  v33[1] = v7;
  v8 = __swift_project_boxed_opaque_existential_1(v33, MEMORY[0x1E6969080]);
  v9 = *v8;
  v10 = v8[1];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      memset(v31, 0, 14);
      v13 = v31;
      v12 = v31;
      goto LABEL_23;
    }

    v14 = *(v9 + 16);
    v15 = *(v9 + 24);
    v16 = sub_1DF63211C();
    if (v16)
    {
      v17 = sub_1DF63214C();
      v9 = v14 - v17;
      if (__OFSUB__(v14, v17))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 += v9;
    }

    v18 = __OFSUB__(v15, v14);
    v19 = v15 - v14;
    if (!v18)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v31[0] = *v8;
    LOWORD(v31[1]) = v10;
    BYTE2(v31[1]) = BYTE2(v10);
    BYTE3(v31[1]) = BYTE3(v10);
    BYTE4(v31[1]) = BYTE4(v10);
    BYTE5(v31[1]) = BYTE5(v10);
    v12 = v31 + BYTE6(v10);
    v13 = v31;
    goto LABEL_23;
  }

  v20 = v9;
  v21 = v9 >> 32;
  v19 = v21 - v20;
  if (v21 < v20)
  {
    __break(1u);
    goto LABEL_25;
  }

  v16 = sub_1DF63211C();
  if (v16)
  {
    v22 = sub_1DF63214C();
    if (!__OFSUB__(v20, v22))
    {
      v16 += v20 - v22;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v23 = sub_1DF63213C();
  if (v23 >= v19)
  {
    v24 = v19;
  }

  else
  {
    v24 = v23;
  }

  v25 = (v24 + v16);
  if (v16)
  {
    v12 = v25;
  }

  else
  {
    v12 = 0;
  }

  v13 = v16;
LABEL_23:
  sub_1DF5B3308(v13, v12, v32);
  v26 = v32[0];
  v27 = v32[1];
  __swift_destroy_boxed_opaque_existential_1(v33);
  sub_1DF6329EC();
  v28 = sub_1DF6329AC();
  sub_1DF5B33C0(v26, v27);
  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

uint64_t DataProtocol.nullTerminated.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a2 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v37 = AssociatedTypeWitness;
  v5 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v34 = &v30 - v6;
  v7 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = sub_1DF63367C();
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = sub_1DF63327C();
  v30 = *(v12 - 8);
  v31 = v12;
  v13 = *(v30 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - v15;
  v17 = *(v7 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v20 = &v30 - v19;
  v39 = 0;
  sub_1DF63312C();
  v21 = *(v17 + 48);
  v22 = v21(v16, 1, v7);
  v35 = v2;
  if (v22 == 1)
  {
    sub_1DF6330FC();
    if (v21(v16, 1, v7) != 1)
    {
      (*(v30 + 8))(v16, v31);
    }
  }

  else
  {
    (*(v17 + 32))(v20, v16, v7);
  }

  v23 = *(AssociatedConformanceWitness + 8);
  result = sub_1DF63292C();
  if (result)
  {
    (*(v17 + 16))(v11, v20, v7);
    v25 = v33;
    swift_getWitnessTable();
    v26 = v34;
    sub_1DF63311C();
    (*(v32 + 8))(v11, v25);
    v27 = v37;
    v28 = swift_getAssociatedConformanceWitness();
    v29 = sub_1DF5B3F7C(v26, v27, *(v28 + 8));
    (*(v36 + 8))(v26, v27);
    (*(v17 + 8))(v20, v7);
    return v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF5B3F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(*(TupleTypeMetadata2 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v33 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v9);
  v16 = &v33 - v15;
  v17 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  (*(v19 + 16))(&v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42928, &qword_1DF638918);
  if (swift_dynamicCast())
  {
    sub_1DF5A7D18(v36, &v38);
    __swift_project_boxed_opaque_existential_1(&v38, v39);
    sub_1DF63222C();
    v36[0] = v35;
    __swift_destroy_boxed_opaque_existential_1(&v38);
    goto LABEL_34;
  }

  v37 = 0;
  memset(v36, 0, sizeof(v36));
  sub_1DF5C36A4(v36);
  sub_1DF632C4C();
  if (*(&v38 + 1) >> 60 != 15)
  {
    v36[0] = v38;
    goto LABEL_34;
  }

  v34 = v38;
  v20 = sub_1DF632C3C();
  *&v36[0] = sub_1DF5C2FC8(v20);
  *(&v36[0] + 1) = v21;
  MEMORY[0x1EEE9AC00](*&v36[0]);
  *(&v33 - 4) = a2;
  *(&v33 - 3) = a3;
  *(&v33 - 2) = a1;
  sub_1DF63235C();
  v22 = *&v11[*(TupleTypeMetadata2 + 48)];
  (*(v12 + 32))(v16, v11, AssociatedTypeWitness);
  v23 = *(&v36[0] + 1) >> 62;
  if ((*(&v36[0] + 1) >> 62) <= 1)
  {
    if (v23)
    {
      if (__OFSUB__(DWORD1(v36[0]), v36[0]))
      {
        goto LABEL_38;
      }

      if (v22 == DWORD1(v36[0]) - LODWORD(v36[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v22 == BYTE14(v36[0]))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v23 == 2)
  {
    v25 = *(*&v36[0] + 16);
    v24 = *(*&v36[0] + 24);
    v26 = __OFSUB__(v24, v25);
    v27 = v24 - v25;
    if (v26)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    if (v22 == v27)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (v23 == 2)
    {
      v28 = *(*&v36[0] + 24);
    }

    else if (v23 == 1)
    {
      v28 = *&v36[0] >> 32;
    }

    else
    {
      v28 = BYTE14(v36[0]);
    }

LABEL_31:
    if (v28 >= v22)
    {
      sub_1DF63234C();
LABEL_33:
      (*(v12 + 8))(v16, AssociatedTypeWitness);
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (v22)
  {
    v28 = 0;
    goto LABEL_31;
  }

LABEL_20:
  swift_getAssociatedConformanceWitness();
  *&v38 = 0;
  *(&v38 + 7) = 0;
  sub_1DF63329C();
  if (BYTE1(v35) == 1)
  {
    goto LABEL_28;
  }

  LOBYTE(v29) = 0;
  do
  {
    *(&v38 + v29) = v35;
    v29 = v29 + 1;
    if ((v29 >> 8))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v29 == 14)
    {
      *&v35 = v38;
      *(&v35 + 6) = *(&v38 + 6);
      sub_1DF63236C();
      LOBYTE(v29) = 0;
    }

    sub_1DF63329C();
  }

  while ((BYTE1(v35) & 1) == 0);
  if (v29)
  {
    *&v35 = v38;
    *(&v35 + 6) = *(&v38 + 6);
    sub_1DF63236C();
    sub_1DF5C3890(v34, *(&v34 + 1));
    goto LABEL_33;
  }

LABEL_28:
  (*(v12 + 8))(v16, AssociatedTypeWitness);
  sub_1DF5C3890(v34, *(&v34 + 1));
LABEL_34:
  v30 = v36[0];
  sub_1DF5A3A94(*&v36[0], *(&v36[0] + 1));
  sub_1DF5B33C0(v30, *(&v30 + 1));
  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

uint64_t static SystemInfo.isKoreaSKU.getter()
{
  if (static SystemInfo.regionCode.getter() == 18507 && v0 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v2 = sub_1DF63394C();

    return v2 & 1;
  }
}

uint64_t static Transaction.named<A>(_:with:)(unint64_t a1, uint64_t a2, int a3, void (*a4)(void))
{
  swift_allocObject();
  sub_1DF5B2178(a1, a2, a3);
  a4();
}

uint64_t static SystemInfo.regionCode.getter()
{
  v0 = MEMORY[0x1E12D9570]();
  sub_1DF5B46C8(v3);
  objc_autoreleasePoolPop(v0);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1DF59CB50(v3, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  return 0;
}

void sub_1DF5B46C8(uint64_t a1@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = sub_1DF63295C();
  v3 = MGCopyAnswerWithError();

  if (v3)
  {
    *(a1 + 24) = swift_getObjectType();
    *a1 = v3;
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t Transaction.__deallocating_deinit()
{
  sub_1DF5B4934();
  v1 = v0[3];

  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[5];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1DF5B4934()
{
  if (qword_1ED8E5CE8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF6326AC();
  __swift_project_value_buffer(v1, qword_1ED8E6A08);

  v2 = sub_1DF63268C();
  v3 = sub_1DF63314C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136446210;
    v8[0] = v5;
    v8[1] = 0x3A4E58545BLL;
    v8[2] = 0xE500000000000000;
    MEMORY[0x1E12D82E0](v0[1].opaque[0], v0[1].opaque[1]);
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v6 = sub_1DF59EEC8(0x3A4E58545BLL, 0xE500000000000000, v8);

    *(v4 + 4) = v6;
    _os_log_impl(&dword_1DF59A000, v2, v3, "Closed %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1E12D9D80](v5, -1, -1);
    MEMORY[0x1E12D9D80](v4, -1, -1);
  }

  swift_beginAccess();
  os_activity_scope_leave(v0 + 3);
  return swift_endAccess();
}

uint64_t dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter(uint64_t a1)
{
  v4 = *(*v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF59D2C4;

  return v8(a1);
}

uint64_t sub_1DF5B4C04(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2[3] = a1;
  v2[4] = v1;
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_1DF5B4D8C;
  v4 = *MEMORY[0x1E69E9840];

  return sub_1DF5A419C();
}

uint64_t sub_1DF5B4CC0()
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = v0[6];
  v2 = v0[3];
  v0[2] = v1;
  v3 = sub_1DF5B2644((v0 + 2), (v0 + 3));
  v5 = v4;
  sub_1DF5B1CE8(v3, v4, v2);
  sub_1DF5B33C0(v3, v5);

  v6 = v0[1];
  v7 = *MEMORY[0x1E69E9840];

  return v6();
}

uint64_t sub_1DF5B4D8C(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 48) = a1;

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DF5B4CC0, v3, 0);
}

uint64_t withTimeout<A>(_:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1DF63363C();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v10 = sub_1DF63365C();
  v6[12] = v10;
  v11 = *(v10 - 8);
  v6[13] = v11;
  v12 = *(v11 + 64) + 15;
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5B5000, 0, 0);
}

uint64_t sub_1DF5B5000()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v7 = v0[3];
  v6 = v0[4];
  sub_1DF63364C();
  sub_1DF6335FC();
  sub_1DF63362C();
  v8 = *(v5 + 8);
  v0[15] = v8;
  v0[16] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v4);
  v9 = swift_task_alloc();
  v0[17] = v9;
  v10 = sub_1DF5B5178(&qword_1ED8E56E8, MEMORY[0x1E69E8848]);
  *v9 = v0;
  v9[1] = sub_1DF5B817C;
  v11 = v0[14];
  v12 = v0[11];
  v13 = v0[12];
  v14 = v0[6];
  v15 = v0[7];
  v16 = v0[5];
  v17 = v0[2];

  return withDeadline<A, B>(_:clock:block:)(v17, v12, v11, v16, v14, v15, v13, v10);
}

uint64_t withDeadline<A, B>(_:clock:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF5B51C0, 0, 0);
}

uint64_t sub_1DF5B5178(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DF5B51C0()
{
  v1 = *(v0 + 72);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 56);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  *(v2 + 56) = v4;
  v5 = *(MEMORY[0x1E69E88A0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_1DF5B8040;
  v7 = *(v0 + 16);
  v10 = *(v0 + 56);

  return MEMORY[0x1EEE6DD58](v7);
}

uint64_t sub_1DF5B52BC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = v2[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1DF59D2C8;

  return sub_1DF5B53AC(a1, a2, v8, v10, v11, v12, v6, v7);
}

uint64_t sub_1DF5B53AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v19;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v10 = sub_1DF63327C();
  v8[11] = v10;
  v11 = *(v10 - 8);
  v8[12] = v11;
  v12 = *(v11 + 64) + 15;
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v13 = *(a8 - 8);
  v8[15] = v13;
  v8[16] = *(v13 + 64);
  v8[17] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[18] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v8[19] = v15;
  v8[20] = *(v15 + 64);
  v8[21] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260) - 8) + 64) + 15;
  v8[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5B55AC, 0, 0);
}

uint64_t sub_1DF5B55AC()
{
  v1 = v0[22];
  v26 = v0[21];
  v28 = v0[20];
  v22 = v0[19];
  v23 = v0[18];
  v27 = v0[17];
  v29 = v0[16];
  v2 = v0[9];
  v3 = v0[10];
  v16 = v2;
  v4 = v0[8];
  v24 = v0[15];
  v25 = v0[7];
  v5 = v0[5];
  v21 = v0[6];
  v18 = v0[4];
  v20 = v0[3];
  v6 = sub_1DF632E9C();
  v17 = *(*(v6 - 8) + 56);
  v17(v1, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v2;
  v7[6] = v3;
  v7[7] = v18;
  v7[8] = v5;

  v0[23] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v19 = sub_1DF632FBC();
  sub_1DF5B5A68(v1, &unk_1DF63B490, v7, v19);
  sub_1DF5B5C3C(v1);
  v17(v1, 1, 1, v6);
  (*(v22 + 16))(v26, v21, v23);
  (*(v24 + 16))(v27, v25, v2);
  v8 = (*(v22 + 80) + 56) & ~*(v22 + 80);
  v9 = (v28 + *(v24 + 80) + v8) & ~*(v24 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = v4;
  *(v10 + 5) = v16;
  *(v10 + 6) = v3;
  (*(v22 + 32))(&v10[v8], v26, v23);
  (*(v24 + 32))(&v10[v9], v27, v16);
  sub_1DF5B5A68(v1, &unk_1DF63B4A0, v10, v19);
  sub_1DF5B5C3C(v1);
  v11 = *(MEMORY[0x1E69E8708] + 4);
  v12 = swift_task_alloc();
  v0[24] = v12;
  *v12 = v0;
  v12[1] = sub_1DF5B7AFC;
  v13 = v0[14];
  v14 = v0[3];

  return MEMORY[0x1EEE6DAC8](v13, 0, 0, v19);
}

uint64_t sub_1DF5B58CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DF5B590C()
{
  v2 = *(v0 + 5);
  v1 = *(v0 + 6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = *(v2 - 8);
  v8 = *(v7 + 80);
  v9 = (v6 + *(v4 + 64) + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v5 | v8;
  v12 = *(v0 + 2);
  swift_unknownObjectRelease();
  (*(v4 + 8))(&v0[v6], AssociatedTypeWitness);
  (*(v7 + 8))(&v0[v9], v2);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1DF5B5A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v23 - v11;
  sub_1DF5B5CA4(a1, v23 - v11);
  v13 = sub_1DF632E9C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1DF5B5C3C(v12);
    if (*(a3 + 16))
    {
LABEL_3:
      v15 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = sub_1DF632E1C();
      v18 = v17;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1DF632E8C();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  v18 = 0;
LABEL_6:
  v19 = *v5;
  v20 = *(a4 + 16);
  v21 = (v18 | v16);
  if (v18 | v16)
  {
    v24[0] = 0;
    v24[1] = 0;
    v21 = v24;
    v24[2] = v16;
    v24[3] = v18;
  }

  v23[1] = 1;
  v23[2] = v21;
  v23[3] = v19;
  swift_task_create();
}

uint64_t sub_1DF5B5C3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF5B5CA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DF5B5D14()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 56);

    v6 = *(v4 + 8);

    v6();
  }
}

void sub_1DF5B5E48()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 64);
    v6 = *(v2 + 32);

    v7 = *(v4 + 8);

    v7();
  }
}

uint64_t sub_1DF5B5F88(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DF59D2C4;

  return sub_1DF5B6064(a1, v6, v7, v9, v10, v4, v5, v8);
}

uint64_t sub_1DF5B6064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a1;
  v8[7] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v8[12] = sub_1DF632E4C();
  v9 = sub_1DF63327C();
  v8[13] = v9;
  v10 = *(v9 - 8);
  v8[14] = v10;
  v11 = *(v10 + 64) + 15;
  v8[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5B6164, 0, 0);
}

uint64_t sub_1DF5B6164()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  (*(*(*(v0 + 96) - 8) + 56))(v1, 1, 1);
  v4 = sub_1DF5A610C(v1, v3);
  *(v0 + 128) = v4;
  (*(v2 + 8))(v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECE431E0, &qword_1DF63B4A8);
  inited = swift_initStackObject();
  *(v0 + 136) = inited;
  *(inited + 24) = 0;
  *(inited + 16) = 0;
  sub_1DF632F7C();
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 72);
  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  v10 = *(v0 + 56);
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v9 + 32) = v6;
  *(v9 + 40) = v4;
  *(v9 + 48) = inited;
  *(v9 + 56) = v10;
  v11 = swift_task_alloc();
  *(v0 + 152) = v11;
  v11[2] = v8;
  v11[3] = v7;
  v11[4] = v6;
  v11[5] = inited;
  v11[6] = v4;
  v12 = *(MEMORY[0x1E69E88F0] + 4);
  v13 = swift_task_alloc();
  *(v0 + 160) = v13;
  *v13 = v0;
  v13[1] = sub_1DF5B794C;
  v14 = *(v0 + 72);
  v15 = *(v0 + 48);

  return MEMORY[0x1EEE6DE18](v15, &unk_1DF63B4B8, v9, sub_1DF605A10, v11, 0, 0, v14);
}

uint64_t sub_1DF5B6388(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DF59D2C4;

  return sub_1DF5B6464(a1, v7, v8, v9, v10, v4, v5, v6);
}

uint64_t sub_1DF5B6464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF5B6490, 0, 0);
}

uint64_t sub_1DF5B6490()
{
  v1 = *(v0 + 72);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  *(v2 + 16) = *(v0 + 56);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  *(v2 + 56) = v4;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_1DF5B7810;
  v7 = *(v0 + 56);
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v8, 0, 0, 0xD00000000000001CLL, 0x80000001DF6355D0, sub_1DF5B6690, v2, v7);
}

void sub_1DF5B659C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a6;
  v12 = a7;
  v13 = a8;
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  sub_1DF632E4C();
  sub_1DF63327C();
  sub_1DF5A61A8(sub_1DF5B67B8, v10, a2);
  os_unfair_lock_lock((a3 + 24));
  sub_1DF5B697C((a3 + 16));
  os_unfair_lock_unlock((a3 + 24));
}

uint64_t sub_1DF5B66A4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v4 = sub_1DF632E4C();
  v5 = sub_1DF63327C();
  (*(*(v5 - 8) + 8))(a1, v5);
  v6 = *(v4 - 8);
  (*(v6 + 16))(a1, a2, v4);
  return (*(v6 + 56))(a1, 0, 1, v4);
}

uint64_t sub_1DF5B67B8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1DF5B66A4(a1, v1[5]);
}

uint64_t sub_1DF5B67D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v22 - v16;
  v18 = *a1;

  v19 = sub_1DF632E9C();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a5;
  v20[5] = a6;
  v20[6] = a7;
  v20[7] = a2;
  v20[8] = a3;
  v20[9] = a4;

  result = sub_1DF5CE7F8(0, 0, v17, &unk_1DF63B4C8, v20);
  *a1 = result;
  return result;
}

uint64_t sub_1DF5B6934()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[8];

  v3 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DF5B69A0(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v10 = (v9 + *(v8 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1DF59D2C4;

  return sub_1DF5B6B24(a1, v11, v12, v1 + v9, v1 + v10, v6, v5, v7);
}

uint64_t sub_1DF5B6B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a4;
  v8[3] = a5;
  v8[6] = swift_getAssociatedTypeWitness();
  v9 = sub_1DF63327C();
  v8[7] = v9;
  v10 = *(v9 - 8);
  v8[8] = v10;
  v11 = *(v10 + 64) + 15;
  v8[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5B6C10, 0, 0);
}

uint64_t sub_1DF5B6C10()
{
  sub_1DF632F7C();
  (*(*(v0[6] - 8) + 56))(v0[9], 1, 1);
  v1 = *(MEMORY[0x1E69E86D0] + 4);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1DF5B7E6C;
  v3 = v0[9];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v6 = v0[3];

  return MEMORY[0x1EEE6DA68](v7, v3, v6, v4, v5);
}

uint64_t sub_1DF5B6D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v17;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v8[9] = sub_1DF632E4C();
  v10 = sub_1DF63327C();
  v8[10] = v10;
  v11 = *(v10 - 8);
  v8[11] = v11;
  v12 = *(v11 + 64) + 15;
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v13 = *(a7 - 8);
  v8[16] = v13;
  v14 = *(v13 + 64) + 15;
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5B6FB0, 0, 0);
}

uint64_t sub_1DF5B6EC4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DF59D2C8;

  return sub_1DF5B6D3C(a1, v6, v7, v8, v11, v10, v4, v5);
}

uint64_t sub_1DF5B6FB0()
{
  sub_1DF632F7C();
  v6 = (v0[3] + *v0[3]);
  v1 = *(v0[3] + 4);
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_1DF5B7380;
  v3 = v0[18];
  v4 = v0[4];

  return v6(v3);
}

void *NSXPCConnection.codeSigningIdentity.getter()
{
  v5 = *MEMORY[0x1E69E9840];
  [v0 auditToken];
  v1 = xpc_copy_code_signing_identity_for_token();
  if (v1)
  {
    v2 = v1;
    v0 = sub_1DF632B2C();
    MEMORY[0x1E12D9D80](v2, -1, -1);
  }

  else
  {
    sub_1DF624F50();
    swift_allocError();
    swift_willThrow();
  }

  v3 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t sub_1DF5B7380()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1DF605400;
  }

  else
  {
    v3 = sub_1DF5B7494;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF5B7494()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 40);
  v9 = swift_task_alloc();
  *(v9 + 16) = *(v0 + 48);
  *(v9 + 32) = v7;
  sub_1DF5A61A8(sub_1DF5B77F8, v9, v8);

  (*(v5 + 16))(v2, v3, v4);
  v10 = *(v6 - 8);
  v11 = (*(v10 + 48))(v2, 1, v6);
  v12 = *(v0 + 144);
  if (v11 == 1)
  {
    v13 = *(v0 + 128);
    v14 = *(v0 + 112);
    v15 = *(v0 + 80);
    v16 = *(v0 + 48);
    v17 = *(*(v0 + 88) + 8);
    v17(*(v0 + 120), v15);
    (*(v13 + 8))(v12, v16);
    v17(v14, v15);
  }

  else
  {
    v18 = *(v0 + 128);
    v19 = *(v0 + 112);
    v32 = *(v0 + 120);
    v21 = *(v0 + 80);
    v20 = *(v0 + 88);
    v22 = *(v0 + 72);
    v23 = *(v0 + 48);
    (*(v18 + 16))(*(v0 + 136), v12, v23);
    sub_1DF632E3C();
    (*(v20 + 8))(v32, v21);
    (*(v18 + 8))(v12, v23);
    (*(v10 + 8))(v19, v22);
  }

  v25 = *(v0 + 136);
  v24 = *(v0 + 144);
  v27 = *(v0 + 112);
  v26 = *(v0 + 120);
  v29 = *(v0 + 96);
  v28 = *(v0 + 104);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1DF5B76F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v4 = sub_1DF632E4C();
  v5 = sub_1DF63327C();
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
}

uint64_t sub_1DF5B77D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_1DF5B76F8(a1, a2);
}

uint64_t sub_1DF5B7810()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF605A20, 0, 0);
  }

  else
  {
    v4 = v3[10];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DF5B794C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v8 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_1DF605360;
  }

  else
  {
    v6 = *(v2 + 144);
    v5 = *(v2 + 152);

    v4 = sub_1DF5B7A70;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DF5B7A70()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  swift_setDeallocating();
  v4 = *(v2 + 16);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DF5B7AFC()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_1DF6052B4;
  }

  else
  {
    v3 = sub_1DF5B7C10;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF5B7C10()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 64);
  v7 = **(v0 + 24);
  sub_1DF632FAC();
  (*(v5 + 16))(v2, v3, v4);
  v8 = *(v6 - 8);
  v9 = (*(v8 + 48))(v2, 1, v6);
  v10 = *(v5 + 8);
  if (v9 == 1)
  {
    v11 = *(v0 + 112);
    v12 = *(v0 + 88);
    v10(*(v0 + 104), v12);
    sub_1DF632E5C();
    sub_1DF5B5178(&qword_1ED8E56F0, MEMORY[0x1E69E8550]);
    swift_allocError();
    sub_1DF6327FC();
    swift_willThrow();
    v10(v11, v12);
    v14 = *(v0 + 168);
    v13 = *(v0 + 176);
    v15 = *(v0 + 136);
    v17 = *(v0 + 104);
    v16 = *(v0 + 112);
  }

  else
  {
    v19 = *(v0 + 168);
    v20 = *(v0 + 176);
    v25 = *(v0 + 136);
    v21 = *(v0 + 104);
    v22 = *(v0 + 64);
    v23 = *(v0 + 16);
    v10(*(v0 + 112), *(v0 + 88));
    (*(v8 + 32))(v23, v21, v22);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1DF5B7E6C()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1DF5B7FDC;
  }

  else
  {
    v6 = sub_1DF60592C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DF5B7FDC()
{
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DF5B8040()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF604E14, 0, 0);
  }

  else
  {
    v4 = v3[10];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DF5B817C()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1DF604D5C;
  }

  else
  {
    v3 = sub_1DF5B8290;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF5B8290()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  (*(v0 + 120))(*(v0 + 88), *(v0 + 64));
  (*(v3 + 8))(v2, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t Duration.milliseconds.getter()
{
  result = _ss8DurationV10FindMyBaseE7secondss5Int64Vvg_0();
  v2 = 1000000000 * result;
  if ((result * 1000000000) >> 64 == (1000000000 * result) >> 63)
  {
    v3 = __OFADD__(v2, v1 / 1000000000);
    v4 = v2 + v1 / 1000000000;
    if (!v3)
    {
      return v4 / 1000000;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF5B83EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF6325AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  sub_1DF63259C();
  (*(v5 + 16))(v9, v11, v4);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = type metadata accessor for WorkItemQueue.WorkItem();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  v16 = sub_1DF60D5E8(0, v9, &unk_1DF638F88, v12, 0, 0);

  (*(v5 + 8))(v11, v4);
  sub_1DF5A9620(v16);
  return v16;
}

uint64_t sub_1DF5B8590()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF5B85C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF59D2C4;

  return sub_1DF5B8670(a1, v5);
}

uint64_t sub_1DF5B8670(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DF59D2C4;

  return v6();
}

uint64_t WorkItemQueue.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_id;
  v4 = sub_1DF6325AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static WorkItemQueue.currentWorkItemQueueIdentifier.getter()
{
  if (qword_1ED8E6078 != -1)
  {
    swift_once();
  }

  return sub_1DF633C5C();
}

uint64_t sub_1DF5B8830()
{
  v1 = *(v0 + 16);
  v2 = sub_1DF5B88EC(*v0, *(v0 + 8));
  MEMORY[0x1E12D82E0](v2);

  MEMORY[0x1E12D82E0](0x203A6570797420, 0xE700000000000000);
  if (v1)
  {
    v3 = 0x6D6F646E61722ELL;
  }

  else
  {
    v3 = 0x63696C6275702ELL;
  }

  MEMORY[0x1E12D82E0](v3, 0xE700000000000000);
  MEMORY[0x1E12D82E0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_1DF5B88EC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DF63242C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = "Failed to convert string [";
  if (("Failed to convert string [" & 0x1000000000000000) != 0)
  {
    goto LABEL_5;
  }

  result = sub_1DF632B8C();
  if (result)
  {
    while (1)
    {
      v11 = result;
      v12 = sub_1DF5B8C68(result, 0);
      v9 = sub_1DF5B9410(&v31, (v12 + 4), v11, 0xD000000000000010, v9 | 0x8000000000000000);

      if (v9 == v11)
      {
        break;
      }

      __break(1u);
LABEL_5:
      result = sub_1DF632B7C();
      if (!result)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v12 = MEMORY[0x1E69E7CC0];
  }

  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v13 != 2)
    {
      v18 = sub_1DF5B96E4(0, 0, 0, MEMORY[0x1E69E7CC0]);
      goto LABEL_20;
    }

    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v17 = __OFSUB__(v15, v16);
    v14 = v15 - v16;
    if (!v17)
    {
LABEL_16:
      if (v14 + 0x4000000000000000 < 0)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v18 = sub_1DF5B96E4(0, (2 * v14) & ~((2 * v14) >> 63), 0, MEMORY[0x1E69E7CC0]);
      if (v13 == 2)
      {
        v19 = *(a1 + 16);
      }

LABEL_20:
      v30 = v5;
      sub_1DF5A3A94(a1, a2);
      sub_1DF63243C();
      sub_1DF5B97E0();
      result = sub_1DF63329C();
      if (v32)
      {
LABEL_21:
        (*(v30 + 8))(v8, v4);

        v20 = *(v18 + 2);
        v21 = sub_1DF63294C();

        return v21;
      }

      v22 = v31;
      v23 = v12 + 4;
      while (v22 >> 4 < v12[2])
      {
        v24 = *(v23 + (v22 >> 4));
        v26 = *(v18 + 2);
        v25 = *(v18 + 3);
        v27 = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          result = sub_1DF5B96E4((v25 > 1), v26 + 1, 1, v18);
          v18 = result;
        }

        *(v18 + 2) = v27;
        *&v18[2 * v26 + 32] = v24;
        if ((v22 & 0xF) >= v12[2])
        {
          goto LABEL_32;
        }

        v28 = *(v23 + (v22 & 0xF));
        v29 = *(v18 + 3);
        if ((v26 + 2) > (v29 >> 1))
        {
          v18 = sub_1DF5B96E4((v29 > 1), v26 + 2, 1, v18);
        }

        *(v18 + 2) = v26 + 2;
        *&v18[2 * v27 + 32] = v28;
        result = sub_1DF63329C();
        v22 = v31;
        if (v32 == 1)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    __break(1u);
  }

  else if (!v13)
  {
    v14 = BYTE6(a2);
    goto LABEL_16;
  }

  LODWORD(v14) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v14 = v14;
    goto LABEL_16;
  }

LABEL_34:
  __break(1u);
  return result;
}

void *sub_1DF5B8C68(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42968, &qword_1DF638948);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

uint64_t MACAddress.data.getter()
{
  v1 = *v0;
  sub_1DF5A3A94(*v0, *(v0 + 8));
  return v1;
}

Swift::Void __swiftcall prohibitAsyncContext(functionName:)(Swift::String functionName)
{
  object = functionName._object;
  countAndFlagsBits = functionName._countAndFlagsBits;
  sub_1DF63378C();
  if (v8 == 1)
  {
    if (qword_1ED8E5958 != -1)
    {
      swift_once();
    }

    v3 = sub_1DF6326AC();
    __swift_project_value_buffer(v3, qword_1ED8E69A0);

    v4 = sub_1DF63268C();
    v5 = sub_1DF63317C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1DF59EEC8(countAndFlagsBits, object, &v8);
      _os_log_impl(&dword_1DF59A000, v4, v5, "%s is not allowed to be called from an asynchronous context!", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1E12D9D80](v7, -1, -1);
      MEMORY[0x1E12D9D80](v6, -1, -1);
    }
  }
}

uint64_t sub_1DF5B8E98@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = sub_1DF63305C();
  result = (*(*(v4 - 8) + 48))(a1, 1, v4);
  *a2 = result != 1;
  return result;
}

uint64_t sub_1DF5B8F14(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t MACAddress.init(data:type:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 == 6)
      {
        goto LABEL_8;
      }

LABEL_11:
      result = sub_1DF5B33C0(result, a2);
      *a4 = 0;
      *(a4 + 8) = 0;
      v10 = 2;
      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
    if (!v5)
    {
      if (BYTE6(a2) != 6)
      {
        goto LABEL_11;
      }

LABEL_8:
      v10 = a3 & 1;
      *a4 = result;
      *(a4 + 8) = a2;
LABEL_12:
      *(a4 + 16) = v10;
      return result;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 6)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t MACAddress.init(addressToSanitize:type:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
LABEL_13:
      result = sub_1DF5B33C0(result, a2);
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 2;
      return result;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 != 6)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (!v5)
  {
    if (BYTE6(a2) != 6)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_16;
  }

  if (HIDWORD(result) - result != 6)
  {
    goto LABEL_13;
  }

LABEL_11:
  v18 = result;
  v19 = a2;
  v10 = result;
  v11 = a2;
  sub_1DF5A3A94(result, a2);
  sub_1DF63238C();
  sub_1DF63239C();
  v13 = v18;
  v14 = v19;
  sub_1DF5A3A94(v18, v19);
  MACAddress.init(data:type:)(v18, v19, a3 & 1, &v16);
  sub_1DF5B33C0(v10, v11);
  v15 = v17;
  if (v17 == 2)
  {
    result = v13;
    a2 = v14;
    goto LABEL_13;
  }

  *a4 = v16;
  *(a4 + 16) = v15 & 1;
  return sub_1DF5B33C0(v13, v14);
}

BOOL FixedWidthInteger.BOOLValue.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(v3[3] + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1DF63337C())
  {
    if (sub_1DF63336C() >= 64)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v12 = sub_1DF63337C();
  v13 = sub_1DF63336C();
  if ((v12 & 1) == 0)
  {
    if (v13 < 64)
    {
      goto LABEL_9;
    }

LABEL_10:
    v19[1] = 0;
    sub_1DF5B9E58();
    sub_1DF6332EC();
    v17 = *(v3[2] + 8);
    v16 = sub_1DF63292C();
    (*(v8 + 8))(v11, a1);
    return (v16 & 1) == 0;
  }

  if (v13 > 64)
  {
    goto LABEL_10;
  }

  swift_getAssociatedConformanceWitness();
  sub_1DF63399C();
  sub_1DF63392C();
  v14 = *(v3[4] + 8);
  v15 = sub_1DF63290C();
  (*(v8 + 8))(v11, a1);
  if (v15)
  {
LABEL_9:
    v16 = sub_1DF63335C() == 0;
    return (v16 & 1) == 0;
  }

  v16 = 0;
  return (v16 & 1) == 0;
}

uint64_t sub_1DF5B9410(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!a2)
  {
    v10 = 0;
    v9 = 0;
    v7 = 0;
LABEL_41:
    v14 = 1;
    goto LABEL_42;
  }

  v7 = a3;
  if (!a3)
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_41;
  }

  if (a3 < 0)
  {
    __break(1u);
    return result;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = a5 & 0xFFFFFFFFFFFFFFLL;
  v12 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v13 = a3 - 1;
  v14 = 1;
  do
  {
    if ((v14 & 1) == 0)
    {
      v14 = 1;
      LOWORD(v17) = v9;
      v9 = 0;
      goto LABEL_33;
    }

    if (v10 >= v6)
    {
      goto LABEL_43;
    }

    if ((a5 & 0x1000000000000000) != 0)
    {
      v29 = a5;
      v32 = a2;
      v23 = a4;
      v24 = sub_1DF63346C();
      a4 = v23;
      v17 = v24;
      v19 = v25;
      a5 = v29;
      a2 = v32;
    }

    else
    {
      if ((a5 & 0x2000000000000000) == 0)
      {
        v15 = v12;
        if ((a4 & 0x1000000000000000) == 0)
        {
          v30 = a5;
          v33 = a2;
          v26 = a4;
          v15 = sub_1DF63350C();
          a5 = v30;
          a2 = v33;
          a4 = v26;
        }

        v16 = (v15 + v10);
        v17 = *(v15 + v10);
        if ((*(v15 + v10) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v20 = (__clz(v17 ^ 0xFF) - 24);
        if (v20 <= 2)
        {
          if (v20 == 1)
          {
LABEL_15:
            v18 = 1;
          }

          else
          {
            LOWORD(v17) = v16[1] & 0x3F | ((v17 & 0x1F) << 6);
            v18 = 2;
          }

LABEL_16:
          v10 += v18;
LABEL_32:
          v14 = 1;
          goto LABEL_33;
        }

        if (v20 == 3)
        {
          LOWORD(v17) = (v17 << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F;
          v18 = 3;
          goto LABEL_16;
        }

LABEL_30:
        v17 = ((v17 & 0xF) << 18) | ((v16[1] & 0x3F) << 12) | ((v16[2] & 0x3F) << 6) | v16[3] & 0x3F;
        v19 = 4;
        goto LABEL_31;
      }

      v34[0] = a4;
      v34[1] = v11;
      v16 = v34 + v10;
      v17 = *(v34 + v10);
      if ((*(v34 + v10) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      v21 = (__clz(v17 ^ 0xFF) - 24);
      if (v21 > 2)
      {
        if (v21 == 3)
        {
          v17 = ((v17 & 0xF) << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F;
          v19 = 3;
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (v21 == 1)
      {
LABEL_19:
        v19 = 1;
        goto LABEL_31;
      }

      v17 = v16[1] & 0x3F | ((v17 & 0x1F) << 6);
      v19 = 2;
    }

LABEL_31:
    v10 += v19;
    if (!HIWORD(v17))
    {
      goto LABEL_32;
    }

    v28 = a5;
    v31 = a2;
    v27 = a4;
    v9 = sub_1DF633B1C();
    v22 = sub_1DF633B1C();
    a5 = v28;
    a2 = v31;
    a4 = v27;
    LOWORD(v17) = v22;
    v14 = 0;
LABEL_33:
    *(a2 + 2 * v8) = v17;
    if (v13 == v8)
    {
      goto LABEL_42;
    }

    ++v8;
  }

  while (!__OFADD__(v8, 1));
  __break(1u);
LABEL_43:
  v14 = 1;
  v7 = v8;
LABEL_42:
  *v5 = a4;
  *(v5 + 8) = a5;
  *(v5 + 16) = v10;
  *(v5 + 24) = v6;
  *(v5 + 32) = v9;
  *(v5 + 34) = v14;
  return v7;
}

char *sub_1DF5B96E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42968, &qword_1DF638948);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

unint64_t sub_1DF5B97E0()
{
  result = qword_1ECE42368;
  if (!qword_1ECE42368)
  {
    sub_1DF63242C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42368);
  }

  return result;
}

uint64_t RawRepresentable<>.hexString.getter()
{
  v0 = MEMORY[0x1E12D9570]();
  sub_1DF5B9898(&v2);
  objc_autoreleasePoolPop(v0);
  return v2;
}

uint64_t sub_1DF5B9898@<X0>(uint64_t *a1@<X8>)
{
  sub_1DF632CAC();
  v2 = sub_1DF5B88EC(v6, v7);
  v4 = v3;
  result = sub_1DF5B33C0(v6, v7);
  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t FixedWidthInteger.bits()(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(v3[3] + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v41 = v35 - v7;
  v8 = *(a1 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](v6);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v35 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v8[2];
  v37 = v35 - v17;
  v16();
  result = sub_1DF63368C();
  if (result < 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (result)
  {
    v19 = result;
    v20 = sub_1DF632D7C();
    *(v20 + 16) = v19;
    v38 = v20;
    bzero((v20 + 32), v19);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  result = sub_1DF63368C();
  if (result < 0)
  {
    goto LABEL_30;
  }

  v21 = result;
  if (result)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v39 = v21;
    v40 = AssociatedConformanceWitness;
    v23 = 0;
    v24 = (v8 + 1);
    v35[1] = (v8 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v36 = v38 + 32;
    while (1)
    {
      sub_1DF63399C();
      sub_1DF63392C();
      sub_1DF6332FC();
      v25 = *v24;
      (*v24)(v12, a1);
      if (sub_1DF63337C())
      {
        break;
      }

      v26 = v4;
      v27 = sub_1DF63337C();
      v28 = sub_1DF63336C();
      if (v27)
      {
        if (v28 > 64)
        {
          goto LABEL_22;
        }

        sub_1DF63399C();
        v4 = v26;
        sub_1DF63392C();
        v29 = *(v3[4] + 8);
        v30 = sub_1DF63290C();
        result = (v25)(v12, a1);
        if (v30)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v28 >= 64)
        {
LABEL_22:
          v43 = 0;
          sub_1DF5B9E58();
          sub_1DF6332EC();
          v33 = *(v3[2] + 8);
          v34 = sub_1DF63292C();
          result = (v25)(v12, a1);
          v4 = v26;
          if (v34)
          {
            goto LABEL_8;
          }

          goto LABEL_23;
        }

        result = sub_1DF63335C();
        v4 = v26;
        if (!result)
        {
          goto LABEL_8;
        }
      }

LABEL_23:
      if (v23 >= *(v38 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      *(v36 + v23) = 1;
LABEL_8:
      ++v23;
      v43 = 1;
      sub_1DF5B9E58();
      sub_1DF63334C();
      v25(v15, a1);
      if (v39 == v23)
      {
        goto LABEL_27;
      }
    }

    if (sub_1DF63336C() >= 64)
    {
      v43 = 0;
      sub_1DF5B9E58();
      sub_1DF6332EC();
      v31 = *(v3[2] + 8);
      v32 = sub_1DF63292C();
      result = (v25)(v12, a1);
      if (v32)
      {
        goto LABEL_8;
      }

      goto LABEL_23;
    }

LABEL_11:
    result = sub_1DF63335C();
    if (!result)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

  v25 = v8[1];
LABEL_27:
  v25(v37, a1);
  return v38;
}

unint64_t sub_1DF5B9E58()
{
  result = qword_1ED8E4BC0;
  if (!qword_1ED8E4BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E4BC0);
  }

  return result;
}

unint64_t FixedWidthInteger.data.getter(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  if (v3)
  {
    if (v3 <= 0xE)
    {
      v8 = sub_1DF5B2744(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), &v4[v3]);
    }

    else
    {
      v5 = sub_1DF63215C();
      v6 = *(v5 + 48);
      v7 = *(v5 + 52);
      swift_allocObject();
      sub_1DF63210C();
      if (v3 >= 0x7FFFFFFF)
      {
        sub_1DF63233C();
        v8 = swift_allocObject();
        *(v8 + 16) = 0;
        *(v8 + 24) = v3;
      }

      else
      {
        v8 = v3 << 32;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  (*(v2 + 8))(v4, a1);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t MACAddress.description.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_1DF5B88EC(*v0, *(v0 + 8));
  MEMORY[0x1E12D82E0](v2);

  MEMORY[0x1E12D82E0](0x203A6570797420, 0xE700000000000000);
  if (v1)
  {
    v3 = 0x6D6F646E61722ELL;
  }

  else
  {
    v3 = 0x63696C6275702ELL;
  }

  MEMORY[0x1E12D82E0](v3, 0xE700000000000000);
  MEMORY[0x1E12D82E0](62, 0xE100000000000000);
  return 60;
}

uint64_t static DarwinNotification.currentValue(name:)()
{
  v0 = sub_1DF63295C();
  MyBase18DarwinNotificationV12currentValue4names6UInt64VSo18CFNotificationNamea_tFZ_0 = _s10FindMyBase18DarwinNotificationV12currentValue4names6UInt64VSo18CFNotificationNamea_tFZ_0();

  return MyBase18DarwinNotificationV12currentValue4names6UInt64VSo18CFNotificationNamea_tFZ_0;
}

uint64_t _s10FindMyBase18DarwinNotificationV12currentValue4names6UInt64VSo18CFNotificationNamea_tFZ_0()
{
  v9 = *MEMORY[0x1E69E9840];
  out_token = 0;
  sub_1DF63298C();
  v0 = sub_1DF632A7C();

  notify_register_check((v0 + 32), &out_token);

  if (out_token == -1)
  {
    if (qword_1ED8E5BE8 != -1)
    {
      swift_once();
    }

    v2 = sub_1DF6326AC();
    __swift_project_value_buffer(v2, qword_1ED8E5BF0);
    v3 = sub_1DF63268C();
    v4 = sub_1DF63316C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DF59A000, v3, v4, "Failed notify_register_check.", v5, 2u);
      MEMORY[0x1E12D9D80](v5, -1, -1);
    }

    result = 0;
  }

  else
  {
    state64 = 0;
    notify_get_state(out_token, &state64);
    notify_cancel(out_token);
    result = state64;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DF5BA2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v50 = a2;
  v51 = a3;
  v6 = *v3;
  v7 = *(*v3 + 80);
  v49 = *(v7 - 8);
  v46 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v48 = &v44 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v47 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D00, &qword_1DF63B250);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v44 - v14;
  v16 = sub_1DF63252C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v44 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v44 - v21;
  swift_beginAccess();
  v23 = *(v4 + 17);
  v24 = *(*&v6 + 88);

  sub_1DF63289C();

  v25 = v52;
  swift_beginAccess();
  v26 = *(v4 + 14);

  v45 = a1;
  sub_1DF63289C();

  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    (*(v17 + 32))(v22, v15, v16);
    v27 = v44;
    sub_1DF5FEAA0(v44);
    sub_1DF63246C();
    v29 = v28;
    v30 = *(v17 + 8);
    v30(v27, v16);
    v30(v22, v16);
    if (v4[15] >= v29 || (v25 & 1) != 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v31 = v45;
    sub_1DF6003D4(v45);
    v32 = sub_1DF632E9C();
    v33 = v47;
    (*(*(v32 - 8) + 56))(v47, 1, 1, v32);
    v35 = v48;
    v34 = v49;
    (*(v49 + 16))(v48, v31, v7);
    type metadata accessor for AsyncKeyedThrottle();
    WitnessTable = swift_getWitnessTable();
    v37 = (*(v34 + 80) + 72) & ~*(v34 + 80);
    v38 = swift_allocObject();
    *(v38 + 2) = v4;
    *(v38 + 3) = WitnessTable;
    *(v38 + 4) = v7;
    *(v38 + 5) = v24;
    v39 = v51;
    *(v38 + 6) = v50;
    *(v38 + 7) = v39;
    *(v38 + 8) = v4;
    (*(v34 + 32))(&v38[v37], v35, v7);
    swift_retain_n();

    sub_1DF5CE7F8(0, 0, v33, &unk_1DF63B270, v38);

    return;
  }

  sub_1DF59CB50(v15, &qword_1ECE42D00, &qword_1DF63B250);
  if ((v25 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (qword_1ED8E5958 != -1)
  {
    swift_once();
  }

  v40 = sub_1DF6326AC();
  __swift_project_value_buffer(v40, qword_1ED8E69A0);
  v41 = sub_1DF63268C();
  v42 = sub_1DF63315C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1DF59A000, v41, v42, "AsyncKeyedThrottle: Not dispatching, event is throttled", v43, 2u);
    MEMORY[0x1E12D9D80](v43, -1, -1);
  }
}

uint64_t sub_1DF5BA84C()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 7);

  v8 = *(v0 + 8);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DF5BA918()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1DF5BAA10()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 128);
    v6 = *(v2 + 136);

    MEMORY[0x1EEE6DFA0](sub_1DF5BAB54, 0, 0);
  }
}

uint64_t sub_1DF5BAB54()
{
  v1 = v0[15];
  v2 = v0[16];
  sub_1DF5BAC08(v0[13], v0[14]);
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1DF5C709C;
  v5 = v0[10];
  v6 = v0[8];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v6);
}

uint64_t sub_1DF5BAC08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DF5BAC4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D00, &qword_1DF63B250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SynchronousCache.cachedValue<A>(key:computeBlock:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a3;
  v36 = a2;
  v40 = a5;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v39 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v12;
  v14 = sub_1DF63327C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v33 - v20;
  v22 = *(v5 + 16);
  v42 = a4;
  v43 = v5;
  v37 = a1;
  v38 = v5;
  v44 = a1;
  v23 = MEMORY[0x1E69E7CA8];
  v34 = v22;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)(sub_1DF5BAFC8, v41, v22, MEMORY[0x1E69E7CA8] + 8, v14);
  (*(v15 + 16))(v19, v21, v14);
  v24 = (*(v8 + 48))(v19, 1, a4);
  v25 = *(v15 + 8);
  if (v24 == 1)
  {
    v26 = v25(v19, v14);
    v27 = v39;
    v28 = v36(v26);
    MEMORY[0x1EEE9AC00](v28);
    v29 = v37;
    v30 = v38;
    *(&v33 - 4) = a4;
    *(&v33 - 3) = v30;
    *(&v33 - 2) = v29;
    *(&v33 - 1) = v27;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)(sub_1DF5CDB34, (&v33 - 6), v34, v23 + 8, a4);
    v25(v21, v14);
    return (*(v8 + 8))(v27, a4);
  }

  else
  {
    v25(v21, v14);
    v32 = *(v8 + 32);
    v32(v13, v19, a4);
    return (v32)(v40, v13, a4);
  }
}

uint64_t sub_1DF5BAFE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a1[3];
  v8 = *(v6 + 80);
  v9 = *(v6 + 88);
  sub_1DF63289C();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE436C0, &qword_1DF6393D0);
  v10 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v10 ^ 1u, 1, a2);
}

BOOL sub_1DF5BB118(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1DF5BB1B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1DF63298C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1DF5BB1F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF5BB230()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DF5BB270()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DF5BB2DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B00, &qword_1DF6391B0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF5BB354(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B00, &qword_1DF6391B0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1DF5BB3E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DF5BB4BC()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v2 = sub_1DF632E4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v5, v2);
  v7 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v4 | 7);
}

uint64_t sub_1DF5BB5D0@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  return PrefixedDefaults.subscript.getter(*a2, a2[1], *(a2 + a3 - 16), a4);
}

void sub_1DF5BB618(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *a3;
  v8 = a3[1];

  sub_1DF5DC7BC(a1, v7, v8, v5);
}

__n128 sub_1DF5BB684(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_1DF5BB690@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  result = PrefixedDefaults.subscript.getter(*a2, a2[1]);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1DF5BB6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for XPCAlarm.Criteria(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DF5BB7A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for XPCAlarm.Criteria(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF5BB844(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF63252C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DF5BB8B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF63252C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DF5BB920()
{
  v1 = sub_1DF6325AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DF5BB9E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC10FindMyBase11TimeTracker_lastCheckpointName);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1DF5BBA44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF6325AC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DF5BBAB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF6325AC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DF5BBB20@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1DF6018D4();
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v6;

  return sub_1DF5A32C0(v4);
}

uint64_t sub_1DF5BBB64(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *a2;
  sub_1DF5A32C0(*a1);
  return sub_1DF5FECC0(v3, v4);
}

__n128 sub_1DF5BBBBC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1DF5BBBC8()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);
  v8 = *&v0[v5 + 8];

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1DF5BBCA4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  if (*(v0 + v6))
  {
    v9 = *(v0 + v6 + 8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t sub_1DF5BBD9C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF5BBDD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_isCancelled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1DF5BBE2C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_isCancelled;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1DF5BBE80()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DF5BBEC0()
{
  v1 = sub_1DF63363C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1DF63365C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1DF5BC010()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DF5BC068()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF5BC0B0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF5BC0E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DF5BC128()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DF5BC168()
{
  v1 = *(v0 + 4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v2 = sub_1DF632E4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 5);

  (*(v3 + 8))(&v0[v5], v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1DF5BC25C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF6325AC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DF5BC2C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF6325AC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1DF5BC364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = type metadata accessor for ManagedDefault();
  sub_1DF62981C(a1, v7);
}

__n128 sub_1DF5BC3B0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1DF5BC41C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t String.utf8Data.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF632A1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6329EC();
  v9 = sub_1DF63299C();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  if (v11 >> 60 != 15)
  {
    return v9;
  }

  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1DF63347C();

  v13 = 0xD00000000000001ALL;
  v14 = 0x80000001DF634A50;
  MEMORY[0x1E12D82E0](a1, a2);
  MEMORY[0x1E12D82E0](0x465455206F74205DLL, 0xEA00000000002138);
  result = sub_1DF6336EC();
  __break(1u);
  return result;
}

uint64_t String.replaceCharactersFromSet(characterSet:replacementString:)()
{
  sub_1DF5BC6B8();
  sub_1DF6332AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
  sub_1DF5BC754();
  v0 = sub_1DF6328DC();

  return v0;
}

unint64_t sub_1DF5BC6B8()
{
  result = qword_1ED8E4A08;
  if (!qword_1ED8E4A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E4A08);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1DF5BC754()
{
  result = qword_1ED8E49F8;
  if (!qword_1ED8E49F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECE425C0, &qword_1DF637D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E49F8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

Swift::String __swiftcall String.deletingPrefix(_:)(Swift::String a1)
{
  v3 = v2;
  v4 = v1;
  v5 = sub_1DF632BAC();

  if (v5)
  {
    v6 = sub_1DF632ADC();
    v7 = sub_1DF5BD6CC(v6, v4, v3);
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v4 = MEMORY[0x1E12D8260](v7, v9, v11, v13);
    v3 = v14;
  }

  v15 = v4;
  v16 = v3;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

Swift::String __swiftcall String.randomString(length:)(Swift::Int length)
{
  v9 = 0;
  v10 = 0xE000000000000000;
  if ((length & 0x8000000000000000) == 0)
  {
    v1 = length;
    if (!length)
    {
      length = 0;
      v4 = 0xE000000000000000;
      goto LABEL_17;
    }

    v2 = 0;
    while (1)
    {
      length = sub_1DF632ADC();
      if (length < 0)
      {
        break;
      }

      v5 = length;
      if (!length)
      {
        goto LABEL_15;
      }

      v8 = 0;
      MEMORY[0x1E12D9DA0](&v8, 8);
      if (v5 > v8 * v5)
      {
        v6 = -v5 % v5;
        while (v6 > v8 * v5)
        {
          v8 = 0;
          MEMORY[0x1E12D9DA0](&v8, 8);
        }
      }

      ++v2;
      sub_1DF632B0C();
      v3 = sub_1DF632BEC();
      MEMORY[0x1E12D82E0](v3);

      if (v2 == v1)
      {
        length = v9;
        v4 = v10;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
LABEL_17:
  result._object = v4;
  result._countAndFlagsBits = length;
  return result;
}

uint64_t PartialMatchCase<>.init(containingRawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int (*a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v35 = a4;
  v38 = a5;
  v34 = sub_1DF63327C();
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v34);
  v33 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v36 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v32 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v32 - v23;
  v37 = a1;
  static PartialMatchCase<>.first(containing:)(a1, a2, a3, v35);
  v25 = *(a2 - 8);
  v35 = *(v25 + 48);
  if (v35(v13, 1, a2) == 1)
  {
    (*(v8 + 8))(v13, v34);
    (*(v15 + 8))(v37, AssociatedTypeWitness);
  }

  else
  {
    v32 = v8;
    sub_1DF632CAC();
    (*(v25 + 8))(v13, a2);
    (*(v15 + 32))(v24, v22, AssociatedTypeWitness);
    (*(v15 + 16))(v19, v24, AssociatedTypeWitness);
    v26 = v33;
    sub_1DF632CBC();
    v27 = *(v15 + 8);
    v27(v37, AssociatedTypeWitness);
    v27(v24, AssociatedTypeWitness);
    if (!v35(v26, 1, a2))
    {
      v31 = v38;
      (*(v25 + 32))(v38, v26, a2);
      v29 = v31;
      v28 = 0;
      return (*(v25 + 56))(v29, v28, 1, a2);
    }

    (*(v32 + 8))(v26, v34);
  }

  v28 = 1;
  v29 = v38;
  return (*(v25 + 56))(v29, v28, 1, a2);
}

uint64_t static PartialMatchCase<>.first(containing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v16[-v12];
  sub_1DF63349C();
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a1;
  v14 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_1DF632C7C();
  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

uint64_t sub_1DF5BCEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12 - v8;
  sub_1DF632CAC();
  v10 = sub_1DF6332CC();
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  return v10 & 1;
}

uint64_t sub_1DF5BD020@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1DF5BD078(uint64_t a1, id *a2)
{
  result = sub_1DF63296C();
  *a2 = 0;
  return result;
}

uint64_t sub_1DF5BD0F0(uint64_t a1, id *a2)
{
  v3 = sub_1DF63297C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1DF5BD170@<X0>(uint64_t *a1@<X8>)
{
  sub_1DF63298C();
  v2 = sub_1DF63295C();

  *a1 = v2;
  return result;
}

uint64_t sub_1DF5BD1B4()
{
  v1 = *v0;
  v2 = sub_1DF63298C();
  v3 = MEMORY[0x1E12D8380](v2);

  return v3;
}

uint64_t sub_1DF5BD1F0()
{
  v1 = *v0;
  sub_1DF63298C();
  sub_1DF632ACC();
}

uint64_t sub_1DF5BD244()
{
  v1 = *v0;
  sub_1DF63298C();
  sub_1DF633A6C();
  sub_1DF632ACC();
  v2 = sub_1DF633AAC();

  return v2;
}

void *sub_1DF5BD2E0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1DF5BD30C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1DF5BD3BC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1DF63265C();
}

uint64_t sub_1DF5BD414(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1DF63298C();
  v6 = v5;
  if (v4 == sub_1DF63298C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DF63394C();
  }

  return v9 & 1;
}

uint64_t sub_1DF5BD4B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1DF5BDB5C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1DF5BD4F0(uint64_t a1)
{
  v2 = sub_1DF5A2858(&qword_1ECE427C8, type metadata accessor for URLResourceKey);
  v3 = sub_1DF5A2858(&unk_1ECE427D0, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DF5BD5AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DF63295C();

  *a2 = v5;
  return result;
}

uint64_t sub_1DF5BD5F4(uint64_t a1)
{
  v2 = sub_1DF5A2858(&qword_1ECE427B8, type metadata accessor for FileAttributeKey);
  v3 = sub_1DF5A2858(&qword_1ECE427C0, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void *sub_1DF5BD6B0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_1DF5BD6CC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1DF632AFC();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1DF632C0C();
}

uint64_t sub_1DF5BD7B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF5BD7D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AirTagVersionNumber(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AirTagVersionNumber(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1DF5BDB5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DF5BDBA8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF5BDBC8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t Endianness.description.getter()
{
  v1 = 0x656C7474696C2ELL;
  if (*v0 != 1)
  {
    v1 = 1734959662;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E752ELL;
  }
}

uint64_t Endianness.hashValue.getter()
{
  v1 = *v0;
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](v1);
  return sub_1DF633AAC();
}

uint64_t sub_1DF5BDD38()
{
  v1 = *v0;
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](v1);
  return sub_1DF633AAC();
}

uint64_t sub_1DF5BDD80()
{
  v1 = *v0;
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](v1);
  return sub_1DF633AAC();
}

unint64_t sub_1DF5BDDC8()
{
  result = qword_1ECE428A0;
  if (!qword_1ECE428A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE428A0);
  }

  return result;
}

uint64_t sub_1DF5BDE1C()
{
  v1 = 0x656C7474696C2ELL;
  if (*v0 != 1)
  {
    v1 = 1734959662;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E752ELL;
  }
}

uint64_t getEnumTagSinglePayload for Endianness(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Endianness(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DF5BDFB4()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_1DF5BE018()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t XPCClientError.hashValue.getter()
{
  v1 = *v0;
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](v1);
  return sub_1DF633AAC();
}

unint64_t sub_1DF5BE11C()
{
  result = qword_1ECE428A8;
  if (!qword_1ECE428A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE428A8);
  }

  return result;
}

uint64_t dispatch thunk of XPCClient.session.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF5A459C;

  return v9(a1, a2);
}

uint64_t getEnumTagSinglePayload for XPCClientError(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCClientError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t DataProtocol.deprecated_bytes.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v8 = *(*(*(*(a2 + 8) + 8) + 8) + 8);
  return sub_1DF632DFC();
}

uint64_t DataProtocol.hexString.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(*(*(v6 + 8) + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v30 - v10;
  if (("Failed to convert string [" & 0x1000000000000000) != 0)
  {
    v12 = sub_1DF632B7C();
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

  v12 = sub_1DF632B8C();
  if (!v12)
  {
    goto LABEL_6;
  }

LABEL_3:
  v13 = v2;
  v14 = v12;
  v15 = sub_1DF5B8C68(v12, 0);
  v16 = sub_1DF5B9410(&v33, (v15 + 4), v14, 0xD000000000000010, 0x80000001DF634A70);

  if (v16 != v14)
  {
    goto LABEL_22;
  }

  v2 = v13;
LABEL_7:
  v18 = v32;
  result = sub_1DF6330EC();
  if (result + 0x4000000000000000 >= 0)
  {
    v19 = sub_1DF5B96E4(0, (2 * result) & ~((2 * result) >> 63), 0, MEMORY[0x1E69E7CC0]);
    (*(v2 + 16))(v5, v18, a1);
    sub_1DF632C1C();
    swift_getAssociatedConformanceWitness();
    result = sub_1DF63329C();
    if (v34)
    {
LABEL_9:
      (*(v31 + 8))(v11, AssociatedTypeWitness);

      v20 = *(v19 + 2);
      v21 = sub_1DF63294C();

      return v21;
    }

    v22 = v33;
    v23 = v15 + 4;
    while (v22 >> 4 < v15[2])
    {
      v24 = *(v23 + (v22 >> 4));
      v26 = *(v19 + 2);
      v25 = *(v19 + 3);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        result = sub_1DF5B96E4((v25 > 1), v26 + 1, 1, v19);
        v19 = result;
      }

      *(v19 + 2) = v27;
      *&v19[2 * v26 + 32] = v24;
      if ((v22 & 0xF) >= v15[2])
      {
        goto LABEL_20;
      }

      v28 = *(v23 + (v22 & 0xF));
      v29 = *(v19 + 3);
      if ((v26 + 2) > (v29 >> 1))
      {
        v19 = sub_1DF5B96E4((v29 > 1), v26 + 2, 1, v19);
      }

      *(v19 + 2) = v26 + 2;
      *&v19[2 * v27 + 32] = v28;
      result = sub_1DF63329C();
      v22 = v33;
      if (v34 == 1)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_1DF5BE894(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1DF5B2744(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_1DF5C3068(v3, v4);
    }

    else
    {
      v6 = sub_1DF5B357C(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_1DF5BE950(uint64_t a1, unint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v39 = a1;
  v40 = a2;
  *&v35 = a1;
  *(&v35 + 1) = a2;
  sub_1DF5A3A94(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42920, &qword_1DF638910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42928, &qword_1DF638918);
  if (swift_dynamicCast())
  {
    sub_1DF5A7D18(v33, &v36);
    __swift_project_boxed_opaque_existential_1(&v36, v38);
    sub_1DF63222C();
    v33[0] = v35;
    __swift_destroy_boxed_opaque_existential_1(&v36);
    goto LABEL_61;
  }

  v34 = 0;
  memset(v33, 0, sizeof(v33));
  sub_1DF5C36A4(v33);
  v2 = v40 >> 62;
  if ((v40 >> 62) > 1)
  {
    v3 = 0;
    v4 = 0;
    if (v2 == 2)
    {
      v3 = *(v39 + 16);
      v4 = *(v39 + 24);
    }
  }

  else
  {
    if (v2)
    {
      v3 = v39;
    }

    else
    {
      v3 = 0;
    }

    if (v2)
    {
      v4 = v39 >> 32;
    }

    else
    {
      v4 = BYTE6(v40);
    }
  }

  v5 = sub_1DF5C2A10(v3, v4, v39, v40);
  *&v33[0] = sub_1DF5C2FC8(v5);
  *(&v33[0] + 1) = v6;
  MEMORY[0x1EEE9AC00](*&v33[0]);
  sub_1DF5C1DFC(sub_1DF5C370C);
  v7 = *(&v36 + 1);
  v8 = v36;
  v9 = v37;
  v10 = *(&v33[0] + 1) >> 62;
  if ((*(&v33[0] + 1) >> 62) > 1)
  {
    if (v10 == 2)
    {
      v12 = *(*&v33[0] + 16);
      v11 = *(*&v33[0] + 24);
      v13 = __OFSUB__(v11, v12);
      v14 = v11 - v12;
      if (v13)
      {
        goto LABEL_73;
      }

      if (v38 != v14)
      {
        goto LABEL_22;
      }
    }

    else if (v38)
    {
      v15 = 0;
      goto LABEL_58;
    }

    goto LABEL_27;
  }

  if (v10)
  {
    if (__OFSUB__(DWORD1(v33[0]), v33[0]))
    {
      goto LABEL_74;
    }

    if (v38 != DWORD1(v33[0]) - LODWORD(v33[0]))
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  if (v38 == BYTE14(v33[0]))
  {
LABEL_27:
    LOBYTE(v16) = 0;
    v17 = *(&v36 + 1) >> 62;
    v31 = v36 >> 32;
    v32 = BYTE14(v36);
    *(&v36 + 7) = 0;
    *&v36 = 0;
    while (1)
    {
      if (v17 > 1)
      {
        if (v17 == 2)
        {
          v18 = *(v8 + 16);
LABEL_33:
          if (v9 == v18)
          {
            goto LABEL_62;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v18 = v8;
        if (v17)
        {
          goto LABEL_33;
        }
      }

      if (!v9)
      {
LABEL_62:
        if (v16)
        {
          *&v35 = v36;
          *(&v35 + 6) = *(&v36 + 6);
          sub_1DF63236C();
        }

        goto LABEL_60;
      }

LABEL_36:
      v13 = __OFSUB__(v9--, 1);
      if (v13)
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
      }

      if (v17 > 1)
      {
        if (v17 != 2)
        {
          goto LABEL_75;
        }

        if (v9 < *(v8 + 16))
        {
          goto LABEL_66;
        }

        if (v9 >= *(v8 + 24))
        {
          goto LABEL_69;
        }

        v20 = sub_1DF63211C();
        if (!v20)
        {
          goto LABEL_77;
        }

        v21 = v20;
        v22 = sub_1DF63214C();
        v23 = v9 - v22;
        if (__OFSUB__(v9, v22))
        {
          goto LABEL_71;
        }

        goto LABEL_52;
      }

      if (v17)
      {
        if (v9 < v8 || v9 >= v31)
        {
          goto LABEL_68;
        }

        v24 = sub_1DF63211C();
        if (!v24)
        {
          goto LABEL_76;
        }

        v21 = v24;
        v25 = sub_1DF63214C();
        v23 = v9 - v25;
        if (__OFSUB__(v9, v25))
        {
          goto LABEL_70;
        }

LABEL_52:
        v19 = *(v21 + v23);
        goto LABEL_53;
      }

      if (v9 >= v32)
      {
        goto LABEL_67;
      }

      *&v35 = v8;
      WORD4(v35) = v7;
      BYTE10(v35) = BYTE2(v7);
      BYTE11(v35) = BYTE3(v7);
      BYTE12(v35) = BYTE4(v7);
      BYTE13(v35) = BYTE5(v7);
      v19 = *(&v35 + v9);
LABEL_53:
      *(&v36 + v16) = v19;
      v16 = v16 + 1;
      if ((v16 >> 8))
      {
        goto LABEL_65;
      }

      if (v16 == 14)
      {
        *&v35 = v36;
        *(&v35 + 6) = *(&v36 + 6);
        sub_1DF63236C();
        LOBYTE(v16) = 0;
      }
    }
  }

LABEL_22:
  if (v10 == 2)
  {
    v15 = *(*&v33[0] + 24);
  }

  else if (v10 == 1)
  {
    v15 = *&v33[0] >> 32;
  }

  else
  {
    v15 = BYTE14(v33[0]);
  }

LABEL_58:
  if (v15 < v38)
  {
    goto LABEL_72;
  }

  sub_1DF63234C();
LABEL_60:
  sub_1DF5B33C0(v8, v7);
LABEL_61:
  v26 = v33[0];
  v27 = v39;
  v28 = v40;
  sub_1DF5A3A94(*&v33[0], *(&v33[0] + 1));
  sub_1DF5B33C0(v27, v28);
  sub_1DF5B33C0(v26, *(&v26 + 1));
  v29 = *MEMORY[0x1E69E9840];
  return v26;
}

uint64_t DataProtocol.hash(algorithm:)()
{
  v0 = sub_1DF63277C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6327CC();
  sub_1DF5B320C(&qword_1ED8E4D98, MEMORY[0x1E6966620]);
  sub_1DF63275C();
  v10 = v0;
  v11 = sub_1DF5B320C(qword_1ED8E4DA0, MEMORY[0x1E69663E0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(v1 + 16))(boxed_opaque_existential_1, v4, v0);
  __swift_project_boxed_opaque_existential_1(v9, v10);
  sub_1DF63222C();
  (*(v1 + 8))(v4, v0);
  v6 = v8[1];
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

uint64_t DataProtocol.hmac(key:algorithm:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[0] = a5;
  v7 = sub_1DF63279C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE428B0, &qword_1DF6385E0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v18 - v15;
  v19 = a1;
  v20 = a2;
  sub_1DF5A3A94(a1, a2);
  sub_1DF63278C();
  sub_1DF6327CC();
  sub_1DF5B320C(&qword_1ED8E4D98, MEMORY[0x1E6966620]);
  sub_1DF6327BC();
  (*(v8 + 8))(v11, v7);
  sub_1DF6327AC();
  (*(v13 + 8))(v16, v12);
  return v19;
}

uint64_t DataProtocol.stableUUID.getter()
{
  v2 = DataProtocol.hash(algorithm:)();
  v3 = v0;
  sub_1DF63238C();
  sub_1DF63239C();
  sub_1DF63238C();
  sub_1DF63239C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63257C();

  return sub_1DF5B33C0(v2, v3);
}

uint64_t DataProtocol.intValue.getter(uint64_t a1)
{
  result = DataProtocol.hexString.getter(a1);
  v3 = HIBYTE(v2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    v7 = sub_1DF5C2484(result, v2, 16);
    v28 = v27;

    if ((v28 & 1) == 0)
    {
      return v7;
    }

    return 0;
  }

  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1DF63350C();
      v4 = v29;
    }

    v6 = *result;
    if (v6 == 43)
    {
      if (v4 >= 1)
      {
        if (--v4)
        {
          if (result)
          {
            v7 = 0;
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15;
              v17 = v16 - 48;
              if ((v16 - 48) >= 0xA)
              {
                if ((v16 - 65) < 6)
                {
                  v17 = v16 - 55;
                }

                else
                {
                  if ((v16 - 97) > 5)
                  {
                    goto LABEL_87;
                  }

                  v17 = v16 - 87;
                }
              }

              if ((v7 - 0x800000000000000) >> 60 != 15)
              {
                goto LABEL_87;
              }

              v11 = __OFADD__(16 * v7, v17);
              v7 = 16 * v7 + v17;
              if (v11)
              {
                goto LABEL_87;
              }

              ++v15;
              if (!--v4)
              {
                goto LABEL_88;
              }
            }
          }

          goto LABEL_75;
        }

        goto LABEL_87;
      }

      goto LABEL_97;
    }

    if (v6 != 45)
    {
      if (v4)
      {
        if (result)
        {
          v7 = 0;
          while (1)
          {
            v21 = *result;
            v22 = v21 - 48;
            if ((v21 - 48) >= 0xA)
            {
              if ((v21 - 65) < 6)
              {
                v22 = v21 - 55;
              }

              else
              {
                if ((v21 - 97) > 5)
                {
                  goto LABEL_87;
                }

                v22 = v21 - 87;
              }
            }

            if ((v7 - 0x800000000000000) >> 60 != 15)
            {
              goto LABEL_87;
            }

            v11 = __OFADD__(16 * v7, v22);
            v7 = 16 * v7 + v22;
            if (v11)
            {
              goto LABEL_87;
            }

            ++result;
            if (!--v4)
            {
              goto LABEL_88;
            }
          }
        }

        goto LABEL_75;
      }

LABEL_87:
      v7 = 0;
      LOBYTE(v4) = 1;
LABEL_88:
      v31 = v4;
      v26 = v4;

      if ((v26 & 1) == 0)
      {
        return v7;
      }

      return 0;
    }

    if (v4 >= 1)
    {
      if (--v4)
      {
        if (result)
        {
          v7 = 0;
          v8 = (result + 1);
          while (1)
          {
            v9 = *v8;
            v10 = v9 - 48;
            if ((v9 - 48) >= 0xA)
            {
              if ((v9 - 65) < 6)
              {
                v10 = v9 - 55;
              }

              else
              {
                if ((v9 - 97) > 5)
                {
                  goto LABEL_87;
                }

                v10 = v9 - 87;
              }
            }

            if ((v7 - 0x800000000000000) >> 60 != 15)
            {
              goto LABEL_87;
            }

            v11 = __OFSUB__(16 * v7, v10);
            v7 = 16 * v7 - v10;
            if (v11)
            {
              goto LABEL_87;
            }

            ++v8;
            if (!--v4)
            {
              goto LABEL_88;
            }
          }
        }

LABEL_75:
        v7 = 0;
        LOBYTE(v4) = 0;
        goto LABEL_88;
      }

      goto LABEL_87;
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v30[0] = result;
  v30[1] = v2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        v7 = 0;
        v23 = v30;
        while (1)
        {
          v24 = *v23;
          v25 = v24 - 48;
          if ((v24 - 48) >= 0xA)
          {
            if ((v24 - 65) < 6)
            {
              v25 = v24 - 55;
            }

            else
            {
              if ((v24 - 97) > 5)
              {
                goto LABEL_87;
              }

              v25 = v24 - 87;
            }
          }

          if ((v7 - 0x800000000000000) >> 60 != 15)
          {
            break;
          }

          v11 = __OFADD__(16 * v7, v25);
          v7 = 16 * v7 + v25;
          if (v11)
          {
            break;
          }

          ++v23;
          if (!--v3)
          {
            LOBYTE(v4) = 0;
            goto LABEL_88;
          }
        }
      }

      goto LABEL_87;
    }

    if (v3)
    {
      v4 = v3 - 1;
      if (v3 != 1)
      {
        v7 = 0;
        v12 = v30 + 1;
        while (1)
        {
          v13 = *v12;
          v14 = v13 - 48;
          if ((v13 - 48) >= 0xA)
          {
            if ((v13 - 65) < 6)
            {
              v14 = v13 - 55;
            }

            else
            {
              if ((v13 - 97) > 5)
              {
                goto LABEL_87;
              }

              v14 = v13 - 87;
            }
          }

          if ((v7 - 0x800000000000000) >> 60 != 15)
          {
            break;
          }

          v11 = __OFSUB__(16 * v7, v14);
          v7 = 16 * v7 - v14;
          if (v11)
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_87;
    }

    goto LABEL_96;
  }

  if (v3)
  {
    v4 = v3 - 1;
    if (v3 != 1)
    {
      v7 = 0;
      v18 = v30 + 1;
      while (1)
      {
        v19 = *v18;
        v20 = v19 - 48;
        if ((v19 - 48) >= 0xA)
        {
          if ((v19 - 65) < 6)
          {
            v20 = v19 - 55;
          }

          else
          {
            if ((v19 - 97) > 5)
            {
              goto LABEL_87;
            }

            v20 = v19 - 87;
          }
        }

        if ((v7 - 0x800000000000000) >> 60 != 15)
        {
          break;
        }

        v11 = __OFADD__(16 * v7, v20);
        v7 = 16 * v7 + v20;
        if (v11)
        {
          break;
        }

        ++v18;
        if (!--v4)
        {
          goto LABEL_88;
        }
      }
    }

    goto LABEL_87;
  }

LABEL_98:
  __break(1u);
  return result;
}

uint64_t Data.DataError.hashValue.getter()
{
  v1 = *v0;
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](v1);
  return sub_1DF633AAC();
}

uint64_t sub_1DF5BFA40()
{
  if (sub_1DF632ADC())
  {

    return 0;
  }

  else
  {
    v0 = sub_1DF632A6C();
    v19 = sub_1DF5A7FF8(v0, v1);

    result = sub_1DF632ADC();
    if (result >= -1)
    {
      if (result <= 1)
      {
        v4 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v3 = result / 2;
        v4 = sub_1DF632D7C();
        *(v4 + 16) = v3;
        bzero((v4 + 32), v3);
      }

      v5 = sub_1DF632ADC();

      if (v5 < 1)
      {
LABEL_29:

        v18 = sub_1DF5C30E4(v4);

        return v18;
      }

      v6 = 0;
      v7 = v19 + 32;
      v8 = *(v19 + 16);
      while (1)
      {
        v9 = __OFADD__(v6, 2) ? 0x7FFFFFFFFFFFFFFFLL : v6 + 2;
        if (v6 >= v8)
        {
          break;
        }

        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_33;
        }

        if (v10 >= v8)
        {
          goto LABEL_34;
        }

        v11 = *(v7 + v6);
        v12 = *(v7 + v10);
        if (!isxdigit(v11) || (result = isxdigit(v12), !result))
        {

          return 0;
        }

        if (v11 >= 0x41)
        {
          v13 = 55;
        }

        else
        {
          v13 = 48;
        }

        v14 = v11 - v13;
        if ((v14 & 0xFFFFFF00) != 0)
        {
          goto LABEL_35;
        }

        if (v12 >= 0x41)
        {
          v15 = 55;
        }

        else
        {
          v15 = 48;
        }

        v16 = v12 - v15;
        if ((v16 & 0xFFFFFF00) != 0)
        {
          goto LABEL_36;
        }

        if (v14 > 0xFu)
        {
          goto LABEL_37;
        }

        v17 = 16 * (v14 & 0xF) + v16;
        if ((v17 & 0x100) != 0)
        {
          goto LABEL_38;
        }

        if (v6 >> 1 >= *(v4 + 16))
        {
          goto LABEL_39;
        }

        *(v4 + 32 + (v6 >> 1)) = v17;
        v6 = v9;
        if (v9 >= v5)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t Data.init<A>(hexString:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 8) + 8);
  if (sub_1DF6330EC())
  {
    (*(*(a2 - 8) + 8))(a1, a2);
    return 0;
  }

  else
  {
    v6 = sub_1DF6332DC();
    v8 = sub_1DF5A7FF8(v6, v7);

    result = sub_1DF6330EC();
    if (result >= -1)
    {
      if (result <= 1)
      {
        v26 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = result / 2;
        v11 = sub_1DF632D7C();
        *(v11 + 16) = v10;
        v26 = v11;
        bzero((v11 + 32), v10);
      }

      result = sub_1DF6330EC();
      if (result < 1)
      {
LABEL_32:

        v25 = sub_1DF5C30E4(v26);

        (*(*(a2 - 8) + 8))(a1, a2);
        return v25;
      }

      v12 = result;
      v13 = 0;
      v14 = v8 + 32;
      v15 = *(v8 + 16);
      while (1)
      {
        v16 = __OFADD__(v13, 2) ? 0x7FFFFFFFFFFFFFFFLL : v13 + 2;
        if (v13 >= v15)
        {
          break;
        }

        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_34;
        }

        if (v17 >= v15)
        {
          goto LABEL_35;
        }

        v18 = *(v14 + v13);
        v19 = *(v14 + v17);
        if (!isxdigit(v18) || (result = isxdigit(v19), !result))
        {
          (*(*(a2 - 8) + 8))(a1);

          return 0;
        }

        if (v18 >= 0x41)
        {
          v20 = 55;
        }

        else
        {
          v20 = 48;
        }

        v21 = v18 - v20;
        if ((v21 & 0xFFFFFF00) != 0)
        {
          goto LABEL_36;
        }

        if (v19 >= 0x41)
        {
          v22 = 55;
        }

        else
        {
          v22 = 48;
        }

        v23 = v19 - v22;
        if ((v23 & 0xFFFFFF00) != 0)
        {
          goto LABEL_37;
        }

        if (v21 > 0xFu)
        {
          goto LABEL_38;
        }

        v24 = 16 * (v21 & 0xF) + v23;
        if ((v24 & 0x100) != 0)
        {
          goto LABEL_39;
        }

        if (v13 >> 1 >= *(v26 + 16))
        {
          goto LABEL_40;
        }

        *(v26 + 32 + (v13 >> 1)) = v24;
        v13 = v16;
        if (v16 >= v12)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t Data.chunked(into:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v7 = 0;
    if (v6 != 2)
    {
      goto LABEL_10;
    }

    v9 = *(a2 + 16);
    v8 = *(a2 + 24);
    v7 = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = BYTE6(a3);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a2), a2))
  {
    goto LABEL_13;
  }

  v7 = HIDWORD(a2) - a2;
LABEL_10:
  if (result)
  {
    sub_1DF5A3A94(a2, a3);
    return sub_1DF5C026C(0, v7, v5, a2, a3, v5);
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1DF5BFFE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v37[5] = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = v6 + a4;
  if (__OFADD__(v6, a4))
  {
    __break(1u);
    goto LABEL_41;
  }

  v8 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(a3);
      goto LABEL_11;
    }

LABEL_9:
    LODWORD(v9) = HIDWORD(a2) - a2;
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      v9 = v9;
      goto LABEL_11;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v8 != 2)
  {
    goto LABEL_25;
  }

  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = __OFSUB__(v10, v11);
  v9 = v10 - v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_11:
  if (v9 >= v7)
  {
    v13 = v6 + a4;
  }

  else
  {
    v13 = v9;
  }

  if (v13 < v6)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v14 = sub_1DF63237C();
      v37[3] = MEMORY[0x1E6969080];
      v37[4] = MEMORY[0x1E6969078];
      v37[0] = v14;
      v37[1] = v15;
      v16 = __swift_project_boxed_opaque_existential_1(v37, MEMORY[0x1E6969080]);
      v7 = *v16;
      v17 = v16[1];
      v18 = v17 >> 62;
      if ((v17 >> 62) <= 1)
      {
        break;
      }

      if (v18 != 2)
      {
        memset(v35, 0, 14);
        v20 = v35;
        v19 = v35;
        goto LABEL_39;
      }

      v21 = *(v7 + 16);
      v22 = *(v7 + 24);
      v6 = sub_1DF63211C();
      v23 = v6;
      if (v6)
      {
        v6 = sub_1DF63214C();
        v7 = v21 - v6;
        if (__OFSUB__(v21, v6))
        {
          goto LABEL_43;
        }

        v23 += v7;
      }

      v12 = __OFSUB__(v22, v21);
      v24 = v22 - v21;
      if (!v12)
      {
        goto LABEL_31;
      }

      __break(1u);
LABEL_25:
      if ((v7 & (v7 >> 63)) < v6)
      {
        goto LABEL_26;
      }
    }

    if (!v18)
    {
      v35[0] = *v16;
      LOWORD(v35[1]) = v17;
      BYTE2(v35[1]) = BYTE2(v17);
      BYTE3(v35[1]) = BYTE3(v17);
      BYTE4(v35[1]) = BYTE4(v17);
      BYTE5(v35[1]) = BYTE5(v17);
      v19 = v35 + BYTE6(v17);
      v20 = v35;
      goto LABEL_39;
    }
  }

  v25 = v7;
  v26 = v7 >> 32;
  v24 = v26 - v25;
  if (v26 < v25)
  {
    goto LABEL_42;
  }

  v23 = sub_1DF63211C();
  if (v23)
  {
    v27 = sub_1DF63214C();
    if (!__OFSUB__(v25, v27))
    {
      v23 += v25 - v27;
      goto LABEL_31;
    }

LABEL_44:
    __break(1u);
  }

LABEL_31:
  v28 = sub_1DF63213C();
  if (v28 >= v24)
  {
    v29 = v24;
  }

  else
  {
    v29 = v28;
  }

  v30 = (v29 + v23);
  if (v23)
  {
    v19 = v30;
  }

  else
  {
    v19 = 0;
  }

  v20 = v23;
LABEL_39:
  sub_1DF5B3308(v20, v19, v36);
  v31 = v36[0];
  v32 = v36[1];
  result = __swift_destroy_boxed_opaque_existential_1(v37);
  *a5 = v31;
  a5[1] = v32;
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DF5C026C(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = a1;
  v12 = 0;
  v13 = a1;
  while (1)
  {
    v14 = v13 <= a2;
    if (a3 > 0)
    {
      v14 = v13 >= a2;
    }

    if (v14)
    {
      break;
    }

    v15 = __OFADD__(v13, a3);
    v13 += a3;
    if (v15)
    {
      v13 = (v13 >> 63) ^ 0x8000000000000000;
    }

    v15 = __OFADD__(v12++, 1);
    if (v15)
    {
      __break(1u);
      break;
    }
  }

  v35 = MEMORY[0x1E69E7CC0];
  sub_1DF5DB178(0, v12, 0);
  v16 = v35;
  if (v12)
  {
    while (1)
    {
      v17 = v11 <= a2;
      if (a3 > 0)
      {
        v17 = v11 >= a2;
      }

      if (v17)
      {
        break;
      }

      if (__OFADD__(v11, a3))
      {
        v18 = ((v11 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v18 = v11 + a3;
      }

      v32 = v11;
      v33 = 0;
      sub_1DF5BFFE8(&v32, a4, a5, a6, &v34);
      if (v6)
      {
        goto LABEL_38;
      }

      v19 = v34;
      v35 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        v29 = v34;
        sub_1DF5DB178((v20 > 1), v21 + 1, 1);
        v19 = v29;
        v16 = v35;
      }

      *(v16 + 16) = v21 + 1;
      *(v16 + 16 * v21 + 32) = v19;
      v11 = v18;
      if (!--v12)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_38:

    sub_1DF5B33C0(a4, a5);
    __break(1u);
  }

  else
  {
    v18 = v11;
LABEL_23:
    v22 = v18 <= a2;
    if (a3 > 0)
    {
      v22 = v18 >= a2;
    }

    if (v22)
    {
LABEL_26:
      sub_1DF5B33C0(a4, a5);
      return v16;
    }

    while (1)
    {
      v24 = __OFADD__(v18, a3) ? ((v18 + a3) >> 63) ^ 0x8000000000000000 : v18 + a3;
      v32 = v18;
      sub_1DF5BFFE8(&v32, a4, a5, a6, &v34);
      if (v6)
      {
        break;
      }

      v25 = v34;
      v35 = v16;
      v27 = *(v16 + 16);
      v26 = *(v16 + 24);
      if (v27 >= v26 >> 1)
      {
        v30 = v34;
        sub_1DF5DB178((v26 > 1), v27 + 1, 1);
        v25 = v30;
        v16 = v35;
      }

      *(v16 + 16) = v27 + 1;
      *(v16 + 16 * v27 + 32) = v25;
      v28 = v24 <= a2;
      if (a3 > 0)
      {
        v28 = v24 >= a2;
      }

      v18 = v24;
      if (v28)
      {
        goto LABEL_26;
      }
    }
  }

  result = sub_1DF5B33C0(a4, a5);
  __break(1u);
  return result;
}

uint64_t Data.subObject<A>(range:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  result = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    v17 = 0;
    v18 = 0;
    if (v16 != 2)
    {
      goto LABEL_8;
    }

    v17 = *(a4 + 16);
    v18 = *(a4 + 24);
  }

  else
  {
    if (!v16)
    {
      v17 = 0;
      v18 = BYTE6(a5);
      goto LABEL_8;
    }

    v17 = a4;
    v18 = a4 >> 32;
  }

  if (v18 < v17)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_8:
  v19 = (a3 & 1) == 0;
  if (a3)
  {
    v20 = v17;
  }

  else
  {
    v20 = a1;
  }

  if (v19)
  {
    v21 = a2;
  }

  else
  {
    v21 = v18;
  }

  v22 = *(a6 - 8);
  if (__OFSUB__(v21, v20))
  {
    goto LABEL_26;
  }

  if (*(*(a6 - 8) + 64) == v21 - v20)
  {
    v23 = 1;
    if (v20 >= v17 && v20 < v18)
    {
      v24 = v21 - 1;
      if (!__OFSUB__(v21, 1))
      {
        if (v24 >= v17 && v24 < v18)
        {
          swift_getAssociatedConformanceWitness();
          sub_1DF63399C();
          v25 = v29;
          v26 = sub_1DF63392C();
          MEMORY[0x1EEE9AC00](v26);
          *(&v29 - 4) = a4;
          *(&v29 - 3) = a5;
          *(&v29 - 2) = v20;
          *(&v29 - 1) = v21;
          return sub_1DF5C0858(v25, sub_1DF5C3308, (&v29 - 6), a6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v27);
        }

        goto LABEL_23;
      }

LABEL_27:
      __break(1u);
      return result;
    }
  }

  else
  {
    v23 = 0;
  }

LABEL_23:
  sub_1DF5C32B4();
  swift_allocError();
  *v28 = v23;
  return swift_willThrow();
}

uint64_t sub_1DF5C0784@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42948, &qword_1DF638938);
  sub_1DF5C37D4();
  sub_1DF5C3828(&qword_1ECE42958, &qword_1ECE42948, &qword_1DF638938);
  result = sub_1DF6320AC();
  *a1 = result;
  return result;
}

uint64_t sub_1DF5C0858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00]();
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t Data.write(to:excludeFromBackup:options:)(uint64_t a1, int a2)
{
  v17[3] = a2;
  v3 = sub_1DF6322FC();
  v4 = *(v3 - 8);
  v18 = v3;
  v19 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DF63226C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v20;
  result = sub_1DF6323EC();
  if (!v13)
  {
    sub_1DF63225C();
    sub_1DF63224C();
    v15 = v19;
    v16 = v18;
    (*(v19 + 16))(v7, a1, v18);
    sub_1DF6322BC();
    (*(v15 + 8))(v7, v16);
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t Data.trimmed.getter(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v40 = *MEMORY[0x1E69E9840];
  v26 = HIDWORD(a1);
  v27 = BYTE6(a2);
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      v5 = 0;
      goto LABEL_11;
    }

    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
      goto LABEL_11;
    }

    __break(1u);
LABEL_8:
    LODWORD(v5) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_72;
    }

    v5 = v5;
    goto LABEL_11;
  }

  if (v4)
  {
    goto LABEL_8;
  }

  v5 = BYTE6(a2);
LABEL_11:
  v8 = __OFSUB__(v5, 1);
  v9 = v5 - 1;
  if (v8)
  {
    goto LABEL_69;
  }

  v25 = a1 >> 32;
  v24 = v9;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v10 = *(a1 + 24);
      sub_1DF5A3A94(a1, a2);
    }

    else
    {
      v10 = 0;
    }
  }

  else if (v4)
  {
    sub_1DF5A3A94(a1, a2);
    v10 = v25;
  }

  else
  {
    v10 = BYTE6(a2);
  }

  v11 = -1;
  while (v4 <= 1)
  {
    v12 = a1;
    if (!v4)
    {
      goto LABEL_27;
    }

LABEL_25:
    if (v10 == v12)
    {
      goto LABEL_59;
    }

LABEL_28:
    v8 = __OFSUB__(v10--, 1);
    if (v8)
    {
      goto LABEL_61;
    }

    if (v4 > 1)
    {
      if (v4 != 2)
      {
        goto LABEL_73;
      }

      if (v10 < *(a1 + 16))
      {
        goto LABEL_64;
      }

      if (v10 >= *(a1 + 24))
      {
        goto LABEL_66;
      }

      v14 = sub_1DF63211C();
      if (!v14)
      {
        goto LABEL_75;
      }

      v15 = v14;
      v16 = sub_1DF63214C();
      v17 = v10 - v16;
      if (__OFSUB__(v10, v16))
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (!v4)
      {
        if (v10 >= v27)
        {
          goto LABEL_63;
        }

        v28 = a1;
        v29 = BYTE2(a1);
        v30 = BYTE3(a1);
        v31 = v26;
        v32 = BYTE5(a1);
        v33 = BYTE6(a1);
        v34 = HIBYTE(a1);
        v35 = a2;
        v36 = BYTE2(a2);
        v37 = BYTE3(a2);
        v38 = BYTE4(a2);
        v39 = BYTE5(a2);
        v13 = *(&v28 + v10);
        goto LABEL_45;
      }

      if (v10 < a1 || v10 >= v25)
      {
        goto LABEL_65;
      }

      v18 = sub_1DF63211C();
      if (!v18)
      {
        goto LABEL_74;
      }

      v15 = v18;
      v19 = sub_1DF63214C();
      v17 = v10 - v19;
      if (__OFSUB__(v10, v19))
      {
        goto LABEL_67;
      }
    }

    v13 = *(v15 + v17);
LABEL_45:
    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_62;
    }

    ++v11;
    if (v13)
    {
      if (!v4)
      {
        goto LABEL_54;
      }

      if (v4 == 2)
      {
        v21 = *(a1 + 16);
        v20 = *(a1 + 24);
        v27 = v20 - v21;
        if (!__OFSUB__(v20, v21))
        {
LABEL_54:
          sub_1DF5B33C0(a1, a2);
          if (!__OFSUB__(v27, v11))
          {
            if (((v27 - v11) & 0x8000000000000000) == 0)
            {
              goto LABEL_56;
            }

LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
          }

          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
        }

        __break(1u);
      }

      if (!__OFSUB__(v26, a1))
      {
        v27 = v26 - a1;
        goto LABEL_54;
      }

      goto LABEL_71;
    }
  }

  if (v4 == 2)
  {
    v12 = *(a1 + 16);
    goto LABEL_25;
  }

LABEL_27:
  if (v10)
  {
    goto LABEL_28;
  }

LABEL_59:
  sub_1DF5B33C0(a1, a2);
  if (v24 < 0)
  {
    goto LABEL_60;
  }

LABEL_56:
  v22 = *MEMORY[0x1E69E9840];

  return sub_1DF63241C();
}

uint64_t _s10FindMyBase7FeatureO12CoreLocationO9hashValueSivg_0()
{
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](0);
  return sub_1DF633AAC();
}

uint64_t sub_1DF5C0F4C()
{
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](0);
  return sub_1DF633AAC();
}

uint64_t sub_1DF5C0F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x1E69E6290];
  v14[4] = MEMORY[0x1E6969DF8];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x1E69E6290]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_1DF5B2744(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_1DF5C3068(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_1DF5B357C(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t RawRepresentable<>.base64EncodedString(options:)()
{
  v0 = MEMORY[0x1E12D9570]();
  sub_1DF5C10C8(&v2);
  objc_autoreleasePoolPop(v0);
  return v2;
}

uint64_t sub_1DF5C10C8@<X0>(uint64_t *a1@<X8>)
{
  sub_1DF632CAC();
  v2 = sub_1DF6323BC();
  v4 = v3;
  result = sub_1DF5B33C0(v6, v7);
  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t Data.init(stringLiteral:)()
{

  result = sub_1DF5BFA40();
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v2 = result;

    return v2;
  }

  return result;
}

uint64_t sub_1DF5C1230@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  result = sub_1DF5BFA40();
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    v8 = v6;

    *a2 = v7;
    a2[1] = v8;
  }

  return result;
}

char *sub_1DF5C1294(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42918, &qword_1DF638908);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DF5C13A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42910, &qword_1DF638900);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DF5C14AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE428F8, &qword_1DF6388E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1DF5C15B0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42900, &qword_1DF6388F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42908, &qword_1DF6388F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1DF5C16F8(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE428F0, &unk_1DF6388D8);
  v10 = *(type metadata accessor for Keychain.Item() - 8);
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
  v15 = *(type metadata accessor for Keychain.Item() - 8);
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

unint64_t sub_1DF5C18D0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1DF5B2744(a1, &a1[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1DF63215C();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1DF63210C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1DF63233C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_1DF5C1998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  v13 = a3;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return sub_1DF5C2248(MEMORY[0x1E69E7508], sub_1DF5C38A4, v10, a1, a2, MEMORY[0x1E69E7508], MEMORY[0x1E69E73E0], TupleTypeMetadata2, MEMORY[0x1E69E7410], v9);
}

uint64_t sub_1DF5C1A70(uint64_t *a1, size_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      *(&bytes + 7) = 0;
      *&bytes = 0;
      result = SecRandomCopyBytes(*MEMORY[0x1E697B308], a2, &bytes);
      goto LABEL_14;
    }

    v9 = *a1;

    sub_1DF5B33C0(v4, v3);
    *&bytes = v4;
    *(&bytes + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1DF6385D0;
    sub_1DF5B33C0(0, 0xC000000000000000);
    sub_1DF63230C();
    v10 = *(&bytes + 1);
    v11 = *(bytes + 16);
    result = sub_1DF63211C();
    if (!result)
    {
      __break(1u);
      goto LABEL_26;
    }

    v12 = result;
    v13 = sub_1DF63214C();
    v14 = __OFSUB__(v11, v13);
    v15 = v11 - v13;
    if (!v14)
    {
      sub_1DF63213C();
      result = SecRandomCopyBytes(*MEMORY[0x1E697B308], a2, (v12 + v15));
      *a1 = bytes;
      a1[1] = v10 | 0x8000000000000000;
      goto LABEL_14;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v5)
  {
    sub_1DF5B33C0(v4, v3);
    *&bytes = v4;
    WORD4(bytes) = v3;
    BYTE10(bytes) = BYTE2(v3);
    BYTE11(bytes) = BYTE3(v3);
    BYTE12(bytes) = BYTE4(v3);
    BYTE13(bytes) = BYTE5(v3);
    BYTE14(bytes) = BYTE6(v3);
    result = SecRandomCopyBytes(*MEMORY[0x1E697B308], a2, &bytes);
    v7 = DWORD2(bytes) | ((WORD6(bytes) | (BYTE14(bytes) << 16)) << 32);
    *a1 = bytes;
    a1[1] = v7;
LABEL_14:
    v18 = *MEMORY[0x1E69E9840];
    return result;
  }

  v16 = v3 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1DF5B33C0(v4, v3);
  *a1 = xmmword_1DF6385D0;
  sub_1DF5B33C0(0, 0xC000000000000000);
  v17 = v4 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v17 < v4)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (sub_1DF63211C() && __OFSUB__(v4, sub_1DF63214C()))
    {
LABEL_24:
      __break(1u);
    }

    v19 = sub_1DF63215C();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = sub_1DF6320FC();

    v16 = v22;
  }

  if (v17 < v4)
  {
    goto LABEL_21;
  }

  result = sub_1DF63211C();
  if (result)
  {
    v23 = result;
    v24 = sub_1DF63214C();
    v25 = v4 - v24;
    if (!__OFSUB__(v4, v24))
    {
      sub_1DF63213C();
      v26 = SecRandomCopyBytes(*MEMORY[0x1E697B308], a2, (v23 + v25));

      *a1 = v4;
      a1[1] = v16 | 0x4000000000000000;
      v27 = *MEMORY[0x1E69E9840];
      return v26;
    }

    goto LABEL_22;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1DF5C1DFC(void (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v23 = *MEMORY[0x1E69E9840];
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_1DF5B33C0(v5, v4);
      *&v22 = v5;
      *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v2 = xmmword_1DF6385D0;
      sub_1DF5B33C0(0, 0xC000000000000000);
      result = sub_1DF5C23A8(a1);
      v8 = v22;
      v9 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_1DF5B33C0(v5, v4);
      *&v22 = v5;
      WORD4(v22) = v4;
      BYTE10(v22) = BYTE2(v4);
      BYTE11(v22) = BYTE3(v4);
      BYTE12(v22) = BYTE4(v4);
      BYTE13(v22) = BYTE5(v4);
      BYTE14(v22) = BYTE6(v4);
      result = (a1)(&v22, &v22 + BYTE6(v4));
      v8 = v22;
      v9 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *v2 = v8;
    v2[1] = v9;
    goto LABEL_15;
  }

  if (v6 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    result = (a1)(&v22, &v22);
LABEL_15:
    v20 = *MEMORY[0x1E69E9840];
    return result;
  }

  sub_1DF5B33C0(v5, v4);
  *&v22 = v5;
  *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v2 = xmmword_1DF6385D0;
  sub_1DF5B33C0(0, 0xC000000000000000);
  sub_1DF63230C();
  v10 = *(&v22 + 1);
  v11 = *(v22 + 16);
  v12 = *(v22 + 24);
  result = sub_1DF63211C();
  if (result)
  {
    v13 = result;
    v14 = sub_1DF63214C();
    v15 = v11 - v14;
    if (__OFSUB__(v11, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (!v16)
      {
        v18 = sub_1DF63213C();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        result = (a1)(v13 + v15, v13 + v15 + v19);
        *v2 = v22;
        v2[1] = v10 | 0x8000000000000000;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF5C20AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v11 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v7 + 16))(v10, a2, a3);
  result = sub_1DF632C2C();
  *(a4 + v11) = result;
  return result;
}

uint64_t sub_1DF5C21F4(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(a3, a4 - a3);
    if (!v4)
    {
      return result;
    }

LABEL_5:
    __break(1u);
    return result;
  }

  result = a1(0, 0);
  if (v4)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1DF5C2248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  v14 = (MEMORY[0x1EEE9AC00])();
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v14);
  v23 = v25 - v22;
  if (v18)
  {
    v24 = *(*(v20 - 8) + 72);
    if (v24)
    {
      if (v19 - v18 != 0x8000000000000000 || v24 != -1)
      {
        result = v21(v18, (v19 - v18) / v24, v16);
        if (!v10)
        {
          return result;
        }

        return (*(v12 + 32))(a10, v16, a7);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  result = v21(0, 0, v25 - v22);
  v16 = v23;
  if (v10)
  {
    return (*(v12 + 32))(a10, v16, a7);
  }

  return result;
}

uint64_t sub_1DF5C23A8(void (*a1)(uint64_t, uint64_t))
{
  result = sub_1DF63231C();
  v4 = *v1;
  v5 = v1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = a1;
  v6 = *(v1 + 1);

  result = sub_1DF63211C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_1DF63214C();
  v8 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v5 - v4;
  v10 = sub_1DF63213C();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12(v7 + v8, v7 + v8 + v11);
}

unsigned __int8 *sub_1DF5C2484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1DF632BFC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DF6201C0();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1DF63350C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1DF5C2A10(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

BOOL _s10Foundation4DataV10FindMyBaseE1loiySbAC_ACtFZ_0(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a2 >> 62;
  v70 = *MEMORY[0x1E69E9840];
  v54 = HIDWORD(a1);
  v56 = BYTE6(a2);
  if ((a2 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  v12 = __OFSUB__(v10, v11);
  v9 = v10 - v11;
  if (v12)
  {
    __break(1u);
LABEL_8:
    LODWORD(v9) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v9 = v9;
  }

LABEL_11:
  v13 = a4 >> 62;
  v53 = HIDWORD(a3);
  v55 = BYTE6(a4);
  if ((a4 >> 62) <= 1)
  {
    if (!v13)
    {
      v14 = BYTE6(a4);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v13 == 2)
  {
    v16 = *(a3 + 16);
    v15 = *(a3 + 24);
    v12 = __OFSUB__(v15, v16);
    v14 = v15 - v16;
    if (!v12)
    {
      goto LABEL_20;
    }

    __break(1u);
LABEL_18:
    LODWORD(v14) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v14 = v14;
LABEL_20:
    if (v14 < v9)
    {
      v9 = v14;
    }

    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v9 &= v9 >> 63;
  if (v9 < 0)
  {
    goto LABEL_67;
  }

LABEL_23:
  v17 = 0;
  v51 = a1 >> 32;
  v52 = a1;
  v40 = a3 >> 32;
  v41 = a3;
  v49 = a1 >> 16;
  v50 = a1 >> 8;
  v47 = a1 >> 40;
  v48 = a1 >> 24;
  v45 = HIBYTE(a1);
  v46 = HIWORD(a1);
  v43 = a2 >> 16;
  v44 = a2 >> 8;
  v42 = a2 >> 24;
  v57 = v9;
  do
  {
    if (v9 == v17)
    {
      goto LABEL_61;
    }

    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if (v8 > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_99;
      }

      if (v17 < *(a1 + 16))
      {
        goto LABEL_83;
      }

      if (v17 >= *(a1 + 24))
      {
        goto LABEL_86;
      }

      v25 = sub_1DF63211C();
      if (!v25)
      {
        goto LABEL_102;
      }

      v26 = v25;
      v27 = sub_1DF63214C();
      v28 = v17 - v27;
      if (__OFSUB__(v17, v27))
      {
        goto LABEL_89;
      }

LABEL_51:
      v20 = *(v26 + v28);
      if (v13 > 1)
      {
        goto LABEL_33;
      }

      goto LABEL_52;
    }

    if (v8)
    {
      if (v17 < v52 || v17 >= v51)
      {
        goto LABEL_85;
      }

      v29 = sub_1DF63211C();
      if (!v29)
      {
        goto LABEL_101;
      }

      v26 = v29;
      v30 = sub_1DF63214C();
      v28 = v17 - v30;
      if (__OFSUB__(v17, v30))
      {
        goto LABEL_87;
      }

      goto LABEL_51;
    }

    if (v17 >= v56)
    {
      goto LABEL_84;
    }

    LOBYTE(v58) = a1;
    HIBYTE(v58) = v50;
    v59 = v49;
    v60 = v48;
    v61 = v54;
    v62 = v47;
    v63 = v46;
    v64 = v45;
    LOBYTE(v65) = a2;
    HIBYTE(v65) = v44;
    v66 = v43;
    v67 = v42;
    v68 = BYTE4(a2);
    v69 = BYTE5(a2);
    v20 = *(&v58 + v17);
    if (v13 > 1)
    {
LABEL_33:
      if (v13 != 2)
      {
        goto LABEL_100;
      }

      if (v17 < *(a3 + 16))
      {
        goto LABEL_90;
      }

      if (v17 >= *(a3 + 24))
      {
        goto LABEL_92;
      }

      v21 = sub_1DF63211C();
      if (!v21)
      {
        goto LABEL_104;
      }

      v22 = v21;
      v23 = sub_1DF63214C();
      v24 = v17 - v23;
      if (__OFSUB__(v17, v23))
      {
        goto LABEL_93;
      }

LABEL_24:
      v18 = *(v22 + v24);
      goto LABEL_25;
    }

LABEL_52:
    if (v13)
    {
      if (v17 < v41 || v17 >= v40)
      {
        goto LABEL_91;
      }

      v31 = sub_1DF63211C();
      if (!v31)
      {
        goto LABEL_103;
      }

      v22 = v31;
      v32 = sub_1DF63214C();
      v24 = v17 - v32;
      if (__OFSUB__(v17, v32))
      {
        __break(1u);
LABEL_61:
        if (v8 <= 1)
        {
          if (v8)
          {
            if (!__OFSUB__(v54, a1))
            {
              v56 = v54 - a1;
              if (v13 > 1)
              {
LABEL_75:
                if (v13 == 2)
                {
                  v38 = *(a3 + 16);
                  v37 = *(a3 + 24);
                  v55 = v37 - v38;
                  if (!__OFSUB__(v37, v38))
                  {
LABEL_80:
                    result = v56 < v55;
                    goto LABEL_81;
                  }

                  __break(1u);
                }

                v55 = 0;
                goto LABEL_80;
              }

LABEL_71:
              if (!v13)
              {
                goto LABEL_80;
              }

              if (!__OFSUB__(v53, a3))
              {
                v55 = v53 - a3;
                goto LABEL_80;
              }

LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
LABEL_101:
              __break(1u);
LABEL_102:
              __break(1u);
LABEL_103:
              __break(1u);
LABEL_104:
              __break(1u);
            }

LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
            goto LABEL_98;
          }

LABEL_70:
          if (v13 > 1)
          {
            goto LABEL_75;
          }

          goto LABEL_71;
        }

LABEL_68:
        if (v8 != 2)
        {
          v56 = 0;
          if (v13 > 1)
          {
            goto LABEL_75;
          }

          goto LABEL_71;
        }

        v36 = *(a1 + 16);
        v35 = *(a1 + 24);
        v56 = v35 - v36;
        if (__OFSUB__(v35, v36))
        {
          goto LABEL_97;
        }

        goto LABEL_70;
      }

      goto LABEL_24;
    }

    if (v17 >= v55)
    {
      goto LABEL_88;
    }

    v58 = a3;
    v59 = BYTE2(a3);
    v60 = BYTE3(a3);
    v61 = v53;
    v62 = BYTE5(a3);
    v63 = BYTE6(a3);
    v64 = HIBYTE(a3);
    v65 = a4;
    v66 = BYTE2(a4);
    v67 = BYTE3(a4);
    v68 = BYTE4(a4);
    v69 = BYTE5(a4);
    v18 = *(&v58 + v17);
LABEL_25:
    ++v17;
    v19 = v20 == v18;
    v9 = v57;
  }

  while (v19);
  v33 = sub_1DF63238C();
  result = v33 < sub_1DF63238C();
LABEL_81:
  v39 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DF5C2FC8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1DF5B32E8(result);
    }

    else
    {
      v2 = sub_1DF63215C();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1DF63212C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1DF63233C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1DF5C3068(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1DF63215C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1DF63210C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DF63233C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1DF5C30E4(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42960, &qword_1DF638940);
  v10 = sub_1DF5C3828(&unk_1ECE42318, &qword_1ECE42960, &qword_1DF638940);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1DF5B3308(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t _s10Foundation4DataV10FindMyBaseE11randomBytes5countACSi_tFZ_0(size_t a1)
{
  v5[0] = sub_1DF5C2FC8(a1);
  v5[1] = v2;
  if (!sub_1DF5C1A70(v5, a1))
  {
    return v5[0];
  }

  sub_1DF63347C();

  v4 = sub_1DF6338DC();
  MEMORY[0x1E12D82E0](v4);

  result = sub_1DF6336EC();
  __break(1u);
  return result;
}

unint64_t sub_1DF5C32B4()
{
  result = qword_1ECE428B8;
  if (!qword_1ECE428B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE428B8);
  }

  return result;
}

uint64_t sub_1DF5C3308@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_1DF5C0784(a1);
}

unint64_t sub_1DF5C3330()
{
  result = qword_1ECE428C0;
  if (!qword_1ECE428C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE428C0);
  }

  return result;
}

unint64_t sub_1DF5C3388()
{
  result = qword_1ECE428C8;
  if (!qword_1ECE428C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE428C8);
  }

  return result;
}

unint64_t sub_1DF5C33E0()
{
  result = qword_1ECE428D0;
  if (!qword_1ECE428D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE428D0);
  }

  return result;
}

unint64_t sub_1DF5C3438()
{
  result = qword_1ECE428D8;
  if (!qword_1ECE428D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE428D8);
  }

  return result;
}

unint64_t sub_1DF5C3490()
{
  result = qword_1ECE428E0;
  if (!qword_1ECE428E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE428E0);
  }

  return result;
}

unint64_t sub_1DF5C3500()
{
  result = qword_1ECE428E8;
  if (!qword_1ECE428E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE428E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BinaryEncoder(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for BinaryEncoder(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1DF5C36A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42930, &unk_1DF638920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF5C370C(uint64_t a1, uint64_t a2)
{
  v5 = **(v2 + 16);
  v4[2] = &v5;
  return sub_1DF5C21F4(sub_1DF5C3764, v4, a1, a2);
}

uint64_t sub_1DF5C3764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *v7;
  v9 = v7[1];
  sub_1DF5A3A94(*v7, v9);
  result = sub_1DF5F1844(a3, a1, a2, v8, v9);
  a3[3] = result;
  return result;
}

unint64_t sub_1DF5C37D4()
{
  result = qword_1ECE42950;
  if (!qword_1ECE42950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42950);
  }

  return result;
}

uint64_t sub_1DF5C3828(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1DF5C3890(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DF5B33C0(a1, a2);
  }

  return a1;
}

uint64_t sub_1DF5C38E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6339BC();
  v9 = a2 + *(sub_1DF63291C() + 36);
  sub_1DF6339CC();
  return (*(v5 + 8))(v8, a3);
}

uint64_t scale<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v51 = a7;
  v52 = a8;
  v53 = a6;
  v47 = a5;
  v48 = a1;
  v46 = a3;
  v50 = *(a3 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v49 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(*(AssociatedTypeWitness - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v45 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v45 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v45 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v45 - v28;
  sub_1DF5C38E8(v48, a2, a4);
  swift_getAssociatedConformanceWitness();
  sub_1DF63399C();
  sub_1DF63392C();
  v30 = *(v51 + 8);
  v31 = a2;
  sub_1DF63370C();
  v32 = *(v17 + 8);
  v32(v23, a4);
  v48 = v29;
  sub_1DF63370C();
  v51 = v17 + 8;
  v32(v26, a4);
  if (swift_dynamicCast() & 1) != 0 && (v33 = v54, v34 = v31 + *(sub_1DF63291C() + 36), sub_1DF63370C(), (swift_dynamicCast()))
  {
    v35 = v54;
    v36 = v49;
    v37 = v46;
    v38 = v47;
    sub_1DF6336AC();
    v39 = *(v38 + 8);
    if (sub_1DF63336C() < 65)
    {
      v41 = sub_1DF63337C();
      v42 = sub_1DF63335C();
      (*(v50 + 8))(v36, v37);
      if (v41)
      {
        v40 = v42;
      }

      else
      {
        v40 = v42;
      }
    }

    else
    {
      sub_1DF5C3F00();
      sub_1DF5C3F54();
      sub_1DF63281C();
      (*(v50 + 8))(v36, v37);
      v40 = v54;
    }

    v43 = log10(v35);
    v54 = log10(v33) / v43 * v40;
    sub_1DF5C3F00();
    sub_1DF63338C();
    return (v32)(v48, a4);
  }

  else
  {
    result = sub_1DF6336EC();
    __break(1u);
  }

  return result;
}

unint64_t sub_1DF5C3F00()
{
  result = qword_1ECE42970;
  if (!qword_1ECE42970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42970);
  }

  return result;
}

unint64_t sub_1DF5C3F54()
{
  result = qword_1ECE42978;
  if (!qword_1ECE42978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42978);
  }

  return result;
}

uint64_t unscale<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v57 = a6;
  v58 = a1;
  v60 = a5;
  v64 = a8;
  v12 = sub_1DF63327C();
  v55 = *(v12 - 8);
  v56 = v12;
  v13 = *(v55 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v63 = &v55 - v15;
  v62 = *(a3 - 8);
  v16 = *(v62 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v61 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v59 = &v55 - v19;
  v20 = *(a7 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(*(AssociatedTypeWitness - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v65 = *(a4 - 8);
  v24 = *(v65 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v28);
  v29 = sub_1DF63291C();
  v30 = *(a7 + 8);
  v31 = a2 + *(v29 + 36);
  v57 = a2;
  sub_1DF63370C();
  if (swift_dynamicCast())
  {
    v32 = v66;
    swift_getAssociatedConformanceWitness();
    sub_1DF63399C();
    sub_1DF63392C();
    sub_1DF63370C();
    v33 = v65;
    (*(v65 + 8))(v27, a4);
    if (swift_dynamicCast())
    {
      v34 = v33;
      v35 = v66;
      v36 = v62;
      v37 = v59;
      (*(v62 + 16))(v59, v58, a3);
      v38 = *(v60 + 8);
      v39 = sub_1DF63336C();
      v40 = v61;
      if (v39 < 65)
      {
        v43 = sub_1DF63337C();
        v44 = sub_1DF63335C();
        v41 = *(v36 + 8);
        v41(v37, a3);
        v45 = (v43 & 1) == 0;
        v34 = v65;
        if (v45)
        {
          v42 = v44;
        }

        else
        {
          v42 = v44;
        }
      }

      else
      {
        sub_1DF5C3F00();
        sub_1DF5C3F54();
        sub_1DF63281C();
        v41 = *(v36 + 8);
        v41(v37, a3);
        v42 = v66;
      }

      sub_1DF6336AC();
      if (sub_1DF63336C() <= 64)
      {
        v47 = sub_1DF63337C();
        v48 = sub_1DF63335C();
        v41(v40, a3);
        if (v47)
        {
          v46 = v48;
        }

        else
        {
          v46 = v48;
        }
      }

      else
      {
        sub_1DF5C3F00();
        sub_1DF5C3F54();
        sub_1DF63281C();
        v41(v40, a3);
        v46 = v66;
      }

      v49 = v42 / v46;
      v50 = log10(v32);
      v66 = v35 + __exp10(v50 * v49);
      v51 = v63;
      v52 = swift_dynamicCast();
      v53 = *(v34 + 56);
      if (v52)
      {
        v53(v51, 0, 1, a4);
        return (*(v34 + 32))(v64, v51, a4);
      }

      v53(v51, 1, 1, a4);
      (*(v55 + 8))(v51, v56);
    }
  }

  result = sub_1DF6336EC();
  __break(1u);
  return result;
}

uint64_t deoptionalize<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1DF63327C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  (*(v10 + 16))(&v13 - v8, a1);
  v11 = *(a2 - 8);
  result = (*(v11 + 48))(v9, 1, a2);
  if (result != 1)
  {
    return (*(v11 + 32))(a3, v9, a2);
  }

  __break(1u);
  return result;
}

{
  if (qword_1ED8E5958 != -1)
  {
    swift_once();
  }

  v6 = sub_1DF6326AC();
  __swift_project_value_buffer(v6, qword_1ED8E69A0);
  v7 = sub_1DF63268C();
  v8 = sub_1DF63317C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DF59A000, v7, v8, "deoptionalize() call is no longer needed since the value is no longer optional or force unwrapped", v9, 2u);
    MEMORY[0x1E12D9D80](v9, -1, -1);
  }

  v10 = *(*(a2 - 8) + 16);

  return v10(a3, a1, a2);
}

char *sub_1DF5C48C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42980, &qword_1DF638970);
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

uint64_t time<A>(label:logger:threshold:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v41 = a4;
  v42 = a5;
  v39 = a2;
  v40 = a3;
  v9 = sub_1DF6335AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - v15;
  v17 = sub_1DF63357C();
  a6(v17);
  if (v6)
  {
    return (*(v10 + 8))(v16, v9);
  }

  v19 = v39;
  v37 = a1;
  v38 = v9;
  sub_1DF63357C();
  v20 = sub_1DF63359C();
  v22 = v21;
  if (sub_1DF633BFC())
  {
    v42 = v22;

    v23 = sub_1DF63268C();
    v24 = sub_1DF63318C();

    v25 = v10;
    if (os_log_type_enabled(v23, v24))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      LODWORD(v41) = v24;
      v28 = v20;
      v29 = v27;
      v43 = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_1DF59EEC8(v37, v19, &v43);
      *(v26 + 12) = 2080;
      v30 = Duration.formattedDescription.getter(v28, v42);
      v32 = sub_1DF59EEC8(v30, v31, &v43);

      *(v26 + 14) = v32;
      _os_log_impl(&dword_1DF59A000, v23, v41, "TIME: %s: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v29, -1, -1);
      MEMORY[0x1E12D9D80](v26, -1, -1);

      v33 = *(v25 + 8);
    }

    else
    {

      v33 = *(v10 + 8);
    }

    v36 = v38;
    v33(v14, v38);
    return (v33)(v16, v36);
  }

  else
  {
    v34 = *(v10 + 8);
    v35 = v38;
    v34(v14, v38);
    return (v34)(v16, v35);
  }
}

uint64_t time<A>(label:logger:threshold:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = sub_1DF6335AC();
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5C4D9C, 0, 0);
}

uint64_t sub_1DF5C4D9C()
{
  v1 = v0[13];
  v2 = v0[8];
  sub_1DF63357C();
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1DF5C4E98;
  v5 = v0[9];
  v6 = v0[2];

  return v8(v6);
}

uint64_t sub_1DF5C4E98()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1DF5C5218;
  }

  else
  {
    v3 = sub_1DF5C4FAC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF5C4FAC()
{
  v37 = v0;
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[6];
  v3 = v0[7];
  sub_1DF63357C();
  v5 = sub_1DF63359C();
  v7 = v6;
  if (sub_1DF633BFC())
  {
    v9 = v0[4];
    v8 = v0[5];

    v10 = sub_1DF63268C();
    v11 = sub_1DF63318C();

    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[12];
    v13 = v0[13];
    v16 = v0[10];
    v15 = v0[11];
    if (v12)
    {
      v35 = v0[13];
      v18 = v0[3];
      v17 = v0[4];
      v34 = v0[10];
      v19 = swift_slowAlloc();
      v33 = v14;
      v20 = swift_slowAlloc();
      v36 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_1DF59EEC8(v18, v17, &v36);
      *(v19 + 12) = 2080;
      v21 = Duration.formattedDescription.getter(v5, v7);
      v23 = sub_1DF59EEC8(v21, v22, &v36);

      *(v19 + 14) = v23;
      _os_log_impl(&dword_1DF59A000, v10, v11, "TIME: %s: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v20, -1, -1);
      MEMORY[0x1E12D9D80](v19, -1, -1);

      v24 = *(v15 + 8);
      v24(v33, v34);
      v24(v35, v34);
    }

    else
    {

      v28 = *(v15 + 8);
      v28(v14, v16);
      v28(v13, v16);
    }
  }

  else
  {
    v25 = v0[13];
    v26 = v0[10];
    v27 = *(v0[11] + 8);
    v27(v0[12], v26);
    v27(v25, v26);
  }

  v30 = v0[12];
  v29 = v0[13];

  v31 = v0[1];

  return v31();
}

uint64_t sub_1DF5C5218()
{
  v1 = v0[12];
  (*(v0[11] + 8))(v0[13], v0[10]);

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t DarwinNotificationHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  DarwinNotificationHandler.init()();
  return v0;
}

uint64_t static DarwinNotificationHandler.shared.getter()
{
  if (qword_1ED8E5C08 != -1)
  {
    swift_once();
  }
}

void *DarwinNotificationHandler.deinit()
{
  if (qword_1ED8E5C20 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF6326AC();
  __swift_project_value_buffer(v1, qword_1ED8E5C28);

  v2 = sub_1DF63268C();
  v3 = sub_1DF63315C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v6 = sub_1DF5C54E0();
    v8 = sub_1DF59EEC8(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1DF59A000, v2, v3, "Deallocated %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1E12D9D80](v5, -1, -1);
    MEMORY[0x1E12D9D80](v4, -1, -1);
  }

  v9 = v0[14];

  v10 = v0[15];

  v11 = v0[16];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DarwinNotificationHandler.__deallocating_deinit()
{
  DarwinNotificationHandler.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DF5C54E0()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42988, &qword_1DF6389A0);
  v2 = sub_1DF632A3C();
  MEMORY[0x1E12D82E0](v2);

  MEMORY[0x1E12D82E0](8250, 0xE200000000000000);
  sub_1DF5B9E58();
  v3 = sub_1DF632BDC();
  MEMORY[0x1E12D82E0](v3);

  MEMORY[0x1E12D82E0](30768, 0xE200000000000000);

  MEMORY[0x1E12D82E0](62, 0xE100000000000000);
  return 60;
}

void sub_1DF5C55F8(uint64_t a1@<X8>)
{
  v2 = sub_1DF63295C();
  sub_1DF59E6F8(v2, a1);
}

uint64_t sub_1DF5C5644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42990, &qword_1DF6389A8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429A0, &qword_1DF63E290);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1DF59CB50(a1, &qword_1ECE42990, &qword_1DF6389A8);
    sub_1DF62D798(a2, a3, v10);

    return sub_1DF59CB50(v10, &qword_1ECE42990, &qword_1DF6389A8);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1DF59DF30(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1DF5C5824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A48, &qword_1DF638CC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42940, &qword_1DF638930);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1DF59CB50(a1, &qword_1ECE42A48, &qword_1DF638CC0);
    sub_1DF62D7C0(a2, a3, v10);

    return sub_1DF59CB50(v10, &qword_1ECE42A48, &qword_1DF638CC0);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1DF59F13C(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}