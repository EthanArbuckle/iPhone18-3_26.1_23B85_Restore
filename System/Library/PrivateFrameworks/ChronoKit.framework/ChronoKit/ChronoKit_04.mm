uint64_t sub_1BF3EB8FC(int a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v63 = a2;
  v64 = a3;
  v65 = a1;
  v5 = sub_1BF4E7B24();
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B00, &qword_1BF4EC378);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v60 - v13;
  v15 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  *(v4 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise__needsCleanup) = 0;
  v25 = OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_intermediates;
  swift_beginAccess();
  v69 = v25;
  v26 = v4 + v25;
  v27 = v15;
  sub_1BF38C94C(v26, v14, &qword_1EBDD8B00, &qword_1BF4EC378);
  v70 = v16;
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_1BF38C9B4(v14, &qword_1EBDD8B00, &qword_1BF4EC378);
  }

  sub_1BF3EDD00(v14, v24);
  if (qword_1EDC9EFD8 != -1)
  {
    swift_once();
  }

  v29 = sub_1BF4E7B54();
  __swift_project_value_buffer(v29, qword_1EDCA6A48);
  sub_1BF3EDB58(v24, v21);

  v30 = v64;

  v31 = sub_1BF4E7B34();
  v32 = sub_1BF4E8E84();

  v33 = os_log_type_enabled(v31, v32);
  v61 = v11;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v71 = v60;
    *v34 = 136446722;
    *(v34 + 4) = sub_1BF38D65C(v4[2], v4[3], &v71);
    *(v34 + 12) = 2082;
    *(v34 + 14) = sub_1BF38D65C(v63, v30, &v71);
    *(v34 + 22) = 2082;
    v35 = v62;
    sub_1BF3EDB58(v21, v62);
    v72 = 60;
    v73 = 0xE100000000000000;
    v36 = v35 + v27[5];
    v37 = sub_1BF4E7174();
    MEMORY[0x1BFB58C90](v37);

    MEMORY[0x1BFB58C90](62, 0xE100000000000000);
    v38 = v72;
    v39 = v73;
    sub_1BF3CA2B8(v35);
    sub_1BF3CA2B8(v21);
    v40 = sub_1BF38D65C(v38, v39, &v71);

    *(v34 + 24) = v40;
    _os_log_impl(&dword_1BF389000, v31, v32, "%{public}s destroying promise for '%{public}s' - %{public}s", v34, 0x20u);
    v41 = v60;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v41, -1, -1);
    MEMORY[0x1BFB5A5D0](v34, -1, -1);
  }

  else
  {

    sub_1BF3CA2B8(v21);
  }

  sub_1BF4E8FD4();
  if (qword_1EDC9D678 != -1)
  {
    swift_once();
  }

  v43 = v66;
  v42 = v67;
  v44 = v68;
  (*(v67 + 16))(v66, &v24[v27[8]], v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B28, &unk_1BF4EC500);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1BF4EBEF0;
  v46 = sub_1BF3EE2E4();
  v47 = (v65 & 1) == 0;
  v48 = 20302;
  if (v65)
  {
    v48 = 5457241;
  }

  v49 = 0xE200000000000000;
  *(v45 + 56) = MEMORY[0x1E69E6158];
  *(v45 + 64) = v46;
  if (!v47)
  {
    v49 = 0xE300000000000000;
  }

  *(v45 + 32) = v48;
  *(v45 + 40) = v49;
  sub_1BF4E7AE4();

  (*(v42 + 8))(v43, v44);
  v50 = v4[7];
  v51 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v50);
  (*(v51 + 32))(*&v24[v27[6]], v50, v51);
  v52 = v4[7];
  v53 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v52);
  (*(v53 + 32))(*&v24[v27[7]], v52, v53);
  v54 = v4[7];
  v55 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v54);
  (*(v55 + 40))(&v24[v27[5]], v54, v55);
  v56 = v4[7];
  v57 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v56);
  (*(v57 + 40))(v24, v56, v57);
  v58 = v61;
  (*(v70 + 56))(v61, 1, 1, v27);
  v59 = v69;
  swift_beginAccess();
  sub_1BF3CA110(v58, v4 + v59);
  swift_endAccess();
  return sub_1BF3CA2B8(v24);
}

uint64_t sub_1BF3EC048@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_1BF3EC058@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v22 = sub_1BF4E6E34();
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v22 - v9;
  v11 = sub_1BF4E8484();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF4E85B4();
  sub_1BF4E8474();
  (*(v12 + 8))(v15, v11);
  v17 = sub_1BF4E7334();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (v19(v10, 1, v17) != 1)
  {
    return (*(v18 + 32))(v23, v10, v17);
  }

  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF4E85F4();
  sub_1BF4E6E24();
  (*(v3 + 8))(v6, v22);
  result = (v19)(v10, 1, v17);
  if (result != 1)
  {
    return sub_1BF38C9B4(v10, &qword_1EBDD9B00, &qword_1BF4F1E50);
  }

  return result;
}

uint64_t sub_1BF3EC328()
{
  DataProtectedArchiveFilePromise.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_1BF3EC380(char a1)
{
  v3 = *(v1 + 40);
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](a1 & 1);
  v4 = sub_1BF4E9844();

  return sub_1BF3ECBA8(a1 & 1, v4);
}

unint64_t sub_1BF3EC3EC(__int128 *a1)
{
  v3 = *(v1 + 40);
  v6 = *a1;
  v7 = a1[1];
  *v8 = a1[2];
  *&v8[9] = *(a1 + 41);
  sub_1BF4E9804();
  PowerlogWidgetViewIdentity.hash(into:)();
  v4 = sub_1BF4E9844();

  return sub_1BF3ECC18(a1, v4);
}

unint64_t sub_1BF3EC470(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1BF4E9804();
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  if (v8)
  {
    v6 = qword_1BF4EC510[v6];
  }

  else
  {
    MEMORY[0x1BFB59A70](3);
  }

  MEMORY[0x1BFB59A70](v6);
  v9 = *(a1 + 33);
  sub_1BF4E9824();
  v10 = sub_1BF4E9844();

  return sub_1BF3ECDFC(a1, v10);
}

unint64_t sub_1BF3EC540(uint64_t *a1)
{
  v3 = *(v1 + 40);
  sub_1BF4E9804();
  v4 = *a1;
  sub_1BF4E90B4();
  v5 = type metadata accessor for ActivityKey();
  v6 = *(v5 + 20);
  sub_1BF4E7454();
  sub_1BF3EE29C(&qword_1EDC9F0A8, MEMORY[0x1E6959BC8]);
  sub_1BF4E8884();
  v7 = (a1 + *(v5 + 24));
  v8 = *v7;
  v9 = v7[1];
  sub_1BF4E89F4();
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0) + 68);
  sub_1BF4E8674();
  sub_1BF3EE29C(&unk_1EDC9D760, MEMORY[0x1E6985AA8]);
  sub_1BF4E8884();
  v11 = type metadata accessor for ActivityVariantKey();
  v12 = *(v11 + 20);
  sub_1BF4E8364();
  sub_1BF3EE29C(&qword_1EDC9D798, MEMORY[0x1E69858D8]);
  sub_1BF4E8884();
  v13 = *(v11 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  sub_1BF38C8B4(&unk_1EDC9F018, &unk_1EBDD85B0, &unk_1BF4EA9E0);
  sub_1BF4E8884();
  v14 = sub_1BF4E9844();

  return sub_1BF3ED010(a1, v14);
}

unint64_t sub_1BF3EC78C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  sub_1BF38C8B4(&qword_1EDC9D5A8, &qword_1EBDD8A38, &unk_1BF4EC4D0);
  v5 = sub_1BF4E8874();
  return sub_1BF38CA14(a1, v5, &qword_1EBDD8A38, &unk_1BF4EC4D0, &qword_1EDC9F050, MEMORY[0x1E69940C8]);
}

unint64_t sub_1BF3EC854(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1BF4E9254();

  return sub_1BF3ED3BC(a1, v5);
}

unint64_t sub_1BF3EC898(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1BF4E9804();
  type metadata accessor for CFString(0);
  sub_1BF3EE29C(&qword_1EDC9D738, type metadata accessor for CFString);
  sub_1BF4E7874();
  v4 = sub_1BF4E9844();

  return sub_1BF3ED484(a1, v4);
}

unint64_t sub_1BF3EC94C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1BF4E7394();
  sub_1BF3EE29C(&qword_1EBDD8948, MEMORY[0x1E69695A8]);
  v5 = sub_1BF4E8874();

  return sub_1BF3ED590(a1, v5);
}

unint64_t sub_1BF3EC9E4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1BF4E79A4();
  sub_1BF3EE29C(&qword_1EBDD8B08, MEMORY[0x1E69C7338]);
  v4 = sub_1BF4E8874();
  return sub_1BF3ED750(a1, v4);
}

