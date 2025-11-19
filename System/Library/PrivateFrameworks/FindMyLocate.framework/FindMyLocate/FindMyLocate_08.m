uint64_t Fence.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66AC0, &qword_1B80D6AA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v41[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B807EEEC();
  sub_1B80C99DC();
  LOBYTE(v57[0]) = 0;
  type metadata accessor for Fence.ID(0);
  sub_1B807E298(&qword_1EBA66AD0, type metadata accessor for Fence.ID);
  sub_1B80C97DC();
  if (!v2)
  {
    v11 = type metadata accessor for Fence(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v57[0]) = 1;
    sub_1B80C978C();
    LOBYTE(v57[0]) = *(v3 + v11[6]);
    LOBYTE(v45) = 2;
    sub_1B807EF40();
    sub_1B80C97DC();
    LOBYTE(v57[0]) = *(v3 + v11[7]);
    LOBYTE(v45) = 3;
    sub_1B80C97DC();
    v15 = v11[8];
    LOBYTE(v57[0]) = 4;
    type metadata accessor for Fence.Variant(0);
    sub_1B807E298(&qword_1EBA66AE0, type metadata accessor for Fence.Variant);
    sub_1B80C97DC();
    LOBYTE(v57[0]) = *(v3 + v11[9]);
    LOBYTE(v45) = 5;
    sub_1B807EF94();
    sub_1B80C97DC();
    v16 = (v3 + v11[10]);
    v17 = *(v16 + 2);
    v18 = *(v16 + 24);
    v69 = *v16;
    v70 = v17;
    v71 = v18;
    v68 = 6;
    sub_1B807EFE8();
    sub_1B80C97DC();
    v19 = (v3 + v11[11]);
    v20 = v19[9];
    v21 = v19[7];
    v64 = v19[8];
    v65 = v20;
    v22 = v19[9];
    v23 = v19[11];
    v66 = v19[10];
    v67 = v23;
    v24 = v19[5];
    v25 = v19[3];
    v60 = v19[4];
    v61 = v24;
    v26 = v19[5];
    v27 = v19[7];
    v62 = v19[6];
    v63 = v27;
    v28 = v19[1];
    v57[0] = *v19;
    v57[1] = v28;
    v29 = v19[3];
    v31 = *v19;
    v30 = v19[1];
    v58 = v19[2];
    v59 = v29;
    v53 = v64;
    v54 = v22;
    v32 = v19[11];
    v55 = v66;
    v56 = v32;
    v49 = v60;
    v50 = v26;
    v51 = v62;
    v52 = v21;
    v45 = v31;
    v46 = v30;
    v47 = v58;
    v48 = v25;
    v44 = 7;
    sub_1B806FB80(v57, v43);
    sub_1B807F03C();
    sub_1B80C97DC();
    v43[8] = v53;
    v43[9] = v54;
    v43[10] = v55;
    v43[11] = v56;
    v43[4] = v49;
    v43[5] = v50;
    v43[6] = v51;
    v43[7] = v52;
    v43[0] = v45;
    v43[1] = v46;
    v43[2] = v47;
    v43[3] = v48;
    sub_1B806FC7C(v43);
    v42 = *(v3 + v11[12]);
    v41[7] = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66B00, &qword_1B80D6AB0);
    sub_1B807F234(&qword_1EBA66B08, sub_1B807F090);
    sub_1B80C97DC();
    v72 = v11[13];
    LOBYTE(v42) = 9;
    v33 = sub_1B80C8E2C();
    sub_1B807E298(&qword_1ED8DC390, MEMORY[0x1E6969530]);
    v72 = v33;
    sub_1B80C977C();
    v34 = v11[14];
    LOBYTE(v42) = 10;
    sub_1B80C97DC();
    v35 = v11[15];
    LOBYTE(v42) = 11;
    sub_1B80C8E9C();
    sub_1B807E298(&qword_1ED8DC388, MEMORY[0x1E69695A8]);
    sub_1B80C977C();
    v36 = (v3 + v11[16]);
    v37 = *v36;
    v38 = v36[1];
    LOBYTE(v42) = 12;
    sub_1B80C975C();
    v39 = *(v3 + v11[17]);
    LOBYTE(v42) = 13;
    sub_1B80C979C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Fence.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = &v61 - v5;
  v6 = sub_1B80C8E2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v66 = &v61 - v12;
  v69 = type metadata accessor for Fence.Variant(0);
  v13 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Fence.ID(0);
  v16 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66B18, &qword_1B80D6AB8);
  v68 = *(v72 - 8);
  v18 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v20 = &v61 - v19;
  v21 = type metadata accessor for Fence(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v23 + 52);
  v67 = v7;
  v27 = *(v7 + 56);
  v77 = v26;
  v27(&v25[v26], 1, 1, v6);
  v28 = *(v21 + 60);
  v29 = sub_1B80C8E9C();
  v30 = *(*(v29 - 8) + 56);
  v93 = v25;
  v76 = v28;
  v30(&v25[v28], 1, 1, v29);
  v31 = a1[3];
  v32 = a1[4];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_1B807EEEC();
  v73 = v20;
  v33 = v74;
  sub_1B80C99BC();
  if (v33)
  {
    v37 = v93;
    __swift_destroy_boxed_opaque_existential_0(v75);
    sub_1B7FB86D4(v37 + v77, &unk_1EBA65FD0, &unk_1B80D1920);
    sub_1B7FB86D4(v37 + v76, &qword_1EBA667B0, &qword_1B80D68E8);
  }

  else
  {
    v34 = v15;
    v61 = v29;
    v35 = v68;
    v74 = v21;
    v62 = v6;
    LOBYTE(v81) = 0;
    sub_1B807E298(&qword_1EBA66B20, type metadata accessor for Fence.ID);
    v36 = v71;
    sub_1B80C972C();
    v38 = v36;
    v39 = v93;
    sub_1B8071324(v38, v93, type metadata accessor for Fence.ID);
    LOBYTE(v81) = 1;
    v40 = sub_1B80C96DC();
    v41 = v74;
    v42 = (v39 + v74[5]);
    *v42 = v40;
    v42[1] = v43;
    LOBYTE(v79) = 2;
    sub_1B807F0E4();
    v71 = 0;
    sub_1B80C972C();
    *(v39 + v41[6]) = v81;
    LOBYTE(v79) = 3;
    sub_1B80C972C();
    *(v39 + v41[7]) = v81;
    LOBYTE(v81) = 4;
    sub_1B807E298(&qword_1EBA66B30, type metadata accessor for Fence.Variant);
    sub_1B80C972C();
    sub_1B8071324(v34, v39 + v41[8], type metadata accessor for Fence.Variant);
    LOBYTE(v79) = 5;
    sub_1B807F138();
    sub_1B80C972C();
    *(v39 + v41[9]) = v81;
    LOBYTE(v79) = 6;
    sub_1B807F18C();
    sub_1B80C972C();
    v44 = v82;
    v45 = BYTE8(v82);
    v46 = v39 + v41[10];
    *v46 = v81;
    *(v46 + 16) = v44;
    *(v46 + 24) = v45;
    v80 = 7;
    sub_1B807F1E0();
    sub_1B80C972C();
    v47 = (v39 + v41[11]);
    v48 = v90;
    v49 = v91;
    v50 = v88;
    v47[8] = v89;
    v47[9] = v48;
    v51 = v92;
    v47[10] = v49;
    v47[11] = v51;
    v52 = v86;
    v47[4] = v85;
    v47[5] = v52;
    v47[6] = v87;
    v47[7] = v50;
    v53 = v82;
    *v47 = v81;
    v47[1] = v53;
    v54 = v84;
    v47[2] = v83;
    v47[3] = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66B00, &qword_1B80D6AB0);
    v78 = 8;
    sub_1B807F234(&qword_1EBA66B50, sub_1B807F2AC);
    sub_1B80C972C();
    *(v39 + v41[12]) = v79;
    LOBYTE(v79) = 9;
    sub_1B807E298(&qword_1ED8DBBD8, MEMORY[0x1E6969530]);
    sub_1B80C96CC();
    sub_1B7FF450C(v66, &v93[v77], &unk_1EBA65FD0, &unk_1B80D1920);
    LOBYTE(v79) = 10;
    sub_1B80C972C();
    (*(v67 + 32))(&v93[v74[14]], v65, v62);
    LOBYTE(v79) = 11;
    sub_1B807E298(&qword_1EBA65A60, MEMORY[0x1E69695A8]);
    sub_1B80C96CC();
    sub_1B7FF450C(v64, &v93[v76], &qword_1EBA667B0, &qword_1B80D68E8);
    LOBYTE(v79) = 12;
    v55 = sub_1B80C96AC();
    v56 = &v93[v74[16]];
    *v56 = v55;
    v56[1] = v57;
    LOBYTE(v79) = 13;
    v58 = sub_1B80C96EC();
    (*(v35 + 8))(v73, v72);
    v59 = v93;
    v93[v74[17]] = v58 & 1;
    sub_1B806F950(v59, v63, type metadata accessor for Fence);
    __swift_destroy_boxed_opaque_existential_0(v75);
    return sub_1B8071064(v59, type metadata accessor for Fence);
  }
}

char *sub_1B807D780(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DD8, &qword_1B80D1EC0);
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

size_t sub_1B807D88C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66E90, &qword_1B80D9248);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F18, &qword_1B80D9250) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F18, &qword_1B80D9250) - 8);
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

char *sub_1B807DAA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66100, &qword_1B80DACB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1B807DBF4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1B807DDD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66E98, &qword_1B80D9258);
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

uint64_t _s12FindMyLocate5FenceV8ScheduleV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    if (v4 && *(a1 + 32) == *(a2 + 32))
    {
      v5 = *(type metadata accessor for Fence.Schedule(0) + 28);

      JUMPOUT(0x1B8CB78C0);
    }
  }

  return 0;
}

uint64_t _s12FindMyLocate5FenceV7VariantO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Fence.Schedule(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Fence.Variant(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v29 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66EA8, &unk_1B80D9270);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v29 - v21;
  v23 = *(v20 + 56);
  sub_1B806F950(a1, &v29 - v21, type metadata accessor for Fence.Variant);
  sub_1B806F950(a2, &v22[v23], type metadata accessor for Fence.Variant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1B806F950(v22, v17, type metadata accessor for Fence.Variant);
    if (!swift_getEnumCaseMultiPayload())
    {
      v25 = *v17;
      goto LABEL_7;
    }

LABEL_11:
    sub_1B7FB86D4(v22, &qword_1EBA66EA8, &unk_1B80D9270);
    MyLocate5FenceV8ScheduleV2eeoiySbAE_AEtFZ_0 = 0;
    return MyLocate5FenceV8ScheduleV2eeoiySbAE_AEtFZ_0 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1B806F950(v22, v12, type metadata accessor for Fence.Variant);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8071324(&v22[v23], v7, type metadata accessor for Fence.Schedule);
      MyLocate5FenceV8ScheduleV2eeoiySbAE_AEtFZ_0 = _s12FindMyLocate5FenceV8ScheduleV2eeoiySbAE_AEtFZ_0(v12, v7);
      sub_1B8071064(v7, type metadata accessor for Fence.Schedule);
      sub_1B8071064(v12, type metadata accessor for Fence.Schedule);
      sub_1B8071064(v22, type metadata accessor for Fence.Variant);
      return MyLocate5FenceV8ScheduleV2eeoiySbAE_AEtFZ_0 & 1;
    }

    sub_1B8071064(v12, type metadata accessor for Fence.Schedule);
    goto LABEL_11;
  }

  sub_1B806F950(v22, v15, type metadata accessor for Fence.Variant);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_11;
  }

  v25 = *v15;
LABEL_7:
  v26 = v25 ^ v22[v23];
  sub_1B8071064(v22, type metadata accessor for Fence.Variant);
  MyLocate5FenceV8ScheduleV2eeoiySbAE_AEtFZ_0 = v26 ^ 1;
  return MyLocate5FenceV8ScheduleV2eeoiySbAE_AEtFZ_0 & 1;
}

uint64_t sub_1B807E298(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B807E2E0()
{
  result = qword_1ED8DBBF0;
  if (!qword_1ED8DBBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA66070, &qword_1B80D6930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBBF0);
  }

  return result;
}

uint64_t sub_1B807E344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Fence.ID(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B807E3A8()
{
  result = qword_1EBA65A20;
  if (!qword_1EBA65A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65A20);
  }

  return result;
}

unint64_t sub_1B807E3FC()
{
  result = qword_1EBA66828;
  if (!qword_1EBA66828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66828);
  }

  return result;
}

unint64_t sub_1B807E450()
{
  result = qword_1EBA66850;
  if (!qword_1EBA66850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66850);
  }

  return result;
}

unint64_t sub_1B807E4A4()
{
  result = qword_1EBA66858;
  if (!qword_1EBA66858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66858);
  }

  return result;
}

unint64_t sub_1B807E4F8()
{
  result = qword_1EBA66860;
  if (!qword_1EBA66860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66860);
  }

  return result;
}

unint64_t sub_1B807E56C()
{
  result = qword_1EBA66888;
  if (!qword_1EBA66888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66888);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1B807E610()
{
  result = qword_1EBA668B8;
  if (!qword_1EBA668B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA668B8);
  }

  return result;
}

unint64_t sub_1B807E664()
{
  result = qword_1EBA668C0;
  if (!qword_1EBA668C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA668C0);
  }

  return result;
}

unint64_t sub_1B807E6B8()
{
  result = qword_1EBA668D0;
  if (!qword_1EBA668D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA668D0);
  }

  return result;
}

unint64_t sub_1B807E70C()
{
  result = qword_1EBA668D8;
  if (!qword_1EBA668D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA668D8);
  }

  return result;
}

unint64_t sub_1B807E760()
{
  result = qword_1EBA668E0;
  if (!qword_1EBA668E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA668E0);
  }

  return result;
}

unint64_t sub_1B807E7B4()
{
  result = qword_1EBA66910;
  if (!qword_1EBA66910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66910);
  }

  return result;
}

unint64_t sub_1B807E808()
{
  result = qword_1EBA66920;
  if (!qword_1EBA66920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66920);
  }

  return result;
}

unint64_t sub_1B807E85C()
{
  result = qword_1EBA66938;
  if (!qword_1EBA66938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66938);
  }

  return result;
}

unint64_t sub_1B807E8B0()
{
  result = qword_1EBA66940;
  if (!qword_1EBA66940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66940);
  }

  return result;
}

unint64_t sub_1B807E904()
{
  result = qword_1EBA66948;
  if (!qword_1EBA66948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66948);
  }

  return result;
}

unint64_t sub_1B807E958()
{
  result = qword_1EBA66960;
  if (!qword_1EBA66960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66960);
  }

  return result;
}

unint64_t sub_1B807E9AC()
{
  result = qword_1EBA66968;
  if (!qword_1EBA66968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66968);
  }

  return result;
}

unint64_t sub_1B807EA00()
{
  result = qword_1EBA66990;
  if (!qword_1EBA66990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66990);
  }

  return result;
}

