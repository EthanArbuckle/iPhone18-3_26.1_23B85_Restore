uint64_t sub_1ADE88C5C()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE88CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA478, &qword_1AE24D470) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA030, &qword_1AE241810) + 48);
  sub_1ADDDE338(a1, a2, type metadata accessor for Replica);

  return sub_1ADDE56CC(a1 + v4, a2 + v5);
}

uint64_t sub_1ADE88D68(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t **a5)
{
  LOBYTE(v6) = a4;
  v53 = type metadata accessor for Replica();
  v63 = *(v53 - 8);
  v10 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA470, &qword_1AE242530);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v52 - v15;
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v56 = a1;
  v57 = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v58 = v18;
  v59 = 0;
  v60 = v21 & v19;
  v61 = a2;
  v62 = a3;

  v54 = a3;

  sub_1ADF80A84(v16);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA030, &qword_1AE241810);
  if ((*(*(v22 - 8) + 48))(v16, 1, v22) == 1)
  {
LABEL_5:
    sub_1ADDDCE74();
  }

  v24 = *(v22 + 48);
  sub_1ADDDE4D8(v16, v12, type metadata accessor for Replica);
  sub_1ADDE5634(v24 + v16, v55);
  v25 = *a5;
  v26 = sub_1ADDD8A6C(v12);
  v28 = v25[2];
  v29 = (v27 & 1) == 0;
  v30 = __OFADD__(v28, v29);
  v31 = v28 + v29;
  if (v30)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  LOBYTE(v24) = v27;
  if (v25[3] < v31)
  {
    sub_1ADDE4890(v31, v6 & 1);
    v32 = *a5;
    v26 = sub_1ADDD8A6C(v12);
    if ((v24 & 1) == (v33 & 1))
    {
      goto LABEL_11;
    }

LABEL_9:
    v26 = sub_1AE23E27C();
    __break(1u);
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_11:
  if ((v24 & 1) == 0)
  {
    while (1)
    {
      v24 = *a5;
      (*a5)[(v26 >> 6) + 8] |= 1 << v26;
      v34 = v26;
      sub_1ADDDE4D8(v12, v24[6] + *(v63 + 72) * v26, type metadata accessor for Replica);
      v26 = sub_1ADDE5634(v55, v24[7] + 24 * v34);
      v35 = v24[2];
      v30 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (!v30)
      {
        break;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      v51 = v26;
      sub_1ADF6E86C();
      v26 = v51;
      if (v24)
      {
        goto LABEL_24;
      }
    }

    v24[2] = v36;
    v6 = &qword_1EB5BA030;
    v24 = &qword_1AE241810;
    while (1)
    {
      sub_1ADF80A84(v16);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA030, &qword_1AE241810);
      if ((*(*(v37 - 8) + 48))(v16, 1, v37) == 1)
      {
        goto LABEL_5;
      }

      v38 = *(v37 + 48);
      sub_1ADDDE4D8(v16, v12, type metadata accessor for Replica);
      sub_1ADDE5634(&v16[v38], v55);
      v39 = *a5;
      v26 = sub_1ADDD8A6C(v12);
      v41 = v39[2];
      v42 = (v40 & 1) == 0;
      v30 = __OFADD__(v41, v42);
      v43 = v41 + v42;
      if (v30)
      {
        goto LABEL_21;
      }

      v44 = v40;
      if (v39[3] < v43)
      {
        sub_1ADDE4890(v43, 1);
        v45 = *a5;
        v26 = sub_1ADDD8A6C(v12);
        if ((v44 & 1) != (v46 & 1))
        {
          goto LABEL_9;
        }
      }

      if (v44)
      {
        break;
      }

      v47 = *a5;
      (*a5)[(v26 >> 6) + 8] |= 1 << v26;
      v48 = v26;
      sub_1ADDDE4D8(v12, v47[6] + *(v63 + 72) * v26, type metadata accessor for Replica);
      v26 = sub_1ADDE5634(v55, v47[7] + 24 * v48);
      v49 = v47[2];
      v30 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v30)
      {
        goto LABEL_22;
      }

      v47[2] = v50;
    }
  }

LABEL_24:
  result = sub_1AE23DC5C();
  __break(1u);
  return result;
}

uint64_t sub_1ADE89268(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CRDataStoreBundleReadFileVersionPolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](v1);
  return sub_1AE23E34C();
}

uint64_t *CRDataStoreBundle.__allocating_init(_:sync:at:allowedEncodings:allowedAppFormats:writableAppFormats:)(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1ADE91B28(a1, a2, a3, a4, a5, a6);

  return v7;
}

uint64_t *CRDataStoreBundle.init(_:sync:at:allowedEncodings:allowedAppFormats:writableAppFormats:)(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1ADE91910(a1, a2, a3, a4, a5, a6);

  return v7;
}

uint64_t *CRDataStoreBundle.__allocating_init(_:sync:at:allowedEncodings:allowedAppFormats:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AE23BDDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 32);
  v16 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v16;
  v20 = v15;
  (*(v11 + 16))(v14, a3, v10);
  swift_allocObject();
  v17 = sub_1ADE91910(a1, v19, v14, a4, a5, 0);

  (*(v11 + 8))(a3, v10);
  return v17;
}

uint64_t *CRDataStoreBundle.__allocating_init(_:sync:at:version:fileFormatVersion:)(void *a1, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  v6 = sub_1ADE91BA4(a1, a2, a3, a4, a5 & 0x1FFFF);

  return v6;
}

uint64_t *CRDataStoreBundle.__allocating_init(_:sync:at:fileFormatVersion:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = sub_1AE23BDDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 32);
  v14 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v14;
  v20 = v13;
  (*(v9 + 16))(v12, a3, v8);
  v18 = 1;
  v15 = sub_1ADE91BA4(a1, v19, v12, &v18, a4 & 0x1FFFF);

  (*(v9 + 8))(a3, v8);
  return v15;
}

uint64_t *CRDataStoreBundle.__allocating_init(sync:at:fileFormatVersion:)(__int128 *a1, uint64_t a2, int a3)
{
  v6 = sub_1AE23BDDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 4);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v12 = sub_1ADDCE2E4(0, &v18);
  sub_1ADDCEDE0(&v18, &qword_1EB5B9DB0, &qword_1AE240B80);
  v13 = a1[1];
  v18 = *a1;
  v19 = v13;
  v20 = v11;
  (*(v7 + 16))(v10, a2, v6);
  v17 = 1;
  v14 = sub_1ADE91BA4(v12, &v18, v10, &v17, a3 & 0x1FFFF);

  (*(v7 + 8))(a2, v6);
  return v14;
}

uint64_t static CRDataStoreBundle.read(_:url:fileFormatVersion:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v11 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA180, &qword_1AE241B78);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AE2418F0;
  if ((a3 & 0x10000) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  *(v8 + 32) = v9;
  static CRDataStoreBundle.read(_:url:fileVersionPolicy:allowedEncodings:allowedAppFormats:)(a1, a2, &v11, &unk_1F23BBD20, v8, a4);
}

void static CRDataStoreBundle.read(_:url:fileVersionPolicy:allowedEncodings:allowedAppFormats:)(void *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a5;
  v49 = a1;
  v40[0] = a6;
  v51[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1AE23BDDC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v44 = *a3;
  v12 = &unk_1F23BBCF8;
  if (a4)
  {
    v12 = a4;
  }

  v43 = v12;
  v51[0] = 0;
  v13 = swift_allocObject();
  v48 = v13;
  *(v13 + 16) = 0;
  v41 = (v13 + 16);
  v14 = objc_allocWithZone(MEMORY[0x1E696ABF8]);

  v15 = [v14 init];
  v42 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = 0u;
  v40[2] = v16 + 16;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 1;
  v47 = sub_1AE23BD1C();
  v17 = v9;
  (*(v10 + 16))(v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v9);
  v18 = (*(v10 + 80) + 81) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = *(v45 + 80);
  v20 = v49;
  *(v19 + 32) = v13;
  *(v19 + 40) = v20;
  v21 = v46;
  *(v19 + 48) = v43;
  *(v19 + 56) = v21;
  *(v19 + 64) = v15;
  *(v19 + 72) = v16;
  *(v19 + 80) = v44;
  (*(v10 + 32))(v19 + v18, v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  *(v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v51;
  v22 = swift_allocObject();
  v22[2] = sub_1ADE91D6C;
  v22[3] = v19;
  aBlock[4] = sub_1ADE91E28;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADE8AB00;
  aBlock[3] = &block_descriptor_2;
  v23 = _Block_copy(aBlock);

  v24 = v49;
  v25 = v42;

  aBlock[0] = 0;
  v26 = v47;
  [v25 coordinateReadingItemAtURL:v47 options:0 error:aBlock byAccessor:v23];
  _Block_release(v23);

  v27 = aBlock[0];
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  if (v27)
  {

LABEL_10:
    swift_willThrow();
    v30 = v27;

    v31 = v51[0];

LABEL_11:
    v32 = *MEMORY[0x1E69E9840];
    return;
  }

  if (v51[0])
  {
    v51[0];
    goto LABEL_10;
  }

  v28 = v41;
  swift_beginAccess();
  if (*v28)
  {
    v29 = *v28;
    goto LABEL_10;
  }

  swift_beginAccess();
  v33 = *(v16 + 48);
  if (v33 != 1)
  {
    v35 = *(v16 + 32);
    v34 = *(v16 + 40);
    v37 = *(v16 + 16);
    v36 = *(v16 + 24);
    sub_1ADDD86D8(v37, v36);
    sub_1ADDD86D8(v35, v34);

    v38 = v40[0];
    *v40[0] = v37;
    v38[1] = v36;
    v38[2] = v35;
    v38[3] = v34;
    v38[4] = v33;
    v39 = v51[0];

    goto LABEL_11;
  }

  __break(1u);
}

void sub_1ADE89D84(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6, void *a7, char a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v17 = [objc_opt_self() defaultManager];
  sub_1AE23BDAC();
  v18 = sub_1AE23CCDC();

  v19 = [v17 fileExistsAtPath_];

  if (!v19)
  {
    sub_1ADE42E40();
    v24 = swift_allocError();
    *v25 = xmmword_1AE242550;
    *(v25 + 16) = 0;
    swift_beginAccess();
    v26 = *(a2 + 16);
    *(a2 + 16) = v24;

LABEL_10:
    v35 = *MEMORY[0x1E69E9840];
    return;
  }

  v20 = objc_opt_self();
  v21 = sub_1AE23BD1C();
  v22 = [v20 otherVersionsOfItemAtURL_];

  if (v22)
  {
    sub_1ADE926A4();
    v23 = sub_1AE23CFDC();
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  if (a8 == 2)
  {
    if (v23 >> 62)
    {
      if (sub_1AE23D97C())
      {
LABEL_9:
        v37 = sub_1AE23BD1C();
        v27 = swift_allocObject();
        *(v27 + 16) = a11;
        *(v27 + 24) = a12;
        *(v27 + 32) = a3;
        *(v27 + 40) = a4;
        *(v27 + 48) = a5;
        *(v27 + 56) = a6;
        *(v27 + 64) = a7;
        *(v27 + 72) = v23;
        *(v27 + 80) = 2;
        *(v27 + 88) = a2;
        *(v27 + 96) = 0;
        v28 = swift_allocObject();
        *(v28 + 16) = sub_1ADE9265C;
        *(v28 + 24) = v27;
        aBlock[4] = sub_1ADE92800;
        aBlock[5] = v28;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1ADE8AB00;
        aBlock[3] = &block_descriptor_91;
        v29 = _Block_copy(aBlock);

        v30 = a6;

        v31 = a3;

        aBlock[0] = *a10;
        [v30 coordinateWritingItemAtURL:v37 options:0 error:aBlock byAccessor:v29];
        _Block_release(v29);

        v32 = aBlock[0];
        v33 = *a10;
        *a10 = aBlock[0];
        v34 = v32;

        LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

        if (v33)
        {
          __break(1u);
        }

        goto LABEL_10;
      }
    }

    else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }
  }

  sub_1ADE8A198(a1, 1, a3, a4, a5, a6, a7, v23, a8, a2, a11, a12);
  v36 = *MEMORY[0x1E69E9840];
}

void sub_1ADE8A198(unint64_t a1, int a2, char *a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, unint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v109 = a8;
  v107 = a7;
  v112 = a6;
  v113 = a4;
  v114 = a5;
  v110 = a3;
  LODWORD(v111) = a2;
  v121 = *MEMORY[0x1E69E9840];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v104 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v93 - v17;
  v19 = sub_1AE23BDDC();
  v20 = *(v19 - 8);
  v21 = v20[8];
  MEMORY[0x1EEE9AC00](v19);
  v103 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v106 = &v93 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v108 = &v93 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v93 - v28;
  v30 = type metadata accessor for CRDataStoreBundleNonCoordinated();
  v31 = v20[2];
  v31(v29, a1, v19);
  v105 = a1;
  v31(v18, a1, v19);
  v98 = v20;
  v102 = v20[7];
  v102(v18, 0, 1, v19);
  v99 = a11;
  v100 = a12;
  v101 = type metadata accessor for CRDataStoreBundleNonCoordinated.ModelStorage();
  sub_1AE018450();
  v33 = v32;
  v34 = v114;

  v35 = v110;
  v36 = v113;
  v37 = v35;

  v38 = sub_1AE018484(v37, v29, v18, v111, v33, 0, 0, 0, v36, v34, 0);
  v110 = v37;
  v96 = v20 + 7;
  v97 = v30;
  v111 = v19;
  sub_1AE018540();
  sub_1AE018590(&v118);
  v41 = v120;
  v42 = v107;
  swift_beginAccess();
  v43 = v42[2];
  v44 = v42[3];
  v45 = v42[4];
  v46 = v42[5];
  v47 = v42[6];
  v48 = v119;
  *(v42 + 1) = v118;
  *(v42 + 2) = v48;
  v42[6] = v41;
  sub_1ADE92284(v43, v44, v45, v46, v47);
  v49 = v109;
  if (v109 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v92)
  {
    v51 = v111;
    if (!i)
    {
LABEL_18:

      goto LABEL_2;
    }

    if (a9 == 2)
    {
      break;
    }

    if (a9 != 1)
    {
      goto LABEL_18;
    }

    v95 = v38;
    v38 = 0;
    v105 = v49 & 0xC000000000000001;
    v94 = v49 & 0xFFFFFFFFFFFFFF8;
    v98 += 4;
    v93 = i;
    while (1)
    {
      if (v105)
      {
        v54 = MEMORY[0x1B26FC360](v38);
        v52 = v107;
        v53 = v104;
      }

      else
      {
        v52 = v107;
        v53 = v104;
        if (v38 >= *(v94 + 16))
        {
          goto LABEL_33;
        }

        v54 = *(v49 + 8 * v38 + 32);
      }

      if (__OFADD__(v38, 1))
      {
        break;
      }

      v108 = (v38 + 1);
      v55 = v110;
      v56 = [v54 URL];
      sub_1AE23BD8C();

      v57 = [v54 URL];
      v58 = v103;
      sub_1AE23BD8C();

      v59 = v58;
      v60 = v106;
      (*v98)(v53, v59, v51);
      v102(v53, 0, 1, v51);
      sub_1AE018450();
      v62 = v61;
      v63 = v113;

      sub_1AE018484(v55, v60, v53, 1, v62, 0, 1, 0, v63, v64, 0);
      sub_1AE018540();
      sub_1AE018590(&v118);
      if (v120 == 1)
      {
        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }

      v115 = v118;
      v116 = v119;
      v117 = v120;
      swift_beginAccess();
      v51 = v111;
      v65 = v100;
      if (v52[6] == 1)
      {
        goto LABEL_36;
      }

      v66 = v99;
      v67 = type metadata accessor for Capsule();
      Capsule.merge<A>(_:)(&v115, v67, v66, v65);
      swift_endAccess();

      v68 = v116;
      sub_1ADDCC35C(v115, *(&v115 + 1));
      sub_1ADDCC35C(v68, *(&v68 + 1));

      ++v38;
      v49 = v109;
      if (v108 == v93)
      {
        goto LABEL_18;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v91 = v49;
    v92 = sub_1AE23D97C();
    v49 = v91;
  }

  v95 = v38;
  v69 = 0;
  v114 = v49 & 0xC000000000000001;
  v70 = v49 & 0xFFFFFFFFFFFFFF8;
  v38 = (v98 + 1);
  do
  {
    if (v114)
    {
      v71 = MEMORY[0x1B26FC360](v69, v49);
    }

    else
    {
      if (v69 >= *(v70 + 16))
      {
        goto LABEL_31;
      }

      v71 = *(v49 + 8 * v69 + 32);
    }

    v72 = v71;
    v73 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v74 = [v71 URL];
    v75 = v108;
    sub_1AE23BD8C();

    sub_1AE0185EC();
    (*v38)(v75, v51);

    ++v69;
    v49 = v109;
  }

  while (v73 != i);
  v76 = objc_opt_self();
  v77 = sub_1AE23BD1C();
  *&v118 = 0;
  v78 = [v76 removeOtherVersionsOfItemAtURL:v77 error:&v118];

  v79 = v118;
  if (v78)
  {
    sub_1AE018590(&v118);
    v80 = v79;

    v81 = v120;
    v82 = v107;
    swift_beginAccess();
    v83 = v82[2];
    v84 = v82[3];
    v85 = v82[4];
    v86 = v82[5];
    v87 = v82[6];
    v88 = v119;
    *(v82 + 1) = v118;
    *(v82 + 2) = v88;
    v82[6] = v81;
    sub_1ADE92284(v83, v84, v85, v86, v87);
  }

  else
  {
    v89 = v118;
    v90 = sub_1AE23BC9C();

    swift_willThrow();

    swift_beginAccess();
    v39 = *(a10 + 16);
    *(a10 + 16) = v90;
  }

LABEL_2:
  v40 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1ADE8AB00(uint64_t a1)
{
  v2 = sub_1AE23BDDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1AE23BD8C();
  v8(v6);
  return (*(v3 + 8))(v6, v2);
}

void static CRDataStoreBundle.write(_:model:url:allowedEncodings:allowedAppFormats:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = *MEMORY[0x1E69E9840];
  v11 = *(a2 + 16);
  v35[0] = *a2;
  v35[1] = v11;
  v36 = *(a2 + 32);
  v12 = *(a4 + 16);
  v13 = (a4 + 32);
  while (v12)
  {
    v14 = *v13++;
    --v12;
    if (!v14)
    {
      sub_1ADE42E40();
      swift_allocError();
      *v15 = 0xD00000000000002ALL;
      *(v15 + 8) = 0x80000001AE2604C0;
      *(v15 + 16) = 0;
      swift_willThrow();
      goto LABEL_11;
    }
  }

  v34 = 0;
  v16 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) initWithFilePresenter_];
  v31 = sub_1AE23BD1C();
  v17 = swift_allocObject();
  *(v17 + 16) = v6;
  v18 = *(a2 + 16);
  *(v17 + 24) = *a2;
  *(v17 + 40) = v18;
  *(v17 + 56) = *(a2 + 32);
  *(v17 + 64) = a1;
  *(v17 + 72) = a4;
  *(v17 + 80) = a5;
  *(v17 + 88) = v16;
  *(v17 + 96) = &v34;
  v19 = swift_allocObject();
  v19[2] = sub_1ADE91E50;
  v19[3] = v17;
  aBlock[4] = sub_1ADE92800;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADE8AB00;
  aBlock[3] = &block_descriptor_20;
  v20 = _Block_copy(aBlock);
  v21 = a1;

  v22 = v16;

  v23 = *(v6 + 80);
  v24 = *(v6 + 88);
  v25 = type metadata accessor for Capsule();
  (*(*(v25 - 8) + 16))(v33, v35, v25);

  aBlock[0] = 0;
  [v22 coordinateWritingItemAtURL:v31 options:0 error:aBlock byAccessor:v20];
  _Block_release(v20);

  v26 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v26)
  {
  }

  else
  {
    if (!v34)
    {

      goto LABEL_11;
    }

    v28 = v34;
  }

  swift_willThrow();
  v29 = v26;

LABEL_11:
  v30 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1ADE8AF2C(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v49 = a6;
  v50 = a5;
  v48 = a4;
  v13 = *a3;
  v47 = a3[1];
  v45 = v13;
  v46 = *(a3 + 4);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v39 - v16;
  v18 = sub_1AE23BDDC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADE8B248();
  v40 = a7;
  v41 = a8;
  v23 = *(a2 + 88);
  v42 = *(a2 + 80);
  v43 = v17;
  v44 = v22;
  type metadata accessor for CRDataStoreBundleNonCoordinated.ModelStorage();
  sub_1AE018450();
  v25 = v24;
  swift_beginAccess();
  v26 = v25[2];
  v27 = v25[3];
  v28 = v25[4];
  v29 = v25[5];
  v30 = v25[6];
  v31 = v47;
  *(v25 + 1) = v45;
  *(v25 + 2) = v31;
  v25[6] = v46;
  sub_1ADE92284(v26, v27, v28, v29, v30);
  *&v47 = type metadata accessor for CRDataStoreBundleNonCoordinated();
  v32 = *(v19 + 16);
  v32(v22, a1, v18);
  v33 = v43;
  v32(v43, a1, v18);
  (*(v19 + 56))(v33, 0, 1, v18);
  v34 = type metadata accessor for Capsule();
  (*(*(v34 - 8) + 16))(v51, a3, v34);
  v35 = v48;

  v36 = v50;

  sub_1AE018484(v35, v44, v33, 0, v25, 0, 0, 1, v36, v37, 0);
  sub_1AE01864C(v40);
}

id sub_1ADE8B248()
{
  v22 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  sub_1AE23BDAC();
  v2 = sub_1AE23CCDC();

  v3 = [v1 fileExistsAtPath:v2 isDirectory:&v21];

  if (v3)
  {
    if (v21 == 1)
    {
      v4 = [v0 defaultManager];
      sub_1AE23BDAC();
      v5 = sub_1AE23CCDC();

      v20 = 0;
      v6 = [v4 contentsOfDirectoryAtPath:v5 error:&v20];

      v7 = v20;
      if (v6)
      {
        v8 = sub_1AE23CFDC();
        v9 = v7;

        v10 = *(v8 + 16);

        if (!v10)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v16 = v20;
        v17 = sub_1AE23BC9C();

        swift_willThrow();
      }
    }

    sub_1ADE42E40();
    swift_allocError();
    *v18 = 0xD000000000000014;
    *(v18 + 8) = 0x80000001AE2605D0;
    *(v18 + 16) = 0;
    goto LABEL_10;
  }

LABEL_5:
  v11 = [v0 defaultManager];
  v12 = sub_1AE23BD1C();
  v20 = 0;
  v13 = [v11 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:&v20];

  if (!v13)
  {
    v15 = v20;
    sub_1AE23BC9C();

LABEL_10:
    result = swift_willThrow();
    goto LABEL_11;
  }

  result = v20;
LABEL_11:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static CRDataStoreBundle.writeAsync(_:model:url:allowedEncodings:allowedAppFormats:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 128) = a5;
  *(v6 + 136) = v5;
  *(v6 + 112) = a3;
  *(v6 + 120) = a4;
  *(v6 + 96) = a1;
  *(v6 + 104) = a2;
  v7 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a2 + 32);
  return MEMORY[0x1EEE6DFA0](sub_1ADE8B4EC, 0, 0);
}

uint64_t sub_1ADE8B4EC()
{
  v1 = v0[15];
  v2 = *(v1 + 16);
  v3 = (v1 + 32);
  while (v2)
  {
    v4 = *v3++;
    --v2;
    if (!v4)
    {
      sub_1ADE42E40();
      swift_allocError();
      *v5 = 0xD00000000000002ALL;
      *(v5 + 8) = 0x80000001AE2604C0;
      *(v5 + 16) = 0;
      swift_willThrow();
      v6 = v0[1];

      return v6();
    }
  }

  if (qword_1EB5B9C18 != -1)
  {
    swift_once();
    v1 = v0[15];
  }

  v8 = v0[16];
  v9 = v0[17];
  v10 = v0[12];
  v11 = v0[13];
  v0[18] = qword_1EB5D7CD0;
  v12 = swift_allocObject();
  v0[19] = v12;
  *(v12 + 16) = v9;
  v13 = *(v11 + 16);
  v14 = *(v11 + 32);
  *(v12 + 24) = *v11;
  *(v12 + 40) = v13;
  *(v12 + 56) = v14;
  *(v12 + 64) = v10;
  *(v12 + 72) = v1;
  *(v12 + 80) = v8;
  v15 = *(v9 + 80);
  v16 = *(v9 + 88);
  v17 = type metadata accessor for Capsule();
  (*(*(v17 - 8) + 16))(v0 + 7, v0 + 2, v17);
  v18 = v10;

  v19 = swift_task_alloc();
  v0[20] = v19;
  *v19 = v0;
  v19[1] = sub_1ADE8B728;
  v20 = v0[14];

  return sub_1ADE8ED9C(v19, v20, 0, &unk_1AE242580, v12);
}

uint64_t sub_1ADE8B728()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v8 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = sub_1ADE8B864;
  }

  else
  {
    v6 = *(v2 + 152);

    v5 = sub_1ADE8B84C;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1ADE8B864()
{
  v1 = *(v0 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1ADE8B8CC, 0, 0);
}

uint64_t sub_1ADE8B8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = a8;
  *(v8 + 136) = v16;
  *(v8 + 112) = a6;
  *(v8 + 120) = a7;
  *(v8 + 96) = a4;
  *(v8 + 104) = a5;
  *(v8 + 80) = a2;
  *(v8 + 88) = a3;
  v9 = *(a5 + 16);
  *(v8 + 144) = *a5;
  *(v8 + 160) = v9;
  *(v8 + 176) = *(a5 + 32);
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90) - 8) + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  v11 = sub_1AE23BDDC();
  *(v8 + 192) = v11;
  v12 = *(v11 - 8);
  *(v8 + 200) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1ADE8BA00, 0, 0);
}