unint64_t sub_1BF3ECA90(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1BF4E9804();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF4E8884();
  if (*(a1 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8))
  {
    v4 = *(a1 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
    sub_1BF4E9824();
    sub_1BF4E89F4();
  }

  else
  {
    sub_1BF4E9824();
  }

  v5 = sub_1BF4E9844();

  return sub_1BF3ED84C(a1, v5);
}

unint64_t sub_1BF3ECBA8(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1BF3ECC18(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
    v7 = *a1;
    do
    {
      v8 = (*(v2 + 48) + (v4 << 6));
      v10 = v8[1];
      v9 = v8[2];
      v11 = *v8;
      *&v19[41] = *(v8 + 41);
      *&v19[16] = v10;
      *&v19[32] = v9;
      *v19 = v11;
      sub_1BF3EE1EC(v19, &v18);
      if ((sub_1BF4E90A4() & 1) == 0 || *&v19[8] != *(a1 + 1) && (sub_1BF4E9734() & 1) == 0)
      {
LABEL_3:
        sub_1BF3EE248(v19);
        goto LABEL_4;
      }

      v12 = a1[4];
      if (*&v19[32])
      {
        if (!v12)
        {
          goto LABEL_3;
        }

        if (*&v19[24] == *(a1 + 3))
        {
          sub_1BF3EE248(v19);
        }

        else
        {
          v13 = a1[4];
          v14 = sub_1BF4E9734();
          sub_1BF3EE248(v19);
          if ((v14 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_1BF3EE248(v19);
        if (v12)
        {
          goto LABEL_4;
        }
      }

      if (v19[40] != (a1[5] & 1))
      {
        goto LABEL_4;
      }

      v15 = *&v19[48];
      v16 = a1[6];
      if (v19[56])
      {
        if (!*(a1 + 56))
        {
          goto LABEL_4;
        }

        v15 = qword_1BF4EC510[*&v19[48]];
      }

      else
      {
        if ((a1[7] & 1) == 0)
        {
          goto LABEL_22;
        }

        v15 = 3;
      }

      v16 = qword_1BF4EC510[v16];
LABEL_22:
      if (v15 == v16)
      {
        return v4;
      }

LABEL_4:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1BF3ECDFC(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = v2;
    v19 = ~v3;
    sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
    v20 = *a1;
    do
    {
      v7 = *(v5 + 48) + 40 * v4;
      v8 = *(v7 + 8);
      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      v11 = *(v7 + 32);
      v12 = *(v7 + 33);
      v13 = *v7;

      if ((sub_1BF4E90A4() & 1) == 0 || (v8 == a1[1] ? (v14 = v10 == a1[2]) : (v14 = 0), !v14 && (sub_1BF4E9734() & 1) == 0))
      {

        goto LABEL_4;
      }

      v15 = v5;
      v16 = a1[3];
      if (v11)
      {
        v17 = qword_1BF4EC510[v9];
        if (!*(a1 + 32))
        {
          v16 = 3;
          goto LABEL_31;
        }
      }

      else
      {
        if ((a1[4] & 1) == 0)
        {

          v14 = v9 == v16;
          v5 = v15;
          if (!v14)
          {
            goto LABEL_4;
          }

          goto LABEL_33;
        }

        v17 = 3;
      }

      if (v16 <= 3)
      {
        if (v16 >= 3)
        {
          v16 = 4;
        }
      }

      else if (v16 <= 5)
      {
        if (v16 == 4)
        {
          v16 = 5;
        }

        else
        {
          v16 = 6;
        }
      }

      else if (v16 == 6)
      {
        v16 = 7;
      }

      else if (v16 == 7)
      {
        v16 = 8;
      }

      else
      {
        v16 = 9;
      }

LABEL_31:

      v14 = v17 == v16;
      v5 = v15;
      if (!v14)
      {
        goto LABEL_4;
      }

LABEL_33:
      if (v12 == (*(a1 + 33) & 1))
      {
        return v4;
      }

LABEL_4:
      v4 = (v4 + 1) & v19;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1BF3ED010(void *a1, uint64_t a2)
{
  v3 = v2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  v6 = *(v33 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v9 = (&v29 - v8);
  v10 = -1 << *(v3 + 32);
  v11 = a2 & ~v10;
  v38 = v3 + 64;
  if (((*(v3 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return v11;
  }

  v34 = ~v10;
  v12 = sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
  v13 = &qword_1EBDD87A8;
  v35 = *a1;
  v36 = *(v6 + 72);
  v37 = v12;
  v14 = &unk_1BF4EB2C0;
  v31 = a1;
  v32 = v3;
  while (1)
  {
    v16 = v13;
    v17 = v14;
    sub_1BF38C94C(*(v3 + 48) + v36 * v11, v9, v13, v14);
    v18 = *v9;
    if ((sub_1BF4E90A4() & 1) == 0)
    {
      goto LABEL_4;
    }

    v19 = type metadata accessor for ActivityKey();
    v20 = *(v19 + 20);
    if ((sub_1BF4E7434() & 1) == 0)
    {
      goto LABEL_4;
    }

    v21 = *(v19 + 24);
    v22 = *(v9 + v21);
    v23 = *(v9 + v21 + 8);
    v24 = (a1 + v21);
    v25 = v22 == *v24 && v23 == v24[1];
    if (!v25 && (sub_1BF4E9734() & 1) == 0)
    {
      goto LABEL_4;
    }

    if ((MEMORY[0x1BFB588A0](v9 + *(v33 + 68), a1 + *(v33 + 68)) & 1) == 0)
    {
      goto LABEL_4;
    }

    v30 = type metadata accessor for ActivityVariantKey();
    v26 = *(v30 + 20);
    sub_1BF4E8364();
    sub_1BF3EE29C(&qword_1EDC9D790, MEMORY[0x1E69858D8]);
    sub_1BF4E8B54();
    a1 = v31;
    v3 = v32;
    sub_1BF4E8B54();
    if (v41 != v39)
    {
      goto LABEL_4;
    }

    v27 = *(v30 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
    sub_1BF38C8B4(&unk_1EDC9F008, &unk_1EBDD85B0, &unk_1BF4EA9E0);
    sub_1BF4E8B54();
    sub_1BF4E8B54();
    if (v41 == v39 && v42 == v40)
    {
      break;
    }

    v15 = sub_1BF4E9734();

    a1 = v31;
    v3 = v32;
    if (v15)
    {
      goto LABEL_17;
    }

LABEL_4:
    v13 = v16;
    v14 = v17;
    sub_1BF38C9B4(v9, v16, v17);
    v11 = (v11 + 1) & v34;
    if (((*(v38 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return v11;
    }
  }

LABEL_17:
  sub_1BF38C9B4(v9, &qword_1EBDD87A8, &unk_1BF4EB2C0);
  return v11;
}

unint64_t sub_1BF3ED3BC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1BF3EE13C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1BFB594C0](v9, a1);
      sub_1BF3EE198(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1BF3ED484(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1BF3EE29C(&qword_1EDC9D738, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1BF4E7864();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1BF3ED590(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_1BF4E7394();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4, v7);
      sub_1BF3EE29C(&qword_1EDC9D5D8, MEMORY[0x1E69695A8]);
      v17 = sub_1BF4E88C4();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1BF3ED750(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1BF4E79A4();
    sub_1BF3EE29C(&qword_1EBDD8B10, MEMORY[0x1E69C7338]);
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);
      if (sub_1BF4E88C4())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1BF3ED84C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = v2;
    v6 = a1;
    v18 = ~v3;
    v7 = (a1 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
    sub_1BF38C8B4(&qword_1EDC9D530, &unk_1EBDD91A0, &unk_1BF4EC4E0);
    do
    {
      v8 = *(*(v5 + 48) + 8 * v4);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
      sub_1BF4E8B54();
      v9 = v6;
      sub_1BF4E8B54();
      if (v22 == v20 && v23 == v21)
      {
      }

      else
      {
        v11 = sub_1BF4E9734();

        if ((v11 & 1) == 0)
        {

          v6 = v9;
          goto LABEL_4;
        }
      }

      v12 = *(v8 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8);
      v13 = v7[1];
      if (v12)
      {
        v6 = v9;
        if (v13)
        {
          if (*(v8 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind) == *v7 && v12 == v13)
          {

            return v4;
          }

          v15 = v7[1];
          v16 = sub_1BF4E9734();

          if (v16)
          {
            return v4;
          }
        }

        else
        {
        }
      }

      else
      {

        v6 = v9;
        if (!v13)
        {
          return v4;
        }
      }

LABEL_4:
      v4 = (v4 + 1) & v18;
    }

    while (((*(v19 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1BF3EDA84(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_1BF3EDAE4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1BF3EDB58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BF3EDBBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87C8, &qword_1BF4EB2E0);
    v3 = sub_1BF4E94C4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BF38C94C(v4, &v13, &qword_1EBDD87D0, &qword_1BF4EB2E8);
      v5 = v13;
      v6 = v14;
      result = sub_1BF3CD5E8(v13, v14, sub_1BF3CD66C);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1BF38EB2C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_1BF3EDD00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BF3EDDD4()
{
  v0 = sub_1BF4E7194();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1BF3EDFFC(319, &qword_1EDC96458, MEMORY[0x1E69859A8]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1BF3EDFFC(319, &qword_1EDC97168, type metadata accessor for DataProtectedArchiveFilePromise.Intermediates);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BF3EDFFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BF4E90F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BF3EE090()
{
  result = sub_1BF4E7194();
  if (v1 <= 0x3F)
  {
    result = sub_1BF3901C0(319, &qword_1EDC963A8, 0x1E696AC00);
    if (v2 <= 0x3F)
    {
      result = sub_1BF4E7B24();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1BF3EE29C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BF3EE2E4()
{
  result = qword_1EDC96438;
  if (!qword_1EDC96438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC96438);
  }

  return result;
}

uint64_t sub_1BF3EE344()
{
  v0 = type metadata accessor for ReloadConfiguration(0);
  __swift_allocate_value_buffer(v0, qword_1EDC9A050);
  v1 = __swift_project_value_buffer(v0, qword_1EDC9A050);
  v2 = sub_1BF4E7334();
  result = (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v4 = v0[9];
  *(v1 + v0[5]) = 1;
  *(v1 + v0[7]) = 1;
  *(v1 + v0[6]) = 0xA000000000000030;
  *(v1 + v0[8]) = 1;
  *(v1 + v4) = 0;
  return result;
}

uint64_t ReloadConfiguration.init(type:cost:reason:retryAttempts:allowCostOverride:fromUserInteraction:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v12 = *a2;
  v13 = *a3;
  v14 = type metadata accessor for ReloadConfiguration(0);
  v15 = v14[9];
  result = sub_1BF38DAD0(a1, a7);
  *(a7 + v14[5]) = v12;
  *(a7 + v14[7]) = a4;
  *(a7 + v14[6]) = v13;
  *(a7 + v14[8]) = a5;
  *(a7 + v15) = a6;
  return result;
}

uint64_t static ReloadConfiguration.initial.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDC9A048 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ReloadConfiguration(0);
  v3 = __swift_project_value_buffer(v2, qword_1EDC9A050);
  return sub_1BF39B31C(v3, a1, type metadata accessor for ReloadConfiguration);
}

uint64_t ReloadConfiguration.ReloadCost.description.getter()
{
  if (*v0)
  {
    result = 1701147238;
  }

  else
  {
    result = 0x6465746567647562;
  }

  *v0;
  return result;
}

uint64_t ReloadConfiguration.ReloadCost.hashValue.getter()
{
  v1 = *v0;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v1);
  return sub_1BF4E9844();
}

uint64_t sub_1BF3EE5E0()
{
  if (*v0)
  {
    result = 1701147238;
  }

  else
  {
    result = 0x6465746567647562;
  }

  *v0;
  return result;
}

uint64_t ReloadConfiguration.ReloadType.description.getter()
{
  v1 = v0;
  v2 = sub_1BF4E7334();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF39B31C(v1, v10, type metadata accessor for ReloadConfiguration.ReloadType);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return 0x74616964656D6D69;
  }

  (*(v3 + 32))(v6, v10, v2);
  if (qword_1EDC9F0F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDC9F0F8;
  v13 = sub_1BF4E7254();
  v14 = [v12 stringFromDate_];

  v15 = sub_1BF4E8914();
  (*(v3 + 8))(v6, v2);
  return v15;
}

uint64_t ReloadConfiguration.ReloadReason.isMandatory.getter()
{
  if (*v0 >> 61 == 5 && (v1 = __ROR8__(*v0 + 0x6000000000000000, 3), v1 <= 0xB))
  {
    return (0x84Fu >> v1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ReloadConfiguration.ReloadReason.mayDeferOnSuggestedWidgetLocationReload.getter()
{
  v1 = *v0;
  v2 = *v0 >> 61;
  if (v2 <= 1)
  {
    LOBYTE(v3) = v2 == 0;
  }

  else if ((v2 - 2) >= 3)
  {
    v3 = 0x230u >> (v1 >> 3);
  }

  else
  {
    v5 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    LOBYTE(v3) = ReloadConfiguration.ReloadReason.mayDeferOnSuggestedWidgetLocationReload.getter();
  }

  return v3 & 1;
}

uint64_t ReloadConfiguration.ReloadReason.powerlogWakeReason.getter@<X0>(char *a1@<X8>)
{
  v2 = *v1;
  v3 = *v1 >> 61;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      return ReloadConfiguration.ReloadReason.powerlogWakeReason.getter();
    }

    if (v3 != 4)
    {
      switch(__ROR8__(v2 + 0x6000000000000000, 3))
      {
        case 2:
        case 3:
        case 8:
        case 0xDLL:
        case 0xELL:
        case 0xFLL:
          goto LABEL_10;
        case 4:
        case 0xALL:
          v4 = 1;
          goto LABEL_11;
        case 5:
        case 6:
        case 7:
          goto LABEL_4;
        case 9:
          v4 = 5;
          goto LABEL_11;
        case 0xBLL:
          v4 = 10;
          goto LABEL_11;
        case 0xCLL:
          v4 = 11;
          goto LABEL_11;
        default:
          v4 = 4;
          goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 1)
    {
LABEL_4:
      *a1 = 0;
      return result;
    }

LABEL_10:
    v4 = 7;
    goto LABEL_11;
  }

  v4 = 6;
LABEL_11:
  *a1 = v4;
  return result;
}

void ReloadConfiguration.ReloadReason.defaultCost.getter(BOOL *a1@<X8>)
{
  v2 = *v1 >> 61;
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      *a1 = 0;
    }

    else
    {
      *a1 = byte_1BF4EC910[__ROR8__(*v1 + 0x6000000000000000, 3)];
    }
  }

  else
  {
    *a1 = (v2 - 1) < 3;
  }
}

uint64_t ReloadConfiguration.ReloadReason.hashValue.getter()
{
  v2[9] = *v0;
  sub_1BF4E9804();
  ReloadConfiguration.ReloadReason.hash(into:)(v2);
  return sub_1BF4E9844();
}

uint64_t sub_1BF3EEA78()
{
  v2[9] = *v0;
  sub_1BF4E9804();
  ReloadConfiguration.ReloadReason.hash(into:)(v2);
  return sub_1BF4E9844();
}

uint64_t sub_1BF3EEAC8()
{
  v2[9] = *v0;
  sub_1BF4E9804();
  ReloadConfiguration.ReloadReason.hash(into:)(v2);
  return sub_1BF4E9844();
}

uint64_t ReloadConfiguration.init(type:cost:reason:fromUserInteraction:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = *a3;
  v10 = type metadata accessor for ReloadConfiguration(0);
  v11 = v10[9];
  result = sub_1BF38DAD0(a1, a5);
  *(a5 + v10[5]) = v8;
  *(a5 + v10[7]) = 1;
  *(a5 + v10[6]) = v9;
  *(a5 + v10[8]) = 1;
  *(a5 + v11) = a4;
  return result;
}

uint64_t ReloadConfiguration.fromUserInteraction.setter(char a1)
{
  result = type metadata accessor for ReloadConfiguration(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ReloadConfiguration.userInteractive.getter()
{
  v1 = sub_1BF4E7334();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B30, &qword_1BF4EC590);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  v11 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v29 - v17;
  (*(v2 + 56))(&v29 - v17, 1, 1, v1, v16);
  v19 = *(v7 + 56);
  sub_1BF39B31C(v0, v10, type metadata accessor for ReloadConfiguration.ReloadType);
  sub_1BF39B31C(v18, &v10[v19], type metadata accessor for ReloadConfiguration.ReloadType);
  v20 = *(v2 + 48);
  if (v20(v10, 1, v1) == 1)
  {
    sub_1BF3B8DEC(v18);
    if (v20(&v10[v19], 1, v1) == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_1BF39B31C(v10, v14, type metadata accessor for ReloadConfiguration.ReloadType);
  if (v20(&v10[v19], 1, v1) == 1)
  {
    sub_1BF3B8DEC(v18);
    (*(v2 + 8))(v14, v1);
LABEL_6:
    sub_1BF38C9B4(v10, &qword_1EBDD8B30, &qword_1BF4EC590);
    return *(v0 + *(type metadata accessor for ReloadConfiguration(0) + 36));
  }

  (*(v2 + 32))(v5, &v10[v19], v1);
  v22 = sub_1BF4E72D4();
  v23 = *(v2 + 8);
  v23(v5, v1);
  sub_1BF3B8DEC(v18);
  v23(v14, v1);
  if ((v22 & 1) == 0)
  {
    sub_1BF3B8DEC(v10);
    return *(v0 + *(type metadata accessor for ReloadConfiguration(0) + 36));
  }

LABEL_9:
  sub_1BF3B8DEC(v10);
  v24 = *(type metadata accessor for ReloadConfiguration(0) + 24);
  v25 = *(v0 + v24);
  v29 = 0xA000000000000030;
  v30 = v25;
  sub_1BF39C510(v25);
  v26 = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v30, &v29);
  sub_1BF39C9A4(v25);
  if ((v26 & 1) == 0)
  {
    v27 = *(v0 + v24);
    v29 = 0xA000000000000060;
    v30 = v27;
    sub_1BF39C510(v27);
    v28 = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v30, &v29);
    sub_1BF39C9A4(v27);
    if ((v28 & 1) == 0)
    {
      return *(v0 + *(type metadata accessor for ReloadConfiguration(0) + 36));
    }
  }

  return 1;
}

unint64_t sub_1BF3EF004()
{
  result = qword_1EDC96380;
  if (!qword_1EDC96380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC96380);
  }

  return result;
}

unint64_t sub_1BF3EF054()
{
  result = qword_1EBDD8B38;
  if (!qword_1EBDD8B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8B38);
  }

  return result;
}

uint64_t sub_1BF3EF0A8()
{
  result = type metadata accessor for ReloadConfiguration.ReloadType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BF3EF168()
{
  v0 = sub_1BF4E7334();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1BF3EF1CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1BF3EF228(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1BF3EF2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (*a5 == 2 && (v5 = *(a3 + *(type metadata accessor for ReloadConfiguration(0) + 24)), v5 >> 61 == 5) && (v6 = __ROR8__(v5 + 0x6000000000000000, 3), v6 <= 0xB))
  {
    return (0x84Fu >> v6) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t static Priority.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      if (!*a2)
      {
        return 1;
      }
    }

    else if (*a2 < 2u)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t Priority.description.getter()
{
  v1 = 0x6E7574726F70706FLL;
  if (*v0 != 1)
  {
    v1 = 0x6E696B61576E6F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616D726F6ELL;
  }
}

ChronoKit::Priority_optional __swiftcall Priority.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1BF3EF490()
{
  v1 = 0x6E7574726F70706FLL;
  if (*v0 != 1)
  {
    v1 = 0x6E696B61576E6F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616D726F6ELL;
  }
}

uint64_t sub_1BF3EF4F8(_BYTE *a1, _BYTE *a2)
{
  if (!*a1)
  {
    return 0;
  }

  if (*a1 == 1)
  {
    if (*a2)
    {
      return 0;
    }
  }

  else if (*a2 > 1u)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1BF3EF528(_BYTE *a1, _BYTE *a2)
{
  if (!*a2)
  {
    return 1;
  }

  if (*a2 == 1)
  {
    if (*a1)
    {
      return 1;
    }
  }

  else if (*a1 > 1u)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1BF3EF558(_BYTE *a1, _BYTE *a2)
{
  if (!*a1)
  {
    return 1;
  }

  if (*a1 == 1)
  {
    if (*a2)
    {
      return 1;
    }
  }

  else if (*a2 > 1u)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1BF3EF588(_BYTE *a1, _BYTE *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (*a2 == 1)
  {
    if (*a1)
    {
      return 0;
    }
  }

  else if (*a1 > 1u)
  {
    return 0;
  }

  return 1;
}

uint64_t PushSubscription.SubscriptionType.Control.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PushSubscription.SubscriptionType.Control.pushType.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t PushSubscription.SubscriptionType.Control.init(controlIdentity:pushType:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = [a1 extensionIdentity];
  v8 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v9 = sub_1BF4E76B4();
  v11 = v10;
  swift_endAccess();

  v17 = v9;
  v18 = v11;
  MEMORY[0x1BFB58C90](14906, 0xE200000000000000);
  v12 = [a1 kind];
  v13 = sub_1BF4E8914();
  v15 = v14;

  MEMORY[0x1BFB58C90](v13, v15);

  *a3 = v17;
  a3[1] = v18;
  a3[2] = a1;
  a3[3] = v5;
  a3[4] = v6;
  return result;
}

unint64_t PushSubscription.SubscriptionType.Control.description.getter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  sub_1BF4E92E4();

  v4 = [v2 description];
  v5 = sub_1BF4E8914();
  v7 = v6;

  MEMORY[0x1BFB58C90](v5, v7);

  MEMORY[0x1BFB58C90](0x795468737570203BLL, 0xEC000000203A6570);
  MEMORY[0x1BFB58C90](v1, v3);
  MEMORY[0x1BFB58C90](0x203A6E656B6F74, 0xE700000000000000);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t PushSubscription.SubscriptionType.Control.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1BF4E89F4();
  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);

  return sub_1BF4E89F4();
}

uint64_t PushSubscription.SubscriptionType.Control.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1BF4E9804();
  sub_1BF4E89F4();
  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF3EF94C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1BF4E9804();
  sub_1BF4E89F4();
  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF3EF9D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1BF4E89F4();
  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);

  return sub_1BF4E89F4();
}

uint64_t sub_1BF3EFA4C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1BF4E9804();
  sub_1BF4E89F4();
  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF3EFB2C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BF4E9734();
  }
}

uint64_t PushSubscription.SubscriptionType.Widget.PushType.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x1BFB59A70](0);

  return sub_1BF4E89F4();
}

uint64_t sub_1BF3EFBB4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](0);
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF3EFC14()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](0);
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t PushSubscription.SubscriptionType.Widget.id.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v3 = sub_1BF4E76B4();
  swift_endAccess();
  return v3;
}

uint64_t PushSubscription.SubscriptionType.Widget.pushType.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t PushSubscription.SubscriptionType.Widget.init(extensionIdentity:pushType:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  *a3 = result;
  a3[1] = v3;
  a3[2] = v4;
  return result;
}

unint64_t PushSubscription.SubscriptionType.Widget.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1BF4E92E4();

  v4 = [v2 description];
  v5 = sub_1BF4E8914();
  v7 = v6;

  MEMORY[0x1BFB58C90](v5, v7);

  MEMORY[0x1BFB58C90](0x795468737570203BLL, 0xEC000000203A6570);
  MEMORY[0x1BFB58C90](v1, v3);
  MEMORY[0x1BFB58C90](0x203A6E656B6F74, 0xE700000000000000);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  return 0xD000000000000013;
}

BOOL static PushSubscription.SubscriptionType.Widget.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  sub_1BF3F1508();
  result = 0;
  if (sub_1BF4E90A4())
  {
    v8 = v2 == v5 && v4 == v7;
    if (v8 || (sub_1BF4E9734() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t PushSubscription.SubscriptionType.Widget.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *v0;
  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);

  return sub_1BF4E89F4();
}

uint64_t PushSubscription.SubscriptionType.Widget.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1BF4E9804();
  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF3EFFA0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  sub_1BF3F1508();
  if ((sub_1BF4E90A4() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v5 && v4 == v7)
  {
    return 1;
  }

  return sub_1BF4E9734();
}

uint64_t sub_1BF3F004C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1BF4E9804();
  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF3F00BC()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *v0;
  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);

  return sub_1BF4E89F4();
}

uint64_t sub_1BF3F011C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1BF4E9804();
  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t PushSubscription.SubscriptionType.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  if (v0[5])
  {
    v14 = 0x203A746567646977;
    v6 = *v0;
    v8 = v0[1];
    v10 = v0[2];
    v4 = PushSubscription.SubscriptionType.Widget.description.getter();
  }

  else
  {
    v14 = 0x3A6C6F72746E6F63;
    v7 = *v0;
    v9 = v0[1];
    v11 = v0[2];
    v12 = v0[3];
    v13 = v0[4];
    v4 = PushSubscription.SubscriptionType.Control.description.getter();
  }

  MEMORY[0x1BFB58C90](v4);

  return v14;
}

uint64_t PushSubscription.SubscriptionType.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  if (v0[5])
  {
    MEMORY[0x1BFB59A70](1);
  }

  else
  {
    v5 = v0[3];
    v4 = v0[4];
    MEMORY[0x1BFB59A70](0);
    sub_1BF4E89F4();
  }

  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);

  return sub_1BF4E89F4();
}

uint64_t PushSubscription.SubscriptionType.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_1BF4E9804();
  if (v6)
  {
    MEMORY[0x1BFB59A70](1);
  }

  else
  {
    MEMORY[0x1BFB59A70](0);
    sub_1BF4E89F4();
  }

  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF3F03EC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_1BF4E9804();
  if (v6)
  {
    MEMORY[0x1BFB59A70](1);
  }

  else
  {
    MEMORY[0x1BFB59A70](0);
    sub_1BF4E89F4();
  }

  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF3F04C0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  if (v0[5])
  {
    MEMORY[0x1BFB59A70](1);
  }

  else
  {
    v5 = v0[3];
    v4 = v0[4];
    MEMORY[0x1BFB59A70](0);
    sub_1BF4E89F4();
  }

  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);

  return sub_1BF4E89F4();
}

uint64_t sub_1BF3F0590()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_1BF4E9804();
  if (v6)
  {
    MEMORY[0x1BFB59A70](1);
  }

  else
  {
    MEMORY[0x1BFB59A70](0);
    sub_1BF4E89F4();
  }

  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

void *PushSubscription.id.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (*(v0 + 64))
  {
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = *(v0 + 40);
    v6 = *MEMORY[0x1E69941B8];
    swift_beginAccess();
    v7 = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    v8 = sub_1BF4E76B4();
    swift_endAccess();
    sub_1BF3F1B98(v1, v2, v5, v4, v3, 1);
    return v8;
  }

  else
  {
    v9 = *(v0 + 32);
  }

  return v1;
}

uint64_t PushSubscription.topic.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t PushSubscription.topic.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(v1 + 8);

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t PushSubscription.subscriptionType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  return sub_1BF3F1BEC(v2, v3, v4, v5, v6, v7);
}

__n128 PushSubscription.subscriptionType.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_1BF3F1B98(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
  result = *a1;
  *(v1 + 40) = *(a1 + 16);
  *(v1 + 24) = result;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  return result;
}

uint64_t PushSubscription.budget.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PushSubscription() + 24);

  return sub_1BF3F1C8C(v3, a1);
}

uint64_t PushSubscription.budget.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PushSubscription() + 24);

  return sub_1BF3F1CF0(a1, v3);
}

uint64_t PushSubscription.description.getter()
{
  v1 = type metadata accessor for Budget();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15[0] = 0;
  *(&v15[0] + 1) = 0xE000000000000000;
  sub_1BF4E92E4();

  v18 = 0x203A6369706F74;
  v19 = 0xE700000000000000;
  v5 = *(v0 + 8);
  if (*(v0 + 16))
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (*(v0 + 16))
  {
    v7 = "extensionIdentity: ";
  }

  else
  {
    v7 = "; subscriptionType: ";
  }

  *&v15[0] = *v0;
  *(&v15[0] + 1) = v5;

  MEMORY[0x1BFB58C90](v6, v7 | 0x8000000000000000);

  MEMORY[0x1BFB58C90](*&v15[0], *(&v15[0] + 1));

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4F9840);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = *(v0 + 40);
  v15[0] = *(v0 + 24);
  v15[1] = v10;
  v16 = v8;
  v17 = v9;
  v11 = PushSubscription.SubscriptionType.description.getter();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](0x746567647562203BLL, 0xEA0000000000203ALL);
  v12 = type metadata accessor for PushSubscription();
  sub_1BF3F1C8C(v0 + *(v12 + 24), v4);
  v13 = sub_1BF4E8994();
  MEMORY[0x1BFB58C90](v13);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  return v18;
}

uint64_t PushSubscription.init(control:environment:budget:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1;
  v8 = [v7 extensionIdentity];
  v9 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v10 = sub_1BF4E76B4();
  v12 = v11;
  swift_endAccess();

  v30 = v10;
  v31 = v12;
  MEMORY[0x1BFB58C90](14906, 0xE200000000000000);
  v13 = [v7 kind];
  v14 = sub_1BF4E8914();
  v16 = v15;

  MEMORY[0x1BFB58C90](v14, v16);

  v17 = [v7 extensionIdentity];
  v18 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  if ((*(*(v19 - 8) + 48))(&v17[v18], 1, v19))
  {
    swift_endAccess();

    v20 = [v7 extensionIdentity];
    v21 = *MEMORY[0x1E69941B8];
    swift_beginAccess();
    v22 = sub_1BF4E76B4();
    v24 = v23;
    swift_endAccess();
    v17 = v7;
  }

  else
  {
    v22 = sub_1BF4E76B4();
    v24 = v25;
    swift_endAccess();
    v20 = v7;
  }

  *a5 = v22;
  *(a5 + 8) = v24;
  *(a5 + 16) = 0;
  *(a5 + 24) = v30;
  *(a5 + 32) = v31;
  *(a5 + 40) = v7;
  *(a5 + 48) = a2;
  *(a5 + 56) = a3;
  *(a5 + 64) = 0;
  v26 = type metadata accessor for PushSubscription();
  return sub_1BF3F1D54(a4, a5 + *(v26 + 24));
}

void Topic.init(_:)(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 extensionIdentity];
  v5 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  if ((*(*(v6 - 8) + 48))(&v4[v5], 1, v6))
  {
    swift_endAccess();

    v7 = [a1 extensionIdentity];
    v8 = *MEMORY[0x1E69941B8];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    v9 = sub_1BF4E76B4();
    v11 = v10;
    swift_endAccess();
    v4 = a1;
  }

  else
  {
    v9 = sub_1BF4E76B4();
    v11 = v12;
    swift_endAccess();
    v7 = a1;
  }

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = 0;
}

{
  v4 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  if ((*(*(v5 - 8) + 48))(&a1[v4], 1, v5))
  {
    swift_endAccess();
    v6 = *MEMORY[0x1E69941B8];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  }

  v7 = sub_1BF4E76B4();
  v9 = v8;
  swift_endAccess();

  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = 1;
}

uint64_t PushSubscription.init(control:pushEnvironment:topic:budget:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a4;
  v11 = a4[1];
  v12 = *(a4 + 16);
  v13 = [a1 extensionIdentity];
  v14 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v15 = sub_1BF4E76B4();
  v17 = v16;
  swift_endAccess();

  v25 = v15;
  v26 = v17;
  MEMORY[0x1BFB58C90](14906, 0xE200000000000000);
  v18 = [a1 kind];
  v19 = sub_1BF4E8914();
  v21 = v20;

  MEMORY[0x1BFB58C90](v19, v21);

  *(a6 + 24) = v25;
  *(a6 + 32) = v26;
  *(a6 + 40) = a1;
  *(a6 + 48) = a2;
  *(a6 + 56) = a3;
  *(a6 + 64) = 0;
  *a6 = v10;
  *(a6 + 8) = v11;
  *(a6 + 16) = v12;
  v22 = type metadata accessor for PushSubscription();
  return sub_1BF3F1D54(a5, a6 + *(v22 + 24));
}

uint64_t PushSubscription.init(widgetExtensionIdentity:pushEnvironment:topic:budget:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a4;
  v9 = *(a4 + 8);
  v10 = *(a4 + 16);
  *(a6 + 24) = a1;
  *(a6 + 32) = a2;
  *(a6 + 48) = 0;
  *(a6 + 56) = 0;
  *(a6 + 40) = a3;
  *(a6 + 64) = 1;
  if (!v9)
  {
    v12 = *MEMORY[0x1E69941B0];
    swift_beginAccess();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
    if ((*(*(v13 - 8) + 48))(&a1[v12], 1, v13))
    {
      swift_endAccess();
      v14 = *MEMORY[0x1E69941B8];
      swift_beginAccess();
      v15 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    }

    else
    {
      v16 = a1;
    }

    v8 = sub_1BF4E76B4();
    v9 = v17;
    swift_endAccess();

    v10 = 1;
  }

  *a6 = v8;
  *(a6 + 8) = v9;
  *(a6 + 16) = v10 & 1;
  v18 = type metadata accessor for PushSubscription();
  return sub_1BF3F1D54(a5, a6 + *(v18 + 24));
}

uint64_t sub_1BF3F12A0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  if (*(v1 + 64))
  {
    v6 = *(v1 + 48);
    v5 = *(v1 + 56);
    v7 = *(v1 + 40);
    v8 = *MEMORY[0x1E69941B8];
    swift_beginAccess();
    v9 = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    v10 = sub_1BF4E76B4();
    v12 = v11;
    swift_endAccess();
    result = sub_1BF3F1B98(v3, v4, v7, v6, v5, 1);
    v3 = v10;
    v4 = v12;
  }

  else
  {
    v14 = *(v1 + 32);
  }

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t PushSubscription.environment.getter()
{
  v1 = 56;
  if (*(v0 + 64))
  {
    v1 = 40;
  }

  v2 = 48;
  if (*(v0 + 64))
  {
    v2 = 32;
  }

  v3 = *(v0 + v1);
  v4 = *(v0 + v2);

  return v4;
}

void *PushSubscription.control.getter()
{
  if (*(v0 + 64))
  {
    return 0;
  }

  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *PushSubscription.widgetExtensionIdentity.getter()
{
  if (*(v0 + 64) != 1)
  {
    return 0;
  }

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

BOOL _s9ChronoKit16PushSubscriptionV0D4TypeO7ControlV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v8 || (sub_1BF4E9734() & 1) != 0)
  {
    sub_1BF3F1508();
    if (sub_1BF4E90A4())
    {
      v9 = v3 == v5 && v4 == v7;
      if (v9 || (sub_1BF4E9734() & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

unint64_t sub_1BF3F1508()
{
  result = qword_1EDC9FDA8;
  if (!qword_1EDC9FDA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC9FDA8);
  }

  return result;
}

BOOL _s9ChronoKit16PushSubscriptionV0D4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 32);
  v43 = v11;
  v44 = *(a2 + 24);
  v12 = *(a2 + 40);
  if ((v7 & 1) == 0)
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      if (v3 == v9 && v2 == v8 || (v33 = *(a1 + 8), v34 = sub_1BF4E9734(), v2 = v33, (v34 & 1) != 0))
      {
        v35 = v2;
        sub_1BF3F1508();
        sub_1BF3F1BEC(v9, v8, v10, v44, v43, 0);
        sub_1BF3F1BEC(v3, v35, v4, v5, v6, 0);
        sub_1BF3F1BEC(v3, v35, v4, v5, v6, 0);
        sub_1BF3F1BEC(v9, v8, v10, v44, v43, 0);
        if (sub_1BF4E90A4())
        {
          if (v5 == v44 && v6 == v43)
          {
            sub_1BF3F1B98(v3, v35, v4, v5, v6, 0);
            sub_1BF3F1B98(v9, v8, v10, v5, v6, 0);
            sub_1BF3F1B98(v9, v8, v10, v5, v6, 0);
            v20 = v3;
            v21 = v35;
            v22 = v4;
            v23 = v5;
            v24 = v6;
            v25 = 0;
            goto LABEL_18;
          }

          v40 = sub_1BF4E9734();
          sub_1BF3F1B98(v3, v35, v4, v5, v6, 0);
          sub_1BF3F1B98(v9, v8, v10, v44, v43, 0);
          sub_1BF3F1B98(v9, v8, v10, v44, v43, 0);
          sub_1BF3F1B98(v3, v35, v4, v5, v6, 0);
          return (v40 & 1) != 0;
        }

        sub_1BF3F1B98(v3, v35, v4, v5, v6, 0);
        sub_1BF3F1B98(v9, v8, v10, v44, v43, 0);
        sub_1BF3F1B98(v9, v8, v10, v44, v43, 0);
        v26 = v3;
        v27 = v35;
        v28 = v4;
        v29 = v5;
        v30 = v6;
        v31 = 0;
      }

      else
      {
        v36 = v33;
        v37 = v6;
        v38 = v6;
        v39 = v2;
        sub_1BF3F1BEC(v3, v36, v4, v5, v38, 0);
        sub_1BF3F1BEC(v9, v8, v10, v44, v43, 0);
        sub_1BF3F1B98(v3, v39, v4, v5, v37, 0);
        v26 = v9;
        v27 = v8;
        v28 = v10;
        v29 = v44;
        v30 = v43;
        v31 = 0;
      }

LABEL_9:
      sub_1BF3F1B98(v26, v27, v28, v29, v30, v31);
      return 0;
    }

LABEL_8:
    v41 = *(a1 + 8);
    sub_1BF3F1BEC(v3, v2, v4, v5, v6, v7);
    sub_1BF3F1BEC(v9, v8, v10, v44, v43, v12);
    sub_1BF3F1B98(v3, v41, v4, v5, v6, v7);
    v26 = v9;
    v27 = v8;
    v28 = v10;
    v29 = v44;
    v30 = v43;
    v31 = v12;
    goto LABEL_9;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    goto LABEL_8;
  }

  v13 = *(a1 + 8);
  v14 = *(a2 + 8);
  sub_1BF3F1508();
  sub_1BF3F1BEC(v9, v8, v10, v44, v43, 1);
  v15 = v4;
  v16 = v5;
  v17 = v4;
  v18 = v6;
  v19 = v16;
  sub_1BF3F1BEC(v3, v13, v15, v16, v18, 1);
  sub_1BF3F1BEC(v3, v13, v17, v19, v18, 1);
  sub_1BF3F1BEC(v9, v8, v10, v44, v43, 1);
  if ((sub_1BF4E90A4() & 1) == 0)
  {
    sub_1BF3F1B98(v3, v13, v17, v19, v18, 1);
    sub_1BF3F1B98(v9, v8, v10, v44, v43, 1);
    sub_1BF3F1B98(v9, v8, v10, v44, v43, 1);
    v26 = v3;
    v27 = v13;
    v28 = v17;
    v29 = v19;
    v30 = v18;
    v31 = 1;
    goto LABEL_9;
  }

  if (v13 == v8 && v17 == v10)
  {
    sub_1BF3F1B98(v3, v13, v17, v19, v18, 1);
    sub_1BF3F1B98(v9, v13, v17, v44, v43, 1);
    sub_1BF3F1B98(v9, v13, v17, v44, v43, 1);
    v20 = v3;
    v21 = v13;
    v22 = v17;
    v23 = v19;
    v24 = v18;
    v25 = 1;
LABEL_18:
    sub_1BF3F1B98(v20, v21, v22, v23, v24, v25);
    return 1;
  }

  v42 = sub_1BF4E9734();
  sub_1BF3F1B98(v3, v13, v17, v19, v18, 1);
  sub_1BF3F1B98(v9, v8, v10, v44, v43, 1);
  sub_1BF3F1B98(v9, v8, v10, v44, v43, 1);
  sub_1BF3F1B98(v3, v13, v17, v19, v18, 1);
  result = 1;
  if ((v42 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1BF3F1B98(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
  }
}

uint64_t sub_1BF3F1BEC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    a3 = a1;
  }

  else
  {
  }

  v7 = a3;
}

uint64_t type metadata accessor for PushSubscription()
{
  result = qword_1EDC9AA10;
  if (!qword_1EDC9AA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF3F1C8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Budget();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF3F1CF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Budget();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF3F1D54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Budget();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL _s9ChronoKit16PushSubscriptionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v4 != v5)
    {
      return 0;
    }
  }

  else if (sub_1BF4E9734() & 1) == 0 || ((v4 ^ v5))
  {
    return 0;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v26 = *(a1 + 24);
  v27 = v7;
  v28 = v8;
  v29 = v9;
  v30 = v10;
  v31 = v11;
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a2 + 56);
  v16 = *(a2 + 64);
  v20 = *(a2 + 24);
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  sub_1BF3F1BEC(v26, v7, v8, v9, v10, v11);
  sub_1BF3F1BEC(v20, v12, v13, v14, v15, v16);
  v17 = _s9ChronoKit16PushSubscriptionV0D4TypeO2eeoiySbAE_AEtFZ_0(&v26, &v20);
  sub_1BF3F1B98(v20, v21, v22, v23, v24, v25);
  sub_1BF3F1B98(v26, v27, v28, v29, v30, v31);
  if (!v17)
  {
    return 0;
  }

  v18 = *(type metadata accessor for PushSubscription() + 24);

  return _s9ChronoKit6BudgetV2eeoiySbAC_ACtFZ_0(a1 + v18, a2 + v18);
}

unint64_t sub_1BF3F1F1C()
{
  result = qword_1EBDD8B50;
  if (!qword_1EBDD8B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8B50);
  }

  return result;
}

unint64_t sub_1BF3F1F74()
{
  result = qword_1EBDD8B58;
  if (!qword_1EBDD8B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8B58);
  }

  return result;
}

unint64_t sub_1BF3F1FCC()
{
  result = qword_1EBDD8B60;
  if (!qword_1EBDD8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8B60);
  }

  return result;
}

unint64_t sub_1BF3F2024()
{
  result = qword_1EBDD8B68;
  if (!qword_1EBDD8B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8B68);
  }

  return result;
}