unint64_t sub_1B807EA54()
{
  result = qword_1EBA66998;
  if (!qword_1EBA66998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66998);
  }

  return result;
}

unint64_t sub_1B807EAA8()
{
  result = qword_1EBA669A0;
  if (!qword_1EBA669A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA669A0);
  }

  return result;
}

unint64_t sub_1B807EAFC()
{
  result = qword_1EBA669C8;
  if (!qword_1EBA669C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA669C8);
  }

  return result;
}

unint64_t sub_1B807EB50()
{
  result = qword_1EBA669D8;
  if (!qword_1EBA669D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA669D8);
  }

  return result;
}

unint64_t sub_1B807EBA4()
{
  result = qword_1EBA669E0;
  if (!qword_1EBA669E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA669E0);
  }

  return result;
}

unint64_t sub_1B807EBF8()
{
  result = qword_1EBA66A30;
  if (!qword_1EBA66A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66A30);
  }

  return result;
}

unint64_t sub_1B807EC4C()
{
  result = qword_1EBA66A38;
  if (!qword_1EBA66A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66A38);
  }

  return result;
}

unint64_t sub_1B807ECA0()
{
  result = qword_1EBA66A40;
  if (!qword_1EBA66A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66A40);
  }

  return result;
}

unint64_t sub_1B807ECF4()
{
  result = qword_1EBA66A48;
  if (!qword_1EBA66A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66A48);
  }

  return result;
}

unint64_t sub_1B807ED48()
{
  result = qword_1EBA66A50;
  if (!qword_1EBA66A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66A50);
  }

  return result;
}

unint64_t sub_1B807ED9C()
{
  result = qword_1EBA66A58;
  if (!qword_1EBA66A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66A58);
  }

  return result;
}

unint64_t sub_1B807EDF0()
{
  result = qword_1EBA66A60;
  if (!qword_1EBA66A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66A60);
  }

  return result;
}

unint64_t sub_1B807EE44()
{
  result = qword_1EBA66A68;
  if (!qword_1EBA66A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66A68);
  }

  return result;
}

unint64_t sub_1B807EE98()
{
  result = qword_1EBA66A70;
  if (!qword_1EBA66A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66A70);
  }

  return result;
}

unint64_t sub_1B807EEEC()
{
  result = qword_1EBA66AC8;
  if (!qword_1EBA66AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66AC8);
  }

  return result;
}

unint64_t sub_1B807EF40()
{
  result = qword_1EBA66AD8;
  if (!qword_1EBA66AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66AD8);
  }

  return result;
}

unint64_t sub_1B807EF94()
{
  result = qword_1EBA66AE8;
  if (!qword_1EBA66AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66AE8);
  }

  return result;
}

unint64_t sub_1B807EFE8()
{
  result = qword_1EBA66AF0;
  if (!qword_1EBA66AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66AF0);
  }

  return result;
}

unint64_t sub_1B807F03C()
{
  result = qword_1EBA66AF8;
  if (!qword_1EBA66AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66AF8);
  }

  return result;
}

unint64_t sub_1B807F090()
{
  result = qword_1EBA66B10;
  if (!qword_1EBA66B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66B10);
  }

  return result;
}

unint64_t sub_1B807F0E4()
{
  result = qword_1EBA66B28;
  if (!qword_1EBA66B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66B28);
  }

  return result;
}

unint64_t sub_1B807F138()
{
  result = qword_1EBA66B38;
  if (!qword_1EBA66B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66B38);
  }

  return result;
}

unint64_t sub_1B807F18C()
{
  result = qword_1EBA66B40;
  if (!qword_1EBA66B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66B40);
  }

  return result;
}

unint64_t sub_1B807F1E0()
{
  result = qword_1EBA66B48;
  if (!qword_1EBA66B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66B48);
  }

  return result;
}

uint64_t sub_1B807F234(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA66B00, &qword_1B80D6AB0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B807F2AC()
{
  result = qword_1EBA66B58;
  if (!qword_1EBA66B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66B58);
  }

  return result;
}

unint64_t sub_1B807F394()
{
  result = qword_1EBA66B70;
  if (!qword_1EBA66B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66B70);
  }

  return result;
}

unint64_t sub_1B807F3EC()
{
  result = qword_1EBA66B78;
  if (!qword_1EBA66B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66B78);
  }

  return result;
}

unint64_t sub_1B807F48C()
{
  result = qword_1EBA66B88;
  if (!qword_1EBA66B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66B88);
  }

  return result;
}

unint64_t sub_1B807F4E4()
{
  result = qword_1EBA66B90;
  if (!qword_1EBA66B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66B90);
  }

  return result;
}

unint64_t sub_1B807F53C()
{
  result = qword_1EBA66B98;
  if (!qword_1EBA66B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66B98);
  }

  return result;
}

unint64_t sub_1B807F594()
{
  result = qword_1EBA66BA0;
  if (!qword_1EBA66BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66BA0);
  }

  return result;
}

unint64_t sub_1B807F5E8()
{
  result = qword_1EBA66BA8;
  if (!qword_1EBA66BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66BA8);
  }

  return result;
}

unint64_t sub_1B807F640()
{
  result = qword_1EBA66BB0;
  if (!qword_1EBA66BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66BB0);
  }

  return result;
}

unint64_t sub_1B807F698()
{
  result = qword_1EBA66BB8;
  if (!qword_1EBA66BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66BB8);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B80C8E9C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B80C8E9C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Fence.DaysOfWeek(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for Fence.DaysOfWeek(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t sub_1B807FA90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 25))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 8;
  v5 = v3 - 8;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B807FAD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 7;
    }
  }

  return result;
}

unint64_t sub_1B807FCD0()
{
  result = qword_1EBA66BD8;
  if (!qword_1EBA66BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66BD8);
  }

  return result;
}

unint64_t sub_1B807FD28()
{
  result = qword_1EBA66BE0;
  if (!qword_1EBA66BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66BE0);
  }

  return result;
}

unint64_t sub_1B807FD80()
{
  result = qword_1EBA66BE8;
  if (!qword_1EBA66BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66BE8);
  }

  return result;
}

unint64_t sub_1B807FDD8()
{
  result = qword_1EBA66BF0;
  if (!qword_1EBA66BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66BF0);
  }

  return result;
}

unint64_t sub_1B807FE30()
{
  result = qword_1EBA66BF8;
  if (!qword_1EBA66BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66BF8);
  }

  return result;
}

unint64_t sub_1B807FE88()
{
  result = qword_1EBA66C00;
  if (!qword_1EBA66C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C00);
  }

  return result;
}

unint64_t sub_1B807FEE0()
{
  result = qword_1EBA66C08;
  if (!qword_1EBA66C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C08);
  }

  return result;
}

unint64_t sub_1B807FF38()
{
  result = qword_1EBA66C10;
  if (!qword_1EBA66C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C10);
  }

  return result;
}

unint64_t sub_1B807FF90()
{
  result = qword_1EBA66C18;
  if (!qword_1EBA66C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C18);
  }

  return result;
}

unint64_t sub_1B807FFE8()
{
  result = qword_1EBA66C20;
  if (!qword_1EBA66C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C20);
  }

  return result;
}

unint64_t sub_1B8080040()
{
  result = qword_1EBA66C28;
  if (!qword_1EBA66C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C28);
  }

  return result;
}

unint64_t sub_1B8080098()
{
  result = qword_1EBA66C30;
  if (!qword_1EBA66C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C30);
  }

  return result;
}

unint64_t sub_1B80800F0()
{
  result = qword_1EBA66C38;
  if (!qword_1EBA66C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C38);
  }

  return result;
}

unint64_t sub_1B8080148()
{
  result = qword_1EBA66C40;
  if (!qword_1EBA66C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C40);
  }

  return result;
}

unint64_t sub_1B80801A0()
{
  result = qword_1EBA66C48;
  if (!qword_1EBA66C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C48);
  }

  return result;
}

unint64_t sub_1B80801F8()
{
  result = qword_1EBA66C50;
  if (!qword_1EBA66C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C50);
  }

  return result;
}

unint64_t sub_1B8080250()
{
  result = qword_1EBA66C58;
  if (!qword_1EBA66C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C58);
  }

  return result;
}

unint64_t sub_1B80802A8()
{
  result = qword_1EBA66C60;
  if (!qword_1EBA66C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C60);
  }

  return result;
}

unint64_t sub_1B8080300()
{
  result = qword_1EBA66C68;
  if (!qword_1EBA66C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C68);
  }

  return result;
}

unint64_t sub_1B8080358()
{
  result = qword_1EBA66C70;
  if (!qword_1EBA66C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C70);
  }

  return result;
}

unint64_t sub_1B80803B0()
{
  result = qword_1EBA66C78;
  if (!qword_1EBA66C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C78);
  }

  return result;
}

unint64_t sub_1B8080408()
{
  result = qword_1EBA66C80;
  if (!qword_1EBA66C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C80);
  }

  return result;
}

unint64_t sub_1B8080460()
{
  result = qword_1EBA66C88;
  if (!qword_1EBA66C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C88);
  }

  return result;
}

unint64_t sub_1B80804B8()
{
  result = qword_1EBA66C90;
  if (!qword_1EBA66C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C90);
  }

  return result;
}

unint64_t sub_1B8080510()
{
  result = qword_1EBA66C98;
  if (!qword_1EBA66C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66C98);
  }

  return result;
}

unint64_t sub_1B8080568()
{
  result = qword_1EBA66CA0;
  if (!qword_1EBA66CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66CA0);
  }

  return result;
}

unint64_t sub_1B80805C0()
{
  result = qword_1EBA66CA8;
  if (!qword_1EBA66CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66CA8);
  }

  return result;
}

unint64_t sub_1B8080618()
{
  result = qword_1EBA66CB0;
  if (!qword_1EBA66CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66CB0);
  }

  return result;
}

unint64_t sub_1B8080670()
{
  result = qword_1EBA66CB8;
  if (!qword_1EBA66CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66CB8);
  }

  return result;
}

unint64_t sub_1B80806C8()
{
  result = qword_1EBA66CC0;
  if (!qword_1EBA66CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66CC0);
  }

  return result;
}

unint64_t sub_1B8080720()
{
  result = qword_1EBA66CC8;
  if (!qword_1EBA66CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66CC8);
  }

  return result;
}

unint64_t sub_1B8080778()
{
  result = qword_1EBA66CD0;
  if (!qword_1EBA66CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66CD0);
  }

  return result;
}

unint64_t sub_1B80807D0()
{
  result = qword_1EBA66CD8;
  if (!qword_1EBA66CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66CD8);
  }

  return result;
}

unint64_t sub_1B8080828()
{
  result = qword_1EBA66CE0;
  if (!qword_1EBA66CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66CE0);
  }

  return result;
}

unint64_t sub_1B8080880()
{
  result = qword_1EBA66CE8;
  if (!qword_1EBA66CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66CE8);
  }

  return result;
}

unint64_t sub_1B80808D8()
{
  result = qword_1EBA66CF0;
  if (!qword_1EBA66CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66CF0);
  }

  return result;
}

unint64_t sub_1B8080930()
{
  result = qword_1EBA66CF8;
  if (!qword_1EBA66CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66CF8);
  }

  return result;
}

unint64_t sub_1B8080988()
{
  result = qword_1EBA66D00;
  if (!qword_1EBA66D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D00);
  }

  return result;
}

unint64_t sub_1B80809E0()
{
  result = qword_1EBA66D08;
  if (!qword_1EBA66D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D08);
  }

  return result;
}

unint64_t sub_1B8080A38()
{
  result = qword_1EBA66D10;
  if (!qword_1EBA66D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D10);
  }

  return result;
}

unint64_t sub_1B8080A90()
{
  result = qword_1EBA66D18;
  if (!qword_1EBA66D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D18);
  }

  return result;
}

unint64_t sub_1B8080AE8()
{
  result = qword_1EBA66D20;
  if (!qword_1EBA66D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D20);
  }

  return result;
}

unint64_t sub_1B8080B40()
{
  result = qword_1EBA66D28;
  if (!qword_1EBA66D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D28);
  }

  return result;
}

unint64_t sub_1B8080B98()
{
  result = qword_1EBA66D30;
  if (!qword_1EBA66D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D30);
  }

  return result;
}

unint64_t sub_1B8080BF0()
{
  result = qword_1EBA66D38;
  if (!qword_1EBA66D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D38);
  }

  return result;
}

unint64_t sub_1B8080C48()
{
  result = qword_1EBA66D40;
  if (!qword_1EBA66D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D40);
  }

  return result;
}

unint64_t sub_1B8080CA0()
{
  result = qword_1EBA66D48;
  if (!qword_1EBA66D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D48);
  }

  return result;
}

unint64_t sub_1B8080CF8()
{
  result = qword_1EBA66D50;
  if (!qword_1EBA66D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D50);
  }

  return result;
}

unint64_t sub_1B8080D50()
{
  result = qword_1EBA66D58;
  if (!qword_1EBA66D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D58);
  }

  return result;
}

unint64_t sub_1B8080DA8()
{
  result = qword_1EBA66D60;
  if (!qword_1EBA66D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D60);
  }

  return result;
}

unint64_t sub_1B8080E00()
{
  result = qword_1EBA66D68;
  if (!qword_1EBA66D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D68);
  }

  return result;
}

unint64_t sub_1B8080E58()
{
  result = qword_1EBA66D70;
  if (!qword_1EBA66D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D70);
  }

  return result;
}

unint64_t sub_1B8080EB0()
{
  result = qword_1EBA66D78;
  if (!qword_1EBA66D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D78);
  }

  return result;
}

unint64_t sub_1B8080F08()
{
  result = qword_1EBA66D80;
  if (!qword_1EBA66D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D80);
  }

  return result;
}

unint64_t sub_1B8080F60()
{
  result = qword_1EBA66D88;
  if (!qword_1EBA66D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D88);
  }

  return result;
}

unint64_t sub_1B8080FB8()
{
  result = qword_1EBA66D90;
  if (!qword_1EBA66D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D90);
  }

  return result;
}

unint64_t sub_1B8081010()
{
  result = qword_1EBA66D98;
  if (!qword_1EBA66D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66D98);
  }

  return result;
}

unint64_t sub_1B8081068()
{
  result = qword_1EBA66DA0;
  if (!qword_1EBA66DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66DA0);
  }

  return result;
}

unint64_t sub_1B80810C0()
{
  result = qword_1EBA66DA8;
  if (!qword_1EBA66DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66DA8);
  }

  return result;
}

unint64_t sub_1B8081118()
{
  result = qword_1EBA66DB0;
  if (!qword_1EBA66DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66DB0);
  }

  return result;
}

unint64_t sub_1B8081170()
{
  result = qword_1EBA66DB8;
  if (!qword_1EBA66DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66DB8);
  }

  return result;
}

unint64_t sub_1B80811C8()
{
  result = qword_1EBA66DC0;
  if (!qword_1EBA66DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66DC0);
  }

  return result;
}

unint64_t sub_1B8081220()
{
  result = qword_1EBA66DC8;
  if (!qword_1EBA66DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66DC8);
  }

  return result;
}