uint64_t sub_1ADE8BA00()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  sub_1ADE8B248();
  v3 = *(v0 + 200);
  v31 = *(v0 + 208);
  v4 = *(v0 + 192);
  v25 = *(v0 + 184);
  v5 = *(v0 + 176);
  v30 = *(v0 + 128);
  v28 = *(v0 + 112);
  v29 = *(v0 + 120);
  v27 = *(v0 + 104);
  v6 = *(v0 + 96);
  v7 = *(v0 + 80);
  v8 = *(v6 + 80);
  v24 = *(v6 + 88);
  type metadata accessor for CRDataStoreBundleNonCoordinated.ModelStorage();
  v26 = *(v0 + 160);
  v23 = *(v0 + 144);
  sub_1AE018450();
  v10 = v9;
  *(v0 + 216) = v9;
  swift_beginAccess();
  v11 = v10[2];
  v12 = v10[3];
  v13 = v10[4];
  v14 = v10[5];
  v15 = v10[6];
  *(v10 + 1) = v23;
  *(v10 + 2) = v26;
  v10[6] = v5;
  sub_1ADE92284(v11, v12, v13, v14, v15);
  type metadata accessor for CRDataStoreBundleNonCoordinated();
  v16 = *(v3 + 16);
  v16(v31, v7, v4);
  v16(v25, v7, v4);
  (*(v3 + 56))(v25, 0, 1, v4);
  v17 = type metadata accessor for Capsule();
  (*(*(v17 - 8) + 16))(v0 + 16, v27, v17);
  v18 = v28;

  *(v0 + 224) = sub_1AE018484(v18, v31, v25, 0, v10, 0, 0, 0, v29, v19, 0);
  v20 = *(v0 + 88);
  v21 = swift_task_alloc();
  *(v0 + 232) = v21;
  *v21 = v0;
  v21[1] = sub_1ADE8BCE8;

  return sub_1AE018748(v20);
}

uint64_t sub_1ADE8BCE8()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_1ADE8BE88;
  }

  else
  {
    v3 = sub_1ADE8BDFC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1ADE8BDFC()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[23];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1ADE8BE88()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);

  v3 = *(v0 + 208);
  v4 = *(v0 + 184);
  **(v0 + 136) = *(v0 + 240);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t static CRDataStoreBundle.write(_:model:url:version:fileFormatVersion:)(void *a1, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  v8 = *(a2 + 32);
  v9 = *a4;
  v10 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v10;
  v16 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA188, &unk_1AE242290);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AE2418F0;
  *(v11 + 32) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA180, &qword_1AE241B78);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AE2418F0;
  if ((a5 & 0x10000) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = a5;
  }

  *(v12 + 32) = v13;
  static CRDataStoreBundle.write(_:model:url:allowedEncodings:allowedAppFormats:)(a1, v15, a3, v11, v12);
}

uint64_t static CRDataStoreBundle.write(_:model:url:fileFormatVersion:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(a2 + 32);
  v8 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v8;
  v13 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA180, &qword_1AE241B78);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AE2418F0;
  if ((a4 & 0x10000) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = a4;
  }

  *(v9 + 32) = v10;
  static CRDataStoreBundle.write(_:model:url:allowedEncodings:allowedAppFormats:)(a1, v12, a3, &unk_1F23BBDC0, v9);
}

void static CRDataStoreBundle.write(_:url:fileFormatVersion:)(__int128 *a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 4);
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v7 = sub_1ADDCE2E4(0, &v11);
  sub_1ADDCEDE0(&v11, &qword_1EB5B9DB0, &qword_1AE240B80);
  v8 = a1[1];
  v11 = *a1;
  v12 = v8;
  v13 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA180, &qword_1AE241B78);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AE2418F0;
  if ((a3 & 0x10000) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = a3;
  }

  *(v9 + 32) = v10;
  static CRDataStoreBundle.write(_:model:url:allowedEncodings:allowedAppFormats:)(v7, &v11, a2, &unk_1F23BBDE8, v9);
}