unint64_t sub_1BF3F207C()
{
  result = qword_1EBDD8B70;
  if (!qword_1EBDD8B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8B70);
  }

  return result;
}

unint64_t sub_1BF3F20D4()
{
  result = qword_1EBDD8B78;
  if (!qword_1EBDD8B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8B78);
  }

  return result;
}

uint64_t sub_1BF3F2160()
{
  result = type metadata accessor for Budget();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BF3F2204(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF3F2240(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BF3F228C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BF3F2300(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BF3F2348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void static Analytics.noteSnapshotFailure(key:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v5[5] = v4;
  v6 = v4;
  v7 = v1;

  if (sub_1BF3F34B4())
  {
  }

  else
  {
    v8 = sub_1BF4E88E4();
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1BF3F2580;
    *(v9 + 24) = v5;
    v11[4] = sub_1BF3F3578;
    v11[5] = v9;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1BF3F3410;
    v11[3] = &block_descriptor_1;
    v10 = _Block_copy(v11);

    AnalyticsSendEventLazy();

    _Block_release(v10);
  }
}

uint64_t sub_1BF3F2580()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_1BF3F2720();
}

void static Analytics.noteTimelineFailure(key:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v5[5] = v4;
  v6 = v4;
  v7 = v1;

  if (sub_1BF3F34B4())
  {
  }

  else
  {
    v8 = sub_1BF4E88E4();
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1BF3F3B00;
    *(v9 + 24) = v5;
    v11[4] = sub_1BF3F3AFC;
    v11[5] = v9;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1BF3F3410;
    v11[3] = &block_descriptor_13;
    v10 = _Block_copy(v11);

    AnalyticsSendEventLazy();

    _Block_release(v10);
  }
}

uint64_t sub_1BF3F2720()
{
  v0 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  sub_1BF4E76B4();
  v1 = sub_1BF4E88E4();
  swift_endAccess();

  v2 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6940(v1, 0xD000000000000019, 0x80000001BF4F99E0, isUniquelyReferenced_nonNull_native);
  v4 = sub_1BF4E88E4();
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6940(v4, 0x7954746567646977, 0xEA00000000006570, v5);
  return v2;
}

void static Analytics.notePlatterFailure(target:)(uint64_t a1)
{
  v2 = type metadata accessor for ActivityKey();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BF3F35E8(a1, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1BF3F364C(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  if (sub_1BF3F34B4())
  {
  }

  else
  {
    v7 = sub_1BF4E88E4();
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1BF3F36B0;
    *(v8 + 24) = v6;
    aBlock[4] = sub_1BF3F3AFC;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BF3F3410;
    aBlock[3] = &block_descriptor_23;
    v9 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v9);
  }
}

uint64_t sub_1BF3F2A10(uint64_t *a1)
{
  v1 = *a1;
  v2 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  sub_1BF4E76B4();
  v3 = sub_1BF4E88E4();
  swift_endAccess();

  v4 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6940(v3, 0xD000000000000019, 0x80000001BF4F99E0, isUniquelyReferenced_nonNull_native);
  return v4;
}

void static Analytics.notePlaceholderFailure(extensionBundleIdentifier:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = aBlock - v6;
  (*(v3 + 16))(aBlock - v6, a1, v2, v5);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v7, v2);
  if (sub_1BF3F34B4())
  {
  }

  else
  {
    v10 = sub_1BF4E88E4();
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1BF3F3710;
    *(v11 + 24) = v9;
    aBlock[4] = sub_1BF3F3AFC;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BF3F3410;
    aBlock[3] = &block_descriptor_33;
    v12 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v12);
  }
}

uint64_t sub_1BF3F2CE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  sub_1BF4E76B4();
  v0 = sub_1BF4E88E4();

  v1 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6940(v0, 0xD000000000000019, 0x80000001BF4F99E0, isUniquelyReferenced_nonNull_native);
  return v1;
}

void static Analytics.noteDiagnosticTriggered(identifier:extensionIdentifier:widgetKind:isRemote:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = *a1;
  sub_1BF4E92E4();

  v20 = 0xD00000000000001ELL;
  v21 = 0x80000001BF4F9960;
  v12 = "staleIntervalLapsed";
  v13 = 0xD000000000000011;
  if (v11 != 1)
  {
    v13 = 0xD000000000000013;
    v12 = "interactionFailed";
  }

  if (v11)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0xD000000000000013;
  }

  if (v11)
  {
    v15 = v12;
  }

  else
  {
    v15 = "idealizedDateComponents";
  }

  MEMORY[0x1BFB58C90](v14, v15 | 0x8000000000000000);

  v16 = swift_allocObject();
  *(v16 + 16) = a6 & 1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;

  if (sub_1BF3F34B4())
  {
  }

  else
  {
    v17 = sub_1BF4E88E4();

    v18 = swift_allocObject();
    *(v18 + 16) = sub_1BF3F377C;
    *(v18 + 24) = v16;
    v24 = sub_1BF3F3AFC;
    v25 = v18;
    v20 = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = sub_1BF3F3410;
    v23 = &block_descriptor_43;
    v19 = _Block_copy(&v20);

    AnalyticsSendEventLazy();

    _Block_release(v19);
  }
}

