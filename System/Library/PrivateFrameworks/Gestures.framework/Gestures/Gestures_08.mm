void sub_18E6F76F8()
{
  if (qword_1ED6F7FC8 != -1)
  {
    swift_once();
  }

  if (byte_1ED6F9348 == 1)
  {
    v0 = getenv("GESTURES_UPDATE_TRACING_ENABLED");
    if (v0 && atoi(v0))
    {
      v1 = 1;
    }

    else
    {
      v2 = [objc_opt_self() standardUserDefaults];
      v3 = sub_18E72AFC8();
      v1 = [v2 BOOLForKey_];
    }
  }

  else
  {
    v1 = 0;
  }

  byte_1EAC8F030 = v1;
}

uint64_t sub_18E6F77F0()
{
  v2 = v0;
  v3 = *(v0 + 16) + 1;
  *(v0 + 16) = v3;
  v4 = *(v0 + 32);
  if (v4)
  {
    v5 = *(v0 + 40);
    v8 = *(v5 + 16);
    v6 = v5 + 16;
    v7 = v8;
    if (v8)
    {
      v9 = *(v0 + 24);
      v10 = (v6 + 16 * v7);
      v11 = *v10;
      v12 = *(v10 + 1);
      v13 = *(v0 + 32);

      v14 = *(v0 + 48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v0 + 48);
      v41 = *(v2 + 48);
      *(v2 + 48) = 0x8000000000000000;
      v18 = sub_18E6EB564(v11);
      v19 = *(v16 + 2);
      v20 = (v17 & 1) == 0;
      v21 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        __break(1u);
      }

      else
      {
        v22 = v17;
        if (*(v16 + 3) >= v21)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_18E70CE7C();
            v16 = v41;
          }
        }

        else
        {
          sub_18E70B4EC(v21, isUniquelyReferenced_nonNull_native);
          v16 = v41;
          v23 = sub_18E6EB564(v11);
          if ((v22 & 1) != (v24 & 1))
          {
            result = sub_18E72B818();
            __break(1u);
            return result;
          }

          v18 = v23;
        }

        v26 = *(v2 + 48);
        *(v2 + 48) = v16;

        v27 = *(v2 + 48);
        if ((v22 & 1) == 0)
        {
          sub_18E6B77F0(v18, v11, MEMORY[0x1E69E7CC0], *(v2 + 48));
        }

        v1 = *(v27 + 56);
        v16 = *(v1 + 8 * v18);
        v28 = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 8 * v18) = v16;
        if (v28)
        {
          goto LABEL_13;
        }
      }

      v16 = sub_18E6EDC4C(0, *(v16 + 2) + 1, 1, v16);
      *(v1 + 8 * v18) = v16;
LABEL_13:
      v30 = *(v16 + 2);
      v29 = *(v16 + 3);
      if (v30 >= v29 >> 1)
      {
        *(v1 + 8 * v18) = sub_18E6EDC4C((v29 > 1), v30 + 1, 1, v16);
      }

      v31 = *(v1 + 8 * v18);
      *(v31 + 16) = v30 + 1;
      v32 = v31 + 16 * v30;
      *(v32 + 32) = v9;
      *(v32 + 40) = v4;
      v33 = *(v2 + 32);
      *(v2 + 24) = 0;
      *(v2 + 32) = 0;

      v3 = *(v2 + 16);
      v25 = sub_18E6F8C80;
      goto LABEL_16;
    }
  }

  v25 = 0;
LABEL_16:
  v34 = *(v2 + 40);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 40) = v34;
  if ((v35 & 1) == 0)
  {
    v34 = sub_18E6EDC4C(0, *(v34 + 2) + 1, 1, v34);
    *(v2 + 40) = v34;
  }

  v36 = MEMORY[0x1E69E7CC0];
  v38 = *(v34 + 2);
  v37 = *(v34 + 3);
  if (v38 >= v37 >> 1)
  {
    v34 = sub_18E6EDC4C((v37 > 1), v38 + 1, 1, v34);
  }

  *(v34 + 2) = v38 + 1;
  v39 = &v34[16 * v38];
  *(v39 + 16) = v3;
  *(v39 + 5) = v36;
  *(v2 + 40) = v34;

  return sub_18E6826D0(v25);
}

uint64_t sub_18E6F7A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a1;
  v39 = a3;
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for GestureOutput();
  v41 = sub_18E72B438();
  v38 = *(v41 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v37 = v33 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EAC8E2E8, &qword_18E72DA00);
  v40 = v7;
  v10 = sub_18E72B928();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v36 = v33 - v14;
  v15 = *(a2 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_18E72B9C8();
  v21 = v20;
  (*(v15 + 16))(v18, v4, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F040, &qword_18E72FB78);
  if (swift_dynamicCast())
  {
    sub_18E689D58(&v44, v47);
    v22 = v48;
    v23 = v49;
    v33[1] = __swift_project_boxed_opaque_existential_1(v47, v48);
    v34 = v21;
    v35 = *(v23 + 32);
    *(&v45 + 1) = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_0(&v44);
    (v35)(v22, v23);
    v21 = v34;
    sub_18E69379C(&v44, v43);
    v24 = swift_allocObject();
    sub_18E689D58(v43, v24 + 16);
    __swift_destroy_boxed_opaque_existential_0(&v44);
    __swift_destroy_boxed_opaque_existential_0(v47);
    v25 = sub_18E6F9C00;
  }

  else
  {
    AssociatedConformanceWitness = 0;
    v44 = 0u;
    v45 = 0u;
    sub_18E6F9A98(&v44);
    v24 = 0;
    v25 = sub_18E6F8134;
  }

  v35 = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = v19;
  *(v26 + 24) = v21;
  v27 = v36;
  (*(v11 + 16))(v36, v42, v10);
  v28 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v29 = swift_allocObject();
  v30 = v39;
  *(v29 + 16) = a2;
  *(v29 + 24) = v30;
  (*(v11 + 32))(v29 + v28, v27, v10);
  v31 = v37;
  sub_18E6FBFA4(v10, v37);
  LOBYTE(v28) = (*(*(v40 - 8) + 48))(v31, 1) != 1;
  result = (*(v38 + 8))(v31, v41);
  *a4 = sub_18E6F9B00;
  *(a4 + 8) = v26;
  *(a4 + 16) = sub_18E6F9B30;
  *(a4 + 24) = v29;
  *(a4 + 32) = v35;
  *(a4 + 40) = v24;
  *(a4 + 48) = v28;
  return result;
}

uint64_t sub_18E6F7F88(void *a1)
{
  v6 = v1;
  v7 = *(v1 + 40);
  if (*(v7 + 2))
  {
    v4 = a1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v8 = *(v7 + 2);
      if (v8)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      v3 = sub_18E6EDC4C(0, *(v3 + 2) + 1, 1, v3);
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  v7 = sub_18E6F074C(v7);
  v8 = *(v7 + 2);
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_4:
  v9 = v8 - 1;
  v10 = &v7[16 * v9];
  v11 = *(v10 + 16);
  v2 = v11;
  v3 = *(v10 + 5);
  *(v7 + 2) = v9;
  *(v6 + 40) = v7;
  v25 = v3;
  v12 = v4[1];
  v13 = v4[3];
  v14 = v4[5];

  v15 = *(v6 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v6 + 56);
  *(v6 + 56) = 0x8000000000000000;
  sub_18E6B1C98(v4, v11, isUniquelyReferenced_nonNull_native);
  *(v6 + 56) = v24;
  v7 = *(v6 + 32);
  if (!v7)
  {
    goto LABEL_9;
  }

  v5 = *(v6 + 24);
  v17 = *(v6 + 32);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  v19 = *(v3 + 2);
  v18 = *(v3 + 3);
  if (v19 >= v18 >> 1)
  {
    v3 = sub_18E6EDC4C((v18 > 1), v19 + 1, 1, v3);
  }

  *(v3 + 2) = v19 + 1;
  v20 = &v3[16 * v19];
  *(v20 + 16) = v5;
  *(v20 + 5) = v7;
  v25 = v3;
LABEL_9:
  v21 = sub_18E6F999C(v2);
  if (v21)
  {
    sub_18E701264(v21);
    v3 = v25;
  }

  v22 = *(v6 + 32);
  *(v6 + 24) = v2;
  *(v6 + 32) = v3;
}

uint64_t sub_18E6F8140(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18E72B798();
  return 0;
}

uint64_t sub_18E6F8188()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for GestureOutput();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EAC8E2E8, &qword_18E72DA00);
  v0 = sub_18E72B928();
  return sub_18E6F820C(v0);
}

uint64_t sub_18E6F820C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v4);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v6, v15, v1);
    v19[0] = 0;
    v19[1] = 0xE000000000000000;
    sub_18E72B798();
    v17 = v19[0];
    (*(v2 + 8))(v6, v1);
  }

  else
  {
    (*(v8 + 32))(v12, v15, v7);
    v17 = sub_18E6F8474(v7);
    (*(v8 + 8))(v12, v7);
  }

  return v17;
}

uint64_t sub_18E6F8474(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v49 - v11;
  v13 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v2, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v49[1] = v2;
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
      v18 = &v15[*(swift_getTupleTypeMetadata2() + 48)];
      v19 = *v18;
      v20 = *(v18 + 1);
      v21 = *(v18 + 2);
      v22 = *(v18 + 3);
      (*(v5 + 32))(v12, v15, v4);
      v23 = 0xE000000000000000;
      v53 = 0;
      v54 = 0xE000000000000000;
      sub_18E72B798();
      if (v19)
      {
        *&v50 = v19;
        *(&v50 + 1) = v20;
        v51 = v21;
        v52 = v22;
        v24 = sub_18E6F893C();
        v23 = v25;
      }

      else
      {
        v24 = 0;
      }

      MEMORY[0x193AD15C0](v24, v23);

      v42 = v53;
      v41 = v54;
      (*(v5 + 8))(v12, v4);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
      v34 = &v15[*(swift_getTupleTypeMetadata2() + 48)];
      v35 = *v34;
      v36 = v34[1];
      v38 = v34[2];
      v37 = v34[3];
      (*(v5 + 32))(v9, v15, v4);
      v39 = 0xE000000000000000;
      v53 = 0;
      v54 = 0xE000000000000000;
      sub_18E72B798();
      if (v35)
      {
        *&v50 = v35;
        *(&v50 + 1) = v36;
        v51 = v38;
        v52 = v37;
        v35 = sub_18E6F893C();
        v39 = v40;
      }

      MEMORY[0x193AD15C0](v35, v39);

      MEMORY[0x193AD15C0](0x296C616E69662820, 0xE800000000000000);
      v42 = v53;
      v41 = v54;
      (*(v5 + 8))(v9, v4);
    }
  }

  else
  {
    v26 = *v15;
    v27 = *(v15 + 1);
    v28 = *(v15 + 2);
    v30 = *(v15 + 3);
    v29 = *(v15 + 4);
    v31 = 0xE000000000000000;
    v53 = 0;
    v54 = 0xE000000000000000;
    LOBYTE(v50) = v26;
    sub_18E72B6C8();
    if (v27)
    {
      *&v50 = v27;
      *(&v50 + 1) = v28;
      v51 = v30;
      v52 = v29;
      v32 = sub_18E6F893C();
      v31 = v33;
    }

    else
    {
      v32 = 0;
    }

    MEMORY[0x193AD15C0](v32, v31);

    v42 = v53;
    v41 = v54;
  }

  sub_18E6FED28(a1, &v50);
  v43 = v50;
  if (v50)
  {
    v45 = v51;
    v44 = v52;

    sub_18E6AF804(v43);
    if (v44)
    {
      v46 = HIBYTE(v44) & 0xF;
      if ((v44 & 0x2000000000000000) == 0)
      {
        v46 = v45 & 0xFFFFFFFFFFFFLL;
      }

      if (v46)
      {
        *&v50 = 10272;
        *(&v50 + 1) = 0xE200000000000000;
        MEMORY[0x193AD15C0](v45, v44);

        MEMORY[0x193AD15C0](41, 0xE100000000000000);
        v47 = v50;
        *&v50 = v42;
        *(&v50 + 1) = v41;

        MEMORY[0x193AD15C0](v47, *(&v47 + 1));

        return v50;
      }

      else
      {
      }
    }
  }

  return v42;
}

uint64_t sub_18E6F893C()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(*v0 + 16))
  {
    sub_18E72B5C8();
    v21 = *(v1 + 16);
    v3 = sub_18E72B778();
    v5 = v4;

    MEMORY[0x193AD15C0](0xD000000000000016, 0x800000018E73AAB0);
    v6 = sub_18E6ED4A8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_18E6ED4A8((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[16 * v8];
    *(v9 + 4) = v3;
    *(v9 + 5) = v5;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v10 = 0x7461646174654D0ALL;
  if (*(v2 + 16))
  {
    sub_18E72B5C8();
    v22 = *(v2 + 16);
    v11 = sub_18E72B778();
    v13 = v12;

    MEMORY[0x193AD15C0](0xD000000000000014, 0x800000018E73AAD0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_18E6ED4A8(0, *(v6 + 2) + 1, 1, v6);
    }

    v15 = *(v6 + 2);
    v14 = *(v6 + 3);
    if (v15 >= v14 >> 1)
    {
      v6 = sub_18E6ED4A8((v14 > 1), v15 + 1, 1, v6);
    }

    *(v6 + 2) = v15 + 1;
    v16 = &v6[16 * v15];
    *(v16 + 4) = v11;
    *(v16 + 5) = v13;
  }

  else if (!*(v6 + 2))
  {
    v10 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DCF8, &qword_18E72CEB0);
  sub_18E6A9E68();
  v17 = sub_18E72AF58();
  v19 = v18;

  MEMORY[0x193AD15C0](v17, v19);

  return v10;
}

uint64_t sub_18E6F8BE8()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 40) = MEMORY[0x1E69E7CC0];
  *(v0 + 48) = sub_18E6D4A40(v1);
  *(v0 + 56) = sub_18E6D4B50(v1);
  if (qword_1EAC8D958 != -1)
  {
    swift_once();
  }

  if (byte_1EAC8F030 != 1)
  {

    return 0;
  }

  return v0;
}

uint64_t sub_18E6F8C90()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t destroy for TraceDataSnapshot(void *a1)
{
  v2 = a1[1];

  v3 = a1[3];

  v4 = a1[5];
}