uint64_t static CRDataStoreBundle.canRead(url:allowedEncodings:allowedAppFormats:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = 1;
  v5 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  v6 = sub_1AE23BD1C();
  v7 = swift_allocObject();
  v7[2] = &v15;
  v7[3] = a2;
  v7[4] = a3;
  v8 = swift_allocObject();
  v8[2] = sub_1ADE91F5C;
  v8[3] = v7;
  v14[4] = sub_1ADE92800;
  v14[5] = v8;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1ADE8AB00;
  v14[3] = &block_descriptor_38;
  v9 = _Block_copy(v14);

  v14[0] = 0;
  [v5 coordinateReadingItemAtURL:v6 options:0 error:v14 byAccessor:v9];
  _Block_release(v9);

  v10 = v14[0];
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  v11 = v15;

  if (v10)
  {
    result = 0;
  }

  else
  {
    result = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1ADE8C3CC(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v6 = sub_1AE23BDDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  sub_1AE23BDAC();
  v12 = sub_1AE23CCDC();

  v13 = [v11 fileExistsAtPath_];

  if (v13)
  {
    v26[1] = a2;
    sub_1AE23BD3C();
    v14 = sub_1AE23BDAC();
    v16 = v15;
    (*(v7 + 8))(v10, v6);
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    v17 = *(a3 + 16);
    v18 = MEMORY[0x1E69E7CC0];
    if (v17)
    {
      v28 = MEMORY[0x1E69E7CC0];
      sub_1ADE6F41C(0, v17, 0);
      v18 = v28;
      v19 = (a3 + 32);
      do
      {
        v20 = *v19++;
        v21 = v20 == 2;
        if (v20 >= 2)
        {
          v28 = v18;
          if (v21)
          {
            v22 = 2;
          }

          else
          {
            v22 = 3;
          }
        }

        else
        {
          v28 = v18;
          v22 = 1;
        }

        v24 = *(v18 + 16);
        v23 = *(v18 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1ADE6F41C((v23 > 1), v24 + 1, 1);
          v18 = v28;
        }

        *(v18 + 16) = v24 + 1;
        *(v18 + 2 * v24 + 32) = v22;
        --v17;
      }

      while (v17);
    }

    type metadata accessor for CRSQLStore();
    inited = swift_initStackObject();
    *(inited + 104) = 0u;
    *(inited + 120) = 0u;
    *(inited + 136) = 0u;
    *(inited + 152) = 0u;
    *(inited + 168) = 0u;
    *(inited + 184) = 0u;
    *(inited + 200) = 0u;
    *(inited + 216) = 0u;
    *(inited + 232) = 0u;
    *(inited + 248) = 0u;
    *(inited + 88) = 0u;
    *(inited + 264) = 0u;
    *(inited + 280) = 0u;
    swift_beginAccess();
    sub_1ADE9241C(v29, inited + 88);
    swift_endAccess();
    *(inited + 24) = v16;
    *(inited + 32) = 0;
    *(inited + 40) = 0;
    *(inited + 64) = 0;
    *(inited + 66) = 1;
    *(inited + 68) = 0;
    *(inited + 70) = 1;
    *(inited + 72) = 0;
    *(inited + 80) = -1;
    *(inited + 16) = v14;
    *(inited + 41) = 256;
    *(inited + 48) = v27;
    *(inited + 56) = v18;

    sub_1ADDD16D4();
    sub_1ADDCEDE0(v29, &qword_1EB5B9DB0, &qword_1AE240B80);
    swift_setDeallocating();
    sub_1ADE46EAC();
    swift_deallocClassInstance();
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t sub_1ADE8C728(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AE23C88C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1AE23C8CC();
  v10 = *(v18 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v2 + 32);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v2;
  aBlock[4] = sub_1ADE923B8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADDD2200;
  aBlock[3] = &block_descriptor_49;
  v15 = _Block_copy(aBlock);

  sub_1AE23C8AC();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1ADE923C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1ADDCC7D4(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1AE23D8DC();
  MEMORY[0x1B26FBF60](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v18);
}

uint64_t CRDataStoreBundle.sync(_:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v1 + 16);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return sub_1AE213BD4(v6);
}

uint64_t sub_1ADE8CA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  v5 = *(a1 + 32);
  v6 = *(v4 + 16);
  v7 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v7;
  v10 = v5;
  return a4(v9);
}

uint64_t CRDataStoreBundle.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t CRDataStoreBundle.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE8CB08@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 128);
  swift_beginAccess();
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  v8 = v3[6];
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  return sub_1ADE92304(v4, v5, v6, v7, v8);
}

uint64_t (*sub_1ADE8CB64(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = *(v1 + 128);
  swift_beginAccess();

  return sub_1ADE8CBC8;
}

uint64_t sub_1ADE8CBC8(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_endAccess();
}

uint64_t sub_1ADE8CC00(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v1 + 128);
  swift_beginAccess();
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  v9 = v4[6];
  v10 = *(a1 + 16);
  *(v4 + 1) = *a1;
  *(v4 + 2) = v10;
  v4[6] = v3;

  sub_1ADE92284(v5, v6, v7, v8, v9);
}

uint64_t sub_1ADE8CC9C(void (*a1)(__int128 *))
{
  sub_1ADE8CB08(v9);
  v6 = v9[0];
  v7 = v9[1];
  v8 = v10;
  a1(&v6);
  v2 = v6;
  v3 = v7;
  v4 = v8;

  return sub_1ADE92284(v2, *(&v2 + 1), v3, *(&v3 + 1), v4);
}

uint64_t sub_1ADE8CD54@<X0>(char *a1@<X8>)
{
  v35 = a1;
  v37[2] = *MEMORY[0x1E69E9840];
  v1 = sub_1AE23BFEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1AE23BDDC();
  v36 = *(v34 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  v14 = sub_1AE23BD1C();
  v37[0] = 0;
  v15 = [v13 URLForDirectory:99 inDomain:1 appropriateForURL:v14 create:1 error:v37];

  v16 = v37[0];
  if (v15)
  {
    sub_1AE23BD8C();
    v17 = v16;

    sub_1AE23BD3C();
    v18 = *(v36 + 8);
    v19 = v8;
    v20 = v34;
    v36 += 8;
    v33 = v18;
    v18(v19, v34);
    sub_1AE23BFDC();
    v21 = sub_1AE23BF6C();
    v23 = v22;
    (*(v2 + 8))(v5, v1);
    v37[0] = 0x636E657265686F43;
    v37[1] = 0xEA00000000002D65;
    MEMORY[0x1B26FB670](v21, v23);

    v24 = v35;
    sub_1AE23BD3C();

    v25 = [v12 defaultManager];
    v26 = sub_1AE23BD1C();
    v37[0] = 0;
    LOBYTE(v23) = [v25 createDirectoryAtURL:v26 withIntermediateDirectories:1 attributes:0 error:v37];

    if (v23)
    {
      v27 = v37[0];
      result = v33(v11, v20);
    }

    else
    {
      v30 = v37[0];
      sub_1AE23BC9C();

      swift_willThrow();
      v31 = v33;
      v33(v24, v20);
      result = v31(v11, v20);
    }
  }

  else
  {
    v29 = v37[0];
    sub_1AE23BC9C();

    result = swift_willThrow();
  }

  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ADE8D138(uint64_t a1, int a2, uint64_t a3)
{
  v65 = *MEMORY[0x1E69E9840];
  v8 = sub_1AE23BDDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  result = sub_1ADE8CD54(&v50 - v14);
  if (v4)
  {
    goto LABEL_16;
  }

  v56 = a2;
  v57 = 0;
  v58 = v3;
  v55 = a3;
  v17 = [objc_opt_self() defaultManager];
  sub_1AE23BD3C();
  v18 = sub_1AE23BD1C();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v20 = v19;
  sub_1AE23BD3C();
  v21 = sub_1AE23BD1C();
  v19(v12, v8);
  v59 = 0;
  v22 = [v17 copyItemAtURL:v18 toURL:v21 error:&v59];

  if (!v22)
  {
    v45 = v59;
    sub_1AE23BC9C();

    swift_willThrow();
    result = v20(v15, v8);
LABEL_16:
    v49 = *MEMORY[0x1E69E9840];
    return result;
  }

  v23 = v58;
  if (*(v58 + 48))
  {
    v24 = *(v58 + 40);
    v52 = *(v58 + 48);
    v53 = v24;
    v25 = v59;
    v59 = sub_1AE23BDAC();
    v60 = v26;
    v63 = 47;
    v64 = 0xE100000000000000;
    sub_1ADE42DEC();
    v27 = sub_1AE23D81C();

    v28 = v27[2];
    v29 = v28 - 1;
    if (!v28)
    {
      v29 = 0;
    }

    v59 = v27;
    v60 = (v27 + 4);
    v61 = v29;
    v62 = (2 * v28) | 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4C0, &qword_1AE242780);
    v54 = v20;
    sub_1ADDCC7D4(&qword_1EB5BA4C8, &qword_1EB5BA4C0, &qword_1AE242780);
    v30 = sub_1AE23CBFC();
    v50 = v31;
    v51 = v30;

    v59 = sub_1AE23BDAC();
    v60 = v32;
    v63 = 47;
    v64 = 0xE100000000000000;
    v33 = sub_1AE23D81C();

    v34 = v33[2];
    v35 = v34 - 2;
    if (v34 < 2)
    {
      v35 = 0;
    }

    v59 = v33;
    v60 = (v33 + 4);
    v61 = v35;
    v62 = (2 * v34) | 1;
    v36 = sub_1AE23CBFC();
    v38 = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1AE242560;
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_1AE23DA2C();
    v40 = v52;

    v59 = v53;
    v60 = v40;
    MEMORY[0x1B26FB670](0x4C656E6F6C43203ALL, 0xEE00796C6C61636FLL);
    v41 = v60;
    *(v39 + 32) = v59;
    *(v39 + 40) = v41;
    v42 = MEMORY[0x1E69E6158];
    v43 = v50;
    v44 = v51;
    *(v39 + 56) = MEMORY[0x1E69E6158];
    *(v39 + 64) = v44;
    *(v39 + 72) = v43;
    *(v39 + 88) = v42;
    *(v39 + 96) = 15917;
    *(v39 + 104) = 0xE200000000000000;
    *(v39 + 152) = v42;
    *(v39 + 120) = v42;
    *(v39 + 128) = v36;
    *(v39 + 136) = v38;
    sub_1AE23E2EC();
    v20 = v54;
    v23 = v58;
  }

  else
  {
    v46 = v59;
  }

  v47 = v56;
  v48 = v57;
  result = sub_1ADE8D680(v15, a1);
  if (v48 || (v47 & 1) == 0)
  {
    result = v20(v15, v8);
    goto LABEL_16;
  }

  if (*(v23 + 120))
  {

    sub_1AE018540();
    v20(v15, v8);

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADE8D680(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a2;
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v29 - v8;
  v10 = sub_1AE23BDDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + 632);
  v16 = *(v5 + 640);
  v29 = type metadata accessor for CRDataStoreBundleNonCoordinated();
  v17 = v3[9];
  v18 = *(v11 + 16);
  v18(v14, a1, v10);
  v18(v9, v30, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v19 = v3[16];
  v20 = v3[17];
  v22 = v3[18];
  v21 = v3[19];

  v23 = v17;

  v24 = v23;
  v25 = v31;
  result = sub_1AE018484(v24, v14, v9, 0, v19, 1, 0, 0, v21, v20, v22);
  if (!v25)
  {
    v27 = v3[15];
    v3[15] = result;

    v28 = v3[15];
    if (v28)
    {
      *(v28 + qword_1EB5D7450) = 1;
    }
  }

  return result;
}

uint64_t sub_1ADE8D8D0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = v3;
  LODWORD(v62) = a3;
  v76 = a2;
  v61 = *v3;
  v7 = sub_1AE23BDDC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() defaultManager];
  sub_1AE23BD3C();
  sub_1AE23BDAC();
  (*(v8 + 8))(v11, v7);
  v13 = sub_1AE23CCDC();

  v14 = [v12 fileExistsAtPath_];

  if (!v14)
  {
    LOBYTE(v20) = 0;
    return v20 & 1;
  }

  sub_1ADE8CB08(&v71);
  if (v75 == 1)
  {
    v15 = v5[6];
    if (v15)
    {
      v16 = v5[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1AE2418F0;
      v71 = 0;
      v72 = 0xE000000000000000;
      sub_1AE23DA2C();

      v71 = v16;
      v72 = v15;
      MEMORY[0x1B26FB670](0xD000000000000017, 0x80000001AE260570);
      v18 = v71;
      v19 = v72;
      *(v17 + 56) = MEMORY[0x1E69E6158];
      *(v17 + 32) = v18;
      *(v17 + 40) = v19;
      sub_1AE23E2EC();
    }

    LOBYTE(v20) = v5;
    sub_1ADE8D138(a1, 1, v76);
    if (!v4)
    {
      sub_1AE215ECC();
      LOBYTE(v20) = 0;
    }

    return v20 & 1;
  }

  sub_1ADE92284(v71, v72, v73, v74, v75);
  v20 = v5[15];
  v21 = v5[6];
  if (v20)
  {
    if (v21)
    {
      v22 = v5[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1AE2418F0;
      v71 = 0;
      v72 = 0xE000000000000000;
      sub_1AE23DA2C();

      v71 = v22;
      v72 = v21;
      MEMORY[0x1B26FB670](0xD000000000000013, 0x80000001AE2605B0);
      v24 = v71;
      v25 = v72;
      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 32) = v24;
      *(v23 + 40) = v25;
      sub_1AE23E2EC();

      v20 = v5[15];
      if (!v20)
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    v27 = v62;
    sub_1AE0185EC();

    if (!v4)
    {
      v28 = v71;
      v29 = v72;
      result = sub_1AE215ECC();
      if ((v27 & 1) == 0)
      {
        v30 = v5[15];
        if (!v30)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v31 = *(v30 + 16);
        v32 = *(v30 + 24);
        *(v30 + 16) = v28;
        *(v30 + 24) = v29;

        sub_1ADE42CB8(v31);
      }

      result = sub_1ADE8CB08(&v71);
      v33 = v75;
      if (v75 != 1)
      {
        v35 = v73;
        v34 = v74;
        v37 = v71;
        v36 = v72;
        v64 = v71;
        v65 = v72;
        v66 = v73;
        v67 = v74;
        v68 = v75;
        v38 = *(v61 + 632);
        v39 = *(v61 + 640);
        type metadata accessor for Capsule();
        Capsule.version.getter(&v69);
        sub_1ADE92284(v37, v36, v35, v34, v33);
        v40 = v69;
        if (sub_1ADF637A8(v70, v29))
        {
          LOBYTE(v20) = 1;
        }

        else
        {
          LOBYTE(v20) = sub_1ADF637A8(v40, v28);
        }

        return v20 & 1;
      }

      goto LABEL_33;
    }

    return v20 & 1;
  }

  if (v21)
  {
    v41 = v5[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1AE2418F0;
    v71 = 0;
    v72 = 0xE000000000000000;
    sub_1AE23DA2C();

    v71 = v41;
    v72 = v21;
    MEMORY[0x1B26FB670](0xD000000000000018, 0x80000001AE260590);
    v43 = v71;
    v44 = v72;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 32) = v43;
    *(v42 + 40) = v44;
    sub_1AE23E2EC();
  }

  LOBYTE(v20) = v5;
  result = sub_1ADE8D138(a1, 0, v76);
  if (v4)
  {
    return v20 & 1;
  }

  v45 = v5[15];
  if (!v45)
  {
    goto LABEL_34;
  }

  v46 = v5[9];
  v47 = *(v61 + 632);
  v48 = *(v61 + 640);
  v49 = type metadata accessor for CRSQLStoreBundleCapsule();
  v50 = v46;

  v64 = sub_1AE018AE4(v50, v45);
  v51 = v5[16];
  result = swift_beginAccess();
  if (*(v51 + 48) == 1)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v52 = type metadata accessor for Capsule();

  WitnessTable = swift_getWitnessTable();
  sub_1AE1EAF78(&v64, v52, v49, WitnessTable);
  swift_endAccess();
  v76 = 0;

  sub_1AE215ECC();
  sub_1AE021124(&v69);
  v54 = v70;
  v62 = v69;
  result = sub_1ADE8CB08(&v71);
  v55 = v75;
  if (v75 != 1)
  {
    v57 = v73;
    v56 = v74;
    v59 = v71;
    v58 = v72;
    v64 = v71;
    v65 = v72;
    v66 = v73;
    v67 = v74;
    v68 = v75;
    Capsule.version.getter(v63);
    sub_1ADE92284(v59, v58, v57, v56, v55);
    v60 = v63[0];
    if (sub_1ADF637A8(v63[1], v54))
    {
      LOBYTE(v20) = 1;
    }

    else
    {
      LOBYTE(v20) = sub_1ADF637A8(v60, v62);
    }

    return v20 & 1;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1ADE8E078(uint64_t a1, uint64_t *a2)
{
  v4 = v3;
  v5 = v2;
  v57 = a2;
  v65 = a1;
  v6 = sub_1AE23BDDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49 - v18;
  result = sub_1ADE8CB08(&v60);
  if (v64 == 1)
  {
    return result;
  }

  result = sub_1ADE92284(v60, v61, v62, v63, v64);
  v21 = v2[15];
  if (!v21)
  {
    v48 = v65;
    result = sub_1ADE8CD54(v19);
    if (v3)
    {
      return result;
    }

    sub_1ADE8D680(v19, v48);
    v4 = 0;
    result = (*(v7 + 8))(v19, v6);
    v21 = v5[15];
  }

  v22 = v5[6];
  v55 = v10;
  v56 = v7;
  if (v22)
  {
    v53 = v22;
    v54 = v13;
    if (!v21)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v52 = v5[5];
    (*(v7 + 16))(v16, v21 + qword_1EB5D74C8, v6);
    v23 = sub_1AE23BDAC();
    v25 = v24;
    (*(v7 + 8))(v16, v6);
    v60 = v23;
    v61 = v25;
    v58 = 47;
    v59 = 0xE100000000000000;
    sub_1ADE42DEC();
    v26 = sub_1AE23D81C();

    v27 = *(v26 + 16);
    v28 = v27 - 2;
    if (v27 < 2)
    {
      v28 = 0;
    }

    v60 = v26;
    v61 = v26 + 32;
    v62 = v28;
    v63 = (2 * v27) | 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4C0, &qword_1AE242780);
    sub_1ADDCC7D4(&qword_1EB5BA4C8, &qword_1EB5BA4C0, &qword_1AE242780);
    v29 = sub_1AE23CBFC();
    v50 = v30;
    v51 = v29;

    v60 = sub_1AE23BDAC();
    v61 = v31;
    v58 = 47;
    v59 = 0xE100000000000000;
    v32 = sub_1AE23D81C();

    v33 = *(v32 + 16);
    v34 = v33 - 2;
    if (v33 < 2)
    {
      v34 = 0;
    }

    v60 = v32;
    v61 = v32 + 32;
    v62 = v34;
    v63 = (2 * v33) | 1;
    v35 = sub_1AE23CBFC();
    v37 = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1AE242560;
    v60 = v52;
    v61 = v53;

    MEMORY[0x1B26FB670](0x79706F43203ALL, 0xE600000000000000);
    v39 = v61;
    *(v38 + 32) = v60;
    *(v38 + 40) = v39;
    v40 = MEMORY[0x1E69E6158];
    v41 = v50;
    v42 = v51;
    *(v38 + 56) = MEMORY[0x1E69E6158];
    *(v38 + 64) = v42;
    *(v38 + 72) = v41;
    *(v38 + 88) = v40;
    *(v38 + 96) = 15917;
    *(v38 + 104) = 0xE200000000000000;
    *(v38 + 152) = v40;
    *(v38 + 120) = v40;
    *(v38 + 128) = v35;
    *(v38 + 136) = v37;
    sub_1AE23E2EC();

    v21 = v5[15];
    v13 = v54;
  }

  if (!v21)
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_1AE018B3C();

  v43 = v56;
  if (!v4)
  {
    v44 = v5[15];
    if (v44)
    {
      (*(v56 + 16))(v16, v44 + qword_1EB5D74C8, v6);
      sub_1AE23BD3C();
      v45 = *(v43 + 8);
      v45(v16, v6);
      v46 = v55;
      v47 = v65;
      result = sub_1AE23BD3C();
      if (v5[15])
      {
        v57 = &v49;
        MEMORY[0x1EEE9AC00](result);
        *(&v49 - 4) = v5;
        *(&v49 - 3) = v47;
        *(&v49 - 2) = v13;
        *(&v49 - 1) = v46;

        sub_1AE018B94();

        v45(v46, v6);
        return (v45)(v13, v6);
      }

      goto LABEL_21;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

void sub_1ADE8E634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a4;
  v72[2] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v65 = &v61 - v8;
  v9 = sub_1AE23BFEC();
  v68 = *(v9 - 8);
  v69 = v9;
  v10 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1AE23BDDC();
  v13 = *(v71 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v61 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v61 - v20;
  v64 = a1;
  v22 = *(a1 + 120);
  if (!v22)
  {
    __break(1u);
  }

  v23 = *(v22 + 56);

  sub_1ADE432BC();

  v24 = objc_opt_self();
  v25 = [v24 defaultManager];
  v26 = sub_1AE23BD1C();
  v72[0] = 0;
  v27 = [v25 URLForDirectory:99 inDomain:1 appropriateForURL:v26 create:1 error:v72];

  v28 = v72[0];
  if (!v27)
  {
    v54 = v72[0];
    sub_1AE23BC9C();

    swift_willThrow();
LABEL_11:
    v57 = *MEMORY[0x1E69E9840];
    return;
  }

  v63 = a3;
  sub_1AE23BD8C();
  v29 = v28;

  sub_1AE23BD3C();
  v32 = *(v13 + 8);
  v30 = v13 + 8;
  v31 = v32;
  v33 = v71;
  v32(v18, v71);
  v34 = [v24 defaultManager];
  v35 = sub_1AE23BD1C();
  v72[0] = 0;
  v36 = [v34 createDirectoryAtURL:v35 withIntermediateDirectories:1 attributes:0 error:v72];

  if (!v36)
  {
    v55 = v72[0];
    sub_1AE23BC9C();

    swift_willThrow();
    v31(v21, v33);
    goto LABEL_11;
  }

  v61 = v30;
  v62 = v31;
  v37 = v72[0];
  sub_1AE23BFDC();
  v38 = sub_1AE23BF6C();
  v40 = v39;
  (*(v68 + 8))(v12, v69);
  strcpy(v72, "CoherenceTemp-");
  HIBYTE(v72[1]) = -18;
  MEMORY[0x1B26FB670](v38, v40);

  v41 = v70;
  sub_1AE23BD3C();

  v42 = [v24 defaultManager];
  v43 = sub_1AE23BD1C();
  v44 = sub_1AE23BD1C();
  v72[0] = 0;
  v45 = [v42 copyItemAtURL:v43 toURL:v44 error:v72];

  if (!v45)
  {
    v56 = v72[0];
    sub_1AE23BC9C();

    swift_willThrow();
    v51 = v41;
    v52 = v71;
    v53 = v71;
    v50 = v62;
    goto LABEL_10;
  }

  v46 = v72[0];
  v47 = [v24 defaultManager];
  v48 = v65;
  v49 = v67;
  sub_1AE23D5FC();
  v50 = v62;
  if (v49)
  {

    v51 = v41;
    v52 = v71;
    v53 = v71;
LABEL_10:
    v50(v51, v53);
    v50(v21, v52);
    goto LABEL_11;
  }

  sub_1ADDCEDE0(v48, &qword_1EB5B9DC0, &qword_1AE240B90);

  v58 = *(v64 + 120);
  v59 = v71;
  if (v58)
  {
    v60 = *(v58 + 56);

    sub_1ADDD16D4();

    v50(v41, v59);
    v50(v21, v59);
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1ADE8EC20()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  v4 = v0[18];

  v5 = v0[19];
}

void *sub_1ADE8EC68()
{
  v0 = sub_1AE213A10();
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  v4 = v0[18];

  v5 = v0[19];

  return v0;
}

uint64_t sub_1ADE8ECB8()
{
  sub_1ADE8EC68();

  return swift_deallocClassInstance();
}

uint64_t CRDataStoreBundle.receive(subscription:)(void *a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 88);
  return sub_1ADE91F68(a1);
}

uint64_t CRDataStoreBundle.receive(_:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v1 + 16);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v8 = v2;
  v5 = sub_1AE213BD4(v7);

  return MEMORY[0x1EEDB5BB8](v5);
}

uint64_t sub_1ADE8ED6C(void *a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v2 = *(a2 + 88);
  return sub_1ADE91F68(a1);
}

uint64_t sub_1ADE8ED9C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 240) = a5;
  *(v6 + 248) = v5;
  *(v6 + 224) = a2;
  *(v6 + 232) = a4;
  *(v6 + 368) = a3;
  *(v6 + 216) = a1;
  v7 = sub_1AE23BDDC();
  *(v6 + 256) = v7;
  v8 = *(v7 - 8);
  *(v6 + 264) = v8;
  *(v6 + 272) = *(v8 + 64);
  *(v6 + 280) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340) - 8) + 64) + 15;
  *(v6 + 288) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1ADE8EEA8, v5, 0);
}

uint64_t sub_1ADE8EEA8()
{
  v1 = *(v0 + 248);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (!*(v2 + 16))
  {
    goto LABEL_14;
  }

  v3 = *(v0 + 224);
  v4 = *(v1 + 112);

  v5 = sub_1ADDFF050(v3);
  if ((v6 & 1) == 0)
  {
    goto LABEL_13;
  }

  v7 = *(*(v2 + 56) + 8 * v5);

  if (!(v7 >> 62))
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  v12 = sub_1AE23D97C();
  if (!v12)
  {
LABEL_13:

LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

LABEL_5:
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
    goto LABEL_63;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
    goto LABEL_64;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v14 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v15 = *(v7 + 8 * v14 + 32);

  while (1)
  {

LABEL_15:
    *(v0 + 296) = v15;
    v16 = *(v0 + 248);
    swift_beginAccess();
    v7 = *(v16 + 120);
    v76 = v16;
    v77 = v1;
    v80 = v15;
    if (!*(v7 + 16))
    {
      goto LABEL_28;
    }

    v17 = *(v0 + 224);

    v18 = sub_1ADDFF050(v17);
    if ((v19 & 1) == 0)
    {
      goto LABEL_27;
    }

    v20 = *(*(v7 + 56) + 8 * v18);

    if (v20 >> 62)
    {
      break;
    }

    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_27;
    }

LABEL_19:
    v13 = __OFSUB__(v21, 1);
    v14 = v21 - 1;
    if (!v13)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1B26FC360](v14, v20);
        goto LABEL_24;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_67;
      }

      if (v14 < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v22 = *(v20 + 8 * v14 + 32);

LABEL_24:

        goto LABEL_29;
      }

LABEL_69:
      __break(1u);
      return MEMORY[0x1EEE6DA10](v14, v8, v9, v10, v11);
    }

LABEL_63:
    __break(1u);
LABEL_64:
    v15 = MEMORY[0x1B26FC360](v14, v7);
  }

  v21 = sub_1AE23D97C();
  if (v21)
  {
    goto LABEL_19;
  }

LABEL_27:

LABEL_28:
  v22 = 0;