uint64_t sub_1BF3F2FC8()
{
  v0 = sub_1BF4E8CC4();
  v1 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6940(v0, 0x65746F6D65527369, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v3 = sub_1BF4E88E4();
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6940(v3, 0xD000000000000019, 0x80000001BF4F99E0, v4);
  v5 = sub_1BF4E88E4();
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6940(v5, 0x7954746567646977, 0xEA00000000006570, v6);
  return v1;
}

ChronoKit::Analytics::ArchiveProviderType_optional __swiftcall Analytics.ArchiveProviderType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_1BF3F3104@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

ChronoKit::Analytics::InteractionTarget_optional __swiftcall Analytics.InteractionTarget.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

ChronoKit::Analytics::UpdateFailureType_optional __swiftcall Analytics.UpdateFailureType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 11;
  if (rawValue < 0xB)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void static Analytics.noteLiveActivityInteraction(bundleIdentifier:interactionTarget:)(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *a3;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;

  if (sub_1BF3F34B4())
  {
  }

  else
  {
    v7 = sub_1BF4E88E4();
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1BF3F378C;
    *(v8 + 24) = v6;
    v10[4] = sub_1BF3F3AFC;
    v10[5] = v8;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1BF3F3410;
    v10[3] = &block_descriptor_53;
    v9 = _Block_copy(v10);

    AnalyticsSendEventLazy();

    _Block_release(v9);
  }
}

unint64_t sub_1BF3F32CC(unsigned __int8 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BA0, &qword_1BF4ED350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF4ECFE0;
  *(inited + 32) = 0x79546E6F69746361;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 56) = 0x696669746E656469;
  *(inited + 64) = 0xEA00000000007265;
  *(inited + 72) = sub_1BF4E88E4();
  v3 = sub_1BF3DA5B8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BA8, &qword_1BF4ED358);
  swift_arrayDestroy();
  return v3;
}

id sub_1BF3F3410(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1BF3F1508();
    v5 = sub_1BF4E8744();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1BF3F34B4()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_1BF4E8764();
  if (*(v2 + 16))
  {
    sub_1BF3CD5D0(0xD000000000000011, 0x80000001BF4F9480);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1BF3F3578()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF3F35E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityKey();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF3F364C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityKey();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF3F36B0()
{
  v1 = *(type metadata accessor for ActivityKey() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1BF3F2A10(v2);
}

uint64_t sub_1BF3F3710()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990) - 8) + 80);

  return sub_1BF3F2CE8();
}

uint64_t sub_1BF3F377C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  return sub_1BF3F2FC8();
}

unint64_t sub_1BF3F378C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_1BF3F32CC(*(v0 + 16));
}

unint64_t sub_1BF3F379C()
{
  result = qword_1EBDD8B80;
  if (!qword_1EBDD8B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8B80);
  }

  return result;
}

unint64_t sub_1BF3F37F4()
{
  result = qword_1EBDD8B88;
  if (!qword_1EBDD8B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8B88);
  }

  return result;
}

unint64_t sub_1BF3F384C()
{
  result = qword_1EBDD8B90;
  if (!qword_1EBDD8B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8B90);
  }

  return result;
}

unint64_t sub_1BF3F38A4()
{
  result = qword_1EBDD8B98;
  if (!qword_1EBDD8B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8B98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Analytics.UpdateFailureType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Analytics.UpdateFailureType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t PowerlogOwner.hashValue.getter()
{
  v1 = *v0;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v1);
  return sub_1BF4E9844();
}

unint64_t sub_1BF3F3B98()
{
  result = qword_1EBDD8BB0;
  if (!qword_1EBDD8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8BB0);
  }

  return result;
}

uint64_t CHSWidgetRenderingMode.widgetRenderingMode.getter(uint64_t a1)
{
  if (!a1)
  {
    return MEMORY[0x1EEDE7F40]();
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      return MEMORY[0x1EEDE7F30]();
    }

    return MEMORY[0x1EEDE7F40]();
  }

  return MEMORY[0x1EEDE7F20]();
}

uint64_t sub_1BF3F3C24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EDCA6A00;
  swift_beginAccess();
  v5 = sub_1BF4E8294();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1BF3F3CB0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BF4E8294();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *a2;
  v11 = qword_1EDCA6A00;
  swift_beginAccess();
  (*(v5 + 40))(v10 + v11, v9, v4);
  return swift_endAccess();
}

uint64_t sub_1BF3F3DC8@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDCA6A00;
  swift_beginAccess();
  v4 = sub_1BF4E8294();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t WidgetCacheManager.__allocating_init(subdirectory:fileExtension:descriptorProvider:protectionLevelProvider:fileManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{

  sub_1BF38E49C(a5, v25);
  sub_1BF38E49C(a6, v24);
  v12 = type metadata accessor for WidgetCacheURLProvider();
  v13 = swift_allocObject();
  v13[3] = 0;
  v13[2] = 0;
  swift_beginAccess();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = 0x742D6F6E6F726863;
  v13[5] = 0xEF656E696C656D69;
  sub_1BF38E49C(v25, v23);
  sub_1BF38E49C(v24, v22);
  v20 = v12;
  v21 = &protocol witness table for WidgetCacheURLProvider;
  *&v19 = v13;
  v14 = type metadata accessor for WidgetCacheManager(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();

  sub_1BF4E8284();
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  *(v17 + 160) = 1;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  sub_1BF38E610(v23, v17 + 40);
  sub_1BF38E610(&v19, v17 + 80);
  sub_1BF38E610(v22, v17 + 120);
  *(v17 + 16) = a7;
  return v17;
}

uint64_t sub_1BF3F4084@<X0>(_BYTE *a1@<X8>)
{
  v20 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8C28, &qword_1BF4ED540);
  v21 = *(v1 - 8);
  v2 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - v3;
  v5 = sub_1BF4E7334();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  sub_1BF38C8B4(&qword_1EBDD8C30, &qword_1EBDD8C28, &qword_1BF4ED540);
  v16 = v22;
  sub_1BF4E7034();
  if (v16)
  {
  }

  else
  {
    sub_1BF4E7614();
    (*(v21 + 8))(v4, v1);
    (*(v6 + 32))(v15, v12, v5);
    sub_1BF4E7324();
    v17 = sub_1BF4E7274();
    v18 = *(v6 + 8);
    v18(v9, v5);
    result = (v18)(v15, v5);
    if (v17)
    {
      *v20 = 1;
      return result;
    }
  }

  type metadata accessor for WidgetCacheManager.CacheManagementError(0);
  sub_1BF3A5AA4(&qword_1EBDD8BC8, type metadata accessor for WidgetCacheManager.CacheManagementError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_1BF3F43E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[1] = a1;
  v22[2] = a2;
  v26 = sub_1BF4E8454();
  v4 = *(v26 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + 16);
  v29 = MEMORY[0x1E69E7CC0];
  sub_1BF3A31DC(0, v8, 0);
  v9 = v29;
  if (v8)
  {
    v11 = *(v4 + 16);
    v10 = v4 + 16;
    v12 = a3 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v24 = *(v10 + 56);
    v25 = v11;
    v23 = (v10 - 8);
    do
    {
      v13 = v26;
      v14 = v10;
      v25(v7, v12, v26);
      sub_1BF3A5AA4(&qword_1EDC9D778, MEMORY[0x1E6985A18]);
      sub_1BF4E8B54();
      (*v23)(v7, v13);
      v15 = v27;
      v16 = v28;
      v29 = v9;
      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1BF3A31DC((v17 > 1), v18 + 1, 1);
        v9 = v29;
      }

      *(v9 + 16) = v18 + 1;
      v19 = v9 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      v12 += v24;
      --v8;
      v10 = v14;
    }

    while (v8);
  }

  v27 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  sub_1BF38C8B4(&qword_1EDC9F180, &unk_1EBDD9BB0, &qword_1BF4EC140);
  v20 = sub_1BF4E8894();

  return v20;
}

uint64_t sub_1BF3F464C(void *a1)
{
  v36 = type metadata accessor for WidgetCacheKey();
  v3 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v37 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v31 - v7;
  v9 = sub_1BF4E7194();
  v41 = *(v9 - 8);
  v10 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v34 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v1;
  sub_1BF38E49C(v1 + 40, v38);
  v12 = v39;
  v13 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  v15 = a1[3];
  v14 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, v15);
  v18 = v14 + 40;
  v17 = *(v14 + 40);
  v31[1] = v16;
  v32 = v17;
  v33 = v14;
  v19 = v17(v15, v14);
  v20 = *(v13 + 48);
  v21 = v13;
  v22 = v9;
  v23 = v41;
  v20(v19, v12, v21);

  if ((*(v23 + 48))(v8, 1, v22) == 1)
  {
    sub_1BF38C9B4(v8, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    type metadata accessor for WidgetCacheManager.CacheManagementError(0);
    sub_1BF3A5AA4(&qword_1EBDD8BC8, type metadata accessor for WidgetCacheManager.CacheManagementError);
    swift_allocError();
    *v24 = v32(v15, v33);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v25 = v34;
    (*(v23 + 32))(v34, v8, v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    sub_1BF38E49C(v35 + 80, v38);
    v26 = v39;
    v27 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v28 = v37;
    (*(v23 + 16))(v37, v25, v22);
    v29 = *(v36 + 24);
    *(v28 + *(v36 + 20)) = 0;
    *(v28 + v29) = 0;
    v18 = (*(v27 + 16))(v28, v26, v27);
    (*(v23 + 8))(v25, v22);
    sub_1BF39D654(v28, type metadata accessor for WidgetCacheKey);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
  }

  return v18;
}

uint64_t sub_1BF3F4A08(id *a1)
{
  v2 = sub_1BF4E7194();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BF4E8454();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  v18 = MEMORY[0x1E69E7CD0];
  if (sub_1BF3A53D4(a1))
  {
    (*(v8 + 104))(v12, *MEMORY[0x1E6985A08], v7);
    sub_1BF4AC8C8(v14, v12);
    (*(v8 + 8))(v14, v7);
  }

  sub_1BF3F4FF4(a1, v6);
  v15 = URL.hasRemovedFromStoreExtendedAttribute.getter();
  (*(v3 + 8))(v6, v2);
  if (v15)
  {
    (*(v8 + 104))(v12, *MEMORY[0x1E6985A10], v7);
    sub_1BF4AC8C8(v14, v12);
    (*(v8 + 8))(v14, v7);
  }

  return v18;
}

uint64_t WidgetCacheManager.__allocating_init(identifier:cacheKeyProvider:cacheURLProvider:protectionLevelProvider:fileManager:forReading:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4, __int128 *a5, uint64_t a6, char a7)
{
  v15 = a4[3];
  v14 = a4[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a4, v15);
  v17 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = sub_1BF3F772C(a1, a2, a3, v20, a5, a6, a7, v24[1], v15, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return v22;
}

uint64_t WidgetCacheManager.init(identifier:cacheKeyProvider:cacheURLProvider:protectionLevelProvider:fileManager:forReading:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6, char a7)
{
  sub_1BF4E8284();
  *(v7 + 160) = a7 ^ 1;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  sub_1BF38E610(a3, v7 + 40);
  sub_1BF38E610(a4, v7 + 80);
  sub_1BF38E610(a5, v7 + 120);
  *(v7 + 16) = a6;
  return v7;
}

uint64_t sub_1BF3F4E40()
{
  v1 = qword_1EDCA6A00;
  v2 = sub_1BF4E8294();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t WidgetCacheManager.deinit()
{
  v1 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));
  v2 = qword_1EDCA6A00;
  v3 = sub_1BF4E8294();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t WidgetCacheManager.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));
  v2 = qword_1EDCA6A00;
  v3 = sub_1BF4E8294();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF3F4FF4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8C18, &unk_1BF4ED530);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21[-1] - v6;
  v8 = type metadata accessor for WidgetCacheKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF38E49C(v2 + 40, v21);
  v14 = v22;
  v13 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v13 + 56))(a1, v14, v13);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1BF38C9B4(v7, &qword_1EBDD8C18, &unk_1BF4ED530);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v15 = [*a1 extensionIdentity];
    sub_1BF3F79D0();
    swift_allocError();
    *v16 = v15;
    return swift_willThrow();
  }

  else
  {
    sub_1BF39D9EC(v7, v12, type metadata accessor for WidgetCacheKey);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    sub_1BF38E49C(v2 + 80, v21);
    v18 = v22;
    v19 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (*(v19 + 24))(v12, v18, v19);
    sub_1BF39D654(v12, type metadata accessor for WidgetCacheKey);
    return __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }
}

uint64_t sub_1BF3F5278@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BE0, &qword_1BF4ED500);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21[-1] - v6;
  v8 = type metadata accessor for ControlCacheKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF38E49C(v2 + 40, v21);
  v14 = v22;
  v13 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v13 + 56))(a1, v14, v13);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1BF38C9B4(v7, &qword_1EBDD8BE0, &qword_1BF4ED500);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v15 = [*a1 extensionIdentity];
    sub_1BF3F79D0();
    swift_allocError();
    *v16 = v15;
    return swift_willThrow();
  }

  else
  {
    sub_1BF39D9EC(v7, v12, type metadata accessor for ControlCacheKey);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    sub_1BF38E49C(v2 + 80, v21);
    v18 = v22;
    v19 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (*(v19 + 24))(v12, v18, v19);
    sub_1BF39D654(v12, type metadata accessor for ControlCacheKey);
    return __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }
}