uint64_t initializeWithCopy for TraceDataSnapshot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v3;
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithCopy for TraceDataSnapshot(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v6 = *(a2 + 24);
  v7 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;

  v8 = *(a2 + 40);
  v9 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TraceDataSnapshot(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for TraceDataSnapshot(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for TraceDataSnapshot(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for Trace(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithTake for Trace(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_18E6F8FFC()
{
  v1 = *(v0 + 1);
  v2 = *v0;
  sub_18E72B888();
  sub_18E72B8B8();
  sub_18E6F9A24(v4, v1);
  return sub_18E72B8E8();
}

uint64_t sub_18E6F905C(uint64_t a1)
{
  v3 = *(v1 + 1);
  v4 = *v1;
  sub_18E72B8B8();

  return sub_18E6F9A24(a1, v3);
}

uint64_t sub_18E6F90AC()
{
  v1 = *(v0 + 1);
  v2 = *v0;
  sub_18E72B888();
  sub_18E72B8B8();
  sub_18E6F9A24(v4, v1);
  return sub_18E72B8E8();
}

uint64_t sub_18E6F9108(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 == *a2)
  {
    return sub_18E6F951C(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_18E6F9130()
{
  result = qword_1EAC8F038;
  if (!qword_1EAC8F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F038);
  }

  return result;
}

uint64_t sub_18E6F9190(unsigned __int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a3 + 16) && (v10 = sub_18E6EB564(a1), (v11 & 1) != 0))
  {
    v12 = *(a3 + 56) + 56 * v10;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
    v18 = *(v12 + 32);
    v17 = *(v12 + 40);
    v19 = *(v12 + 48);
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v18 = 0;
    v17 = 0;
    v19 = 0;
  }

  v51[0] = v13;
  v51[1] = v14;
  v51[2] = v15;
  v51[3] = v16;
  v51[4] = v18;
  v51[5] = v17;
  v52 = v19;
  v20 = sub_18E6F9CB8(v51);
  v21 = v13;
  v22 = v20;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_18E6F9F4C(v21);
  v29 = sub_18E6F9F9C(v22, v24, a6, a7, 1);
  v31 = v30;

  v32 = sub_18E6F9F9C(v26, v28, a6, a7, 0);
  v34 = v33;

  v50 = a4;

  MEMORY[0x193AD15C0](v29, v31);

  MEMORY[0x193AD15C0](10, 0xE100000000000000);
  MEMORY[0x193AD15C0](v32, v34);

  MEMORY[0x193AD15C0](10, 0xE100000000000000);
  result = a4;
  v36 = *(a2 + 16);
  if (v36)
  {

    MEMORY[0x193AD15C0](177309410, 0xA400000000000000);
    v47 = a6;
    MEMORY[0x193AD15C0](a6, a7);
    MEMORY[0x193AD15C0](176329954, 0xA400000000000000);
    MEMORY[0x193AD15C0](a6, a7);

    v37 = (a2 + 40);
    do
    {
      v38 = *v37;
      v49 = *(v37 - 4);

      if (v36 == 1)
      {
        v39 = 0x94E28094E29494E2;
      }

      else
      {
        v39 = 0x94E28094E29C94E2;
      }

      if (v36 == 1)
      {
        v40 = 538976288;
      }

      else
      {
        v40 = 0x2020208294E2;
      }

      if (v36 == 1)
      {
        v41 = 0xE400000000000000;
      }

      else
      {
        v41 = 0xA600000000000000;
      }

      MEMORY[0x193AD15C0](v39, 0xAA00000000002080);

      MEMORY[0x193AD15C0](v40, v41);

      v42 = sub_18E6F9190(v49, v38, a3, v47, a7, v47, a7);
      v44 = v43;

      MEMORY[0x193AD15C0](v42, v44);

      if (v36 != 1)
      {

        MEMORY[0x193AD15C0](176329954, 0xA400000000000000);
        MEMORY[0x193AD15C0](v47, a7);
      }

      v37 += 2;
      --v36;
    }

    while (v36);
    return v50;
  }

  return result;
}

uint64_t sub_18E6F951C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); *(v3 - 4) == *(i - 4); i += 2)
    {
      v5 = *v3;
      v6 = *i;

      v7 = sub_18E6F951C(v5, v6);

      if ((v7 & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_18E6F95DC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_18E72B0B8();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_18E6EDF74(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_18E6EDF74((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_18E72B0A8();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_18E72B038();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_18E72B038();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_18E72B0B8();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_18E6EDF74(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_18E72B0B8();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_18E6EDF74(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_18E6EDF74((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_18E72B038();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E6F999C(unsigned __int16 a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_18E6EB564(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_18E70CE7C();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  sub_18E6BC884(v10, v9);
  *v2 = v9;
  return v11;
}

uint64_t sub_18E6F9A24(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x193AD1DF0](v4);
  if (v4)
  {
    v6 = (a2 + 40);
    do
    {
      v7 = *v6;
      v8 = *(v6 - 4);
      sub_18E72B8B8();

      sub_18E6F9A24(a1, v7);

      v6 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_18E6F9A98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F048, &qword_18E72FB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18E6F9B00()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_18E6F9B30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  type metadata accessor for GestureOutput();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EAC8E2E8, &qword_18E72DA00);
  v3 = *(*(sub_18E72B928() - 8) + 80);

  return sub_18E6F8188();
}

unint64_t sub_18E6F9C08(unint64_t result, uint64_t a2, unint64_t a3)
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
  result = sub_18E72B048();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_18E72B0B8();
}

unint64_t sub_18E6F9CB8(uint64_t a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0xD000000000000010;
  }

  v2 = *(a1 + 8);
  v42 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);

  v8 = v1(v7);
  v10 = v9;
  v43 = v8;

  sub_18E723058(60, 0xE100000000000000, v8, v10);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    v14 = sub_18E72B0B8();
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = MEMORY[0x193AD1560](v14, v16, v18, v20);

    v43 = v21;
  }

  v22 = v4(v13);
  v24 = sub_18E6F9C08(5uLL, v22, v23);
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = MEMORY[0x193AD1560](v24, v26, v28, v30);
  v33 = v32;

  MEMORY[0x193AD15C0](v31, v33);

  v35 = v42(v34);
  v37 = v36;
  v38 = v43;
  v39 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v39 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {
    v40 = v35;
    MEMORY[0x193AD15C0](8250, 0xE200000000000000);
    MEMORY[0x193AD15C0](v40, v37);
  }

  else
  {
  }

  return v38;
}

uint64_t sub_18E6F9F4C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_18E6F9F9C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v52 = a3;
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  *&v53 = 10;
  *(&v53 + 1) = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](a1);
  v46[2] = &v53;
  v10 = v9;

  v12 = sub_18E6F95DC(0x7FFFFFFFFFFFFFFFLL, 1, sub_18E6FA39C, v46, a1, v10, v11);
  v13 = v12;
  v14 = v12[2];
  if (a5)
  {
    if (v14)
    {
      v15 = v12[4];
      v16 = v12[5];
      v18 = v12[6];
      v17 = v12[7];
      v19 = v14 - 1;
      if (v14 == 1)
      {
        v40 = v12[7];

        v20 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v47 = v12[6];
        v48 = v16;
        v49 = v15;
        v58 = MEMORY[0x1E69E7CC0];
        v50 = v17;

        sub_18E6EE308(0, v14 - 1, 0);
        v20 = v58;
        sub_18E6FA3F4();
        v51 = v13;
        v21 = v13 + 11;
        do
        {
          v22 = *(v21 - 1);
          v23 = *v21;
          v56 = v52;
          v57 = a4;
          v53 = *(v21 - 3);
          v54 = v22;
          v55 = v23;

          sub_18E72B058();
          v24 = v56;
          v25 = v57;
          v58 = v20;
          v27 = *(v20 + 16);
          v26 = *(v20 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_18E6EE308((v26 > 1), v27 + 1, 1);
            v20 = v58;
          }

          *(v20 + 16) = v27 + 1;
          v28 = v20 + 16 * v27;
          *(v28 + 32) = v24;
          *(v28 + 40) = v25;
          v21 += 4;
          --v19;
        }

        while (v19);

        v15 = v49;
        v17 = v50;
        v18 = v47;
        v16 = v48;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EE18, &unk_18E732000);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_18E72D720;
      v42 = MEMORY[0x193AD1560](v15, v16, v18, v17);
      v44 = v43;

      *(v41 + 32) = v42;
      *(v41 + 40) = v44;
      *&v53 = v41;
      sub_18E701358(v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DCF8, &qword_18E72CEB0);
      sub_18E6A9E68();
      v45 = sub_18E72AF58();

      return v45;
    }

    return 0;
  }

  if (v14)
  {
    v58 = MEMORY[0x1E69E7CC0];
    sub_18E6EE308(0, v14, 0);
    v29 = v58;
    sub_18E6FA3F4();
    v51 = v13;
    v30 = v13 + 7;
    do
    {
      v31 = *(v30 - 1);
      v32 = *v30;
      v56 = v52;
      v57 = a4;
      v53 = *(v30 - 3);
      v54 = v31;
      v55 = v32;

      sub_18E72B058();
      v33 = v56;
      v34 = v57;
      v58 = v29;
      v36 = *(v29 + 16);
      v35 = *(v29 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_18E6EE308((v35 > 1), v36 + 1, 1);
        v29 = v58;
      }

      *(v29 + 16) = v36 + 1;
      v37 = v29 + 16 * v36;
      *(v37 + 32) = v33;
      *(v37 + 40) = v34;
      v30 += 4;
      --v14;
    }

    while (v14);
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  *&v53 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DCF8, &qword_18E72CEB0);
  sub_18E6A9E68();
  v39 = sub_18E72AF58();

  return v39;
}

uint64_t sub_18E6FA39C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_18E72B7C8() & 1;
  }
}

unint64_t sub_18E6FA3F4()
{
  result = qword_1EAC8F050;
  if (!qword_1EAC8F050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F050);
  }

  return result;
}

uint64_t TouchEvent.timestamp.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t TouchEvent.timestamp.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

double TouchEvent.location.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

void *TouchEvent.init(id:phase:timestamp:location:)@<X0>(void *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v7 = *a2;
  *a5 = *result;
  *(a5 + 8) = v7;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = a6;
  *(a5 + 40) = a7;
  return result;
}

unint64_t sub_18E6FA538(uint64_t a1)
{
  result = sub_18E6FA560();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E6FA560()
{
  result = qword_1EAC8F058;
  if (!qword_1EAC8F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F058);
  }

  return result;
}

unint64_t sub_18E6FA5B4(uint64_t a1)
{
  result = sub_18E6FA5DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E6FA5DC()
{
  result = qword_1EAC8F060;
  if (!qword_1EAC8F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F060);
  }

  return result;
}

unint64_t sub_18E6FA630(uint64_t a1)
{
  *(a1 + 8) = sub_18E6FA660();
  result = sub_18E6FA6B4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_18E6FA660()
{
  result = qword_1EAC8F068;
  if (!qword_1EAC8F068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F068);
  }

  return result;
}

unint64_t sub_18E6FA6B4()
{
  result = qword_1EAC8F070[0];
  if (!qword_1EAC8F070[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAC8F070);
  }

  return result;
}

uint64_t sub_18E6FA708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *v6;
  v9 = v6[1];
  v10 = v6[2];
  return sub_18E72A9C0(a1, a2, a3, a4, a5, a6);
}

uint64_t getEnumTagSinglePayload for TouchEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 48))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TouchEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t GFGesturePhase.description.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 1701602409;
      case 1:
        return 0x656C626973736F70;
      case 2:
        return 0x6E61676562;
    }

LABEL_16:
    sub_18E72B5C8();

    v3 = GFGesturePhase.description.getter(a1);
    MEMORY[0x193AD15C0](v3);

    result = sub_18E72B6E8();
    __break(1u);
    return result;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0x656C6C65636E6163;
    }

    if (a1 == 6)
    {
      return 0x64656C696166;
    }

    goto LABEL_16;
  }

  if (a1 == 3)
  {
    return 0x6465676E616863;
  }

  else
  {
    return 0x6465646E65;
  }
}

uint64_t sub_18E6FA978(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_18E6FAA28(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = *(v11 + 16);
    v12 = *(v11 + 32);
    v14 = *v11;
    *(v10 + 48) = *(v11 + 48);
    *(v10 + 16) = v13;
    *(v10 + 32) = v12;
    *v10 = v14;
    v15 = ((v3 + v5 + 63) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((a2 + v5 + 63) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v16;
    *((v15 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t sub_18E6FAB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v10 + 16);
  v11 = *(v10 + 32);
  v13 = *v10;
  *(v9 + 48) = *(v10 + 48);
  *(v9 + 16) = v12;
  *(v9 + 32) = v11;
  *v9 = v13;
  v14 = ((v7 + 63) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v8 + 63) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E6FAC14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  v11 = *(v10 + 24);
  *(v9 + 8) = *(v10 + 8);
  *(v9 + 24) = v11;
  v12 = *(v10 + 48);
  *(v9 + 32) = *(v10 + 32);
  *(v9 + 48) = v12;
  v13 = ((v7 + 63) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v8 + 63) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v15[1] = v16[1];
  return a1;
}

uint64_t sub_18E6FACE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v10 + 16);
  v11 = *(v10 + 32);
  v13 = *v10;
  *(v9 + 48) = *(v10 + 48);
  *(v9 + 16) = v12;
  *(v9 + 32) = v11;
  *v9 = v13;
  v14 = ((v7 + 63) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v8 + 63) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E6FAD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  v11 = *(v10 + 24);
  *(v9 + 8) = *(v10 + 8);
  *(v9 + 24) = v11;
  v12 = *(v10 + 48);
  *(v9 + 32) = *(v10 + 32);
  *(v9 + 48) = v12;
  v13 = ((v7 + 63) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v8 + 63) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v15[1] = v16[1];
  return a1;
}

uint64_t sub_18E6FAE6C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((((*(*(*(a3 + 16) - 8) + 64) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_18E6FAF78(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((((*(v5 + 64) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((((*(v5 + 64) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((((*(v5 + 64) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((((*(v5 + 64) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

double sub_18E6FB128@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v20 = a5;
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v15 = type metadata accessor for RepeatComponent();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v21[-v17 - 8];
  (*(v11 + 16))(v14, v6, a4);
  sub_18E6FB31C(v14, a1, a2, a3, a4, v18);
  swift_getWitnessTable();
  swift_getAssociatedTypeWitness();
  type metadata accessor for ExpirationRecord();
  swift_getWitnessTable();
  sub_18E6AE000(v21);
  *&result = sub_18E6AE018(v18, v21, v15, v20).n128_u64[0];
  return result;
}

uint64_t sub_18E6FB31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for RepeatComponent();
  v13 = a6 + v12[9];
  HIBYTE(v16) = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *v13 = 0;
  *(v13 + 24) = 1;
  *(v13 + 25) = v16;
  *(v13 + 40) = 0;
  *(v13 + 48) = 1;
  result = (*(*(a5 - 8) + 32))(a6, a1, a5);
  *(a6 + v12[10]) = a2;
  v15 = (a6 + v12[11]);
  *v15 = a3;
  v15[1] = a4;
  return result;
}

void sub_18E6FB400(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
}

double sub_18E6FB41C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  sub_18E6FB400(v7);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  return result;
}

uint64_t sub_18E6FB470(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E6FB4C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

uint64_t sub_18E6FB518@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v51 = a3;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for ExpirationRecord();
  v52 = type metadata accessor for GestureOutput();
  v49 = *(v52 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v48 = &v43 - v10;
  v47 = sub_18E72B438();
  v46 = *(v47 - 8);
  v11 = *(v46 + 64);
  v12 = MEMORY[0x1EEE9AC00](v47);
  v14 = &v43 - v13;
  v54 = *(AssociatedTypeWitness - 8);
  v15 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v43 - v16;
  v55 = type metadata accessor for GestureOutput();
  v50 = *(v55 - 8);
  v17 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v19 = &v43 - v18;
  v20 = a1[1];
  v61 = *a1;
  v21 = a1[2];
  v62 = v20;
  v63 = v21;
  v64 = *(a1 + 6);
  v22 = v3 + *(a2 + 36);
  if (*v22 > 0 && (!v63 ? (v23 = *(v22 + 48)) : (v23 = 0), v23 == 1))
  {
    *(v22 + 32) = v62;
    *(v22 + 48) = 0;
  }

  else if (*(v22 + 48))
  {
    v24 = v7;
    v25 = &v61;
    v26 = &v61 + 1;
    goto LABEL_10;
  }

  v24 = v7;
  v25 = (v22 + 32);
  v26 = (v22 + 40);
LABEL_10:
  v27 = *v26;
  *&v57 = *v25;
  *(&v57 + 1) = v27;
  v58 = v62;
  v59 = v63;
  v60 = v64;
  sub_18E6FBE70(&v61, v56);
  v28 = v65;
  GestureComponent.tracingUpdate(context:)(&v57, v6, v24, v19);
  v65 = v28;
  if (v28)
  {
  }

  else
  {
    v44 = v24;
    v45 = v3;
    GestureOutput.value.getter(v55, v14);
    v30 = v54;
    if ((*(v54 + 48))(v14, 1, AssociatedTypeWitness) == 1)
    {
      (*(v46 + 8))(v14, v47);
      v31 = v55;
      result = sub_18E6FF240(v55, v56);
      v32 = v56[0];
      if (v56[0] == 3)
      {
        __break(1u);
      }

      else
      {
        sub_18E6FED28(v31, &v57);

        (*(v50 + 8))(v19, v31);
        v33 = v51;
        *v51 = v32;
        v34 = v58;
        *(v33 + 8) = v57;
        *(v33 + 24) = v34;
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      v35 = v53;
      (*(v30 + 32))(v53, v14, AssociatedTypeWitness);
      v36 = v48;
      sub_18E6FBB08(v45, v35, &v61, v6, v44, v48);
      sub_18E6FED28(v55, &v57);
      v38.i64[0] = 0;
      if (v57)
      {
        v39 = v57;
      }

      else
      {
        v39 = MEMORY[0x1E69E7CC0];
      }

      v37.i64[0] = v57;
      v40 = vandq_s8(v58, vdupq_lane_s64(vmvnq_s8(vceqq_s64(v37, v38)).i64[0], 0));
      if (v57)
      {
        v41 = *(&v57 + 1);
      }

      else
      {
        v41 = MEMORY[0x1E69E7CC0];
      }

      *&v57 = v39;
      *(&v57 + 1) = v41;
      v58 = v40;
      v42 = v52;
      sub_18E6FF750(&v57, v52, v51);

      (*(v49 + 8))(v36, v42);
      (*(v54 + 8))(v53, AssociatedTypeWitness);
      return (*(v50 + 8))(v19, v55);
    }
  }

  return result;
}

uint64_t sub_18E6FBB08@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v35 = a3;
  v36 = a2;
  v37 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for GestureOutput();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v34 - v14;
  v16 = GestureOutput.isFinal.getter(v13);
  result = type metadata accessor for RepeatComponent();
  v18 = a1 + *(result + 36);
  if (v16)
  {
    v19 = *v18 + 1;
    if (__OFADD__(*v18, 1))
    {
      __break(1u);
      return result;
    }

    v20 = result;
    *v18 = v19;
    if (v19 >= *(a1 + *(result + 40)))
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
      v33 = &v15[*(swift_getTupleTypeMetadata2() + 48)];
      (*(*(AssociatedTypeWitness - 8) + 16))(v15, v36, AssociatedTypeWitness);
      *v33 = 0u;
      *(v33 + 1) = 0u;
      swift_storeEnumTagMultiPayload();
      sub_18E6AF478(v10, v37);
      return (*(v11 + 8))(v15, v10);
    }

    (*(a5 + 24))(a4, a5);
    *(v18 + 32) = 0;
    *(v18 + 40) = 0;
    *(v18 + 48) = 1;
    v21 = *(v35 + 16);
    v22 = *(v35 + 24);
    v23 = (a1 + *(v20 + 44));
    v24 = *v23;
    v25 = v23[1];
    v26 = _s8Gestures9TimestampV1poiyA2C_s8DurationVtFZ_0();
    v28 = v27;
    *(v18 + 8) = v26;
    *(v18 + 16) = v27;
    *(v18 + 24) = 0;
    goto LABEL_10;
  }

  if (*(v18 + 24) != 1)
  {
    v26 = *(v18 + 8);
    v28 = *(v18 + 16);
LABEL_10:
    v31 = v36;
    v32 = v37;

    return sub_18E6AEDEC(v31, 0, v26, v28, 0xD000000000000017, 0x800000018E73AB80, AssociatedTypeWitness, v32);
  }

  v29 = v36;
  v30 = v37;

  return sub_18E6AEF20(v29, AssociatedTypeWitness, v30);
}

__n128 sub_18E6FBDF0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 36);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 48);
  *a2 = *v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  result = *(v3 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

__n128 sub_18E6FBE24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 48);
  v6 = v2 + *(a2 + 36);
  *v6 = *a1;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  result = *(a1 + 32);
  *(v6 + 32) = result;
  *(v6 + 48) = v5;
  return result;
}

uint64_t sub_18E6FBECC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18E6FBEEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = (a2 - 1);
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

  *(result + 49) = v3;
  return result;
}

uint64_t sub_18E6FBF40(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18E6FBFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(a1 + 16);
  v10 = *(v9 - 8);
  v11 = v10;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v10 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v7, a1);
  }

  else
  {
    v13 = *(a1 + 16);
    (*(v10 + 32))(a2, v7, v9);
    return (*(v11 + 56))(a2, 0, 1, v13);
  }
}

uint64_t sub_18E6FC174@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(result + 8);
  *a6 = *result;
  *(a6 + 8) = v6;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4 & 1;
  *(a6 + 40) = a5;
  return result;
}

void sub_18E6FC198(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t sub_18E6FC1A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E6FC1FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

void *sub_18E6FC250@<X0>(char a1@<W1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*(v3 + 32) == 1)
  {
    *(v3 + 16) = (*(*(*(*(a2 + 24) + 8) + 16) + 8))(*(a2 + 16));
    *(v3 + 24) = v7;
    *(v3 + 32) = 0;
  }

  v8 = *(v3 + 40);
  v11 = a2 + 16;
  v9 = *(a2 + 16);
  v10 = *(v11 + 8);
  if (v8)
  {
    (*(v10 + 16))(v9, v10);
  }

  else
  {
    (*(v10 + 24))(v9, v10);
  }

  v12.f64[1] = v13;
  v14 = vdup_n_s32((v8 & 2) == 0);
  v15.i64[0] = v14.u32[0];
  v15.i64[1] = v14.u32[1];
  *(v3 + 16) = vaddq_f64(*(v3 + 16), vbslq_s8(vcltzq_s64(vshlq_n_s64(v15, 0x3FuLL)), v12, vnegq_f64(v12)));
  result = (*(*(*(v10 + 8) + 8) + 16))(&v18, v9);
  if (*(v3 + 32))
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    *a3 = v18;
    *(a3 + 8) = *(v3 + 16);
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = v17;
  }

  return result;
}

__n128 sub_18E6FC3C4@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u8[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 sub_18E6FC3D8(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u8[0] = v2;
  return result;
}

uint64_t sub_18E6FC418(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E6FC454(uint64_t a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1)
  {
    v3 = a1;
    v1 = sub_18E6ED4A8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v5 = *(v1 + 2);
    v4 = *(v1 + 3);
    if (v5 >= v4 >> 1)
    {
      v1 = sub_18E6ED4A8((v4 > 1), v5 + 1, 1, v1);
    }

    *(v1 + 2) = v5 + 1;
    v6 = &v1[16 * v5];
    *(v6 + 4) = 0xD000000000000016;
    *(v6 + 5) = 0x800000018E73ABA0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v1 = MEMORY[0x1E69E7CC0];
  if ((a1 & 2) != 0)
  {
LABEL_9:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_18E6ED4A8(0, *(v1 + 2) + 1, 1, v1);
    }

    v8 = *(v1 + 2);
    v7 = *(v1 + 3);
    if (v8 >= v7 >> 1)
    {
      v1 = sub_18E6ED4A8((v7 > 1), v8 + 1, 1, v1);
    }

    *(v1 + 2) = v8 + 1;
    v9 = &v1[16 * v8];
    *(v9 + 4) = 0x6944747265766E69;
    *(v9 + 5) = 0xEF6E6F6974636572;
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DCF8, &qword_18E72CEB0);
  sub_18E6A9E68();
  v10 = sub_18E72AF58();
  v12 = v11;

  MEMORY[0x193AD15C0](v10, v12);

  MEMORY[0x193AD15C0](32032, 0xE200000000000000);

  return 8315;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_18E6FC678(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18E6FC698(uint64_t result, int a2, int a3)
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_18E6FC6DC(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_18E6FC740()
{
  result = qword_1EAC8F278;
  if (!qword_1EAC8F278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F278);
  }

  return result;
}

unint64_t sub_18E6FC798()
{
  result = qword_1EAC8F280;
  if (!qword_1EAC8F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F280);
  }

  return result;
}

unint64_t sub_18E6FC7F0()
{
  result = qword_1EAC8F288;
  if (!qword_1EAC8F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F288);
  }

  return result;
}

unint64_t sub_18E6FC848()
{
  result = qword_1EAC8F290;
  if (!qword_1EAC8F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F290);
  }

  return result;
}

uint64_t GesturePhase.isIdle.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (*(v2 + 8))(v5, a1);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 1;
    }
  }

  else
  {
    (*(*(*(a1 + 16) - 8) + 8))(v5);
  }

  return 0;
}

uint64_t GesturePhase.isTerminal.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) < 2)
    {
      return 0;
    }

    (*(v2 + 8))(v5, a1);
    return 1;
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      (*(*(*(a1 + 16) - 8) + 8))(v5);
      return 0;
    }

    (*(*(*(a1 + 16) - 8) + 8))(v5);
    return 1;
  }
}

uint64_t GesturePhase.isBlocked.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      (*(v2 + 8))(v5, a1);
    }

    return 0;
  }

  else if (EnumCaseMultiPayload)
  {
    (*(*(*(a1 + 16) - 8) + 8))(v5);
    return 0;
  }

  else
  {
    (*(*(*(a1 + 16) - 8) + 8))(v5);
    return 1;
  }
}

uint64_t GesturePhase.failureReason.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if ((result - 4) >= 2)
    {
      v9 = *v6;
      goto LABEL_5;
    }
  }

  else
  {
    result = (*(*(*(a1 + 16) - 8) + 8))(v6);
  }

  v9 = 0xF000000000000000;