LABEL_29:
  *(v0 + 304) = v22;
  v24 = *(v0 + 280);
  v23 = *(v0 + 288);
  v79 = v23;
  v26 = *(v0 + 264);
  v25 = *(v0 + 272);
  v27 = *(v0 + 256);
  v28 = *(v0 + 240);
  v29 = *(v0 + 368);
  v78 = *(v0 + 232);
  v30 = *(v0 + 224);
  v31 = sub_1AE23D1BC();
  (*(*(v31 - 8) + 56))(v23, 1, 1, v31);
  v75 = *(v26 + 16);
  v75(v24, v30, v27);
  v32 = (*(v26 + 80) + 56) & ~*(v26 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v29;
  *(v33 + 40) = v80;
  *(v33 + 48) = v22;
  (*(v26 + 32))(v33 + v32, v24, v27);
  v34 = (v33 + ((v25 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v34 = v78;
  v34[1] = v28;

  v35 = sub_1ADE9142C(0, 0, v79, &unk_1AE242790, v33);
  *(v0 + 312) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4E0, &qword_1AE242798);
  v36 = swift_allocObject();
  *(v0 + 320) = v36;
  *(v36 + 16) = v35;
  v37 = *(v0 + 224);
  if (v29 != 1)
  {
    swift_beginAccess();

    v50 = *(v76 + 120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v76 + 120);
    *(v76 + 120) = 0x8000000000000000;
    v54 = sub_1ADDFF050(v37);
    v55 = v52[2];
    v56 = (v53 & 1) == 0;
    v57 = v55 + v56;
    if (!__OFADD__(v55, v56))
    {
      v58 = v53;
      if (v52[3] >= v57)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ADF70D48();
        }
      }

      else
      {
        v59 = *(v0 + 224);
        sub_1ADF6BD9C(v57, isUniquelyReferenced_nonNull_native);
        v60 = sub_1ADDFF050(v59);
        if ((v58 & 1) != (v61 & 1))
        {
          goto LABEL_38;
        }

        v54 = v60;
      }

      *(v76 + 120) = v52;
      if ((v58 & 1) == 0)
      {
        v69 = *(v0 + 280);
        v75(v69, *(v0 + 224), *(v0 + 256));
        sub_1ADDFF514(v54, v69, MEMORY[0x1E69E7CC0], v52);
      }

      v70 = (v52[7] + 8 * v54);

      MEMORY[0x1B26FB860](v71);
      if (*((*v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v74 = *((*v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1AE23D03C();
      }

      sub_1AE23D09C();
      v68 = 0;
      v67 = sub_1ADDE65B4;
LABEL_54:
      swift_endAccess();
      *(v0 + 328) = v68;
      *(v0 + 336) = v67;
      v72 = *(MEMORY[0x1E69E86A8] + 4);
      v73 = swift_task_alloc();
      *(v0 + 344) = v73;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
      *(v0 + 352) = v10;
      *v73 = v0;
      v73[1] = sub_1ADE8F614;
      v14 = *(v0 + 216);
      v11 = MEMORY[0x1E69E7288];
      v9 = MEMORY[0x1E69E7CA8] + 8;
      v8 = v35;

      return MEMORY[0x1EEE6DA10](v14, v8, v9, v10, v11);
    }

    goto LABEL_58;
  }

  swift_beginAccess();

  v38 = *(v77 + 112);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v77 + 112);
  *(v77 + 112) = 0x8000000000000000;
  v42 = sub_1ADDFF050(v37);
  v43 = v40[2];
  v44 = (v41 & 1) == 0;
  v45 = v43 + v44;
  if (__OFADD__(v43, v44))
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    sub_1AE23D03C();
LABEL_45:
    sub_1AE23D09C();
    v67 = 0;
    v68 = sub_1ADDE65B4;
    goto LABEL_54;
  }

  v46 = v41;
  if (v40[3] >= v45)
  {
    if (v39)
    {
      *(v77 + 112) = v40;
      if (v41)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    sub_1ADF70D48();
    *(v77 + 112) = v40;
    if ((v46 & 1) == 0)
    {
LABEL_43:
      v64 = *(v0 + 280);
      v75(v64, *(v0 + 224), *(v0 + 256));
      sub_1ADDFF514(v42, v64, MEMORY[0x1E69E7CC0], v40);
    }

LABEL_44:
    v65 = (v40[7] + 8 * v42);

    MEMORY[0x1B26FB860](v66);
    if (*((*v65 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_45;
    }

    goto LABEL_59;
  }

  v47 = *(v0 + 224);
  sub_1ADF6BD9C(v45, v39);
  v48 = sub_1ADDFF050(v47);
  if ((v46 & 1) == (v49 & 1))
  {
    v42 = v48;
    *(v77 + 112) = v40;
    if (v46)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_38:
  v62 = *(v0 + 256);

  return sub_1AE23E27C();
}

uint64_t sub_1ADE8F614()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 248);
  if (v0)
  {
    v6 = sub_1ADE8F860;
  }

  else
  {
    v6 = sub_1ADE8F740;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1ADE8F740()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  *(v0 + 368);
  swift_beginAccess();
  sub_1AE1DD680(v3, v1);
  swift_endAccess();
  v4 = *(v0 + 328);
  v5 = *(v0 + 336);
  v7 = *(v0 + 312);
  v6 = *(v0 + 320);
  v9 = *(v0 + 296);
  v8 = *(v0 + 304);
  v11 = *(v0 + 280);
  v10 = *(v0 + 288);

  sub_1ADDDCE80(v4);
  sub_1ADDDCE80(v5);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1ADE8F860()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 368);
  *(v0 + 208) = *(v0 + 360);
  swift_willThrowTypedImpl();
  v3 = *(v0 + 320);
  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  swift_beginAccess();
  sub_1AE1DD680(v5, v3);
  swift_endAccess();
  v6 = *(v0 + 328);
  v7 = *(v0 + 336);
  v9 = *(v0 + 312);
  v8 = *(v0 + 320);
  v11 = *(v0 + 296);
  v10 = *(v0 + 304);
  v13 = *(v0 + 280);
  v12 = *(v0 + 288);

  sub_1ADDDCE80(v6);
  sub_1ADDDCE80(v7);

  v14 = *(v0 + 8);
  v15 = *(v0 + 360);

  return v14();
}

uint64_t sub_1ADE8F994(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *MEMORY[0x1E69E9840];
  *(v8 + 184) = a8;
  *(v8 + 192) = v16;
  *(v8 + 168) = a6;
  *(v8 + 176) = a7;
  *(v8 + 320) = a4;
  *(v8 + 152) = a1;
  *(v8 + 160) = a5;
  v9 = sub_1AE23BDDC();
  *(v8 + 200) = v9;
  v10 = *(v9 - 8);
  *(v8 + 208) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v12 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1ADE8FAA0, 0, 0);
}

uint64_t sub_1ADE8FAA0()
{
  v50 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 320);
  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 160);
    if (v2)
    {
      v47 = (*(*v2 + 80) + **(*v2 + 80));
      v3 = *(*(*v2 + 80) + 4);
      v4 = swift_task_alloc();
      *(v0 + 232) = v4;
      *v4 = v0;
      v5 = sub_1ADE901C4;
      goto LABEL_6;
    }
  }

  v6 = *(v0 + 168);
  if (v6)
  {
    v47 = (*(*v6 + 80) + **(*v6 + 80));
    v7 = *(*(*v6 + 80) + 4);
    v4 = swift_task_alloc();
    *(v0 + 240) = v4;
    *v4 = v0;
    v5 = sub_1ADE90970;
LABEL_6:
    v4[1] = v5;
    v8 = *MEMORY[0x1E69E9840];
    v9 = v47;

    return v9();
  }

  v11 = v0 + 112;
  v12 = *(v0 + 224);
  v13 = *(v0 + 200);
  v14 = *(v0 + 208);
  v15 = *(v0 + 176);
  v16 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) initWithFilePresenter_];
  *(v0 + 248) = v16;
  *(v0 + 112) = 0;
  v48 = *(v14 + 16);
  v48(v12, v15, v13);
  v17 = sub_1AE23BD1C();
  v18 = *(v0 + 224);
  if (v1)
  {
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = v11;
    v19[4] = v16;
    v20 = swift_allocObject();
    v21 = sub_1ADE92650;
    *(v20 + 16) = sub_1ADE92650;
    *(v20 + 24) = v19;
    *(v0 + 96) = sub_1ADE92800;
    *(v0 + 104) = v20;
    *(v0 + 64) = MEMORY[0x1E69E9820];
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_1ADE8AB00;
    *(v0 + 88) = &block_descriptor_77;
    v22 = _Block_copy((v0 + 64));
    v23 = *(v0 + 104);
    v24 = v16;

    *(v0 + 144) = 0;
    [v24 coordinateReadingItemAtURL:v17 options:0 error:v0 + 144 byAccessor:v22];
    _Block_release(v22);

    v25 = *(v0 + 144);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if ((v22 & 1) == 0)
    {
      v26 = 0;
      v27 = 0;
      goto LABEL_14;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  v27 = swift_allocObject();
  v27[2] = v18;
  v27[3] = v11;
  v27[4] = v16;
  v28 = swift_allocObject();
  v26 = sub_1ADE92650;
  *(v28 + 16) = sub_1ADE92650;
  *(v28 + 24) = v27;
  *(v0 + 48) = sub_1ADE92800;
  *(v0 + 56) = v28;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1ADE8AB00;
  *(v0 + 40) = &block_descriptor_65;
  v29 = _Block_copy((v0 + 16));
  v30 = *(v0 + 56);
  v31 = v16;

  *(v0 + 120) = 0;
  [v31 coordinateWritingItemAtURL:v17 options:0 error:v0 + 120 byAccessor:v29];
  _Block_release(v29);

  v25 = *(v0 + 120);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
    goto LABEL_22;
  }

  v21 = 0;
  v19 = 0;
LABEL_14:
  *(v0 + 272) = v26;
  *(v0 + 280) = v27;
  *(v0 + 256) = v21;
  *(v0 + 264) = v19;
  if (v25)
  {
    v32 = *(v0 + 208);
    swift_willThrow();
    [v16 releaseAccess_];

    v34 = *(v0 + 272);
    v33 = *(v0 + 280);
    v36 = *(v0 + 256);
    v35 = *(v0 + 264);
    v37 = *(v0 + 216);
    (*(v32 + 8))(*(v0 + 224), *(v0 + 200));
    v38 = *(v0 + 112);
    swift_unknownObjectRelease();
    sub_1ADDDCE80(v36);
    sub_1ADDDCE80(v34);

    v9 = *(v0 + 8);
    v39 = *MEMORY[0x1E69E9840];

    return v9();
  }

  v40 = *(v0 + 184);
  v48(*(v0 + 216), *(v0 + 224), *(v0 + 200));
  v49 = (v40 + *v40);
  v41 = v40[1];
  v42 = swift_task_alloc();
  *(v0 + 288) = v42;
  *v42 = v0;
  v42[1] = sub_1ADE91010;
  v43 = *(v0 + 216);
  v44 = *(v0 + 192);
  v45 = *(v0 + 152);
  v46 = *MEMORY[0x1E69E9840];

  return v49(v45, v43, v16, v0 + 128);
}

uint64_t sub_1ADE901C4()
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 232);
  v7 = *v1;

  if (v0)
  {

    v3 = sub_1ADE9278C;
  }

  else
  {
    v3 = sub_1ADE90308;
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1ADE90308()
{
  v47 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 168);
  if (v1)
  {
    v44 = (*(*v1 + 80) + **(*v1 + 80));
    v2 = *(*(*v1 + 80) + 4);
    v3 = swift_task_alloc();
    *(v0 + 240) = v3;
    *v3 = v0;
    v3[1] = sub_1ADE90970;
    v4 = *MEMORY[0x1E69E9840];
    v5 = v44;

    return v5();
  }

  v7 = v0 + 112;
  v8 = *(v0 + 224);
  v9 = *(v0 + 200);
  v10 = *(v0 + 208);
  v11 = *(v0 + 176);
  v12 = *(v0 + 320);
  v13 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) initWithFilePresenter_];
  *(v0 + 248) = v13;
  *(v0 + 112) = 0;
  v45 = *(v10 + 16);
  v45(v8, v11, v9);
  v14 = sub_1AE23BD1C();
  v15 = *(v0 + 224);
  if (v12 == 1)
  {
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = v7;
    v16[4] = v13;
    v17 = swift_allocObject();
    v18 = sub_1ADE92650;
    *(v17 + 16) = sub_1ADE92650;
    *(v17 + 24) = v16;
    *(v0 + 96) = sub_1ADE92800;
    *(v0 + 104) = v17;
    *(v0 + 64) = MEMORY[0x1E69E9820];
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_1ADE8AB00;
    *(v0 + 88) = &block_descriptor_77;
    v19 = _Block_copy((v0 + 64));
    v20 = *(v0 + 104);
    v21 = v13;

    *(v0 + 144) = 0;
    [v21 coordinateReadingItemAtURL:v14 options:0 error:v0 + 144 byAccessor:v19];
    _Block_release(v19);

    v22 = *(v0 + 144);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if ((v19 & 1) == 0)
    {
      v23 = 0;
      v24 = 0;
      goto LABEL_10;
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  v24 = swift_allocObject();
  v24[2] = v15;
  v24[3] = v7;
  v24[4] = v13;
  v25 = swift_allocObject();
  v23 = sub_1ADE92650;
  *(v25 + 16) = sub_1ADE92650;
  *(v25 + 24) = v24;
  *(v0 + 48) = sub_1ADE92800;
  *(v0 + 56) = v25;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1ADE8AB00;
  *(v0 + 40) = &block_descriptor_65;
  v26 = _Block_copy((v0 + 16));
  v27 = *(v0 + 56);
  v28 = v13;

  *(v0 + 120) = 0;
  [v28 coordinateWritingItemAtURL:v14 options:0 error:v0 + 120 byAccessor:v26];
  _Block_release(v26);

  v22 = *(v0 + 120);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    goto LABEL_18;
  }

  v18 = 0;
  v16 = 0;
LABEL_10:
  *(v0 + 272) = v23;
  *(v0 + 280) = v24;
  *(v0 + 256) = v18;
  *(v0 + 264) = v16;
  if (v22)
  {
    v29 = *(v0 + 208);
    swift_willThrow();
    [v13 releaseAccess_];

    v31 = *(v0 + 272);
    v30 = *(v0 + 280);
    v33 = *(v0 + 256);
    v32 = *(v0 + 264);
    v34 = *(v0 + 216);
    (*(v29 + 8))(*(v0 + 224), *(v0 + 200));
    v35 = *(v0 + 112);
    swift_unknownObjectRelease();
    sub_1ADDDCE80(v33);
    sub_1ADDDCE80(v31);

    v5 = *(v0 + 8);
    v36 = *MEMORY[0x1E69E9840];

    return v5();
  }

  v37 = *(v0 + 184);
  v45(*(v0 + 216), *(v0 + 224), *(v0 + 200));
  v46 = (v37 + *v37);
  v38 = v37[1];
  v39 = swift_task_alloc();
  *(v0 + 288) = v39;
  *v39 = v0;
  v39[1] = sub_1ADE91010;
  v40 = *(v0 + 216);
  v41 = *(v0 + 192);
  v42 = *(v0 + 152);
  v43 = *MEMORY[0x1E69E9840];

  return v46(v42, v40, v13, v0 + 128);
}

uint64_t sub_1ADE90970()
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 240);
  v7 = *v1;

  if (v0)
  {

    v3 = sub_1ADE92704;
  }

  else
  {
    v3 = sub_1ADE90AB4;
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1ADE90AB4()
{
  v42 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 224);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 176);
  v5 = *(v0 + 320);
  v6 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) initWithFilePresenter_];
  *(v0 + 112) = 0;
  v7 = v0 + 112;
  *(v0 + 248) = v6;
  v40 = *(v3 + 16);
  v40(v1, v4, v2);
  v8 = sub_1AE23BD1C();
  v9 = *(v0 + 224);
  if (v5 == 1)
  {
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = v7;
    v10[4] = v6;
    v11 = swift_allocObject();
    v12 = sub_1ADE92650;
    *(v11 + 16) = sub_1ADE92650;
    *(v11 + 24) = v10;
    *(v0 + 96) = sub_1ADE92800;
    *(v0 + 104) = v11;
    *(v0 + 64) = MEMORY[0x1E69E9820];
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_1ADE8AB00;
    *(v0 + 88) = &block_descriptor_77;
    v13 = _Block_copy((v0 + 64));
    v14 = *(v0 + 104);
    v15 = v6;

    *(v0 + 144) = 0;
    [v15 coordinateReadingItemAtURL:v8 options:0 error:v0 + 144 byAccessor:v13];
    _Block_release(v13);

    v16 = *(v0 + 144);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      v17 = 0;
      v18 = 0;
      goto LABEL_6;
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  v18 = swift_allocObject();
  v18[2] = v9;
  v18[3] = v7;
  v18[4] = v6;
  v19 = swift_allocObject();
  v17 = sub_1ADE92650;
  *(v19 + 16) = sub_1ADE92650;
  *(v19 + 24) = v18;
  *(v0 + 48) = sub_1ADE92800;
  *(v0 + 56) = v19;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1ADE8AB00;
  *(v0 + 40) = &block_descriptor_65;
  v20 = _Block_copy((v0 + 16));
  v21 = *(v0 + 56);
  v22 = v6;

  *(v0 + 120) = 0;
  [v22 coordinateWritingItemAtURL:v8 options:0 error:v0 + 120 byAccessor:v20];
  _Block_release(v20);

  v16 = *(v0 + 120);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    goto LABEL_14;
  }

  v12 = 0;
  v10 = 0;
LABEL_6:
  *(v0 + 272) = v17;
  *(v0 + 280) = v18;
  *(v0 + 256) = v12;
  *(v0 + 264) = v10;
  if (v16)
  {
    v23 = *(v0 + 208);
    swift_willThrow();
    [v6 releaseAccess_];

    v25 = *(v0 + 272);
    v24 = *(v0 + 280);
    v27 = *(v0 + 256);
    v26 = *(v0 + 264);
    v28 = *(v0 + 216);
    (*(v23 + 8))(*(v0 + 224), *(v0 + 200));
    v29 = *(v0 + 112);
    swift_unknownObjectRelease();
    sub_1ADDDCE80(v27);
    sub_1ADDDCE80(v25);

    v30 = *(v0 + 8);
    v31 = *MEMORY[0x1E69E9840];

    return v30();
  }

  else
  {
    v33 = *(v0 + 184);
    v40(*(v0 + 216), *(v0 + 224), *(v0 + 200));
    v41 = (v33 + *v33);
    v34 = v33[1];
    v35 = swift_task_alloc();
    *(v0 + 288) = v35;
    *v35 = v0;
    v35[1] = sub_1ADE91010;
    v36 = *(v0 + 216);
    v37 = *(v0 + 192);
    v38 = *(v0 + 152);
    v39 = *MEMORY[0x1E69E9840];

    return v41(v38, v36, v6, v0 + 128);
  }
}

uint64_t sub_1ADE91010()
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 288);
  v15 = *v1;

  if (v0)
  {
    v4 = v2[27];
    v5 = v2[25];
    v6 = *(v2[26] + 8);
    v2[39] = v6;
    v6(v4, v5);
    v7 = sub_1ADE912AC;
  }

  else
  {
    v9 = v2[26];
    v8 = v2[27];
    v10 = v2[25];
    v11 = *(v9 + 8);
    v2[37] = v11;
    v2[38] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v8, v10);
    v7 = sub_1ADE91194;
  }

  v12 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1ADE91194()
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[34];
  v4 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[31];
  v8 = v0[28];
  v14 = v0[27];
  v9 = v0[25];
  [v7 releaseAccess_];

  v1(v8, v9);
  v10 = v0[14];
  swift_unknownObjectRelease();
  sub_1ADDDCE80(v6);
  sub_1ADDDCE80(v3);

  v11 = v0[1];
  v12 = *MEMORY[0x1E69E9840];

  return v11();
}