uint64_t sub_1BF3F54FC(id *a1, void (*a2)(uint64_t *__return_ptr, char *, char *), uint64_t a3)
{
  v100 = a3;
  v101 = a2;
  v113[5] = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for ControlEntryKey();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v95 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v96 = &v95 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v95 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BF0, &qword_1BF4ED508);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v105 = &v95 - v14;
  v15 = sub_1BF4E6D64();
  v16 = *(v15 - 8);
  v108 = v15;
  v109 = v16;
  v17 = v16[8];
  MEMORY[0x1EEE9AC00](v15);
  v110 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1BF4E8424();
  v98 = *(v99 - 8);
  v19 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v104 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BF4E7194();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v102 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v95 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v103 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v95 - v33;
  v35 = *(v22 + 56);
  v35(&v95 - v33, 1, 1, v21, v32);
  v111 = v3;
  v36 = v106;
  sub_1BF3F5278(a1, v27);
  v107 = v34;
  if (v36)
  {
    v37 = v22;
    v38 = v21;
    v43 = v108;
    v44 = v110;
    v45 = v111;
    v46 = v107;
    v47 = v109;
    if (*(v111 + 160) == 1)
    {
      v106 = a1;
      v48 = v107;
      v113[0] = v36;
      v49 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
      v50 = v105;
      v51 = swift_dynamicCast();
      v52 = v47[7];
      if (v51)
      {
        v52(v50, 0, 1, v43);
        (v47[4])(v44, v50, v43);
        if (sub_1BF41B748())
        {
          v46 = v48;
          if (qword_1EDC9D4C0 != -1)
          {
            swift_once();
          }

          v53 = sub_1BF4E7B54();
          __swift_project_value_buffer(v53, qword_1EDCA6940);
          v54 = v97;
          sub_1BF3A5A3C(v106, v97, type metadata accessor for ControlEntryKey);
          v55 = sub_1BF4E7B34();
          v56 = sub_1BF4E8E84();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            v113[0] = v111;
            *v57 = 136446210;
            v58 = v96;
            sub_1BF3A5A3C(v54, v96, type metadata accessor for ControlEntryKey);
            sub_1BF39D654(v54, type metadata accessor for ControlEntryKey);
            v59 = ControlEntryKey.description.getter();
            v61 = v60;
            sub_1BF39D654(v58, type metadata accessor for ControlEntryKey);
            v62 = sub_1BF38D65C(v59, v61, v113);

            *(v57 + 4) = v62;
            _os_log_impl(&dword_1BF389000, v55, v56, "Not removing item for key %{public}s because of keybag", v57, 0xCu);
            v63 = v111;
            __swift_destroy_boxed_opaque_existential_1Tm(v111);
            MEMORY[0x1BFB5A5D0](v63, -1, -1);
            MEMORY[0x1BFB5A5D0](v57, -1, -1);

            (v109[1])(v110, v108);
          }

          else
          {
            sub_1BF39D654(v54, type metadata accessor for ControlEntryKey);

            (v109[1])(v110, v43);
          }

          goto LABEL_26;
        }

        (v47[1])(v44, v43);
      }

      else
      {
        v52(v50, 1, 1, v43);
        sub_1BF38C9B4(v50, &qword_1EBDD8BF0, &qword_1BF4ED508);
      }

      v46 = v48;
      v65 = v103;
      sub_1BF38C94C(v48, v103, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
      if ((*(v37 + 48))(v65, 1, v38) == 1)
      {
        sub_1BF38C9B4(v65, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
      }

      else
      {
        v66 = v45;
        v67 = v37;
        v68 = *(v37 + 32);
        v69 = v102;
        v68(v102, v65, v38);
        v70 = v66[2];
        v71 = sub_1BF4E7094();
        v113[0] = 0;
        v72 = [v70 removeItemAtURL:v71 error:v113];

        if (v72)
        {
          v111 = v67;
          v73 = qword_1EDC9EFD8;
          v74 = v113[0];
          if (v73 != -1)
          {
            swift_once();
          }

          v75 = sub_1BF4E7B54();
          __swift_project_value_buffer(v75, qword_1EDCA6A48);
          v76 = v95;
          sub_1BF3A5A3C(v106, v95, type metadata accessor for ControlEntryKey);
          v77 = v36;
          v78 = sub_1BF4E7B34();
          v79 = sub_1BF4E8E84();

          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v110 = v38;
            v81 = v80;
            v108 = swift_slowAlloc();
            v109 = swift_slowAlloc();
            v113[0] = v109;
            *v81 = 136446466;
            v82 = v96;
            sub_1BF3A5A3C(v76, v96, type metadata accessor for ControlEntryKey);
            sub_1BF39D654(v76, type metadata accessor for ControlEntryKey);
            v83 = ControlEntryKey.description.getter();
            v85 = v84;
            sub_1BF39D654(v82, type metadata accessor for ControlEntryKey);
            v86 = sub_1BF38D65C(v83, v85, v113);

            *(v81 + 4) = v86;
            *(v81 + 12) = 2114;
            v87 = v36;
            v88 = _swift_stdlib_bridgeErrorToNSError();
            *(v81 + 14) = v88;
            v89 = v108;
            *v108 = v88;
            _os_log_impl(&dword_1BF389000, v78, v79, "Removing item for key %{public}s because  %{public}@", v81, 0x16u);
            sub_1BF38C9B4(v89, &unk_1EBDD9260, &qword_1BF4EC380);
            MEMORY[0x1BFB5A5D0](v89, -1, -1);
            v90 = v109;
            __swift_destroy_boxed_opaque_existential_1Tm(v109);
            MEMORY[0x1BFB5A5D0](v90, -1, -1);
            MEMORY[0x1BFB5A5D0](v81, -1, -1);

            (v111[1])(v102, v110);
          }

          else
          {
            sub_1BF39D654(v76, type metadata accessor for ControlEntryKey);

            (v111[1])(v102, v38);
          }
        }

        else
        {
          v91 = v113[0];
          v92 = sub_1BF4E6FF4();

          swift_willThrow();
          (*(v67 + 8))(v69, v38);
        }
      }
    }

LABEL_26:
    swift_willThrow();
    result = sub_1BF38C9B4(v46, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    goto LABEL_27;
  }

  sub_1BF38C9B4(v34, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
  (*(v22 + 16))(v34, v27, v21);
  (v35)(v34, 0, 1, v21);
  v39 = v111;
  swift_beginAccess();
  sub_1BF38E49C((v39 + 15), v113);
  v40 = v113[4];
  __swift_project_boxed_opaque_existential_1(v113, v113[3]);
  v106 = a1;
  v41 = [*a1 extensionIdentity];
  v42 = v104;
  v40[2]();

  __swift_destroy_boxed_opaque_existential_1Tm(v113);
  if (v111[20])
  {
    v64 = v111[2];
    sub_1BF3B36F0(v27, v64);
  }

  v101(&v112, v27, v42);
  (*(v98 + 8))(v42, v99);
  (*(v22 + 8))(v27, v21);
  sub_1BF38C9B4(v107, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
  result = v112;
LABEL_27:
  v94 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF3F6194(void **a1)
{
  v2 = *(sub_1BF4E8454() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BF4C86D4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1BF3F623C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1BF3F623C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BF4E9694();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1BF4E8454();
        v6 = sub_1BF4E8C04();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1BF4E8454() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1BF3F662C(v8, v9, a1, v4);
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
    return sub_1BF3F6368(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BF3F6368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1BF4E8454();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v42 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v46 = &v32 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v45 = &v32 - v16;
  v34 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v43 = *(v15 + 16);
    v44 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v40 = (v15 + 32);
    v41 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v39 = -v18;
    v21 = a1 - a3;
    v33 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v37 = v20;
    v38 = a3;
    v35 = v22;
    v36 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v45;
      v25 = v43;
      v43(v45, v22, v8);
      v26 = v46;
      v25(v46, v23, v8);
      sub_1BF3A5AA4(&qword_1EBDD8C20, MEMORY[0x1E6985A18]);
      v27 = sub_1BF4E88A4();
      v28 = *v19;
      (*v19)(v26, v8);
      result = v28(v24, v8);
      if ((v27 & 1) == 0)
      {
LABEL_4:
        a3 = v38 + 1;
        v20 = v37 + v33;
        v21 = v36 - 1;
        v22 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v41)
      {
        break;
      }

      v29 = *v40;
      v30 = v42;
      (*v40)(v42, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v29)(v23, v30, v8);
      v23 += v39;
      v22 += v39;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BF3F662C(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v123 = a1;
  v8 = sub_1BF4E8454();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v128 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v135 = &v120 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v141 = &v120 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v140 = &v120 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v22 = *v123;
    if (!*v123)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_1BF4C86C0(v21);
      v21 = result;
    }

    v143 = v21;
    v116 = *(v21 + 2);
    if (v116 >= 2)
    {
      while (*a3)
      {
        v117 = *&v21[16 * v116];
        v118 = *&v21[16 * v116 + 24];
        sub_1BF3F7054(*a3 + v9[9] * v117, *a3 + v9[9] * *&v21[16 * v116 + 16], *a3 + v9[9] * v118, v22);
        if (v5)
        {
        }

        if (v118 < v117)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1BF4C86C0(v21);
        }

        if (v116 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v119 = &v21[16 * v116];
        *v119 = v117;
        *(v119 + 1) = v118;
        v143 = v21;
        result = sub_1BF4C8634(v116 - 1);
        v21 = v143;
        v116 = *(v143 + 2);
        if (v116 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v120 = a4;
  v20 = 0;
  v138 = (v9 + 1);
  v139 = v9 + 2;
  v137 = (v9 + 4);
  v21 = MEMORY[0x1E69E7CC0];
  v125 = v9;
  v142 = v8;
  v121 = a3;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v35 = v20 + 1;
    }

    else
    {
      v133 = v19;
      v122 = v5;
      v23 = *a3;
      v24 = v9[9];
      v25 = v20;
      v124 = v20;
      v26 = &v23[v24 * (v20 + 1)];
      v27 = v8;
      v28 = v9[2];
      v29 = v140;
      v28(v140, v26, v27);
      v30 = &v23[v24 * v25];
      v31 = v141;
      v132 = v28;
      v28(v141, v30, v27);
      v131 = sub_1BF3A5AA4(&qword_1EBDD8C20, MEMORY[0x1E6985A18]);
      LODWORD(v134) = sub_1BF4E88A4();
      v32 = v9[1];
      v32(v31, v27);
      v130 = v32;
      result = (v32)(v29, v27);
      v33 = v124 + 2;
      v136 = v24;
      v34 = &v23[v24 * (v124 + 2)];
      while (1)
      {
        v35 = v133;
        if (v133 == v33)
        {
          break;
        }

        v36 = v140;
        v37 = v9;
        v38 = v142;
        v39 = v132;
        (v132)(v140, v34, v142);
        v40 = v141;
        v39(v141, v26, v38);
        v41 = sub_1BF4E88A4() & 1;
        v42 = v130;
        (v130)(v40, v38);
        v43 = v38;
        v9 = v37;
        result = v42(v36, v43);
        ++v33;
        v34 += v136;
        v26 += v136;
        if ((v134 & 1) != v41)
        {
          v35 = v33 - 1;
          break;
        }
      }

      v5 = v122;
      v21 = v126;
      v8 = v142;
      a3 = v121;
      v22 = v124;
      if (v134)
      {
        if (v35 < v124)
        {
          goto LABEL_123;
        }

        if (v124 < v35)
        {
          v44 = v35;
          v45 = v136 * (v35 - 1);
          v46 = v35 * v136;
          v133 = v35;
          v47 = v124;
          v48 = v124 * v136;
          do
          {
            if (v47 != --v44)
            {
              v50 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v134 = *v137;
              v134(v128, &v50[v48], v142);
              if (v48 < v45 || &v50[v48] >= &v50[v46])
              {
                v49 = v142;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v49 = v142;
                if (v48 != v45)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v134)(&v50[v45], v128, v49);
              v9 = v125;
              v21 = v126;
            }

            ++v47;
            v45 -= v136;
            v46 -= v136;
            v48 += v136;
          }

          while (v47 < v44);
          v5 = v122;
          v8 = v142;
          v22 = v124;
          v35 = v133;
        }
      }
    }

    v51 = a3[1];
    if (v35 < v51)
    {
      if (__OFSUB__(v35, v22))
      {
        goto LABEL_122;
      }

      if (v35 - v22 < v120)
      {
        if (__OFADD__(v22, v120))
        {
          goto LABEL_124;
        }

        if (v22 + v120 >= v51)
        {
          v52 = a3[1];
        }

        else
        {
          v52 = v22 + v120;
        }

        if (v52 < v22)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v35 != v52)
        {
          break;
        }
      }
    }

    v53 = v35;
    if (v35 < v22)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1BF4322F0(0, *(v21 + 2) + 1, 1, v21);
      v21 = result;
    }

    v55 = *(v21 + 2);
    v54 = *(v21 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_1BF4322F0((v54 > 1), v55 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v56;
    v57 = &v21[16 * v55];
    *(v57 + 4) = v22;
    *(v57 + 5) = v53;
    v22 = *v123;
    if (!*v123)
    {
      goto LABEL_131;
    }

    v129 = v53;
    if (v55)
    {
      while (1)
      {
        v58 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v59 = *(v21 + 4);
          v60 = *(v21 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_52:
          if (v62)
          {
            goto LABEL_110;
          }

          v75 = &v21[16 * v56];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_113;
          }

          v81 = &v21[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_117;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v56 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v85 = &v21[16 * v56];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_66:
        if (v80)
        {
          goto LABEL_112;
        }

        v88 = &v21[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_115;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_73:
        v96 = v58 - 1;
        if (v58 - 1 >= v56)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v97 = *&v21[16 * v96 + 32];
        v98 = *&v21[16 * v58 + 40];
        sub_1BF3F7054(*a3 + v9[9] * v97, *a3 + v9[9] * *&v21[16 * v58 + 32], *a3 + v9[9] * v98, v22);
        if (v5)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1BF4C86C0(v21);
        }

        if (v96 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v99 = &v21[16 * v96];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        v143 = v21;
        result = sub_1BF4C8634(v58);
        v21 = v143;
        v56 = *(v143 + 2);
        v8 = v142;
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v21[16 * v56 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_108;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_109;
      }

      v70 = &v21[16 * v56];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_111;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_114;
      }

      if (v74 >= v66)
      {
        v92 = &v21[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_118;
        }

        if (v61 < v95)
        {
          v58 = v56 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v129;
    if (v129 >= v19)
    {
      goto LABEL_94;
    }
  }

  v122 = v5;
  v100 = *a3;
  v101 = v9[9];
  v136 = v9[2];
  v102 = v100 + v101 * (v35 - 1);
  v103 = -v101;
  v124 = v22;
  v104 = v22 - v35;
  v134 = v100;
  v127 = v101;
  v105 = v100 + v35 * v101;
  v129 = v52;
LABEL_85:
  v132 = v102;
  v133 = v35;
  v130 = v105;
  v131 = v104;
  v106 = v102;
  while (1)
  {
    v107 = v140;
    v108 = v136;
    (v136)(v140, v105, v8);
    v109 = v141;
    v108(v141, v106, v142);
    sub_1BF3A5AA4(&qword_1EBDD8C20, MEMORY[0x1E6985A18]);
    v110 = sub_1BF4E88A4();
    v111 = *v138;
    v112 = v109;
    v8 = v142;
    (*v138)(v112, v142);
    result = v111(v107, v8);
    if ((v110 & 1) == 0)
    {
LABEL_84:
      v35 = v133 + 1;
      v102 = &v132[v127];
      v104 = v131 - 1;
      v105 = &v130[v127];
      v53 = v129;
      if (v133 + 1 != v129)
      {
        goto LABEL_85;
      }

      v5 = v122;
      a3 = v121;
      v9 = v125;
      v21 = v126;
      v22 = v124;
      if (v129 < v124)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v134)
    {
      break;
    }

    v113 = *v137;
    v114 = v135;
    (*v137)(v135, v105, v8);
    swift_arrayInitWithTakeFrontToBack();
    v113(v106, v114, v8);
    v106 += v103;
    v105 += v103;
    if (__CFADD__(v104++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_1BF3F7054(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = sub_1BF4E8454();
  v8 = *(v53 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v53);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v50 = &v41 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v52 = a3;
  v17 = (a2 - a1) / v15;
  v56 = a1;
  v55 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v19;
    if (v19 >= 1)
    {
      v29 = -v15;
      v44 = a4;
      v45 = (v8 + 16);
      v42 = (v8 + 8);
      v43 = a1;
      v30 = a4 + v19;
      v31 = v52;
      v46 = v29;
      do
      {
        v41 = v28;
        v32 = a2 + v29;
        v48 = a2 + v29;
        v49 = v28;
        v47 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v56 = a2;
            v28 = v41;
            goto LABEL_59;
          }

          v34 = v31;
          v52 = v31 + v29;
          v35 = v30 + v29;
          v36 = *v45;
          v37 = v50;
          v38 = v53;
          (*v45)(v50, v30 + v29, v53);
          v39 = v51;
          v36(v51, v32, v38);
          sub_1BF3A5AA4(&qword_1EBDD8C20, MEMORY[0x1E6985A18]);
          LOBYTE(v36) = sub_1BF4E88A4();
          v40 = *v42;
          (*v42)(v39, v38);
          v40(v37, v38);
          if (v36)
          {
            break;
          }

          v31 = v52;
          if (v34 < v30 || v52 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v48;
            a1 = v43;
          }

          else
          {
            v32 = v48;
            a1 = v43;
            if (v34 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v49 = v35;
          v30 = v35;
          v33 = v35 > v44;
          v29 = v46;
          a2 = v47;
          if (!v33)
          {
            v28 = v49;
            goto LABEL_58;
          }
        }

        v31 = v52;
        if (v34 < v47 || v52 >= v47)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v43;
        }

        else
        {
          a2 = v48;
          a1 = v43;
          if (v34 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v49;
        v29 = v46;
      }

      while (v30 > v44);
    }

LABEL_58:
    v56 = a2;
LABEL_59:
    v54 = v28;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v18;
    v54 = a4 + v18;
    if (v18 >= 1 && a2 < v52)
    {
      v47 = *(v8 + 16);
      v48 = v8 + 16;
      v45 = v15;
      v46 = (v8 + 8);
      do
      {
        v21 = v50;
        v22 = v53;
        v23 = v47;
        v47(v50, a2, v53);
        v24 = v51;
        v23(v51, a4, v22);
        sub_1BF3A5AA4(&qword_1EBDD8C20, MEMORY[0x1E6985A18]);
        LOBYTE(v23) = sub_1BF4E88A4();
        v25 = *v46;
        (*v46)(v24, v22);
        v25(v21, v22);
        if (v23)
        {
          v26 = v45;
          if (a1 < a2 || a1 >= v45 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v26;
        }

        else
        {
          v26 = v45;
          v27 = v45 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v55 = v27;
          a4 += v26;
        }

        a1 += v26;
        v56 = a1;
      }

      while (a4 < v49 && a2 < v52);
    }
  }

  sub_1BF3F7648(&v56, &v55, &v54);
  return 1;
}

uint64_t sub_1BF3F7648(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1BF4E8454();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1BF3F772C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24 = a9;
  v25 = a10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v23);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_0, a4, a9);
  v18 = type metadata accessor for WidgetCacheManager(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  sub_1BF4E8284();
  *(v21 + 160) = a7 ^ 1;
  *(v21 + 24) = a1;
  *(v21 + 32) = a2;
  sub_1BF38E610(a3, v21 + 40);
  sub_1BF38E610(&v23, v21 + 80);
  sub_1BF38E610(a5, v21 + 120);
  *(v21 + 16) = a6;
  return v21;
}

uint64_t sub_1BF3F7914()
{
  result = sub_1BF4E9034();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WidgetEntryKey();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BF3F79D0()
{
  result = qword_1EBDD8BE8;
  if (!qword_1EBDD8BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8BE8);
  }

  return result;
}

uint64_t sub_1BF3F7A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v28 = a3;
  v29 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8C00, &qword_1BF4ED528);
  v25 = *(v5 - 8);
  v26 = v5;
  v6 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_1BF4E8424();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - v19;
  sub_1BF38C94C(a4, v12, &qword_1EBDD8AF8, &qword_1BF4EC370);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1BF38C9B4(v12, &qword_1EBDD8AF8, &qword_1BF4EC370);
    return sub_1BF4E7054();
  }

  else
  {
    (*(v14 + 32))(v20, v12, v13);
    (*(v14 + 16))(v18, v20, v13);
    v22 = MEMORY[0x1E69859A8];
    sub_1BF3A5AA4(&qword_1EBDD8C08, MEMORY[0x1E69859A8]);
    sub_1BF3A5AA4(&qword_1EDC96468, v22);
    sub_1BF4E7604();
    sub_1BF38C8B4(&qword_1EBDD8C10, &qword_1EBDD8C00, &qword_1BF4ED528);
    v23 = v26;
    sub_1BF4E7044();
    (*(v25 + 8))(v8, v23);
    return (*(v14 + 8))(v20, v13);
  }
}

void CHSConfiguredWidgetDescriptor.powerlogViewIdentity.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 container];
  if (!v4)
  {
    v10 = [v1 widget];
    v11 = [v2 uniqueIdentifier];
    v12 = sub_1BF4E8914();
    v14 = v13;

    *a1 = v10;
    *(a1 + 8) = v12;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 1;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = v14;
    return;
  }

  v5 = v4;
  if ([v1 isSuggestion])
  {
    v6 = [v5 uniqueIdentifier];
    v7 = sub_1BF4E8914();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v15 = [v2 widget];
  v16 = [v2 uniqueIdentifier];
  v17 = sub_1BF4E8914();
  v19 = v18;

  v20 = [v5 isStack];
  v21 = [v2 container];
  if (!v21)
  {

    goto LABEL_10;
  }

  v22 = v21;
  if ([v21 location] != 1)
  {
    v23 = [v22 location];

    if (v23 > 4)
    {
      if (v23 <= 6)
      {
        v24 = 1;
        if (v23 == 5)
        {
          v23 = 4;
        }

        else
        {
          v23 = 5;
        }

        goto LABEL_12;
      }

      switch(v23)
      {
        case 7:
          v24 = 1;
          v23 = 6;
          goto LABEL_12;
        case 8:
          v24 = 1;
          v23 = 7;
          goto LABEL_12;
        case 9:
          v24 = 1;
          v23 = 8;
          goto LABEL_12;
      }
    }

    else
    {
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          v24 = 1;
          if (v23 == 3)
          {
            v23 = 2;
          }

          else
          {
            v23 = 3;
          }

          goto LABEL_12;
        }

        v23 = 1;
        goto LABEL_11;
      }

      if (!v23)
      {
LABEL_11:
        v24 = 1;
        goto LABEL_12;
      }

      if (v23 == 1)
      {
        v23 = 0;
        v24 = 0;
        goto LABEL_12;
      }
    }

LABEL_10:
    v23 = 0;
    goto LABEL_11;
  }

  v23 = [v22 page];

  v24 = 0;
LABEL_12:
  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 40) = v20;
  *(a1 + 48) = v23;
  *(a1 + 56) = v24;
  *(a1 + 16) = v19;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
}

void CHSConfiguredWidgetDescriptor.powerlogUpdateIdentity.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 container];
  if (!v4)
  {
    v10 = [v1 widget];
    v11 = [v2 uniqueIdentifier];
    v12 = sub_1BF4E8914();
    v14 = v13;

    *a1 = v10;
    *(a1 + 8) = v12;
    *(a1 + 48) = 1;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 16) = v14;
    *(a1 + 24) = 0;
    return;
  }

  v5 = v4;
  if ([v1 isSuggestion])
  {
    v6 = [v5 uniqueIdentifier];
    v7 = sub_1BF4E8914();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v15 = [v2 widget];
  v16 = [v2 uniqueIdentifier];
  v17 = sub_1BF4E8914();
  v19 = v18;

  v20 = [v2 container];
  if (!v20)
  {

    goto LABEL_10;
  }

  v21 = v20;
  if ([v20 location] != 1)
  {
    v22 = [v21 location];

    if (v22 > 4)
    {
      if (v22 <= 6)
      {
        v23 = 1;
        if (v22 == 5)
        {
          v22 = 4;
        }

        else
        {
          v22 = 5;
        }

        goto LABEL_12;
      }

      switch(v22)
      {
        case 7:
          v23 = 1;
          v22 = 6;
          goto LABEL_12;
        case 8:
          v23 = 1;
          v22 = 7;
          goto LABEL_12;
        case 9:
          v23 = 1;
          v22 = 8;
          goto LABEL_12;
      }
    }

    else
    {
      if (v22 > 1)
      {
        if (v22 != 2)
        {
          v23 = 1;
          if (v22 == 3)
          {
            v22 = 2;
          }

          else
          {
            v22 = 3;
          }

          goto LABEL_12;
        }

        v22 = 1;
        goto LABEL_11;
      }

      if (!v22)
      {
LABEL_11:
        v23 = 1;
        goto LABEL_12;
      }

      if (v22 == 1)
      {
        v22 = 0;
        v23 = 0;
        goto LABEL_12;
      }
    }

LABEL_10:
    v22 = 0;
    goto LABEL_11;
  }

  v22 = [v21 page];

  v23 = 0;
LABEL_12:
  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 48) = v23;
  *(a1 + 16) = v19;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v22;
}

void CHSControlConfigurationItem.powerlogViewIdentity(isStateBased:)(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = [v3 location];
  if (v6 <= 4)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        v7 = 1;
        if (v6 == 3)
        {
          v8 = 2;
        }

        else
        {
          v8 = 3;
        }

        goto LABEL_22;
      }

      v8 = 1;
LABEL_18:
      v7 = 1;
      goto LABEL_22;
    }

    if (v6 == 1)
    {
      v8 = 0;
      v7 = 0;
      goto LABEL_22;
    }

LABEL_15:
    v8 = 0;
    goto LABEL_18;
  }

  if (v6 > 6)
  {
    switch(v6)
    {
      case 7:
        v7 = 1;
        v8 = 6;
        goto LABEL_22;
      case 8:
        v7 = 1;
        v8 = 7;
        goto LABEL_22;
      case 9:
        v7 = 1;
        v8 = 8;
        goto LABEL_22;
    }

    goto LABEL_15;
  }

  v7 = 1;
  if (v6 == 5)
  {
    v8 = 4;
  }

  else
  {
    v8 = 5;
  }

LABEL_22:
  v9 = [v3 controlIdentity];
  v10 = [v3 uniqueIdentifier];
  v11 = sub_1BF4E8914();
  v13 = v12;

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  *(a2 + 24) = v8;
  *(a2 + 32) = v7;
  *(a2 + 33) = a1 & 1;
}

void CHSControlConfigurationItem.powerlogUpdateIdentity.getter(uint64_t a1@<X8>)
{
  v3 = [v1 location];
  if (v3 <= 4)
  {
    if (v3 > 1)
    {
      if (v3 != 2)
      {
        v4 = 1;
        if (v3 == 3)
        {
          v5 = 2;
        }

        else
        {
          v5 = 3;
        }

        goto LABEL_22;
      }

      v5 = 1;
LABEL_18:
      v4 = 1;
      goto LABEL_22;
    }

    if (v3 == 1)
    {
      v5 = 0;
      v4 = 0;
      goto LABEL_22;
    }

LABEL_15:
    v5 = 0;
    goto LABEL_18;
  }

  if (v3 > 6)
  {
    switch(v3)
    {
      case 7:
        v4 = 1;
        v5 = 6;
        goto LABEL_22;
      case 8:
        v4 = 1;
        v5 = 7;
        goto LABEL_22;
      case 9:
        v4 = 1;
        v5 = 8;
        goto LABEL_22;
    }

    goto LABEL_15;
  }

  v4 = 1;
  if (v3 == 5)
  {
    v5 = 4;
  }

  else
  {
    v5 = 5;
  }

LABEL_22:
  v6 = [v1 controlIdentity];
  v7 = [v1 uniqueIdentifier];
  v8 = sub_1BF4E8914();
  v10 = v9;

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
}

uint64_t DuetWidgetBudgetIdentity.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DuetWidgetBudgetIdentity.init(for:kind:intentHash:)@<X0>(uint64_t a1@<X0>, char a2@<W4>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v7 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v7);

    v5 = 14906;
    v6 = 0xE200000000000000;
  }

  sub_1BF399080();
  v8 = sub_1BF4E9134();
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v14 = sub_1BF4E76B4();
  v15 = v12;
  MEMORY[0x1BFB58C90](14906, 0xE200000000000000);
  MEMORY[0x1BFB58C90](v8, v10);

  MEMORY[0x1BFB58C90](v5, v6);

  result = (*(*(v11 - 8) + 8))(a1, v11);
  *a3 = v14;
  a3[1] = v15;
  return result;
}