unint64_t sub_1B8081278()
{
  result = qword_1EBA66DD0;
  if (!qword_1EBA66DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66DD0);
  }

  return result;
}

unint64_t sub_1B80812D0()
{
  result = qword_1EBA66DD8;
  if (!qword_1EBA66DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66DD8);
  }

  return result;
}

unint64_t sub_1B8081328()
{
  result = qword_1EBA66DE0;
  if (!qword_1EBA66DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66DE0);
  }

  return result;
}

unint64_t sub_1B8081380()
{
  result = qword_1EBA66DE8;
  if (!qword_1EBA66DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66DE8);
  }

  return result;
}

unint64_t sub_1B80813D8()
{
  result = qword_1EBA66DF0;
  if (!qword_1EBA66DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66DF0);
  }

  return result;
}

unint64_t sub_1B8081430()
{
  result = qword_1EBA66DF8;
  if (!qword_1EBA66DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66DF8);
  }

  return result;
}

uint64_t sub_1B8081484(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4264657461657263 && a2 == 0xE900000000000079 || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265646E6966 && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E6169726176 && a2 == 0xE700000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B80CDB30 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F69676572 && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x72616D6563616C70 && a2 == 0xE90000000000006BLL || (sub_1B80C981C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x73726568746FLL && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x44646E456574756DLL && a2 == 0xEB00000000657461 || (sub_1B80C981C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4164657461647075 && a2 == 0xE900000000000074 || (sub_1B80C981C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B80CDB50 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B80CDB70 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B80CDB90 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_1B80C981C();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1B80818D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x48676E69646E6570 && a2 == 0xED00006E65646469;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E69646E6570 && a2 == 0xE700000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465747065636361 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B80C981C();

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

unint64_t sub_1B80819F0()
{
  result = qword_1EBA66E20;
  if (!qword_1EBA66E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66E20);
  }

  return result;
}

unint64_t sub_1B8081A44()
{
  result = qword_1EBA66E28;
  if (!qword_1EBA66E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66E28);
  }

  return result;
}

unint64_t sub_1B8081A98()
{
  result = qword_1EBA66E30;
  if (!qword_1EBA66E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66E30);
  }

  return result;
}

unint64_t sub_1B8081AEC()
{
  result = qword_1EBA66E38;
  if (!qword_1EBA66E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66E38);
  }

  return result;
}

uint64_t sub_1B8081B40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D6954656E6FLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69727275636572 && a2 == 0xE900000000000067 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B80C981C();

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

uint64_t sub_1B8081C68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C746E6572727563 && a2 == 0xEF6E6F697461636FLL || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4C646E65697266 && a2 == 0xEE006E6F69746163 || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B80CDB10 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4273736572646461 && a2 == 0xEB000000006B6F6FLL || (sub_1B80C981C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x50646570706F7264 && a2 == 0xEA00000000006E69 || (sub_1B80C981C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1819242356 && a2 == 0xE400000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1B80C981C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1B8081F1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6557664F73796164 && a2 == 0xEA00000000006B65 || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B80C981C();

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

unint64_t sub_1B8082084()
{
  result = qword_1EBA66E68;
  if (!qword_1EBA66E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66E68);
  }

  return result;
}

unint64_t sub_1B80820D8()
{
  result = qword_1EBA66E70;
  if (!qword_1EBA66E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66E70);
  }

  return result;
}

unint64_t sub_1B808212C()
{
  result = qword_1EBA66E80;
  if (!qword_1EBA66E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66E80);
  }

  return result;
}

unint64_t sub_1B80821D4()
{
  result = qword_1EBA66EB0;
  if (!qword_1EBA66EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66EB0);
  }

  return result;
}

unint64_t sub_1B808222C()
{
  result = qword_1EBA66EB8;
  if (!qword_1EBA66EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66EB8);
  }

  return result;
}

unint64_t sub_1B8082284()
{
  result = qword_1EBA66EC0;
  if (!qword_1EBA66EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66EC0);
  }

  return result;
}

unint64_t sub_1B80822DC()
{
  result = qword_1EBA66EC8;
  if (!qword_1EBA66EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66EC8);
  }

  return result;
}

unint64_t sub_1B8082334()
{
  result = qword_1EBA66ED0;
  if (!qword_1EBA66ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66ED0);
  }

  return result;
}

unint64_t sub_1B808238C()
{
  result = qword_1EBA66ED8;
  if (!qword_1EBA66ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66ED8);
  }

  return result;
}

unint64_t sub_1B80823E4()
{
  result = qword_1EBA66EE0;
  if (!qword_1EBA66EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66EE0);
  }

  return result;
}

unint64_t sub_1B808243C()
{
  result = qword_1EBA66EE8;
  if (!qword_1EBA66EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66EE8);
  }

  return result;
}

unint64_t sub_1B8082494()
{
  result = qword_1EBA66EF0;
  if (!qword_1EBA66EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66EF0);
  }

  return result;
}

unint64_t sub_1B80824EC()
{
  result = qword_1EBA66EF8;
  if (!qword_1EBA66EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66EF8);
  }

  return result;
}

unint64_t sub_1B8082544()
{
  result = qword_1EBA66F00;
  if (!qword_1EBA66F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66F00);
  }

  return result;
}

unint64_t sub_1B808259C()
{
  result = qword_1EBA66F08;
  if (!qword_1EBA66F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66F08);
  }

  return result;
}

unint64_t sub_1B80825F4()
{
  result = qword_1EBA66F10;
  if (!qword_1EBA66F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66F10);
  }

  return result;
}

unint64_t sub_1B808264C()
{
  result = qword_1EBA66F18;
  if (!qword_1EBA66F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66F18);
  }

  return result;
}

unint64_t sub_1B80826A4()
{
  result = qword_1EBA66F20;
  if (!qword_1EBA66F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66F20);
  }

  return result;
}

uint64_t sub_1B80826F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656469736E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6564697374756FLL && a2 == 0xE700000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D72657465646E75 && a2 == 0xEC00000064656E69)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B80C981C();

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

uint64_t sub_1B8082810(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737569646172 && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B80C981C();

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

id sub_1B8082A0C()
{
  result = sub_1B8082A2C();
  qword_1EBA66F28 = result;
  return result;
}

id sub_1B8082A2C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69A2200]) init];
  if (result)
  {
    v1 = result;
    v8 = MEMORY[0x1E69E7CC0];
    result = sub_1B80C959C();
    v2 = 0x20u;
    do
    {
      v3 = *(&unk_1F2FF9EF0 + v2);
      if (*(v3 + 16) < 2uLL)
      {
        __break(1u);
        goto LABEL_10;
      }

      [objc_allocWithZone(MEMORY[0x1E69A1E50]) initWithLatitude:*(v3 + 40) longitude:*(v3 + 32)];
      sub_1B80C957C();
      v4 = *(v8 + 16);
      sub_1B80C95AC();
      sub_1B80C95BC();
      result = sub_1B80C958C();
      v2 += 8;
    }

    while (v2 != 320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F30, &qword_1B80D9800);
    swift_arrayDestroy();
    v5 = *(v8 + 16);
    if (v5)
    {
      v6 = (v8 + 32);
      do
      {
        v7 = *v6++;
        [v1 addVertex_];
        --v5;
      }

      while (v5);
    }

    return v1;
  }

  else
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

void sub_1B8082B94(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1B80C8CFC();
  v5 = [v4 domain];
  v6 = sub_1B80C90BC();
  v8 = v7;

  if (v6 == 0xD000000000000029 && 0x80000001B80CDD80 == v8)
  {

    goto LABEL_8;
  }

  v10 = sub_1B80C981C();

  if (v10)
  {
LABEL_8:
    v12 = [v4 code];

    Fence.Error.init(rawValue:)(v12, &v13);
    v11 = v13;
    goto LABEL_9;
  }

  v11 = 12;
LABEL_9:
  *a2 = v11;
}

uint64_t Fence.Error.description.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0xD00000000000001ELL;
    v8 = 0xD00000000000003FLL;
    if (v1 != 10)
    {
      v8 = 0xD000000000000031;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0xD000000000000022;
    if (v1 == 7)
    {
      v9 = 0xD00000000000001BLL;
    }

    if (v1 == 6)
    {
      v9 = 0xD000000000000016;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x206E776F6E6B6E55;
    v3 = 0xD000000000000020;
    v4 = 0xD000000000000017;
    if (v1 == 4)
    {
      v4 = 0xD000000000000020;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0xD000000000000017;
    if (v1 != 1)
    {
      v5 = 0xD000000000000010;
    }

    if (*v0)
    {
      v2 = v5;
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
}

unint64_t Fence.Error.errorUserInfo.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F38, &unk_1B80DECA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B80D1EB0;
  v3 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1B80C90BC();
  *(inited + 40) = v4;
  v5 = Fence.Error.description.getter();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_1B8083464(inited);
  swift_setDeallocating();
  sub_1B8083594(inited + 32);
  return v7;
}

uint64_t Fence.Error.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result + 24;
  if ((result - 1000) >= 0xC)
  {
    v2 = 12;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1B8082F38()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1 + 1000);
  return sub_1B80C997C();
}

uint64_t sub_1B8082FB0()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1 + 1000);
  return sub_1B80C997C();
}