LABEL_5:
  *a2 = v9;
  return result;
}

uint64_t GesturePhase.isFailed.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      (*(v2 + 8))(v5, a1);
      return 1;
    }
  }

  else
  {
    (*(*(*(a1 + 16) - 8) + 8))(v5);
  }

  return 0;
}

uint64_t GesturePhase.value.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 3)
  {
    if (EnumCaseMultiPayload - 4 >= 2)
    {
      (*(v4 + 8))(v8, a1);
    }

    v16 = 1;
  }

  else
  {
    v15 = *(v10 + 32);
    v15(v13, v8, v9);
    v15(a2, v13, v9);
    v16 = 0;
  }

  return (*(v10 + 56))(a2, v16, 1, v9);
}

uint64_t GesturePhase.isActive.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      (*(v2 + 8))(v5, a1);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(*(*(a1 + 16) - 8) + 8))(v5);
      return 1;
    }

    (*(*(*(a1 + 16) - 8) + 8))(v5);
  }

  return 0;
}

uint64_t GesturePhase.isRecognized.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      (*(v2 + 8))(v5, a1);
    }

    return 0;
  }

  else
  {
    (*(*(*(a1 + 16) - 8) + 8))(v5);
    return 1;
  }
}

uint64_t GesturePhase.isPossible.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (*(v2 + 8))(v5, a1);
    }

    else if (EnumCaseMultiPayload != 4)
    {
      return 1;
    }
  }

  else
  {
    (*(*(*(a1 + 16) - 8) + 8))(v5);
  }

  return 0;
}

uint64_t GesturePhase.description.getter(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v12 = *v4;
      v15[0] = v12;
      v13 = sub_18E6FDC0C(v15);
      sub_18E683B98(v12);
      return v13;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 1701602409;
    }

    else
    {
      return 0x656C626973736F70;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(*(*(a1 + 16) - 8) + 8))(v4);
      return 0x657669746361;
    }

    else
    {
      (*(*(*(a1 + 16) - 8) + 8))(v4);
      return 0x6465646E65;
    }
  }

  else
  {
    v8 = *(a1 + 16);
    v9 = *(v4 + *(swift_getTupleTypeMetadata2() + 48));
    strcpy(v15, "blocked(by: ");
    BYTE5(v15[1]) = 0;
    HIWORD(v15[1]) = -5120;
    v14[3] = v9;
    v10 = sub_18E72B778();
    MEMORY[0x193AD15C0](v10);

    MEMORY[0x193AD15C0](41, 0xE100000000000000);
    v11 = v15[0];
    (*(*(v8 - 8) + 8))(v4, v8);
    return v11;
  }
}

uint64_t GesturePhase.isEnded.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      (*(v2 + 8))(v5, a1);
    }

    return 0;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    (*(*(*(a1 + 16) - 8) + 8))(v5);
    return 0;
  }

  (*(*(*(a1 + 16) - 8) + 8))(v5);
  return 1;
}

uint64_t GesturePhase.mapValue<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      *a3 = *v14;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v6 + 32))(v10, v14, v5);
    a1(v10);
    (*(v6 + 8))(v10, v5);
  }

  else
  {
    v18 = *(v14 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v6 + 32))(v10, v14, v5);
    v19 = *(swift_getTupleTypeMetadata2() + 48);
    a1(v10);
    (*(v6 + 8))(v10, v5);
    *(a3 + v19) = v18;
  }

  type metadata accessor for GesturePhase();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18E6FDC0C(uint64_t *a1)
{
  v5 = *a1;
  v1 = GestureFailureReason.description.getter();
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    MEMORY[0x193AD15C0]();

    MEMORY[0x193AD15C0](41, 0xE100000000000000);
    return 0x2864656C696166;
  }

  else
  {

    return 0x64656C696166;
  }
}

void *sub_18E6FDCB0(void *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = ((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v5 > v6)
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  if ((v8 & 0x1000F8) != 0 || (v7 + 1) > 0x18)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));

    return v3;
  }

  v12 = a2[v7];
  v13 = v12 - 4;
  if (v12 >= 4)
  {
    if (v7 <= 3)
    {
      v14 = v7;
    }

    else
    {
      v14 = 4;
    }

    if (v14 <= 1)
    {
      if (!v14)
      {
        goto LABEL_27;
      }

      v15 = *a2;
    }

    else if (v14 == 2)
    {
      v15 = *a2;
    }

    else if (v14 == 3)
    {
      v15 = *a2 | (a2[2] << 16);
    }

    else
    {
      v15 = *a2;
    }

    v16 = (v15 | (v13 << (8 * v7))) + 4;
    v12 = v15 + 4;
    if (v7 < 4)
    {
      v12 = v16;
    }
  }