ChronoKit::DuetWidgetBudgetIdentity __swiftcall DuetWidgetBudgetIdentity.init(forStackSuggestionIdentifier:)(Swift::String forStackSuggestionIdentifier)
{
  v2 = v1;
  sub_1BF399080();
  v3 = sub_1BF4E9134();
  v5 = v4;

  strcpy(v10, "suggestion::");
  BYTE5(v10[1]) = 0;
  HIWORD(v10[1]) = -5120;
  MEMORY[0x1BFB58C90](v3, v5);

  v8 = v10[1];
  *v2 = v10[0];
  v2[1] = v8;
  result.identifier._object = v7;
  result.identifier._countAndFlagsBits = v6;
  return result;
}

void DuetWidgetBudgetIdentity.init(for:)(char **a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - v6;
  v8 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  v12 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  (*(v4 + 16))(v7, &v8[v12], v3);
  if (v10)
  {
    v13 = [v10 stableHash];
    v30 = 14906;
    v31 = 0xE200000000000000;
    v28 = v13;
    v14 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v14);

    v15 = v31;
    v24 = v30;
  }

  else
  {
    v24 = 0;
    v15 = 0xE000000000000000;
  }

  v30 = v9;
  v31 = v11;
  v28 = 14906;
  v29 = 0xE200000000000000;
  v26 = 0x413325413325;
  v27 = 0xE600000000000000;
  sub_1BF399080();
  v16 = sub_1BF4E9134();
  v18 = v17;
  v30 = sub_1BF4E76B4();
  v31 = v19;
  MEMORY[0x1BFB58C90](14906, 0xE200000000000000);
  MEMORY[0x1BFB58C90](v16, v18);

  MEMORY[0x1BFB58C90](v24, v15);

  v20 = v30;
  v21 = v31;
  (*(v4 + 8))(v7, v3);

  v22 = v25;
  *v25 = v20;
  v22[1] = v21;
}

void DuetWidgetBudgetIdentity.init(forViewConfiguration:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BF3B253C(a1);
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t DuetWidgetBudgetIdentity.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1BF4E89F4();
}

uint64_t static DuetWidgetBudgetIdentity.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BF4E9734();
  }
}

uint64_t DuetWidgetBudgetIdentity.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BF4E9804();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF3F8BD8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BF4E9804();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF3F8C24()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1BF4E89F4();
}

uint64_t sub_1BF3F8C2C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BF4E9804();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

unint64_t sub_1BF3F8C78()
{
  result = qword_1EBDD8C38;
  if (!qword_1EBDD8C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8C38);
  }

  return result;
}

uint64_t *sub_1BF3F8CCC()
{
  v1 = *v0;
  v0[2] = sub_1BF3F8D20();
  return v0;
}

uint64_t sub_1BF3F8D20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v28 - v2;
  v4 = sub_1BF4E7194();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF3F927C(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1BF38C9B4(v3, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    if (qword_1EDC9D500 != -1)
    {
      swift_once();
    }

    v9 = sub_1BF4E7B54();
    __swift_project_value_buffer(v9, qword_1EDCA69A0);
    v10 = sub_1BF4E7B34();
    v11 = sub_1BF4E8E64();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1BF389000, v10, v11, "Couldn't find nominated container data", v12, 2u);
      MEMORY[0x1BFB5A5D0](v12, -1, -1);
    }
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v13 = [objc_opt_self() defaultManager];
    sub_1BF4E7174();
    v14 = sub_1BF4E88E4();

    v15 = [v13 contentsAtPath_];

    if (v15)
    {
      v16 = sub_1BF4E71C4();
      v18 = v17;

      v19 = sub_1BF4E6F84();
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      swift_allocObject();
      sub_1BF4E6F74();
      type metadata accessor for NominatedContainerPermissions();
      sub_1BF3F9A20();
      sub_1BF4E6F64();
      (*(v5 + 8))(v8, v4);

      sub_1BF3B03C0(v16, v18);
      v26 = *(v28[1] + 16);

      return v26;
    }

    if (qword_1EDC9D500 != -1)
    {
      swift_once();
    }

    v22 = sub_1BF4E7B54();
    __swift_project_value_buffer(v22, qword_1EDCA69A0);
    v23 = sub_1BF4E7B34();
    v24 = sub_1BF4E8E64();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1BF389000, v23, v24, "Couldn't load nominated container data", v25, 2u);
      MEMORY[0x1BFB5A5D0](v25, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BF3F927C@<X0>(uint64_t a1@<X8>)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1BF4E88E4();
  v5 = sub_1BF4E88E4();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_1BF4E7154();

    v7 = 0;
    v3 = v6;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_1BF4E7194();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t sub_1BF3F93C0()
{
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](0);
  return sub_1BF4E9844();
}

uint64_t sub_1BF3F942C()
{
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](0);
  return sub_1BF4E9844();
}

uint64_t sub_1BF3F9488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001BLL && 0x80000001BF4F9A80 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1BF4E9734();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1BF3F951C(uint64_t a1)
{
  v2 = sub_1BF3F99CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF3F9558(uint64_t a1)
{
  v2 = sub_1BF3F99CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF3F9594()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF3F95F0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8C48, &qword_1BF4ED6D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF3F99CC();
  sub_1BF4E9864();
  v11[1] = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  sub_1BF3F9A74(&qword_1EDC963E8);
  sub_1BF4E9674();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BF3F9774(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8C40, &unk_1BF4ED6B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF3F99CC();
  sub_1BF4E9854();
  if (v2)
  {
    type metadata accessor for NominatedContainerPermissions();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
    sub_1BF3F9A74(&qword_1EDC963E0);
    sub_1BF4E95B4();
    (*(v5 + 8))(v8, v4);
    *(v1 + 16) = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1BF3F9950@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for NominatedContainerPermissions();
  v5 = swift_allocObject();
  result = sub_1BF3F9774(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1BF3F99CC()
{
  result = qword_1EDC975A8[0];
  if (!qword_1EDC975A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC975A8);
  }

  return result;
}

unint64_t sub_1BF3F9A20()
{
  result = qword_1EDC97590;
  if (!qword_1EDC97590)
  {
    type metadata accessor for NominatedContainerPermissions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC97590);
  }

  return result;
}

uint64_t sub_1BF3F9A74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NominatedContainerPermissions.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NominatedContainerPermissions.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1BF3F9BC4()
{
  result = qword_1EBDD8C50[0];
  if (!qword_1EBDD8C50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBDD8C50);
  }

  return result;
}

unint64_t sub_1BF3F9C1C()
{
  result = qword_1EDC97598;
  if (!qword_1EDC97598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC97598);
  }

  return result;
}

unint64_t sub_1BF3F9C74()
{
  result = qword_1EDC975A0;
  if (!qword_1EDC975A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC975A0);
  }

  return result;
}

uint64_t sub_1BF3F9CC8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BF4E7194();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  v10 = *a2;
  return sub_1BF3F9E1C(v8);
}