uint64_t sub_1ADE912AC()
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 128);
  *(v0 + 136) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  if (sub_1AE23DF9C())
  {
  }

  else
  {
    swift_allocError();
    *v2 = v1;
  }

  v3 = *(v0 + 248);
  [v3 releaseAccess_];

  v4 = *(v0 + 208) + 8;
  v6 = *(v0 + 272);
  v5 = *(v0 + 280);
  v8 = *(v0 + 256);
  v7 = *(v0 + 264);
  v9 = *(v0 + 216);
  (*(v0 + 312))(*(v0 + 224), *(v0 + 200));
  v10 = *(v0 + 112);
  swift_unknownObjectRelease();
  sub_1ADDDCE80(v8);
  sub_1ADDDCE80(v6);

  v11 = *(v0 + 8);
  v12 = *MEMORY[0x1E69E9840];

  return v11();
}

uint64_t sub_1ADE9142C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1ADE925E0(a3, v24 - v10);
  v12 = sub_1AE23D1BC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1ADDCEDE0(v11, &unk_1EB5BDD00, &qword_1AE242340);
  }

  else
  {
    sub_1AE23D1AC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1AE23D16C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1AE23CD8C() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1ADDCEDE0(a3, &unk_1EB5BDD00, &qword_1AE242340);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1ADDCEDE0(a3, &unk_1EB5BDD00, &qword_1AE242340);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void *sub_1ADE916C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v37 = a7;
  v38 = a8;
  v35 = a6;
  v36 = a1;
  v14 = *v9;
  v15 = sub_1AE23BDDC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  v33 = *(a2 + 16);
  v34 = v20;
  v21 = *(a2 + 32);
  v9[15] = 0;
  v22 = *(v14 + 632);
  v23 = *(v14 + 640);
  type metadata accessor for CRDataStoreBundleNonCoordinated.ModelStorage();
  sub_1AE018450();
  v24 = v9;
  v9[16] = v25;
  v9[19] = a4;
  v26 = sub_1ADF7E740(a5);

  v27 = *(v26 + 16);
  if (!v27)
  {
    goto LABEL_4;
  }

  v28 = sub_1AE19434C(*(v26 + 16), 0);
  v29 = sub_1AE03A8F4(v39, v28 + 16, v27, v26);
  sub_1ADDDCE74();
  if (v29 != v27)
  {
    __break(1u);
LABEL_4:

    v28 = MEMORY[0x1E69E7CC0];
  }

  *&v39[0] = v28;

  sub_1AE018BE8(v39);

  v30 = v35;
  v24[17] = *&v39[0];
  v24[18] = v30;
  v39[1] = v33;
  v39[0] = v34;
  v40 = v21;
  (*(v16 + 16))(v19, a3, v15);
  v31 = sub_1AE21BFC8(v36, v39, v19, v37, v38);
  (*(v16 + 8))(a3, v15);
  return v31;
}

uint64_t *sub_1ADE91910(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v31 = a6;
  v13 = *v7;
  v14 = sub_1AE23BDDC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  v20 = a2[1];
  v21 = *(a2 + 4);
  v22 = (a4 + 32);
  v23 = *(a4 + 16);
  while (v23)
  {
    v24 = *v22++;
    --v23;
    if (!v24)
    {
      sub_1AE23DC5C();
      __break(1u);
      break;
    }
  }

  v25 = *(v13 + 80);
  v26 = *(v13 + 88);
  v29 = v20;
  v30 = v19;
  type metadata accessor for CRDataStoreBundleInternals();
  v32[1] = v29;
  v32[0] = v30;
  v33 = v21;
  (*(v15 + 16))(v18, a3, v14);
  swift_allocObject();
  v27 = sub_1ADE916C8(a1, v32, v18, a4, a5, v31, 0, 0);
  (*(v15 + 8))(a3, v14);
  v7[2] = v27;
  return v7;
}

uint64_t *sub_1ADE91BA4(void *a1, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  v10 = sub_1AE23BDDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v15 = *(a2 + 32);
  v16 = *a4;
  v17 = *(a2 + 16);
  v25[0] = *a2;
  v25[1] = v17;
  v26 = v15;
  (*(v11 + 16))(v14, a3, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA188, &unk_1AE242290);
  v18 = swift_allocObject();
  v24 = xmmword_1AE2418F0;
  *(v18 + 16) = xmmword_1AE2418F0;
  *(v18 + 32) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA180, &qword_1AE241B78);
  inited = swift_initStackObject();
  v20 = inited;
  *(inited + 16) = v24;
  if ((a5 & 0x10000) != 0)
  {
    v21 = 0;
  }

  else
  {
    v21 = a5;
  }

  *(inited + 32) = v21;
  swift_allocObject();
  v22 = sub_1ADE91910(a1, v25, v14, v18, v20, 0);
  (*(v11 + 8))(a3, v10);
  return v22;
}

void sub_1ADE91D6C(unint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_1AE23BDDC() - 8);
  v6 = (*(v5 + 80) + 81) & ~*(v5 + 80);
  sub_1ADE89D84(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), v1 + v6, *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), v3, v4);
}

uint64_t sub_1ADE91E28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1ADE91E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[8];
  v10 = v3[9];
  v11 = v3[10];
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_1ADE74240;

  return sub_1ADE8B8E4(a1, a2, a3, v8, (v3 + 3), v9, v10, v11);
}

uint64_t sub_1ADE91F68(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE23C7DC();
  return sub_1AE23C7FC();
}

unint64_t sub_1ADE91FB0()
{
  result = qword_1EB5BA4B0;
  if (!qword_1EB5BA4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA4B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRDataStoreBundleReadFileVersionPolicy(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CRDataStoreBundleReadFileVersionPolicy(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1ADE92284(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_1ADDCC35C(result, a2);
    sub_1ADDCC35C(a3, a4);
  }

  return result;
}

uint64_t sub_1ADE92304(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_1ADDD86D8(result, a2);
    sub_1ADDD86D8(a3, a4);
  }

  return result;
}

uint64_t objectdestroy_30Tm(void (*a1)(void))
{
  a1(*(v1 + 24));
  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t sub_1ADE923B8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_1ADE8CC9C(*(v0 + 16));
}

unint64_t sub_1ADE923C4()
{
  result = qword_1ED96AC40;
  if (!qword_1ED96AC40)
  {
    sub_1AE23C88C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96AC40);
  }

  return result;
}

uint64_t sub_1ADE9241C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DB0, &qword_1AE240B80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADE9248C(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1AE23BDDC() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1ADE744B8;

  return sub_1ADE8F994(a1, v6, v7, v8, v9, v10, v1 + v5, v13);
}

uint64_t sub_1ADE925E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ADE926A4()
{
  result = qword_1ED966B60;
  if (!qword_1ED966B60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED966B60);
  }

  return result;
}

uint64_t sub_1ADE92704()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return sub_1ADE90AB4();
}

uint64_t sub_1ADE9278C()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return sub_1ADE90308();
}

uint64_t sub_1ADE92810(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1ADEA712C(v5, v7) & 1;
}

uint64_t sub_1ADE9287C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE928E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEA8FB0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1ADE92934()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE9299C()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7560);
  __swift_project_value_buffer(v0, qword_1EB5D7560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "root";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "references";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADE92B64()
{
  result = sub_1AE23C38C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1ADEA4C0C();
        sub_1AE23C4FC();
      }

      else if (result == 2)
      {
        sub_1ADEA3B8C();
        sub_1AE23C4EC();
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADE92C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1AE23C32C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ADEA8BC0(a3, a1, a4, a5, sub_1ADEA4C0C);
  if (!v5)
  {
    if (*(a2 + 16))
    {
      sub_1ADEA3B8C();
      sub_1AE23C65C();
    }

    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v12 + 8))(v15, v11);
  }

  return result;
}

void (*sub_1ADE92DFC(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADE92EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEA4F7C();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADE92F5C(uint64_t a1)
{
  v2 = sub_1ADE74344();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADE92F98()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE92FFC()
{
  sub_1ADE74344();

  return sub_1AE23C54C();
}

uint64_t sub_1ADE93048()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE930BC()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7578);
  __swift_project_value_buffer(v0, qword_1EB5D7578);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1AE2427B0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "int";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1AE23C67C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "double";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "string";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "data";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "date";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "reference";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "optional";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "taggedValue";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  return sub_1AE23C68C();
}

uint64_t sub_1ADE933FC()
{
  v0 = type metadata accessor for Proto4_Value._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  v5 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  qword_1EB5BA550 = v3;
  return result;
}

uint64_t sub_1ADE93480()
{
  sub_1ADDCEDE0(v0 + OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf, &qword_1EB5BA028, &qword_1AE241808);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1ADE934FC()
{
  if (!qword_1ED96A230)
  {
    type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(255);
    v0 = sub_1AE23D7CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED96A230);
    }
  }
}

uint64_t sub_1ADE93554(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ADE9358C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  v11 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *v3;
    v15 = type metadata accessor for Proto4_Value._StorageClass(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    v24 = a3;
    v19 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
    v20 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
    (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
    v21 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
    swift_beginAccess();
    sub_1ADDCEE40(v14 + v21, v10, &qword_1EB5BA028, &qword_1AE241808);
    swift_beginAccess();
    a3 = v24;
    sub_1ADEA8654(v10, v18 + v19);
    swift_endAccess();

    *v3 = v18;
    v13 = v18;
  }

  return sub_1ADE9372C(v13, a1, a2, a3);
}

uint64_t sub_1ADE9372C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 4)
    {
      if (result > 6)
      {
        if (result == 7)
        {
          sub_1ADE94AA0(a1, a2, a3, a4);
        }

        else if (result == 8)
        {
          sub_1ADE94D90(a1, a2, a3, a4);
        }
      }

      else if (result == 5)
      {
        sub_1ADE941D8(a1, a2, a3, a4);
      }

      else
      {
        sub_1ADE947B0(a1, a2, a3, a4);
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        sub_1ADE93D18(a2, a1);
      }

      else
      {
        sub_1ADE93F64(a2, a1, a3, a4);
      }
    }

    else if (result == 1)
    {
      sub_1ADE938B0(a2, a1);
    }

    else if (result == 2)
    {
      sub_1ADE93AE4(a2, a1);
    }
  }

  return result;
}

uint64_t sub_1ADE938B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v19 = 0;
  v20 = 1;
  result = sub_1AE23C42C();
  if (!v2 && (v20 & 1) == 0)
  {
    v21 = 0;
    v17 = v19;
    v12 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
    swift_beginAccess();
    v18 = v12;
    sub_1ADDCEE40(a2 + v12, v10, &qword_1EB5BA028, &qword_1AE241808);
    v13 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
    v14 = *(v13 - 8);
    LODWORD(v12) = (*(v14 + 48))(v10, 1, v13);
    sub_1ADDCEDE0(v10, &qword_1EB5BA028, &qword_1AE241808);
    if (v12 != 1)
    {
      v15 = v21;
      result = sub_1AE23C39C();
      if (v15)
      {
        return result;
      }

      v21 = 0;
    }

    *v7 = v17;
    swift_storeEnumTagMultiPayload();
    (*(v14 + 56))(v7, 0, 1, v13);
    v16 = v18;
    swift_beginAccess();
    sub_1ADEA8654(v7, a2 + v16);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1ADE93AE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v20 = 0;
  v21 = 1;
  result = sub_1AE23C47C();
  if (!v2 && (v21 & 1) == 0)
  {
    v19 = 0;
    v12 = v20;
    v13 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
    swift_beginAccess();
    v18 = v13;
    sub_1ADDCEE40(a2 + v13, v10, &qword_1EB5BA028, &qword_1AE241808);
    v14 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
    v15 = *(v14 - 8);
    LODWORD(v13) = (*(v15 + 48))(v10, 1, v14);
    sub_1ADDCEDE0(v10, &qword_1EB5BA028, &qword_1AE241808);
    if (v13 != 1)
    {
      v16 = v19;
      result = sub_1AE23C39C();
      if (v16)
      {
        return result;
      }

      v19 = 0;
    }

    *v7 = v12;
    swift_storeEnumTagMultiPayload();
    (*(v15 + 56))(v7, 0, 1, v14);
    v17 = v18;
    swift_beginAccess();
    sub_1ADEA8654(v7, a2 + v17);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1ADE93D18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v22 = 0;
  v23 = 0;
  result = sub_1AE23C49C();
  if (v2)
  {
  }

  if (v23)
  {
    v24 = v23;
    v19 = v22;
    v12 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
    swift_beginAccess();
    v20 = v12;
    v21 = a2;
    sub_1ADDCEE40(a2 + v12, v10, &qword_1EB5BA028, &qword_1AE241808);
    v13 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
    v14 = *(v13 - 8);
    LODWORD(v12) = (*(v14 + 48))(v10, 1, v13);
    sub_1ADDCEDE0(v10, &qword_1EB5BA028, &qword_1AE241808);
    if (v12 != 1)
    {
      sub_1AE23C39C();
    }

    v15 = v24;
    *v7 = v19;
    v7[1] = v15;
    swift_storeEnumTagMultiPayload();
    (*(v14 + 56))(v7, 0, 1, v13);
    v17 = v20;
    v16 = v21;
    swift_beginAccess();
    sub_1ADEA8654(v7, v16 + v17);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1ADE93F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - v12;
  v24 = xmmword_1AE2427C0;
  sub_1AE23C3FC();
  v14 = v24;
  if (v4 || *(&v24 + 1) >> 60 == 15)
  {
    return sub_1ADDE1588(v24, *(&v24 + 1));
  }

  v21[1] = a4;
  v15 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  v25 = a2;
  v23 = v15;
  sub_1ADDCEE40(a2 + v15, v13, &qword_1EB5BA028, &qword_1AE241808);
  v16 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  v22 = *(v16 - 8);
  v17 = (*(v22 + 48))(v13, 1, v16);
  sub_1ADDD86D8(v14, *(&v14 + 1));
  sub_1ADDCEDE0(v13, &qword_1EB5BA028, &qword_1AE241808);
  if (v17 != 1)
  {
    sub_1AE23C39C();
  }

  sub_1ADDE1588(v14, *(&v14 + 1));
  *v10 = v14;
  swift_storeEnumTagMultiPayload();
  (*(v22 + 56))(v10, 0, 1, v16);
  v19 = v25;
  v20 = v23;
  swift_beginAccess();
  sub_1ADEA8654(v10, v19 + v20);
  return swift_endAccess();
}

uint64_t sub_1ADE941D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v59 = a2;
  v60 = a3;
  v5 = sub_1AE23C2FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v49 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v17 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v46 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA878, &qword_1AE244FF8);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v53 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v46 - v30;
  v55 = v6;
  v32 = *(v6 + 56);
  v57 = v5;
  v51 = v32;
  (v32)(&v46 - v30, 1, 1, v5, v29);
  v33 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  v50 = a1;
  v47 = v33;
  sub_1ADDCEE40(a1 + v33, v16, &qword_1EB5BA028, &qword_1AE241808);
  v48 = v18;
  v34 = (*(v18 + 48))(v16, 1, v17);
  if (v34 == 1)
  {
    sub_1ADDCEDE0(v16, &qword_1EB5BA028, &qword_1AE241808);
  }

  else
  {
    sub_1ADEA84F0(v16, v24);
    sub_1ADEA84F0(v24, v21);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1ADDCEDE0(v31, &qword_1EB5BA878, &qword_1AE244FF8);
      v35 = *(v55 + 32);
      v36 = v52;
      v37 = v57;
      v35(v52, v21, v57);
      v35(v31, v36, v37);
      v51(v31, 0, 1, v37);
      goto LABEL_7;
    }

    sub_1ADEA8494(v21);
  }

  v37 = v57;
LABEL_7:
  sub_1ADEA860C(&qword_1EB5B95B8, MEMORY[0x1E69AA900]);
  v38 = v56;
  sub_1AE23C4FC();
  if (v38)
  {
    return sub_1ADDCEDE0(v31, &qword_1EB5BA878, &qword_1AE244FF8);
  }

  v40 = v53;
  sub_1ADDCEE40(v31, v53, &qword_1EB5BA878, &qword_1AE244FF8);
  v41 = v55;
  if ((*(v55 + 48))(v40, 1, v37) == 1)
  {
    sub_1ADDCEDE0(v31, &qword_1EB5BA878, &qword_1AE244FF8);
    return sub_1ADDCEDE0(v40, &qword_1EB5BA878, &qword_1AE244FF8);
  }

  else
  {
    v42 = *(v41 + 32);
    v42(v54, v40, v37);
    if (v34 != 1)
    {
      sub_1AE23C39C();
    }

    sub_1ADDCEDE0(v31, &qword_1EB5BA878, &qword_1AE244FF8);
    v43 = v49;
    v42(v49, v54, v37);
    swift_storeEnumTagMultiPayload();
    (*(v48 + 56))(v43, 0, 1, v17);
    v44 = v50;
    v45 = v47;
    swift_beginAccess();
    sub_1ADEA8654(v43, v44 + v45);
    return swift_endAccess();
  }
}