uint64_t sub_1B808300C(uint64_t a1)
{
  v2 = sub_1B80837A8();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8083048(uint64_t a1)
{
  v2 = sub_1B80837A8();
  v3 = sub_1B80837FC();
  v4 = sub_1B804B6D0();

  return MEMORY[0x1EEDC6AB0](a1, v2, v3, v4);
}

uint64_t sub_1B80830D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F68, &qword_1B80D99A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v32 - v5);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660F0, &unk_1B80DAC60);
  v8 = sub_1B80C966C();
  v9 = *(v2 + 48);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = *(v3 + 72);

  sub_1B7FB8448(a1 + v10, v6, &qword_1EBA66F68, &qword_1B80D99A0);
  v12 = v6[9];
  v40 = v6[8];
  v41 = v12;
  v42 = v6[10];
  v13 = v6[5];
  v36 = v6[4];
  v37 = v13;
  v14 = v6[7];
  v38 = v6[6];
  v39 = v14;
  v15 = v6[1];
  v32 = *v6;
  v16 = v6[2];
  v35 = v6[3];
  v33 = v15;
  v34 = v16;
  v17 = sub_1B7FDA47C(&v32);
  if (v18)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v8;
  }

  v19 = v17;
  v20 = *(*(type metadata accessor for Location() - 8) + 72);
  v21 = a1 + v11 + v10;
  while (1)
  {
    *(v8 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v19;
    memmove((v8[6] + 176 * v19), v6, 0xB0uLL);
    result = sub_1B8083A34(v6 + v9, v8[7] + v20 * v19);
    v23 = v8[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      break;
    }

    v8[2] = v25;
    if (!--v7)
    {
      goto LABEL_8;
    }

    sub_1B7FB8448(v21, v6, &qword_1EBA66F68, &qword_1B80D99A0);
    v26 = v6[9];
    v40 = v6[8];
    v41 = v26;
    v42 = v6[10];
    v27 = v6[5];
    v36 = v6[4];
    v37 = v27;
    v28 = v6[7];
    v38 = v6[6];
    v39 = v28;
    v29 = v6[1];
    v32 = *v6;
    v30 = v6[2];
    v35 = v6[3];
    v33 = v29;
    v34 = v30;
    v19 = sub_1B7FDA47C(&v32);
    v21 += v11;
    if (v31)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B8083354(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F70, &qword_1B80DAC90);
  v3 = sub_1B80C966C();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1B7FDA504(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1B7FDA504(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B8083464(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FA0, &qword_1B80D99C8);
    v3 = sub_1B80C966C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7FB8448(v4, &v13, &qword_1EBA66F40, &qword_1B80D9808);
      v5 = v13;
      v6 = v14;
      result = sub_1B7FDA404(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B8083A98(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B8083594(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F40, &qword_1B80D9808);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B8083600()
{
  result = qword_1EBA66F48;
  if (!qword_1EBA66F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66F48);
  }

  return result;
}

uint64_t _s5ErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5ErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B80837A8()
{
  result = qword_1EBA66F50;
  if (!qword_1EBA66F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66F50);
  }

  return result;
}

unint64_t sub_1B80837FC()
{
  result = qword_1EBA66F58;
  if (!qword_1EBA66F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66F58);
  }

  return result;
}

unint64_t sub_1B8083850(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F98, &qword_1B80D99C0);
    v3 = sub_1B80C966C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1B7FDA570(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8083930(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F60, &qword_1B80D9998);
    v3 = sub_1B80C966C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B7FDA404(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B8083A34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1B8083A98(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B8083AAC(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a2;
  v42 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - v8;
  v43 = sub_1B80C8E2C();
  v10 = *(*(v43 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v43);
  v40 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v33 = &v32 - v14;
  v34 = v13;
  v15 = a3 + 56;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a3 + 56);
  v19 = (v16 + 63) >> 6;
  v38 = (v13 + 32);
  v39 = (v13 + 48);

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v35 = v9;
  v36 = result;
  if (v18)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      goto LABEL_20;
    }

    v18 = *(v15 + 8 * v24);
    ++v21;
    if (v18)
    {
      v23 = v22;
      v21 = v24;
      while (1)
      {
        v25 = result;
        v44 = *(*(result + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v18)))));
        v42(&v44);
        if (v4)
        {
          break;
        }

        v18 &= v18 - 1;
        v26 = v43;
        if ((*v39)(v9, 1, v43) == 1)
        {
          sub_1B7FB86D4(v9, &unk_1EBA65FD0, &unk_1B80D1920);
          v22 = v23;
          result = v25;
          if (!v18)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v37 = 0;
          v27 = v9;
          v28 = *v38;
          v29 = v33;
          (*v38)(v33, v27, v26);
          v28(v40, v29, v26);
          v22 = v23;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_1B807DBCC(0, v23[2] + 1, 1, v23);
          }

          v31 = v22[2];
          v30 = v22[3];
          v4 = v37;
          if (v31 >= v30 >> 1)
          {
            v22 = sub_1B807DBCC(v30 > 1, v31 + 1, 1, v22);
          }

          v22[2] = v31 + 1;
          v28(v22 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v31, v40, v43);
          v9 = v35;
          result = v36;
          if (!v18)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v23 = v22;
      }

      v22 = v23;

LABEL_20:

      return v22;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8083E1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Fence.Schedule(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Fence.Schedule.Matcher.init(schedule:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B80C8FCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B80C8EEC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8083E1C(a1, a2);
  (*(v10 + 104))(v13, *MEMORY[0x1E6969868], v9);
  v14 = *(type metadata accessor for Fence.Schedule.Matcher() + 20);
  sub_1B80C8EFC();
  (*(v10 + 8))(v13, v9);
  v15 = type metadata accessor for Fence.Schedule(0);
  (*(v5 + 16))(v8, a1 + *(v15 + 28), v4);
  sub_1B80C8F7C();
  return sub_1B8084058(a1);
}

uint64_t sub_1B8084058(uint64_t a1)
{
  v2 = type metadata accessor for Fence.Schedule(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Fence.Schedule.Matcher.interval(containingDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v37 = sub_1B80C8BEC();
  v35 = *(v37 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B80C8F2C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B80C8E2C();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v33 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v32 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v32 - v21;
  (*(v6 + 104))(v9, *MEMORY[0x1E69699A0], v5);
  Fence.Schedule.Matcher.nextStartDate(from:direction:)(a1, v9, v22);
  (*(v6 + 8))(v9, v5);
  sub_1B8084878(v22, v20);
  v23 = v11[2];
  v23(v17, v22, v10);
  v23(v33, v20, v10);
  v24 = v34;
  sub_1B80C8BCC();
  LOBYTE(v17) = sub_1B80C8BDC();
  v25 = v11[1];
  v25(v20, v10);
  v25(v22, v10);
  if (v17)
  {
    v26 = v35;
    v27 = v36;
    v28 = v37;
    (*(v35 + 32))(v36, v24, v37);
    v29 = 0;
    v30 = v27;
  }

  else
  {
    v26 = v35;
    v28 = v37;
    (*(v35 + 8))(v24, v37);
    v29 = 1;
    v30 = v36;
  }

  return (*(v26 + 56))(v30, v29, 1, v28);
}

uint64_t Fence.Schedule.Matcher.nextStartDate(from:direction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v33 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - v11;
  v13 = sub_1B80C8F2C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v38) = *(v3 + 32);
  v18 = Fence.DaysOfWeek.gregorianCalendarWeekdays.getter();
  v35 = v3;
  v36 = a1;
  v37 = a2;
  v19 = sub_1B8083AAC(sub_1B8085D00, v34, v18);

  if (!*(v19 + 16))
  {
    if (qword_1EBA65AA0 != -1)
    {
      swift_once();
    }

    v20 = sub_1B80C900C();
    __swift_project_value_buffer(v20, qword_1EBA7AC98);
    v21 = sub_1B80C8FEC();
    v22 = sub_1B80C93FC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v32 = a3;
      v24 = v23;
      v25 = swift_slowAlloc();
      v38 = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_1B7FB84FC(0xD00000000000001ELL, 0x80000001B80CDDE0, &v38);
      _os_log_impl(&dword_1B7FB5000, v21, v22, "%{public}s: Did not find valid trigger dates for fence.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1B8CB8970](v25, -1, -1);
      v26 = v24;
      a3 = v32;
      MEMORY[0x1B8CB8970](v26, -1, -1);
    }
  }

  (*(v14 + 16))(v17, a2, v13);
  v27 = (*(v14 + 88))(v17, v13);
  if (v27 == *MEMORY[0x1E6969998])
  {
    sub_1B8086880(v19, v12);
  }

  else
  {
    if (v27 != *MEMORY[0x1E69699A0])
    {
      result = sub_1B80C962C();
      __break(1u);
      return result;
    }

    v12 = v33;
    sub_1B8086B30(v19, v33);
  }

  v28 = sub_1B80C8E2C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  if (v30(v12, 1, v28) != 1)
  {
    return (*(v29 + 32))(a3, v12, v28);
  }

  sub_1B80C8D6C();
  result = (v30)(v12, 1, v28);
  if (result != 1)
  {
    return sub_1B7FB86D4(v12, &unk_1EBA65FD0, &unk_1B80D1920);
  }

  return result;
}

uint64_t sub_1B8084878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B80C8F3C();
  v72 = *(v5 - 8);
  v73 = v5;
  v6 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v70 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1B80C8F2C();
  v69 = *(v75 - 8);
  v8 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v68 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1B80C8F0C();
  v67 = *(v74 - 8);
  v10 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v66 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v71 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v60 - v16;
  v18 = type metadata accessor for Fence.Schedule(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FC0, &qword_1B80D9A00);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v60 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FC8, &unk_1B80D9FD0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v60 - v28;
  v30 = sub_1B80C8C7C();
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v35 = v2[2];
  v36 = v2[3];
  v76 = v2;
  if (v35 == *v2 && v36 == v76[1])
  {
    v37 = sub_1B80C8E2C();
    v38 = *(*(v37 - 8) + 16);

    return v38(a2, a1, v37);
  }

  v60 = a1;
  v61 = v34;
  v64 = a2;
  v65 = &v60 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v32;
  v63 = v17;
  v40 = sub_1B80C8F9C();
  (*(*(v40 - 8) + 56))(v29, 1, 1, v40);
  sub_1B8083E1C(v76, v21);
  v41 = *(v18 + 28);
  v42 = sub_1B80C8FCC();
  v43 = *(v42 - 8);
  (*(v43 + 32))(v25, &v21[v41], v42);
  (*(v43 + 56))(v25, 0, 1, v42);
  if ((v36 | v35) < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B80C8C6C();
    v44 = *(type metadata accessor for Fence.Schedule.Matcher() + 20);
    v45 = v66;
    v46 = v67;
    (*(v67 + 104))(v66, *MEMORY[0x1E69698D0], v74);
    v48 = v68;
    v47 = v69;
    (*(v69 + 104))(v68, *MEMORY[0x1E6969998], v75);
    v50 = v72;
    v49 = v73;
    v51 = v70;
    (*(v72 + 104))(v70, *MEMORY[0x1E69699C8], v73);
    v41 = v63;
    sub_1B80C8F6C();
    (*(v50 + 8))(v51, v49);
    (*(v47 + 8))(v48, v75);
    (*(v46 + 8))(v45, v74);
    v52 = v71;
    sub_1B7FD6818(v41, v71);
    v53 = sub_1B80C8E2C();
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v52, 1, v53) != 1)
    {
      sub_1B7FB86D4(v41, &unk_1EBA65FD0, &unk_1B80D1920);
      (*(v61 + 8))(v65, v62);
      return (*(v54 + 32))(v64, v52, v53);
    }

    v42 = v65;
    sub_1B7FB86D4(v52, &unk_1EBA65FD0, &unk_1B80D1920);
    if (qword_1EBA65AA0 == -1)
    {
      goto LABEL_9;
    }
  }

  swift_once();
LABEL_9:
  v55 = sub_1B80C900C();
  __swift_project_value_buffer(v55, qword_1EBA7AC98);
  v56 = sub_1B80C8FEC();
  v57 = sub_1B80C93FC();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v77 = v59;
    *v58 = 136446210;
    *(v58 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CDE00, &v77);
    _os_log_impl(&dword_1B7FB5000, v56, v57, "%{public}s: Did not find valid trigger dates for fence.", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x1B8CB8970](v59, -1, -1);
    MEMORY[0x1B8CB8970](v58, -1, -1);
  }

  sub_1B80C8D6C();
  sub_1B7FB86D4(v41, &unk_1EBA65FD0, &unk_1B80D1920);
  return (*(v61 + 8))(v42, v62);
}

uint64_t Fence.Schedule.Matcher.doesMatchSchedule(_:)(uint64_t a1)
{
  v2 = sub_1B80C8F2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B80C8E2C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  (*(v3 + 104))(v6, *MEMORY[0x1E69699A0], v2);
  Fence.Schedule.Matcher.nextStartDate(from:direction:)(a1, v6, v14);
  (*(v3 + 8))(v6, v2);
  sub_1B8084878(v14, v12);
  sub_1B8089004(&qword_1EBA65F30, MEMORY[0x1E6969530]);
  if (sub_1B80C907C())
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_1B80C907C() ^ 1;
  }

  v16 = *(v8 + 8);
  v16(v12, v7);
  v16(v14, v7);
  return v15 & 1;
}

uint64_t Fence.Schedule.Matcher.nextStartOrEndDate(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1B80C8F2C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1B80C8E2C();
  v9 = *(v24 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v24);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  v16 = *MEMORY[0x1E69699A0];
  v22 = v5[13];
  v22(v8, v16, v4);
  Fence.Schedule.Matcher.nextStartDate(from:direction:)(a1, v8, v15);
  v17 = v5[1];
  v17(v8, v4);
  v23 = v2;
  sub_1B8084878(v15, v13);
  if (sub_1B80C8D9C())
  {
    v18 = v24;
    (*(v9 + 8))(v15, v24);
    return (*(v9 + 32))(v25, v13, v18);
  }

  else
  {
    v22(v8, *MEMORY[0x1E6969998], v4);
    Fence.Schedule.Matcher.nextStartDate(from:direction:)(a1, v8, v25);
    v17(v8, v4);
    v20 = *(v9 + 8);
    v21 = v24;
    v20(v13, v24);
    return (v20)(v15, v21);
  }
}

uint64_t Fence.Schedule.Matcher.previousInterval(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[0] = a1;
  v24[1] = a2;
  v2 = sub_1B80C8F2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B80C8E2C();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v24 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v24 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v24 - v19;
  (*(v3 + 104))(v6, *MEMORY[0x1E69699A0], v2);
  Fence.Schedule.Matcher.nextStartDate(from:direction:)(v24[0], v6, v20);
  (*(v3 + 8))(v6, v2);
  sub_1B8084878(v20, v18);
  v21 = v8[2];
  v21(v15, v20, v7);
  v21(v12, v18, v7);
  sub_1B80C8BCC();
  v22 = v8[1];
  v22(v18, v7);
  return (v22)(v20, v7);
}

uint64_t Fence.Schedule.Matcher.previousStartDate(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B80C8F2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E69699A0], v4);
  Fence.Schedule.Matcher.nextStartDate(from:direction:)(a1, v8, a2);
  return (*(v5 + 8))(v8, v4);
}

uint64_t Fence.Schedule.Matcher.previousEndDate(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_1B80C8F2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B80C8E2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v21 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v21 - v17;
  (*(v4 + 104))(v7, *MEMORY[0x1E69699A0], v3);
  Fence.Schedule.Matcher.nextStartDate(from:direction:)(a1, v7, v18);
  (*(v4 + 8))(v7, v3);
  sub_1B8084878(v18, v16);
  if (sub_1B80C8D9C())
  {
    (*(v9 + 8))(v18, v8);
    return (*(v9 + 32))(v22, v16, v8);
  }

  else
  {
    sub_1B80C8E0C();
    Fence.Schedule.Matcher.previousEndDate(from:)(v13);
    v20 = *(v9 + 8);
    v20(v13, v8);
    v20(v16, v8);
    return (v20)(v18, v8);
  }
}

uint64_t Fence.DaysOfWeek.gregorianCalendarWeekdays.getter()
{
  v1 = *v0;
  v2 = sub_1B8083850(&unk_1F2FFA030);
  v3 = v2;
  v15 = MEMORY[0x1E69E7CD0];
  v4 = v2 + 64;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v10 << 6);
    if ((*(*(v3 + 48) + v13) & v1) != 0)
    {
      result = sub_1B80873C0(&v14, *(*(v3 + 56) + 8 * v13));
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8085D00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[2];
  return sub_1B8085D38(*a1, v3, v4, a2);
}

uint64_t sub_1B8085D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v88 = a3;
  v89 = a4;
  v104 = a2;
  v91 = a1;
  v4 = sub_1B80C8F3C();
  v86 = *(v4 - 8);
  v87 = v4;
  v5 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v84 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1B80C8F0C();
  v83 = *(v85 - 8);
  v7 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v82 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1B80C8E2C();
  v98 = *(v100 - 8);
  v9 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v80 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D80, &unk_1B80DC400);
  v11 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v81 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v97 = &v80 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v103 = &v80 - v19;
  v20 = type metadata accessor for Fence.Schedule(0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v102 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FC0, &qword_1B80D9A00);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v95 = &v80 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FC8, &unk_1B80D9FD0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v80 - v29;
  v31 = sub_1B80C8C7C();
  v93 = *(v31 - 8);
  v94 = v31;
  v32 = *(v93 + 64);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v101 = &v80 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v80 - v35;
  v37 = *(type metadata accessor for Fence.Schedule.Matcher() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FD0, &qword_1B80D9A08);
  v38 = sub_1B80C8F8C();
  v39 = *(v38 - 8);
  v40 = *(v39 + 72);
  v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1B80D20F0;
  v43 = v42 + v41;
  v44 = *(v39 + 104);
  v44(v43, *MEMORY[0x1E6969A68], v38);
  v44(v43 + v40, *MEMORY[0x1E6969A10], v38);
  sub_1B8088CE4(v42);
  swift_setDeallocating();
  v45 = v96;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v99 = v37;
  v46 = v95;
  sub_1B80C8F1C();

  v47 = sub_1B80C8F9C();
  (*(*(v47 - 8) + 56))(v30, 1, 1, v47);
  v48 = v102;
  sub_1B8083E1C(v45, v102);
  v49 = *(v21 + 36);
  v50 = sub_1B80C8FCC();
  v51 = *(v50 - 8);
  (*(v51 + 32))(v46, v48 + v49, v50);
  (*(v51 + 56))(v46, 0, 1, v50);
  v102 = v36;
  result = sub_1B80C8C4C();
  if ((*v45 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v45[1] & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_1B80C8C2C();
  sub_1B80C8C6C();
  v53 = v103;
  sub_1B80C8F4C();
  v55 = v97;
  v54 = v98;
  v56 = v100;
  v95 = *(v98 + 16);
  (v95)(v97, v104, v100);
  v57 = *(v54 + 56);
  v57(v55, 0, 1, v56);
  v58 = *(v90 + 48);
  v59 = v92;
  sub_1B7FD6818(v53, v92);
  sub_1B7FD6818(v55, v59 + v58);
  v60 = *(v54 + 48);
  if (v60(v59, 1, v56) != 1)
  {
    v63 = v81;
    sub_1B7FD6818(v59, v81);
    if (v60(v59 + v58, 1, v56) != 1)
    {
      v73 = v98;
      v74 = v59 + v58;
      v75 = v80;
      (*(v98 + 32))(v80, v74, v56);
      sub_1B8089004(&qword_1EBA65D90, MEMORY[0x1E6969530]);
      v76 = sub_1B80C908C();
      v77 = *(v73 + 8);
      v77(v75, v100);
      sub_1B7FB86D4(v97, &unk_1EBA65FD0, &unk_1B80D1920);
      v77(v63, v100);
      v56 = v100;
      sub_1B7FB86D4(v59, &unk_1EBA65FD0, &unk_1B80D1920);
      v62 = v89;
      if (v76)
      {
        goto LABEL_11;
      }

LABEL_9:
      v64 = v101;
      sub_1B80C8C5C();
      sub_1B80C8C3C();
      v65 = v83;
      v66 = v82;
      v67 = v85;
      (*(v83 + 104))(v82, *MEMORY[0x1E69698D0], v85);
      v69 = v86;
      v68 = v87;
      v70 = v84;
      (*(v86 + 104))(v84, *MEMORY[0x1E69699C8], v87);
      sub_1B80C8F6C();
      (*(v69 + 8))(v70, v68);
      (*(v65 + 8))(v66, v67);
      sub_1B7FB86D4(v103, &unk_1EBA65FD0, &unk_1B80D1920);
      v71 = v94;
      v72 = *(v93 + 8);
      v72(v64, v94);
      return (v72)(v102, v71);
    }

    sub_1B7FB86D4(v97, &unk_1EBA65FD0, &unk_1B80D1920);
    (*(v98 + 8))(v63, v56);
LABEL_8:
    sub_1B7FB86D4(v59, &qword_1EBA65D80, &unk_1B80DC400);
    goto LABEL_9;
  }

  sub_1B7FB86D4(v55, &unk_1EBA65FD0, &unk_1B80D1920);
  v61 = v60(v59 + v58, 1, v56);
  v62 = v89;
  if (v61 != 1)
  {
    goto LABEL_8;
  }

  sub_1B7FB86D4(v59, &unk_1EBA65FD0, &unk_1B80D1920);
LABEL_11:
  sub_1B7FB86D4(v103, &unk_1EBA65FD0, &unk_1B80D1920);
  v78 = v94;
  v79 = *(v93 + 8);
  v79(v101, v94);
  v79(v102, v78);
  (v95)(v62, v104, v56);
  return (v57)(v62, 0, 1, v56);
}

uint64_t sub_1B8086880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B80C8E2C();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_1B8089004(&qword_1EBA65F30, MEMORY[0x1E6969530]);
        v21 = sub_1B80C907C();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_1B8086B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B80C8E2C();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_1B8089004(&qword_1EBA65F30, MEMORY[0x1E6969530]);
        v21 = sub_1B80C907C();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

uint64_t static Fence.Schedule.Matcher.matchingPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69698D0];
  v3 = sub_1B80C8F0C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1B8086E54()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1EBA7AC98);
  __swift_project_value_buffer(v0, qword_1EBA7AC98);
  return sub_1B80C8FFC();
}