uint64_t sub_1BF3F9D94@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EBDE1E50;
  swift_beginAccess();
  v4 = sub_1BF4E7194();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1BF3F9E1C(uint64_t a1)
{
  v3 = qword_1EBDE1E50;
  swift_beginAccess();
  v4 = sub_1BF4E7194();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t BaseDirectoryCacheKeyProvider.__allocating_init(subsystem:in:fileManager:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  BaseDirectoryCacheKeyProvider.init(subsystem:in:fileManager:)(a1, a2, a3, a4);
  return v11;
}

void *BaseDirectoryCacheKeyProvider.init(subsystem:in:fileManager:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v35[1] = a1;
  v5 = v4;
  v39 = *MEMORY[0x1E69E9840];
  v8 = *v4;
  v9 = sub_1BF4E7194();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v35 - v16;
  *&v38[0] = 0;
  v36 = a4;
  v18 = [a4 URLForDirectory:a3 inDomain:1 appropriateForURL:0 create:1 error:{v38, v15}];
  v19 = *&v38[0];
  if (v18)
  {
    v20 = v18;
    sub_1BF4E7154();
    v21 = v19;

    sub_1BF4E70F4();

    v22 = *(v10 + 8);
    v22(v13, v9);
    v23 = qword_1EBDE1E50;
    (*(v10 + 32))(v5 + qword_1EBDE1E50, v17, v9);
    swift_beginAccess();
    (*(v10 + 16))(v13, v5 + v23, v9);
    v24 = sub_1BF4E7094();
    v22(v13, v9);
    v37 = 0;
    v25 = v36;
    v26 = [v36 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:&v37];

    if (v26)
    {
      v27 = v37;
    }

    else
    {
      v32 = v37;
      sub_1BF4E6FF4();

      swift_willThrow();
    }
  }

  else
  {
    v28 = *&v38[0];

    sub_1BF4E6FF4();

    swift_willThrow();
    v29 = *(v8 + 96);
    v38[0] = *(v8 + 80);
    v38[1] = v29;
    type metadata accessor for BaseDirectoryCacheKeyProvider();
    v30 = *(*v5 + 48);
    v31 = *(*v5 + 52);
    swift_deallocPartialClassInstance();
  }

  v33 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t BaseDirectoryCacheKeyProvider.__allocating_init(cacheURL:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = qword_1EBDE1E50;
  v7 = sub_1BF4E7194();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t BaseDirectoryCacheKeyProvider.init(cacheURL:)(uint64_t a1)
{
  v3 = qword_1EBDE1E50;
  v4 = sub_1BF4E7194();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_1BF3FA3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *MEMORY[0x1E69941A8]);
  swift_beginAccess();
  if (v3[1])
  {
    v11 = *v3;
    v12 = v3[1];

    MEMORY[0x1BFB58C90](47, 0xE100000000000000);
    v4 = *MEMORY[0x1E69941B8];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    v5 = sub_1BF4E76B4();
    v7 = v6;
    swift_endAccess();
    MEMORY[0x1BFB58C90](v5, v7);
  }

  else
  {
    v8 = *MEMORY[0x1E69941B8];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    sub_1BF4E76B4();
    swift_endAccess();
  }

  sub_1BF3FA8C0();

  v9 = sub_1BF4E7194();
  return (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
}

uint64_t sub_1BF3FA560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v31 = v4;
  v32 = a2;
  v5 = *(v4 + 80);
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v29 - v11;
  v13 = sub_1BF4E7194();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - v20;
  v22 = *(*(v4 + 96) + 16);
  v30 = a1;
  v23 = v22(v5, v19);
  sub_1BF3FA3C4(v23, v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1BF3FA9B4(v12);
    return (*(*(*(v31 + 88) - 8) + 56))(v32, 1, 1);
  }

  else
  {
    (*(v14 + 32))(v21, v12, v13);
    v25 = v31;
    v26 = *(v31 + 88);
    (*(v14 + 16))(v17, v21, v13);
    (*(v29 + 16))(v8, v30, v5);
    v27 = *(*(v25 + 104) + 16);
    v28 = v32;
    v27(v17, v8, v26);
    (*(v14 + 8))(v21, v13);
    return (*(*(v26 - 8) + 56))(v28, 0, 1);
  }
}

uint64_t sub_1BF3FA8C0()
{
  v0 = sub_1BF4E7194();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF3F9D94(v4);
  sub_1BF4E70F4();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1BF3FA9B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BaseDirectoryCacheKeyProvider.deinit()
{
  v1 = qword_1EBDE1E50;
  v2 = sub_1BF4E7194();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t BaseDirectoryCacheKeyProvider.__deallocating_deinit()
{
  v1 = qword_1EBDE1E50;
  v2 = sub_1BF4E7194();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF3FAB68()
{
  result = sub_1BF4E7194();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t RelevanceCacheManager.__allocating_init(cacheKeyProvider:descriptorProvider:relevanceCacheUrl:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  RelevanceCacheManager.init(cacheKeyProvider:descriptorProvider:relevanceCacheUrl:)(a1, a2, a3);
  return v9;
}

uint64_t RelevanceCacheManager.init(cacheKeyProvider:descriptorProvider:relevanceCacheUrl:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v37[1] = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v33 - v10;
  v12 = sub_1BF4E7194();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v4 + OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache) = 0;
  sub_1BF38E49C(a1, v4 + 112);
  sub_1BF38E49C(a2, v4 + 152);
  v36 = a3;
  sub_1BF3E90C8(a3, v11);
  v17 = *(v13 + 48);
  if (v17(v11, 1, v12) == 1)
  {
    v18 = CHSWidgetRelevanceServiceCacheDirectory();
    v34 = v4;
    v19 = a2;
    v20 = a1;
    v21 = v18;
    sub_1BF4E7154();

    a1 = v20;
    a2 = v19;
    v4 = v34;
    if (v17(v11, 1, v12) != 1)
    {
      sub_1BF38C9B4(v11, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    }
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
  }

  (*(v13 + 32))(v4 + OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCacheURL, v16, v12);
  v22 = [objc_opt_self() defaultManager];
  v23 = sub_1BF4E7094();
  v37[0] = 0;
  v24 = [v22 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:0 error:v37];

  if ((v24 & 1) == 0)
  {
    v30 = v37[0];
    sub_1BF4E6FF4();

    swift_willThrow();
    goto LABEL_9;
  }

  v25 = v37[0];
  v26 = v35;
  v27 = sub_1BF3FBE24();
  if (v26)
  {
LABEL_9:

    sub_1BF38C9B4(v36, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    __swift_destroy_boxed_opaque_existential_1Tm(a2);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    goto LABEL_10;
  }

  v28 = v27;
  sub_1BF38C9B4(v36, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v29 = *(v4 + OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache);
  *(v4 + OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache) = v28;

LABEL_10:
  v31 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1BF3FB10C(void *a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v45 - v5;
  v7 = sub_1BF4E7194();
  v49 = *(v7 - 8);
  v8 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v45 - v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - v15;
  v17 = [a1 kind];
  v18 = sub_1BF4E8914();
  v20 = v19;

  v50 = v16;
  v21 = v52;
  sub_1BF3FB57C(a1, v16);
  if (v21)
  {
  }

  else
  {
    v46 = v18;
    v47 = v10;
    v52 = v20;
    v48 = v6;
    sub_1BF4E7134();
    v22 = objc_opt_self();
    v23 = [v22 defaultManager];
    v24 = sub_1BF4E7094();
    *&v53 = 0;
    v25 = [v23 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:&v53];

    v26 = v53;
    if (v25)
    {
      v27 = v49;
      v28 = v47;
      v29 = v22;
      v30 = v50;
      (*(v49 + 16))(v47, v50, v7);
      v31 = sub_1BF4E8424();
      v32 = v48;
      (*(*(v31 - 8) + 56))(v48, 1, 1, v31);
      v33 = v26;
      v34 = [v29 defaultManager];
      v54 = sub_1BF3901C0(0, &qword_1EDC96398, 0x1E696AC08);
      v55 = &off_1F3DF3DC0;
      *&v53 = v34;
      v35 = *(v27 + 8);
      v35(v51, v7);
      v35(v30, v7);
      v36 = type metadata accessor for DataProtectedArchiveFilePromise(0);
      v37 = *(v36 + 48);
      v38 = *(v36 + 52);
      v1 = swift_allocObject();
      v39 = OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_intermediates;
      v40 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
      (*(*(v40 - 8) + 56))(v1 + v39, 1, 1, v40);
      *(v1 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise__needsCleanup) = 0;
      v41 = v52;
      *(v1 + 16) = v46;
      *(v1 + 24) = v41;
      (*(v27 + 32))(v1 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_destination, v28, v7);
      sub_1BF38E610(&v53, v1 + 32);
      sub_1BF3C846C(v32, v1 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_protectionLevel);
    }

    else
    {
      v42 = v53;

      sub_1BF4E6FF4();

      swift_willThrow();
      v1 = *(v49 + 8);
      (v1)(v51, v7);
      (v1)(v50, v7);
    }
  }

  v43 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t sub_1BF3FB57C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v4 = sub_1BF4E7AD4();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BF4E7194();
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1BF4E6E14();
  v10 = *(v55 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  v21 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  v22 = [a1 extensionIdentity];
  (*(v21 + 48))();

  v23 = [a1 kind];
  v24 = sub_1BF4E8914();
  v26 = v25;

  v27 = sub_1BF39DC9C(0x32uLL, v24, v26);
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v34 = MEMORY[0x1BFB58C30](v27, v29, v31, v33);
  v36 = v35;

  v53 = v34;
  v54 = v36;
  sub_1BF4E6E04();
  sub_1BF399080();
  sub_1BF4E9144();
  v38 = v37;
  (*(v10 + 8))(v13, v55);

  if (!v38)
  {
    v41 = 2;
    goto LABEL_5;
  }

  sub_1BF3E90C8(v20, v17);
  v40 = v51;
  v39 = v52;
  if ((*(v51 + 48))(v17, 1, v52) == 1)
  {

    sub_1BF38C9B4(v17, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    v41 = 1;
LABEL_5:
    sub_1BF4003A4();
    swift_allocError();
    *v42 = v41;
    swift_willThrow();
    return sub_1BF38C9B4(v20, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
  }

  v44 = v47;
  (*(v40 + 32))(v47, v17, v39);
  (*(v40 + 16))(v50, v44, v39);
  v45 = v46;
  sub_1BF4E7AC4();
  sub_1BF4E70E4();
  (*(v48 + 8))(v45, v49);
  sub_1BF4E70B4();

  sub_1BF4E70C4();
  (*(v40 + 8))(v44, v39);
  return sub_1BF38C9B4(v20, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
}

void sub_1BF3FBA60(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_1BF3FCA18(sub_1BF3FBF20, v2);
}

void sub_1BF3FBAA0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1BF4E71A4();
  if (v2)
  {
    sub_1BF4003A4();
    swift_allocError();
    *v11 = v2;
LABEL_4:
    swift_willThrow();
    return;
  }

  v7 = v5;
  v8 = v6;
  sub_1BF3901C0(0, &qword_1EDC96370, 0x1E696ACD0);
  sub_1BF4E8234();
  v9 = sub_1BF4E8EB4();
  v10 = sub_1BF3B03C0(v7, v8);
  if (!v9)
  {
    sub_1BF4003A4();
    swift_allocError();
    *v13 = 0;
    goto LABEL_4;
  }

  if (*(a1 + OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache))
  {
    MEMORY[0x1EEE9AC00](v10);
    v12 = v9;

    sub_1BF4E7634();

    v14 = sub_1BF4E8214();
    if (v14 >> 62)
    {
      v15 = sub_1BF4E9204();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *a2 = v15;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BF3FBC90(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BF4E7334();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BF4E8224();
  sub_1BF4E7324();
  sub_1BF4E72C4();
  v10 = v9;
  (*(v4 + 8))(v7, v3);
  sub_1BF4E8214();
  v11 = objc_allocWithZone(MEMORY[0x1E6994410]);
  sub_1BF3901C0(0, &qword_1EDC96358, 0x1E69943F8);
  v12 = sub_1BF4E8B84();

  v13 = [v11 initWithWidgetRelevanceKey:a2 supportsBackgroundRefresh:(v8 & 1) == 0 lastRelevanceUpdate:v12 relevances:v10];

  sub_1BF4E7814();
}

uint64_t sub_1BF3FBE24()
{
  v1 = v0;
  if (qword_1EDC9D458 != -1)
  {
    swift_once();
  }

  v2 = sub_1BF4E7B54();
  __swift_project_value_buffer(v2, qword_1EDCA6880);
  v3 = sub_1BF4E7B34();
  v4 = sub_1BF4E8E84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BF389000, v3, v4, "Loading RelevanceCache", v5, 2u);
    MEMORY[0x1BFB5A5D0](v5, -1, -1);
  }

  return sub_1BF3FBF40(v6, v1);
}

void sub_1BF3FBF20(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  sub_1BF3FBAA0(v1[2], a1);
}

uint64_t sub_1BF3FBF40(uint64_t a1, uint64_t a2)
{
  v86 = a2;
  v71 = a1;
  v72 = sub_1BF4E6D54();
  v2 = *(v72 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v87 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v89 = &v66 - v6;
  v7 = sub_1BF4E6D64();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v66 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v83 = &v66 - v15;
  v16 = sub_1BF4E7744();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCacheURL;
  v84 = sub_1BF4E7654();
  v21 = 0;
  v80 = (v17 + 88);
  v79 = *MEMORY[0x1E6994118];
  v70 = (v17 + 8);
  v74 = (v8 + 32);
  v66 = v8;
  v75 = (v8 + 8);
  *&v22 = 138543362;
  v68 = v22;
  *&v22 = 138543618;
  v69 = v22;
  v76 = v13;
  v77 = v7;
  v82 = v16;
  v78 = v20;
  v73 = (v2 + 8);
  while (1)
  {
    sub_1BF4E7164();
    v23 = v88;
    v24 = sub_1BF4E7664();
    if (!v23)
    {
      break;
    }

    v92 = v23;
    v25 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
    if (swift_dynamicCast())
    {
      v26 = (*v80)(v20, v16);
      if (v26 == v79)
      {

        if (qword_1EDC9D458 != -1)
        {
          swift_once();
        }

        v27 = sub_1BF4E7B54();
        __swift_project_value_buffer(v27, qword_1EDCA6880);
        v28 = sub_1BF4E7B34();
        v29 = sub_1BF4E8E64();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_1BF389000, v28, v29, "RelevanceCache corruption detected, rebuilding cache", v30, 2u);
          v31 = v30;
          v7 = v77;
          MEMORY[0x1BFB5A5D0](v31, -1, -1);
        }

        sub_1BF3FD4AC();
        v88 = 0;

        goto LABEL_4;
      }

      (*v70)(v20, v16);
    }

    v92 = v23;
    v32 = v23;
    v33 = v83;
    v34 = swift_dynamicCast();
    v88 = 0;
    if (v34)
    {
      v35 = v72;
      v81 = v24;

      v36 = v76;
      (*v74)(v76, v33, v7);
      sub_1BF4003F8(&qword_1EDC9F110, MEMORY[0x1E6967E98]);
      sub_1BF4E6FC4();
      v37 = v87;
      sub_1BF4E6CF4();
      sub_1BF4003F8(&qword_1EDC9F118, MEMORY[0x1E6967E70]);
      sub_1BF4E8B54();
      sub_1BF4E8B54();
      v38 = v89;
      v39 = v7;
      v40 = *v73;
      (*v73)(v37, v35);
      v40(v38, v35);
      if (v91 == v90 || (sub_1BF4E6FC4(), sub_1BF4E6D04(), sub_1BF4E8B54(), sub_1BF4E8B54(), v40(v87, v35), v40(v89, v35), v91 == v90))
      {
        if (qword_1EDC9D458 != -1)
        {
          swift_once();
        }

        v51 = sub_1BF4E7B54();
        __swift_project_value_buffer(v51, qword_1EDCA6880);
        v52 = v67;
        v54 = v76;
        v53 = v77;
        (*(v66 + 16))(v67, v76, v77);
        v55 = sub_1BF4E7B34();
        v56 = sub_1BF4E8E64();
        v57 = os_log_type_enabled(v55, v56);
        v24 = v81;
        if (v57)
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          *v58 = v68;
          sub_1BF4E6CD4();
          v60 = _swift_stdlib_bridgeErrorToNSError();
          v61 = v52;
          v62 = *v75;
          (*v75)(v61, v53);
          *(v58 + 4) = v60;
          *v59 = v60;
          _os_log_impl(&dword_1BF389000, v55, v56, "RelevanceCache failed due to access permission %{public}@, rethrowing now", v58, 0xCu);
          sub_1BF38C9B4(v59, &unk_1EBDD9260, &qword_1BF4EC380);
          v63 = v59;
          v54 = v76;
          MEMORY[0x1BFB5A5D0](v63, -1, -1);
          MEMORY[0x1BFB5A5D0](v58, -1, -1);
        }

        else
        {

          v64 = v52;
          v62 = *v75;
          (*v75)(v64, v53);
        }

        sub_1BF4E6CD4();
        swift_willThrow();
        v62(v54, v53);

        break;
      }

      (*v75)(v36, v39);

      v7 = v39;
      v24 = v81;
      v16 = v82;
      v20 = v78;
    }

    else
    {

      if (qword_1EDC9D458 != -1)
      {
        swift_once();
      }

      v41 = sub_1BF4E7B54();
      __swift_project_value_buffer(v41, qword_1EDCA6880);
      v42 = v23;
      v43 = sub_1BF4E7B34();
      v44 = sub_1BF4E8E64();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = v69;
        v47 = v23;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        *(v45 + 12) = 2050;
        *(v45 + 14) = v21;
        _os_log_impl(&dword_1BF389000, v43, v44, "RelevanceCache failed to load with error %{public}@, retry %{public}ld", v45, 0x16u);
        sub_1BF38C9B4(v46, &unk_1EBDD9260, &qword_1BF4EC380);
        MEMORY[0x1BFB5A5D0](v46, -1, -1);
        v49 = v45;
        v7 = v77;
        MEMORY[0x1BFB5A5D0](v49, -1, -1);
      }

      else
      {
      }

      v16 = v82;
    }

LABEL_4:
    if (++v21 == 3)
    {
      sub_1BF4003A4();
      swift_allocError();
      *v50 = 3;
      swift_willThrow();
      break;
    }
  }

  return v24;
}

void sub_1BF3FCA18(void (*a1)(uint64_t *__return_ptr), uint64_t a2)
{
  v3 = v2;
  v86 = a2;
  v87 = a1;
  v74 = sub_1BF4E6D54();
  v4 = *(v74 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v88 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v68 - v8;
  v10 = sub_1BF4E6D64();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v68 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v85 = &v68 - v18;
  v19 = sub_1BF4E7744();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v79 = (v24 + 88);
  v72 = (v24 + 8);
  v78 = *MEMORY[0x1E6994118];
  v75 = (v11 + 32);
  v68 = v11;
  v76 = (v11 + 8);
  *&v25 = 138543362;
  v70 = v25;
  *&v25 = 138543618;
  v71 = v25;
  v82 = v10;
  v83 = v22;
  v73 = v16;
  v77 = v9;
  v84 = v26;
  v81 = (v4 + 8);
  while (1)
  {
    v33 = v3;
    v87(&v92);
    if (!v3)
    {
      break;
    }

    v3 = 0;
    v91 = v33;
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
    v35 = v84;
    v36 = swift_dynamicCast();
    v37 = v85;
    if (v36)
    {
      v38 = (*v79)(v22, v35);
      if (v38 == v78)
      {

        if (qword_1EDC9D458 != -1)
        {
          swift_once();
        }

        v39 = sub_1BF4E7B54();
        __swift_project_value_buffer(v39, qword_1EDCA6880);
        v40 = sub_1BF4E7B34();
        v41 = sub_1BF4E8E64();
        v42 = os_log_type_enabled(v40, v41);
        v22 = v83;
        if (v42)
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_1BF389000, v40, v41, "RelevanceCache corruption detected, rebuilding cache", v43, 2u);
          v44 = v43;
          v9 = v77;
          MEMORY[0x1BFB5A5D0](v44, -1, -1);
        }

        sub_1BF3FD4AC();
        v3 = 0;

        goto LABEL_3;
      }

      (*v72)(v22, v35);
    }

    v91 = v33;
    v45 = v33;
    v46 = v82;
    if (swift_dynamicCast())
    {
      v80 = 0;
      v47 = v74;

      (*v75)(v16, v37, v46);
      sub_1BF4003F8(&qword_1EDC9F110, MEMORY[0x1E6967E98]);
      sub_1BF4E6FC4();
      v48 = v88;
      sub_1BF4E6CF4();
      sub_1BF4003F8(&qword_1EDC9F118, MEMORY[0x1E6967E70]);
      sub_1BF4E8B54();
      sub_1BF4E8B54();
      v49 = v48;
      v50 = v16;
      v51 = *v81;
      (*v81)(v49, v47);
      v51(v9, v47);
      if (v90 == v89 || (sub_1BF4E6FC4(), sub_1BF4E6D04(), sub_1BF4E8B54(), sub_1BF4E8B54(), v51(v88, v47), v51(v9, v47), v90 == v89))
      {
        if (qword_1EDC9D458 != -1)
        {
          swift_once();
        }

        v58 = sub_1BF4E7B54();
        __swift_project_value_buffer(v58, qword_1EDCA6880);
        v59 = v69;
        v60 = v82;
        (*(v68 + 16))(v69, v73, v82);
        v61 = sub_1BF4E7B34();
        v62 = sub_1BF4E8E64();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          *v63 = v70;
          sub_1BF4E6CD4();
          v65 = _swift_stdlib_bridgeErrorToNSError();
          v66 = *v76;
          (*v76)(v59, v60);
          *(v63 + 4) = v65;
          *v64 = v65;
          _os_log_impl(&dword_1BF389000, v61, v62, "RelevanceCache failed due to access permission %{public}@, rethrowing now", v63, 0xCu);
          sub_1BF38C9B4(v64, &unk_1EBDD9260, &qword_1BF4EC380);
          MEMORY[0x1BFB5A5D0](v64, -1, -1);
          MEMORY[0x1BFB5A5D0](v63, -1, -1);
        }

        else
        {

          v66 = *v76;
          (*v76)(v59, v60);
        }

        v67 = v73;
        sub_1BF4E6CD4();
        swift_willThrow();
        v66(v67, v60);

        return;
      }

      (*v76)(v50, v46);

      v16 = v50;
      v3 = v80;
      v22 = v83;
    }

    else
    {

      if (qword_1EDC9D458 != -1)
      {
        swift_once();
      }

      v52 = sub_1BF4E7B54();
      __swift_project_value_buffer(v52, qword_1EDCA6880);
      v53 = v33;
      v54 = sub_1BF4E7B34();
      v55 = sub_1BF4E8E64();

      v56 = os_log_type_enabled(v54, v55);
      v22 = v83;
      if (v56)
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = v71;
        v29 = v33;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 4) = v30;
        *v28 = v30;
        *(v27 + 12) = 2050;
        *(v27 + 14) = v23;
        _os_log_impl(&dword_1BF389000, v54, v55, "RelevanceCache failed to load with error %{public}@, retry %{public}ld", v27, 0x16u);
        sub_1BF38C9B4(v28, &unk_1EBDD9260, &qword_1BF4EC380);
        v31 = v28;
        v9 = v77;
        MEMORY[0x1BFB5A5D0](v31, -1, -1);
        v32 = v27;
        v16 = v73;
        MEMORY[0x1BFB5A5D0](v32, -1, -1);
      }

      else
      {
      }
    }

LABEL_3:
    if (++v23 == 3)
    {
      sub_1BF4003A4();
      swift_allocError();
      *v57 = 3;
      swift_willThrow();
      return;
    }
  }
}

uint64_t sub_1BF3FD4AC()
{
  v2 = v0[22];
  v3 = v0[23];
  __swift_project_boxed_opaque_existential_1(v0 + 19, v2);
  v4 = (*(v3 + 24))(v2, v3);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    goto LABEL_15;
  }

  v6 = *(v4 + 16);
  MEMORY[0x1EEE9AC00](v4);
  sub_1BF3901C0(0, &unk_1EDC9D6D8, 0x1E6994388);
  swift_getKeyPath();

  v7 = sub_1BF3FEE8C(v6);

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v8 = sub_1BF4E9204();
  if (!v8)
  {
LABEL_14:

LABEL_15:
    sub_1BF3FD730(v5);
  }

LABEL_4:
  v17 = v5;
  result = sub_1BF4E93A4();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v16 = v1;
    v10 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1BFB59570](v10, v7);
      }

      else
      {
        v12 = *(v7 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = [v12 extensionIdentity];
      v15 = [v13 kind];
      if (!v15)
      {
        sub_1BF4E8914();
        v15 = sub_1BF4E88E4();
      }

      ++v10;
      [objc_allocWithZone(MEMORY[0x1E6994408]) initWithExtensionIdentity:v14 kind:v15];

      sub_1BF4E9374();
      v11 = *(v17 + 16);
      sub_1BF4E93B4();
      sub_1BF4E93C4();
      sub_1BF4E9384();
    }

    while (v8 != v10);

    v5 = v17;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void sub_1BF3FD730(unint64_t a1)
{
  v3 = v2;
  v32[1] = *MEMORY[0x1E69E9840];
  if (qword_1EDC9D458 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v31 = v1;
    v5 = sub_1BF4E7B54();
    __swift_project_value_buffer(v5, qword_1EDCA6880);
    v6 = sub_1BF4E7B34();
    v7 = sub_1BF4E8E64();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1BF389000, v6, v7, "RelevanceCache rebuilding...", v8, 2u);
      MEMORY[0x1BFB5A5D0](v8, -1, -1);
    }

    v9 = objc_opt_self();
    v10 = [v9 defaultManager];
    v11 = sub_1BF4E7094();
    v32[0] = 0;
    v12 = [v10 removeItemAtURL:v11 error:v32];

    v13 = v32[0];
    if (!v12)
    {
      break;
    }

    v14 = v32[0];
    v15 = [v9 defaultManager];
    v16 = sub_1BF4E7094();
    v32[0] = 0;
    v17 = [v15 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:v32];

    v13 = v32[0];
    if (!v17)
    {
      break;
    }

    sub_1BF4E7654();
    v18 = v13;
    sub_1BF4E7164();
    v19 = sub_1BF4E7664();
    v1 = v3;
    if (v3)
    {
      goto LABEL_19;
    }

    v20 = *(v31 + OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache);
    *(v31 + OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache) = v19;

    if (a1 >> 62)
    {
      v3 = sub_1BF4E9204();
      if (!v3)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        goto LABEL_19;
      }
    }

    v21 = 0;
    v22 = a1 & 0xC000000000000001;
    v23 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v22)
      {
        v24 = a1;
        v25 = MEMORY[0x1BFB59570](v21, a1);
      }

      else
      {
        if (v21 >= *(v23 + 16))
        {
          goto LABEL_21;
        }

        v24 = a1;
        v25 = *(a1 + 8 * v21 + 32);
      }

      v26 = v25;
      a1 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v27 = MEMORY[0x1BFB59CC0]();
      sub_1BF3FDA6C(v31, v26);
      v1 = 0;
      objc_autoreleasePoolPop(v27);

      ++v21;
      v28 = a1 == v3;
      a1 = v24;
      if (v28)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }

  v29 = v13;
  sub_1BF4E6FF4();

  swift_willThrow();
LABEL_19:
  v30 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1BF3FDA6C(uint64_t *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v49 - v7;
  v9 = sub_1BF4E7194();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  sub_1BF3FB57C(a2, v8);
  if (v2)
  {

    (*(v10 + 56))(v8, 1, 1, v9);
    return sub_1BF38C9B4(v8, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
  }

  v50 = a1;
  v51 = v13;
  v52 = 0;
  (*(v10 + 56))(v8, 0, 1, v9);
  (*(v10 + 32))(v16, v8, v9);
  if (qword_1EDC9D458 != -1)
  {
    swift_once();
  }

  v18 = sub_1BF4E7B54();
  v19 = __swift_project_value_buffer(v18, qword_1EDCA6880);
  v20 = a2;
  v21 = sub_1BF4E7B34();
  v22 = sub_1BF4E8E64();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138543362;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&dword_1BF389000, v21, v22, "RelevanceCache rebuild insert %{public}@", v23, 0xCu);
    sub_1BF38C9B4(v24, &unk_1EBDD9260, &qword_1BF4EC380);
    MEMORY[0x1BFB5A5D0](v24, -1, -1);
    MEMORY[0x1BFB5A5D0](v23, -1, -1);
  }

  v26 = v52;
  v27 = sub_1BF4E71A4();
  if (v26)
  {
    sub_1BF4003A4();
    v32 = swift_allocError();
    *v33 = v26;
    v34 = v32;
    swift_willThrow();
    v52 = 0;
    v35 = v51;
  }

  else
  {
    v49 = v19;
    v29 = v27;
    v30 = v28;
    sub_1BF3901C0(0, &qword_1EDC96370, 0x1E696ACD0);
    sub_1BF4E8234();
    v31 = sub_1BF4E8EB4();
    result = sub_1BF3B03C0(v29, v30);
    if (v31)
    {
      if (*(v50 + OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache))
      {
        MEMORY[0x1EEE9AC00](result);
        *(&v49 - 2) = v20;
        *(&v49 - 1) = v31;
        v47 = v31;

        sub_1BF4E7634();

        if (sub_1BF4E8214() >> 62)
        {
          sub_1BF4E9204();
        }

        return (*(v10 + 8))(v16, v9);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    sub_1BF4003A4();
    v34 = swift_allocError();
    *v48 = 0;
    swift_willThrow();
    v52 = 0;
    v35 = v51;
  }

  (*(v10 + 16))(v35, v16, v9);
  v36 = sub_1BF4E7B34();
  v37 = sub_1BF4E8E64();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v51 = v34;
    v39 = v38;
    v50 = swift_slowAlloc();
    v53 = v50;
    *v39 = 136446210;
    sub_1BF4003F8(&qword_1EDC9F100, MEMORY[0x1E6968FB0]);
    v40 = sub_1BF4E96A4();
    v49 = v16;
    v42 = v41;
    v43 = *(v10 + 8);
    v43(v35, v9);
    v44 = sub_1BF38D65C(v40, v42, &v53);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_1BF389000, v36, v37, "Failed to append %{public}s when rebuilding cache", v39, 0xCu);
    v45 = v50;
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x1BFB5A5D0](v45, -1, -1);
    MEMORY[0x1BFB5A5D0](v39, -1, -1);

    return (v43)(v49, v9);
  }

  else
  {

    v46 = *(v10 + 8);
    v46(v35, v9);
    return (v46)(v16, v9);
  }
}