uint64_t sub_1ADE947B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v26 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - v17;
  v31 = 0;
  v19 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(a1 + v19, v10, &qword_1EB5BA028, &qword_1AE241808);
  v20 = (*(v12 + 48))(v10, 1, v11);
  if (v20 == 1)
  {
    sub_1ADDCEDE0(v10, &qword_1EB5BA028, &qword_1AE241808);
  }

  else
  {
    sub_1ADEA84F0(v10, v18);
    sub_1ADEA84F0(v18, v15);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v31 = *v15;
    }

    else
    {
      sub_1ADEA8494(v15);
    }
  }

  sub_1ADEA3B8C();
  v21 = v27;
  sub_1AE23C4FC();
  result = v31;
  if (v21)
  {
  }

  if (v31)
  {
    if (v20 != 1)
    {
      v23 = v31;
      sub_1AE23C39C();
      result = v23;
    }

    v24 = v26;
    *v26 = result;
    swift_storeEnumTagMultiPayload();
    (*(v12 + 56))(v24, 0, 1, v11);
    swift_beginAccess();
    sub_1ADEA8654(v24, a1 + v19);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1ADE94AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v26 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - v17;
  v31 = 0;
  v19 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(a1 + v19, v10, &qword_1EB5BA028, &qword_1AE241808);
  v20 = (*(v12 + 48))(v10, 1, v11);
  if (v20 == 1)
  {
    sub_1ADDCEDE0(v10, &qword_1EB5BA028, &qword_1AE241808);
  }

  else
  {
    sub_1ADEA84F0(v10, v18);
    sub_1ADEA84F0(v18, v15);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v31 = *v15;
    }

    else
    {
      sub_1ADEA8494(v15);
    }
  }

  sub_1ADEA3A2C();
  v21 = v27;
  sub_1AE23C4FC();
  result = v31;
  if (v21)
  {
  }

  if (v31)
  {
    if (v20 != 1)
    {
      v23 = v31;
      sub_1AE23C39C();
      result = v23;
    }

    v24 = v26;
    *v26 = result;
    swift_storeEnumTagMultiPayload();
    (*(v12 + 56))(v24, 0, 1, v11);
    swift_beginAccess();
    sub_1ADEA8654(v24, a1 + v19);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1ADE94D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v26 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - v17;
  v31 = 0;
  v19 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(a1 + v19, v10, &qword_1EB5BA028, &qword_1AE241808);
  v20 = (*(v12 + 48))(v10, 1, v11);
  if (v20 == 1)
  {
    sub_1ADDCEDE0(v10, &qword_1EB5BA028, &qword_1AE241808);
  }

  else
  {
    sub_1ADEA84F0(v10, v18);
    sub_1ADEA84F0(v18, v15);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v31 = *v15;
    }

    else
    {
      sub_1ADEA8494(v15);
    }
  }

  sub_1ADEA376C();
  v21 = v27;
  sub_1AE23C4FC();
  result = v31;
  if (v21)
  {
  }

  if (v31)
  {
    if (v20 != 1)
    {
      v23 = v31;
      sub_1AE23C39C();
      result = v23;
    }

    v24 = v26;
    *v26 = result;
    swift_storeEnumTagMultiPayload();
    (*(v12 + 56))(v24, 0, 1, v11);
    swift_beginAccess();
    sub_1ADEA8654(v24, a1 + v19);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1ADE95080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  v12 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(a1 + v12, v11, &qword_1EB5BA028, &qword_1AE241808);
  v13 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  result = (*(*(v13 - 8) + 48))(v11, 1, v13);
  if (result != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload == 6)
        {
          sub_1ADEA8494(v11);
          return sub_1ADE95D0C(a1);
        }

        else
        {
          sub_1ADEA8494(v11);
          return sub_1ADE95EAC(a1);
        }
      }

      else if (EnumCaseMultiPayload == 4)
      {
        sub_1ADE95908(a1, a2, a3, a4);
        return sub_1ADEA8494(v11);
      }

      else
      {
        sub_1ADEA8494(v11);
        return sub_1ADE95B6C(a1);
      }
    }

    else if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1ADEA8494(v11);
        return sub_1ADE955E8(a1);
      }

      else
      {
        sub_1ADEA8494(v11);
        return sub_1ADE95774(a1);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      return sub_1ADE95470(a1);
    }

    else
    {
      return sub_1ADE952FC(a1);
    }
  }

  return result;
}

uint64_t sub_1ADE952FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v10 - v4);
  v6 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(a1 + v6, v5, &qword_1EB5BA028, &qword_1AE241808);
  v7 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_1ADDCEDE0(v5, &qword_1EB5BA028, &qword_1AE241808);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    v8 = *v5;
    return sub_1AE23C5EC();
  }

  result = sub_1ADEA8494(v5);
  __break(1u);
  return result;
}

uint64_t sub_1ADE95470(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v10 - v4);
  v6 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(a1 + v6, v5, &qword_1EB5BA028, &qword_1AE241808);
  v7 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_1ADDCEDE0(v5, &qword_1EB5BA028, &qword_1AE241808);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v5;
    return sub_1AE23C60C();
  }

  result = sub_1ADEA8494(v5);
  __break(1u);
  return result;
}

uint64_t sub_1ADE955E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v11 - v4);
  v6 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(a1 + v6, v5, &qword_1EB5BA028, &qword_1AE241808);
  v7 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_1ADDCEDE0(v5, &qword_1EB5BA028, &qword_1AE241808);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    v8 = *v5;
    v9 = v5[1];
    sub_1AE23C62C();
  }

  result = sub_1ADEA8494(v5);
  __break(1u);
  return result;
}

uint64_t sub_1ADE95774(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v11 - v4);
  v6 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(a1 + v6, v5, &qword_1EB5BA028, &qword_1AE241808);
  v7 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_1ADDCEDE0(v5, &qword_1EB5BA028, &qword_1AE241808);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    v9 = *v5;
    v8 = v5[1];
    sub_1AE23C5CC();
    return sub_1ADDCC35C(v9, v8);
  }

  result = sub_1ADEA8494(v5);
  __break(1u);
  return result;
}

uint64_t sub_1ADE95908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a3;
  v17[7] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v17 - v7;
  v9 = sub_1AE23C2FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(a1 + v14, v8, &qword_1EB5BA028, &qword_1AE241808);
  v15 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  if ((*(*(v15 - 8) + 48))(v8, 1, v15) == 1)
  {
    sub_1ADDCEDE0(v8, &qword_1EB5BA028, &qword_1AE241808);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    (*(v10 + 32))(v13, v8, v9);
    sub_1ADEA860C(&qword_1EB5B95B8, MEMORY[0x1E69AA900]);
    sub_1AE23C66C();
    return (*(v10 + 8))(v13, v9);
  }

  result = sub_1ADEA8494(v8);
  __break(1u);
  return result;
}

uint64_t sub_1ADE95B6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (v9 - v4);
  v6 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(a1 + v6, v5, &qword_1EB5BA028, &qword_1AE241808);
  v7 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_1ADDCEDE0(v5, &qword_1EB5BA028, &qword_1AE241808);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    v9[5] = *v5;
    sub_1ADEA3B8C();
    sub_1AE23C66C();
  }

  result = sub_1ADEA8494(v5);
  __break(1u);
  return result;
}

uint64_t sub_1ADE95D0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (v9 - v4);
  v6 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(a1 + v6, v5, &qword_1EB5BA028, &qword_1AE241808);
  v7 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_1ADDCEDE0(v5, &qword_1EB5BA028, &qword_1AE241808);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    v9[5] = *v5;
    sub_1ADEA3A2C();
    sub_1AE23C66C();
  }

  result = sub_1ADEA8494(v5);
  __break(1u);
  return result;
}

uint64_t sub_1ADE95EAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (v9 - v4);
  v6 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(a1 + v6, v5, &qword_1EB5BA028, &qword_1AE241808);
  v7 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_1ADDCEDE0(v5, &qword_1EB5BA028, &qword_1AE241808);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    v9[5] = *v5;
    sub_1ADEA376C();
    sub_1AE23C66C();
  }

  result = sub_1ADEA8494(v5);
  __break(1u);
  return result;
}