char *sub_1B8086EC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FB8, &qword_1B80D99F8);
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

uint64_t sub_1B8086FBC(_OWORD *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1B80C993C();
  v6 = *a2;
  v7 = *(a2 + 8);
  sub_1B80C90FC();
  sub_1B80C911C();

  v8 = sub_1B80C997C();
  v9 = -1 << *(v4 + 32);
  v10 = v8 & ~v9;
  if ((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v4 + 48) + 176 * v10);
      v14 = v12[1];
      v13 = v12[2];
      v52[0] = *v12;
      v52[1] = v14;
      v52[2] = v13;
      v15 = v12[3];
      v16 = v12[4];
      v17 = v12[6];
      v52[5] = v12[5];
      v52[6] = v17;
      v52[3] = v15;
      v52[4] = v16;
      v18 = v12[7];
      v19 = v12[8];
      v20 = v12[10];
      v52[9] = v12[9];
      v52[10] = v20;
      v52[7] = v18;
      v52[8] = v19;
      v21 = sub_1B80C90FC();
      v23 = v22;
      if (v21 == sub_1B80C90FC() && v23 == v24)
      {
        break;
      }

      v25 = sub_1B80C981C();
      sub_1B7FC8DA4(v52, v51);

      sub_1B7FCAD28(v52);
      if (v25)
      {
        goto LABEL_9;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    sub_1B7FC8DA4(v52, v51);

    sub_1B7FCAD28(v52);
LABEL_9:
    sub_1B7FCAD28(a2);
    v34 = (*(v4 + 48) + 176 * v10);
    v36 = v34[1];
    v35 = v34[2];
    v51[0] = *v34;
    v51[1] = v36;
    v51[2] = v35;
    v37 = v34[3];
    v38 = v34[4];
    v39 = v34[6];
    v51[5] = v34[5];
    v51[6] = v39;
    v51[3] = v37;
    v51[4] = v38;
    v40 = v34[7];
    v41 = v34[8];
    v42 = v34[10];
    v51[9] = v34[9];
    v51[10] = v42;
    v51[7] = v40;
    v51[8] = v41;
    v43 = v34[9];
    a1[8] = v34[8];
    a1[9] = v43;
    a1[10] = v34[10];
    v44 = v34[5];
    a1[4] = v34[4];
    a1[5] = v44;
    v45 = v34[7];
    a1[6] = v34[6];
    a1[7] = v45;
    v46 = v34[1];
    *a1 = *v34;
    a1[1] = v46;
    v47 = v34[3];
    a1[2] = v34[2];
    a1[3] = v47;
    sub_1B7FC8DA4(v51, v50);
    return 0;
  }

  else
  {
LABEL_7:
    v26 = *v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v51[0] = *v48;
    sub_1B7FC8DA4(a2, v52);
    sub_1B8088724(a2, v10, isUniquelyReferenced_nonNull_native);
    *v48 = *&v51[0];
    v28 = *(a2 + 144);
    a1[8] = *(a2 + 128);
    a1[9] = v28;
    a1[10] = *(a2 + 160);
    v29 = *(a2 + 80);
    a1[4] = *(a2 + 64);
    a1[5] = v29;
    v30 = *(a2 + 112);
    a1[6] = *(a2 + 96);
    a1[7] = v30;
    v31 = *(a2 + 16);
    *a1 = *a2;
    a1[1] = v31;
    v32 = *(a2 + 48);
    result = 1;
    a1[2] = *(a2 + 32);
    a1[3] = v32;
  }

  return result;
}

uint64_t sub_1B8087270(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1B80C993C();
  sub_1B80C911C();
  v9 = sub_1B80C997C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1B80C981C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1B8088998(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1B80873C0(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_1B80C992C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1B8088B18(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void *sub_1B80874A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FA8, &qword_1B80D99E8);
  v2 = *v0;
  v3 = sub_1B80C94EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_1B7FC8DA4(v27, &v26))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 176 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v18 = v17[3];
      v19 = v17[4];
      v20 = v17[6];
      v27[5] = v17[5];
      v27[6] = v20;
      v27[3] = v18;
      v27[4] = v19;
      v21 = v17[7];
      v22 = v17[8];
      v23 = v17[10];
      v27[9] = v17[9];
      v27[10] = v23;
      v27[7] = v21;
      v27[8] = v22;
      v25 = v17[1];
      v24 = v17[2];
      v27[0] = *v17;
      v27[1] = v25;
      v27[2] = v24;
      memmove((*(v4 + 48) + v16), v17, 0xB0uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B8087648()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FF0, &qword_1B80D9A18);
  v2 = *v0;
  v3 = sub_1B80C94EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B80877A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FB0, &qword_1B80D99F0);
  v2 = *v0;
  v3 = sub_1B80C94EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1B80878E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FA8, &qword_1B80D99E8);
  result = sub_1B80C94FC();
  v6 = result;
  if (*(v3 + 16))
  {
    v43 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v23 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v26 = (*(v3 + 48) + 176 * (v23 | (v7 << 6)));
      v28 = *v26;
      v27 = v26[1];
      v47 = v26[2];
      v29 = v26[3];
      v30 = v26[4];
      v31 = v26[6];
      v50 = v26[5];
      v51 = v31;
      v48 = v29;
      v49 = v30;
      v32 = v26[7];
      v33 = v26[8];
      v34 = v26[10];
      v54 = v26[9];
      v55 = v34;
      v52 = v32;
      v53 = v33;
      v45 = v28;
      v46 = v27;
      v35 = *(v6 + 40);
      sub_1B80C993C();
      sub_1B80C90FC();
      sub_1B7FC8DA4(&v45, v44);
      sub_1B80C911C();

      result = sub_1B80C997C();
      v36 = -1 << *(v6 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v12 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v12 + 8 * v38);
          if (v42 != -1)
          {
            v13 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v37) & ~*(v12 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 176 * v13);
      v15 = v47;
      v16 = v45;
      v14[1] = v46;
      v14[2] = v15;
      v17 = v48;
      v18 = v49;
      v19 = v51;
      v14[5] = v50;
      v14[6] = v19;
      v14[3] = v17;
      v14[4] = v18;
      v20 = v52;
      v21 = v53;
      v22 = v55;
      v14[9] = v54;
      v14[10] = v22;
      v14[7] = v20;
      v14[8] = v21;
      *v14 = v16;
      ++*(v6 + 16);
    }

    v24 = v7;
    while (1)
    {
      v7 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v43;
        goto LABEL_28;
      }

      v25 = *(v3 + 56 + 8 * v7);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v10 = (v25 - 1) & v25;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B8087B9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FF0, &qword_1B80D9A18);
  result = sub_1B80C94FC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1B80C993C();

      sub_1B80C911C();
      result = sub_1B80C997C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B8087DD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FB0, &qword_1B80D99F0);
  result = sub_1B80C94FC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_1B80C992C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B8087FC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FA8, &qword_1B80D99E8);
  result = sub_1B80C94FC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 176 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v39 = *(v19 + 112);
      v40 = *(v19 + 128);
      v41 = *(v19 + 144);
      v42 = *(v19 + 160);
      v35 = *(v19 + 48);
      v36 = *(v19 + 64);
      v37 = *(v19 + 80);
      v38 = *(v19 + 96);
      v33 = *(v19 + 16);
      v34 = *(v19 + 32);
      v22 = *(v6 + 40);
      sub_1B80C993C();
      sub_1B80C90FC();
      sub_1B80C911C();

      result = sub_1B80C997C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 176 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 112) = v39;
      *(v15 + 128) = v40;
      *(v15 + 144) = v41;
      *(v15 + 160) = v42;
      *(v15 + 48) = v35;
      *(v15 + 64) = v36;
      *(v15 + 80) = v37;
      *(v15 + 96) = v38;
      *(v15 + 16) = v33;
      *(v15 + 32) = v34;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v8, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B80882A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FF0, &qword_1B80D9A18);
  result = sub_1B80C94FC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1B80C993C();
      sub_1B80C911C();
      result = sub_1B80C997C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B8088500(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FB0, &qword_1B80D99F0);
  result = sub_1B80C94FC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_1B80C992C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B8088724(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a3)
  {
    sub_1B8087FC4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1B80874A0();
      goto LABEL_14;
    }

    sub_1B80878E4(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1B80C993C();
  v10 = *v5;
  v11 = *(v5 + 8);
  sub_1B80C90FC();
  sub_1B80C911C();

  result = sub_1B80C997C();
  v12 = -1 << *(v8 + 32);
  a2 = result & ~v12;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v8 + 48) + 176 * a2);
      v16 = v14[1];
      v15 = v14[2];
      v40[0] = *v14;
      v40[1] = v16;
      v40[2] = v15;
      v17 = v14[3];
      v18 = v14[4];
      v19 = v14[6];
      v40[5] = v14[5];
      v40[6] = v19;
      v40[3] = v17;
      v40[4] = v18;
      v20 = v14[7];
      v21 = v14[8];
      v22 = v14[10];
      v40[9] = v14[9];
      v40[10] = v22;
      v40[7] = v20;
      v40[8] = v21;
      v23 = sub_1B80C90FC();
      v25 = v24;
      if (v23 == sub_1B80C90FC() && v25 == v26)
      {
        goto LABEL_17;
      }

      v27 = sub_1B80C981C();
      sub_1B7FC8DA4(v40, v39);

      result = sub_1B7FCAD28(v40);
      if (v27)
      {
        goto LABEL_18;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_14:
  v28 = *v38;
  *(*v38 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v29 = (*(v28 + 48) + 176 * a2);
  v30 = *(v5 + 80);
  v29[4] = *(v5 + 64);
  v29[5] = v30;
  v31 = *(v5 + 160);
  v29[9] = *(v5 + 144);
  v29[10] = v31;
  v32 = *(v5 + 128);
  v29[7] = *(v5 + 112);
  v29[8] = v32;
  v29[6] = *(v5 + 96);
  v33 = *(v5 + 16);
  *v29 = *v5;
  v29[1] = v33;
  v34 = *(v5 + 48);
  v29[2] = *(v5 + 32);
  v29[3] = v34;
  v35 = *(v28 + 16);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (!v36)
  {
    *(v28 + 16) = v37;
    return result;
  }

  __break(1u);
LABEL_17:
  sub_1B7FC8DA4(v40, v39);

  sub_1B7FCAD28(v40);
LABEL_18:
  result = sub_1B80C985C();
  __break(1u);
  return result;
}

uint64_t sub_1B8088998(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1B80882A0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1B8087648();
      goto LABEL_16;
    }

    sub_1B8087B9C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1B80C993C();
  sub_1B80C911C();
  result = sub_1B80C997C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1B80C981C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1B80C985C();
  __break(1u);
  return result;
}