LABEL_27:
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      (*(v4 + 16))(__dst);
      *(v3 + v7) = 2;
      return v3;
    }

    if (v12 == 3)
    {
      v17 = *a2;
      sub_18E683B80(*a2);
      *v3 = v17;
      *(v3 + v7) = 3;
      return v3;
    }
  }

  else
  {
    if (!v12)
    {
      (*(v4 + 16))(__dst);
      *((v3 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *(&a2[v5 + 3] & 0xFFFFFFFFFFFFFFFCLL);
      *(v3 + v7) = 0;
      return v3;
    }

    if (v12 == 1)
    {
      (*(v4 + 16))(__dst);
      *(v3 + v7) = 1;
      return v3;
    }
  }

  return memcpy(__dst, a2, v7 + 1);
}

unint64_t *sub_18E6FDEDC(unint64_t *__dst, unint64_t *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = ((v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v7 > v8)
  {
    v8 = *(v6 + 64);
  }

  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = 8 * v9;
  v11 = *(__dst + v9);
  v12 = v11 - 4;
  if (v11 < 4)
  {
LABEL_21:
    if (v11 > 1)
    {
      goto LABEL_26;
    }

LABEL_22:
    if (v11 >= 2)
    {
      goto LABEL_30;
    }

LABEL_29:
    (*(v6 + 8))(__dst, v5);
    goto LABEL_30;
  }

  if (v9 <= 3)
  {
    v13 = v9;
  }

  else
  {
    v13 = 4;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *__dst;
      if (v9 < 4)
      {
        goto LABEL_25;
      }
    }

    else if (v13 == 3)
    {
      v14 = *__dst | (*(__dst + 2) << 16);
      if (v9 < 4)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v14 = *__dst;
      if (v9 < 4)
      {
        goto LABEL_25;
      }
    }

LABEL_20:
    v11 = v14 + 4;
    goto LABEL_21;
  }

  if (!v13)
  {
    goto LABEL_21;
  }

  v14 = *__dst;
  if (v9 >= 4)
  {
    goto LABEL_20;
  }

LABEL_25:
  v11 = (v14 | (v12 << v10)) + 4;
  if (v11 <= 1)
  {
    goto LABEL_22;
  }

LABEL_26:
  if (v11 == 2)
  {
    goto LABEL_29;
  }

  if (v11 == 3)
  {
    sub_18E683B98(*__dst);
  }

LABEL_30:
  v15 = *(__src + v9);
  v16 = v15 - 4;
  if (v15 < 4)
  {
    goto LABEL_44;
  }

  if (v9 <= 3)
  {
    v17 = v9;
  }

  else
  {
    v17 = 4;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *__src;
      if (v9 < 4)
      {
        goto LABEL_50;
      }
    }

    else if (v17 == 3)
    {
      v18 = *__src | (*(__src + 2) << 16);
      if (v9 < 4)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v18 = *__src;
      if (v9 < 4)
      {
        goto LABEL_50;
      }
    }

    goto LABEL_43;
  }

  if (!v17)
  {
    goto LABEL_44;
  }

  v18 = *__src;
  if (v9 >= 4)
  {
LABEL_43:
    v15 = v18 + 4;
LABEL_44:
    if (v15 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_45;
  }

LABEL_50:
  v15 = (v18 | (v16 << v10)) + 4;
  if (v15 > 1)
  {
LABEL_51:
    if (v15 == 2)
    {
      (*(v6 + 16))(__dst, __src, v5);
      v19 = 2;
      goto LABEL_58;
    }

    if (v15 == 3)
    {
      v20 = *__src;
      sub_18E683B80(v20);
      *__dst = v20;
      v19 = 3;
      goto LABEL_58;
    }

    goto LABEL_54;
  }

LABEL_45:
  if (!v15)
  {
    (*(v6 + 16))(__dst, __src, v5);
    *((__dst + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *((__src + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    *(__dst + v9) = 0;
    return __dst;
  }

  if (v15 == 1)
  {
    (*(v6 + 16))(__dst, __src, v5);
    v19 = 1;
LABEL_58:
    *(__dst + v9) = v19;
    return __dst;
  }

LABEL_54:

  return memcpy(__dst, __src, v9 + 1);
}

void *sub_18E6FE1F4(void *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v4 > v5)
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (v5 <= 8)
  {
    v6 = 8;
  }

  else
  {
    v6 = v5;
  }

  v7 = a2[v6];
  v8 = v7 - 4;
  if (v7 >= 4)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_20;
      }

      v10 = *a2;
    }

    else if (v9 == 2)
    {
      v10 = *a2;
    }

    else if (v9 == 3)
    {
      v10 = *a2 | (a2[2] << 16);
    }

    else
    {
      v10 = *a2;
    }

    v11 = (v10 | (v8 << (8 * v6))) + 4;
    v7 = v10 + 4;
    if (v6 < 4)
    {
      v7 = v11;
    }
  }

LABEL_20:
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v12 = result;
      (*(v3 + 32))();
      result = v12;
      v13 = 2;
      goto LABEL_32;
    }

    if (v7 == 3)
    {
      *result = *a2;
      *(result + v6) = 3;
      return result;
    }
  }

  else
  {
    if (!v7)
    {
      v14 = result;
      (*(v3 + 32))();
      result = v14;
      *((v14 + v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *(&a2[v4 + 3] & 0xFFFFFFFFFFFFFFFCLL);
      *(v14 + v6) = 0;
      return result;
    }

    if (v7 == 1)
    {
      v12 = result;
      (*(v3 + 32))();
      result = v12;
      v13 = 1;
LABEL_32:
      *(v12 + v6) = v13;
      return result;
    }
  }

  return memcpy(result, a2, v6 + 1);
}

uint64_t sub_18E6FE3D4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= ((v3 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4)
  {
    v3 = ((v3 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  }

  v4 = 8;
  if (v3 > 8)
  {
    v4 = v3;
  }

  v5 = (1u >> (8 * v4)) ^ 0xFB;
  if (v4 > 3)
  {
    v5 = 251;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_29;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v10 < 2)
    {
LABEL_29:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_29;
  }

LABEL_18:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_18E6FE528(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= ((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4)
  {
    v5 = ((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  }

  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = (1u >> (8 * v5)) ^ 0xFB;
  if (v5 > 3)
  {
    v6 = 251;
  }

  v7 = v5 + 1;
  if (v6 >= a3)
  {
    v8 = 0;
    if (v6 < a2)
    {
      goto LABEL_19;
    }

LABEL_23:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

LABEL_35:
        a1[v5] = -a2;
        return;
      }

      *&a1[v7] = 0;
    }

    else if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  v8 = 1;
  if (v7 <= 3)
  {
    v9 = ((~(-1 << (8 * v7)) + a3 - v6) >> (8 * v7)) + 1;
    v10 = HIWORD(v9);
    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v8 = 4;
    }

    else
    {
      v8 = v12;
    }
  }

  if (v6 >= a2)
  {
    goto LABEL_23;
  }

LABEL_19:
  v13 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v13;
    v14 = 1;
    if (v8 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v14 = (v13 >> (8 * v7)) + 1;
  if (v5 == -1)
  {
LABEL_39:
    if (v8 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v15 = v13 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_39;
  }

  if (v7 == 2)
  {
    *a1 = v15;
    if (v8 > 1)
    {
LABEL_43:
      if (v8 == 2)
      {
        *&a1[v7] = v14;
      }

      else
      {
        *&a1[v7] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v8 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v8)
  {
    a1[v7] = v14;
  }
}

uint64_t sub_18E6FE710(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= ((v2 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4)
  {
    v2 = ((v2 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  }

  v3 = 8;
  if (v2 > 8)
  {
    v3 = v2;
  }

  v4 = a1[v3];
  v5 = v4 - 4;
  if (v4 >= 4)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return v4;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 4;
    LODWORD(v4) = v7 + 4;
    if (v3 >= 4)
    {
      return v4;
    }

    else
    {
      return v8;
    }
  }

  return v4;
}

void sub_18E6FE7C4(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= ((v3 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4)
  {
    v3 = ((v3 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  }

  if (v3 <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = v3;
  }

  if (a2 > 3)
  {
    v5 = a2 - 4;
    if (v4 < 4)
    {
      a1[v4] = (v5 >> (8 * v4)) + 4;
      if (v4)
      {
        v7 = v5 & ~(-1 << (8 * v4));
        bzero(a1, v4);
        if (v4 == 3)
        {
          *a1 = v7;
          a1[2] = BYTE2(v7);
        }

        else if (v4 == 2)
        {
          *a1 = v7;
        }

        else
        {
          *a1 = v5;
        }
      }
    }

    else
    {
      a1[v4] = 4;
      bzero(a1, v4);
      *a1 = v5;
    }
  }

  else
  {
    a1[v4] = a2;
  }
}

unint64_t GestureFailureReason.description.getter()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2 <= 1)
  {
    if (v2)
    {
      sub_18E72B5C8();

      v9[0] = 0xD000000000000016;
      v9[1] = 0x800000018E73A890;
      v4 = sub_18E72B778();
      MEMORY[0x193AD15C0](v4);

      MEMORY[0x193AD15C0](41, 0xE100000000000000);
    }

    else
    {
      strcpy(v9, "excluded(by: ");
      HIWORD(v9[1]) = -4864;
      v3 = sub_18E72B778();
      MEMORY[0x193AD15C0](v3);
    }

    return v9[0];
  }

  if (v2 == 2)
  {
    v9[0] = 0;
    v9[1] = 0xE000000000000000;
    swift_getErrorValue();
    sub_18E72B798();
    return v9[0];
  }

  v6 = 0x64656C6261736964;
  if (v1 == 0xC000000000000003)
  {
    v7 = 0x646574726F6261;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v1 == 0xC000000000000002)
  {
    v8 = 0xD000000000000010;
  }

  else
  {
    v8 = v7;
  }

  if (v1 != 0xC000000000000000)
  {
    v6 = 0xD000000000000014;
  }

  if (v1 <= 0xC000000000000001)
  {
    return v6;
  }

  else
  {
    return v8;
  }
}

unint64_t *assignWithCopy for GestureFailureReason(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  sub_18E683B80(*a2);
  v4 = *a1;
  *a1 = v3;
  sub_18E683B98(v4);
  return a1;
}

unint64_t *assignWithTake for GestureFailureReason(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  sub_18E683B98(v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for GestureFailureReason(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 8))
  {
    return (*a1 + 13);
  }

  v3 = (((*a1 >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*a1 >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for GestureFailureReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_18E6FEBB8(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return *a1 + 3;
  }

  else
  {
    return v1;
  }
}

void *sub_18E6FEBE0(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFFFLL | (a2 << 62);
  }

  else
  {
    *result = (a2 - 3) | 0xC000000000000000;
  }

  return result;
}

uint64_t sub_18E6FEC1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
  v11 = (a4 + *(swift_getTupleTypeMetadata2() + 48));
  (*(*(a3 - 8) + 16))(a4, a1, a3);
  *v11 = v7;
  v11[1] = v8;
  v11[2] = v9;
  v11[3] = v10;
  type metadata accessor for GestureOutput();
  swift_storeEnumTagMultiPayload();

  return sub_18E6A9F20(v7);
}

uint64_t sub_18E6FED28@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    v9 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
    v10 = &v6[*(swift_getTupleTypeMetadata2() + 48)];
    v11 = *v10;
    v14 = *(v10 + 1);
    v15 = v11;
    result = (*(*(v9 - 8) + 8))(v6, v9);
    v13 = v14;
    v12 = v15;
  }

  else
  {
    v12 = *(v6 + 8);
    v13 = *(v6 + 24);
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t GestureOutput.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  if (swift_getEnumCaseMultiPayload())
  {
    v8 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
    v9 = &v7[*(swift_getTupleTypeMetadata2() + 48)];
    v10 = v9[1];
    v11 = v9[2];
    v12 = v9[3];
    sub_18E6AF804(*v9);
    v13 = *(v8 - 8);
    (*(v13 + 32))(a2, v7, v8);
    return (*(v13 + 56))(a2, 0, 1, v8);
  }

  else
  {
    (*(v4 + 8))(v7, a1);
    return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1);
  }
}

uint64_t GestureOutput.isFinal.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v7 = *(a1 + 16);
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
      v8 = &v5[*(swift_getTupleTypeMetadata2() + 48)];
      v9 = v8[1];
      v10 = v8[2];
      v11 = v8[3];
      sub_18E6AF804(*v8);
      (*(*(v7 - 8) + 8))(v5, v7);
      return 0;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
      v13 = &v5[*(swift_getTupleTypeMetadata2() + 48)];
      v14 = v13[1];
      v15 = v13[2];
      v16 = v13[3];
      sub_18E6AF804(*v13);
      (*(*(v7 - 8) + 8))(v5, v7);
      return 1;
    }
  }

  else
  {
    (*(v2 + 8))(v5, a1);
    return 0;
  }
}

uint64_t sub_18E6FF240@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  if (swift_getEnumCaseMultiPayload())
  {
    v8 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
    v9 = &v6[*(swift_getTupleTypeMetadata2() + 48)];
    v10 = v9[1];
    v11 = v9[2];
    v12 = v9[3];
    sub_18E6AF804(*v9);
    result = (*(*(v8 - 8) + 8))(v6, v8);
    v14 = 3;
  }

  else
  {
    v14 = *v6;
    v15 = *(v6 + 2);
    v16 = *(v6 + 3);
    v17 = *(v6 + 4);
    result = sub_18E6AF804(*(v6 + 1));
  }

  *a2 = v14;
  return result;
}

uint64_t GestureOutput.isEmpty.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
    v7 = &v5[*(swift_getTupleTypeMetadata2() + 48)];
    v8 = v7[1];
    v9 = v7[2];
    v10 = v7[3];
    sub_18E6AF804(*v7);
    (*(*(v6 - 8) + 8))(v5, v6);
    return 0;
  }

  else
  {
    (*(v2 + 8))(v5, a1);
    return 1;
  }
}

uint64_t sub_18E6FF508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  if (swift_getEnumCaseMultiPayload())
  {
    v8 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v10 = &v6[*(TupleTypeMetadata2 + 48)];
    v11 = v10[1];
    v12 = v10[2];
    v13 = v10[3];
    sub_18E6AF804(*v10);
    v14 = (a2 + *(TupleTypeMetadata2 + 48));
    (*(*(v8 - 8) + 32))(a2, v6, v8);
    *v14 = 0u;
    v14[1] = 0u;
  }

  else
  {
    v15 = *v6;
    v16 = *(v6 + 2);
    v17 = *(v6 + 3);
    v18 = *(v6 + 4);
    sub_18E6AF804(*(v6 + 1));
    *a2 = v15;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18E6FF750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v54 = a3;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v13[1];
  v53 = *v13;
  v17 = v13[3];
  v55 = v13[2];
  (*(v18 + 16))(v15, v3, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v21 = &v15[*(TupleTypeMetadata2 + 48)];
      v22 = *v21;
      v23 = *(v21 + 1);
      v52 = a2;
      v24 = v53;
      v26 = *(v21 + 2);
      v25 = *(v21 + 3);
      v51 = v26;
      v48 = v22;
      v49 = v25;
      (*(v6 + 32))(v10, v15, v5);
      v50 = *(TupleTypeMetadata2 + 48);
      v27 = v54;
      (*(v6 + 16))(v54, v10, v5);
      v28 = v48;
      *&v61 = v48;
      *(&v61 + 1) = v23;
      *&v62 = v26;
      *(&v62 + 1) = v49;
      v57 = v24;
      v58 = v16;
      v59 = v55;
      v60 = v17;

      sub_18E702B5C(&v61, &v57, &v27[v50]);
      sub_18E6AF804(v57);
      (*(v6 + 8))(v10, v5);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
      v36 = swift_getTupleTypeMetadata2();
      v37 = &v15[*(v36 + 48)];
      v38 = v37[1];
      v48 = *v37;
      v49 = v16;
      v39 = v10;
      v41 = v37[2];
      v40 = v37[3];
      v51 = v38;
      v52 = v40;
      v42 = v5;
      v43 = v6;
      v44 = *(v6 + 32);
      v45 = v39;
      v44();
      v50 = *(v36 + 48);
      v46 = v54;
      (*(v43 + 16))(v54, v45, v42);
      v28 = v48;
      *&v61 = v48;
      *(&v61 + 1) = v38;
      *&v62 = v41;
      *(&v62 + 1) = v40;
      v57 = v53;
      v58 = v49;
      v59 = v55;
      v60 = v17;

      sub_18E702B5C(&v61, &v57, &v46[v50]);
      sub_18E6AF804(v57);
      (*(v43 + 8))(v45, v42);
    }

    sub_18E6AF804(v28);
  }

  else
  {
    v29 = *v15;
    v30 = *(v15 + 1);
    v31 = *(v15 + 2);
    v33 = *(v15 + 3);
    v32 = *(v15 + 4);
    v57 = v30;
    v58 = v31;
    v59 = v33;
    v60 = v32;
    v56[0] = v53;
    v56[1] = v16;
    v56[2] = v55;
    v56[3] = v17;

    sub_18E702B5C(&v57, v56, &v61);
    sub_18E6AF804(v56[0]);
    sub_18E6AF804(v30);
    v34 = v54;
    *v54 = v29;
    v35 = v62;
    *(v34 + 8) = v61;
    *(v34 + 24) = v35;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t GestureOutputEmptyReason.hashValue.getter()
{
  v1 = *v0;
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v1);
  return sub_18E72B8E8();
}

unint64_t sub_18E6FFC3C()
{
  result = qword_1EAC8F298;
  if (!qword_1EAC8F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F298);
  }

  return result;
}

unint64_t sub_18E6FFC90(uint64_t a1)
{
  *(a1 + 8) = sub_18E6FFCC0();
  result = sub_18E6FFD14();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_18E6FFCC0()
{
  result = qword_1EAC8F2A0;
  if (!qword_1EAC8F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F2A0);
  }

  return result;
}

unint64_t sub_18E6FFD14()
{
  result = qword_1EAC8F2A8[0];
  if (!qword_1EAC8F2A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAC8F2A8);
  }

  return result;
}

uint64_t sub_18E6FFD74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = sub_18E72B438();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v31 - v10;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v3, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
      v17 = &v15[*(swift_getTupleTypeMetadata2() + 48)];
      v18 = v17[1];
      v19 = v17[2];
      v20 = v17[3];
      sub_18E6AF804(*v17);
      GestureOutput.value.getter(a2, v11);
      v21 = 0x65756C6176;
      v22 = v11;
      v23 = 0xE500000000000000;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
      v24 = &v15[*(swift_getTupleTypeMetadata2() + 48)];
      v25 = v24[1];
      v26 = v24[2];
      v27 = v24[3];
      sub_18E6AF804(*v24);
      GestureOutput.value.getter(a2, v11);
      v21 = 0x6C61566C616E6966;
      v22 = v11;
      v23 = 0xEA00000000006575;
    }

    sub_18E6C9080(v22, v21, v23, v5);
    (*(v7 + 8))(v11, v6);
    (*(*(v5 - 8) + 8))(v15, v5);
  }

  else
  {
    (*(v12 + 8))(v15, a2);
    sub_18E6FF240(a2, &v31);
    sub_18E6A695C(v31, 0x6165527974706D65, 0xEB000000006E6F73);
  }

  result = sub_18E6FED28(a2, &v31);
  v29 = v31;
  if (v31)
  {
    if (*(v31 + 16) || *(*(&v31 + 1) + 16) | v33)
    {
      sub_18E6A728C(v31, *(&v31 + 1), v32, v33, 0x617461646174656DLL, 0xE800000000000000);
      v30 = v29;
    }

    else
    {
      v30 = v31;
    }

    return sub_18E6AF804(v30);
  }

  return result;
}

uint64_t sub_18E7000F4(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18E700154(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E7001A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

uint64_t sub_18E7001FC(uint64_t a1)
{
  v7 = "(";
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8);
    swift_getTupleTypeLayout2();
    v8 = &v6;
    swift_getTupleTypeLayout2();
    v9 = &v5;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_18E7002D0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 80) & 0xF8;
  v4 = *a2;
  *a1 = *a2;
  v5 = (v3 + 23) & ~v3 & 0x1F8;

  return v4 + v5;
}