BOOL sub_1ADE9604C(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v3 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA020, &qword_1AE241800);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v29 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v18 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(a1 + v18, v17, &qword_1EB5BA028, &qword_1AE241808);
  v19 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  v20 = v30;
  swift_beginAccess();
  v21 = *(v8 + 56);
  sub_1ADDCEE40(v17, v11, &qword_1EB5BA028, &qword_1AE241808);
  sub_1ADDCEE40(v20 + v19, &v11[v21], &qword_1EB5BA028, &qword_1AE241808);
  v22 = *(v4 + 48);
  if (v22(v11, 1, v3) != 1)
  {
    v23 = v29;
    sub_1ADDCEE40(v11, v29, &qword_1EB5BA028, &qword_1AE241808);
    if (v22(&v11[v21], 1, v3) != 1)
    {
      v25 = v28;
      sub_1ADEA84F0(&v11[v21], v28);
      v26 = sub_1ADEA7754(v23, v25);
      sub_1ADEA8494(v25);
      sub_1ADDCEDE0(v17, &qword_1EB5BA028, &qword_1AE241808);
      sub_1ADEA8494(v23);
      sub_1ADDCEDE0(v11, &qword_1EB5BA028, &qword_1AE241808);
      return (v26 & 1) != 0;
    }

    sub_1ADDCEDE0(v17, &qword_1EB5BA028, &qword_1AE241808);
    sub_1ADEA8494(v23);
LABEL_6:
    sub_1ADDCEDE0(v11, &qword_1EB5BA020, &qword_1AE241800);
    return 0;
  }

  sub_1ADDCEDE0(v17, &qword_1EB5BA028, &qword_1AE241808);
  if (v22(&v11[v21], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_1ADDCEDE0(v11, &qword_1EB5BA028, &qword_1AE241808);
  return 1;
}

uint64_t sub_1ADE963B8@<X0>(void *a1@<X8>)
{
  if (qword_1EB5B9970 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EB5BA550;
}

void (*sub_1ADE96448(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADE9654C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEA85B8();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADE965BC(uint64_t a1)
{
  v2 = sub_1ADEA4D6C();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADE965F8()
{
  sub_1ADEA4D6C();

  return sub_1AE23C54C();
}

uint64_t sub_1ADE9667C()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7590);
  __swift_project_value_buffer(v0, qword_1EB5D7590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1AE2427D0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "register";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1AE23C67C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "set";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "dictionary";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "composite";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "string";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "array";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "counter";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "taggedCRDT";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "customCRDT";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  return sub_1AE23C68C();
}

uint64_t sub_1ADE969F8()
{
  sub_1ADE52030(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE96A3C()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = *v0;
    type metadata accessor for Proto4_CRDT._StorageClass();
    v5 = swift_allocObject();
    v6 = *(v4 + 16);
    v7 = *(v4 + 24);
    v8 = *(v4 + 32);
    v9 = *(v4 + 40);
    v10 = *(v4 + 48);
    v11 = *(v4 + 56);
    v12 = *(v4 + 64);
    *(v5 + 16) = v6;
    *(v5 + 24) = v7;
    *(v5 + 32) = v8;
    *(v5 + 40) = v9;
    *(v5 + 48) = v10;
    *(v5 + 56) = v11;
    *(v5 + 64) = v12;
    sub_1ADE51F04(v6, v7, v8, v9, v10, v11, v12);
    sub_1ADE52030(0, 0, 0, 0, 0, 0, 0xFFu);

    *v0 = v5;
    v3 = v5;
  }

  return sub_1ADE96B10(v3);
}

uint64_t sub_1ADE96B10(uint64_t a1)
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    if (result <= 4)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1ADE96F54(a1);
        }

        else
        {
          sub_1ADE970F0(a1);
        }
      }

      else if (result == 1)
      {
        sub_1ADE96CB8(a1);
      }

      else if (result == 2)
      {
        sub_1ADE96DB8(a1);
      }
    }

    else if (result <= 6)
    {
      if (result == 5)
      {
        sub_1ADE971FC(a1);
      }

      else
      {
        sub_1ADE97390(a1);
      }
    }

    else
    {
      switch(result)
      {
        case 7:
          sub_1ADE97524(a1);
          break;
        case 8:
          sub_1ADE976CC(a1);
          break;
        case 9:
          sub_1ADE977D8(a1);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_1ADE96CB8(uint64_t a1)
{
  v12 = 0;
  v3 = *(a1 + 64);
  if (!*(a1 + 64))
  {
    v12 = *(a1 + 16);
    sub_1ADE51F18(v12, *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 0);
  }

  sub_1ADEA43CC();
  sub_1AE23C4FC();
  result = v12;
  if (v1)
  {
  }

  if (v12)
  {
    if (v3 != 255)
    {
      sub_1AE23C39C();
      result = v12;
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    *(a1 + 16) = result;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    v11 = *(a1 + 64);
    *(a1 + 49) = 0u;
    return sub_1ADE52030(v6, v5, v7, v8, v9, v10, v11);
  }

  return result;
}

uint64_t sub_1ADE96DB8(uint64_t a1)
{
  v17 = 0u;
  v18 = 0u;
  v3 = *(a1 + 64);
  if (v3 == 1)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    sub_1ADE51F18(v7, v6, v5, v4, *(a1 + 48), *(a1 + 56), 1u);
    sub_1ADEA8718(0, 0, 0);
    *&v17 = v7;
    *(&v17 + 1) = v6;
    *&v18 = v5;
    *(&v18 + 1) = v4;
  }

  sub_1ADEA410C();
  sub_1AE23C4FC();
  if (v1)
  {
    v8 = v18;
    return sub_1ADEA8718(v17, *(&v17 + 1), v8);
  }

  if (!v18)
  {
    v8 = 0;
    return sub_1ADEA8718(v17, *(&v17 + 1), v8);
  }

  sub_1ADDD86D8(v17, *(&v17 + 1));

  if (v3 != 255)
  {
    sub_1AE23C39C();
  }

  sub_1ADEA8718(v17, *(&v17 + 1), v18);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  *(a1 + 16) = v17;
  *(a1 + 32) = v18;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v16 = *(a1 + 64);
  *(a1 + 64) = 1;
  return sub_1ADE52030(v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1ADE96F54(uint64_t a1)
{
  v17 = 0u;
  v18 = 0u;
  v3 = *(a1 + 64);
  if (v3 == 2)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    sub_1ADE51F18(v7, v6, v5, v4, *(a1 + 48), *(a1 + 56), 2u);
    sub_1ADEA8718(0, 0, 0);
    *&v17 = v7;
    *(&v17 + 1) = v6;
    *&v18 = v5;
    *(&v18 + 1) = v4;
  }

  sub_1ADEA410C();
  sub_1AE23C4FC();
  if (v1)
  {
    v8 = v18;
    return sub_1ADEA8718(v17, *(&v17 + 1), v8);
  }

  if (!v18)
  {
    v8 = 0;
    return sub_1ADEA8718(v17, *(&v17 + 1), v8);
  }

  sub_1ADDD86D8(v17, *(&v17 + 1));

  if (v3 != 255)
  {
    sub_1AE23C39C();
  }

  sub_1ADEA8718(v17, *(&v17 + 1), v18);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  *(a1 + 16) = v17;
  *(a1 + 32) = v18;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v16 = *(a1 + 64);
  *(a1 + 64) = 2;
  return sub_1ADE52030(v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1ADE970F0(uint64_t a1)
{
  v12 = 0;
  v3 = *(a1 + 64);
  if (v3 == 3)
  {
    v12 = *(a1 + 16);
    sub_1ADE51F18(v12, *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 3u);
  }

  sub_1ADEA3E4C();
  sub_1AE23C4FC();
  result = v12;
  if (v1)
  {
  }

  if (v12)
  {
    if (v3 != 255)
    {
      sub_1AE23C39C();
      result = v12;
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    *(a1 + 16) = result;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0;
    v11 = *(a1 + 64);
    *(a1 + 64) = 3;
    return sub_1ADE52030(v6, v5, v7, v8, v9, v10, v11);
  }

  return result;
}

uint64_t sub_1ADE971FC(uint64_t a1)
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v3 = *(a1 + 64);
  if (v3 == 4)
  {
    v17 = *(a1 + 16);
    v18 = *(a1 + 32);
    v19 = *(a1 + 48);
    sub_1ADE51F18(v17, *(&v17 + 1), v18, *(&v18 + 1), v19, *(&v19 + 1), 4u);
  }

  sub_1ADEA334C();
  sub_1AE23C4FC();
  v5 = *(&v17 + 1);
  result = v17;
  v7 = *(&v18 + 1);
  v6 = v18;
  v9 = *(&v19 + 1);
  v8 = v19;
  if (v1)
  {
    return sub_1ADEA8764(v17, *(&v17 + 1));
  }

  if (*(&v17 + 1))
  {
    if (v3 != 255)
    {
      sub_1AE23C39C();
      v9 = *(&v19 + 1);
      v8 = v19;
      v5 = *(&v17 + 1);
      v7 = *(&v18 + 1);
      v6 = v18;
      result = v17;
    }

    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    *(a1 + 16) = result;
    *(a1 + 24) = v5;
    *(a1 + 32) = v6;
    *(a1 + 40) = v7;
    *(a1 + 48) = v8;
    *(a1 + 56) = v9;
    v16 = *(a1 + 64);
    *(a1 + 64) = 4;
    return sub_1ADE52030(v10, v11, v12, v13, v14, v15, v16);
  }

  return result;
}

uint64_t sub_1ADE97390(uint64_t a1)
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v3 = *(a1 + 64);
  if (v3 == 5)
  {
    v17 = *(a1 + 16);
    v18 = *(a1 + 32);
    v19 = *(a1 + 48);
    sub_1ADE51F18(v17, *(&v17 + 1), v18, *(&v18 + 1), v19, *(&v19 + 1), 5u);
  }

  sub_1ADEA334C();
  sub_1AE23C4FC();
  v5 = *(&v17 + 1);
  result = v17;
  v7 = *(&v18 + 1);
  v6 = v18;
  v9 = *(&v19 + 1);
  v8 = v19;
  if (v1)
  {
    return sub_1ADEA8764(v17, *(&v17 + 1));
  }

  if (*(&v17 + 1))
  {
    if (v3 != 255)
    {
      sub_1AE23C39C();
      v9 = *(&v19 + 1);
      v8 = v19;
      v5 = *(&v17 + 1);
      v7 = *(&v18 + 1);
      v6 = v18;
      result = v17;
    }

    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    *(a1 + 16) = result;
    *(a1 + 24) = v5;
    *(a1 + 32) = v6;
    *(a1 + 40) = v7;
    *(a1 + 48) = v8;
    *(a1 + 56) = v9;
    v16 = *(a1 + 64);
    *(a1 + 64) = 5;
    return sub_1ADE52030(v10, v11, v12, v13, v14, v15, v16);
  }

  return result;
}

uint64_t sub_1ADE97524(uint64_t a1)
{
  v17 = 0;
  v18 = 0;
  v19 = xmmword_1AE241280;
  v3 = *(a1 + 64);
  if (v3 == 6)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    sub_1ADE51F18(v7, v6, v5, v4, *(a1 + 48), *(a1 + 56), 6u);
    sub_1ADEA87D4(0, 0, 1);
    v17 = v7;
    v18 = v6;
    *&v19 = v5;
    *(&v19 + 1) = v4;
  }

  sub_1ADEA426C();
  sub_1AE23C4FC();
  if (v1)
  {
    v8 = v19;
    return sub_1ADEA87D4(v17, v18, v8);
  }

  if (v19 == 1)
  {
    v8 = 1;
    return sub_1ADEA87D4(v17, v18, v8);
  }

  sub_1ADDD86D8(v17, v18);

  if (v3 != 255)
  {
    sub_1AE23C39C();
  }

  sub_1ADEA87D4(v17, v18, v19);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  *(a1 + 16) = v17;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v16 = *(a1 + 64);
  *(a1 + 64) = 6;
  return sub_1ADE52030(v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1ADE976CC(uint64_t a1)
{
  v12 = 0;
  v3 = *(a1 + 64);
  if (v3 == 7)
  {
    v12 = *(a1 + 16);
    sub_1ADE51F18(v12, *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 7u);
  }

  sub_1ADEA38CC();
  sub_1AE23C4FC();
  result = v12;
  if (v1)
  {
  }

  if (v12)
  {
    if (v3 != 255)
    {
      sub_1AE23C39C();
      result = v12;
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    *(a1 + 16) = result;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0;
    v11 = *(a1 + 64);
    *(a1 + 64) = 7;
    return sub_1ADE52030(v6, v5, v7, v8, v9, v10, v11);
  }

  return result;
}

uint64_t sub_1ADE977D8(uint64_t a1)
{
  v12 = 0;
  v3 = *(a1 + 64);
  if (v3 == 8)
  {
    v12 = *(a1 + 16);
    sub_1ADE51F18(v12, *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 8u);
  }

  sub_1ADEA360C();
  sub_1AE23C4FC();
  result = v12;
  if (v1)
  {
  }

  if (v12)
  {
    if (v3 != 255)
    {
      sub_1AE23C39C();
      result = v12;
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    *(a1 + 16) = result;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0;
    v11 = *(a1 + 64);
    *(a1 + 64) = 8;
    return sub_1ADE52030(v6, v5, v7, v8, v9, v10, v11);
  }

  return result;
}

uint64_t sub_1ADE978E4(uint64_t result)
{
  v1 = *(result + 64);
  if (v1 > 4)
  {
    if (*(result + 64) <= 6u)
    {
      if (v1 == 5)
      {
        return sub_1ADE97C90(result);
      }

      else
      {
        return sub_1ADE97D80(result);
      }
    }

    else if (v1 == 7)
    {
      return sub_1ADE97DFC(result);
    }

    else if (v1 == 8)
    {
      return sub_1ADE97E78(result);
    }
  }

  else if (*(result + 64) <= 1u)
  {
    if (*(result + 64))
    {
      return sub_1ADE97A1C(result);
    }

    else
    {
      return sub_1ADE979A4(result);
    }
  }

  else if (v1 == 2)
  {
    return sub_1ADE97AA0(result);
  }

  else if (v1 == 3)
  {
    return sub_1ADE97B24(result);
  }

  else
  {
    return sub_1ADE97BA0(result);
  }

  return result;
}

uint64_t sub_1ADE979A4(uint64_t result)
{
  if (*(result + 64))
  {
    __break(1u);
  }

  else
  {
    v1 = *(result + 16);
    sub_1ADEA43CC();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADE97A1C(uint64_t result)
{
  if (*(result + 64) == 1)
  {
    v1 = *(result + 16);
    v2 = *(result + 32);
    v3 = *(result + 40);
    sub_1ADEA410C();
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADE97AA0(uint64_t result)
{
  if (*(result + 64) == 2)
  {
    v1 = *(result + 16);
    v2 = *(result + 32);
    v3 = *(result + 40);
    sub_1ADEA410C();
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADE97B24(uint64_t result)
{
  if (*(result + 64) == 3)
  {
    v1 = *(result + 16);
    sub_1ADEA3E4C();
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADE97BA0(uint64_t result)
{
  if (*(result + 64) == 4)
  {
    sub_1ADE51F18(*(result + 16), *(result + 24), *(result + 32), *(result + 40), *(result + 48), *(result + 56), 4u);
    sub_1ADEA334C();
    sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADE97C90(uint64_t result)
{
  if (*(result + 64) == 5)
  {
    sub_1ADE51F18(*(result + 16), *(result + 24), *(result + 32), *(result + 40), *(result + 48), *(result + 56), 5u);
    sub_1ADEA334C();
    sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADE97D80(uint64_t result)
{
  if (*(result + 64) == 6)
  {
    v1 = *(result + 16);
    v2 = *(result + 32);
    sub_1ADEA426C();
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADE97DFC(uint64_t result)
{
  if (*(result + 64) == 7)
  {
    v1 = *(result + 16);
    sub_1ADEA38CC();
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADE97E78(uint64_t result)
{
  if (*(result + 64) == 8)
  {
    v1 = *(result + 16);
    sub_1ADEA360C();
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1ADE97EF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 64);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  v14 = *(a2 + 48);
  v13 = *(a2 + 56);
  v15 = *(a2 + 64);
  if (v8 != 255)
  {
    if (v15 != 255)
    {
      v49[0] = *(a2 + 16);
      v49[1] = v9;
      v49[2] = v12;
      v49[3] = v11;
      v49[4] = v14;
      v49[5] = v13;
      v39 = v15;
      v50 = v15;
      v47[0] = v3;
      v47[1] = v2;
      v47[2] = v5;
      v47[3] = v4;
      v47[4] = v7;
      v47[5] = v6;
      v48 = v8;
      v37 = v10;
      v16 = v2;
      v35 = v5;
      v36 = v2;
      v17 = v9;
      v18 = v12;
      v34 = v12;
      v19 = v5;
      v20 = v11;
      v43 = v7;
      v45 = v6;
      v21 = v8;
      v41 = v8;
      sub_1ADE51F04(v3, v16, v19, v4, v7, v6, v8);
      sub_1ADE51F04(v37, v17, v18, v20, v14, v13, v39);
      sub_1ADE51F04(v3, v36, v35, v4, v43, v45, v21);
      sub_1ADE51F04(v37, v17, v34, v20, v14, v13, v39);

      v32 = sub_1ADEA712C(v47, v49);
      sub_1ADE52030(v37, v17, v34, v20, v14, v13, v39);
      sub_1ADE52030(v3, v36, v35, v4, v43, v45, v41);

      sub_1ADE52030(v37, v17, v34, v20, v14, v13, v39);
      sub_1ADE52030(v3, v36, v35, v4, v43, v45, v41);
      return (v32 & 1) != 0;
    }

LABEL_6:
    v23 = *(a2 + 16);
    v24 = *(a2 + 24);
    v25 = *(a2 + 40);
    v44 = *(a1 + 48);
    v46 = *(a1 + 56);
    v40 = *(a2 + 64);
    v42 = *(a1 + 64);
    sub_1ADE51F04(*(a1 + 16), v2, v5, v4, v7, v6, v8);
    sub_1ADE51F04(v23, v24, v12, v25, v14, v13, v40);
    sub_1ADE52030(v3, v2, v5, v4, v44, v46, v42);
    sub_1ADE52030(v23, v24, v12, v25, v14, v13, v40);
    return 0;
  }

  if (v15 != 255)
  {
    goto LABEL_6;
  }

  v38 = *(a2 + 16);
  v33 = *(a2 + 24);
  v26 = *(a1 + 32);
  v27 = *(a2 + 32);
  v28 = *(a1 + 40);
  v29 = *(a2 + 40);
  v30 = *(a1 + 48);
  v31 = *(a1 + 56);
  sub_1ADE51F04(v3, v2, v26, v28, v7, v6, 0xFFu);
  sub_1ADE51F04(v38, v33, v27, v29, v14, v13, 0xFFu);
  sub_1ADE52030(v3, v2, v26, v28, v30, v31, 0xFFu);
  return 1;
}

uint64_t sub_1ADE98258@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Proto4_CRDT._StorageClass();
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

void (*sub_1ADE982B0(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADE983B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEA86C4();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADE98424(uint64_t a1)
{
  v2 = sub_1ADEA4C0C();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADE98460()
{
  sub_1ADEA4C0C();

  return sub_1AE23C54C();
}

void (*sub_1ADE98520(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADE98648(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEA8824();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADE986B8(uint64_t a1)
{
  v2 = sub_1ADEA4AAC();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADE986F4()
{
  sub_1ADEA4AAC();

  return sub_1AE23C54C();
}

uint64_t sub_1ADE98758()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D75C0);
  __swift_project_value_buffer(v0, qword_1EB5D75C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "counter";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADE98920(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1AE23C32C();
  v17 = *(v8 - 8);
  v9 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_10;
    }

    v13 = *(a2 + 16);
    v14 = *(a2 + 24);
  }

  else
  {
    if (!v12)
    {
      if ((a3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_1AE23C5CC();
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    v13 = a2;
    v14 = a2 >> 32;
  }

  if (v13 != v14)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!a4 || (result = sub_1AE23C5EC(), !v4))
  {
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v17 + 8))(v11, v8);
  }

  return result;
}

double sub_1ADE98ABC@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AE241910;
  *(a1 + 16) = 0;
  return result;
}

void (*sub_1ADE98AEC(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADE98BF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEA8878();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADE98C64(uint64_t a1)
{
  v2 = sub_1ADEA494C();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADE98CA0()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE98D0C()
{
  sub_1ADEA494C();

  return sub_1AE23C54C();
}

uint64_t sub_1ADE98D58()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE98DD8()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D75D8);
  __swift_project_value_buffer(v0, qword_1EB5D75D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuidIndex";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "counter";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADE98FA0()
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_1AE23C43C();
    }
  }

  return result;
}

uint64_t sub_1ADE99020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AE23C32C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    result = sub_1AE23C5EC();
    if (v3)
    {
      return result;
    }

    if (!a3)
    {
      goto LABEL_7;
    }

LABEL_6:
    result = sub_1AE23C5EC();
    if (v3)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (a3)
  {
    goto LABEL_6;
  }

LABEL_7:
  sub_1AE23C31C();
  sub_1AE23C30C();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1ADE99198(uint64_t a1)
{
  v2 = sub_1AE23C32C();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*sub_1ADE991FC(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADE992EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEA88CC();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADE9935C(uint64_t a1)
{
  v2 = sub_1ADEA47EC();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADE99398()
{
  v2 = *v0;
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE993FC()
{
  sub_1ADEA47EC();

  return sub_1AE23C54C();
}

uint64_t sub_1ADE99448()
{
  v2 = *v0;
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

void (*sub_1ADE994F8(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADE99620(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEA8920();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADE99690(uint64_t a1)
{
  v2 = sub_1ADEA468C();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADE996CC()
{
  sub_1ADEA468C();

  return sub_1AE23C54C();
}

uint64_t sub_1ADE99730(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, double))
{
  v8 = sub_1AE23C32C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  if (a5(*a1, *a2, v14))
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
    v17 = sub_1AE23CCBC();
    v18 = *(v9 + 8);
    v18(v12, v8);
    v18(v16, v8);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1ADE998B4()
{
  strcpy(v1, "Proto4.Version");
  HIBYTE(v1[1]) = -18;
  result = MEMORY[0x1B26FB670](0x6E6565532ELL, 0xE500000000000000);
  qword_1EB5D7608 = v1[0];
  unk_1EB5D7610 = v1[1];
  return result;
}

uint64_t sub_1ADE99924()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7618);
  __swift_project_value_buffer(v0, qword_1EB5D7618);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "runs";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADE99AEC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1AE23C40C();
    }

    else if (result == 2)
    {
      a4(v4 + 16, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1ADE99B88(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1AE23C32C();
  v17 = *(v8 - 8);
  v9 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_10;
    }

    v13 = *(a2 + 16);
    v14 = *(a2 + 24);
  }

  else
  {
    if (!v12)
    {
      if ((a3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_1AE23C5CC();
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    v13 = a2;
    v14 = a2 >> 32;
  }

  if (v13 != v14)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!*(a4 + 16) || (result = sub_1AE23C56C(), !v4))
  {
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v17 + 8))(v11, v8);
  }

  return result;
}

void (*sub_1ADE99D50(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADE99E58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEA8974();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADE99EC8(uint64_t a1)
{
  v2 = sub_1ADEA452C();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADE99F04()
{
  sub_1ADEA452C();

  return sub_1AE23C54C();
}

uint64_t sub_1ADE99F68()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7630);
  __swift_project_value_buffer(v0, qword_1EB5D7630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "timestamp";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "value";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

void *sub_1ADE9A17C(void *a1)
{
  *(v1 + 1) = xmmword_1AE241910;
  *(v1 + 2) = xmmword_1AE2427C0;
  v1[6] = 0;
  v1[7] = 0;
  swift_beginAccess();
  v3 = a1[2];
  v4 = a1[3];
  swift_beginAccess();
  v5 = v1[2];
  v6 = v1[3];
  v1[2] = v3;
  v1[3] = v4;
  sub_1ADDD86D8(v3, v4);
  sub_1ADDCC35C(v5, v6);
  swift_beginAccess();
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  swift_beginAccess();
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1[6];
  v1[4] = v7;
  v1[5] = v8;
  v1[6] = v9;
  sub_1ADDE0F78(v7, v8);
  sub_1ADDE158C(v10, v11);
  swift_beginAccess();
  v13 = a1[7];

  swift_beginAccess();
  v14 = v1[7];
  v1[7] = v13;

  return v1;
}

uint64_t sub_1ADE9A2F0()
{
  sub_1ADDCC35C(v0[2], v0[3]);
  v1 = v0[6];
  sub_1ADDE158C(v0[4], v0[5]);
  v2 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE9A33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AE23C38C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1ADE9A428();
          break;
        case 2:
          sub_1ADE9D73C(a2, a1, a3, a4, sub_1ADEA494C);
          break;
        case 1:
          sub_1ADE9D6B8();
          break;
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADE9A428()
{
  swift_beginAccess();
  sub_1ADEA4D6C();
  sub_1AE23C4FC();
  return swift_endAccess();
}

uint64_t sub_1ADE9A4BC(void *a1)
{
  swift_beginAccess();
  v3 = a1[2];
  v4 = a1[3];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2 || *(v3 + 16) == *(v3 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
    if ((v4 & 0xFF000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    sub_1ADDD86D8(a1[2], a1[3]);
    sub_1AE23C5CC();
    result = sub_1ADDCC35C(v3, v4);
    if (v1)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v3 != v3 >> 32)
  {
    goto LABEL_9;
  }

LABEL_10:
  result = sub_1ADE9A5D8(a1);
  if (!v1)
  {
    return sub_1ADE9A684(a1);
  }

  return result;
}

uint64_t sub_1ADE9A5D8(void *a1)
{
  result = swift_beginAccess();
  if (a1[5] >> 60 != 15)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    sub_1ADEA494C();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADE9A684(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 56))
  {
    v3 = *(a1 + 56);
    sub_1ADEA4D6C();
    return sub_1AE23C66C();
  }

  return result;
}

BOOL sub_1ADE9A71C(void *a1, void *a2)
{
  v4 = sub_1AE23C32C();
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34[-v9];
  swift_beginAccess();
  v11 = a1[2];
  v12 = a1[3];
  swift_beginAccess();
  v13 = a2[2];
  v14 = a2[3];

  sub_1ADDD86D8(v11, v12);
  sub_1ADDD86D8(v13, v14);
  v15 = sub_1ADDD6F8C(v11, v12, v13, v14);
  sub_1ADDCC35C(v13, v14);
  sub_1ADDCC35C(v11, v12);
  if ((v15 & 1) == 0)
  {
    goto LABEL_24;
  }

  v36 = v4;
  swift_beginAccess();
  v17 = a1[4];
  v16 = a1[5];
  v18 = a1[6];
  swift_beginAccess();
  v20 = a2[4];
  v19 = a2[5];
  v21 = a2[6];
  sub_1ADDE0F78(v17, v16);
  sub_1ADDE0F78(v20, v19);
  if (v16 >> 60 == 15)
  {
    if (v19 >> 60 == 15)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  sub_1ADDE0F78(v17, v16);
  sub_1ADDE0F78(v20, v19);
  if (v19 >> 60 == 15)
  {

    sub_1ADDE158C(v20, v19);
    sub_1ADDE158C(v17, v16);
LABEL_13:
    sub_1ADDE158C(v17, v16);
    v28 = v20;
    v29 = v19;
LABEL_20:
    sub_1ADDE158C(v28, v29);
    return 0;
  }

  if ((sub_1ADDD6F8C(v17, v16, v20, v19) & 1) == 0 || v18 != v21)
  {

    sub_1ADDE158C(v20, v19);
    sub_1ADDE158C(v20, v19);
    sub_1ADDE158C(v17, v16);
    goto LABEL_19;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
  v30 = v36;
  v35 = sub_1AE23CCBC();
  sub_1ADDE158C(v20, v19);
  sub_1ADDE158C(v20, v19);
  sub_1ADDE158C(v17, v16);
  v31 = *(v37 + 8);
  v31(v7, v30);
  v31(v10, v30);
  if ((v35 & 1) == 0)
  {

LABEL_19:
    v28 = v17;
    v29 = v16;
    goto LABEL_20;
  }

LABEL_4:
  sub_1ADDE158C(v17, v16);
  swift_beginAccess();
  v22 = a1[7];
  swift_beginAccess();
  v23 = a2[7];
  if (!v22)
  {
    v32 = a2[7];

    if (!v23)
    {
      return 1;
    }

    goto LABEL_25;
  }

  if (!v23)
  {
LABEL_24:

LABEL_25:

    return 0;
  }

  v24 = a2[7];

  if (v22 != v23 && !sub_1ADE9604C(v22, v23))
  {

    goto LABEL_24;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
  v25 = v36;
  v26 = sub_1AE23CCBC();
  v27 = *(v37 + 8);
  v27(v7, v25);
  v27(v10, v25);

  return (v26 & 1) != 0;
}

uint64_t sub_1ADE9AC5C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Proto4_Register._StorageClass();
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

void (*sub_1ADE9ACB8(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADE9ADFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEA89C8();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADE9AE6C(uint64_t a1)
{
  v2 = sub_1ADEA43CC();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADE9AEA8()
{
  sub_1ADEA43CC();

  return sub_1AE23C54C();
}

uint64_t sub_1ADE9AF2C()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7648);
  __swift_project_value_buffer(v0, qword_1EB5D7648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "positive";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "negative";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADE9B13C()
{
  result = sub_1AE23C38C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3 || result == 2)
      {
        sub_1ADEA468C();
        sub_1AE23C4FC();
      }

      else if (result == 1)
      {
        sub_1AE23C40C();
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

void sub_1ADE9B21C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AE23C32C();
  v11 = *(v10 - 8);
  v18 = v10;
  v19 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_10;
    }

    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
  }

  else
  {
    if (!v15)
    {
      if ((a3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      sub_1AE23C5CC();
      if (v5)
      {
        return;
      }

      goto LABEL_10;
    }

    v16 = a2;
    v17 = a2 >> 32;
  }

  if (v16 != v17)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (a4)
  {
    v20 = a4;
    sub_1ADEA468C();
    sub_1AE23C66C();
  }

  if (!v5)
  {
    if (a5)
    {
      v20 = a5;
      sub_1ADEA468C();
      sub_1AE23C66C();
    }

    sub_1AE23C31C();
    sub_1AE23C30C();
    (*(v19 + 8))(v14, v18);
  }
}

double sub_1ADE9B404@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AE241910;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

void (*sub_1ADE9B43C(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADE9B530(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEA8A1C();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADE9B5A0(uint64_t a1)
{
  v2 = sub_1ADEA426C();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADE9B5DC()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE9B640()
{
  sub_1ADEA426C();

  return sub_1AE23C54C();
}

uint64_t sub_1ADE9B68C()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE9B704()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7660);
  __swift_project_value_buffer(v0, qword_1EB5D7660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "version";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "insertions";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADE9B918()
{
  result = sub_1AE23C38C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1ADEA3FAC();
          sub_1AE23C4EC();
          break;
        case 2:
          sub_1ADEA468C();
          sub_1AE23C4FC();
          break;
        case 1:
          sub_1AE23C40C();
          break;
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

void sub_1ADE9BA20(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AE23C32C();
  v11 = *(v10 - 8);
  v18 = v10;
  v19 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_10;
    }

    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
  }

  else
  {
    if (!v15)
    {
      if ((a3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      sub_1AE23C5CC();
      if (v5)
      {
        return;
      }

      goto LABEL_10;
    }

    v16 = a2;
    v17 = a2 >> 32;
  }

  if (v16 != v17)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (a5)
  {
    v20 = a5;
    sub_1ADEA468C();
    sub_1AE23C66C();
  }

  if (!v5)
  {
    if (*(a4 + 16))
    {
      sub_1ADEA3FAC();
      sub_1AE23C65C();
    }

    sub_1AE23C31C();
    sub_1AE23C30C();
    (*(v19 + 8))(v14, v18);
  }
}

double sub_1ADE9BC08@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AE241910;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = 0;
  return result;
}

void (*sub_1ADE9BC40(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADE9BCF4;
}

uint64_t sub_1ADE9BD38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEA8A70();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADE9BDA8(uint64_t a1)
{
  v2 = sub_1ADEA410C();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADE9BDE4()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE9BE50()
{
  sub_1ADEA410C();

  return sub_1AE23C54C();
}

uint64_t sub_1ADE9BE9C()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE9BF40()
{
  result = MEMORY[0x1B26FB670](0x746E656D656C452ELL, 0xE800000000000000);
  qword_1EB5D7678 = 0x532E346F746F7250;
  unk_1EB5D7680 = 0xEA00000000007465;
  return result;
}

uint64_t sub_1ADE9BFAC()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7688);
  __swift_project_value_buffer(v0, qword_1EB5D7688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "addedBy";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADE9C1C0()
{
  result = sub_1AE23C38C();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result == 3)
      {
        v3 = v0;
        sub_1ADEA468C();
        goto LABEL_5;
      }

      if (result == 2)
      {
        break;
      }

      if (result == 1)
      {
        v3 = v0;
        sub_1ADEA4D6C();
        goto LABEL_5;
      }

LABEL_6:
      result = sub_1AE23C38C();
    }

    v3 = v0;
    sub_1ADEA4C0C();
LABEL_5:
    v0 = v3;
    sub_1AE23C4FC();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1ADE9C2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a3;
  v12 = sub_1AE23C32C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ADEA8BC0(a2, a1, a5, a6, sub_1ADEA4D6C);
  if (!v6)
  {
    sub_1ADEA8BC0(v19, a1, a5, a6, sub_1ADEA4C0C);
    sub_1ADEA8E90(a4);
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v13 + 8))(v16, v12);
  }

  return result;
}

void sub_1ADE9C464(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void (*sub_1ADE9C498(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADE9C58C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEA8AC4();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADE9C5FC(uint64_t a1)
{
  v2 = sub_1ADEA3FAC();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADE9C638()
{
  sub_1ADEA3FAC();

  return sub_1AE23C54C();
}

void (*sub_1ADE9C6D8(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADE9C800(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEA8B18();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADE9C870(uint64_t a1)
{
  v2 = sub_1ADEA3E4C();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADE9C8AC()
{
  sub_1ADEA3E4C();

  return sub_1AE23C54C();
}

uint64_t sub_1ADE9C910()
{
  strcpy(v1, "Proto4.Struct");
  HIWORD(v1[1]) = -4864;
  result = MEMORY[0x1B26FB670](0x646C6569462ELL, 0xE600000000000000);
  qword_1EB5D76B8 = v1[0];
  unk_1EB5D76C0 = v1[1];
  return result;
}

uint64_t sub_1ADE9C980()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D76C8);
  __swift_project_value_buffer(v0, qword_1EB5D76C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADE9CB48()
{
  result = sub_1AE23C38C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1AE23C4AC();
      }

      else if (result == 2)
      {
        sub_1ADEA4C0C();
        sub_1AE23C4FC();
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADE9CC04(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_1AE23C32C();
  v20 = *(v13 - 8);
  v14 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v17 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17 || (result = sub_1AE23C62C(), !v6))
  {
    result = sub_1ADEA8BC0(a4, a1, a5, a6, sub_1ADEA4C0C);
    if (!v6)
    {
      sub_1AE23C31C();
      sub_1AE23C30C();
      return (*(v20 + 8))(v16, v13);
    }
  }

  return result;
}

void sub_1ADE9CD94(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
}

void (*sub_1ADE9CDCC(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADE9CEC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEA8B6C();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADE9CF30(uint64_t a1)
{
  v2 = sub_1ADEA3CEC();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADE9CF6C()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE9CFD8()
{
  sub_1ADEA3CEC();

  return sub_1AE23C54C();
}

uint64_t sub_1ADE9D024()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE9D0A4()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D76E0);
  __swift_project_value_buffer(v0, qword_1EB5D76E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE242560;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "version";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "crdt";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "keyPath";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_1AE23C68C();
}

void *sub_1ADE9D2F4(void *a1)
{
  *(v1 + 1) = xmmword_1AE241910;
  v1[6] = 0;
  v1[5] = 0;
  v1[4] = 0;
  swift_beginAccess();
  v3 = a1[2];
  v4 = a1[3];
  swift_beginAccess();
  v5 = v1[2];
  v6 = v1[3];
  v1[2] = v3;
  v1[3] = v4;
  sub_1ADDD86D8(v3, v4);
  sub_1ADDCC35C(v5, v6);
  swift_beginAccess();
  v7 = a1[4];
  swift_beginAccess();
  v8 = v1[4];
  v1[4] = v7;

  swift_beginAccess();
  v9 = a1[5];
  swift_beginAccess();
  v10 = v1[5];
  v1[5] = v9;

  swift_beginAccess();
  v11 = a1[6];

  swift_beginAccess();
  v12 = v1[6];
  v1[6] = v11;

  return v1;
}

uint64_t sub_1ADE9D48C()
{
  sub_1ADDCC35C(v0[2], v0[3]);
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE9D4DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = *v7;
    a4(0);
    swift_allocObject();
    v16 = a6(v17);
    *v10 = v16;
  }

  return a7(v16, a1, a2, a3);
}

uint64_t sub_1ADE9D5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AE23C38C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1ADE9D7E0();
        }

        else if (result == 4)
        {
          sub_1ADE9D874();
        }
      }

      else if (result == 1)
      {
        sub_1ADE9D6B8();
      }

      else if (result == 2)
      {
        sub_1ADE9D73C(a2, a1, a3, a4, sub_1ADEA468C);
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADE9D6B8()
{
  swift_beginAccess();
  sub_1AE23C40C();
  return swift_endAccess();
}

uint64_t sub_1ADE9D73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v6 = swift_beginAccess();
  a5(v6);
  sub_1AE23C4FC();
  return swift_endAccess();
}

uint64_t sub_1ADE9D7E0()
{
  swift_beginAccess();
  sub_1ADEA4C0C();
  sub_1AE23C4FC();
  return swift_endAccess();
}

uint64_t sub_1ADE9D874()
{
  swift_beginAccess();
  sub_1ADEA4AAC();
  sub_1AE23C4FC();
  return swift_endAccess();
}

uint64_t sub_1ADE9D908(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2 && *(v3 + 16) != *(v3 + 24))
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!v5)
    {
      if ((v4 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      sub_1ADDD86D8(*(a1 + 16), *(a1 + 24));
      sub_1AE23C5CC();
      result = sub_1ADDCC35C(v3, v4);
      if (v1)
      {
        return result;
      }

      goto LABEL_10;
    }

    if (v3 != v3 >> 32)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  result = sub_1ADE9DA3C(a1);
  if (!v1)
  {
    sub_1ADE9DAD4(a1);
    return sub_1ADE9DB6C(a1);
  }

  return result;
}

uint64_t sub_1ADE9DA3C(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 32))
  {
    v3 = *(a1 + 32);
    sub_1ADEA468C();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADE9DAD4(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 40))
  {
    v3 = *(a1 + 40);
    sub_1ADEA4C0C();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADE9DB6C(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 48))
  {
    v3 = *(a1 + 48);
    sub_1ADEA4AAC();
    return sub_1AE23C66C();
  }

  return result;
}

BOOL sub_1ADE9DC04(void *a1, void *a2)
{
  v4 = sub_1AE23C32C();
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  swift_beginAccess();
  v11 = a1[2];
  v12 = a1[3];
  swift_beginAccess();
  v13 = a2[2];
  v14 = a2[3];

  sub_1ADDD86D8(v11, v12);
  sub_1ADDD86D8(v13, v14);
  v15 = sub_1ADDD6F8C(v11, v12, v13, v14);
  sub_1ADDCC35C(v13, v14);
  sub_1ADDCC35C(v11, v12);
  if ((v15 & 1) == 0)
  {
    goto LABEL_8;
  }

  swift_beginAccess();
  v16 = a1[4];
  swift_beginAccess();
  v17 = a2[4];
  if (v16)
  {
    if (!v17)
    {
      goto LABEL_8;
    }

    v18 = a2[4];

    sub_1ADE4E9A0(v19, v17);
    if ((v20 & 1) == 0)
    {
LABEL_24:

LABEL_25:

      return 0;
    }

    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
    v21 = sub_1AE23CCBC();

    v22 = *(v37 + 8);
    v22(v7, v4);
    v22(v10, v4);
    if ((v21 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v17)
  {
    goto LABEL_8;
  }

  swift_beginAccess();
  v24 = a1[5];
  swift_beginAccess();
  v25 = a2[5];
  if (!v24)
  {
    if (!v25)
    {
      goto LABEL_19;
    }

LABEL_8:

LABEL_9:

    return 0;
  }

  if (!v25)
  {
    goto LABEL_8;
  }

  v26 = a2[5];

  if (v24 != v25 && !sub_1ADE97EF4(v24, v25))
  {

    goto LABEL_9;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
  v27 = sub_1AE23CCBC();
  v28 = *(v37 + 8);
  v28(v7, v4);
  v28(v10, v4);

  if ((v27 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_19:
  swift_beginAccess();
  v29 = a1[6];
  swift_beginAccess();
  v30 = a2[6];
  if (!v29)
  {
    v36 = a2[6];

    if (!v30)
    {
      return 1;
    }

    goto LABEL_25;
  }

  if (!v30)
  {
    goto LABEL_8;
  }

  v31 = a2[6];

  sub_1ADE4CC60(v32, v30);
  if ((v33 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
  v34 = sub_1AE23CCBC();

  v35 = *(v37 + 8);
  v35(v7, v4);
  v35(v10, v4);
  return (v34 & 1) != 0;
}

uint64_t sub_1ADE9E10C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Proto4_Reference._StorageClass();
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

void (*sub_1ADE9E160(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADE9E2A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEA8C44();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADE9E314(uint64_t a1)
{
  v2 = sub_1ADEA3B8C();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADE9E350()
{
  sub_1ADEA3B8C();

  return sub_1AE23C54C();
}

uint64_t sub_1ADE9E410()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = *v0;
    type metadata accessor for Proto4_Optional._StorageClass();
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    swift_beginAccess();
    v6 = *(v4 + 16);
    swift_beginAccess();
    *(v5 + 16) = v6;

    *v0 = v5;
  }

  return sub_1ADE9E4F0();
}

uint64_t sub_1ADE9E4F0()
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1ADE9E564();
    }
  }

  return result;
}

uint64_t sub_1ADE9E564()
{
  swift_beginAccess();
  sub_1ADEA4D6C();
  sub_1AE23C4FC();
  return swift_endAccess();
}

uint64_t sub_1ADE9E5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, double))
{
  v11 = sub_1AE23C32C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a5(a2, a1, a3, a4, v14);
  if (!v5)
  {
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v12 + 8))(v16, v11);
  }

  return result;
}

uint64_t sub_1ADE9E72C(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 16))
  {
    v3 = *(a1 + 16);
    sub_1ADEA4D6C();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADE9E7C4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Proto4_Optional._StorageClass();
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

void (*sub_1ADE9E820(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADE9E924(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEA8C98();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADE9E994(uint64_t a1)
{
  v2 = sub_1ADEA3A2C();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADE9E9D0()
{
  sub_1ADEA3A2C();

  return sub_1AE23C54C();
}

uint64_t sub_1ADE9EA28()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7710);
  __swift_project_value_buffer(v0, qword_1EB5D7710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tag";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "wrapped";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADE9EBF0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t))
{
  v8 = v5;
  v12 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = *v5;
    a4(0);
    swift_allocObject();
    v14 = sub_1ADDE5178(v15);
    *v8 = v14;
  }

  return sub_1ADE9F338(v14, a1, a2, a3, a5);
}

uint64_t sub_1ADE9ECAC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Proto4_TaggedCRDT._StorageClass();
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

void (*sub_1ADE9ED00(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADE9EE3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEA8CEC();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADE9EEAC(uint64_t a1)
{
  v2 = sub_1ADEA38CC();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADE9EEE8()
{
  sub_1ADEA38CC();

  return sub_1AE23C54C();
}

uint64_t sub_1ADE9EF6C()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7728);
  __swift_project_value_buffer(v0, qword_1EB5D7728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tag";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "wrapped";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADE9F158(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1ADE9F1AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
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

uint64_t sub_1ADE9F224(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 49))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 48);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1ADE9F26C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1ADE9F338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1ADE9F3E4();
    }

    else if (result == 2)
    {
      sub_1ADE9F468(a2, a1, a3, a4, a5);
    }
  }

  return result;
}

uint64_t sub_1ADE9F3E4()
{
  swift_beginAccess();
  sub_1AE23C43C();
  return swift_endAccess();
}

uint64_t sub_1ADE9F468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v6 = swift_beginAccess();
  a5(v6);
  sub_1AE23C4FC();
  return swift_endAccess();
}

uint64_t sub_1ADE9F50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v11 = sub_1AE23C32C();
  v18 = *(v11 - 8);
  v12 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ADE9F64C(a2, a1, a3, a4, a5);
  if (!v5)
  {
    v16 = v18;
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v16 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_1ADE9F64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  swift_beginAccess();
  if (!*(a1 + 16))
  {
    return sub_1ADE9F6FC(a1, a2, a3, a4, a5);
  }

  result = sub_1AE23C5EC();
  if (!v5)
  {
    return sub_1ADE9F6FC(a1, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1ADE9F6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  result = swift_beginAccess();
  if (*(a1 + 24))
  {
    v8 = *(a1 + 24);
    a5(result);
    return sub_1AE23C66C();
  }

  return result;
}

BOOL sub_1ADE9F7A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = sub_1AE23C32C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20[-v12];
  swift_beginAccess();
  v14 = *(a1 + 16);
  swift_beginAccess();
  if (v14 != *(a2 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v15 = *(a1 + 24);
  swift_beginAccess();
  v16 = *(a2 + 24);
  if (v15)
  {
    if (v16)
    {

      if (v15 == v16 || (a3(v15, v16) & 1) != 0)
      {
        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08]);
        v17 = sub_1AE23CCBC();
        v18 = *(v7 + 8);
        v18(v10, v6);
        v18(v13, v6);

        return (v17 & 1) != 0;
      }
    }
  }

  else if (!v16)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1ADE9FA1C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Proto4_TaggedValue._StorageClass();
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

void (*sub_1ADE9FA70(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADE9FBAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEA8D40();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADE9FC1C(uint64_t a1)
{
  v2 = sub_1ADEA376C();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADE9FC58()
{
  v2 = *v0;
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE9FCBC()
{
  sub_1ADEA376C();

  return sub_1AE23C54C();
}

uint64_t sub_1ADE9FD08()
{
  v2 = *v0;
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE9FDB8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AE2418F0;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v14 = sub_1AE23C67C();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return sub_1AE23C68C();
}

uint64_t sub_1ADE9FF24(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4();
      sub_1AE23C4EC();
    }
  }

  return result;
}

uint64_t sub_1ADE9FFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(double), uint64_t a6)
{
  v16[1] = a6;
  v9 = sub_1AE23C32C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16) || (a5(v12), result = sub_1AE23C65C(), !v6))
  {
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v10 + 8))(v14, v9);
  }

  return result;
}

void (*sub_1ADEA012C(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADEA0254(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEA8D94();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADEA02C4(uint64_t a1)
{
  v2 = sub_1ADEA360C();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADEA0300()
{
  sub_1ADEA360C();

  return sub_1AE23C54C();
}

uint64_t sub_1ADEA0364()
{
  result = MEMORY[0x1B26FB670](0x676E696C6269532ELL, 0xE800000000000000);
  qword_1EB5D7758 = 0xD000000000000011;
  unk_1EB5D7760 = 0x80000001AE260A50;
  return result;
}

uint64_t sub_1ADEA03D0()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7768);
  __swift_project_value_buffer(v0, qword_1EB5D7768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "data";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADEA0598()
{
  result = sub_1AE23C38C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1ADEA468C();
        sub_1AE23C4FC();
      }

      else if (result == 2)
      {
        sub_1AE23C40C();
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADEA0654(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1AE23C32C();
  v18 = *(v8 - 8);
  v9 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ADEA07EC(a2, a3, a4);
  if (!v4)
  {
    v13 = v18;
    v14 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v14 != 2)
      {
        goto LABEL_11;
      }

      v15 = *(a2 + 16);
      v16 = *(a2 + 24);
    }

    else
    {
      if (!v14)
      {
        if ((a3 & 0xFF000000000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v15 = a2;
      v16 = a2 >> 32;
    }

    if (v15 != v16)
    {
LABEL_10:
      sub_1AE23C5CC();
    }

LABEL_11:
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v13 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_1ADEA07EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1ADEA468C();
    return sub_1AE23C66C();
  }

  return result;
}

void (*sub_1ADEA0884(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADEA0978(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEA8DE8();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADEA09E8(uint64_t a1)
{
  v2 = sub_1ADEA34AC();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADEA0A24()
{
  sub_1ADEA34AC();

  return sub_1AE23C54C();
}

uint64_t sub_1ADEA0AAC()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7780);
  __swift_project_value_buffer(v0, qword_1EB5D7780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "string";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "element";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "subsequence";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "version";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "addedByVersion";
  *(v15 + 8) = 14;
  *(v15 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADEA0D40()
{
  result = sub_1AE23C38C();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          sub_1AE23C4AC();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v3 = v0;
          sub_1ADEA4C0C();
LABEL_16:
          v0 = v3;
          sub_1AE23C4EC();
        }
      }

      else
      {
        if (result == 3)
        {
          v3 = v0;
          sub_1ADEA31EC();
          goto LABEL_16;
        }

        if (result == 4 || result == 5)
        {
          sub_1ADEA468C();
          sub_1AE23C4FC();
        }
      }

LABEL_5:
      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADEA0E8C()
{
  v2 = v1;
  v3 = sub_1AE23C32C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  v9 = v0[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    result = sub_1AE23C62C();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(v0[2] + 16))
  {
    sub_1ADEA4C0C();
    v12 = v2;
    result = sub_1AE23C65C();
    if (v2)
    {
      return result;
    }
  }

  else
  {
    v12 = v2;
  }

  if (!*(v0[3] + 16) || (sub_1ADEA31EC(), result = sub_1AE23C65C(), !v12))
  {
    result = sub_1ADEA8E90(v0[4]);
    if (!v12)
    {
      sub_1ADEA8E90(v0[5]);
      sub_1AE23C31C();
      sub_1AE23C30C();
      return (*(v4 + 8))(v7, v3);
    }
  }

  return result;
}

void sub_1ADEA1084(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  a1[2] = MEMORY[0x1E69E7CC0];
  a1[3] = v1;
  a1[4] = 0;
  a1[5] = 0;
}

void (*sub_1ADEA10C4(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADEA11A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEA8E3C();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADEA1218(uint64_t a1)
{
  v2 = sub_1ADEA334C();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADEA1254()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = v0[3];
  v5 = *(v0 + 2);
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADEA12D0()
{
  sub_1ADEA334C();

  return sub_1AE23C54C();
}

uint64_t sub_1ADEA131C()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = v0[3];
  v5 = *(v0 + 2);
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADEA1394(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1ADEA5E98(v7, v8) & 1;
}

uint64_t sub_1ADEA13DC()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7798);
  __swift_project_value_buffer(v0, qword_1EB5D7798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE242560;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "sequenceStartID";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "length";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "addedBy";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "child";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_1AE23C68C();
}