uint64_t sub_1B8088B18(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B8088500(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1B80877A4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1B8087DD4(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_1B80C992C();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B80C985C();
  __break(1u);
  return result;
}

uint64_t sub_1B8088C60()
{
  result = type metadata accessor for Fence.Schedule(319);
  if (v1 <= 0x3F)
  {
    result = sub_1B80C8F9C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B8088CE4(uint64_t a1)
{
  v2 = sub_1B80C8F8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FD8, &qword_1B80D9A10);
    v10 = sub_1B80C950C();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1B8089004(&qword_1EBA66FE0, MEMORY[0x1E6969AD0]);
      v18 = sub_1B80C904C();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1B8089004(&qword_1EBA66FE8, MEMORY[0x1E6969AD0]);
          v25 = sub_1B80C908C();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1B8089004(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Friend.origin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Friend();
  *a1 = *(v1 + *(result + 44));
  return result;
}

unint64_t sub_1B80890F8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x614872656E776F5FLL;
    v6 = 0x6E696769726F5FLL;
    if (a1 != 10)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x797269707865;
    v8 = 0x6E696769726FLL;
    if (a1 != 7)
    {
      v8 = 0x646574616572635FLL;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
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
    v1 = 0x656C646E6168;
    v2 = 0xD000000000000017;
    if (a1 != 4)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 == 3)
    {
      v2 = 0xD000000000000023;
    }

    v3 = 1701869940;
    if (a1 != 1)
    {
      v3 = 0xD000000000000016;
    }

    if (a1)
    {
      v1 = v3;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B8089284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B808A480(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B80892B8(uint64_t a1)
{
  v2 = sub_1B808A1D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80892F4(uint64_t a1)
{
  v2 = sub_1B808A1D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Friend.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FF8, &qword_1B80D9A20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v48 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B808A1D8();
  sub_1B80C99DC();
  v10 = v2[6];
  v108 = v2[7];
  v11 = v2[7];
  v109 = v2[8];
  v12 = v2[8];
  v110 = v2[9];
  v13 = v2[9];
  v111 = v2[10];
  v14 = v2[4];
  v15 = v2[2];
  v104 = v2[3];
  v105 = v14;
  v16 = v2[4];
  v17 = v2[6];
  v106 = v2[5];
  v107 = v17;
  v18 = *v2;
  v19 = v2[2];
  v102 = v2[1];
  v103 = v19;
  v20 = *v2;
  v98 = v12;
  v99 = v13;
  v100 = v2[10];
  v101 = v20;
  v94 = v16;
  v95 = v106;
  v96 = v10;
  v97 = v11;
  v90 = v18;
  v91 = v102;
  v92 = v15;
  v93 = v104;
  v89 = 0;
  sub_1B7FC8DA4(&v101, &v78);
  sub_1B7FDC224();
  v21 = v4;
  v22 = v112;
  sub_1B80C97DC();
  if (v22)
  {
    v86 = v98;
    v87 = v99;
    v88 = v100;
    v82 = v94;
    v83 = v95;
    v84 = v96;
    v85 = v97;
    v78 = v90;
    v79 = v91;
    v80 = v92;
    v81 = v93;
    sub_1B7FCAD28(&v78);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v112 = v5;
    v86 = v98;
    v87 = v99;
    v88 = v100;
    v82 = v94;
    v83 = v95;
    v84 = v96;
    v85 = v97;
    v78 = v90;
    v79 = v91;
    v80 = v92;
    v81 = v93;
    sub_1B7FCAD28(&v78);
    LOBYTE(v66) = *(v2 + 176);
    LOBYTE(v55) = 1;
    sub_1B8010F34();
    sub_1B80C97DC();
    v24 = *(v2 + 177);
    LOBYTE(v66) = 2;
    sub_1B80C979C();
    v25 = *(v2 + 178);
    LOBYTE(v66) = 3;
    sub_1B80C979C();
    v26 = *(v2 + 179);
    LOBYTE(v66) = 4;
    sub_1B80C979C();
    v27 = *(v2 + 180);
    LOBYTE(v66) = 5;
    sub_1B80C979C();
    v28 = type metadata accessor for Friend();
    v29 = *(v28 + 40);
    v49 = v28;
    v50 = v29;
    LOBYTE(v66) = 6;
    v30 = sub_1B80C8E2C();
    v31 = sub_1B7FBADA8(&qword_1ED8DC390, MEMORY[0x1E6969530]);
    v50 = v21;
    sub_1B80C977C();
    v48[1] = v31;
    v48[2] = v30;
    LOBYTE(v66) = *(v2 + v49[11]);
    LOBYTE(v55) = 7;
    v32 = sub_1B808A22C();
    sub_1B80C97DC();
    v48[0] = v32;
    v33 = v49;
    v34 = v49[12];
    v77 = 8;
    sub_1B80C977C();
    v35 = (v2 + v33[13]);
    v36 = v35[8];
    v37 = v35[6];
    v73 = v35[7];
    v74 = v36;
    v38 = v35[8];
    v39 = v35[10];
    v75 = v35[9];
    v76 = v39;
    v40 = v35[4];
    v41 = v35[2];
    v69 = v35[3];
    v70 = v40;
    v42 = v35[4];
    v43 = v35[6];
    v71 = v35[5];
    v72 = v43;
    v44 = *v35;
    v45 = v35[2];
    v67 = v35[1];
    v68 = v45;
    v46 = *v35;
    v63 = v38;
    v64 = v75;
    v65 = v35[10];
    v66 = v46;
    v59 = v42;
    v60 = v71;
    v61 = v37;
    v62 = v73;
    v55 = v44;
    v56 = v67;
    v57 = v41;
    v58 = v69;
    v54 = 9;
    sub_1B7FB8448(&v66, v53, &qword_1EBA65D78, &qword_1B80D2640);
    sub_1B80C977C();
    v53[8] = v63;
    v53[9] = v64;
    v53[10] = v65;
    v53[4] = v59;
    v53[5] = v60;
    v53[6] = v61;
    v53[7] = v62;
    v53[0] = v55;
    v53[1] = v56;
    v53[2] = v57;
    v53[3] = v58;
    sub_1B7FB86D4(v53, &qword_1EBA65D78, &qword_1B80D2640);
    v52 = *(v2 + v33[14]);
    v51 = 10;
    sub_1B80C97DC();
    v47 = *(v2 + v33[15]);
    v52 = 11;
    sub_1B80C976C();
    return (*(v112 + 8))(0, v21);
  }
}

uint64_t Friend.hashValue.getter()
{
  sub_1B80C993C();
  Friend.hash(into:)();
  return sub_1B80C997C();
}

uint64_t Friend.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67008, &qword_1B80D9A28);
  v10 = *(v9 - 8);
  v48 = v9;
  v49 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v42 - v12;
  v14 = type metadata accessor for Friend();
  v15 = *(*(v14 - 1) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 44);
  v18[v19] = 2;
  v21 = a1[3];
  v20 = a1[4];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1B808A1D8();
  v47 = v13;
  v22 = v50;
  sub_1B80C99BC();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_0(v77);
  }

  v43 = v19;
  v44 = v8;
  v50 = v18;
  v65 = 0;
  v23 = sub_1B7FDC440();
  sub_1B80C972C();
  v24 = v75;
  v25 = v50;
  *(v50 + 8) = v74;
  *(v25 + 9) = v24;
  *(v25 + 10) = v76;
  v26 = v71;
  *(v25 + 4) = v70;
  *(v25 + 5) = v26;
  v27 = v73;
  *(v25 + 6) = v72;
  *(v25 + 7) = v27;
  v28 = v67;
  *v25 = v66;
  *(v25 + 1) = v28;
  v29 = v69;
  *(v25 + 2) = v68;
  *(v25 + 3) = v29;
  v64 = 1;
  sub_1B808A280();
  sub_1B80C972C();
  v25[176] = v53;
  LOBYTE(v53) = 2;
  v25[177] = sub_1B80C96EC() & 1;
  LOBYTE(v53) = 3;
  v25[178] = sub_1B80C96EC() & 1;
  LOBYTE(v53) = 4;
  v25[179] = sub_1B80C96EC() & 1;
  LOBYTE(v53) = 5;
  v30 = sub_1B80C96EC();
  v42[0] = v23;
  v25[180] = v30 & 1;
  sub_1B80C8E2C();
  LOBYTE(v53) = 6;
  v42[1] = sub_1B7FBADA8(&qword_1ED8DBBD8, MEMORY[0x1E6969530]);
  sub_1B80C96CC();
  sub_1B805DC34(v44, &v25[v14[10]]);
  v64 = 7;
  v31 = sub_1B7FCFA58();
  sub_1B80C972C();
  v44 = v31;
  v25[v43] = v53;
  LOBYTE(v53) = 8;
  v32 = v46;
  sub_1B80C96CC();
  sub_1B805DC34(v32, &v25[v14[12]]);
  v64 = 9;
  sub_1B80C96CC();
  v33 = &v50[v14[13]];
  v34 = v62;
  *(v33 + 8) = v61;
  *(v33 + 9) = v34;
  *(v33 + 10) = v63;
  v35 = v58;
  *(v33 + 4) = v57;
  *(v33 + 5) = v35;
  v36 = v60;
  *(v33 + 6) = v59;
  *(v33 + 7) = v36;
  v37 = v54;
  *v33 = v53;
  *(v33 + 1) = v37;
  v38 = v56;
  *(v33 + 2) = v55;
  *(v33 + 3) = v38;
  v51 = 10;
  sub_1B80C972C();
  v50[v14[14]] = v52;
  v52 = 11;
  v39 = sub_1B80C96BC();
  (*(v49 + 8))(v47, v48);
  v40 = v50;
  v50[v14[15]] = v39;
  sub_1B7FE7BD0(v40, v45);
  __swift_destroy_boxed_opaque_existential_0(v77);
  return sub_1B7FE7C34(v40);
}

uint64_t sub_1B808A190()
{
  sub_1B80C993C();
  Friend.hash(into:)();
  return sub_1B80C997C();
}

unint64_t sub_1B808A1D8()
{
  result = qword_1EBA67000;
  if (!qword_1EBA67000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67000);
  }

  return result;
}

unint64_t sub_1B808A22C()
{
  result = qword_1ED8DC470;
  if (!qword_1ED8DC470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC470);
  }

  return result;
}

unint64_t sub_1B808A280()
{
  result = qword_1EBA67010;
  if (!qword_1EBA67010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67010);
  }

  return result;
}

void sub_1B808A31C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1B80C946C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1B808A37C()
{
  result = qword_1EBA67018;
  if (!qword_1EBA67018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67018);
  }

  return result;
}

unint64_t sub_1B808A3D4()
{
  result = qword_1EBA67020;
  if (!qword_1EBA67020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67020);
  }

  return result;
}

unint64_t sub_1B808A42C()
{
  result = qword_1EBA67028;
  if (!qword_1EBA67028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67028);
  }

  return result;
}

uint64_t sub_1B808A480(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B80CDE20 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001B80CDE40 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B80CDE70 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B80CDE90 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x797269707865 && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E696769726FLL && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x646574616572635FLL && a2 == 0xEA00000000007441 || (sub_1B80C981C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x614872656E776F5FLL && a2 == 0xEC000000656C646ELL || (sub_1B80C981C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6E696769726F5FLL && a2 == 0xE700000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B80CDEB0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_1B80C981C();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

void __swiftcall FriendContainer.init(followers:following:futureFollowers:futureFollowing:pendingOffers:)(FindMyLocate::FriendContainer *__return_ptr retstr, Swift::OpaquePointer followers, Swift::OpaquePointer following, Swift::OpaquePointer futureFollowers, Swift::OpaquePointer futureFollowing, Swift::OpaquePointer pendingOffers)
{
  retstr->followers = followers;
  retstr->following = following;
  retstr->futureFollowers = futureFollowers;
  retstr->futureFollowing = futureFollowing;
  retstr->pendingOffers = pendingOffers;
}

uint64_t FriendContainer.all.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v6 = *v0;

  sub_1B808C5C8(v1);
  sub_1B808C5C8(v2);
  sub_1B808C5C8(v3);
  sub_1B808C5C8(v4);
  return v6;
}

uint64_t FriendContainer.allHandles.getter()
{
  v1 = type metadata accessor for Friend();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 4);
  v7 = v0[1];
  v50 = *v0;
  v51 = v7;
  v52 = v6;
  v8 = FriendContainer.all.getter();
  v9 = *(v8 + 16);
  if (v9)
  {
    v49 = MEMORY[0x1E69E7CC0];
    sub_1B8092BA8(0, v9, 0);
    v10 = v49;
    v11 = *(v2 + 80);
    v36 = v8;
    v12 = v8 + ((v11 + 32) & ~v11);
    v13 = *(v2 + 72);
    for (i = v9 - 1; ; --i)
    {
      sub_1B7FE7BD0(v12, v5);
      v15 = v5[9];
      v46 = v5[8];
      v47 = v15;
      v48 = v5[10];
      v16 = v5[5];
      v42 = v5[4];
      v43 = v16;
      v17 = v5[7];
      v44 = v5[6];
      v45 = v17;
      v18 = v5[1];
      v38 = *v5;
      v39 = v18;
      v19 = v5[3];
      v40 = v5[2];
      v41 = v19;
      sub_1B7FC8DA4(&v38, &v37);
      sub_1B7FE7C34(v5);
      v49 = v10;
      v21 = *(v10 + 16);
      v20 = *(v10 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B8092BA8((v20 > 1), v21 + 1, 1);
        v10 = v49;
      }

      *(v10 + 16) = v21 + 1;
      v22 = (v10 + 176 * v21);
      v23 = v38;
      v24 = v40;
      v22[3] = v39;
      v22[4] = v24;
      v22[2] = v23;
      v25 = v41;
      v26 = v42;
      v27 = v44;
      v22[7] = v43;
      v22[8] = v27;
      v22[5] = v25;
      v22[6] = v26;
      v28 = v45;
      v29 = v46;
      v30 = v48;
      v22[11] = v47;
      v22[12] = v30;
      v22[9] = v28;
      v22[10] = v29;
      if (!i)
      {
        break;
      }

      v12 += v13;
    }
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v31 = sub_1B808D774(v10);

  v32 = *(v31 + 16);
  if (!v32)
  {
    goto LABEL_12;
  }

  v33 = sub_1B808BDCC(*(v31 + 16), 0);
  v34 = sub_1B808D510(&v38, v33 + 32, v32, v31);

  sub_1B80343D8();
  if (v34 != v32)
  {
    __break(1u);
LABEL_12:
    v33 = MEMORY[0x1E69E7CC0];
  }

  *&v38 = v33;
  sub_1B808C6F4(&v38);

  return v38;
}

uint64_t FriendContainer.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_1B80C952C();
  MEMORY[0x1B8CB7A40](0x7265776F6C6C6F66, 0xEB00000000203A73);
  v6 = type metadata accessor for Friend();
  v7 = MEMORY[0x1B8CB7B30](v2, v6);
  MEMORY[0x1B8CB7A40](v7);

  MEMORY[0x1B8CB7A40](0x69776F6C6C6F660ALL, 0xEC000000203A676ELL);
  v8 = MEMORY[0x1B8CB7B30](v1, v6);
  MEMORY[0x1B8CB7A40](v8);

  MEMORY[0x1B8CB7A40](0xD000000000000012, 0x80000001B80CDED0);
  v9 = MEMORY[0x1B8CB7B30](v4, v6);
  MEMORY[0x1B8CB7A40](v9);

  MEMORY[0x1B8CB7A40](0xD000000000000012, 0x80000001B80CDEF0);
  v10 = MEMORY[0x1B8CB7B30](v3, v6);
  MEMORY[0x1B8CB7A40](v10);

  MEMORY[0x1B8CB7A40](0xD000000000000010, 0x80000001B80CDF10);
  v11 = MEMORY[0x1B8CB7B30](v5, v6);
  MEMORY[0x1B8CB7A40](v11);

  return 0;
}

uint64_t sub_1B808ADA8(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_1B80C981C() & 1) == 0)
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