uint64_t sub_18E700338(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a2 + 16) - 8) + 64);
  v4 = 40;
  if (((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 > 0x28)
  {
    v4 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v5 = *(a1 + v4);
  if (v5 >= 3 && v4 != 0)
  {
    v5 = *a1 + 3;
  }

  if (v5 == 2 || v5 == 1)
  {
    (*(*(*(a2 + 16) - 8) + 8))(a1);
    v7 = ((a1 + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
    result = *v7;
    if (*v7 < 0xFFFFFFFF)
    {
      return result;
    }

    v9 = v7[1];

    v10 = v7 + 3;
  }

  else
  {
    result = *(a1 + 8);
    if (!result)
    {
      return result;
    }

    v11 = *(a1 + 16);

    v10 = (a1 + 32);
  }

  v12 = *v10;
}

uint64_t sub_18E700460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  if (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v6 = 40;
  }

  else
  {
    v6 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v7 = *(a2 + v6);
  if (v7 >= 3 && v6 != 0)
  {
    v7 = *a2 + 3;
  }

  if (v7 == 2)
  {
    (*(v4 + 16))(a1);
    v14 = (a1 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*v15 < 0xFFFFFFFFuLL)
    {
      v22 = *(v15 + 16);
      *v14 = *v15;
      *(v14 + 16) = v22;
    }

    else
    {
      *v14 = *v15;
      *(v14 + 8) = *(v15 + 8);
      *(v14 + 16) = *(v15 + 16);
      *(v14 + 24) = *(v15 + 24);
    }

    v12 = 2;
  }

  else if (v7 == 1)
  {
    (*(v4 + 16))(a1);
    v10 = (a1 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*v11 < 0xFFFFFFFFuLL)
    {
      v21 = *(v11 + 16);
      *v10 = *v11;
      *(v10 + 16) = v21;
    }

    else
    {
      *v10 = *v11;
      *(v10 + 8) = *(v11 + 8);
      *(v10 + 16) = *(v11 + 16);
      *(v10 + 24) = *(v11 + 24);
    }

    v12 = 1;
  }

  else
  {
    *a1 = *a2;
    v16 = (a1 + 8);
    v17 = *(a2 + 8);
    if (v17)
    {
      v19 = *(a2 + 16);
      v18 = *(a2 + 24);
      *(a1 + 8) = v17;
      *(a1 + 16) = v19;
      v20 = *(a2 + 32);
      *(a1 + 24) = v18;
      *(a1 + 32) = v20;

      v12 = 0;
    }

    else
    {
      v12 = 0;
      v23 = *(a2 + 24);
      *v16 = *(a2 + 8);
      *(a1 + 24) = v23;
    }
  }

  *(a1 + v6) = v12;
  return a1;
}

uint64_t sub_18E700678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  if (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v8 = 40;
  }

  else
  {
    v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v9 = *(a1 + v8);
  if (v9 >= 3 && v8 != 0)
  {
    v9 = *a1 + 3;
  }

  if (v9 == 2 || v9 == 1)
  {
    (*(v6 + 8))(a1, v5);
    v11 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (*v11 >= 0xFFFFFFFFuLL)
    {

      v12 = v11[1];

      v13 = v11 + 3;
LABEL_16:
      v15 = *v13;
    }
  }

  else if (*(a1 + 8))
  {

    v14 = *(a1 + 16);

    v13 = (a1 + 32);
    goto LABEL_16;
  }

  v16 = *(a2 + v8);
  if (v8)
  {
    v17 = v16 >= 3;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v16 = *a2 + 3;
  }

  if (v16 == 2)
  {
    (*(v6 + 16))(a1, a2, v5);
    v21 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*v22 < 0xFFFFFFFFuLL)
    {
      v25 = *(v22 + 16);
      *v21 = *v22;
      *(v21 + 16) = v25;
    }

    else
    {
      *v21 = *v22;
      *(v21 + 8) = *(v22 + 8);
      *(v21 + 16) = *(v22 + 16);
      *(v21 + 24) = *(v22 + 24);
    }

    v20 = 2;
  }

  else if (v16 == 1)
  {
    (*(v6 + 16))(a1, a2, v5);
    v18 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*v19 < 0xFFFFFFFFuLL)
    {
      v24 = *(v19 + 16);
      *v18 = *v19;
      *(v18 + 16) = v24;
    }

    else
    {
      *v18 = *v19;
      *(v18 + 8) = *(v19 + 8);
      *(v18 + 16) = *(v19 + 16);
      *(v18 + 24) = *(v19 + 24);
    }

    v20 = 1;
  }

  else
  {
    *a1 = *a2;
    v23 = *(a2 + 8);
    if (v23)
    {
      *(a1 + 8) = v23;
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);

      v20 = 0;
    }

    else
    {
      v20 = 0;
      v26 = *(a2 + 24);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = v26;
    }
  }

  *(a1 + v8) = v20;
  return a1;
}

uint64_t sub_18E700954(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v5 = 40;
  }

  else
  {
    v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v6 = *(a2 + v5);
  if (v6 >= 3 && v5 != 0)
  {
    v6 = *a2 + 3;
  }

  if (v6 == 2)
  {
    v14 = result;
    (*(v3 + 32))();
    result = v14;
    v16 = ((a2 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = v16[1];
    v18 = ((v14 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v18 = *v16;
    v18[1] = v17;
    v13 = 2;
  }

  else if (v6 == 1)
  {
    v8 = result;
    (*(v3 + 32))();
    result = v8;
    v10 = ((a2 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = v10[1];
    v12 = ((v8 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v10;
    v12[1] = v11;
    v13 = 1;
  }

  else
  {
    v13 = 0;
    v19 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v19;
    *(result + 32) = *(a2 + 32);
  }

  *(result + v5) = v13;
  return result;
}

uint64_t sub_18E700AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  if (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v8 = 40;
  }

  else
  {
    v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v9 = *(a1 + v8);
  if (v9 >= 3 && v8 != 0)
  {
    v9 = *a1 + 3;
  }

  if (v9 == 2 || v9 == 1)
  {
    (*(v6 + 8))(a1, v5);
    v11 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (*v11 >= 0xFFFFFFFFuLL)
    {

      v12 = v11[1];

      v13 = v11 + 3;
LABEL_16:
      v15 = *v13;
    }
  }

  else if (*(a1 + 8))
  {

    v14 = *(a1 + 16);

    v13 = (a1 + 32);
    goto LABEL_16;
  }

  v16 = *(a2 + v8);
  if (v8)
  {
    v17 = v16 >= 3;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v16 = *a2 + 3;
  }

  if (v16 == 2)
  {
    (*(v6 + 32))(a1, a2, v5);
    v22 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v23 = v22[1];
    v24 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v24 = *v22;
    v24[1] = v23;
    v21 = 2;
  }

  else if (v16 == 1)
  {
    (*(v6 + 32))(a1, a2, v5);
    v18 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v19 = v18[1];
    v20 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v18;
    v20[1] = v19;
    v21 = 1;
  }

  else
  {
    v21 = 0;
    v25 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v25;
    *(a1 + 32) = *(a2 + 32);
  }

  *(a1 + v8) = v21;
  return a1;
}

uint64_t sub_18E700CAC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v3 <= 0x28)
  {
    v3 = 40;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v4 = v3 | 1;
  if ((v3 | 1) <= 3)
  {
    v5 = ((a2 + 2) >> 8) + 1;
  }

  else
  {
    v5 = 2;
  }

  if (v5 >= 0x10000)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  if (v5 < 0x100)
  {
    v6 = 1;
  }

  if (v5 >= 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v8 = *&a1[v4];
      if (*&a1[v4])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v8 = *&a1[v4];
      if (v8)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v12 = a1[v3];
    if (v12 >= 3)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v7)
  {
    goto LABEL_27;
  }

  v8 = a1[v4];
  if (!a1[v4])
  {
    goto LABEL_27;
  }

LABEL_23:
  v10 = (v8 - 1) << (8 * v4);
  if (v4 <= 3)
  {
    v11 = *a1;
  }

  else
  {
    v10 = 0;
    v11 = *a1;
  }

  return (v11 | v10) + 254;
}

void sub_18E700D98(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v5 <= 0x28)
  {
    v5 = 40;
  }

  v6 = v5 | 1;
  if (a3 < 0xFE)
  {
    v9 = 0;
    if (a2 > 0xFD)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v6] = 0;
    }

    else if (v9)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      a1[v5] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v6 <= 3)
  {
    v7 = ((a3 + 2) >> 8) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v8 = 1;
  }

  if (v7 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (a2 <= 0xFD)
  {
    goto LABEL_24;
  }

LABEL_16:
  v10 = a2 - 254;
  v11 = (a2 - 254) >> 8;
  bzero(a1, v5 | 1);
  if (v6 <= 3)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 1;
  }

  if (v6 <= 3)
  {
    *a1 = v10;
    if (v9 > 1)
    {
LABEL_21:
      if (v9 == 2)
      {
        *&a1[v6] = v12;
      }

      else
      {
        *&a1[v6] = v12;
      }

      return;
    }
  }

  else
  {
    *a1 = v10;
    if (v9 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v9)
  {
    a1[v6] = v12;
  }
}

uint64_t sub_18E700EE4(_DWORD *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = 40;
  if (((*(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 > 0x28)
  {
    v3 = ((*(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v4 = *(a1 + v3);
  if (v4 >= 3 && v3 != 0)
  {
    return (*a1 + 3);
  }

  return v4;
}

void sub_18E700F38(unsigned int *a1, unsigned int a2, uint64_t a3)
{
  v3 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v3 <= 0x28)
  {
    v3 = 40;
  }

  if (a2 > 2)
  {
    if (v3)
    {
      v4 = 3;
    }

    else
    {
      v4 = a2;
    }

    *(a1 + v3) = v4;
    if (v3)
    {
      v5 = a2 - 3;
      bzero(a1, v3);
      *a1 = v5;
    }
  }

  else
  {
    *(a1 + v3) = a2;
  }
}

uint64_t destroy for GestureOutputMetadata(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[3];
}

void *initializeWithCopy for GestureOutputMetadata(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

uint64_t *assignWithCopy for GestureOutputMetadata(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a1[1];
  a1[1] = a2[1];

  a1[2] = a2[2];
  v6 = a2[3];
  v7 = a1[3];
  a1[3] = v6;

  return a1;
}

uint64_t *assignWithTake for GestureOutputMetadata(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = *(a2 + 24);
  v7 = a1[3];
  a1[2] = *(a2 + 16);
  a1[3] = v6;

  return a1;
}

uint64_t sub_18E70116C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_18E6EDD58(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_18E701264(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_18E6EDC4C(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_18E701358(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_18E6ED4A8(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_18E70144C(uint64_t result)
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

  result = sub_18E6EE18C(result, v12, 1, v3);
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

  memcpy((v3 + 24 * v8 + 32), (v6 + 32), 24 * v2);

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

uint64_t sub_18E70155C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v61 = a3;
  v69 = sub_18E72B438();
  v11 = *(v69 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v69);
  v80 = &v57 - v14;
  v15 = *(a4 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v68 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v67 = &v57 - v19;
  v20 = type metadata accessor for GestureOutput();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v86 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v79 = &v57 - v25;
  v62 = a4;
  v91 = sub_18E72AEB8();
  if (sub_18E72B228())
  {
    v58 = a2;
    v59 = v5;
    v60 = a5;
    v26 = 0;
    v27 = 0;
    v85 = 0;
    v81 = 0;
    v28 = 0;
    v83 = 0;
    v78 = (v21 + 16);
    v74 = (v15 + 48);
    v75 = (v21 + 32);
    v66 = (v15 + 32);
    v65 = (v15 + 16);
    v64 = (v15 + 8);
    v63 = (v11 + 8);
    v77 = v21;
    v73 = (v21 + 8);
    v29 = MEMORY[0x1E69E7CC0];
    v30 = v62;
    v76 = a1;
    while (1)
    {
      v35 = v27;
      v36 = sub_18E72B208();
      sub_18E72B1A8();
      if (v36)
      {
        v37 = v79;
        result = (*(v77 + 16))(v79, a1 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v26, v20);
      }

      else
      {
        result = sub_18E72B5F8();
        if (v57 != 8)
        {
          goto LABEL_33;
        }

        *&v88 = result;
        v37 = v79;
        (*v78)(v79, &v88, v20);
        result = swift_unknownObjectRelease();
      }

      v39 = v80;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      v72 = v35;
      (*v75)(v86, v37, v20);
      GestureOutput.value.getter(v20, v39);
      if ((*v74)(v39, 1, v30) == 1)
      {
        (*v63)(v39, v69);
      }

      else
      {
        v40 = v29;
        v41 = v67;
        (*v66)(v67, v39, v30);
        (*v65)(v68, v41, v30);
        sub_18E72B278();
        sub_18E72B238();
        v42 = v41;
        v29 = v40;
        (*v64)(v42, v30);
      }

      v43 = sub_18E702C68(v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_18E6EDE80(0, *(v29 + 2) + 1, 1, v29);
      }

      v45 = *(v29 + 2);
      v44 = *(v29 + 3);
      v82 = v28;
      v84 = v26 + 1;
      if (v45 >= v44 >> 1)
      {
        v29 = sub_18E6EDE80((v44 > 1), v45 + 1, 1, v29);
      }

      *(v29 + 2) = v45 + 1;
      v29[v45 + 32] = v43;
      sub_18E6FED28(v20, &v88);
      v46 = v88;
      v28 = v89;
      if (v85)
      {
        if (v88)
        {
          v71 = v29;
          v47 = v85;
          v87 = v85;

          sub_18E70116C(v48);
          v70 = v87;
          v87 = v81;

          sub_18E70116C(v49);
          sub_18E6AF804(v46);
          v50 = v47;
          v29 = v71;
          sub_18E6AF804(v50);
          v28 = 0;
          v83 = 0;
          v81 = v87;
          v85 = v70;
          v30 = v62;
        }

        else
        {
          v31 = v85;

          sub_18E6AF804(v31);
          v28 = 0;
          v83 = 0;
        }
      }

      else if (v88)
      {

        sub_18E6AF804(v46);
        v28 = 0;
        v83 = 0;
        v81 = *(&v46 + 1);
        v85 = v46;
      }

      else
      {
        v85 = 0;
        v81 = *(&v88 + 1);
        v83 = v90;
      }

      v32 = v86;
      sub_18E6FF240(v20, &v88);
      (*v73)(v32, v20);
      v33 = v88;
      a1 = v76;
      v34 = sub_18E72B228();
      ++v26;
      v27 = 1;
      if (v84 == v34)
      {
        v51 = v29;
        v52 = v72 & 1 | (v33 != 3);
        a5 = v60;
        v6 = v59;
        a2 = v58;
        v53 = v83;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v85 = 0;
  v81 = 0;
  v28 = 0;
  v53 = 0;
  v51 = MEMORY[0x1E69E7CC0];
  v52 = 3;
LABEL_25:
  result = a2(v51);
  if (v6)
  {

    sub_18E6AF804(v85);
  }

  if (result)
  {
    v54 = result;

    v55 = v91;
LABEL_31:
    *a5 = v55;
    v56 = v81;
    *(a5 + 8) = v85;
    *(a5 + 16) = v56;
    *(a5 + 24) = v28;
    *(a5 + 32) = v53;
    *(a5 + 40) = v54;
    return result;
  }

  if (v52 != 3)
  {
    v54 = result;

    v55 = v52;
    goto LABEL_31;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_18E701D38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = a1;
  v5 = *(a2 + 16);
  v134 = a2;
  v125 = a3;
  if (v5 == 1)
  {
    TupleTypeMetadata = *(*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v9 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      v10 = 0;
      v11 = *(v7 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_9;
      }

      if (&v9[-v11] < 0x20)
      {
        goto LABEL_9;
      }

      v10 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = v9 + 16;
      v14 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v5 != v10)
      {
LABEL_9:
        v16 = v5 - v10;
        v17 = 8 * v10;
        v18 = &v9[8 * v10];
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18 = v20;
          v18 += 8;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v21 = &v119;
  v122 = TupleTypeMetadata;
  v119 = *(TupleTypeMetadata - 8);
  v22 = *(v119 + 64);
  v23 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v135 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = (v5 - 1);
  v137 = v5;
  v133 = v3;
  if (v5 == 1)
  {
    v27 = v24;
    v28 = *(*(v24 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v29 = sub_18E72B438();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v23);
    if (v5)
    {
      v31 = (*(v134 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v32 = (&v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
      v33 = v137;
      do
      {
        v34 = *v31++;
        *v32++ = sub_18E72B438();
        --v33;
      }

      while (v33);
    }

    v5 = v137;
    v29 = swift_getTupleTypeMetadata();
    v27 = v134;
  }

  v35 = &v119;
  v123 = *(v29 - 8);
  v36 = *(v123 + 64);
  v37 = MEMORY[0x1EEE9AC00](v29);
  v136 = &v119 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = &v119;
  v124 = *(v27 + 32);
  v121 = *(v124 - 8);
  v39 = *(v121 + 64);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v126 = &v119 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = &v119;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v120 = &v119 - v43;
  v127 = v42;
  if (v5)
  {
    v129 = &v119;
    v128 = &v119;
    LODWORD(v141) = 0;
    v44 = 0;
    v142 = 0;
    v45 = (*(v27 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v46 = MEMORY[0x1E69E7CC0];
    v138 = v4;
    v47 = v4;
    while (1)
    {
      v144 = v45;
      v48 = *v45;
      v49 = type metadata accessor for GestureOutput();
      v145 = &v119;
      v50 = *(v49 - 8);
      v51 = *(v50 + 64);
      MEMORY[0x1EEE9AC00](v49);
      v53 = &v119 - v52;
      v143 = v47;
      (*(v50 + 16))(&v119 - v52, *v47, v49);
      v54 = sub_18E702C68(v49);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_18E6EDE80(0, *(v46 + 2) + 1, 1, v46);
      }

      v56 = *(v46 + 2);
      v55 = *(v46 + 3);
      v146 = v26;
      if (v56 >= v55 >> 1)
      {
        v46 = sub_18E6EDE80((v55 > 1), v56 + 1, 1, v46);
      }

      *(v46 + 2) = v56 + 1;
      v147 = v46;
      v46[v56 + 32] = v54;
      sub_18E6FED28(v49, &v148);
      v57 = *(&v148 + 1);
      v58 = v148;
      if (v44)
      {
        if (v148)
        {
          v149 = v44;

          sub_18E70116C(v59);
          v139 = v44;
          v140 = v149;
          v149 = v142;

          sub_18E70116C(v60);
          sub_18E6AF804(v58);
          sub_18E6AF804(v139);
          v57 = v149;
          v58 = v140;
        }

        else
        {

          v57 = v142;

          sub_18E6AF804(v44);
          v58 = v44;
        }
      }

      else if (v148)
      {

        sub_18E6AF804(v58);
      }

      else
      {
        v57 = 0;
      }

      sub_18E6FF240(v49, &v148);
      (*(v50 + 8))(v53, v49);
      if (!v146)
      {
        break;
      }

      v26 = v146 - 1;
      v47 = v143 + 1;
      v45 = v144 + 1;
      LODWORD(v141) = 1;
      v44 = v58;
      v142 = v57;
      v46 = v147;
    }

    v61 = v141 & 1 | (v148 != 3);
    v21 = v128;
    v35 = v129;
    v4 = v138;
    v62 = v132;
    v63 = v147;
  }

  else
  {
    v58 = 0;
    v57 = 0;
    v63 = MEMORY[0x1E69E7CC0];
    v61 = 3;
    v62 = v132;
  }

  v64 = v133;
  v65 = *(v133 + 40);
  v66 = (*(v133 + 32))(v63);
  if (v62)
  {
    sub_18E6AF804(v58);
  }

  v147 = v63;
  v142 = 0;
  v68 = v137;
  if (!v66)
  {
    if (v61 != 3)
    {
      v88 = v57;

      v89 = v125;
      *v125 = v61;
      v89[1] = v58;
      v89[2] = v88;
      type metadata accessor for GestureOutput();
      v89[3] = 0;
      v89[4] = 0;
      return swift_storeEnumTagMultiPayload();
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v69 = *(v64 + 16);
  v143 = v58;
  v145 = v69;
  v128 = v21;
  v129 = v35;
  v141 = v57;
  LODWORD(v139) = v66;
  if (v69)
  {
    v138 = v4;
    v144 = *(v64 + 24);

    v140 = &v119;
    MEMORY[0x1EEE9AC00](v70);
    v146 = (&v119 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v68)
    {
      v72 = (*(v134 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v73 = (v127 + 32);
      v74 = v146;
      v75 = v68;
      do
      {
        if (v68 == 1)
        {
          v76 = 0;
        }

        else
        {
          v76 = *v73;
        }

        v77 = *v72++;
        v78 = &v136[v76];
        v79 = *v138++;
        v80 = type metadata accessor for GestureOutput();
        v147 = &v119;
        v81 = *(v80 - 8);
        v82 = *(v81 + 64);
        MEMORY[0x1EEE9AC00](v80);
        v84 = &v119 - v83;
        (*(v81 + 16))(&v119 - v83, v79, v80);
        GestureOutput.value.getter(v80, v78);
        (*(v81 + 8))(v84, v80);
        *v74++ = v78;
        v73 += 4;
        --v75;
        v68 = v137;
        v58 = v143;
      }

      while (v75);
    }

    v85 = v126;
    v86 = v145;
    v87 = v142;
    (v145)(v146);
    if (v87)
    {
      sub_18E6AF804(v58);
      sub_18E6826D0(v86);
      return (*(v123 + 8))(v136, v127);
    }

    sub_18E6826D0(v86);
    (*(v123 + 8))(v136, v127);
LABEL_61:
    v114 = *(v121 + 32);
    v115 = v120;
    v116 = v124;
    v114(v120, v85, v124);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
    v117 = &v125[*(swift_getTupleTypeMetadata2() + 48)];
    v114(v125, v115, v116);
    v118 = v141;
    *v117 = v143;
    v117[1] = v118;
    type metadata accessor for GestureOutput();
    v117[2] = 0;
    v117[3] = 0;
    return swift_storeEnumTagMultiPayload();
  }

  v132 = *v64;
  if (v132)
  {
    v140 = &v119;
    v90 = MEMORY[0x1EEE9AC00](*(v64 + 8));
    v136 = &v119 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
    v133 = v90;

    if (!v68)
    {
LABEL_57:

      v85 = v126;
      v112 = v132;
      v113 = v142;
      v132(v136);
      if (v113)
      {
        sub_18E6AF804(v143);
        sub_18E6826D0(v112);
        return (*(v119 + 8))(v135, v122);
      }

      sub_18E6826D0(v112);
      (*(v119 + 8))(v135, v122);
      goto LABEL_61;
    }

    v92 = (*(v134 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v93 = (v122 + 32);
    v94 = v136;
    v95 = v137;
    while (1)
    {
      v145 = v95;
      v146 = v94;
      v100 = *v92;
      v138 = v4;
      v101 = *v4;
      v102 = type metadata accessor for GestureOutput();
      v144 = &v119;
      v103 = *(v102 - 8);
      v104 = *(v103 + 64);
      MEMORY[0x1EEE9AC00](v102);
      v106 = &v119 - v105;
      (*(v103 + 16))(&v119 - v105, v101, v102);
      v107 = sub_18E72B438();
      v108 = (*(*(v107 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x1EEE9AC00](v107 - 8);
      v110 = &v119 - v109;
      GestureOutput.value.getter(v102, &v119 - v109);
      (*(v103 + 8))(v106, v102);
      v111 = *(v100 - 8);
      if ((*(v111 + 48))(v110, 1, v100) == 1)
      {
        break;
      }

      if (v137 == 1)
      {
        v96 = 0;
      }

      else
      {
        v96 = *v93;
      }

      v98 = v145;
      v97 = v146;
      v99 = &v135[v96];
      (*(v111 + 32))(&v135[v96], v110, v100);
      *v97 = v99;
      v94 = (v97 + 1);
      v93 += 4;
      v4 = v138 + 1;
      ++v92;
      v95 = (v98 - 1);
      if (!v95)
      {
        goto LABEL_57;
      }
    }

    __break(1u);
    goto LABEL_63;
  }

LABEL_64:
  result = sub_18E72B6E8();
  __break(1u);
  return result;
}

uint64_t sub_18E702B5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = *a1;
  v6 = *a2;
  v7 = *(a2 + 8);
  if (result)
  {
    v8 = a1[1];
    if (v6)
    {
      v9 = *(a2 + 8);
      v14 = result;

      sub_18E70116C(v10);

      result = sub_18E70116C(v11);
      *a3 = v14;
      a3[1] = v8;
      a3[2] = 0;
      a3[3] = 0;
      return result;
    }

    *a3 = result;
    a3[1] = v8;
    a3[2] = 0;
    a3[3] = 0;
  }

  else
  {
    if (!v6)
    {
      v13 = *(a2 + 24);
      *a3 = 0;
      *(a3 + 1) = v7;
      a3[3] = v13;
      return result;
    }

    v12 = *(a2 + 8);
    *a3 = v6;
    a3[1] = v7;
    a3[2] = 0;
    a3[3] = 0;
  }
}

uint64_t sub_18E702C68(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v7 = *(a1 + 16);
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
      v8 = &v5[*(swift_getTupleTypeMetadata2() + 48)];
      v9 = v8[1];
      v10 = v8[2];
      v11 = v8[3];
      sub_18E6AF804(*v8);
      (*(*(v7 - 8) + 8))(v5, v7);
      return 1;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
      v13 = &v5[*(swift_getTupleTypeMetadata2() + 48)];
      v14 = v13[1];
      v15 = v13[2];
      v16 = v13[3];
      sub_18E6AF804(*v13);
      (*(*(v7 - 8) + 8))(v5, v7);
      return 2;
    }
  }

  else
  {
    (*(v2 + 8))(v5, a1);
    return 0;
  }
}

uint64_t sub_18E702E54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 2;
  }

  v2 = 0;
  v3 = a1 + 32;
  result = 2;
  do
  {
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_14;
      }

      if (*(v3 + i) != 2)
      {
        break;
      }

      if (v2 == v1)
      {
        return result;
      }
    }

    result = *(v3 + i);
    if (!*(v3 + i))
    {
      break;
    }

    result = 1;
  }

  while (v2 != v1);
  return result;
}

uint64_t sub_18E702EC0(uint64_t a1)
{
  result = 0;
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  while (v4 != v3)
  {
    if (v3 >= v4)
    {
      __break(1u);
LABEL_10:
      __break(1u);
      return result;
    }

    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_10;
    }

    v7 = *(v5 + v3++);
    if (v7)
    {
      result = v7;
      if (v7 == 1)
      {
        return result;
      }

      v3 = v6;
    }
  }

  return result;
}

void *sub_18E702F38(void *a1, void *a2)
{
  v3 = a2[1];
  v4 = a1[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t sub_18E702F8C(void *a1)
{
  if (*a1)
  {
    v2 = a1[1];
  }

  if (a1[2])
  {
    v3 = a1[3];
  }

  v4 = a1[5];
}

void *sub_18E702FE0(void *a1, void *a2)
{
  if (*a2)
  {
    v4 = a2[1];
    *a1 = *a2;
    a1[1] = v4;
  }

  else
  {
    *a1 = *a2;
  }

  v5 = a2[2];
  if (v5)
  {
    v6 = a2[3];
    a1[2] = v5;
    a1[3] = v6;
  }

  else
  {
    *(a1 + 1) = *(a2 + 1);
  }

  v7 = a2[5];
  a1[4] = a2[4];
  a1[5] = v7;

  return a1;
}

void *sub_18E703058(void *a1, void *a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (v4)
    {
      v5 = a2[1];
      v6 = a1[1];
      *a1 = v4;
      a1[1] = v5;

      goto LABEL_8;
    }

    v8 = a1[1];
  }

  else if (v4)
  {
    v7 = a2[1];
    *a1 = v4;
    a1[1] = v7;

    goto LABEL_8;
  }

  *a1 = *a2;
LABEL_8:
  v9 = a2[2];
  if (!a1[2])
  {
    if (v9)
    {
      v12 = a2[3];
      a1[2] = v9;
      a1[3] = v12;

      goto LABEL_15;
    }

LABEL_14:
    *(a1 + 1) = *(a2 + 1);
    goto LABEL_15;
  }

  if (!v9)
  {
    v13 = a1[3];

    goto LABEL_14;
  }

  v10 = a2[3];
  v11 = a1[3];
  a1[2] = v9;
  a1[3] = v10;

LABEL_15:
  v15 = a2[4];
  v14 = a2[5];
  v16 = a1[5];
  a1[4] = v15;
  a1[5] = v14;

  return a1;
}

uint64_t sub_18E703148(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (v4)
    {
      v5 = a2[1];
      v6 = *(a1 + 8);
      *a1 = v4;
      *(a1 + 8) = v5;

      goto LABEL_8;
    }

    v8 = *(a1 + 8);
  }

  else if (v4)
  {
    v7 = a2[1];
    *a1 = v4;
    *(a1 + 8) = v7;
    goto LABEL_8;
  }

  *a1 = *a2;
LABEL_8:
  v9 = a2[2];
  if (!*(a1 + 16))
  {
    if (v9)
    {
      v12 = a2[3];
      *(a1 + 16) = v9;
      *(a1 + 24) = v12;
      goto LABEL_15;
    }

LABEL_14:
    *(a1 + 16) = *(a2 + 1);
    goto LABEL_15;
  }

  if (!v9)
  {
    v13 = *(a1 + 24);

    goto LABEL_14;
  }

  v10 = a2[3];
  v11 = *(a1 + 24);
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;

LABEL_15:
  v14 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 2);

  return a1;
}

uint64_t sub_18E703218(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E703260(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_18E7032C8()
{
  result = qword_1EAC8F430[0];
  if (!qword_1EAC8F430[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAC8F430);
  }

  return result;
}

uint64_t sub_18E70332C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 40);
    v8 = *(result - 8) + 64;
    result = type metadata accessor for VelocityComponent.State();
    if (v5 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_18E703418(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = *(a3 + 32);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 80);
  if (*(v10 + 84))
  {
    v12 = *(v10 + 64);
  }

  else
  {
    v12 = *(v10 + 64) + 1;
  }

  v13 = v12 + v11;
  v14 = v11 | *(v6 + 80) & 0xF8;
  if (v14 > 7 || ((*(v6 + 80) | *(v10 + 80)) & 0x100000) != 0 || (((v11 | 7) + v7) & ~(v11 | 7)) + ((v12 + ((v12 + v11) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 > 0x18)
  {
    v17 = *a2;
    *a1 = *a2;
    v18 = (v17 + (((v14 | 7) + 16) & ~(v14 | 7)));
  }

  else
  {
    v19 = AssociatedTypeWitness;
    v32 = *(v10 + 64);
    v33 = (v12 + ((v12 + v11) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = *(v10 + 84);
    v20 = ~v11;
    (*(v6 + 16))(a1, a2, v5);
    v35 = a1;
    v31 = a1 + v7 + 7;
    v21 = (v31 & 0xFFFFFFFFFFFFFFF8);
    v30 = a2 + v7 + 7;
    v22 = (v30 & 0xFFFFFFFFFFFFFFF8);
    v23 = *(v10 + 48);
    if (v23(v30 & 0xFFFFFFFFFFFFFFF8, 1, v19))
    {
      memcpy(v21, v22, v12);
    }

    else
    {
      (*(v10 + 16))(v21, v22, v19);
      (*(v10 + 56))(v21, 0, 1, v19);
    }

    if (v23((v22 + v13) & v20, 1, v19))
    {
      memcpy(((v21 + v13) & v20), ((v22 + v13) & v20), v12);
    }

    else
    {
      (*(v10 + 16))((v21 + v13) & v20, (v22 + v13) & v20, v19);
      (*(v10 + 56))((v21 + v13) & v20, 0, 1, v19);
    }

    v18 = v35;
    v24 = 7;
    if (!v34)
    {
      v24 = 8;
    }

    v25 = v32 + v24;
    v26 = (v25 + ((v21 + v13) & v20)) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v25 + ((v22 + v13) & v20)) & 0xFFFFFFFFFFFFFFF8;
    v28 = *v27;
    *(v26 + 16) = *(v27 + 16);
    *v26 = v28;
    *((v31 | 7) + v33 + 17) = *((v30 | 7) + v33 + 17);
  }

  return v18;
}

uint64_t sub_18E703754(uint64_t a1, void *a2)
{
  v4 = *(a2[2] - 8) + 8;
  (*v4)(a1, a2[2]);
  v5 = *(v4 + 56) + a1;
  v6 = a2[3];
  v7 = a2[4];
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = (v5 + (v10 | 7)) & ~(v10 | 7);
  v17 = v9;
  v12 = *(v9 + 48);
  if (!v12(v11, 1, AssociatedTypeWitness))
  {
    (*(v17 + 8))(v11, AssociatedTypeWitness);
  }

  v13 = *(v17 + 64);
  if (*(v17 + 84))
  {
    v14 = v11 + v10 + v13;
  }

  else
  {
    v14 = v11 + v10 + v13 + 1;
  }

  result = (v12)(v14 & ~v10, 1, AssociatedTypeWitness);
  if (!result)
  {
    v16 = *(v17 + 8);

    return v16(v14 & ~v10, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_18E7038FC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 16;
  (*v6)(a1, a2, a3[2]);
  v7 = *(v6 + 48);
  v8 = a3[3];
  v9 = a3[4];
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 80);
  v13 = (v12 | 7) + v7;
  v30 = a1;
  v14 = ((v13 + a1) & ~(v12 | 7));
  v15 = ((v13 + a2) & ~(v12 | 7));
  v28 = *(v11 + 48);
  if (v28(v15, 1, AssociatedTypeWitness))
  {
    v16 = *(v11 + 84);
    v17 = *(v11 + 64);
    if (v16)
    {
      v18 = *(v11 + 64);
    }

    else
    {
      v18 = v17 + 1;
    }

    memcpy(v14, v15, v18);
  }

  else
  {
    (*(v11 + 16))(v14, v15, AssociatedTypeWitness);
    (*(v11 + 56))(v14, 0, 1, AssociatedTypeWitness);
    v16 = *(v11 + 84);
    v17 = *(v11 + 64);
  }

  if (v16)
  {
    v19 = v17;
  }

  else
  {
    v19 = v17 + 1;
  }

  v29 = v14;
  v20 = (&v14[v12 + v19] & ~v12);
  if (v28((&v15[v12 + v19] & ~v12), 1, AssociatedTypeWitness))
  {
    memcpy(v20, (&v15[v12 + v19] & ~v12), v19);
  }

  else
  {
    (*(v11 + 16))(v20, &v15[v12 + v19] & ~v12, AssociatedTypeWitness);
    (*(v11 + 56))(v20, 0, 1, AssociatedTypeWitness);
  }

  v21 = 7;
  if (!v16)
  {
    v21 = 8;
  }

  v22 = v17 + v21;
  v23 = (v20 + v22) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v22 + (&v15[v12 + v19] & ~v12)) & 0xFFFFFFFFFFFFFFF8;
  v25 = *v24;
  *(v23 + 16) = *(v24 + 16);
  *v23 = v25;
  v26 = ((v19 + ((v19 + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  result = v30;
  *&v29[v26 + 7] = *&v15[v26 + 7];
  return result;
}

double sub_18E703BA0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 24;
  (*v6)(a1, a2, a3[2]);
  v7 = *(v6 + 40);
  v8 = a3[3];
  v9 = a3[4];
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 80);
  v13 = (v12 | 7) + v7;
  v14 = ((v13 + a1) & ~(v12 | 7));
  v15 = ((v13 + a2) & ~(v12 | 7));
  v16 = *(v11 + 48);
  LODWORD(v9) = v16(v14, 1, AssociatedTypeWitness);
  v17 = v16(v15, 1, AssociatedTypeWitness);
  if (v9)
  {
    if (!v17)
    {
      (*(v11 + 16))(v14, v15, AssociatedTypeWitness);
      (*(v11 + 56))(v14, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v18 = *(v11 + 84);
    v19 = *(v11 + 64);
  }

  else
  {
    if (!v17)
    {
      (*(v11 + 24))(v14, v15, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v11 + 8))(v14, AssociatedTypeWitness);
    v18 = *(v11 + 84);
    v19 = *(v11 + 64);
  }

  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 + 1;
  }

  memcpy(v14, v15, v20);
LABEL_12:
  v21 = *(v11 + 84);
  v34 = *(v11 + 64);
  if (v21)
  {
    v22 = *(v11 + 64);
  }

  else
  {
    v22 = *(v11 + 64) + 1;
  }

  v35 = v15;
  v36 = v14;
  v23 = (&v14[v12 + v22] & ~v12);
  v24 = (&v15[v12 + v22] & ~v12);
  v25 = v16(v23, 1, AssociatedTypeWitness);
  v26 = v16(v24, 1, AssociatedTypeWitness);
  if (v25)
  {
    if (!v26)
    {
      (*(v11 + 16))(v23, v24, AssociatedTypeWitness);
      (*(v11 + 56))(v23, 0, 1, AssociatedTypeWitness);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v26)
  {
    (*(v11 + 8))(v23, AssociatedTypeWitness);
LABEL_20:
    memcpy(v23, v24, v22);
    goto LABEL_21;
  }

  (*(v11 + 24))(v23, v24, AssociatedTypeWitness);
LABEL_21:
  v27 = 7;
  if (!v21)
  {
    v27 = 8;
  }

  v28 = v34 + v27;
  v29 = &v23[v28] & 0xFFFFFFFFFFFFFFF8;
  v30 = &v24[v28] & 0xFFFFFFFFFFFFFFF8;
  v31 = *v30;
  *(v29 + 16) = *(v30 + 16);
  *v29 = v31;
  v32 = ((v22 + ((v22 + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  result = *&v35[v32 + 7];
  *&v36[v32 + 7] = result;
  return result;
}

uint64_t sub_18E703F10(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 32;
  (*v6)(a1, a2, a3[2]);
  v7 = *(v6 + 32);
  v8 = a3[3];
  v9 = a3[4];
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 80);
  v13 = (v12 | 7) + v7;
  v30 = a1;
  v14 = ((v13 + a1) & ~(v12 | 7));
  v15 = ((v13 + a2) & ~(v12 | 7));
  v28 = *(v11 + 48);
  if (v28(v15, 1, AssociatedTypeWitness))
  {
    v16 = *(v11 + 84);
    v17 = *(v11 + 64);
    if (v16)
    {
      v18 = *(v11 + 64);
    }

    else
    {
      v18 = v17 + 1;
    }

    memcpy(v14, v15, v18);
  }

  else
  {
    (*(v11 + 32))(v14, v15, AssociatedTypeWitness);
    (*(v11 + 56))(v14, 0, 1, AssociatedTypeWitness);
    v16 = *(v11 + 84);
    v17 = *(v11 + 64);
  }

  if (v16)
  {
    v19 = v17;
  }

  else
  {
    v19 = v17 + 1;
  }

  v29 = v14;
  v20 = (&v14[v12 + v19] & ~v12);
  if (v28((&v15[v12 + v19] & ~v12), 1, AssociatedTypeWitness))
  {
    memcpy(v20, (&v15[v12 + v19] & ~v12), v19);
  }

  else
  {
    (*(v11 + 32))(v20, &v15[v12 + v19] & ~v12, AssociatedTypeWitness);
    (*(v11 + 56))(v20, 0, 1, AssociatedTypeWitness);
  }

  v21 = 7;
  if (!v16)
  {
    v21 = 8;
  }

  v22 = v17 + v21;
  v23 = (v20 + v22) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v22 + (&v15[v12 + v19] & ~v12)) & 0xFFFFFFFFFFFFFFF8;
  v25 = *v24;
  *(v23 + 16) = *(v24 + 16);
  *v23 = v25;
  v26 = ((v19 + ((v19 + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  result = v30;
  *&v29[v26 + 7] = *&v15[v26 + 7];
  return result;
}

double sub_18E7041B4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 40;
  (*v6)(a1, a2, a3[2]);
  v7 = *(v6 + 24);
  v8 = a3[3];
  v9 = a3[4];
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 80);
  v13 = (v12 | 7) + v7;
  v14 = ((v13 + a1) & ~(v12 | 7));
  v15 = ((v13 + a2) & ~(v12 | 7));
  v16 = *(v11 + 48);
  LODWORD(v9) = v16(v14, 1, AssociatedTypeWitness);
  v17 = v16(v15, 1, AssociatedTypeWitness);
  if (v9)
  {
    if (!v17)
    {
      (*(v11 + 32))(v14, v15, AssociatedTypeWitness);
      (*(v11 + 56))(v14, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v18 = *(v11 + 84);
    v19 = *(v11 + 64);
  }

  else
  {
    if (!v17)
    {
      (*(v11 + 40))(v14, v15, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v11 + 8))(v14, AssociatedTypeWitness);
    v18 = *(v11 + 84);
    v19 = *(v11 + 64);
  }

  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 + 1;
  }

  memcpy(v14, v15, v20);
LABEL_12:
  v21 = *(v11 + 84);
  v34 = *(v11 + 64);
  if (v21)
  {
    v22 = *(v11 + 64);
  }

  else
  {
    v22 = *(v11 + 64) + 1;
  }

  v35 = v15;
  v36 = v14;
  v23 = (&v14[v12 + v22] & ~v12);
  v24 = (&v15[v12 + v22] & ~v12);
  v25 = v16(v23, 1, AssociatedTypeWitness);
  v26 = v16(v24, 1, AssociatedTypeWitness);
  if (v25)
  {
    if (!v26)
    {
      (*(v11 + 32))(v23, v24, AssociatedTypeWitness);
      (*(v11 + 56))(v23, 0, 1, AssociatedTypeWitness);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v26)
  {
    (*(v11 + 8))(v23, AssociatedTypeWitness);
LABEL_20:
    memcpy(v23, v24, v22);
    goto LABEL_21;
  }

  (*(v11 + 40))(v23, v24, AssociatedTypeWitness);
LABEL_21:
  v27 = 7;
  if (!v21)
  {
    v27 = 8;
  }

  v28 = v34 + v27;
  v29 = &v23[v28] & 0xFFFFFFFFFFFFFFF8;
  v30 = &v24[v28] & 0xFFFFFFFFFFFFFFF8;
  v31 = *v30;
  *(v29 + 16) = *(v30 + 16);
  *v29 = v31;
  v32 = ((v22 + ((v22 + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  result = *&v35[v32 + 7];
  *&v36[v32 + 7] = result;
  return result;
}

uint64_t sub_18E704524(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(a3 + 32);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v10 + 80);
  if (v11)
  {
    v15 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v15 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v14 | 7;
  v17 = (v14 | 7) + *(v6 + 64);
  if (v13 < a2)
  {
    v18 = (v17 & ~v16) + ((v15 + ((v15 + v14) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
    v19 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = a2 - v13 + 1;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    v22 = v20 >= 2 ? v21 : 0;
    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = *(a1 + v18);
        if (v23)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v23 = *(a1 + v18);
        if (v23)
        {
          goto LABEL_26;
        }
      }
    }

    else if (v22)
    {
      v23 = *(a1 + v18);
      if (v23)
      {
LABEL_26:
        v24 = v23 - 1;
        if (v19)
        {
          v24 = 0;
          v25 = *a1;
        }

        else
        {
          v25 = 0;
        }

        return v13 + (v25 | v24) + 1;
      }
    }

    if (!v13)
    {
      return 0;
    }
  }

  if (v7 >= v12)
  {
    v28 = *(v6 + 48);

    return v28(a1, v7, v5);
  }

  else
  {
    v26 = (*(v10 + 48))((a1 + v17) & ~v16);
    if (v26 >= 2)
    {
      return v26 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_18E70479C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v31 = v8;
  v9 = *(v8 + 84);
  v10 = *(a4 + 32);
  swift_getAssociatedTypeWitness();
  v11 = 0;
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v12 + 80);
  v17 = v16 | 7;
  v18 = (v16 | 7) + *(v8 + 64);
  v19 = *(v12 + 64);
  if (!v13)
  {
    ++v19;
  }

  v20 = ((v19 + v16) & ~v16) + v19;
  v21 = (v18 & ~(v16 | 7)) + ((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v15 < a3)
  {
    if ((v18 & ~(v16 | 7)) + ((v20 + 7) & 0xFFFFFFF8) == -32)
    {
      v22 = a3 - v15 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v11 = v23;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 > v15)
  {
    if (v21)
    {
      v24 = 1;
    }

    else
    {
      v24 = a2 - v15;
    }

    if (v21)
    {
      v25 = ~v15 + a2;
      bzero(a1, v21);
      *a1 = v25;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        *(a1 + v21) = v24;
      }

      else
      {
        *(a1 + v21) = v24;
      }
    }

    else if (v11)
    {
      *(a1 + v21) = v24;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v21) = 0;
  }

  else if (v11)
  {
    *(a1 + v21) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v9 >= v14)
  {
    v29 = *(v31 + 56);

    v29(a1, a2, v9, v7);
  }

  else
  {
    v26 = ((a1 + v18) & ~v17);
    if (v14 >= a2)
    {
      v30 = *(v12 + 56);

      v30(v26, (a2 + 1));
    }

    else
    {
      v27 = ((v20 + 7) & 0xFFFFFFF8) + 17;
      v28 = ~v14 + a2;
      bzero(v26, v27);
      if (v27 <= 3)
      {
        *v26 = v28;
      }

      else
      {
        *v26 = v28;
      }
    }
  }
}

uint64_t sub_18E704AD0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = a1[2];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  result = sub_18E72B438();
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_18E704BAC(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  v7 = a3[2];
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  if (*(v9 + 84))
  {
    v10 = *(v9 + 64);
  }

  else
  {
    v10 = *(v9 + 64) + 1;
  }

  v11 = *(v9 + 80);
  v12 = v10 + v11;
  v13 = v10 + 7;
  if (v11 > 7 || (*(v9 + 80) & 0x100000) != 0 || ((v10 + 7 + ((v10 + v11) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 17 > 0x18)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = (v16 + ((v11 & 0xF8 ^ 0x1F8) & (v11 + 16)));
  }

  else
  {
    v17 = AssociatedTypeWitness;
    v18 = ~v11;
    v24 = *(v9 + 48);
    if (v24(a2, 1, AssociatedTypeWitness))
    {
      memcpy(a1, a2, v10);
    }

    else
    {
      (*(v9 + 16))(a1, a2, v17);
      (*(v9 + 56))(a1, 0, 1, v17);
    }

    v19 = ((a2 + v12) & v18);
    if (v24(v19, 1, v17))
    {
      memcpy(((a1 + v12) & v18), v19, v10);
    }

    else
    {
      (*(v9 + 16))((a1 + v12) & v18, v19, v17);
      (*(v9 + 56))((a1 + v12) & v18, 0, 1, v17);
    }

    v20 = (v19 + v13) & 0xFFFFFFFFFFFFFFF8;
    v21 = *v20;
    v22 = (v13 + ((a1 + v12) & v18)) & 0xFFFFFFFFFFFFFFF8;
    *(v22 + 16) = *(v20 + 16);
    *v22 = v21;
  }

  return a1;
}

uint64_t sub_18E704E10(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  v5 = a2[2];
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v7 = *(v13 + 48);
  if (!v7(a1, 1, AssociatedTypeWitness))
  {
    (*(v13 + 8))(a1, AssociatedTypeWitness);
  }

  v8 = *(v13 + 80);
  v9 = *(v13 + 64) + a1;
  if (!*(v13 + 84))
  {
    ++v9;
  }

  v10 = v9 + v8;
  result = (v7)((v9 + v8) & ~v8, 1, AssociatedTypeWitness);
  if (!result)
  {
    v12 = *(v13 + 8);

    return v12(v10 & ~v8, AssociatedTypeWitness);
  }

  return result;
}

void *sub_18E704F74(void *a1, const void *a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  v7 = a3[2];
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 48);
  if (v10(a2, 1, AssociatedTypeWitness))
  {
    v11 = *(v9 + 84);
    v12 = *(v9 + 64);
    if (v11)
    {
      v13 = *(v9 + 64);
    }

    else
    {
      v13 = v12 + 1;
    }

    memcpy(a1, a2, v13);
  }

  else
  {
    (*(v9 + 16))(a1, a2, AssociatedTypeWitness);
    (*(v9 + 56))(a1, 0, 1, AssociatedTypeWitness);
    v11 = *(v9 + 84);
    v12 = *(v9 + 64);
  }

  if (v11)
  {
    v14 = v12;
  }

  else
  {
    v14 = v12 + 1;
  }

  v15 = *(v9 + 80);
  v16 = ((a1 + v14 + v15) & ~v15);
  v17 = ((a2 + v14 + v15) & ~v15);
  if (v10(v17, 1, AssociatedTypeWitness))
  {
    memcpy(v16, v17, v14);
  }

  else
  {
    (*(v9 + 16))(v16, v17, AssociatedTypeWitness);
    (*(v9 + 56))(v16, 0, 1, AssociatedTypeWitness);
  }

  v18 = (v17 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v18;
  v20 = (v16 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v20 + 16) = *(v18 + 16);
  *v20 = v19;
  return a1;
}

void *sub_18E705164(void *a1, void *a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  v7 = a3[2];
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1, 1, AssociatedTypeWitness);
  v12 = v10(a2, 1, AssociatedTypeWitness);
  if (v11)
  {
    if (!v12)
    {
      (*(v9 + 16))(a1, a2, AssociatedTypeWitness);
      (*(v9 + 56))(a1, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v13 = *(v9 + 84);
    v14 = *(v9 + 64);
  }

  else
  {
    if (!v12)
    {
      (*(v9 + 24))(a1, a2, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v9 + 8))(a1, AssociatedTypeWitness);
    v13 = *(v9 + 84);
    v14 = *(v9 + 64);
  }

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = v14 + 1;
  }

  memcpy(a1, a2, v15);
LABEL_12:
  if (*(v9 + 84))
  {
    v16 = *(v9 + 64);
  }

  else
  {
    v16 = *(v9 + 64) + 1;
  }

  v17 = *(v9 + 80);
  v18 = ((a1 + v16 + v17) & ~v17);
  v19 = ((a2 + v16 + v17) & ~v17);
  v20 = v10(v18, 1, AssociatedTypeWitness);
  v21 = v10(v19, 1, AssociatedTypeWitness);
  if (!v20)
  {
    if (!v21)
    {
      (*(v9 + 24))(v18, v19, AssociatedTypeWitness);
      goto LABEL_21;
    }

    (*(v9 + 8))(v18, AssociatedTypeWitness);
    goto LABEL_20;
  }

  if (v21)
  {
LABEL_20:
    memcpy(v18, v19, v16);
    goto LABEL_21;
  }

  (*(v9 + 16))(v18, v19, AssociatedTypeWitness);
  (*(v9 + 56))(v18, 0, 1, AssociatedTypeWitness);
LABEL_21:
  v22 = (v19 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  v24 = (v18 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v24 + 16) = *(v22 + 16);
  *v24 = v23;
  return a1;
}

void *sub_18E705428(void *a1, const void *a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  v7 = a3[2];
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 48);
  if (v10(a2, 1, AssociatedTypeWitness))
  {
    v11 = *(v9 + 84);
    v12 = *(v9 + 64);
    if (v11)
    {
      v13 = *(v9 + 64);
    }

    else
    {
      v13 = v12 + 1;
    }

    memcpy(a1, a2, v13);
  }

  else
  {
    (*(v9 + 32))(a1, a2, AssociatedTypeWitness);
    (*(v9 + 56))(a1, 0, 1, AssociatedTypeWitness);
    v11 = *(v9 + 84);
    v12 = *(v9 + 64);
  }

  if (v11)
  {
    v14 = v12;
  }

  else
  {
    v14 = v12 + 1;
  }

  v15 = *(v9 + 80);
  v16 = ((a1 + v14 + v15) & ~v15);
  v17 = ((a2 + v14 + v15) & ~v15);
  if (v10(v17, 1, AssociatedTypeWitness))
  {
    memcpy(v16, v17, v14);
  }

  else
  {
    (*(v9 + 32))(v16, v17, AssociatedTypeWitness);
    (*(v9 + 56))(v16, 0, 1, AssociatedTypeWitness);
  }

  v18 = (v17 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v18;
  v20 = (v16 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v20 + 16) = *(v18 + 16);
  *v20 = v19;
  return a1;
}

void *sub_18E705618(void *a1, void *a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  v7 = a3[2];
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1, 1, AssociatedTypeWitness);
  v12 = v10(a2, 1, AssociatedTypeWitness);
  if (v11)
  {
    if (!v12)
    {
      (*(v9 + 32))(a1, a2, AssociatedTypeWitness);
      (*(v9 + 56))(a1, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v13 = *(v9 + 84);
    v14 = *(v9 + 64);
  }

  else
  {
    if (!v12)
    {
      (*(v9 + 40))(a1, a2, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v9 + 8))(a1, AssociatedTypeWitness);
    v13 = *(v9 + 84);
    v14 = *(v9 + 64);
  }

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = v14 + 1;
  }

  memcpy(a1, a2, v15);
LABEL_12:
  if (*(v9 + 84))
  {
    v16 = *(v9 + 64);
  }

  else
  {
    v16 = *(v9 + 64) + 1;
  }

  v17 = *(v9 + 80);
  v18 = ((a1 + v16 + v17) & ~v17);
  v19 = ((a2 + v16 + v17) & ~v17);
  v20 = v10(v18, 1, AssociatedTypeWitness);
  v21 = v10(v19, 1, AssociatedTypeWitness);
  if (!v20)
  {
    if (!v21)
    {
      (*(v9 + 40))(v18, v19, AssociatedTypeWitness);
      goto LABEL_21;
    }

    (*(v9 + 8))(v18, AssociatedTypeWitness);
    goto LABEL_20;
  }

  if (v21)
  {
LABEL_20:
    memcpy(v18, v19, v16);
    goto LABEL_21;
  }

  (*(v9 + 32))(v18, v19, AssociatedTypeWitness);
  (*(v9 + 56))(v18, 0, 1, AssociatedTypeWitness);
LABEL_21:
  v22 = (v19 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  v24 = (v18 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v24 + 16) = *(v22 + 16);
  *v24 = v23;
  return a1;
}

uint64_t sub_18E7058DC(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  v7 = a3[2];
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v10)
  {
    ++v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_28;
  }

  v13 = ((v12 + ((v12 + *(v9 + 80)) & ~*(v9 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v13 <= 3)
  {
    v14 = ((a2 - v11 + 255) >> 8) + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *&a1[v13];
      if (*&a1[v13])
      {
        goto LABEL_21;
      }
    }

    else
    {
      v17 = *&a1[v13];
      if (v17)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_28;
  }

  if (!v16 || (v17 = a1[v13]) == 0)
  {
LABEL_28:
    if (v10 >= 2)
    {
      v21 = (*(v9 + 48))(a1);
      if (v21 >= 2)
      {
        return v21 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

LABEL_21:
  v18 = (v17 - 1) << (8 * v13);
  if (v13 <= 3)
  {
    v19 = *a1;
  }

  else
  {
    v18 = 0;
    v19 = *a1;
  }

  return v11 + (v19 | v18) + 1;
}

void sub_18E705A94(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v7 = a4[3];
  v8 = a4[4];
  v9 = a4[2];
  swift_getAssociatedTypeWitness();
  v10 = 0;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 64);
  v14 = v12 - 1;
  if (!v12)
  {
    v14 = 0;
    ++v13;
  }

  v15 = ((v13 + ((v13 + *(v11 + 80)) & ~*(v11 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v14 < a3)
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v14 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v10 = v17;
    }

    else
    {
      v10 = 0;
    }
  }

  if (v14 >= a2)
  {
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v15] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        if (v12 >= 2)
        {
          v20 = *(v11 + 56);

          v20(a1, a2 + 1);
        }

        return;
      }

      *&a1[v15] = 0;
    }

    else if (v10)
    {
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  v18 = ~v14 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v19 = (v18 >> 8) + 1;
  }

  else
  {
    v19 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v18;
    if (v10 > 1)
    {
LABEL_21:
      if (v10 == 2)
      {
        *&a1[v15] = v19;
      }

      else
      {
        *&a1[v15] = v19;
      }

      return;
    }
  }

  else
  {
    *a1 = v18;
    if (v10 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v10)
  {
    a1[v15] = v19;
  }
}

uint64_t sub_18E705CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v20[0] = a1;
  v20[1] = a2;
  v20[2] = a3;
  v20[3] = a4;
  v10 = type metadata accessor for VelocityComponent.State();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = v20 - v13;
  v15 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v6, a1);
  sub_18E705F0C(v14);
  return sub_18E705E10(v17, v14, a1, a5, a6);
}

uint64_t sub_18E705E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v8 = type metadata accessor for VelocityComponent();
  v9 = *(v8 + 52);
  v10 = type metadata accessor for VelocityComponent.State();
  result = (*(*(v10 - 8) + 32))(a4 + v9, a2, v10);
  *(a4 + *(v8 + 56)) = a5;
  return result;
}

uint64_t sub_18E705F0C@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);
  v3(a1, 1, 1, AssociatedTypeWitness);
  v4 = type metadata accessor for VelocityComponent.State();
  result = (v3)(a1 + *(v4 + 52), 1, 1, AssociatedTypeWitness);
  v6 = a1 + *(v4 + 56);
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  return result;
}

uint64_t sub_18E706028@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  v5 = a2[5];
  return sub_18E705F0C(a1);
}

uint64_t sub_18E706038(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E70608C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

uint64_t sub_18E7060E0(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18E706140@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v102 = a5;
  v113 = a1;
  v114 = a3;
  v101 = a2;
  v6 = *(a4 + 16);
  v104 = *(a4 + 24);
  v107 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(a4 + 32);
  v9 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v99 = *(TupleTypeMetadata2 - 8);
  v10 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v98 = v81 - v11;
  v12 = sub_18E72B438();
  v109 = *(v12 - 8);
  v13 = *(v109 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v97 = v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v96 = v81 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v81 - v19;
  v21 = *(v9 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v18);
  v89 = v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v86 = v81 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v87 = v81 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v88 = v81 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = v81 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = v81 - v34;
  v36 = *(v114 + 16);
  v105 = *(v114 + 24);
  v106 = v36;
  v114 = v8;
  v103 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = *(AssociatedConformanceWitness + 8);
  v38 = *(v37 + 16);
  v112 = v35;
  v39 = v109;
  v38(v9, v37);
  v40 = v110 + *(a4 + 52);
  v41 = *(v39 + 16);
  v95 = v39 + 16;
  v94 = v41;
  v41(v20, v40, v12);
  v93 = *(v21 + 48);
  v92 = v21 + 48;
  v42 = v93(v20, 1, v9);
  v90 = a4;
  v108 = v21;
  v111 = v40;
  if (v42 == 1)
  {
    (*(v39 + 8))(v20, v12);
    v43 = *(a4 + 40);
    v44 = v12;
    v45 = v39;
    v46 = v9;
    v47 = v104;
    v48 = v107;
    v49 = v96;
  }

  else
  {
    v50 = *(v21 + 32);
    v84 = v21 + 32;
    v83 = v50;
    v50(v33, v20, v9);
    v51 = *(a4 + 40);
    v48 = v107;
    v47 = v104;
    *&v115 = v107;
    *(&v115 + 1) = v104;
    *&v116 = v114;
    *(&v116 + 1) = v51;
    v85 = v51;
    v52 = (v40 + *(type metadata accessor for VelocityComponent.State() + 56));
    if (*(v52 + 16) == 1)
    {
      (*(v21 + 8))(v33, v9);
      v44 = v12;
      v45 = v109;
      v46 = v9;
    }

    else
    {
      v82 = v9;
      v53 = *v52;
      v54 = v52[1];
      _s8Gestures9TimestampV1soiys8DurationVAC_ACtFZ_0();
      v56 = v55;
      v44 = v12;
      if (_s8Gestures9TimestampV1loiySbAC_ACtFZ_0())
      {
        v46 = v82;
        (*(v108 + 8))(v33, v82);
        v45 = v109;
        v47 = v104;
        v48 = v107;
      }

      else
      {
        v57 = *(v114 + 24);
        v58 = v86;
        v81[1] = v56;
        v57(v103);
        v59 = v87;
        v46 = v82;
        (*(v37 + 40))(v58, v33, v82, v37);
        v60 = *(v108 + 8);
        v60(v58, v46);
        v61 = sub_18E72B938();
        sub_18E72B938();
        v63 = v88;
        sub_18E6D54B0(v62 / 1.0e18 + v61, v59, v46, AssociatedConformanceWitness);
        v60(v59, v46);
        v60(v33, v46);
        v64 = v112;
        v60(v112, v46);
        v83(v64, v63, v46);
        v45 = v109;
        v47 = v104;
        v48 = v107;
      }
    }

    v49 = v96;
    v43 = v85;
  }

  *&v115 = v48;
  *(&v115 + 1) = v47;
  *&v116 = v114;
  *(&v116 + 1) = v43;
  v109 = type metadata accessor for VelocityComponent.State();
  v107 = *(v109 + 52);
  v94(v49, v111 + v107, v44);
  if (v93(v49, 1, v46) == 1)
  {
    (*(v45 + 8))(v49, v44);
    v65 = v44;
    v66 = v108;
  }

  else
  {
    v67 = v43;
    v66 = v108;
    v68 = v89;
    (*(v108 + 32))(v89, v49, v46);
    sub_18E6BE7E4(v68, v46, v67, *(v110 + *(v90 + 56)));
    (*(v66 + 8))(v68, v46);
    v65 = v44;
  }

  v69 = v97;
  v70 = v103;
  (*(v114 + 24))(v103);
  v71 = *(v66 + 56);
  v71(v69, 0, 1, v46);
  v72 = v111;
  (*(v45 + 40))(v111, v69, v65);
  v73 = v107;
  (*(v45 + 8))(v72 + v107, v65);
  v74 = v112;
  (*(v66 + 16))(v72 + v73, v112, v46);
  v71((v72 + v73), 0, 1, v46);
  v75 = v72 + *(v109 + 56);
  v76 = v105;
  *v75 = v106;
  *(v75 + 8) = v76;
  *(v75 + 16) = 0;
  v77 = TupleTypeMetadata2;
  v78 = *(TupleTypeMetadata2 + 48);
  v79 = v98;
  (*(*(v70 - 8) + 16))(v98, v113, v70);
  (*(v66 + 32))(v79 + v78, v74, v46);
  v115 = 0u;
  v116 = 0u;
  sub_18E6FEC1C(v79, &v115, v77, v102);
  return (*(v99 + 8))(v79, v77);
}

uint64_t sub_18E706AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v5 = type metadata accessor for VelocityComponent.State();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_18E706B68(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v7 = *(a2 + 16);
  v8 = *(a2 + 32);
  v5 = type metadata accessor for VelocityComponent.State();
  return (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
}

uint64_t (*sub_18E706BE4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t sub_18E706C14(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t _s8Gestures14AnyGestureNodeC1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 192))();
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    v8 = (*(*a2 + 192))();
    if (v8)
    {
      v10 = v8;
      v11 = v9;
      ObjectType = swift_getObjectType();
      if (v6 == v10)
      {
        v13 = swift_getObjectType();
        v14 = (*(v7 + 8))(a1, v13, v7);
        if (v15)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return 0;
        }

        else
        {
          v18 = v14;
          v19 = (*(v11 + 8))(a2, ObjectType, v11);
          v21 = v20;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return (v21 & 1) == 0 && v18 < v19;
        }
      }

      else
      {
        v17 = (*(v11 + 24))(v6, v7, a1, ObjectType, v11);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v17 & 1;
      }
    }

    v4 = swift_unknownObjectRelease();
  }

  result = (*(*a2 + 192))(v4);
  if (result)
  {
    swift_unknownObjectRelease();
    return 1;
  }

  return result;
}

uint64_t *sub_18E706EB4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || ((((v7 + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v12 = *a2;
    v11 = a2 + 15;
    *a1 = v12;
    v13 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *(v11 & 0xFFFFFFFFFFFFFFF8);
    v14 = (((v11 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v14;
    v16 = *(v5 + 16);

    v16(v15 + 1, v14 + 1, v4);
    v17 = ((v15 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((v14 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v17 = *v18;
    *((v17 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

void *sub_18E707024(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2 + 15;
  *a1 = v6;
  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *(v5 & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = (((v5 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v8;
  *v8 = *v9;

  v11 = *(*(a3 + 16) - 8);
  v12 = v11 + 24;
  v13 = *(v11 + 80);
  v14 = (v8 + v13 + 8) & ~v13;
  v15 = (v9 + v13 + 8) & ~v13;
  (*(v11 + 24))(v14, v15);
  v16 = *(v12 + 40) + 7;
  v17 = ((v16 + v14) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v16 + v15) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  *((v17 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *sub_18E707114(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 8) & ~v10;
  v12 = (v7 + v10 + 8) & ~v10;
  (*(v8 + 32))(v11, v12);
  v13 = *(v9 + 32) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E7071E8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    v17 = ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    v18 = *v17;
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_18E707348(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v18 = ((((result + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v18 + v8 + 8) & ~v8);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_18E707530(uint64_t a1)
{
  v3 = a1 < 1;
  result = a1 - 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(v1 + 8) < a1)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_18E707554(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else if (*(v1 + 8) > result)
  {
    return ++result;
  }

  __break(1u);
  return result;
}

uint64_t sub_18E707574@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18E707530(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_18E7075A0(uint64_t *a1)
{
  result = sub_18E707530(*a1);
  *a1 = result;
  return result;
}

void (*sub_18E7075D8(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_18E707660(v6, *a2, a3);
  return sub_18E6C287C;
}

void (*sub_18E707660(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  sub_18E68BD30(a2, a3);
  return sub_18E6C2994;
}

uint64_t sub_18E707730()
{
  swift_getWitnessTable();

  return sub_18E72AF38();
}

uint64_t sub_18E7077AC()
{
  swift_getWitnessTable();

  return sub_18E72AF28();
}

uint64_t sub_18E707830()
{
  swift_getWitnessTable();

  return sub_18E72AF48();
}

uint64_t sub_18E70791C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18E707554(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_18E707948(uint64_t *a1)
{
  result = sub_18E707554(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_18E707974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18E68065C(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_18E7079D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_18E707A28(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = sub_18E707F08();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t sub_18E707AB4(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = 0;
  v9 = 0xE000000000000000;
  (*(v4 + 16))(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(a1 + 16);
  swift_getWitnessTable();
  v7[1] = sub_18E72B288();
  sub_18E72B278();
  swift_getWitnessTable();
  sub_18E72B7A8();

  return v8;
}

uint64_t sub_18E707D2C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_18E72AF68();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(sub_18E72B3C8() + 36);
  result = sub_18E72AF68();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_18E707E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_18E72AF68();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t *sub_18E707F0C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = ((((v7 + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15;
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || (((v8 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v11 = *a2;
    *v3 = *a2;
    v3 = (v11 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    *a1 = *a2;
    v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v14 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
    v15 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v14;
    v16 = *(v5 + 16);

    v16(v15 + 1, v14 + 1, v4);
    v17 = ((v15 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((v14 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v17 = *v18;
    *((v17 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((v3 + v8) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((a2 + v8) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v20;
    *((v19 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

void *sub_18E7080C8(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v8;
  *v8 = *v9;

  v11 = *(*(a3 + 16) - 8);
  v12 = v11 + 24;
  v13 = *(v11 + 80);
  (*(v11 + 24))((v8 + v13 + 8) & ~v13, (v9 + v13 + 8) & ~v13);
  v14 = *(v12 + 40) + 7;
  v15 = ((v14 + ((v8 + v13 + 8) & ~v13)) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + ((v9 + v13 + 8) & ~v13)) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  *((v15 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((((v14 + ((v13 + 24) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15;
  v18 = ((a1 + v17) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((a2 + v17) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  *((v18 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *sub_18E70820C(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 32;
  v11 = *(v9 + 80);
  v12 = (v7 + v11 + 8) & ~v11;
  v13 = (v8 + v11 + 8) & ~v11;
  (*(v9 + 32))(v12, v13);
  v14 = *(v10 + 32) + 7;
  v15 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  *((v15 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((((v14 + ((v11 + 24) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15;
  v18 = ((a1 + v17) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((a2 + v17) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  *((v18 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *sub_18E708334(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v8;
  *v8 = *v9;

  v11 = *(*(a3 + 16) - 8);
  v12 = v11 + 40;
  v13 = *(v11 + 80);
  v14 = (v8 + v13 + 8) & ~v13;
  (*(v11 + 40))(v14, (v9 + v13 + 8) & ~v13);
  v15 = *(v12 + 24) + 7;
  v16 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + ((v9 + v13 + 8) & ~v13)) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((((v15 + ((v13 + 24) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15;
  v19 = ((a1 + v18) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((a2 + v18) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  *((v19 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E708470(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    v17 = ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    v18 = *v17;
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}