void sub_1BF3FE0FC(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache;
  if (*(v1 + OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache))
  {

    v5 = sub_1BF4E7644();

    v6 = a1;
    sub_1BF3FF650(v5, v6);

    if (*(v2 + v3))
    {
      MEMORY[0x1EEE9AC00](v7);

      sub_1BF4E7634();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BF3FE1F8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BF4E91F4();
    sub_1BF3901C0(0, &qword_1EDC96330, 0x1E6994408);
    sub_1BF400254();
    sub_1BF4E8D64();
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    v6 = v19;
  }

  else
  {
    v7 = -1 << *(a2 + 32);
    v3 = a2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a2 + 56);

    v5 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_1BF39A9CC();
      return;
    }

    while (1)
    {
      sub_1BF4E7824();

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1BF4E9234())
      {
        sub_1BF3901C0(0, &qword_1EDC96330, 0x1E6994408);
        swift_dynamicCast();
        v14 = v20;
        v12 = v5;
        v13 = v6;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1BF3FE3E8(uint64_t result)
{
  v3 = OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache;
  if (!*(v1 + OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache))
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;

  v5 = sub_1BF4E7644();

  v6 = sub_1BF3FFD20(v5, v4);

  v7 = *(v1 + v3);
  if (!v7)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  MEMORY[0x1EEE9AC00](result);

  sub_1BF4E7634();

  if (!v2)
  {
    v7 = sub_1BF3BC57C(v6, sub_1BF3BC668, sub_1BF438E1C);
  }

  return v7;
}

void sub_1BF3FE544(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BF4E91F4();
    sub_1BF3901C0(0, &qword_1EDC96330, 0x1E6994408);
    sub_1BF400254();
    sub_1BF4E8D64();
    v2 = v29;
    v4 = v30;
    v5 = v31;
    v6 = v32;
    v7 = v33;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v27 = v4;
  while (v2 < 0)
  {
    if (!sub_1BF4E9234() || (sub_1BF3901C0(0, &qword_1EDC96330, 0x1E6994408), swift_dynamicCast(), v16 = v34, v14 = v6, v15 = v7, !v34))
    {
LABEL_22:
      sub_1BF39A9CC();
      return;
    }

LABEL_18:
    v28 = v15;
    if (qword_1EDC9D458 != -1)
    {
      swift_once();
    }

    v17 = sub_1BF4E7B54();
    __swift_project_value_buffer(v17, qword_1EDCA6880);
    v18 = v16;
    v19 = sub_1BF4E7B34();
    v20 = sub_1BF4E8E64();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = v2;
      v23 = a1;
      v24 = swift_slowAlloc();
      *v21 = 138543362;
      *(v21 + 4) = v18;
      *v24 = v16;
      v25 = v18;
      _os_log_impl(&dword_1BF389000, v19, v20, "RelevanceCacheManager removing abandoned key %{public}@", v21, 0xCu);
      sub_1BF38C9B4(v24, &unk_1EBDD9260, &qword_1BF4EC380);
      v26 = v24;
      a1 = v23;
      v2 = v22;
      v4 = v27;
      MEMORY[0x1BFB5A5D0](v26, -1, -1);
      MEMORY[0x1BFB5A5D0](v21, -1, -1);
    }

    sub_1BF4E7824();
    v6 = v14;
    v11 = (v5 + 64) >> 6;
    v7 = v28;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v2 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_22;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t RelevanceCacheManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  v1 = OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCacheURL;
  v2 = sub_1BF4E7194();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t RelevanceCacheManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  v1 = OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCacheURL;
  v2 = sub_1BF4E7194();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BF3FE9A0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for RelevanceCacheManager();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  RelevanceCacheManager.init(cacheKeyProvider:descriptorProvider:relevanceCacheUrl:)(a1, a2, a3);
  return v9;
}

void sub_1BF3FEA28(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_1BF3FCA18(sub_1BF40058C, v2);
}

void *sub_1BF3FEAB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1BF4387DC(*(a1 + 16), 0);

  v4 = sub_1BF438A7C(&v6, (v3 + 4), v1, a1);

  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

unint64_t *sub_1BF3FEB64(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    sub_1BF3FF224(v7, a2, a3);
    v10 = v9;

    return v10;
  }

  return result;
}

unint64_t *sub_1BF3FEBFC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1BF3FF8B8(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_1BF3FEC98(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8CE0, &qword_1BF4ED968);
  result = sub_1BF4E92B4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1BF4E9094();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1BF3FEE8C(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v37 = v5;
  v38 = result;
  v35 = v1;
  while (1)
  {
    v9 = v8;
    if (!v4)
    {
      while (1)
      {
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v10 >= v5)
        {
          goto LABEL_40;
        }

        v4 = *(v1 + 8 * v10);
        ++v7;
        if (v4)
        {
          v7 = v10;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      return result;
    }

LABEL_10:
    v11 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(result + 56) + v11);
    v42[0] = *(*(result + 48) + v11);
    v42[1] = v12;
    v13 = v42[0];

    swift_getAtKeyPath();

    v14 = v43 >> 62;
    v41 = v43;
    v15 = v43 >> 62 ? sub_1BF4E9204() : *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v9 >> 62;
    v40 = v15;
    if (v9 >> 62)
    {
      break;
    }

    v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = v17 + v15;
    if (__OFADD__(v17, v15))
    {
      goto LABEL_39;
    }

LABEL_14:
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v16)
      {
LABEL_21:
        sub_1BF4E9204();
        v20 = v41;
      }

      else
      {
        v19 = v9 & 0xFFFFFFFFFFFFFF8;
LABEL_20:
        v20 = v41;
        v21 = *(v19 + 16);
      }

      result = sub_1BF4E9324();
      v18 = result;
      v19 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_23;
    }

    if (v16)
    {
      goto LABEL_21;
    }

    v18 = v9;
    v19 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v8 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_20;
    }

    v20 = v41;
LABEL_23:
    v22 = *(v19 + 16);
    v23 = *(v19 + 24);
    v39 = v18;
    if (v14)
    {
      v25 = v19;
      result = sub_1BF4E9204();
      v19 = v25;
      v24 = result;
    }

    else
    {
      v24 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v24)
    {
      if (((v23 >> 1) - v22) < v40)
      {
        goto LABEL_43;
      }

      v26 = v19 + 8 * v22 + 32;
      v36 = v19;
      if (v14)
      {
        if (v24 < 1)
        {
          goto LABEL_45;
        }

        sub_1BF400340();
        for (i = 0; i != v24; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8CE8, &unk_1BF4ED970);
          v28 = sub_1BF3E20B0(v42, i, v20);
          v30 = *v29;
          (v28)(v42, 0);
          v20 = v41;
          *(v26 + 8 * i) = v30;
        }
      }

      else
      {
        sub_1BF3901C0(0, &unk_1EDC9D6D8, 0x1E6994388);
        swift_arrayInitWithCopy();
      }

      v8 = v39;
      v5 = v37;
      result = v38;
      v1 = v35;
      v4 &= v4 - 1;
      if (v40 >= 1)
      {
        v31 = *(v36 + 16);
        v32 = __OFADD__(v31, v40);
        v33 = v31 + v40;
        if (v32)
        {
          goto LABEL_44;
        }

        *(v36 + 16) = v33;
      }
    }

    else
    {

      v4 &= v4 - 1;
      v5 = v37;
      result = v38;
      v8 = v39;
      if (v40 > 0)
      {
        goto LABEL_42;
      }
    }
  }

  v34 = sub_1BF4E9204();
  v8 = v34 + v40;
  if (!__OFADD__(v34, v40))
  {
    goto LABEL_14;
  }

LABEL_39:
  __break(1u);
LABEL_40:

  return v8;
}

void sub_1BF3FF224(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v21 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 8 * v13);
    sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
    v15 = v14;
    v16 = [v15 extensionIdentity];
    v17 = sub_1BF4E90A4();

    if (v17)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:

        sub_1BF3FEC98(a1, v19, v21, a3);
        return;
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

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1BF3FF3A4(uint64_t a1, void *a2)
{
  v3 = v2;
  v33 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v32 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v28 = v7;
    v29 = v3;
    v27[1] = v27;
    MEMORY[0x1EEE9AC00](v9);
    v30 = v27 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v8);
    v31 = 0;
    v10 = 0;
    v3 = a1 + 56;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v7 = v15 | (v10 << 6);
      v18 = *(*(a1 + 48) + 8 * v7);
      sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
      v19 = v18;
      v20 = [v19 extensionIdentity];
      v8 = sub_1BF4E90A4();

      if (v8)
      {
        *&v30[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_1BF3FEC98(v30, v28, v31, a1);

          goto LABEL_17;
        }
      }
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= v14)
      {
        goto LABEL_16;
      }

      v17 = *(v3 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();
  v26 = v32;
  v22 = sub_1BF3FEB64(v25, v7, a1, v26);

  MEMORY[0x1BFB5A5D0](v25, -1, -1);

LABEL_17:
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t sub_1BF3FF650(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1BF3FF3A4(a1, a2);
  }

  v2 = MEMORY[0x1E69E7CD0];
  v19 = MEMORY[0x1E69E7CD0];
  v3 = a2;
  sub_1BF4E91F4();
  if (sub_1BF4E9234())
  {
    sub_1BF3901C0(0, &qword_1EDC96330, 0x1E6994408);
    do
    {
      swift_dynamicCast();
      sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
      v4 = [v18 extensionIdentity];
      v5 = sub_1BF4E90A4();

      if (v5)
      {
        v6 = *(v2 + 16);
        if (*(v2 + 24) <= v6)
        {
          sub_1BF4AD82C(v6 + 1);
        }

        v2 = v19;
        v7 = *(v19 + 40);
        result = sub_1BF4E9094();
        v9 = v19 + 56;
        v10 = -1 << *(v19 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v19 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v19 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v12 == v15;
            if (v12 == v15)
            {
              v12 = 0;
            }

            v14 |= v16;
            v17 = *(v9 + 8 * v12);
          }

          while (v17 == -1);
          v13 = __clz(__rbit64(~v17)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v19 + 48) + 8 * v13) = v18;
        ++*(v19 + 16);
      }

      else
      {
      }
    }

    while (sub_1BF4E9234());
  }

  return v2;
}

void sub_1BF3FF8B8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v22 = 0;
  v23 = a4;
  v20 = a2;
  v21 = a1;
  v4 = 0;
  v24 = a3;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v25 = *(*(v24 + 48) + 8 * v13);
    MEMORY[0x1EEE9AC00](a1);
    v19[2] = &v25;
    v15 = v14;
    v16 = sub_1BF4B93C4(sub_1BF4005A4, v19, v23);

    if ((v16 & 1) == 0)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        v18 = v24;

        sub_1BF3FEC98(v21, v20, v22, v18);
        return;
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

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1BF3FFA60(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  v33[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;
  v32 = a2;

  if (v4 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v27 = &v27;
    v28 = v5;
    MEMORY[0x1EEE9AC00](v7);
    v29 = &v27 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v6);
    v30 = 0;
    v31 = v2;
    v5 = 0;
    v10 = *(v2 + 56);
    v2 += 56;
    v9 = v10;
    v11 = 1 << *(v2 - 24);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9;
    v6 = (v11 + 63) >> 6;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v17 = v14 | (v5 << 6);
      v33[0] = *(*(v31 + 48) + 8 * v17);
      MEMORY[0x1EEE9AC00](v8);
      *(&v27 - 2) = v33;
      v19 = v18;
      v20 = sub_1BF4B93C4(sub_1BF4005A4, (&v27 - 4), v32);

      if ((v20 & 1) == 0)
      {
        *&v29[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_1BF3FEC98(v29, v28, v30, v31);
          goto LABEL_17;
        }
      }
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v6)
      {
        goto LABEL_16;
      }

      v16 = *(v2 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();
  v26 = v32;

  v22 = sub_1BF3FEBFC(v25, v5, v2, v26);

  MEMORY[0x1BFB5A5D0](v25, -1, -1);
LABEL_17:

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t sub_1BF3FFD20(uint64_t a1, unint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1BF3FFA60(a1, a2);
  }

  v3 = MEMORY[0x1E69E7CD0];
  v25 = MEMORY[0x1E69E7CD0];

  sub_1BF4E91F4();
  v4 = sub_1BF4E9234();
  if (v4)
  {
    v5 = v4;
    sub_1BF3901C0(0, &qword_1EDC96330, 0x1E6994408);
    v6 = v5;
    do
    {
      v23 = v6;
      v7 = swift_dynamicCast();
      v23 = v24;
      MEMORY[0x1EEE9AC00](v7);
      v22[2] = &v23;
      v8 = sub_1BF4B93C4(sub_1BF4002BC, v22, a2);
      v9 = v24;
      if (v8)
      {
      }

      else
      {
        v10 = *(v3 + 16);
        if (*(v3 + 24) <= v10)
        {
          sub_1BF4AD82C(v10 + 1);
        }

        v3 = v25;
        v11 = *(v25 + 40);
        result = sub_1BF4E9094();
        v13 = v3 + 56;
        v14 = -1 << *(v3 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v3 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v3 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v16 == v19;
            if (v16 == v19)
            {
              v16 = 0;
            }

            v18 |= v20;
            v21 = *(v13 + 8 * v16);
          }

          while (v21 == -1);
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v3 + 48) + 8 * v17) = v9;
        ++*(v3 + 16);
      }

      v6 = sub_1BF4E9234();
    }

    while (v6);
  }

  return v3;
}

uint64_t sub_1BF3FFFA0(uint64_t a1)
{
  result = sub_1BF4003F8(qword_1EDC99AE8, type metadata accessor for RelevanceCacheManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for RelevanceCacheManager()
{
  result = qword_1EDC99AD0;
  if (!qword_1EDC99AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF40004C()
{
  result = sub_1BF4E7194();
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

unint64_t sub_1BF400254()
{
  result = qword_1EBDD8CD8;
  if (!qword_1EBDD8CD8)
  {
    sub_1BF3901C0(255, &qword_1EDC96330, 0x1E6994408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8CD8);
  }

  return result;
}

uint64_t sub_1BF4002D8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_1BF3901C0(0, &qword_1EDC96330, 0x1E6994408);
  return sub_1BF4E90A4() & 1;
}

unint64_t sub_1BF400340()
{
  result = qword_1EDC963D0;
  if (!qword_1EDC963D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8CE8, &unk_1BF4ED970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC963D0);
  }

  return result;
}

unint64_t sub_1BF4003A4()
{
  result = qword_1EBDD8CF0;
  if (!qword_1EBDD8CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8CF0);
  }

  return result;
}

uint64_t sub_1BF4003F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_9ChronoKit30RelevanceCacheManagerErrorCodeO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BF400480(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF4004E0(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1BF40053C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

void (*sub_1BF40061C(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_1BF4E8424();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR____TtC9ChronoKit26FixedDataProtectionMonitor_maxUnlockedProtectionLevel;
  v5[6] = v8;
  v5[7] = v9;
  swift_beginAccess();
  return sub_1BF40070C;
}