uint64_t sub_1B808AE38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Friend();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v41 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    v41 = 0x80000001B80CBD30;
    v42 = v16;
    for (i = v12 - 1; ; --i)
    {
      sub_1B7FE7BD0(v14, v11);
      sub_1B7FE7BD0(v15, v8);
      v18 = *(v11 + 9);
      v44[8] = *(v11 + 8);
      v44[9] = v18;
      v44[10] = *(v11 + 10);
      v19 = *(v11 + 5);
      v44[4] = *(v11 + 4);
      v44[5] = v19;
      v20 = *(v11 + 7);
      v44[6] = *(v11 + 6);
      v44[7] = v20;
      v21 = *(v11 + 1);
      v44[0] = *v11;
      v44[1] = v21;
      v22 = *(v11 + 3);
      v44[2] = *(v11 + 2);
      v44[3] = v22;
      v23 = *(v8 + 9);
      v45[8] = *(v8 + 8);
      v45[9] = v23;
      v45[10] = *(v8 + 10);
      v24 = *(v8 + 5);
      v45[4] = *(v8 + 4);
      v45[5] = v24;
      v25 = *(v8 + 7);
      v45[6] = *(v8 + 6);
      v45[7] = v25;
      v26 = *(v8 + 1);
      v45[0] = *v8;
      v45[1] = v26;
      v27 = *(v8 + 3);
      v45[2] = *(v8 + 2);
      v45[3] = v27;
      v28 = sub_1B80C90FC();
      v30 = v29;
      if (v28 == sub_1B80C90FC() && v30 == v31)
      {
        sub_1B7FC8DA4(v44, v43);
        sub_1B7FC8DA4(v45, v43);

        sub_1B7FCAD28(v45);
        sub_1B7FCAD28(v44);
      }

      else
      {
        v32 = sub_1B80C981C();
        sub_1B7FC8DA4(v44, v43);
        sub_1B7FC8DA4(v45, v43);

        sub_1B7FCAD28(v45);
        sub_1B7FCAD28(v44);
        if ((v32 & 1) == 0)
        {
          sub_1B7FE7C34(v8);
          sub_1B7FE7C34(v11);
          return 0;
        }
      }

      v33 = v11[176];
      if (v33 <= 1)
      {
        v34 = 0x65776F6C6C6F662ELL;
        v35 = 0xE900000000000072;
        if (v11[176])
        {
          v34 = 0x69776F6C6C6F662ELL;
          v35 = 0xEA0000000000676ELL;
        }
      }

      else if (v33 == 2)
      {
        v34 = 0x466572757475662ELL;
        v35 = 0xEF7265776F6C6C6FLL;
      }

      else if (v33 == 3)
      {
        v34 = 0xD000000000000010;
        v35 = v41;
      }

      else
      {
        v34 = 0x676E69646E65702ELL;
        v35 = 0xED0000726566664FLL;
      }

      v36 = v8[176];
      if (v36 <= 1)
      {
        v38 = 0x65776F6C6C6F662ELL;
        v37 = 0xE900000000000072;
        if (v8[176])
        {
          v37 = 0xEA0000000000676ELL;
          if (v34 != 0x69776F6C6C6F662ELL)
          {
            goto LABEL_30;
          }

          goto LABEL_27;
        }
      }

      else
      {
        if (v36 != 2)
        {
          if (v36 == 3)
          {
            v37 = v41;
            if (v34 != 0xD000000000000010)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v37 = 0xED0000726566664FLL;
            if (v34 != 0x676E69646E65702ELL)
            {
              goto LABEL_30;
            }
          }

          goto LABEL_27;
        }

        v38 = 0x466572757475662ELL;
        v37 = 0xEF7265776F6C6C6FLL;
      }

      if (v34 != v38)
      {
        goto LABEL_30;
      }

LABEL_27:
      if (v35 == v37)
      {

        sub_1B7FE7C34(v8);
        sub_1B7FE7C34(v11);
        goto LABEL_31;
      }

LABEL_30:
      v39 = sub_1B80C981C();

      sub_1B7FE7C34(v8);
      sub_1B7FE7C34(v11);
      if ((v39 & 1) == 0)
      {
        return 0;
      }

LABEL_31:
      if (!i)
      {
        return 1;
      }

      v15 += v42;
      v14 += v42;
    }
  }

  return 1;
}

uint64_t sub_1B808B2A8()
{
  v1 = *v0;
  v2 = 0x7265776F6C6C6F66;
  v3 = 0x6F46657275747566;
  v4 = 0x6F46657275747566;
  if (v1 != 3)
  {
    v4 = 0x4F676E69646E6570;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E69776F6C6C6F66;
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

uint64_t sub_1B808B36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B808DC3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B808B3A0(uint64_t a1)
{
  v2 = sub_1B808D860();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B808B3DC(uint64_t a1)
{
  v2 = sub_1B808D860();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FriendContainer.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67030, &qword_1B80D9C60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v18 = v1[2];
  v19 = v9;
  v16 = v1[4];
  v17 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B808D860();

  sub_1B80C99DC();
  v21 = v10;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F80, &qword_1B80D2708);
  sub_1B808D8B4(&qword_1EBA67040, &qword_1EBA67048);
  sub_1B80C97DC();
  if (v2)
  {
  }

  else
  {
    v13 = v18;

    v21 = v19;
    v20 = 1;
    sub_1B80C97DC();
    v21 = v13;
    v20 = 2;
    sub_1B80C97DC();
    v21 = v17;
    v20 = 3;
    sub_1B80C97DC();
    v21 = v16;
    v20 = 4;
    sub_1B80C97DC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t FriendContainer.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  sub_1B808D31C(a1, v3);
  sub_1B808D31C(a1, v4);
  sub_1B808D31C(a1, v5);
  sub_1B808D31C(a1, v6);

  return sub_1B808D31C(a1, v7);
}

uint64_t FriendContainer.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1B80C993C();
  sub_1B808D31C(v7, v1);
  sub_1B808D31C(v7, v2);
  sub_1B808D31C(v7, v3);
  sub_1B808D31C(v7, v4);
  sub_1B808D31C(v7, v5);
  return sub_1B80C997C();
}

uint64_t FriendContainer.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67050, &qword_1B80D9C68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B808D860();
  sub_1B80C99BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F80, &qword_1B80D2708);
  v20 = 0;
  sub_1B808D8B4(&qword_1ED8DCD88, qword_1ED8DD290);
  sub_1B80C972C();
  v19 = v21;
  v20 = 1;
  sub_1B80C972C();
  v17 = 0;
  v18 = v21;
  v20 = 2;
  sub_1B80C972C();
  v16 = v21;
  v20 = 3;
  sub_1B80C972C();
  v15 = v21;
  v20 = 4;
  sub_1B80C972C();
  (*(v6 + 8))(v9, v5);
  v12 = v21;
  v13 = v18;
  *a2 = v19;
  a2[1] = v13;
  v14 = v15;
  a2[2] = v16;
  a2[3] = v14;
  a2[4] = v12;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1B808BC2C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1B80C993C();
  sub_1B808D31C(v7, v1);
  sub_1B808D31C(v7, v2);
  sub_1B808D31C(v7, v3);
  sub_1B808D31C(v7, v4);
  sub_1B808D31C(v7, v5);
  return sub_1B80C997C();
}

uint64_t sub_1B808BCBC(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  sub_1B808D31C(a1, v3);
  sub_1B808D31C(a1, v4);
  sub_1B808D31C(a1, v5);
  sub_1B808D31C(a1, v6);

  return sub_1B808D31C(a1, v7);
}

uint64_t sub_1B808BD38()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1B80C993C();
  sub_1B808D31C(v7, v1);
  sub_1B808D31C(v7, v2);
  sub_1B808D31C(v7, v3);
  sub_1B808D31C(v7, v4);
  sub_1B808D31C(v7, v5);
  return sub_1B80C997C();
}

void *sub_1B808BDCC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66100, &qword_1B80DACB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2E8BA2E8BA2E8BA3) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

uint64_t sub_1B808BE64(uint64_t result)
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

  result = sub_1B807D780(result, v11, 1, v3);
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

uint64_t sub_1B808BF58(uint64_t result)
{
  v4 = *(result + 16);
  v5 = *v1;
  v6 = *(*v1 + 2);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = result;
  v9 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v11 = *(v5 + 3) >> 1, v11 < v7))
  {
    if (v6 <= v7)
    {
      v12 = v6 + v4;
    }

    else
    {
      v12 = v6;
    }

    v5 = sub_1B807DAA4(isUniquelyReferenced_nonNull_native, v12, 1, v5);
    v11 = *(v5 + 3) >> 1;
  }

  v13 = *(v5 + 2);
  v14 = v11 - v13;
  result = sub_1B808D510(v106, &v5[176 * v13 + 32], v11 - v13, v8);
  if (result < v4)
  {
    goto LABEL_15;
  }

  if (result)
  {
    v15 = *(v5 + 2);
    v16 = __OFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      __break(1u);
      goto LABEL_19;
    }

    *(v5 + 2) = v17;
  }

  if (result != v14)
  {
LABEL_13:
    result = sub_1B80343D8();
    *v1 = v5;
    return result;
  }

LABEL_16:
  v2 = *(v5 + 2);
  v3 = v106[0];
  v14 = v106[1];
  v4 = v106[2];
  v17 = v107;
  v18 = v108;
  if (v108)
  {
    v19 = v107;
LABEL_26:
    v23 = (v18 - 1) & v18;
    v24 = (*(v3 + 48) + 176 * (__clz(__rbit64(v18)) | (v19 << 6)));
    v26 = v24[1];
    v25 = v24[2];
    v84 = *v24;
    v85 = v26;
    v86 = v25;
    v27 = v24[3];
    v28 = v24[4];
    v29 = v24[5];
    v90 = v24[6];
    v89 = v29;
    v88 = v28;
    v87 = v27;
    v30 = v24[7];
    v31 = v24[8];
    v32 = v24[9];
    v94 = v24[10];
    v93 = v32;
    v92 = v31;
    v91 = v30;
    memmove(&__dst, v24, 0xB0uLL);
    nullsub_1(&__dst);
    sub_1B7FC8DA4(&v84, &v73);
    v22 = v19;
LABEL_27:
    v92 = v103;
    v93 = v104;
    v94 = v105;
    v88 = v99;
    v89 = v100;
    v91 = v102;
    v90 = v101;
    v84 = __dst;
    v85 = v96;
    v87 = v98;
    v86 = v97;
    if (sub_1B7FDAA2C(&v84) != 1)
    {
      v33 = (v4 + 64) >> 6;
      do
      {
        v34 = *(v5 + 3);
        v47 = v34 >> 1;
        if ((v34 >> 1) < v2 + 1)
        {
          v5 = sub_1B807DAA4((v34 > 1), v2 + 1, 1, v5);
          v47 = *(v5 + 3) >> 1;
        }

        v70 = v103;
        v71 = v104;
        v72 = v105;
        v66 = v99;
        v67 = v100;
        v68 = v101;
        v69 = v102;
        __src = __dst;
        v63 = v96;
        v64 = v97;
        v65 = v98;
        v80 = v102;
        v81 = v103;
        v82 = v104;
        v83 = v105;
        v77 = v99;
        v78 = v100;
        v79 = v101;
        v73 = __dst;
        v74 = v96;
        v75 = v97;
        v76 = v98;
        if (sub_1B7FDAA2C(&v73) != 1)
        {
          while (v2 < v47)
          {
            v60[8] = v103;
            v60[9] = v104;
            v60[10] = v105;
            v60[4] = v99;
            v60[5] = v100;
            v60[6] = v101;
            v60[7] = v102;
            v60[0] = __dst;
            v60[1] = v96;
            v60[2] = v97;
            v60[3] = v98;
            v61[8] = v70;
            v61[9] = v71;
            v61[10] = v72;
            v61[4] = v66;
            v61[5] = v67;
            v61[6] = v68;
            v61[7] = v69;
            v61[0] = __src;
            v61[1] = v63;
            v61[2] = v64;
            v61[3] = v65;
            sub_1B7FC8DA4(v61, &v49);
            sub_1B806CB40(v60);
            memmove(&v5[176 * v2 + 32], &__src, 0xB0uLL);
            if (!v23)
            {
              if (v33 <= (v22 + 1))
              {
                v36 = v22 + 1;
              }

              else
              {
                v36 = v33;
              }

              v4 = v36 - 1;
              while (1)
              {
                v35 = v22 + 1;
                if (__OFADD__(v22, 1))
                {
                  break;
                }

                if (v35 >= v33)
                {
                  sub_1B7FF88D4(&v49);
                  v23 = 0;
                  v103 = v57;
                  v104 = v58;
                  v105 = v59;
                  v99 = v53;
                  v100 = v54;
                  v102 = v56;
                  v101 = v55;
                  __dst = v49;
                  v96 = v50;
                  v22 = v4;
                  v98 = v52;
                  v97 = v51;
                  goto LABEL_36;
                }

                v23 = *(v14 + 8 * v35);
                ++v22;
                if (v23)
                {
                  v22 = v35;
                  goto LABEL_48;
                }
              }

              __break(1u);
              goto LABEL_50;
            }

            v35 = v22;
LABEL_48:
            v37 = __clz(__rbit64(v23));
            v23 &= v23 - 1;
            v38 = (*(v3 + 48) + 176 * (v37 | (v35 << 6)));
            v40 = v38[1];
            v39 = v38[2];
            v49 = *v38;
            v50 = v40;
            v51 = v39;
            v41 = v38[3];
            v42 = v38[4];
            v43 = v38[6];
            v54 = v38[5];
            v55 = v43;
            v52 = v41;
            v53 = v42;
            v44 = v38[7];
            v45 = v38[8];
            v46 = v38[10];
            v58 = v38[9];
            v59 = v46;
            v56 = v44;
            v57 = v45;
            memmove(&__dst, v38, 0xB0uLL);
            nullsub_1(&__dst);
            sub_1B7FC8DA4(&v49, v48);
LABEL_36:
            v70 = v103;
            v71 = v104;
            v72 = v105;
            v66 = v99;
            v67 = v100;
            v68 = v101;
            v69 = v102;
            __src = __dst;
            v63 = v96;
            v64 = v97;
            v65 = v98;
            v80 = v102;
            v81 = v103;
            v82 = v104;
            v83 = v105;
            v77 = v99;
            v78 = v100;
            v79 = v101;
            v73 = __dst;
            v74 = v96;
            ++v2;
            v75 = v97;
            v76 = v98;
            if (sub_1B7FDAA2C(&v73) == 1)
            {
              break;
            }
          }
        }

        *(v5 + 2) = v2;
        v92 = v103;
        v93 = v104;
        v94 = v105;
        v88 = v99;
        v89 = v100;
        v91 = v102;
        v90 = v101;
        v84 = __dst;
        v85 = v96;
        v87 = v98;
        v86 = v97;
      }

      while (sub_1B7FDAA2C(&v84) != 1);
    }

    v82 = v104;
    v83 = v105;
    v77 = v99;
    v78 = v100;
    v80 = v102;
    v81 = v103;
    v79 = v101;
    v73 = __dst;
    v74 = v96;
    v75 = v97;
    v76 = v98;
    sub_1B806CB40(&v73);
    goto LABEL_13;
  }

LABEL_19:
  v20 = (v4 + 64) >> 6;
  if (v20 <= v17 + 1)
  {
    v21 = v17 + 1;
  }

  else
  {
    v21 = (v4 + 64) >> 6;
  }

  v22 = v21 - 1;
  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v20)
    {
LABEL_50:
      sub_1B7FF88D4(&__dst);
      v23 = 0;
      goto LABEL_27;
    }

    v18 = *(v14 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B808C5C8(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1B807DA7C(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for Friend();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B808C6F4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B80B5754(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B808C760(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B808C760(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B80C97EC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1B80C924C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B808C9B4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1B808C858(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B808C858(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 176 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *v10;
      v11 = (v10 - 176);
      v12 = *v10 == *(v10 - 176) && *(v10 + 8) == *(v10 - 168);
      if (v12 || (result = sub_1B80C981C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 176;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v27 = *(v10 + 128);
      v28 = *(v10 + 144);
      v29 = *(v10 + 160);
      v23 = *(v10 + 64);
      v24 = *(v10 + 80);
      v25 = *(v10 + 96);
      v26 = *(v10 + 112);
      v19 = *v10;
      v20 = *(v10 + 16);
      v21 = *(v10 + 32);
      v22 = *(v10 + 48);
      v13 = *(v10 - 32);
      *(v10 + 128) = *(v10 - 48);
      *(v10 + 144) = v13;
      *(v10 + 160) = *(v10 - 16);
      v14 = *(v10 - 96);
      *(v10 + 64) = *(v10 - 112);
      *(v10 + 80) = v14;
      v15 = *(v10 - 64);
      *(v10 + 96) = *(v10 - 80);
      *(v10 + 112) = v15;
      v16 = *(v10 - 160);
      *v10 = *v11;
      *(v10 + 16) = v16;
      v17 = *(v10 - 128);
      *(v10 + 32) = *(v10 - 144);
      *(v10 + 48) = v17;
      *(v10 - 48) = v27;
      *(v10 - 32) = v28;
      *(v10 - 16) = v29;
      *(v10 - 112) = v23;
      *(v10 - 96) = v24;
      *(v10 - 80) = v25;
      *(v10 - 64) = v26;
      *v11 = v19;
      *(v10 - 160) = v20;
      v10 -= 176;
      v11[2] = v21;
      v11[3] = v22;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B808C9B4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v99 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_105:
    __dst = *v99;
    if (!*v99)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_1B80B6240(v8);
      v8 = result;
    }

    v89 = v8 + 16;
    v90 = *(v8 + 2);
    if (v90 >= 2)
    {
      while (1)
      {
        v91 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v92 = &v8[16 * v90];
        v5 = *v92;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        sub_1B808D07C((v91 + 176 * *v92), (v91 + 176 * *v93), (v91 + 176 * v94), __dst);
        if (v4)
        {
        }

        if (v94 < v5)
        {
          goto LABEL_129;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_130;
        }

        *v92 = v5;
        *(v92 + 1) = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_131;
        }

        v90 = *v89 - 1;
        result = memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        v5 = a3;
        if (v90 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 176 * v7);
      result = *v11;
      v12 = v11[1];
      v13 = (*v5 + 176 * v9);
      if (result == *v13 && v12 == v13[1])
      {
        v15 = 0;
      }

      else
      {
        result = sub_1B80C981C();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 176 * v9 + 184);
        v17 = v16;
        do
        {
          result = v16[21];
          v19 = v17[22];
          v17 += 22;
          v18 = v19;
          if (result == *(v16 - 1) && v18 == *v16)
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1B80C981C();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v16 = v17;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v21 = 176 * v7 - 176;
          v22 = 176 * v9;
          v23 = v9;
          v24 = v7;
          v96 = v23;
          do
          {
            if (v23 != --v24)
            {
              v26 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v25 = (v26 + v21);
              v118 = *(v26 + v22 + 128);
              v120 = *(v26 + v22 + 144);
              v122 = *(v26 + v22 + 160);
              v110 = *(v26 + v22 + 64);
              v112 = *(v26 + v22 + 80);
              v114 = *(v26 + v22 + 96);
              v116 = *(v26 + v22 + 112);
              v102 = *(v26 + v22);
              v104 = *(v26 + v22 + 16);
              v106 = *(v26 + v22 + 32);
              v108 = *(v26 + v22 + 48);
              result = memmove((v26 + v22), (v26 + v21), 0xB0uLL);
              v25[8] = v118;
              v25[9] = v120;
              v25[10] = v122;
              v25[4] = v110;
              v25[5] = v112;
              v25[6] = v114;
              v25[7] = v116;
              *v25 = v102;
              v25[1] = v104;
              v25[2] = v106;
              v25[3] = v108;
            }

            ++v23;
            v21 -= 176;
            v22 += 176;
          }

          while (v23 < v24);
          v9 = v96;
        }
      }
    }

    v27 = v5[1];
    if (v7 < v27)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        v28 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v28 >= v27)
        {
          v28 = v5[1];
        }

        if (v28 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v28)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B807DDD0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v43 = *(v8 + 2);
    v42 = *(v8 + 3);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_1B807DDD0((v42 > 1), v43 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v44;
    v45 = &v8[16 * v43];
    *(v45 + 4) = v9;
    *(v45 + 5) = v7;
    v46 = *v99;
    if (!*v99)
    {
      goto LABEL_142;
    }

    if (v43)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v8 + 4);
          v49 = *(v8 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_74:
          if (v51)
          {
            goto LABEL_120;
          }

          v64 = &v8[16 * v44];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_123;
          }

          v70 = &v8[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_127;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v74 = &v8[16 * v44];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_88:
        if (v69)
        {
          goto LABEL_122;
        }

        v77 = &v8[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_125;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_95:
        v85 = v47 - 1;
        if (v47 - 1 >= v44)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v86 = *&v8[16 * v85 + 32];
        v87 = *&v8[16 * v47 + 40];
        sub_1B808D07C((*v5 + 176 * v86), (*v5 + 176 * *&v8[16 * v47 + 32]), (*v5 + 176 * v87), v46);
        if (v4)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B80B6240(v8);
        }

        if (v85 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v88 = &v8[16 * v85];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        result = sub_1B80B61B4(v47);
        v44 = *(v8 + 2);
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v8[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_118;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_119;
      }

      v59 = &v8[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_121;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_124;
      }

      if (v63 >= v55)
      {
        v81 = &v8[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_128;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v29 = *v5;
  v30 = *v5 + 176 * v7;
  v97 = v9;
  v31 = v9 - v7;
  __dst = v28;
LABEL_43:
  v32 = v31;
  v33 = v30;
  while (1)
  {
    v34 = (v33 - 176);
    v35 = *v33 == *(v33 - 176) && *(v33 + 8) == *(v33 - 168);
    if (v35 || (result = sub_1B80C981C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 176;
      --v31;
      if (v7 != __dst)
      {
        goto LABEL_43;
      }

      v7 = __dst;
      v5 = a3;
      v9 = v97;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v119 = *(v33 + 128);
    v121 = *(v33 + 144);
    v123 = *(v33 + 160);
    v111 = *(v33 + 64);
    v113 = *(v33 + 80);
    v115 = *(v33 + 96);
    v117 = *(v33 + 112);
    v103 = *v33;
    v105 = *(v33 + 16);
    v107 = *(v33 + 32);
    v109 = *(v33 + 48);
    v36 = *(v33 - 32);
    *(v33 + 128) = *(v33 - 48);
    *(v33 + 144) = v36;
    *(v33 + 160) = *(v33 - 16);
    v37 = *(v33 - 96);
    *(v33 + 64) = *(v33 - 112);
    *(v33 + 80) = v37;
    v38 = *(v33 - 64);
    *(v33 + 96) = *(v33 - 80);
    *(v33 + 112) = v38;
    v39 = *(v33 - 160);
    *v33 = *v34;
    *(v33 + 16) = v39;
    v40 = *(v33 - 128);
    *(v33 + 32) = *(v33 - 144);
    *(v33 + 48) = v40;
    *(v33 - 48) = v119;
    *(v33 - 32) = v121;
    *(v33 - 16) = v123;
    *(v33 - 112) = v111;
    *(v33 - 96) = v113;
    *(v33 - 80) = v115;
    *(v33 - 64) = v117;
    *v34 = v103;
    *(v33 - 160) = v105;
    v33 -= 176;
    v34[2] = v107;
    v34[3] = v109;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_1B808D07C(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 176;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 176;
  if (v9 < v11)
  {
    if (__dst != __src || &__src[176 * v9] <= __dst)
    {
      memmove(__dst, __src, 176 * v9);
    }

    v12 = &v4[176 * v9];
    if (v8 < 176 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_41;
    }

    while (1)
    {
      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_1B80C981C() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 176;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 176;
      if (v4 >= v12 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_41;
      }
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 176;
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    memmove(v7, v14, 0xB0uLL);
    goto LABEL_17;
  }

  if (__dst != a2 || &a2[176 * v11] <= __dst)
  {
    memmove(__dst, a2, 176 * v11);
  }

  v12 = &v4[176 * v11];
  if (v10 >= 176 && v6 > v7)
  {
    do
    {
      v15 = v6 - 176;
      v5 -= 176;
      v16 = v12;
      while (1)
      {
        v17 = *(v16 - 22);
        v18 = *(v16 - 21);
        v16 -= 176;
        v19 = v17 == *(v6 - 22) && v18 == *(v6 - 21);
        if (!v19 && (sub_1B80C981C() & 1) != 0)
        {
          break;
        }

        if (v5 + 176 != v12)
        {
          memmove(v5, v16, 0xB0uLL);
        }

        v5 -= 176;
        v12 = v16;
        if (v16 <= v4)
        {
          v12 = v16;
          goto LABEL_41;
        }
      }

      if (v5 + 176 != v6)
      {
        memmove(v5, v6 - 176, 0xB0uLL);
      }

      if (v12 <= v4)
      {
        break;
      }

      v6 -= 176;
    }

    while (v15 > v7);
    v6 = v15;
  }

LABEL_41:
  v20 = (v12 - v4) / 176;
  if (v6 != v4 || v6 >= &v4[176 * v20])
  {
    memmove(v6, v4, 176 * v20);
  }

  return 1;
}

uint64_t sub_1B808D31C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Friend();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x1B8CB8250](v8);
  if (v8)
  {
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_1B7FE7BD0(v10, v7);
      v12 = *v7;
      v13 = *(v7 + 1);
      sub_1B80C90FC();
      sub_1B80C911C();

      v7[176];
      v7[176];
      sub_1B80C911C();

      result = sub_1B7FE7C34(v7);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

void *sub_1B808D510(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 176 * (v17 | (v12 << 6)));
      v20 = v18[1];
      v19 = v18[2];
      v30[0] = *v18;
      v30[1] = v20;
      v30[2] = v19;
      v21 = v18[6];
      v23 = v18[3];
      v22 = v18[4];
      v30[5] = v18[5];
      v30[6] = v21;
      v30[3] = v23;
      v30[4] = v22;
      v24 = v18[10];
      v26 = v18[7];
      v25 = v18[8];
      v30[9] = v18[9];
      v30[10] = v24;
      v30[7] = v26;
      v30[8] = v25;
      memmove(v11, v18, 0xB0uLL);
      if (v14 == v10)
      {
        sub_1B7FC8DA4(v30, v29);
        goto LABEL_24;
      }

      v11 += 176;
      sub_1B7FC8DA4(v30, v29);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v28 = v12 + 1;
    }

    else
    {
      v28 = (63 - v7) >> 6;
    }

    v12 = v28 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t _s12FindMyLocate15FriendContainerV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  if ((sub_1B808AE38(*a1, *a2) & 1) == 0 || (sub_1B808AE38(v2, v6) & 1) == 0 || (sub_1B808AE38(v4, v8) & 1) == 0 || (sub_1B808AE38(v3, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_1B808AE38(v5, v9);
}

uint64_t sub_1B808D774(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B8032C04();
  result = MEMORY[0x1B8CB7CD0](v2, &type metadata for Handle, v3);
  v13 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[9];
      v14[8] = v5[8];
      v14[9] = v6;
      v14[10] = v5[10];
      v7 = v5[5];
      v14[4] = v5[4];
      v14[5] = v7;
      v8 = v5[7];
      v14[6] = v5[6];
      v14[7] = v8;
      v9 = v5[1];
      v14[0] = *v5;
      v14[1] = v9;
      v10 = v5[3];
      v14[2] = v5[2];
      v14[3] = v10;
      sub_1B7FC8DA4(v14, v12);
      sub_1B8086FBC(v11, v14);
      v12[8] = v11[8];
      v12[9] = v11[9];
      v12[10] = v11[10];
      v12[4] = v11[4];
      v12[5] = v11[5];
      v12[6] = v11[6];
      v12[7] = v11[7];
      v12[0] = v11[0];
      v12[1] = v11[1];
      v12[2] = v11[2];
      v12[3] = v11[3];
      sub_1B7FCAD28(v12);
      v5 += 11;
      --v2;
    }

    while (v2);
    return v13;
  }

  return result;
}

unint64_t sub_1B808D860()
{
  result = qword_1EBA67038;
  if (!qword_1EBA67038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67038);
  }

  return result;
}

uint64_t sub_1B808D8B4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA65F80, &qword_1B80D2708);
    sub_1B808D93C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B808D93C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Friend();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B808D984()
{
  result = qword_1EBA67058;
  if (!qword_1EBA67058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67058);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B808D9EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B808DA34(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1B808DAA0()
{
  result = qword_1EBA67060;
  if (!qword_1EBA67060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67060);
  }

  return result;
}

unint64_t sub_1B808DAF8()
{
  result = qword_1EBA67068;
  if (!qword_1EBA67068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67068);
  }

  return result;
}

unint64_t sub_1B808DB50()
{
  result = qword_1EBA67070;
  if (!qword_1EBA67070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67070);
  }

  return result;
}

uint64_t sub_1B808DBA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B8CB7CD0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1B8087270(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B808DC3C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7265776F6C6C6F66 && a2 == 0xE900000000000073 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69776F6C6C6F66 && a2 == 0xE900000000000067 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F46657275747566 && a2 == 0xEF737265776F6C6CLL || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F46657275747566 && a2 == 0xEF676E69776F6C6CLL || (sub_1B80C981C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4F676E69646E6570 && a2 == 0xED00007372656666)
  {

    return 4;
  }

  else
  {
    v5 = sub_1B80C981C();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B808DE0C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B80C8F2C();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v54 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1B80C8F3C();
  v50 = *(v55 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v51 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1B80C8F0C();
  v7 = *(v58 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FC0, &qword_1B80D9A00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FC8, &unk_1B80D9FD0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v47 - v17;
  v19 = sub_1B80C8C7C();
  v52 = *(v19 - 8);
  v53 = v19;
  v20 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B80C8E2C();
  v60 = *(v23 - 8);
  v61 = v23;
  v24 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1B80C8F9C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v59)
  {
    if (*v59 == 1)
    {
      v33 = v30;
      v48 = v30;
      v49 = v28;
      sub_1B80C8F5C();
      sub_1B80C8E1C();
      v34 = *(v28 + 56);
      v47[1] = a1;
      v34(v18, 1, 1, v33);
      v35 = sub_1B80C8FCC();
      (*(*(v35 - 8) + 56))(v14, 1, 1, v35);
      v59 = v32;
      v47[0] = v22;
      sub_1B80C8C6C();
      (*(v7 + 104))(v10, *MEMORY[0x1E69698D0], v58);
      v37 = v50;
      v36 = v51;
      v38 = v55;
      (*(v50 + 104))(v51, *MEMORY[0x1E69699C8], v55);
      v40 = v56;
      v39 = v57;
      v41 = v54;
      (*(v56 + 104))(v54, *MEMORY[0x1E6969998], v57);
      sub_1B80C8F6C();
      (*(v40 + 8))(v41, v39);
      (*(v37 + 8))(v36, v38);
      (*(v7 + 8))(v10, v58);
      (*(v52 + 8))(v47[0], v53);
      (*(v60 + 8))(v26, v61);
      return (*(v49 + 8))(v59, v48);
    }

    v43 = *(v60 + 56);
    v44 = a1;
    v45 = 1;
  }

  else
  {
    sub_1B80C8DAC();
    v43 = *(v60 + 56);
    v44 = a1;
    v45 = 0;
  }

  v46 = v61;

  return v43(v44, v45, 1, v46);
}