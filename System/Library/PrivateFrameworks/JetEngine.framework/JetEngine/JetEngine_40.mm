uint64_t sub_1AB3663A4(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v46 = *MEMORY[0x1E69E9840];
  v8 = sub_1AB45F9B4();
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[4];
  v13 = a2[5];
  __swift_project_boxed_opaque_existential_1Tm(a2 + 1, v12);
  (*(v13 + 8))(v12, v13);
  sub_1AB45F964();
  v15 = v14;
  v16 = *&v14;
  (*(v9 + 8))(v11, v8);
  v17 = v16 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  v17 = 0xC3E0000000000001;
  if (v15 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = 0x43E0000000000000;
  if (v15 < 9.22337204e18)
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    MEMORY[0x1AC59B990](178);
    v37 = v42;
    v38 = v43;
    MEMORY[0x1AC59BA20](0xD0000000000000A6, 0x80000001AB50AFD0);
    v44 = MEMORY[0x1E69E7360];
    v45 = &off_1F2000A40;
    v42 = v15;
    sub_1AB014A58(&v42, &v39, &qword_1EB439C50);
    v8 = sub_1AB05A334(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v11 = v8[2];
    v17 = v8[3];
    v16 = v11 + 1;
    if (v11 < v17 >> 1)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  v8 = sub_1AB05A334((v17 > 1), v16, 1, v8);
LABEL_5:
  v8[2] = v16;
  v18 = &v8[5 * v11];
  v19 = v39;
  v20 = v40;
  v18[8] = v41;
  *(v18 + 2) = v19;
  *(v18 + 3) = v20;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v42, &qword_1EB439C50);
  MEMORY[0x1AC59BA20](0x6920455245485720, 0xEC000000203D2064);
  v44 = MEMORY[0x1E69E72F0];
  v45 = &off_1F2000A30;
  LODWORD(v42) = a3;
  sub_1AB014A58(&v42, &v39, &qword_1EB439C50);
  v22 = v8[2];
  v21 = v8[3];
  if (v22 >= v21 >> 1)
  {
    v8 = sub_1AB05A334((v21 > 1), v22 + 1, 1, v8);
  }

  v8[2] = v22 + 1;
  v23 = &v8[5 * v22];
  v24 = v39;
  v25 = v40;
  v23[8] = v41;
  *(v23 + 2) = v24;
  *(v23 + 3) = v25;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v42, &qword_1EB439C50);
  v27 = v37;
  v26 = v38;
  v42 = 0;

  sub_1AB3620A8(v27, v26, a1, &v42, &v39);
  if (v4)
  {
  }

  v29 = v42;
  if (v42)
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v29;
    *(inited + 24) = 0;
    sub_1AB02E720(v8);

    v31 = *(inited + 16);
    v32 = sqlite3_step(v31);
    if (qword_1ED4D0C30 != -1)
    {
      swift_once();
    }

    if (!sub_1AB15AA44(v32, qword_1ED4D3ED8) || (v33 = sub_1AB064540(&unk_1F1FF41C0), v34 = sub_1AB15AA44(v32, v33), , !v34))
    {
      sub_1AB1F60B4();
      swift_allocError();
      *v35 = v32;
      *(v35 + 8) = 0;
      *(v35 + 16) = 0;
      swift_willThrow();
    }

    swift_setDeallocating();
    sqlite3_finalize(v31);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB3668CC(uint64_t a1, void *a2, sqlite3_stmt *a3, unint64_t a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v8 = sub_1AB45F9B4();
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[4];
  v13 = a2[5];
  __swift_project_boxed_opaque_existential_1Tm(a2 + 1, v12);
  (*(v13 + 8))(v12, v13);
  sub_1AB45F964();
  v15 = v14;
  v16 = *&v14;
  (*(v9 + 8))(v11, v8);
  v17 = v16 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  v17 = 0xC3E0000000000001;
  if (v15 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = 0x43E0000000000000;
  if (v15 < 9.22337204e18)
  {
    v44 = 0;
    v45 = 0xE000000000000000;
    MEMORY[0x1AC59B990](186);
    v39 = v44;
    v40 = v45;
    MEMORY[0x1AC59BA20](0xD0000000000000A6, 0x80000001AB50AFD0);
    v46 = MEMORY[0x1E69E7360];
    v47 = &off_1F2000A40;
    v44 = v15;
    sub_1AB014A58(&v44, &v41, &qword_1EB439C50);
    v8 = sub_1AB05A334(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v11 = v8[2];
    v17 = v8[3];
    v16 = v11 + 1;
    if (v11 < v17 >> 1)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  v8 = sub_1AB05A334((v17 > 1), v16, 1, v8);
LABEL_5:
  v8[2] = v16;
  v18 = &v8[5 * v11];
  v19 = v41;
  v20 = v42;
  v18[8] = v43;
  *(v18 + 2) = v19;
  *(v18 + 3) = v20;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v44, &qword_1EB439C50);
  MEMORY[0x1AC59BA20](0xD000000000000014, 0x80000001AB50B080);
  v46 = MEMORY[0x1E69E6158];
  v47 = &off_1F2000A10;
  v44 = a3;
  v45 = a4;
  sub_1AB014A58(&v44, &v41, &qword_1EB439C50);
  v22 = v8[2];
  v21 = v8[3];

  if (v22 >= v21 >> 1)
  {
    v8 = sub_1AB05A334((v21 > 1), v22 + 1, 1, v8);
  }

  v8[2] = v22 + 1;
  v23 = &v8[5 * v22];
  v24 = v41;
  v25 = v42;
  v23[8] = v43;
  *(v23 + 2) = v24;
  *(v23 + 3) = v25;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v44, &qword_1EB439C50);
  v27 = v39;
  v26 = v40;
  v44 = 0;

  v28 = v27;
  v29 = v38;
  sub_1AB3620A8(v28, v26, a1, &v44, &v41);
  if (v29)
  {
  }

  v31 = v44;
  if (v44)
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v31;
    *(inited + 24) = 0;
    sub_1AB02E720(v8);

    v33 = *(inited + 16);
    v34 = sqlite3_step(v33);
    if (qword_1ED4D0C30 != -1)
    {
      swift_once();
    }

    if (!sub_1AB15AA44(v34, qword_1ED4D3ED8) || (v35 = sub_1AB064540(&unk_1F1FF41E8), v36 = sub_1AB15AA44(v34, v35), , !v36))
    {
      sub_1AB1F60B4();
      swift_allocError();
      *v37 = v34;
      *(v37 + 8) = 0;
      *(v37 + 16) = 0;
      swift_willThrow();
    }

    swift_setDeallocating();
    sqlite3_finalize(v33);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB366E00(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v46 = *MEMORY[0x1E69E9840];
  v8 = sub_1AB45F9B4();
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[4];
  v13 = a2[5];
  __swift_project_boxed_opaque_existential_1Tm(a2 + 1, v12);
  (*(v13 + 8))(v12, v13);
  sub_1AB45F964();
  v15 = v14;
  v16 = *&v14;
  (*(v9 + 8))(v11, v8);
  v17 = v16 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  v17 = 0xC3E0000000000001;
  if (v15 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = 0x43E0000000000000;
  if (v15 < 9.22337204e18)
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    MEMORY[0x1AC59B990](114);
    v37 = v42;
    v38 = v43;
    MEMORY[0x1AC59BA20](0xD000000000000056, 0x80000001AB50AF50);
    v44 = MEMORY[0x1E69E7360];
    v45 = &off_1F2000A40;
    v42 = v15;
    sub_1AB014A58(&v42, &v39, &qword_1EB439C50);
    v8 = sub_1AB05A334(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v11 = v8[2];
    v17 = v8[3];
    v16 = v11 + 1;
    if (v11 < v17 >> 1)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  v8 = sub_1AB05A334((v17 > 1), v16, 1, v8);
LABEL_5:
  v8[2] = v16;
  v18 = &v8[5 * v11];
  v19 = v39;
  v20 = v40;
  v18[8] = v41;
  *(v18 + 2) = v19;
  *(v18 + 3) = v20;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v42, &qword_1EB439C50);
  MEMORY[0x1AC59BA20](0x6920455245485720, 0xEC000000203D2064);
  v44 = MEMORY[0x1E69E72F0];
  v45 = &off_1F2000A30;
  LODWORD(v42) = a3;
  sub_1AB014A58(&v42, &v39, &qword_1EB439C50);
  v22 = v8[2];
  v21 = v8[3];
  if (v22 >= v21 >> 1)
  {
    v8 = sub_1AB05A334((v21 > 1), v22 + 1, 1, v8);
  }

  v8[2] = v22 + 1;
  v23 = &v8[5 * v22];
  v24 = v39;
  v25 = v40;
  v23[8] = v41;
  *(v23 + 2) = v24;
  *(v23 + 3) = v25;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v42, &qword_1EB439C50);
  MEMORY[0x1AC59BA20](0xD000000000000010, 0x80000001AB50AFB0);
  v27 = v37;
  v26 = v38;
  v42 = 0;

  sub_1AB3620A8(v27, v26, a1, &v42, &v39);
  if (v4)
  {
  }

  v29 = v42;
  if (v42)
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v29;
    *(inited + 24) = 0;
    sub_1AB02E720(v8);

    v31 = *(inited + 16);
    v32 = sqlite3_step(v31);
    if (qword_1ED4D0C30 != -1)
    {
      swift_once();
    }

    if (!sub_1AB15AA44(v32, qword_1ED4D3ED8) || (v33 = sub_1AB064540(&unk_1F1FF4210), v34 = sub_1AB15AA44(v32, v33), , !v34))
    {
      sub_1AB1F60B4();
      swift_allocError();
      *v35 = v32;
      *(v35 + 8) = 0;
      *(v35 + 16) = 0;
      swift_willThrow();
    }

    swift_setDeallocating();
    sqlite3_finalize(v31);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB367348@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char **a3@<X8>)
{
  v40 = a3;
  v52[5] = *MEMORY[0x1E69E9840];
  v6 = sub_1AB45F9B4();
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[4];
  v11 = a2[5];
  __swift_project_boxed_opaque_existential_1Tm(a2 + 1, v10);
  (*(v11 + 8))(v10, v11);
  sub_1AB45F964();
  v13 = v12;
  v14 = *&v12;
  v16 = *(v7 + 8);
  v15 = (v7 + 8);
  v16(v9, v6);
  v17 = v14 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  v17 = 0xC3E0000000000001;
  if (v13 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = 0x43E0000000000000;
  if (v13 < 9.22337204e18)
  {
    v15 = v52;
    *&v42 = 0;
    *(&v42 + 1) = 0xE000000000000000;
    MEMORY[0x1AC59B990](83);
    v41 = v42;
    MEMORY[0x1AC59BA20](0xD000000000000047, 0x80000001AB50AF00);
    *&v44 = &off_1F2000A40;
    *(&v43 + 1) = MEMORY[0x1E69E7360];
    *&v42 = v13;
    sub_1AB014A58(&v42, v52, &qword_1EB439C50);
    v6 = sub_1AB05A334(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = v6[2];
    v17 = v6[3];
    v14 = v9 + 1;
    if (v9 < v17 >> 1)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  v6 = sub_1AB05A334((v17 > 1), v14, 1, v6);
LABEL_5:
  v6[2] = v14;
  v18 = &v6[5 * v9];
  v19 = *v15;
  v20 = *(v15 + 1);
  v18[8] = v52[4];
  *(v18 + 2) = v19;
  *(v18 + 3) = v20;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v42, &qword_1EB439C50);
  MEMORY[0x1AC59BA20](0x4220524544524F20, 0xEC00000064692059);
  v21 = v41;
  v52[0] = 0;

  sub_1AB3620A8(v21, *(&v21 + 1), a1, v52, &v42);

  if (v3)
  {
  }

  v23 = v52[0];
  if (v52[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v23;
    *(inited + 24) = 0;
    sub_1AB02E720(v6);

    v25 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v26 = *(inited + 16);
      v27 = sqlite3_step(v26);
      if (qword_1ED4D0C30 != -1)
      {
        swift_once();
      }

      if (!sub_1AB15AA44(v27, qword_1ED4D3ED8))
      {
        sub_1AB1F60B4();
        swift_allocError();
        *v38 = v27;
        *(v38 + 8) = 0;
        *(v38 + 16) = 0;
        swift_willThrow();
        swift_setDeallocating();
        sqlite3_finalize(v26);
      }

      if (v27 != 100)
      {
        break;
      }

      sub_1AB363228(inited, &v42);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1AB2B1704(0, *(v25 + 2) + 1, 1, v25);
      }

      v29 = *(v25 + 2);
      v28 = *(v25 + 3);
      if (v29 >= v28 >> 1)
      {
        v25 = sub_1AB2B1704((v28 > 1), v29 + 1, 1, v25);
      }

      *(v25 + 2) = v29 + 1;
      v30 = &v25[152 * v29];
      v31 = v43;
      *(v30 + 2) = v42;
      *(v30 + 3) = v31;
      v32 = v44;
      v33 = v45;
      v34 = v47;
      *(v30 + 6) = v46;
      *(v30 + 7) = v34;
      *(v30 + 4) = v32;
      *(v30 + 5) = v33;
      v35 = v48;
      v36 = v49;
      v37 = v50;
      v30[176] = v51;
      *(v30 + 9) = v36;
      *(v30 + 10) = v37;
      *(v30 + 8) = v35;
    }

    swift_setDeallocating();
    sqlite3_finalize(v26);

    *v40 = v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AB3678EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, char **a4@<X8>)
{
  v46 = a1;
  v45 = a4;
  v60 = *MEMORY[0x1E69E9840];
  v7 = sub_1AB45F9B4();
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[4];
  v11 = a2[5];
  __swift_project_boxed_opaque_existential_1Tm(a2 + 1, v12);
  (*(v11 + 8))(v12, v11);
  v13 = v10;
  sub_1AB45F964();
  v15 = v14;
  v16 = *&v14;
  (*(v8 + 8))(v10, v7);
  v17 = v16 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v16 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  v17 = 0xC3E0000000000001;
  if (v15 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = 0x43E0000000000000;
  if (v15 < 9.22337204e18)
  {
    v12 = v58;
    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;
    MEMORY[0x1AC59B990](106);
    v47 = v48;
    MEMORY[0x1AC59BA20](0xD000000000000045, 0x80000001AB50AE50);
    *&v50 = &off_1F2000A40;
    *(&v49 + 1) = MEMORY[0x1E69E7360];
    *&v48 = v15;
    sub_1AB014A58(&v48, v58, &qword_1EB439C50);
    v7 = sub_1AB05A334(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v16 = v7[2];
    v17 = v7[3];
    v13 = v16 + 1;
    if (v16 < v17 >> 1)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  v7 = sub_1AB05A334((v17 > 1), v13, 1, v7);
LABEL_5:
  v18 = v46;
  v7[2] = v13;
  v19 = &v7[5 * v16];
  v20 = *v12;
  v21 = *(v12 + 1);
  v19[8] = v59;
  *(v19 + 2) = v20;
  *(v19 + 3) = v21;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v48, &qword_1EB439C50);
  MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB50AEA0);
  *(&v49 + 1) = MEMORY[0x1E69E72F0];
  *&v50 = &off_1F2000A30;
  LODWORD(v48) = a3;
  sub_1AB014A58(&v48, v58, &qword_1EB439C50);
  v23 = v7[2];
  v22 = v7[3];
  if (v23 >= v22 >> 1)
  {
    v7 = sub_1AB05A334((v22 > 1), v23 + 1, 1, v7);
  }

  v7[2] = v23 + 1;
  v24 = &v7[5 * v23];
  v25 = *v12;
  v26 = *(v12 + 1);
  v24[8] = v59;
  *(v24 + 2) = v25;
  *(v24 + 3) = v26;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v48, &qword_1EB439C50);
  MEMORY[0x1AC59BA20](0x4220524544524F20, 0xEC00000064692059);
  v27 = v47;
  v58[0] = 0;

  sub_1AB3620A8(v27, *(&v27 + 1), v18, v58, &v48);
  if (v4)
  {
  }

  else
  {

    v29 = v58[0];
    if (v58[0])
    {
      type metadata accessor for SQLiteStatement();
      inited = swift_initStackObject();
      *(inited + 16) = v29;
      *(inited + 24) = 0;
      sub_1AB02E720(v7);

      v31 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v32 = *(inited + 16);
        v33 = sqlite3_step(v32);
        if (qword_1ED4D0C30 != -1)
        {
          swift_once();
        }

        if (!sub_1AB15AA44(v33, qword_1ED4D3ED8))
        {
          sub_1AB1F60B4();
          swift_allocError();
          *v44 = v33;
          *(v44 + 8) = 0;
          *(v44 + 16) = 0;
          swift_willThrow();
          swift_setDeallocating();
          sqlite3_finalize(v32);
        }

        if (v33 != 100)
        {
          break;
        }

        sub_1AB363228(inited, &v48);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_1AB2B1704(0, *(v31 + 2) + 1, 1, v31);
        }

        v35 = *(v31 + 2);
        v34 = *(v31 + 3);
        if (v35 >= v34 >> 1)
        {
          v31 = sub_1AB2B1704((v34 > 1), v35 + 1, 1, v31);
        }

        *(v31 + 2) = v35 + 1;
        v36 = &v31[152 * v35];
        v37 = v49;
        *(v36 + 2) = v48;
        *(v36 + 3) = v37;
        v38 = v50;
        v39 = v51;
        v40 = v53;
        *(v36 + 6) = v52;
        *(v36 + 7) = v40;
        *(v36 + 4) = v38;
        *(v36 + 5) = v39;
        v41 = v54;
        v42 = v55;
        v43 = v56;
        v36[176] = v57;
        *(v36 + 9) = v42;
        *(v36 + 10) = v43;
        *(v36 + 8) = v41;
      }

      swift_setDeallocating();
      sqlite3_finalize(v32);

      *v45 = v31;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1AB367F50@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v37[5] = *MEMORY[0x1E69E9840];
  v37[1] = 0xE000000000000000;
  MEMORY[0x1AC59B990](202);
  MEMORY[0x1AC59BA20](0xD0000000000000CALL, 0x80000001AB50AD40);
  v37[3] = MEMORY[0x1E69E72F0];
  v37[4] = &off_1F2000A30;
  v37[0] = a2;
  sub_1AB014A58(v37, v35, &qword_1EB439C50);
  v7 = sub_1AB05A334(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1AB05A334((v8 > 1), v9 + 1, 1, v7);
  }

  v7[2] = v9 + 1;
  v10 = &v7[5 * v9];
  v11 = v35[0];
  v12 = v35[1];
  v10[8] = v36;
  *(v10 + 2) = v11;
  *(v10 + 3) = v12;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(v37, &qword_1EB439C50);
  v37[0] = 0;

  sub_1AB3620A8(0, 0xE000000000000000, a1, v37, v35);

  if (v3)
  {
  }

  v14 = v37[0];
  if (!v37[0])
  {
    __break(1u);
    return result;
  }

  type metadata accessor for SQLiteStatement();
  inited = swift_initStackObject();
  *(inited + 16) = v14;
  *(inited + 24) = 0;
  sub_1AB02E720(v7);

  v16 = *(inited + 16);
  v17 = sqlite3_step(v16);
  if (qword_1ED4D0C30 != -1)
  {
    swift_once();
  }

  if (!sub_1AB15AA44(v17, qword_1ED4D3ED8) || (v18 = sub_1AB064540(&unk_1F1FF40C0), v19 = sub_1AB15AA44(v17, v18), , !v19))
  {
    sub_1AB1F60B4();
    swift_allocError();
    *v31 = v17;
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    swift_willThrow();
    swift_setDeallocating();
    sqlite3_finalize(v16);
  }

  v20 = sub_1AB05AB54();
  if (!*(v20 + 16) || (v21 = sub_1AB014DB4(0xD000000000000011, 0x80000001AB50AE10), (v22 & 1) == 0) || (v23 = *(*(v20 + 56) + 4 * v21), v24 = *(inited + 16), sqlite3_column_type(v24, v23) == 5) || (sqlite3_column_int64(v24, v23), !*(v20 + 16)) || (v25 = sub_1AB014DB4(0x656863735F6E696DLL, 0xEF6F745F656C7564), (v26 & 1) == 0) || (v27 = *(*(v20 + 56) + 4 * v25), sqlite3_column_type(v24, v27) == 5) || (sqlite3_column_int64(v24, v27), !*(v20 + 16)) || (v28 = sub_1AB014DB4(0xD000000000000019, 0x80000001AB50AE30), (v29 & 1) == 0))
  {

    goto LABEL_22;
  }

  v30 = *(*(v20 + 56) + 4 * v28);

  if (sqlite3_column_type(v24, v30) == 5)
  {

LABEL_22:
    Schedule = type metadata accessor for AssetNextSchedule();
    return (*(*(Schedule - 8) + 56))(a3, 1, 1, Schedule);
  }

  v33 = sqlite3_column_int(v24, v30);
  sub_1AB45F954();
  v34 = type metadata accessor for AssetNextSchedule();
  sub_1AB45F954();
  swift_setDeallocating();
  sqlite3_finalize(v24);

  *(a3 + *(v34 + 24)) = v33;
  return (*(*(v34 - 8) + 56))(a3, 0, 1, v34);
}

uint64_t AssetPushSubscriptionSQLiteStore.channels(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;

  sub_1AB2EEAB0(v5, a1, a2);
  v7 = v6;

  return v7;
}

uint64_t sub_1AB36849C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  MEMORY[0x1AC59B990](68);
  MEMORY[0x1AC59BA20](0xD000000000000044, 0x80000001AB50ACF0);
  v37[3] = MEMORY[0x1E69E6158];
  v37[4] = &off_1F2000A10;
  v37[0] = a2;
  v37[1] = a3;
  sub_1AB014A58(v37, v38, &qword_1EB439C50);

  v9 = sub_1AB05A334(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1AB05A334((v10 > 1), v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  v12 = &v9[5 * v11];
  v13 = v38[0];
  v14 = v38[1];
  v12[8] = v39;
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(v37, &qword_1EB439C50);
  *&v38[0] = 0;

  sub_1AB3620A8(0, 0xE000000000000000, a1, v38, v37);

  if (v4)
  {
  }

  v16 = *&v38[0];
  if (*&v38[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v16;
    *(inited + 24) = 0;
    sub_1AB02E720(v9);

    v36 = MEMORY[0x1E69E7CC0];
    v18 = &xmmword_1ED4D0000;
    v19 = &unk_1ED4D3000;
    while (1)
    {
      v20 = *(inited + 16);
      v21 = sqlite3_step(v20);
      v22 = v18;
      if (*(v18 + 390) != -1)
      {
        swift_once();
      }

      v23 = v19;
      v24 = v19[475];
      if (!*(v24 + 16) || (sub_1AB4620A4(), sub_1AB4620D4(), v25 = sub_1AB462104(), v26 = -1 << *(v24 + 32), v27 = v25 & ~v26, ((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0))
      {
LABEL_21:
        sub_1AB1F60B4();
        swift_allocError();
        *v35 = v21;
        *(v35 + 8) = 0;
        *(v35 + 16) = 0;
        swift_willThrow();
        swift_setDeallocating();
        sqlite3_finalize(v20);
      }

      v28 = ~v26;
      while (*(*(v24 + 48) + 4 * v27) != v21)
      {
        v27 = (v27 + 1) & v28;
        if (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      if (v21 != 100)
      {
        break;
      }

      v19 = v23;
      if (sqlite3_column_text(v20, 0))
      {
        v29 = sub_1AB460714();
        v31 = v30;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_1AB020904(0, *(v36 + 2) + 1, 1, v36);
        }

        v33 = *(v36 + 2);
        v32 = *(v36 + 3);
        if (v33 >= v32 >> 1)
        {
          v36 = sub_1AB020904((v32 > 1), v33 + 1, 1, v36);
        }

        *(v36 + 2) = v33 + 1;
        v34 = &v36[16 * v33];
        *(v34 + 4) = v29;
        *(v34 + 5) = v31;
        v18 = v22;
        v19 = v23;
      }
    }

    swift_setDeallocating();
    sqlite3_finalize(v20);

    *a4 = v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AB368B30(uint64_t a1)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v11[8] = *(a1 + 128);
  v12 = *(a1 + 144);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *v1;
  sub_1AB180CB4(v11, v10);
  sub_1AB2EE8E0(v6, v11);
  v8 = v7;
  sub_1AB180CEC(v11);
  return v8 & 1;
}

uint64_t sub_1AB368DB8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;

  sub_1AB2EEAB0(v5, a1, a2);
  v7 = v6;

  return v7;
}

uint64_t sub_1AB368ECC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[4] = &type metadata for SystemDateProvider;
  a2[5] = &protocol witness table for SystemDateProvider;
  return result;
}

double sub_1AB36901C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 129) = 0u;
  return result;
}

uint64_t sub_1AB369050(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  result = sub_1AB24BAB0(0xD000000000000011, 0x80000001AB50B460);
  if (!v1)
  {
    if (result)
    {
      result = sub_1AB24B5B4();
      if (result <= 0)
      {
        v4 = result;
        if (sub_1AB24BD70(0xD000000000000011, 0x80000001AB50B460, 0xD000000000000011, 0x80000001AB50AEE0))
        {
          if (qword_1EB435780 != -1)
          {
            swift_once();
          }

          sub_1AB4622E4();
          v5 = v33;
          v6 = v34;
          __swift_project_boxed_opaque_existential_1Tm(v32, v33);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
          v7 = swift_allocObject();
          *(v7 + 16) = xmmword_1AB4D4720;
          v25 = sub_1AB0168A8(0, 77, 0, MEMORY[0x1E69E7CC0]);
          v8._countAndFlagsBits = 0xD000000000000027;
          v8._object = 0x80000001AB50B520;
          LogMessage.StringInterpolation.appendLiteral(_:)(v8);
          v31 = MEMORY[0x1E69E72F0];
          v30[0] = v4;
          sub_1AB014A58(v30, v26, &unk_1EB437E60);
          v27 = 0u;
          v28 = 0u;
          sub_1AB0169C4(v26, &v27);
          v29 = 0;
          v9 = v25;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1AB0168A8(0, *(v25 + 2) + 1, 1, v25);
          }

          v11 = *(v9 + 2);
          v10 = *(v9 + 3);
          v12 = v11 + 1;
          if (v11 >= v10 >> 1)
          {
            v24 = sub_1AB0168A8((v10 > 1), v11 + 1, 1, v9);
            v12 = v11 + 1;
            v9 = v24;
          }

          *(v9 + 2) = v12;
          v13 = &v9[40 * v11];
          v14 = v27;
          v15 = v28;
          v13[64] = v29;
          *(v13 + 2) = v14;
          *(v13 + 3) = v15;
          sub_1AB014AC0(v30, &unk_1EB437E60);
          v16._countAndFlagsBits = 0xD000000000000025;
          v16._object = 0x80000001AB50B550;
          LogMessage.StringInterpolation.appendLiteral(_:)(v16);
          *(v7 + 32) = v9;
          Logger.warning(_:)(v7, v5, v6);

          return __swift_destroy_boxed_opaque_existential_1Tm(v32);
        }

        else
        {
          sub_1AB02E4DC(0xD000000000000042, 0x80000001AB50B480, MEMORY[0x1E69E7CC0]);
          v32[0] = 0;

          result = sub_1AB3620A8(0xD000000000000044, 0x80000001AB50B4D0, a1, v32, &v27);
          v17 = v32[0];
          if (v32[0])
          {
            type metadata accessor for SQLiteStatement();
            inited = swift_initStackObject();
            *(inited + 16) = v17;
            *(inited + 24) = 0;
            sub_1AB02E720(MEMORY[0x1E69E7CC0]);
            v19 = *(inited + 16);
            v20 = sqlite3_step(v19);
            if (qword_1ED4D0C30 != -1)
            {
              swift_once();
            }

            if (sub_1AB15AA44(v20, qword_1ED4D3ED8) && (v21 = sub_1AB064540(&unk_1F1FF40E8), v22 = sub_1AB15AA44(v20, v21), , v22))
            {
              swift_setDeallocating();
              sqlite3_finalize(v19);
            }

            else
            {
              sub_1AB1F60B4();
              swift_allocError();
              *v23 = v20;
              *(v23 + 8) = 0;
              *(v23 + 16) = 0;
              swift_willThrow();
              swift_setDeallocating();
              sqlite3_finalize(v19);
            }
          }

          else
          {
            __break(1u);
          }
        }
      }
    }

    else
    {
      if (qword_1EB435DC8 != -1)
      {
        swift_once();
      }

      return sub_1AB02E4DC(qword_1EB43B7C0, *algn_1EB43B7C8, qword_1EB43B7D0);
    }
  }

  return result;
}

uint64_t Models.HTTPAction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for NetRequest();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  JSONObject.subscript.getter(0x654D6E6F69746361, 0xED00007363697274, &v23);

  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v22);

  v11 = sub_1AB37F7F4(v22, v10);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v22);
  v21 = v10;
  ScalarDictionary.init(tryDeserializing:using:)(v22, &v21, &v25);
  sub_1AB066D84(&v23);
  v12 = v25;
  v13 = _s9JetEngine26AppleServicesPropertyScopeV13allPropertiesSayAA010NetRequestE0_pXpGvgZ_0();
  v25 = v13;
  v14 = sub_1AB3D8AA4(0xD00000000000001FLL, 0x80000001AB4FF9A0, v10);
  if (v14)
  {
    sub_1AB164A38(v14);
    v13 = v25;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B80);
  *&v23 = v13;
  sub_1AB014B78(&v23, v22);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v10;
  sub_1AB01AE18(v22, 0xD00000000000001FLL, 0x80000001AB4FF9A0, isUniquelyReferenced_nonNull_native);

  JSONObject.subscript.getter(0x74736575716572, 0xE700000000000000, &v23);
  NetRequest.init(deserializing:using:)(&v23, &v20, v9);
  if (v3)
  {
    sub_1AB066D84(a1);
  }

  else
  {
    v19 = v11;
    JSONObject.subscript.getter(0x4173736563637573, 0xED00006E6F697463, &v23);
    *&v22[0] = v10;
    v17 = type metadata accessor for Models.HTTPAction();
    static AnyActionTypes.tryToMakeInstance(byDeserializing:using:)(&v23, v22, a3 + v17[6]);
    sub_1AB066D84(&v23);
    JSONObject.subscript.getter(0x416572756C696166, 0xED00006E6F697463, &v23);
    *&v22[0] = v10;
    static AnyActionTypes.tryToMakeInstance(byDeserializing:using:)(&v23, v22, a3 + v17[7]);
    sub_1AB066D84(a1);
    sub_1AB066D84(&v23);

    result = sub_1AB0C099C(v9, a3 + v17[5]);
    *a3 = v19;
    a3[1] = v12;
  }

  return result;
}

uint64_t Models.HTTPAction.actionMetrics.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Models.HTTPAction.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Models.HTTPAction() + 20);

  return sub_1AB0B72A8(v3, a1);
}

uint64_t Models.HTTPAction.successAction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Models.HTTPAction() + 24);

  return sub_1AB36A6B8(v3, a1);
}

uint64_t Models.HTTPAction.failureAction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Models.HTTPAction() + 28);

  return sub_1AB36A6B8(v3, a1);
}

uint64_t sub_1AB369A64()
{
  v1 = 0x654D6E6F69746361;
  v2 = 0x4173736563637573;
  if (*v0 != 2)
  {
    v2 = 0x416572756C696166;
  }

  if (*v0)
  {
    v1 = 0x74736575716572;
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

uint64_t sub_1AB369B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB36AA1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AB369B2C(uint64_t a1)
{
  v2 = sub_1AB36A728();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB369B68(uint64_t a1)
{
  v2 = sub_1AB36A728();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.HTTPAction.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v41 = a2;
  v4 = type metadata accessor for NetRequest();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B7D8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v34 - v9;
  v11 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v11);
  sub_1AB36A728();
  sub_1AB462224();
  if (!v2)
  {
    v39 = v6;
    v40 = v8;
    LOBYTE(v51[0]) = 0;
    sub_1AB24CE74();
    sub_1AB461A54();
    v38 = v7;
    if (*&v53[0])
    {
      v12 = *&v53[0];
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    if (*&v53[0])
    {
      v13 = *(&v53[0] + 1);
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC8];
    }

    __swift_project_boxed_opaque_existential_1Tm(v55, v55[3]);
    v14 = sub_1AB462214();
    sub_1AB3098DC(0xD000000000000023, 0x80000001AB500830, v14);

    LOBYTE(v51[0]) = 2;
    decodeActionModel<A, B>(using:container:forKey:)(v53);
    v36 = v13;
    v37 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v55, v55[3]);
    v16 = sub_1AB462214();
    sub_1AB3098DC(0xD000000000000023, 0x80000001AB500830, v16);

    LOBYTE(v50[0]) = 3;
    decodeActionModel<A, B>(using:container:forKey:)(v51);
    v17 = v38;
    LOBYTE(v44) = 1;
    sub_1AB4619F4();
    v18 = v40;
    v19 = v48;
    v35 = v49;
    v34[1] = __swift_project_boxed_opaque_existential_1Tm(v47, v48);
    __swift_project_boxed_opaque_existential_1Tm(v55, v55[3]);
    v20 = sub_1AB462214();
    JSONContext.init(userInfo:)(v20);
    v21 = v44;
    v22 = _s9JetEngine26AppleServicesPropertyScopeV13allPropertiesSayAA010NetRequestE0_pXpGvgZ_0();
    v46 = v22;
    v23 = sub_1AB3D8AA4(0xD00000000000001FLL, 0x80000001AB4FF9A0, v21);
    if (v23)
    {
      sub_1AB164A38(v23);
      v22 = v46;
    }

    v24 = v41;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B80);
    *&v44 = v22;
    sub_1AB014B78(&v44, v43);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v21;
    sub_1AB01AE18(v43, 0xD00000000000001FLL, 0x80000001AB4FF9A0, isUniquelyReferenced_nonNull_native);

    v26 = _sSD9JetEngines17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v42);
    Decoder.withUserInfo(_:)(v26, v19, v35, v50);

    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    sub_1AB01494C(v50, v47);
    v27 = v39;
    NetRequest.init(from:)(v47, v39);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    (*(v18 + 8))(v10, v17);
    v28 = type metadata accessor for Models.HTTPAction();
    sub_1AB0C099C(v27, v24 + v28[5]);
    v29 = v24 + v28[6];
    v30 = v53[1];
    *v29 = v53[0];
    *(v29 + 1) = v30;
    *(v29 + 4) = v54;
    v31 = v24 + v28[7];
    v32 = v51[1];
    *v31 = v51[0];
    *(v31 + 1) = v32;
    *(v31 + 4) = v52;
    v33 = v36;
    *v24 = v37;
    v24[1] = v33;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v55);
}

uint64_t Models.HTTPAction.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B7E8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v27 = sub_1AB36A728();
  sub_1AB462274();
  v8 = v1[1];
  *&v33 = *v1;
  *(&v33 + 1) = v8;
  LOBYTE(v30[0]) = 0;
  sub_1AB24CA70();

  sub_1AB461BF4();

  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v25 = v5;
  v26 = v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v10 = sub_1AB462264();
  sub_1AB3098DC(0xD000000000000023, 0x80000001AB500830, v10);

  v11 = type metadata accessor for Models.HTTPAction();
  v12 = *(v11 + 24);
  LOBYTE(v33) = 2;
  encodeActionModel<A, B>(_:using:container:forKey:)(v1 + v12);
  v24 = v1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v13 = sub_1AB462264();
  sub_1AB3098DC(0xD000000000000023, 0x80000001AB500830, v13);

  v14 = *(v11 + 28);
  LOBYTE(v33) = 3;
  encodeActionModel<A, B>(_:using:container:forKey:)(v24 + v14);
  v27 = v11;
  LOBYTE(v33) = 1;
  sub_1AB461B34();
  v15 = v31;
  v23 = v32;
  v22 = __swift_project_boxed_opaque_existential_1Tm(v30, v31);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v16 = sub_1AB462264();
  JSONContext.init(userInfo:)(v16);
  v17 = v33;
  v18 = _s9JetEngine26AppleServicesPropertyScopeV13allPropertiesSayAA010NetRequestE0_pXpGvgZ_0();
  v35 = v18;
  v19 = sub_1AB3D8AA4(0xD00000000000001FLL, 0x80000001AB4FF9A0, v17);
  if (v19)
  {
    sub_1AB164A38(v19);
    v18 = v35;
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B80);
  *&v33 = v18;
  sub_1AB014B78(&v33, v29);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v17;
  sub_1AB01AE18(v29, 0xD00000000000001FLL, 0x80000001AB4FF9A0, isUniquelyReferenced_nonNull_native);

  v21 = _sSD9JetEngines17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v28);
  Encoder.withUserInfo(_:)(v21, v15, v23, &v33);

  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  NetRequest.encode(to:)(&v33);
  __swift_destroy_boxed_opaque_existential_1Tm(&v33);
  return (*(v25 + 8))(v7, v26);
}

uint64_t type metadata accessor for Models.HTTPAction()
{
  result = qword_1EB432458;
  if (!qword_1EB432458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AB36A6B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A788);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AB36A728()
{
  result = qword_1EB43B7E0;
  if (!qword_1EB43B7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B7E0);
  }

  return result;
}

uint64_t sub_1AB36A77C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A788);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AB36A80C()
{
  type metadata accessor for NetRequest();
  if (v0 <= 0x3F)
  {
    sub_1AB36A8A0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1AB36A8A0()
{
  if (!qword_1EB432C40[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB438488);
    v0 = sub_1AB461354();
    if (!v1)
    {
      atomic_store(v0, qword_1EB432C40);
    }
  }
}

unint64_t sub_1AB36A918()
{
  result = qword_1EB43B7F0;
  if (!qword_1EB43B7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B7F0);
  }

  return result;
}

unint64_t sub_1AB36A970()
{
  result = qword_1EB43B7F8;
  if (!qword_1EB43B7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B7F8);
  }

  return result;
}

unint64_t sub_1AB36A9C8()
{
  result = qword_1EB43B800;
  if (!qword_1EB43B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B800);
  }

  return result;
}

uint64_t sub_1AB36AA1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v4 || (sub_1AB461DA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463 || (sub_1AB461DA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x416572756C696166 && a2 == 0xED00006E6F697463)
  {

    return 3;
  }

  else
  {
    v6 = sub_1AB461DA4();

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

uint64_t MapStateCenter.__allocating_init()()
{
  v0 = swift_allocObject();
  MapStateCenter.init()();
  return v0;
}

uint64_t MapStateCenter.init()()
{
  v1 = type metadata accessor for StatePath();
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437200);
  swift_getTupleTypeMetadata2();
  v3 = sub_1AB4609A4();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_1AB06D700(v3, v1, v2, WitnessTable);

  *(v0 + 16) = v5;
  return v0;
}

uint64_t MapStateCenter.Transaction.changeState<A>(at:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 8);
  v10[3] = a4;
  v10[4] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a2, a4);
  v11 = 0;

  type metadata accessor for MapStateCenter.Transaction.Change();
  sub_1AB460A64();
  return sub_1AB460A14();
}

uint64_t MapStateCenter.Transaction.removeState(at:recursively:)()
{

  type metadata accessor for MapStateCenter.Transaction.Change();
  sub_1AB460A64();
  return sub_1AB460A14();
}

Swift::Void __swiftcall MapStateCenter.Transaction.removeAllState()()
{

  type metadata accessor for MapStateCenter.Transaction.Change();
  sub_1AB461C64();
  swift_allocObject();
  v1 = sub_1AB460964();
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 3;
  *v0 = sub_1AB20EC04(v1);
}

uint64_t MapStateCenter.currentState<A>(at:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v29 = *v5;
  v10 = v29;
  *&v30 = sub_1AB461354();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v12 = &v26 - v11;
  v13 = *a1;
  swift_beginAccess();
  v33 = v13;
  v14 = type metadata accessor for StatePath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437200);
  v32 = *(v10 + 104);
  swift_getWitnessTable();
  sub_1AB460414();

  if (MetatypeMetadata)
  {
    v26 = a3;
    v27 = a4;
    sub_1AB0149B0(&v34, v36);
    swift_endAccess();
    sub_1AB01494C(v36, &v34);
    v15 = a2;
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      v16 = *(a2 - 8);
      (*(v16 + 56))(v12, 0, 1, v15);
      return (*(v16 + 32))(v27, v12, v15);
    }

    else
    {
      (*(*(a2 - 8) + 56))(v12, 1, 1, a2);
      (*(v28 + 8))(v12, v30);
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v28 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4180;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v19 = swift_allocObject();
      v30 = xmmword_1AB4D4720;
      *(v19 + 16) = xmmword_1AB4D4720;
      v20 = MEMORY[0x1E69E6158];
      MetatypeMetadata = MEMORY[0x1E69E6158];
      *&v34 = 0x7461206574617453;
      *(&v34 + 1) = 0xE800000000000000;
      *(v19 + 48) = 0u;
      *(v19 + 32) = 0u;
      sub_1AB0169C4(&v34, v19 + 32);
      *(v19 + 64) = 0;
      *(v18 + 32) = v19;
      MetatypeMetadata = v14;
      *&v34 = v13;
      v21 = swift_allocObject();
      *(v21 + 16) = v30;
      sub_1AB01522C(&v34, v31);
      *(v21 + 48) = 0u;
      *(v21 + 32) = 0u;

      sub_1AB0169C4(v31, v21 + 32);
      *(v21 + 64) = 0;
      *(v18 + 40) = v21;
      sub_1AB014AC0(&v34, &unk_1EB437E60);
      v22 = swift_allocObject();
      *(v22 + 16) = v30;
      MetatypeMetadata = v20;
      *&v34 = 28265;
      *(&v34 + 1) = 0xE200000000000000;
      *(v22 + 48) = 0u;
      *(v22 + 32) = 0u;
      sub_1AB0169C4(&v34, v22 + 32);
      *(v22 + 64) = 0;
      *(v18 + 48) = v22;
      MetatypeMetadata = v29;
      *&v34 = v5;
      v23 = swift_allocObject();
      *(v23 + 16) = v30;
      sub_1AB01522C(&v34, v31);
      *(v23 + 48) = 0u;
      *(v23 + 32) = 0u;

      sub_1AB0169C4(v31, v23 + 32);
      *(v23 + 64) = 0;
      *(v18 + 56) = v23;
      sub_1AB014AC0(&v34, &unk_1EB437E60);
      v24 = swift_allocObject();
      *(v24 + 16) = v30;
      MetatypeMetadata = v20;
      *&v34 = 0xD000000000000014;
      *(&v34 + 1) = 0x80000001AB50B780;
      *(v24 + 48) = 0u;
      *(v24 + 32) = 0u;
      sub_1AB0169C4(&v34, v24 + 32);
      *(v24 + 64) = 0;
      *(v18 + 64) = v24;
      MetatypeMetadata = swift_getMetatypeMetadata();
      *&v34 = v15;
      v25 = swift_allocObject();
      *(v25 + 16) = v30;
      sub_1AB01522C(&v34, v31);
      *(v25 + 48) = 0u;
      *(v25 + 32) = 0u;
      sub_1AB0169C4(v31, v25 + 32);
      *(v25 + 64) = 0;
      *(v18 + 72) = v25;
      sub_1AB014AC0(&v34, &unk_1EB437E60);
      *&v34 = v28;
      v31[0] = 3;
      OSLogger.log(contentsOf:withLevel:)(v18, v31);

      (*(v26 + 24))(v15);
      return __swift_destroy_boxed_opaque_existential_1Tm(v36);
    }
  }

  else
  {
    sub_1AB014AC0(&v34, &qword_1EB4372E0);
    swift_endAccess();
    return (*(a3 + 24))(a2, a3);
  }
}

uint64_t MapStateCenter.beginTransaction()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MapStateCenter.Transaction.Change();
  result = sub_1AB4609A4();
  *a1 = result;
  return result;
}

uint64_t MapStateCenter.commit(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *v1;
  v5 = *a1;
  v30[0] = *a1;
  v6 = *(v3 + 96);
  v7 = *(v3 + 104);
  v31 = *(v4 + 80);
  v32 = v6;
  v33 = v7;
  v28 = v7;
  v8 = type metadata accessor for MapStateCenter.Transaction.Change();
  sub_1AB460A64();
  swift_getWitnessTable();
  result = sub_1AB460F44();
  if ((result & 1) == 0)
  {

    if (sub_1AB4609F4())
    {
      swift_beginAccess();
      v10 = 0;
      v11 = v5 + 32;
      v26 = v2;
      v25 = v5 + 32;
      while (1)
      {
        v12 = sub_1AB4609D4();
        result = sub_1AB460974();
        if ((v12 & 1) == 0)
        {
          break;
        }

        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_30;
        }

        (*(*(v8 - 8) + 16))(&v31, v11 + 56 * v10, v8);
        if (v34 > 1u)
        {
          if (v34 == 2)
          {
            v27 = v31;
            v14 = v2[2];
            type metadata accessor for StatePath();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437200);
            v30[5] = v28;
            swift_getWitnessTable();
            v15 = nullsub_1(v14);
            v16 = v15;
            v17 = v15 + 64;
            v18 = 1 << *(v15 + 32);
            if (v18 < 64)
            {
              v19 = ~(-1 << v18);
            }

            else
            {
              v19 = -1;
            }

            v20 = v19 & *(v15 + 64);
            v21 = (v18 + 63) >> 6;

            v22 = 0;
            while (v20)
            {
              v23 = v22;
LABEL_22:
              v24 = *(*(v16 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v20)))));
              v20 &= v20 - 1;
              v30[0] = v24;
              v29[0] = v27;

              if (StatePath<A>.starts(with:)())
              {
                swift_beginAccess();
                sub_1AB4603C4();
                sub_1AB460314();
                swift_endAccess();
                sub_1AB014AC0(v30, &qword_1EB4372E0);
              }

              v22 = v23;
            }

            while (1)
            {
              v23 = v22 + 1;
              if (__OFADD__(v22, 1))
              {
                break;
              }

              if (v23 >= v21)
              {

                v2 = v26;
                v11 = v25;
                goto LABEL_5;
              }

              v20 = *(v17 + 8 * v23);
              ++v22;
              if (v20)
              {
                goto LABEL_22;
              }
            }

            __break(1u);
            break;
          }

          swift_beginAccess();
          type metadata accessor for StatePath();
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437200);
          v30[6] = v28;
          swift_getWitnessTable();
          sub_1AB4603C4();
          sub_1AB4603B4();
          swift_endAccess();
        }

        else if (v34)
        {
          swift_beginAccess();
          type metadata accessor for StatePath();
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437200);
          v29[5] = v28;
          swift_getWitnessTable();
          sub_1AB4603C4();
          sub_1AB460314();
          swift_endAccess();
          sub_1AB014AC0(v30, &qword_1EB4372E0);
        }

        else
        {
          sub_1AB0149B0((&v31 + 8), v30);
          sub_1AB01494C(v30, v29);
          swift_beginAccess();
          type metadata accessor for StatePath();
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437200);
          swift_getWitnessTable();
          sub_1AB4603C4();
          sub_1AB460424();
          swift_endAccess();
          __swift_destroy_boxed_opaque_existential_1Tm(v30);
        }

LABEL_5:
        v10 = v13;
        if (v13 == sub_1AB4609F4())
        {
        }
      }

      result = sub_1AB461644();
      __break(1u);
LABEL_30:
      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t MapStateCenter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AB36BC9C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB36BCF0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine14MapStateCenterC11TransactionV6Change33_71992241BDE49B487C252D9ADEDCF698LLOyx__G(uint64_t a1)
{
  if ((*(a1 + 48) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

uint64_t JetIntentPreloader.__allocating_init(dispatcher:)(uint64_t a1)
{
  v2 = swift_allocObject();
  JetIntentPreloader.init(dispatcher:)(a1);
  return v2;
}

uint64_t JetIntentPreloader.init(dispatcher:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438578);
  v3 = swift_allocObject();
  *(v3 + 20) = 0;
  *(v3 + 16) = 0;
  *(v1 + 16) = v3;
  sub_1AB01494C(a1, v1 + 64);
  v4 = type metadata accessor for JetIntentPreloaderQueue();
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B808);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = v6;
  v9 = v4;
  v10 = &off_1F2004210;
  *&v8 = v5;
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  sub_1AB0149B0(&v8, v1 + 24);
  return v1;
}

uint64_t JetIntentPreloader.preload<A>(objectGraph:configuration:intentProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1AB027554;

  return sub_1AB36BF48(a1, a2, a3, a4, a5, a6, a8);
}

uint64_t sub_1AB36BF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[30] = a7;
  v8[31] = v7;
  v8[28] = a5;
  v8[29] = a6;
  v8[26] = a3;
  v8[27] = a4;
  v8[24] = a1;
  v8[25] = a2;
  v8[32] = *(a6 - 8);
  v8[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB36C008, 0, 0);
}

uint64_t sub_1AB36C008()
{
  v16 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Promise();
  v12 = *(v0 + 200);
  *v13 = *(v0 + 216);
  v4 = Promise.__allocating_init()();
  *(v0 + 272) = v4;
  v5 = *(v2 + 16);
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  *(v6 + 24) = v1;
  *(v6 + 32) = v2;
  *(v6 + 40) = v12;
  *(v6 + 56) = v4;
  *(v6 + 64) = *v13;
  os_unfair_lock_lock((v5 + 20));
  sub_1AB36E18C((v5 + 16), v15);
  os_unfair_lock_unlock((v5 + 20));
  LOBYTE(v1) = v15[0];

  if (v1)
  {
    v14 = (*(v0 + 216) + **(v0 + 216));
    v7 = swift_task_alloc();
    *(v0 + 280) = v7;
    *v7 = v0;
    v7[1] = sub_1AB36C25C;
    v8 = *(v0 + 264);

    return v14(v8);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v0 + 312) = v10;
    *v10 = v0;
    v10[1] = sub_1AB36C774;
    v11 = *(v0 + 192);

    return Promise.then()(v11);
  }
}

uint64_t sub_1AB36C25C()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1AB36C960;
  }

  else
  {
    v2 = sub_1AB36C370;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB36C370()
{
  sub_1AB014A58(*(v0 + 208), v0 + 152, &qword_1EB4389F8);
  if (*(v0 + 176))
  {
    sub_1AB0149B0((v0 + 152), v0 + 112);
  }

  else
  {
    sub_1AB45051C(*(v0 + 232), *(v0 + 240), v0 + 112);
    if (*(v0 + 176))
    {
      sub_1AB014AC0(v0 + 152, &qword_1EB4389F8);
    }
  }

  if (!*(v0 + 136))
  {
    v1 = *(v0 + 264);
    v2 = swift_task_alloc();
    *(v2 + 16) = *(v0 + 232);
    *(v2 + 32) = v1;
    requirementFailure(_:file:line:)(sub_1AB36E368, v2, "JetEngine/JetIntentPreloader.swift", 34, 2, 115);
  }

  v3 = *(v0 + 248);
  v4 = *(v0 + 208);
  v5 = v3[11];
  v6 = v3[12];
  __swift_project_boxed_opaque_existential_1Tm(v3 + 8, v5);
  sub_1AB2C7468(v4, v0 + 64);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 56) = *(v0 + 104);
  sub_1AB36E1EC(v0 + 64, v0 + 16);
  v14 = (*(v6 + 32) + **(v6 + 32));
  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  *v7 = v0;
  v7[1] = sub_1AB36C5AC;
  v8 = *(v0 + 264);
  v9 = *(v0 + 232);
  v10 = *(v0 + 240);
  v11 = *(v0 + 192);
  v12 = *(v0 + 200);

  return v14(v11, v8, v12, v0 + 16, v9, v10, v5, v6);
}

uint64_t sub_1AB36C5AC()
{
  v2 = *v1;
  *(v2 + 304) = v0;

  sub_1AB222F0C(v2 + 16);
  if (v0)
  {
    v3 = sub_1AB36C9CC;
  }

  else
  {
    v3 = sub_1AB36C6C8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB36C6C8()
{
  v1 = v0[33];
  v2 = v0[32];
  v3 = v0[29];

  sub_1AB014AC0((v0 + 14), &qword_1EB4389F8);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB36C774()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_1AB36C8F4;
  }

  else
  {
    v2 = sub_1AB36C888;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB36C888()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB36C8F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB36C960()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB36C9CC()
{
  v1 = v0[33];
  v2 = v0[32];
  v3 = v0[29];

  sub_1AB014AC0((v0 + 14), &qword_1EB4389F8);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t JetIntentPreloader.preloadAnyIntent<A>(objectGraph:configuration:intentProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1AB027460;

  return sub_1AB36BF48(a1, a2, a3, a4, a5, a6, a7);
}

Swift::Void __swiftcall JetIntentPreloader.startDispatchingPreloadIntents()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 20));
  if (*(v1 + 16) == 1)
  {
    sub_1AB4118EC("JetEngine/JetIntentPreloader.swift", 0x22uLL, 2, 0x4FuLL);
  }

  else
  {
    *(v1 + 16) = 1;
  }

  os_unfair_lock_unlock((v1 + 20));

  sub_1AB36CBC8();
}

uint64_t sub_1AB36CBC8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = *(*__swift_project_boxed_opaque_existential_1Tm((v0 + 24), *(v0 + 48)) + 16);
  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);

  os_unfair_lock_unlock((v4 + 24));
  v6 = *(*__swift_project_boxed_opaque_existential_1Tm((v0 + 24), *(v0 + 48)) + 16);
  os_unfair_lock_lock((v6 + 24));

  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  os_unfair_lock_unlock((v6 + 24));
  sub_1AB460BC4();
  v7 = sub_1AB460BE4();
  (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  sub_1AB36DB6C(0, 0, v3, &unk_1AB4EE158, v8);

  return sub_1AB014AC0(v3, &qword_1EB4384A0);
}

uint64_t sub_1AB36CD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = __swift_project_boxed_opaque_existential_1Tm((v7 + 24), *(v7 + 48));
  sub_1AB2C7468(a2, &v21);
  sub_1AB01494C(v7 + 64, v20);
  v16 = swift_allocObject();
  *(v16 + 16) = a6;
  *(v16 + 24) = a7;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  v17 = v22[0];
  *(v16 + 48) = v21;
  *(v16 + 64) = v17;
  *(v16 + 73) = *(v22 + 9);
  sub_1AB0149B0(v20, v16 + 96);
  *(v16 + 136) = a1;
  *(v16 + 144) = a3;
  v18 = *(*v15 + 16);

  os_unfair_lock_lock((v18 + 24));
  sub_1AB36E32C((v18 + 16));
  os_unfair_lock_unlock((v18 + 24));
}

uint64_t sub_1AB36CE7C(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = a7;
  v8[29] = a8;
  v8[26] = a5;
  v8[27] = a6;
  v8[24] = a3;
  v8[25] = a4;
  v11 = *(*a6 + 80);
  v8[30] = v11;
  v8[31] = *(v11 - 8);
  v8[32] = swift_task_alloc();
  v8[33] = *(a7 - 8);
  v12 = swift_task_alloc();
  v8[34] = v12;
  v15 = (a1 + *a1);
  v13 = swift_task_alloc();
  v8[35] = v13;
  *v13 = v8;
  v13[1] = sub_1AB36D044;

  return v15(v12);
}

uint64_t sub_1AB36D044()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1AB36D590;
  }

  else
  {
    v2 = sub_1AB36D158;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB36D158()
{
  sub_1AB014A58(*(v0 + 192), v0 + 152, &qword_1EB4389F8);
  if (*(v0 + 176))
  {
    sub_1AB0149B0((v0 + 152), v0 + 112);
  }

  else
  {
    sub_1AB45051C(*(v0 + 224), *(v0 + 232), v0 + 112);
    if (*(v0 + 176))
    {
      sub_1AB014AC0(v0 + 152, &qword_1EB4389F8);
    }
  }

  if (!*(v0 + 136))
  {
    v1 = *(v0 + 272);
    v2 = swift_task_alloc();
    *(v2 + 16) = *(v0 + 224);
    *(v2 + 32) = v1;
    requirementFailure(_:file:line:)(sub_1AB36E348, v2, "JetEngine/JetIntentPreloader.swift", 34, 2, 145);
  }

  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v5);
  sub_1AB2C7468(v4, v0 + 64);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 56) = *(v0 + 104);
  sub_1AB36E1EC(v0 + 64, v0 + 16);
  v14 = (*(v6 + 32) + **(v6 + 32));
  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  *v7 = v0;
  v7[1] = sub_1AB36D390;
  v8 = *(v0 + 272);
  v9 = *(v0 + 256);
  v10 = *(v0 + 224);
  v11 = *(v0 + 232);
  v12 = *(v0 + 208);

  return v14(v9, v8, v12, v0 + 16, v10, v11, v5, v6);
}

uint64_t sub_1AB36D390()
{
  v2 = *v1;
  *(v2 + 304) = v0;

  sub_1AB222F0C(v2 + 16);
  if (v0)
  {
    v3 = sub_1AB36D600;
  }

  else
  {
    v3 = sub_1AB36D4AC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB36D4AC()
{
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[30];
  v6 = v0[28];
  Promise.resolve(_:)(v3);
  (*(v4 + 8))(v3, v5);
  sub_1AB014AC0((v0 + 14), &qword_1EB4389F8);
  (*(v2 + 8))(v1, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1AB36D590()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB36D600()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[28];
  sub_1AB014AC0((v0 + 14), &qword_1EB4389F8);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB36D6B0()
{
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD00000000000004CLL, 0x80000001AB50B840);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0xD000000000000036, 0x80000001AB50B890);
  return 0;
}

uint64_t sub_1AB36D778()
{
  v1 = v0[2];
  v2 = v1[2];
  v0[3] = v2;
  if (v2)
  {
    v0[4] = 0;
    v0[5] = v1[5];
    v3 = v1[4];

    v7 = (v3 + *v3);
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_1AB36D8C0;

    return v7();
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1AB36D8C0()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB36DA1C, 0, 0);
  }
}

uint64_t sub_1AB36DA1C()
{
  v1 = v0[4] + 1;
  if (v1 == v0[3])
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[4] = v1;
    v4 = v0[2] + 16 * v1;
    v0[5] = *(v4 + 40);
    v5 = *(v4 + 32);

    v7 = (v5 + *v5);
    v6 = swift_task_alloc();
    v0[6] = v6;
    *v6 = v0;
    v6[1] = sub_1AB36D8C0;

    return v7();
  }
}

uint64_t sub_1AB36DB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1AB014A58(a3, v22 - v9, &qword_1EB4384A0);
  v11 = sub_1AB460BE4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1AB014AC0(v10, &qword_1EB4384A0);
  }

  else
  {
    sub_1AB460BD4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1AB460AE4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1AB460614() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t JetIntentPreloader.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);
  return v0;
}

uint64_t JetIntentPreloader.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_1AB36DE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1AB027554;

  return JetIntentPreloader.preload<A>(objectGraph:configuration:intentProvider:)(a1, a2, a3, a4, a5, a6, v16, a8);
}

uint64_t sub_1AB36DF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1AB027554;

  return JetIntentPreloader.preloadAnyIntent<A>(objectGraph:configuration:intentProvider:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1AB36E020()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock((v1 + 20));
  if (*(v1 + 16) == 1)
  {
    sub_1AB4118EC("JetEngine/JetIntentPreloader.swift", 0x22uLL, 2, 0x4FuLL);
  }

  else
  {
    *(v1 + 16) = 1;
  }

  os_unfair_lock_unlock((v1 + 20));
  return sub_1AB36CBC8();
}

uint64_t sub_1AB36E0D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1AB027554;

  return sub_1AB36D758(a1, v4, v5, v6);
}

_BYTE *sub_1AB36E18C@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v4 = 1;
  }

  else
  {
    result = sub_1AB36CD58(v2[5], v2[6], v2[7], v2[8], v2[9], v2[2], v2[3]);
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1AB36E1EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4389F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB36E25C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[17];
  v7 = v0[18];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1AB027460;

  return sub_1AB36CE7C(v4, v5, (v0 + 6), (v0 + 12), v6, v7, v2, v3);
}

uint64_t TransientPreferences.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B810);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t TransientPreferences.init()()
{
  v1 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B810);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

void TransientPreferences.subscript.getter(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock((v5 + 24));
  sub_1AB36E690((v5 + 16), a1, a2);

  os_unfair_lock_unlock((v5 + 24));
}

void sub_1AB36E4A0(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(*a1 + 16);
  os_unfair_lock_lock((v5 + 24));
  sub_1AB36E690((v5 + 16), a2, a3);

  os_unfair_lock_unlock((v5 + 24));
}

uint64_t sub_1AB36E50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AB01494C(a3, v14);
  sub_1AB01522C(a1, v13);
  v5 = *(*a2 + 16);
  os_unfair_lock_lock(v5 + 6);
  v6 = v15;
  v7 = v16;
  __swift_project_boxed_opaque_existential_1Tm(v14, v15);
  v8 = (*(v7 + 8))(v6, v7);
  v10 = v9;
  sub_1AB01522C(v13, v12);
  sub_1AB01AD48(v12, v8, v10);
  os_unfair_lock_unlock(v5 + 6);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return sub_1AB0167A8(v13);
}

uint64_t TransientPreferences.subscript.setter(uint64_t a1, void *a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 6);
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v10 = v9;
  sub_1AB01522C(a1, v12);
  sub_1AB01AD48(v12, v8, v10);
  os_unfair_lock_unlock(v5 + 6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return sub_1AB0167A8(a1);
}

double sub_1AB36E690@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v5);
  v7 = (*(v6 + 8))(v5, v6);
  v9 = *a1;
  if (*(*a1 + 16))
  {
    v10 = sub_1AB014DB4(v7, v8);
    v12 = v11;

    if (v12)
    {
      sub_1AB0165C4(*(v9 + 56) + 32 * v10, a3);
      return result;
    }
  }

  else
  {
  }

  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

void (*TransientPreferences.subscript.modify(uint64_t *a1, void *a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0xB8uLL);
  }

  v6 = v5;
  *a1 = v5;
  sub_1AB01494C(a2, v5);
  v7 = *(v2 + 16);
  *(v6 + 176) = v7;
  os_unfair_lock_lock((v7 + 24));
  sub_1AB36E690((v7 + 16), a2, (v6 + 80));
  os_unfair_lock_unlock((v7 + 24));
  return sub_1AB36E7F8;
}

void sub_1AB36E7F8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 176);
  if (a2)
  {
    sub_1AB01522C(v2 + 80, v2 + 112);
    sub_1AB0149B0(v2, v2 + 40);
    os_unfair_lock_lock(v3 + 6);
    v4 = *(v2 + 64);
    v5 = *(v2 + 72);
    __swift_project_boxed_opaque_existential_1Tm((v2 + 40), v4);
    v6 = (*(v5 + 8))(v4, v5);
    v8 = v7;
    sub_1AB01522C(v2 + 112, v2 + 144);
    sub_1AB01AD48(v2 + 144, v6, v8);
    os_unfair_lock_unlock(v3 + 6);
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 40);
    sub_1AB0167A8(v2 + 112);
  }

  else
  {
    os_unfair_lock_lock(v3 + 6);
    v9 = *(v2 + 24);
    v10 = *(v2 + 32);
    __swift_project_boxed_opaque_existential_1Tm(v2, v9);
    v11 = (*(v10 + 8))(v9, v10);
    v13 = v12;
    sub_1AB01522C(v2 + 80, v2 + 40);
    sub_1AB01AD48(v2 + 40, v11, v13);
    os_unfair_lock_unlock(v3 + 6);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  sub_1AB0167A8(v2 + 80);

  free(v2);
}

void TransientPreferences.removeValue(forKey:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_1AB36EC80(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1AB36E9A8(uint64_t a1, void *a2)
{
  v2 = a2[3];
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v2);
  v4 = (*(v3 + 8))(v2, v3);
  sub_1AB09AE18(v4, v5, v7);

  return sub_1AB0167A8(v7);
}

uint64_t TransientPreferences.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1AB36EA94(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock((v5 + 24));
  sub_1AB36E690((v5 + 16), a1, a2);

  os_unfair_lock_unlock((v5 + 24));
}

uint64_t sub_1AB36EAFC(uint64_t a1, void *a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 6);
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v10 = v9;
  sub_1AB01522C(a1, v12);
  sub_1AB01AD48(v12, v8, v10);
  os_unfair_lock_unlock(v5 + 6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return sub_1AB0167A8(a1);
}

void (*sub_1AB36EBB4(uint64_t **a1, void *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = TransientPreferences.subscript.modify(v4, a2);
  return sub_1AB159AD4;
}

void sub_1AB36EC2C()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_1AB36ECEC(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1AB36ED2C(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v2 + 8))(v4, a1);
  if (EnumCaseMultiPayload == 1)
  {
    return 0x73736563637573;
  }

  else
  {
    return 0x6572756C696166;
  }
}

uint64_t _s9JetEngine14DaemonResponseO3getxyAA0cD12CodableErrorVYKF@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v7 = (v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a3, v7);
  }

  v10 = *v7;
  v11 = v7[1];
  v12 = v7[2];
  v13 = v7[3];
  v14 = v7[4];
  *a2 = *v7;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v13;
  a2[4] = v14;
  v15[1] = v10;
  v15[2] = v11;
  v15[3] = v12;
  v15[4] = v13;
  v15[5] = v14;
  sub_1AB1C5D4C();
  return swift_willThrowTypedImpl();
}

id sub_1AB36EF94()
{
  if (!*(v0 + 8))
  {
    return 0;
  }

  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 32) = sub_1AB460544();
  *(inited + 40) = v3;
  sub_1AB1C5D4C();
  v4 = sub_1AB462024();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_1AB01B220(inited);
  swift_setDeallocating();
  sub_1AB1BA43C(inited + 32);
  v6 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v7 = sub_1AB460514();
  v8 = sub_1AB4602D4();

  v9 = [v6 initWithDomain:v7 code:v1 userInfo:v8];

  return v9;
}

uint64_t sub_1AB36F0FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B840);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB371938();
  sub_1AB462274();
  v13 = 0;
  sub_1AB461BB4();
  if (!v4)
  {
    v12 = 1;
    sub_1AB461BE4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AB36F290()
{
  if (*v0)
  {
    return 1701080931;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_1AB36F2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v6 || (sub_1AB461DA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AB461DA4();

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

uint64_t sub_1AB36F398(uint64_t a1)
{
  v2 = sub_1AB371938();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB36F3D4(uint64_t a1)
{
  v2 = sub_1AB371938();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB36F410@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AB37198C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t DaemonResponseCodableError.errorDescription.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t DaemonResponseCodableError.errorDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

unint64_t DaemonResponseCodableError.description.getter()
{
  v1 = v0[1];
  if (v0[4])
  {
    v2 = v0[3];
    v3 = v0[4];
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  v4 = *v0;

  sub_1AB4615D4();

  MEMORY[0x1AC59BA20](v2, v3);

  MEMORY[0x1AC59BA20](34, 0xE100000000000000);
  if (v1)
  {
    sub_1AB4615D4();

    MEMORY[0x1AC59BA20](v4, v1);
    MEMORY[0x1AC59BA20](0x3A65646F63202C22, 0xE900000000000020);
    v5 = sub_1AB461C44();
    MEMORY[0x1AC59BA20](v5);

    MEMORY[0x1AC59BA20](0x6E69616D6F64202CLL, 0xEB0000000022203ALL);
  }

  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return 0xD00000000000002ELL;
}

uint64_t sub_1AB36F684()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x49726F727245736ELL;
  }
}

uint64_t sub_1AB36F6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49726F727245736ELL && a2 == 0xEB000000006F666ELL;
  if (v6 || (sub_1AB461DA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001AB50B930 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AB461DA4();

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

uint64_t sub_1AB36F7B4(uint64_t a1)
{
  v2 = sub_1AB36F9D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB36F7F0(uint64_t a1)
{
  v2 = sub_1AB36F9D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonResponseCodableError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B818);
  v13 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v12 - v4;
  v6 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v8 = v1[3];
  v12[1] = v1[4];
  v12[2] = v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB36F9D4();

  sub_1AB462274();
  v14 = v6;
  v15 = v7;
  v16 = v9;
  v17 = 0;
  sub_1AB36FA28();
  v10 = v12[3];
  sub_1AB461B84();

  if (!v10)
  {
    LOBYTE(v14) = 1;
    sub_1AB461B44();
  }

  return (*(v13 + 8))(v5, v3);
}

unint64_t sub_1AB36F9D4()
{
  result = qword_1EB432EF0;
  if (!qword_1EB432EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432EF0);
  }

  return result;
}

unint64_t sub_1AB36FA28()
{
  result = qword_1EB43B820;
  if (!qword_1EB43B820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B820);
  }

  return result;
}

uint64_t DaemonResponseCodableError.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B828);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB36F9D4();
  sub_1AB462224();
  if (!v2)
  {
    v21 = 0;
    sub_1AB36FCA4();
    sub_1AB461A54();
    v9 = v19;
    v16 = v20;
    v17 = v18;
    LOBYTE(v18) = 1;
    v11 = sub_1AB461A14();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    v14 = v16;
    *a2 = v17;
    a2[1] = v9;
    a2[2] = v14;
    a2[3] = v11;
    a2[4] = v13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1AB36FCA4()
{
  result = qword_1EB432ED8;
  if (!qword_1EB432ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432ED8);
  }

  return result;
}

uint64_t sub_1AB36FCF8()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t DaemonResponse.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  swift_getErrorValue();
  v4 = sub_1AB462024();
  v6 = v5;

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = v4;
  a2[4] = v6;
  type metadata accessor for DaemonResponse();
  return swift_storeEnumTagMultiPayload();
}

uint64_t DaemonResponse.init(reason:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = a1;
  a3[4] = a2;
  type metadata accessor for DaemonResponse();

  return swift_storeEnumTagMultiPayload();
}

uint64_t DaemonResponse.init(nsError:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 domain];
  v5 = sub_1AB460544();
  v7 = v6;

  v8 = [a1 code];
  v9 = [a1 localizedDescription];
  v10 = sub_1AB460544();
  v12 = v11;

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v10;
  a2[4] = v12;
  type metadata accessor for DaemonResponse();

  return swift_storeEnumTagMultiPayload();
}

double DaemonResponse.init<>(_:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = a1 & 1;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 1;
  return result;
}

uint64_t DaemonResponse.init<>(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  *(a3 + 40) = 1;
  return result;
}

uint64_t sub_1AB36FFB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6572756C696166 && a2 == 0xE700000000000000;
  if (v4 || (sub_1AB461DA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736563637573 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1AB461DA4();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1AB37007C(char a1)
{
  if (a1)
  {
    return 0x73736563637573;
  }

  else
  {
    return 0x6572756C696166;
  }
}

uint64_t sub_1AB3700AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1AB461DA4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1AB37015C()
{
  sub_1AB4620A4();
  sub_1AB15ADD8(v2, *v0);
  return sub_1AB462104();
}

uint64_t sub_1AB3701BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB36FFB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AB3701F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB170894();
  *a1 = result;
  return result;
}

uint64_t sub_1AB370224(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AB370278(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1AB3702D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB0C9098();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1AB370310(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AB370364(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1AB3703B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AB37040C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t DaemonResponse.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v40 = type metadata accessor for DaemonResponse.SuccessCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1AB461C14();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v39 = v33 - v7;
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v37 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DaemonResponse.FailureCodingKeys();
  v11 = swift_getWitnessTable();
  v33[2] = v10;
  v33[1] = v11;
  v12 = sub_1AB461C14();
  v35 = *(v12 - 8);
  v36 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v34 = v33 - v13;
  v14 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v5;
  *&v45 = v4;
  type metadata accessor for DaemonResponse.CodingKeys();
  swift_getWitnessTable();
  v18 = sub_1AB461C14();
  v47 = *(v18 - 8);
  v48 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v33 - v19;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462274();
  (*(v14 + 16))(v17, v46, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v41;
    v22 = v37;
    v23 = v45;
    (*(v41 + 32))(v37, v17, v45);
    LOBYTE(v49) = 1;
    v24 = v39;
    v25 = v48;
    sub_1AB461B24();
    v26 = v43;
    sub_1AB461BF4();
    (*(v42 + 8))(v24, v26);
    (*(v21 + 8))(v22, v23);
    return (*(v47 + 8))(v20, v25);
  }

  else
  {
    v28 = *(v17 + 4);
    LOBYTE(v49) = 0;
    v29 = *v17;
    v45 = *(v17 + 1);
    v46 = v29;
    v30 = v34;
    v31 = v48;
    sub_1AB461B24();
    v49 = v46;
    v50 = v45;
    v51 = v28;
    sub_1AB370A08();
    v32 = v36;
    sub_1AB461BF4();
    (*(v35 + 8))(v30, v32);
    (*(v47 + 8))(v20, v31);
  }
}

unint64_t sub_1AB370A08()
{
  result = qword_1EB43B830;
  if (!qword_1EB43B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B830);
  }

  return result;
}

uint64_t DaemonResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a4;
  v7 = type metadata accessor for DaemonResponse.SuccessCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v67 = v7;
  v60 = sub_1AB461B04();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v68 = &v55 - v8;
  v9 = type metadata accessor for DaemonResponse.FailureCodingKeys();
  v10 = swift_getWitnessTable();
  v64 = v9;
  v63 = v10;
  v58 = sub_1AB461B04();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v65 = &v55 - v11;
  type metadata accessor for DaemonResponse.CodingKeys();
  v73 = swift_getWitnessTable();
  v12 = sub_1AB461B04();
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  v61 = a2;
  v62 = a3;
  v15 = type metadata accessor for DaemonResponse();
  v70 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55 - v22;
  v24 = a1[3];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v24);
  v25 = v74;
  sub_1AB462224();
  if (!v25)
  {
    v74 = v17;
    v56 = v20;
    v73 = v23;
    v26 = v72;
    v27 = v14;
    *&v75 = sub_1AB461AE4();
    sub_1AB460A64();
    swift_getWitnessTable();
    *&v78 = sub_1AB4614B4();
    *(&v78 + 1) = v28;
    *&v79 = v29;
    *(&v79 + 1) = v30;
    sub_1AB4614A4();
    swift_getWitnessTable();
    sub_1AB460EE4();
    v31 = v75;
    if (v75 == 2 || (v55 = v78, v75 = v78, v76 = v79, (sub_1AB460F44() & 1) == 0))
    {
      v37 = sub_1AB4616B4();
      swift_allocError();
      v38 = v26;
      v40 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
      *v40 = v15;
      sub_1AB4619E4();
      sub_1AB461694();
      (*(*(v37 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v37);
      swift_willThrow();
      (*(v71 + 8))(v14, v38);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v31)
      {
        LOBYTE(v75) = 1;
        v32 = v68;
        v33 = v14;
        sub_1AB4619D4();
        v34 = v69;
        v35 = v70;
        v36 = v71;
        v46 = v32;
        v47 = v74;
        v48 = v60;
        sub_1AB461AC4();
        (*(v59 + 8))(v46, v48);
        (*(v36 + 8))(v33, v72);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v53 = *(v35 + 32);
        v54 = v73;
        v53(v73, v47, v15);
      }

      else
      {
        LOBYTE(v75) = 0;
        v41 = v65;
        v42 = v27;
        sub_1AB4619D4();
        v44 = v70;
        v43 = v71;
        sub_1AB371278();
        v45 = v58;
        sub_1AB461AC4();
        (*(v57 + 8))(v41, v45);
        (*(v43 + 8))(v42, v26);
        swift_unknownObjectRelease();
        v50 = v77;
        v51 = v76;
        v52 = v56;
        *v56 = v75;
        v52[1] = v51;
        *(v52 + 4) = v50;
        swift_storeEnumTagMultiPayload();
        v53 = *(v44 + 32);
        v54 = v73;
        v53(v73, v52, v15);
        v34 = v69;
      }

      v53(v34, v54, v15);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v80);
}

unint64_t sub_1AB371278()
{
  result = qword_1EB432ED0;
  if (!qword_1EB432ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432ED0);
  }

  return result;
}

uint64_t sub_1AB37130C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AB371368(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1AB3713D4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AB371444(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 40;
  if (*(v3 + 64) > 0x28uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1AB37155C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x28)
  {
    v5 = 40;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_1AB371738()
{
  result = qword_1EB43B838;
  if (!qword_1EB43B838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B838);
  }

  return result;
}

unint64_t sub_1AB37188C()
{
  result = qword_1EB432EE0;
  if (!qword_1EB432EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432EE0);
  }

  return result;
}

unint64_t sub_1AB3718E4()
{
  result = qword_1EB432EE8;
  if (!qword_1EB432EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432EE8);
  }

  return result;
}

unint64_t sub_1AB371938()
{
  result = qword_1EB432570;
  if (!qword_1EB432570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432570);
  }

  return result;
}

uint64_t sub_1AB37198C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B848);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB371938();
  sub_1AB462224();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_1AB461A84();
    v9[14] = 1;
    sub_1AB461AB4();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t sub_1AB371B78()
{
  result = qword_1EB43B850;
  if (!qword_1EB43B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B850);
  }

  return result;
}

unint64_t sub_1AB371BD0()
{
  result = qword_1EB432560;
  if (!qword_1EB432560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432560);
  }

  return result;
}

unint64_t sub_1AB371C28()
{
  result = qword_1EB432568;
  if (!qword_1EB432568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432568);
  }

  return result;
}

uint64_t sub_1AB371C8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AB01EC0C(a1, v11);
  v3 = v12;
  if (v12)
  {
    v4 = v13;
    __swift_project_boxed_opaque_existential_1Tm(v11, v12);
    v5 = (*(v4 + 24))(v3, v4);
    v7 = v6;
    result = __swift_destroy_boxed_opaque_existential_1Tm(v11);
    if (v7)
    {
      *a2 = v5;
      a2[1] = v7;
      return result;
    }
  }

  else
  {
    sub_1AB014AC0(v11, &qword_1EB436BA0);
  }

  sub_1AB163664();
  swift_allocError();
  v9 = MEMORY[0x1E69E7CC0];
  *v10 = &type metadata for JSONObject;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;
  return swift_willThrow();
}

uint64_t sub_1AB371D80(void *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1AB460514();

  v4 = [a1 localizedStringsForTable:0 localization:v3];

  v5 = sub_1AB4602F4();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = sub_1AB1AFEFC(*(v5 + 16), 0);
    v8 = sub_1AB1B1168(&v10, v7 + 4, v6, v5);
    result = sub_1AB0309A4();
    if (v8 == v6)
    {
      return v7;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

char *sub_1AB371EFC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v72 = a4;
  v71 = a3;
  v82 = *MEMORY[0x1E69E9840];
  v7 = sub_1AB45EFB4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1AB45EFC4();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB45F9E4();
  v67 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1AB45F764();
  v69 = *(v70 - 8);
  v13 = MEMORY[0x1EEE9AC00](v70);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v58 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v58 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v68 = &v58 - v22;
  v23 = sub_1AB4605C4();
  MEMORY[0x1EEE9AC00](v23 - 8);
  sub_1AB460594();
  sub_1AB460564();
  if (!v24)
  {
    goto LABEL_8;
  }

  JSONObject.init(deserializing:)(v79);
  if (v4)
  {
LABEL_9:
    sub_1AB017254(v71, v72);
    sub_1AB017254(a1, a2);
    return v18;
  }

  v61 = a1;
  v62 = a2;
  sub_1AB01EC0C(v79, v73);
  v25 = v74;
  if (!v74)
  {
    sub_1AB066D84(v79);
    sub_1AB014AC0(v73, &qword_1EB436BA0);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
    goto LABEL_7;
  }

  v26 = v75;
  __swift_project_boxed_opaque_existential_1Tm(v73, v74);
  (*(v26 + 152))(&v76, v25, v26);
  sub_1AB066D84(v79);
  __swift_destroy_boxed_opaque_existential_1Tm(v73);
  if (!*(&v77 + 1))
  {
LABEL_7:
    sub_1AB014AC0(&v76, &qword_1EB437EF8);
    a2 = v62;
    a1 = v61;
LABEL_8:
    sub_1AB163664();
    swift_allocError();
    v29 = MEMORY[0x1E69E7CC0];
    *v30 = MEMORY[0x1E6969080];
    v30[1] = v29;
    v30[2] = 0;
    v30[3] = 0;
    swift_willThrow();
    goto LABEL_9;
  }

  v80[0] = v76;
  v80[1] = v77;
  v27 = v78;
  v81 = v78;
  v28 = *(&v77 + 1);
  __swift_project_boxed_opaque_existential_1Tm(v80, *(&v77 + 1));
  v60 = (*(v27 + 48))(sub_1AB371C8C, 0, MEMORY[0x1E69E6158], v28, v27);
  v59 = [objc_opt_self() defaultManager];
  v32 = [v59 temporaryDirectory];
  sub_1AB45F6C4();

  sub_1AB45F9D4();
  sub_1AB45F9C4();
  v67[1](v12, v10);
  sub_1AB45F664();

  v33 = v69 + 8;
  v34 = *(v69 + 8);
  v35 = v18;
  v36 = v70;
  (v34)(v35, v70);
  v37 = v68;
  sub_1AB45F664();
  (v34)(v21, v36);
  v38 = sub_1AB45F654();
  v79[0] = 0;
  v39 = v59;
  LOBYTE(v32) = [v59 createDirectoryAtURL:v38 withIntermediateDirectories:1 attributes:0 error:v79];

  v18 = v79[0];
  if ((v32 & 1) == 0)
  {
    v51 = v79[0];
    sub_1AB45F594();

    swift_willThrow();
    sub_1AB017254(v71, v72);
    sub_1AB017254(v61, v62);
    (v34)(v37, v70);
LABEL_19:
    sub_1AB06A37C(v80);

    return v18;
  }

  v67 = v34;
  v69 = v33;
  v40 = *(v60 + 16);
  v41 = v79[0];
  if (!v40)
  {
LABEL_17:
    v48 = v68;
    sub_1AB45F664();
    v49 = v71;
    v50 = v72;
    sub_1AB45F864();
    v52 = v70;
    v53 = v67;
    (v67)(v15, v70);
    v54 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
    v55 = sub_1AB45F654();
    v18 = [v54 initWithURL_];

    v56 = v62;
    if (v18)
    {
      (v53)(v48, v52);

      sub_1AB017254(v49, v50);
      sub_1AB017254(v61, v56);
      sub_1AB06A37C(v80);
      return v18;
    }

    sub_1AB45EF84();
    sub_1AB01B220(MEMORY[0x1E69E7CC0]);
    sub_1AB2CEA10();
    v57 = v63;
    v18 = v66;
    sub_1AB45F574();
    sub_1AB45EF64();
    (*(v65 + 8))(v57, v18);
    swift_willThrow();

    sub_1AB017254(v49, v50);
    sub_1AB017254(v61, v62);
    (v67)(v48, v52);
    goto LABEL_19;
  }

  v42 = 0;
  v43 = (v60 + 40);
  while (1)
  {
    if (v42 >= *(v60 + 16))
    {
      __break(1u);
    }

    v44 = *v43;
    v79[0] = *(v43 - 1);
    v79[1] = v44;

    MEMORY[0x1AC59BA20](0x6A6F72706C2ELL, 0xE600000000000000);
    sub_1AB45F664();

    v45 = sub_1AB45F654();
    (v67)(v21, v70);
    v79[0] = 0;
    v46 = [v59 createDirectoryAtURL:v45 withIntermediateDirectories:1 attributes:0 error:v79];

    if (!v46)
    {
      break;
    }

    ++v42;
    v47 = v79[0];
    v43 += 2;
    if (v40 == v42)
    {
      goto LABEL_17;
    }
  }

  v18 = v79[0];
  sub_1AB45F594();

  swift_willThrow();
  sub_1AB017254(v71, v72);
  sub_1AB017254(v61, v62);
  (v67)(v68, v70);

  sub_1AB06A37C(v80);
  return v18;
}

uint64_t sub_1AB3729EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1AB460514();
  v7 = sub_1AB460514();
  v8 = sub_1AB460514();
  v9 = [a5 localizedStringForKey:v6 value:v7 table:0 localization:v8];

  v10 = sub_1AB460544();
  v12 = v11;

  if (v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12 == 0xE100000000000000;
  }

  if (v13 || (sub_1AB461DA4() & 1) != 0)
  {

    return 0;
  }

  return v10;
}

void sub_1AB372AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1AB45F584();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_1AB372B5C()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1AB372CC0()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = *MEMORY[0x1E698C788];
  v3 = *(v0 + OBJC_IVAR____TtC9JetEngine16OverriddenAMSBag_backing);
  swift_unknownObjectRetain();
  if (sub_1AB45F274())
  {
    v4 = sub_1AB4602D4();
  }

  else
  {
    v4 = 0;
  }

  [v1 postNotificationName:v2 object:v3 userInfo:v4];

  swift_unknownObjectRelease();
}

id sub_1AB3730D4(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR____TtC9JetEngine16OverriddenAMSBag_backing];
  v5 = a1;
  v6 = [v4 *a3];
  if (!v6)
  {
    sub_1AB460544();
    v6 = sub_1AB460514();
  }

  return v6;
}

id sub_1AB3733CC(uint64_t a1, SEL *a2)
{
  if (*(*(v2 + OBJC_IVAR____TtC9JetEngine16OverriddenAMSBag_overrides) + 16) && (sub_1AB1DB6F4(a1), (v5 & 1) != 0) && (objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0))
  {
    v7 = v6;
    swift_unknownObjectRetain();
    return v7;
  }

  else
  {
    v9 = [*(v2 + OBJC_IVAR____TtC9JetEngine16OverriddenAMSBag_backing) *a2];

    return v9;
  }
}

void sub_1AB373500(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v8 = objc_allocWithZone(type metadata accessor for OverriddenAMSBag());
    v9 = a1;

    v10 = sub_1AB373984(v9, a5, v8);
    (a3)(v10, 0);
  }

  else
  {
    a3();
  }
}

id sub_1AB373758()
{
  ObjectType = swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC9JetEngine16OverriddenAMSBag_backing);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v4 = [v2 profile];
    if (!v4)
    {
      sub_1AB460544();
      v4 = sub_1AB460514();
    }

    v5 = [v2 profileVersion];
    if (!v5)
    {
      sub_1AB460544();
      v5 = sub_1AB460514();
    }

    v6 = [objc_opt_self() bagForProfile:v4 profileVersion:v5];

    v7 = *(v0 + OBJC_IVAR____TtC9JetEngine16OverriddenAMSBag_overrides);
    v8 = objc_allocWithZone(ObjectType);

    return sub_1AB373A58(v6, v7, v8);
  }

  return result;
}

id sub_1AB37392C(uint64_t a1, uint64_t a2, Class a3)
{
  v5 = objc_allocWithZone(a3);

  return sub_1AB373B54(a1, a2, v5);
}

id sub_1AB373984(void *a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  *&a3[OBJC_IVAR____TtC9JetEngine16OverriddenAMSBag_backing] = a1;
  *&a3[OBJC_IVAR____TtC9JetEngine16OverriddenAMSBag_overrides] = a2;
  v11.receiver = a3;
  v11.super_class = ObjectType;
  v7 = a1;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  v9 = [objc_opt_self() defaultCenter];
  [v9 addObserver:v8 selector:sel_forwardSnapshotBagExpiredValueAccessed_ name:*MEMORY[0x1E698C788] object:v7];

  return v8;
}

id sub_1AB373A58(void *a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  *&a3[OBJC_IVAR____TtC9JetEngine16OverriddenAMSBag_backing] = a1;
  *&a3[OBJC_IVAR____TtC9JetEngine16OverriddenAMSBag_overrides] = a2;
  v11.receiver = a3;
  v11.super_class = ObjectType;
  v7 = a1;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v9 = [objc_opt_self() defaultCenter];
    [v9 addObserver:v8 selector:sel_forwardSnapshotBagExpiredValueAccessed_ name:*MEMORY[0x1E698C788] object:v7];
  }

  return v8;
}

id sub_1AB373B54(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  *&a3[OBJC_IVAR____TtC9JetEngine16OverriddenAMSBag_backing] = a1;
  *&a3[OBJC_IVAR____TtC9JetEngine16OverriddenAMSBag_overrides] = a2;
  v10.receiver = a3;
  v10.super_class = ObjectType;
  swift_unknownObjectRetain();
  v7 = objc_msgSendSuper2(&v10, sel_init);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v8 = [objc_opt_self() defaultCenter];
    [v8 addObserver:v7 selector:sel_forwardSnapshotBagExpiredValueAccessed_ name:*MEMORY[0x1E698C788] object:a1];
  }

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_1AB373C48(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1AB45F854();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1AB03BD58(v6, v10);
}

uint64_t URLSessionPreconnecter.init(urlSession:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C300);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *a2 = a1;
  a2[1] = result;
  return result;
}

uint64_t sub_1AB373D60()
{
  v0 = sub_1AB45FFC4();
  __swift_allocate_value_buffer(v0, qword_1EB434738);
  __swift_project_value_buffer(v0, qword_1EB434738);
  return sub_1AB45FFB4();
}

uint64_t URLSessionPreconnecter.preconnect(to:)(uint64_t a1)
{
  v51 = sub_1AB45F0A4();
  v45 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AB45F764();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v49 = v6;
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  v10 = sub_1AB45FF84();
  v48 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  v52 = *v1;
  if (qword_1EB434730 != -1)
  {
    swift_once();
  }

  v15 = sub_1AB45FFC4();
  __swift_project_value_buffer(v15, qword_1EB434738);
  sub_1AB45FFA4();
  sub_1AB45FF54();
  v46 = *(v5 + 16);
  v46(v9, a1, v4);
  v16 = sub_1AB45FFA4();
  v54 = v14;
  v17 = v16;
  v18 = sub_1AB461234();
  if (sub_1AB461314())
  {
    v19 = swift_slowAlloc();
    v44 = a1;
    v20 = v19;
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    *v20 = 136315138;
    v21 = sub_1AB45F6D4();
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    v24 = v10;
    if (v22)
    {
      v25 = v22;
    }

    else
    {
      v25 = 0xE000000000000000;
    }

    (*(v5 + 8))(v9, v4);
    v26 = sub_1AB030D2C(v23, v25, aBlock);
    v10 = v24;

    *(v20 + 4) = v26;
    v27 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v17, v18, v27, "Preconnect", "host=%s", v20, 0xCu);
    v28 = v43;
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x1AC59F020](v28, -1, -1);
    v29 = v20;
    a1 = v44;
    MEMORY[0x1AC59F020](v29, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }

  v30 = v48;
  v31 = v54;
  (*(v48 + 16))(v47, v54, v10);
  sub_1AB460014();
  swift_allocObject();
  v32 = sub_1AB460004();
  (*(v30 + 8))(v31, v10);
  v33 = v50;
  v34 = v46;
  v46(v50, a1, v4);
  v35 = v53;
  sub_1AB45F064();
  v36 = sub_1AB45F024();
  v34(v33, a1, v4);
  v37 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v38 = (v49 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  (*(v5 + 32))(v39 + v37, v33, v4);
  *(v39 + v38) = v32;
  aBlock[4] = sub_1AB3760D0;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB373C48;
  aBlock[3] = &block_descriptor_38;
  v40 = _Block_copy(aBlock);

  v41 = [v52 dataTaskWithRequest:v36 completionHandler:v40];
  _Block_release(v40);

  [v41 set:1 preconnect:?];
  [v41 resume];

  return (*(v45 + 8))(v35, v51);
}

uint64_t sub_1AB3743A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = sub_1AB45FFD4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v80 - v12;
  v14 = sub_1AB45FF84();
  v83 = *(v14 - 8);
  v84 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v80 - v18;
  v82 = v7;
  if (a4)
  {
    v81 = v8;
    v20 = a4;
    if (qword_1EB435688 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v21 = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v22 = swift_allocObject();
    v80 = xmmword_1AB4D4720;
    *(v22 + 16) = xmmword_1AB4D4720;
    v93 = sub_1AB0168A8(0, 70, 0, MEMORY[0x1E69E7CC0]);
    v23._object = 0x80000001AB50BB50;
    v23._countAndFlagsBits = 0xD00000000000003CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    v24 = sub_1AB45F764();
    v92 = v24;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v91);
    (*(*(v24 - 8) + 16))(boxed_opaque_existential_0, a5, v24);
    sub_1AB01522C(v91, v87);
    v88 = 0u;
    v89 = 0u;
    sub_1AB0169C4(v87, &v88);
    v90 = 0;
    v26 = v93;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
    }

    v28 = *(v26 + 2);
    v27 = *(v26 + 3);
    if (v28 >= v27 >> 1)
    {
      v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
    }

    *(v26 + 2) = v28 + 1;
    v29 = &v26[40 * v28];
    v30 = v88;
    v31 = v89;
    v29[64] = v90;
    *(v29 + 2) = v30;
    *(v29 + 3) = v31;
    v93 = v26;
    sub_1AB0167A8(v91);
    v32._countAndFlagsBits = 0x203A726F72726520;
    v32._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v32);
    swift_getErrorValue();
    v33 = v85;
    v34 = v86;
    v92 = v86;
    v35 = __swift_allocate_boxed_opaque_existential_0(v91);
    (*(*(v34 - 8) + 16))(v35, v33, v34);
    sub_1AB01522C(v91, v87);
    v88 = 0u;
    v89 = 0u;
    sub_1AB0169C4(v87, &v88);
    v90 = 0;
    v36 = v93;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_1AB0168A8(0, *(v36 + 2) + 1, 1, v36);
      v93 = v36;
    }

    v38 = *(v36 + 2);
    v37 = *(v36 + 3);
    if (v38 >= v37 >> 1)
    {
      v36 = sub_1AB0168A8((v37 > 1), v38 + 1, 1, v36);
    }

    *(v36 + 2) = v38 + 1;
    v39 = &v36[40 * v38];
    v40 = v88;
    v41 = v89;
    v39[64] = v90;
    *(v39 + 2) = v40;
    *(v39 + 3) = v41;
    v93 = v36;
    sub_1AB0167A8(v91);
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v42);
    *(v22 + 32) = v93;
    v43 = sub_1AB461094();
    if (os_log_type_enabled(v21, v43))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v44 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v44[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v44 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v46 = swift_allocObject();
      *(v46 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v88 = v22;
      *(&v88 + 1) = sub_1AB01A8D8;
      *&v89 = v46;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v47 = sub_1AB460484();
      v49 = v48;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v50 = swift_allocObject();
      *(v50 + 16) = v80;
      *(v50 + 56) = MEMORY[0x1E69E6158];
      *(v50 + 64) = sub_1AB016854();
      *(v50 + 32) = v47;
      *(v50 + 40) = v49;
      sub_1AB45FF14();
    }

    else
    {
    }

    if (qword_1EB434730 != -1)
    {
      swift_once();
    }

    v69 = sub_1AB45FFC4();
    __swift_project_value_buffer(v69, qword_1EB434738);
    v70 = sub_1AB45FFA4();
    sub_1AB45FFF4();
    v71 = sub_1AB461224();
    if (sub_1AB461314())
    {

      sub_1AB460024();

      v72 = v81;
      v73 = v82;
      if ((*(v81 + 88))(v13, v82) == *MEMORY[0x1E69E93E8])
      {
        v74 = "[Error] Interval already ended";
      }

      else
      {
        (*(v72 + 8))(v13, v73);
        v74 = "success=false";
      }

      v75 = swift_slowAlloc();
      *v75 = 0;
      v76 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v70, v71, v76, "Preconnect", v74, v75, 2u);
      MEMORY[0x1AC59F020](v75, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v51 = v8;
    if (qword_1EB435688 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v52 = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1AB4D4720;
    v93 = sub_1AB0168A8(0, 63, 0, MEMORY[0x1E69E7CC0]);
    v54._countAndFlagsBits = 0xD00000000000003ELL;
    v54._object = 0x80000001AB50BB10;
    LogMessage.StringInterpolation.appendLiteral(_:)(v54);
    v55 = sub_1AB45F764();
    v92 = v55;
    v56 = __swift_allocate_boxed_opaque_existential_0(v91);
    (*(*(v55 - 8) + 16))(v56, a5, v55);
    sub_1AB01522C(v91, v87);
    v88 = 0u;
    v89 = 0u;
    sub_1AB0169C4(v87, &v88);
    v90 = 0;
    v57 = v93;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = sub_1AB0168A8(0, *(v57 + 2) + 1, 1, v57);
    }

    v59 = *(v57 + 2);
    v58 = *(v57 + 3);
    if (v59 >= v58 >> 1)
    {
      v57 = sub_1AB0168A8((v58 > 1), v59 + 1, 1, v57);
    }

    *(v57 + 2) = v59 + 1;
    v60 = &v57[40 * v59];
    v61 = v88;
    v62 = v89;
    v60[64] = v90;
    *(v60 + 2) = v61;
    *(v60 + 3) = v62;
    v93 = v57;
    sub_1AB0167A8(v91);
    v63._countAndFlagsBits = 0;
    v63._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v63);
    *(v53 + 32) = v93;
    *&v88 = v52;
    LOBYTE(v91[0]) = 3;
    OSLogger.log(contentsOf:withLevel:)(v53, v91);

    if (qword_1EB434730 != -1)
    {
      swift_once();
    }

    v64 = sub_1AB45FFC4();
    __swift_project_value_buffer(v64, qword_1EB434738);
    v65 = sub_1AB45FFA4();
    sub_1AB45FFF4();
    v66 = sub_1AB461224();
    if (sub_1AB461314())
    {

      sub_1AB460024();

      v67 = v82;
      if ((*(v51 + 88))(v10, v82) == *MEMORY[0x1E69E93E8])
      {
        v68 = "[Error] Interval already ended";
      }

      else
      {
        (*(v51 + 8))(v10, v67);
        v68 = "success=true";
      }

      v77 = swift_slowAlloc();
      *v77 = 0;
      v78 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v65, v66, v78, "Preconnect", v68, v77, 2u);
      MEMORY[0x1AC59F020](v77, -1, -1);
    }

    v16 = v19;
  }

  return (*(v83 + 8))(v16, v84);
}

uint64_t URLSessionPreconnecter.preconnect(bag:key:)(uint64_t *a1, void *a2)
{
  v5 = sub_1AB4601B4();
  v57 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AB4601F4();
  v8 = *(v7 - 8);
  v62 = v7;
  v63 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB4601C4();
  v58 = *(v10 - 8);
  v59 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AB45FF84();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  v60 = *a1;
  v20 = *v2;
  v19 = *(v2 + 8);
  if (qword_1EB434730 != -1)
  {
    swift_once();
  }

  v21 = sub_1AB45FFC4();
  __swift_project_value_buffer(v21, qword_1EB434738);
  sub_1AB45FFA4();
  sub_1AB45FF54();
  v22 = a2;
  v23 = sub_1AB45FFA4();
  v55 = sub_1AB461234();

  if (sub_1AB461314())
  {
    v24 = swift_slowAlloc();
    v53 = v19;
    v25 = v24;
    v26 = swift_slowAlloc();
    v54 = v5;
    v52 = v26;
    aBlock[0] = v26;
    *v25 = 136315138;
    v27 = sub_1AB460544();
    v29 = v18;
    v30 = v13;
    v31 = v22;
    v32 = v15;
    v33 = v20;
    v34 = v12;
    v35 = sub_1AB030D2C(v27, v28, aBlock);

    *(v25 + 4) = v35;
    v12 = v34;
    v20 = v33;
    v15 = v32;
    v22 = v31;
    v13 = v30;
    v18 = v29;
    v36 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v23, v55, v36, "PreconnectBag", "key=%s", v25, 0xCu);
    v37 = v52;
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    v5 = v54;
    MEMORY[0x1AC59F020](v37, -1, -1);
    v38 = v25;
    v19 = v53;
    MEMORY[0x1AC59F020](v38, -1, -1);
  }

  (*(v13 + 16))(v15, v18, v12);
  sub_1AB460014();
  swift_allocObject();
  v39 = sub_1AB460004();
  (*(v13 + 8))(v18, v12);
  sub_1AB015664();
  v41 = v58;
  v40 = v59;
  v42 = v56;
  (*(v58 + 104))(v56, *MEMORY[0x1E69E7F90], v59);
  v43 = sub_1AB461164();
  (*(v41 + 8))(v42, v40);
  v44 = swift_allocObject();
  v44[2] = v60;
  v44[3] = v22;
  v44[4] = v20;
  v44[5] = v19;
  v44[6] = v39;
  aBlock[4] = sub_1AB376194;
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB01D528;
  aBlock[3] = &block_descriptor_6_4;
  v45 = _Block_copy(aBlock);
  v46 = v22;
  swift_unknownObjectRetain();
  v47 = v20;

  v48 = v61;
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v65 = MEMORY[0x1E69E7CC0];
  sub_1AB016500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
  sub_1AB01561C(&qword_1ED4D1FB0, &qword_1EB438540);
  v49 = v64;
  sub_1AB4614E4();
  MEMORY[0x1AC59C480](0, v48, v49, v45);
  _Block_release(v45);

  (*(v57 + 8))(v49, v5);
  (*(v63 + 8))(v48, v62);
}

uint64_t sub_1AB3754AC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_1AB460BE4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;
  v14[7] = a4;
  v14[8] = a5;
  swift_unknownObjectRetain();
  v15 = a2;
  v16 = a3;

  sub_1AB2313A4(0, 0, v12, &unk_1AB4EEB28, v14);
}

uint64_t sub_1AB3755F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  v9 = sub_1AB45FFD4();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  v10 = sub_1AB45FF84();
  v8[15] = v10;
  v8[16] = *(v10 - 8);
  v8[17] = swift_task_alloc();
  v11 = sub_1AB45F764();
  v8[18] = v11;
  v8[19] = *(v11 - 8);
  v8[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB375778, 0, 0);
}

uint64_t sub_1AB375778()
{
  v37 = v0;
  v1 = sub_1AB428C48(*(v0 + 56), *(v0 + 64));
  if (v1)
  {
    v2 = v1;
    if (qword_1EB435688 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v3 = *(v0 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1AB4D4720;
    *(v0 + 40) = MEMORY[0x1E69E6158];
    *(v0 + 16) = 0xD000000000000044;
    *(v0 + 24) = 0x80000001AB50BAC0;
    *(v5 + 48) = 0u;
    *(v5 + 32) = 0u;
    sub_1AB0169C4(v0 + 16, v5 + 32);
    *(v5 + 64) = 0;
    *(v4 + 32) = v5;
    v36 = 3;
    OSLogger.log(contentsOf:withLevel:)(v4, &v36);

    v6 = *(v2 + 16);
    if (v6)
    {
      v7 = *(v0 + 152);
      v10 = *(v7 + 16);
      v8 = v7 + 16;
      v9 = v10;
      v11 = v2 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
      v12 = *(v8 + 56);
      do
      {
        v13 = *(v0 + 160);
        v14 = *(v0 + 144);
        v9(v13, v11, v14);
        URLSessionPreconnecter.preconnect(to:)(v13);
        (*(v8 - 8))(v13, v14);
        v11 += v12;
        --v6;
      }

      while (v6);
    }

    if (qword_1EB434730 != -1)
    {
      swift_once();
    }

    v15 = sub_1AB45FFC4();
    __swift_project_value_buffer(v15, qword_1EB434738);
    v16 = sub_1AB45FFA4();
    sub_1AB45FFF4();
    v17 = sub_1AB461224();
    if (sub_1AB461314())
    {
      v19 = *(v0 + 104);
      v18 = *(v0 + 112);
      v20 = *(v0 + 96);

      sub_1AB460024();

      if ((*(v19 + 88))(v18, v20) == *MEMORY[0x1E69E93E8])
      {
        v21 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
        v21 = "";
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v16, v17, v27, "PreconnectBag", v21, v26, 2u);
      MEMORY[0x1AC59F020](v26, -1, -1);
    }

    v29 = *(v0 + 128);
    v28 = *(v0 + 136);
    v30 = *(v0 + 120);
    v31 = *(v0 + 80);

    (*(v29 + 8))(v28, v30);
    os_unfair_lock_lock((v31 + 32));
    v32 = *(v31 + 16);
    v33 = *(v31 + 24);
    if (v32)
    {

      v32(v34);
      sub_1AB0177B8(v32);
    }

    *(v31 + 16) = v32;
    *(v31 + 24) = v33;
    os_unfair_lock_unlock((v31 + 32));

    v35 = *(v0 + 8);

    return v35();
  }

  else
  {
    v22 = [*(v0 + 56) arrayForKey_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4386D8);
    v23 = swift_allocObject();
    *(v0 + 168) = v23;
    v23[2] = v22;
    v23[3] = sub_1AB3E0724;
    v23[4] = 0;
    v24 = swift_task_alloc();
    *(v0 + 176) = v24;
    *v24 = v0;
    v24[1] = sub_1AB375C60;

    return sub_1AB096FE8(v23);
  }
}

uint64_t sub_1AB375C60(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1AB375D80, 0, 0);
}

uint64_t sub_1AB375D80()
{
  if (v0[23] && (v1 = sub_1AB3B28D4(v0[23]), , v1) && (v2 = v0[8], v3 = sub_1AB24FAF4(v1), , v4 = sub_1AB4285C4(v3, v2), , v4))
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
    v5 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  v6 = v0[19];
  v9 = *(v6 + 16);
  v7 = v6 + 16;
  v8 = v9;
  v10 = v4 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
  v11 = *(v7 + 56);
  do
  {
    v12 = v0[20];
    v13 = v0[18];
    v8(v12, v10, v13);
    URLSessionPreconnecter.preconnect(to:)(v12);
    (*(v7 - 8))(v12, v13);
    v10 += v11;
    --v5;
  }

  while (v5);
LABEL_9:

  if (qword_1EB434730 != -1)
  {
    swift_once();
  }

  v14 = sub_1AB45FFC4();
  __swift_project_value_buffer(v14, qword_1EB434738);
  v15 = sub_1AB45FFA4();
  sub_1AB45FFF4();
  v16 = sub_1AB461224();
  if (sub_1AB461314())
  {
    v18 = v0[13];
    v17 = v0[14];
    v19 = v0[12];

    sub_1AB460024();

    if ((*(v18 + 88))(v17, v19) == *MEMORY[0x1E69E93E8])
    {
      v20 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[13] + 8))(v0[14], v0[12]);
      v20 = "";
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v15, v16, v22, "PreconnectBag", v20, v21, 2u);
    MEMORY[0x1AC59F020](v21, -1, -1);
  }

  v24 = v0[16];
  v23 = v0[17];
  v25 = v0[15];
  v26 = v0[10];

  (*(v24 + 8))(v23, v25);
  os_unfair_lock_lock((v26 + 32));
  v27 = *(v26 + 16);
  v28 = *(v26 + 24);
  if (v27)
  {

    v27(v29);
    sub_1AB0177B8(v27);
  }

  *(v26 + 16) = v27;
  *(v26 + 24) = v28;
  os_unfair_lock_unlock((v26 + 32));

  v30 = v0[1];

  return v30();
}

uint64_t sub_1AB3760D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(sub_1AB45F764() - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_1AB3743A8(a1, a2, a3, a4, v10);
}

uint64_t sub_1AB3761C8(uint64_t a1)
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
  v11[1] = sub_1AB027460;

  return sub_1AB3755F8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AB3762A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB376314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = sub_1AB461354();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  v10 = *(v3 + 8);
  if (v10 == sub_1AB4609F4())
  {
    v11 = *(v5 - 8);
    return (*(v11 + 56))(a2, 1, 1, v5);
  }

  else
  {
    v17 = a2;
    v12 = (v7 + 8);
    while (1)
    {
      sub_1AB460AC4();
      v11 = *(v5 - 8);
      if ((*(v11 + 48))(v9, 1, v5) != 1)
      {
        break;
      }

      (*v12)(v9, v6);
      sub_1AB376540(v3);
      v13 = *(v3 + 8);
      if (v13 == sub_1AB4609F4())
      {
        a2 = v17;
        return (*(v11 + 56))(a2, 1, 1, v5);
      }
    }

    v15 = v17;
    (*(v11 + 32))(v17, v9, v5);
    (*(v11 + 56))(v15, 0, 1, v5);
    return sub_1AB376540(v3);
  }
}

uint64_t sub_1AB376540(uint64_t result)
{
  v1 = *(result + 16);
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    sub_1AB461354();

    v4 = sub_1AB4609F4();

    v5 = 0;
    if (v2 < v4)
    {
      v6 = *(v3 + 16);
      v7 = __OFADD__(v6, 1);
      v5 = v6 + 1;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    *(v3 + 16) = v5;
    v8 = *(v3 + 8);
    v7 = __OFADD__(v8, 1);
    v9 = v8 + 1;
    if (!v7)
    {
      *(v3 + 8) = v9;
      return result;
    }
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1AB376608@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1AB3765DC();
  v4 = v3;
  v6 = v5;

  *a1 = v2;
  a1[1] = v4;
  a1[2] = v6;
  return result;
}

uint64_t sub_1AB376660(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AB37669C(v2, a1, a2);

  return v3;
}

uint64_t sub_1AB3766A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t DeepLink.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DeepLink();
  v5 = (a2 + v4[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4[6]);
  *v6 = 0u;
  v6[1] = 0u;
  v7 = (a2 + v4[7]);
  v8 = sub_1AB45F764();
  *v7 = 0;
  v7[1] = 0;
  v9 = *(*(v8 - 8) + 32);

  return v9(a2, a1, v8);
}

uint64_t type metadata accessor for DeepLink()
{
  result = qword_1EB43B8F0;
  if (!qword_1EB43B8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeepLink.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AB45F764();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DeepLink.url.setter(uint64_t a1)
{
  v3 = sub_1AB45F764();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DeepLink.sourceApplication.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeepLink() + 20));

  return v1;
}

uint64_t DeepLink.sourceApplication.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DeepLink() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DeepLink.annotation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DeepLink() + 24);

  return sub_1AB01522C(v3, a1);
}

uint64_t DeepLink.annotation.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DeepLink() + 24);

  return sub_1AB0169C4(a1, v3);
}

uint64_t DeepLink.sourceProcess.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeepLink() + 28));

  return v1;
}

uint64_t DeepLink.sourceProcess.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DeepLink() + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DeepLink.referrerURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AB45F764();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for DeepLink();
  sub_1AB01522C(v1 + *(v7 + 24), v16);
  if (!v17)
  {
    sub_1AB0167A8(v16);
    return (*(v4 + 56))(a1, 1, 1, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return (*(v4 + 56))(a1, 1, 1, v3);
  }

  v8 = *&v15[0];
  *&v15[0] = sub_1AB460544();
  *(&v15[0] + 1) = v9;
  sub_1AB461564();
  if (*(v8 + 16) && (v10 = sub_1AB02B1D8(v16), (v11 & 1) != 0))
  {
    sub_1AB0165C4(*(v8 + 56) + 32 * v10, v15);
    sub_1AB02B2E4(v16);

    sub_1AB01522C(v15, v14);
    if (swift_dynamicCast())
    {
      (*(v4 + 32))(a1, v6, v3);
      (*(v4 + 56))(a1, 0, 1, v3);
LABEL_13:
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      return sub_1AB0167A8(v15);
    }

    if (swift_dynamicCast())
    {
      sub_1AB45F714();

      goto LABEL_13;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {

    sub_1AB02B2E4(v16);
    memset(v15, 0, sizeof(v15));
  }

  (*(v4 + 56))(a1, 1, 1, v3);
  return sub_1AB0167A8(v15);
}

void sub_1AB376E14()
{
  sub_1AB45F764();
  if (v0 <= 0x3F)
  {
    sub_1AB0559D8(319, &qword_1EB4359F0);
    if (v1 <= 0x3F)
    {
      sub_1AB0559D8(319, &qword_1EB43B900);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

id static PipelinePhase<>.rateLimitOnFailure(on:using:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a1;
  PipelinePhase.init(mapTask:)(sub_1AB37736C, v9, a5);
  swift_unknownObjectRetain();

  return a1;
}

char *sub_1AB376F80(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v30 = a4;
  v33 = sub_1AB4601B4();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1AB4601F4();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB460214();
  v29 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v17 = *a1;
  type metadata accessor for Promise();
  v18 = Promise.__allocating_init()();
  ObjectType = swift_getObjectType();
  (*(a3 + 8))(ObjectType, a3);
  sub_1AB460204();
  sub_1AB460234();
  v28 = *(v11 + 8);
  v28(v13, v10);
  v20 = swift_allocObject();
  v20[2] = v17;
  v20[3] = a2;
  v20[4] = a3;
  v20[5] = v18;
  v21 = v30;
  v20[6] = v30;
  aBlock[4] = sub_1AB377490;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB01D528;
  aBlock[3] = &block_descriptor_39;
  v22 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  v23 = v18;

  v21;
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1AB016500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
  sub_1AB01649C();
  v24 = v31;
  v25 = v33;
  sub_1AB4614E4();
  MEMORY[0x1AC59C430](v16, v9, v24, v22);
  _Block_release(v22);
  (*(v35 + 8))(v24, v25);
  (*(v32 + 8))(v9, v34);
  v28(v16, v29);

  return v23;
}

uint64_t sub_1AB377378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for AnyPipelineTask();
  AnyPipelineTask.run()();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v12[3] = sub_1AB015664();
  v12[4] = &protocol witness table for OS_dispatch_queue;
  v12[0] = a5;
  swift_retain_n();
  swift_unknownObjectRetain();
  v10 = a5;
  Promise.then(perform:orCatchError:on:)(sub_1AB3774A0, v9, j___s9JetEngine7PromiseC6rejectyys5Error_pF_0, a4, v12);

  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

void sub_1AB3774A0(uint64_t a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v3 + 16))(ObjectType, v3);
  Promise.resolve(_:)(a1);
}

unint64_t JSONError.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v3 >> 61;
  if ((v3 >> 61) > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        v28 = 0;
        sub_1AB4615D4();
        MEMORY[0x1AC59BA20](0xD00000000000002CLL, 0x80000001AB50BC00);
        v17 = sub_1AB462314();
        MEMORY[0x1AC59BA20](v17);

        v7 = "presenting polymorphic type ";
        v8 = 0xD000000000000015;
        goto LABEL_13;
      }

      if (v5 == 4)
      {
        v28 = 0;
        sub_1AB4615D4();
        MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB50BBB0);
        v6 = sub_1AB462314();
        MEMORY[0x1AC59BA20](v6);

        v7 = "presenting enum-like type ";
        v8 = 0xD000000000000012;
LABEL_13:
        MEMORY[0x1AC59BA20](v8, v7 | 0x8000000000000000);
        MEMORY[0x1AC59BA20](v1, v2);
        v10 = 46;
        v11 = 0xE100000000000000;
        goto LABEL_14;
      }

LABEL_18:
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB50BB90);
      sub_1AB461824();
      return 0;
    }

    v12 = *(v4 + 16);
    if (v12)
    {
      if (v12 == 1)
      {
        v13 = *(v4 + 32);
        swift_getErrorValue();
        v14 = v13;
        v12 = sub_1AB462024();
        v16 = v15;
      }

      else
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437EE8);
        sub_1AB1BA140();
        v12 = sub_1AB460484();
        v16 = v22;
      }
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v28 = 0;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD00000000000001BLL, 0x80000001AB50BC50);
    v23 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v23);

    MEMORY[0x1AC59BA20](0xD00000000000001CLL, 0x80000001AB50BC70);
    MEMORY[0x1AC59BA20](v1, v2);
    v24 = 2109024;
    v25 = 0xE300000000000000;
LABEL_25:
    MEMORY[0x1AC59BA20](v24, v25);
    MEMORY[0x1AC59BA20](v12, v16);

    return v28;
  }

  if (!v5)
  {
    v12 = v2[2];
    if (v12)
    {
      if (v12 == 1)
      {
        v18 = v2[4];
        swift_getErrorValue();
        v19 = v18;
        v12 = sub_1AB462024();
        v16 = v20;
      }

      else
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437EE8);
        sub_1AB1BA140();
        v12 = sub_1AB460484();
        v16 = v26;
        sub_1AB35BB28(v1, v2, v3);
      }
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    sub_1AB4615D4();

    v28 = 0xD00000000000001BLL;
    v27 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v27);

    v24 = 0x666C616D20736920;
    v25 = 0xEF202E64656D726FLL;
    goto LABEL_25;
  }

  if (v5 != 1)
  {
    goto LABEL_18;
  }

  v28 = 0;
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD00000000000001BLL, 0x80000001AB50BC50);
  v9 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v9);

  MEMORY[0x1AC59BA20](0xD00000000000001FLL, 0x80000001AB50BC90);
  MEMORY[0x1AC59BA20](v1, v2);
  v10 = 11872;
  v11 = 0xE200000000000000;
LABEL_14:
  MEMORY[0x1AC59BA20](v10, v11);
  return v28;
}

uint64_t sub_1AB377A7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 32))
  {
    return (*a1 + 121);
  }

  v3 = (((*(a1 + 16) >> 57) >> 4) | (8 * ((*(a1 + 16) >> 57) & 8 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x78)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AB377AD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 121;
    *(result + 8) = 0;
    if (a3 >= 0x79)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t SilverBulletJetPackAssetRequest.Environment.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SilverBulletJetPackAssetRequest.Environment.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void __swiftcall SilverBulletJetPackAssetRequest.init(environment:path:sourcePolicy:)(JetEngine::SilverBulletJetPackAssetRequest *__return_ptr retstr, JetEngine::SilverBulletJetPackAssetRequest::Environment environment, Swift::String path, JetEngine::JetPackAssetRequestSourcePolicy sourcePolicy)
{
  v4 = *(environment.rawValue._countAndFlagsBits + 8);
  v5 = *path._object;
  retstr->environment.rawValue._countAndFlagsBits = *environment.rawValue._countAndFlagsBits;
  retstr->environment.rawValue._object = v4;
  retstr->path._countAndFlagsBits = environment.rawValue._object;
  retstr->path._object = path._countAndFlagsBits;
  retstr->_sourcePolicy = v5;
}

uint64_t SilverBulletJetPackAssetRequest._cacheKey.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x1AC59BA20](45, 0xE100000000000000);
  MEMORY[0x1AC59BA20](v1, v2);
  return v4;
}

uint64_t SilverBulletJetPackAssetRequest.hash(into:)()
{
  sub_1AB460684();
  sub_1AB460684();
  sub_1AB460684();
}

uint64_t SilverBulletJetPackAssetRequest.hashValue.getter()
{
  sub_1AB4620A4();
  sub_1AB460684();
  sub_1AB460684();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB377DF0()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x1AC59BA20](45, 0xE100000000000000);
  MEMORY[0x1AC59BA20](v1, v2);
  return v4;
}

uint64_t sub_1AB377E60()
{
  sub_1AB460684();
  sub_1AB460684();
  sub_1AB460684();
}

uint64_t sub_1AB377F24()
{
  sub_1AB4620A4();
  sub_1AB460684();
  sub_1AB460684();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t _s9JetEngine012SilverBulletA16PackAssetRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_1AB461DA4()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_1AB461DA4()))
  {
    v10 = 0x6E4F65746F6D6572;
    v11 = 0xEA0000000000796CLL;
    if (v4 != 1)
    {
      v10 = 0x6C6E4F6C61636F6CLL;
      v11 = 0xE900000000000079;
    }

    if (v4)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0x647261646E617473;
    }

    if (v4)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0xE800000000000000;
    }

    v14 = 0x6E4F65746F6D6572;
    v15 = 0xEA0000000000796CLL;
    if (v7 != 1)
    {
      v14 = 0x6C6E4F6C61636F6CLL;
      v15 = 0xE900000000000079;
    }

    if (v7)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0x647261646E617473;
    }

    if (v7)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0xE800000000000000;
    }

    if (v12 == v16 && v13 == v17)
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_1AB461DA4();
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

unint64_t sub_1AB378170()
{
  result = qword_1EB43B908;
  if (!qword_1EB43B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B908);
  }

  return result;
}

unint64_t sub_1AB3781C4(uint64_t a1)
{
  result = sub_1AB28DDB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AB3781F0()
{
  result = qword_1EB43B910;
  if (!qword_1EB43B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B910);
  }

  return result;
}

uint64_t sub_1AB378244(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1AB37828C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB3782F0(uint64_t a1)
{
  v32 = sub_1AB45F2C4();
  v3 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v30 = v5;
  v25 = v1;
  v35 = MEMORY[0x1E69E7CC0];
  sub_1AB177A80(0, v6, 0);
  v7 = v35;
  v8 = a1 + 64;
  result = sub_1AB4614F4();
  v10 = result;
  v11 = 0;
  v34 = *(a1 + 36);
  v28 = a1 + 64;
  v29 = v3 + 32;
  v26 = a1 + 72;
  v27 = v6;
  v31 = v3;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v33 = v11;
    v14 = a1;

    v15 = v30;
    sub_1AB45F294();

    v35 = v7;
    v17 = *(v7 + 16);
    v16 = *(v7 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1AB177A80(v16 > 1, v17 + 1, 1);
      v7 = v35;
    }

    *(v7 + 16) = v17 + 1;
    result = (*(v31 + 32))(v7 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v17, v15, v32);
    v12 = 1 << *(v14 + 32);
    if (v10 >= v12)
    {
      goto LABEL_25;
    }

    v8 = v28;
    v18 = *(v28 + 8 * v13);
    if ((v18 & (1 << v10)) == 0)
    {
      goto LABEL_26;
    }

    a1 = v14;
    if (v34 != *(v14 + 36))
    {
      goto LABEL_27;
    }

    v19 = v18 & (-2 << (v10 & 0x3F));
    if (v19)
    {
      v12 = __clz(__rbit64(v19)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v13 << 6;
      v21 = v13 + 1;
      v22 = (v26 + 8 * v13);
      while (v21 < (v12 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_1AB031480(v10, v34, 0);
          v12 = __clz(__rbit64(v23)) + v20;
          goto LABEL_20;
        }
      }

      result = sub_1AB031480(v10, v34, 0);
LABEL_20:
      a1 = v14;
    }

    v11 = v33 + 1;
    v10 = v12;
    if (v33 + 1 == v27)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t Models.HTTPTemplateAction.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t Models.HTTPTemplateAction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = type metadata accessor for Models.HTTPTemplateAction();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for NetRequest();
  MEMORY[0x1EEE9AC00](v31);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = *a2;
  JSONObject.subscript.getter(0x654D6E6F69746361, 0xED00007363697274, &v43);

  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v41);

  v36 = sub_1AB37F7F4(v41, v13);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v41);
  v45 = v13;
  ScalarDictionary.init(tryDeserializing:using:)(v41, &v45, v37);
  sub_1AB066D84(&v43);
  v34 = *&v37[0];
  JSONObject.subscript.getter(0x6574656D61726170, 0xEA00000000007372, &v43);

  v33 = sub_1AB37F914(&v43, v13);
  v14 = _s9JetEngine26AppleServicesPropertyScopeV13allPropertiesSayAA010NetRequestE0_pXpGvgZ_0();
  v45 = v14;
  v15 = sub_1AB3D8AA4(0xD00000000000001FLL, 0x80000001AB4FF9A0, v13);
  if (v15)
  {
    sub_1AB164A38(v15);
    v14 = v45;
  }

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B80);
  *&v43 = v14;
  sub_1AB014B78(&v43, v41);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = v13;
  sub_1AB01AE18(v41, 0xD00000000000001FLL, 0x80000001AB4FF9A0, isUniquelyReferenced_nonNull_native);

  JSONObject.subscript.getter(0x74736575716572, 0xE700000000000000, &v43);
  v17 = v35;
  NetRequest.init(deserializing:using:)(&v43, &v40, v12);
  if (v17)
  {
    sub_1AB066D84(a1);
  }

  else
  {
    JSONObject.subscript.getter(0x4173736563637573, 0xED00006E6F697463, &v43);
    *&v37[0] = v13;
    static AnyActionTypes.tryToMakeInstance(byDeserializing:using:)(&v43, v37, v41);
    sub_1AB066D84(&v43);
    JSONObject.subscript.getter(0x416572756C696166, 0xED00006E6F697463, &v43);
    v39 = v13;
    static AnyActionTypes.tryToMakeInstance(byDeserializing:using:)(&v43, &v39, v37);
    sub_1AB066D84(a1);
    sub_1AB066D84(&v43);

    sub_1AB37DACC(v12, v9, type metadata accessor for NetRequest);
    v19 = v33;
    v20 = v34;
    *v7 = v36;
    v7[1] = v20;
    v7[2] = v19;
    sub_1AB0B72A8(v9, v7 + v5[6]);
    v21 = &v9[*(v31 + 40)];
    v23 = *v21;
    v22 = *(v21 + 1);

    sub_1AB0B730C(v9);
    v24 = (v7 + v5[7]);
    if (v22)
    {
      *v24 = v23;
      v24[1] = v22;
      v25 = (v7 + v5[8]);
      *v25 = v23;
      v25[1] = v22;
    }

    else
    {
      *v24 = 0;
      v24[1] = 0;
      v26 = (v7 + v5[8]);
      *v26 = 0;
      v26[1] = 0;
    }

    v27 = v7 + v5[9];
    v28 = v41[1];
    *v27 = v41[0];
    *(v27 + 1) = v28;
    *(v27 + 4) = v42;
    v29 = v7 + v5[10];
    *(v29 + 4) = v38;
    v30 = v37[1];
    *v29 = v37[0];
    *(v29 + 1) = v30;
    sub_1AB37DACC(v7, v32, type metadata accessor for Models.HTTPTemplateAction);
  }
}

uint64_t type metadata accessor for Models.HTTPTemplateAction()
{
  result = qword_1EB432428;
  if (!qword_1EB432428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Models.HTTPTemplateAction.actionMetrics.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Models.HTTPTemplateAction.makeAction(with:actionMetrics:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = v3;
  v57 = a3;
  v54 = sub_1AB45F764();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v59 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for NetRequest();
  MEMORY[0x1EEE9AC00](v53);
  v66 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v12 = a1[3];
  v14 = a2[1];
  v55 = *a2;
  v56 = v14;
  v15 = *(v13 + 16);
  v58 = v11;
  v62 = v10;
  v63 = v11;
  v64 = v13;
  v65 = v12;
  v16 = v12;
  if (v15)
  {
    v17 = type metadata accessor for Models.HTTPTemplateAction();
    v18 = (v5 + v17[7]);
    v19 = v18[1];
    v60 = *v18;
    v61 = v19;

    sub_1AB378FB0(&v60);
  }

  else
  {
    v17 = type metadata accessor for Models.HTTPTemplateAction();
    v22 = (v5 + v17[8]);
    v23 = v22[1];
    v60 = *v22;
    v61 = v23;

    v20 = sub_1AB3792F0(&v60);
  }

  v24 = v20;
  v25 = v21;

  if (!v4)
  {
    v49 = v16;
    v50 = v10;
    v48 = v24;
    v51 = v25;
    type metadata accessor for Models.HTTPTemplateAction();
    v27 = v17;
    v28 = v17[6];
    v47 = v5;
    v29 = v5 + v28;
    sub_1AB0B72A8(v5 + v28, v66);
    v30 = v49;
    v31 = v50;
    v33 = v58;
    v32 = v59;
    v62 = v50;
    v63 = v58;
    v64 = v13;
    v65 = v49;
    sub_1AB37968C(v29, v59);
    v34 = *(v52 + 5);
    v52 = v27;
    v35 = v66;
    v34(v66, v32, v54);
    v62 = v31;
    v63 = v33;
    v64 = v13;
    v65 = v30;
    v36 = v53;
    v37 = sub_1AB379F38(*(v29 + *(v53 + 28)));
    v38 = *(v36 + 28);

    *(v35 + v38) = v37;
    v39 = (v35 + *(v36 + 40));

    v40 = v51;
    *v39 = v48;
    v39[1] = v40;
    v41 = type metadata accessor for Models.HTTPAction();
    v42 = v57;
    sub_1AB0B72A8(v35, v57 + v41[5]);
    v43 = v52;
    v44 = v47;
    sub_1AB014A58(v47 + v52[9], v42 + v41[6], &qword_1EB43A788);
    sub_1AB014A58(v44 + v43[10], v42 + v41[7], &qword_1EB43A788);
    v45 = v56;
    *v42 = v55;
    v42[1] = v45;

    return sub_1AB0B730C(v35);
  }

  return result;
}

void sub_1AB378FB0(void *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = sub_1AB4605C4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  if (v7)
  {
    v8 = *(v1 + 16);
    *&v42 = *a1;
    *(&v42 + 1) = v7;
    v9 = sub_1AB37A20C();
    if (!v2)
    {
      v34[1] = v6;
      v34[2] = 0;
      v35 = v9;
      v10 = 1 << *(v8 + 32);
      v11 = -1;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      v12 = v11 & *(v8 + 64);
      v13 = (v10 + 63) >> 6;

      v14 = 0;
      if (!v12)
      {
        goto LABEL_9;
      }

LABEL_8:
      v15 = v14;
LABEL_16:
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v19 = v18 | (v15 << 6);
      v20 = (*(v8 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      sub_1AB0165C4(*(v8 + 56) + 32 * v19, v38);
      *&v39 = v22;
      *(&v39 + 1) = v21;
      sub_1AB014B78(v38, &v40);

      v17 = v15;
      while (1)
      {
        v42 = v39;
        v43[0] = v40;
        v43[1] = v41;
        v23 = *(&v39 + 1);
        if (!*(&v39 + 1))
        {
          break;
        }

        v24 = v42;
        sub_1AB014B78(v43, &v39);
        *&v38[0] = v24;
        *(&v38[0] + 1) = v23;
        v36 = 46;
        v37 = 0xE100000000000000;
        sub_1AB0273A8();
        v25 = sub_1AB461404();

        sub_1AB37BCC8(&v39, v25);

        __swift_destroy_boxed_opaque_existential_1Tm(&v39);
        v14 = v17;
        if (v12)
        {
          goto LABEL_8;
        }

LABEL_9:
        if (v13 <= v14 + 1)
        {
          v16 = v14 + 1;
        }

        else
        {
          v16 = v13;
        }

        v17 = v16 - 1;
        while (1)
        {
          v15 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
          }

          if (v15 >= v13)
          {
            break;
          }

          v12 = *(v8 + 64 + 8 * v15);
          ++v14;
          if (v12)
          {
            goto LABEL_16;
          }
        }

        v12 = 0;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
      }

      v26 = objc_opt_self();
      *&v42 = 0;
      v27 = v35;
      v28 = [v26 dataWithJSONObject:v35 options:0 error:&v42];
      v29 = v42;
      if (v28)
      {
        v30 = sub_1AB45F854();
        v32 = v31;

        sub_1AB460594();
        sub_1AB460564();

        sub_1AB017254(v30, v32);
      }

      else
      {
        v33 = v29;
        sub_1AB45F594();

        swift_willThrow();
      }
    }
  }
}

uint64_t sub_1AB3792F0(uint64_t *a1)
{
  v3 = a1[1];
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 24);
  v56 = *a1;
  v57 = v3;
  result = sub_1AB37A594();
  if (!v2)
  {
    v6 = result;
    v7 = v4 + 64;
    v8 = 1 << *(v4 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v4 + 64);
    v11 = (v8 + 63) >> 6;

    v12 = 0;
    v53 = v4 + 64;
    v54 = v4;
    while (v10)
    {
      v15 = v12;
LABEL_15:
      v16 = (v15 << 10) | (16 * __clz(__rbit64(v10)));
      v17 = (*(v4 + 48) + v16);
      v19 = *v17;
      v18 = v17[1];
      v20 = (*(v4 + 56) + v16);
      v21 = v20[1];
      v59 = *v20;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v6;
      v23 = sub_1AB014DB4(v19, v18);
      v25 = *(v6 + 16);
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_37;
      }

      v29 = v24;
      if (*(v6 + 24) >= v28)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = v23;
          sub_1AB1D89D4();
          v23 = v35;
        }
      }

      else
      {
        sub_1AB1D3074(v28, isUniquelyReferenced_nonNull_native);
        v23 = sub_1AB014DB4(v19, v18);
        if ((v29 & 1) != (v30 & 1))
        {
          goto LABEL_39;
        }
      }

      v10 &= v10 - 1;
      if (v29)
      {
        v13 = v23;

        v6 = v56;
        v14 = (*(v56 + 56) + 16 * v13);
        *v14 = v59;
        v14[1] = v21;
      }

      else
      {
        v6 = v56;
        *(v56 + 8 * (v23 >> 6) + 64) |= 1 << v23;
        v31 = (*(v6 + 48) + 16 * v23);
        *v31 = v19;
        v31[1] = v18;
        v32 = (*(v6 + 56) + 16 * v23);
        *v32 = v59;
        v32[1] = v21;
        v33 = *(v6 + 16);
        v27 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v27)
        {
          goto LABEL_38;
        }

        *(v6 + 16) = v34;
      }

      v12 = v15;
      v7 = v53;
      v4 = v54;
    }

    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v11)
      {
        break;
      }

      v10 = *(v7 + 8 * v15);
      ++v12;
      if (v10)
      {
        goto LABEL_15;
      }
    }

    v36 = 1 << *(v6 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(v6 + 64);
    v39 = (v36 + 63) >> 6;

    v40 = 0;
    v59 = 0;
    for (i = 0xE000000000000000; v38; i = v52)
    {
      v42 = v40;
LABEL_32:
      v43 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
      v44 = (v42 << 10) | (16 * v43);
      v45 = (*(v6 + 48) + v44);
      v46 = *v45;
      v47 = v45[1];
      v48 = (*(v6 + 56) + v44);
      v49 = *v48;
      v50 = v48[1];
      v58 = MEMORY[0x1E69E6158];
      v56 = v46;
      v57 = v47;
      v55[3] = MEMORY[0x1E69E6158];
      v55[0] = v49;
      v55[1] = v50;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v59 = sub_1AB37BF48(v59, i, &v56, v55);
      v52 = v51;
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      __swift_destroy_boxed_opaque_existential_1Tm(&v56);
    }

    while (1)
    {
      v42 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v42 >= v39)
      {

        return v59;
      }

      v38 = *(v6 + 64 + 8 * v42);
      ++v40;
      if (v38)
      {
        v40 = v42;
        goto LABEL_32;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_1AB461FC4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AB37968C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v89 - v7;
  v9 = sub_1AB45F2C4();
  v106 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v105 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437570);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v89 - v12;
  v14 = sub_1AB45F3E4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v95 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *v2;
  if (!*(v97 + 16))
  {
    v19 = sub_1AB45F764();
    return (*(*(v19 - 8) + 16))(a2, a1, v19);
  }

  sub_1AB45F324();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1AB014AC0(v13, &qword_1EB437570);
    sub_1AB37EE74();
    swift_allocError();
    *v17 = 0;
    return swift_willThrow();
  }

  (*(v15 + 32))(v95, v13, v14);
  v20 = sub_1AB45F304();
  v93 = v8;
  v94 = v3;
  v90 = a2;
  v91 = v15;
  v92 = v14;
  if (!v20)
  {
    v23 = MEMORY[0x1E69E7CC8];
LABEL_31:
    v56 = (v97 + 64);
    v57 = 1 << *(v97 + 32);
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & *(v97 + 64);
    v60 = (v57 + 63) >> 6;

    v61 = 0;
    v104 = v60;
    v105 = v56;
    while (v59)
    {
      v64 = v61;
LABEL_41:
      v65 = (v64 << 10) | (16 * __clz(__rbit64(v59)));
      v66 = (*(v97 + 48) + v65);
      v68 = *v66;
      v67 = v66[1];
      v69 = (*(v97 + 56) + v65);
      v70 = v69[1];
      v106 = *v69;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107 = v23;
      v72 = sub_1AB014DB4(v68, v67);
      v74 = v23[2];
      v75 = (v73 & 1) == 0;
      v54 = __OFADD__(v74, v75);
      v76 = v74 + v75;
      if (v54)
      {
        goto LABEL_56;
      }

      v77 = v73;
      if (v23[3] >= v76)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v83 = v72;
          sub_1AB1D89D4();
          v72 = v83;
        }
      }

      else
      {
        sub_1AB1D3074(v76, isUniquelyReferenced_nonNull_native);
        v72 = sub_1AB014DB4(v68, v67);
        if ((v77 & 1) != (v78 & 1))
        {
          goto LABEL_59;
        }
      }

      v59 &= v59 - 1;
      if (v77)
      {
        v62 = v72;

        v23 = v107;
        v63 = (v107[7] + 16 * v62);
        *v63 = v106;
        v63[1] = v70;
      }

      else
      {
        v23 = v107;
        v107[(v72 >> 6) + 8] |= 1 << v72;
        v79 = (v23[6] + 16 * v72);
        *v79 = v68;
        v79[1] = v67;
        v80 = (v23[7] + 16 * v72);
        *v80 = v106;
        v80[1] = v70;
        v81 = v23[2];
        v54 = __OFADD__(v81, 1);
        v82 = v81 + 1;
        if (v54)
        {
          goto LABEL_58;
        }

        v23[2] = v82;
      }

      v61 = v64;
      v60 = v104;
      v56 = v105;
    }

    while (1)
    {
      v64 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        __break(1u);
        goto LABEL_54;
      }

      if (v64 >= v60)
      {
        break;
      }

      v59 = *&v56[8 * v64];
      ++v61;
      if (v59)
      {
        goto LABEL_41;
      }
    }

    sub_1AB3782F0(v23);

    v84 = v95;
    sub_1AB45F314();
    v85 = v93;
    sub_1AB45F334();
    v86 = sub_1AB45F764();
    v87 = *(v86 - 8);
    if ((*(v87 + 48))(v85, 1, v86) == 1)
    {
      sub_1AB014AC0(v85, &unk_1EB4395B0);
      sub_1AB37EE74();
      swift_allocError();
      *v88 = 0;
      swift_willThrow();
      return (*(v91 + 8))(v84, v92);
    }

    else
    {
      (*(v91 + 8))(v84, v92);
      return (*(v87 + 32))(v90, v85, v86);
    }
  }

  v21 = v20;
  v102 = *(v20 + 16);
  if (!v102)
  {
    v23 = MEMORY[0x1E69E7CC8];
LABEL_30:

    goto LABEL_31;
  }

  v22 = 0;
  v100 = v20 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
  v98 = v106 + 8;
  v99 = v106 + 16;
  v23 = MEMORY[0x1E69E7CC8];
  v96 = v9;
  v101 = v20;
  while (v22 < *(v21 + 16))
  {
    v25 = v23;
    v26 = v105;
    v27 = v106;
    (*(v106 + 16))(v105, v100 + *(v106 + 72) * v22, v9);
    v28 = sub_1AB45F2A4();
    v30 = v29;
    v31 = sub_1AB45F2B4();
    v33 = v32;
    (*(v27 + 8))(v26, v9);
    if (!v33)
    {
      v47 = sub_1AB014DB4(v28, v30);
      v49 = v48;

      if (v49)
      {
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v107 = v25;
        v23 = v25;
        if (!v50)
        {
          sub_1AB1D89D4();
          v23 = v107;
        }

        sub_1AB1901CC(v47, v23);
        v21 = v101;
      }

      else
      {
        v23 = v25;
        v21 = v101;
      }

      goto LABEL_10;
    }

    v103 = v33;
    v104 = v31;
    v21 = v101;
    v34 = v25;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v25;
    v36 = v28;
    v38 = sub_1AB014DB4(v28, v30);
    v39 = v34[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_55;
    }

    v42 = v37;
    if (v34[3] >= v41)
    {
      if ((v35 & 1) == 0)
      {
        sub_1AB1D89D4();
      }

      v43 = v30;
      v46 = v103;
      if ((v42 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_1AB1D3074(v41, v35);
      v43 = v30;
      v44 = sub_1AB014DB4(v36, v30);
      if ((v42 & 1) != (v45 & 1))
      {
        goto LABEL_59;
      }

      v38 = v44;
      v46 = v103;
      if ((v42 & 1) == 0)
      {
LABEL_25:
        v23 = v107;
        v107[(v38 >> 6) + 8] |= 1 << v38;
        v51 = (v23[6] + 16 * v38);
        *v51 = v36;
        v51[1] = v43;
        v52 = (v23[7] + 16 * v38);
        *v52 = v104;
        v52[1] = v46;
        v53 = v23[2];
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          goto LABEL_57;
        }

        v23[2] = v55;
        goto LABEL_9;
      }
    }

    v23 = v107;
    v24 = (v107[7] + 16 * v38);
    *v24 = v104;
    v24[1] = v46;

LABEL_9:
    v9 = v96;
LABEL_10:
    if (v102 == ++v22)
    {
      goto LABEL_30;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

uint64_t sub_1AB379F38(void *a1)
{
  v3 = *(v1 + 8);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v35 = v3;

  v9 = 0;
  v34 = v4;
  while (v7)
  {
    v12 = v9;
LABEL_11:
    v13 = (v12 << 10) | (16 * __clz(__rbit64(v7)));
    v14 = (*(v35 + 48) + v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = (*(v35 + 56) + v13);
    v18 = v17[1];
    v36 = *v17;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_1AB014DB4(v16, v15);
    v22 = a1[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_22;
    }

    v26 = v21;
    if (a1[3] >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = v20;
        sub_1AB1D89D4();
        v20 = v32;
      }
    }

    else
    {
      sub_1AB1D3074(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_1AB014DB4(v16, v15);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_24;
      }
    }

    v7 &= v7 - 1;
    if (v26)
    {
      v10 = v20;

      v11 = (a1[7] + 16 * v10);
      *v11 = v36;
      v11[1] = v18;
    }

    else
    {
      a1[(v20 >> 6) + 8] |= 1 << v20;
      v28 = (a1[6] + 16 * v20);
      *v28 = v16;
      v28[1] = v15;
      v29 = (a1[7] + 16 * v20);
      *v29 = v36;
      v29[1] = v18;
      v30 = a1[2];
      v24 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v24)
      {
        goto LABEL_23;
      }

      a1[2] = v31;
    }

    v9 = v12;
    v4 = v34;
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return a1;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

unint64_t Models.HTTPTemplateAction.JSONBody.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AB4615D4();

  MEMORY[0x1AC59BA20](v1, v2);
  return 0xD000000000000015;
}

uint64_t sub_1AB37A20C()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = sub_1AB4605C4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB460594();
  v4 = sub_1AB460554();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    sub_1AB37EE74();
    swift_allocError();
    *v7 = 2;
    return swift_willThrow();
  }

  else
  {
    v9 = objc_opt_self();
    v10 = sub_1AB45F834();
    v16[0] = 0;
    v11 = [v9 JSONObjectWithData:v10 options:1 error:v16];

    v12 = v16[0];
    if (v11)
    {
      sub_1AB461494();
      swift_unknownObjectRelease();
      sub_1AB0165C4(v17, v16);
      sub_1AB37EE28();
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        sub_1AB03BD58(v4, v6);
        return v15;
      }

      else
      {
        sub_1AB37EE74();
        swift_allocError();
        *v14 = 1;
        swift_willThrow();
        sub_1AB03BD58(v4, v6);
        return __swift_destroy_boxed_opaque_existential_1Tm(v17);
      }
    }

    else
    {
      v13 = v12;
      sub_1AB45F594();

      swift_willThrow();
      return sub_1AB03BD58(v4, v6);
    }
  }
}

unint64_t sub_1AB37A49C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AB4615D4();

  MEMORY[0x1AC59BA20](v1, v2);
  return 0xD000000000000015;
}

unint64_t Models.HTTPTemplateAction.FormBody.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AB4615D4();

  MEMORY[0x1AC59BA20](v1, v2);
  return 0xD000000000000015;
}

uint64_t sub_1AB37A594()
{
  sub_1AB0273A8();
  v0 = sub_1AB461404();
  v1 = v0;
  v33 = *(v0 + 16);
  if (v33)
  {
    v2 = 0;
    v3 = v0 + 40;
    v4 = MEMORY[0x1E69E7CC8];
    v32 = v0;
    while (v2 < *(v1 + 16))
    {

      v6 = sub_1AB461404();
      if (v6[2] < 2uLL)
      {

        sub_1AB37EE74();
        swift_allocError();
        *v30 = 2;
        swift_willThrow();

        return v4;
      }

      v7 = v6[4];
      v8 = v6[5];

      v9 = sub_1AB461454();
      v11 = v10;

      if (v11)
      {
        v34 = v9;
        v35 = v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = sub_1AB014DB4(v7, v8);
        v15 = v4[2];
        v16 = (v13 & 1) == 0;
        v17 = v15 + v16;
        if (__OFADD__(v15, v16))
        {
          goto LABEL_28;
        }

        v18 = v13;
        if (v4[3] >= v17)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1AB1D89D4();
          }
        }

        else
        {
          sub_1AB1D3074(v17, isUniquelyReferenced_nonNull_native);
          v19 = sub_1AB014DB4(v7, v8);
          if ((v18 & 1) != (v20 & 1))
          {
            goto LABEL_30;
          }

          v14 = v19;
        }

        v1 = v32;
        v24 = v4;
        if (v18)
        {
          v5 = (v4[7] + 16 * v14);
          *v5 = v34;
          v5[1] = v35;
        }

        else
        {
          v4[(v14 >> 6) + 8] |= 1 << v14;
          v25 = (v4[6] + 16 * v14);
          *v25 = v7;
          v25[1] = v8;
          v26 = (v4[7] + 16 * v14);
          *v26 = v34;
          v26[1] = v35;
          v27 = v4[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            goto LABEL_29;
          }

          v4[2] = v29;
        }
      }

      else
      {
        v21 = sub_1AB014DB4(v7, v8);
        v23 = v22;

        if (v23)
        {
          v24 = v4;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1AB1D89D4();
            v24 = v4;
          }

          sub_1AB1901CC(v21, v24);

          v1 = v32;
        }

        else
        {

          v24 = v4;
          v1 = v32;
        }
      }

      ++v2;
      v3 += 16;
      v4 = v24;
      if (v33 == v2)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    result = sub_1AB461FC4();
    __break(1u);
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC8];
LABEL_24:

    return v24;
  }

  return result;
}

unint64_t sub_1AB37A9A0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AB4615D4();

  MEMORY[0x1AC59BA20](v1, v2);
  return 0xD000000000000015;
}

uint64_t Models.HTTPTemplateAction.Parameter.Target.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1AB4619B4();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t Models.HTTPTemplateAction.Parameter.Target.rawValue.getter()
{
  v1 = 0x79726575516C7275;
  v2 = 0x79646F426E6F736ALL;
  if (*v0 != 2)
  {
    v2 = 0x79646F426D726F66;
  }

  if (*v0)
  {
    v1 = 0x726564616568;
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

uint64_t sub_1AB37AAFC()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB37ABBC()
{
  sub_1AB460684();
}

uint64_t sub_1AB37AC68()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

void sub_1AB37AD30(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x79726575516C7275;
  v4 = 0x79646F426E6F736ALL;
  if (*v1 != 2)
  {
    v4 = 0x79646F426D726F66;
  }

  if (*v1)
  {
    v3 = 0x726564616568;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t Models.HTTPTemplateAction.Parameter.InputType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1AB4619B4();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t Models.HTTPTemplateAction.Parameter.InputType.rawValue.getter()
{
  v1 = 1954047348;
  v2 = 0x6D754E656E6F6870;
  if (*v0 != 2)
  {
    v2 = 0x506C616D69636564;
  }

  if (*v0)
  {
    v1 = 0x6C69616D65;
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

uint64_t sub_1AB37AE90()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB37AF54()
{
  sub_1AB460684();
}

uint64_t sub_1AB37B004()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

void sub_1AB37B0D0(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1954047348;
  v4 = 0xEB00000000726562;
  v5 = 0x6D754E656E6F6870;
  if (*v1 != 2)
  {
    v5 = 0x506C616D69636564;
    v4 = 0xEA00000000006461;
  }

  if (*v1)
  {
    v3 = 0x6C69616D65;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t Models.HTTPTemplateAction.Parameter.init(key:target:inputType:title:isRequired:maximumLength:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v10 = *a3;
  v11 = *a4;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = v10;
  *(a9 + 17) = v11;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10 & 1;
  return result;
}

uint64_t Models.HTTPTemplateAction.Parameter.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 7955819;

  JSONObject.subscript.getter(7955819, 0xE300000000000000, v45);
  sub_1AB014A58(v45, v42, &qword_1EB436BA0);
  v5 = v43;
  if (!v43)
  {
    sub_1AB066D84(v45);
    sub_1AB014AC0(v42, &qword_1EB436BA0);
    goto LABEL_12;
  }

  v6 = v44;
  __swift_project_boxed_opaque_existential_1Tm(v42, v43);
  v7 = (*(v6 + 24))(v5, v6);
  v9 = v8;
  sub_1AB066D84(v45);
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  if (!v9)
  {
LABEL_12:
    v15 = 0xE300000000000000;
LABEL_16:
    sub_1AB163664();
    swift_allocError();
    *v25 = v4;
    v25[1] = v15;
    v25[2] = 0x20000001F2010C20uLL;
    v25[3] = 0;
    swift_willThrow();
    return sub_1AB066D84(a1);
  }

  v4 = 0x746567726174;
  JSONObject.subscript.getter(0x746567726174, 0xE600000000000000, v45);
  sub_1AB014A58(v45, v42, &qword_1EB436BA0);
  v10 = v43;
  if (!v43)
  {
    sub_1AB066D84(v45);
    sub_1AB014AC0(v42, &qword_1EB436BA0);
    goto LABEL_15;
  }

  v11 = v44;
  __swift_project_boxed_opaque_existential_1Tm(v42, v43);
  (*(v11 + 24))(v10, v11);
  v13 = v12;
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  if (!v13 || (v14 = sub_1AB4619B4(), , v14 >= 4))
  {
    sub_1AB066D84(v45);
LABEL_15:

    v15 = 0xE600000000000000;
    goto LABEL_16;
  }

  v15 = 0xE900000000000065;
  sub_1AB066D84(v45);
  JSONObject.subscript.getter(0x7079547475706E69, 0xE900000000000065, v45);
  sub_1AB014A58(v45, v42, &qword_1EB436BA0);
  v16 = v43;
  if (!v43)
  {
    sub_1AB066D84(v45);
    sub_1AB014AC0(v42, &qword_1EB436BA0);
    goto LABEL_19;
  }

  v38 = v14;
  v17 = v44;
  __swift_project_boxed_opaque_existential_1Tm(v42, v43);
  (*(v17 + 24))(v16, v17);
  v19 = v18;
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  if (!v19 || (v20 = sub_1AB4619B4(), , v20 >= 4))
  {
    sub_1AB066D84(v45);
LABEL_19:

    v4 = 0x7059547475706E69;
    goto LABEL_16;
  }

  v35 = v20;
  sub_1AB066D84(v45);
  JSONObject.subscript.getter(0x656C746974, 0xE500000000000000, v45);
  sub_1AB014A58(v45, v42, &qword_1EB436BA0);
  v21 = v43;
  if (v43)
  {
    v22 = v44;
    __swift_project_boxed_opaque_existential_1Tm(v42, v43);
    v23 = (*(v22 + 24))(v21, v22);
    v36 = v24;
    v37 = v23;
    sub_1AB066D84(v45);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
  }

  else
  {
    sub_1AB066D84(v45);
    sub_1AB014AC0(v42, &qword_1EB436BA0);
    v36 = 0;
    v37 = 0;
  }

  JSONObject.subscript.getter(0x7269757165527369, 0xEA00000000006465, v42);
  sub_1AB014A58(v42, v39, &qword_1EB436BA0);
  v27 = v40;
  if (v40)
  {
    v28 = v41;
    __swift_project_boxed_opaque_existential_1Tm(v39, v40);
    v29 = (*(v28 + 88))(v27, v28);
    sub_1AB066D84(v42);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
  }

  else
  {
    sub_1AB066D84(v42);
    sub_1AB014AC0(v39, &qword_1EB436BA0);
    v29 = 0;
  }

  JSONObject.subscript.getter(0x4C6D756D6978616DLL, 0xED00006874676E65, v42);
  sub_1AB014A58(v42, v39, &qword_1EB436BA0);
  v30 = v40;
  if (v40)
  {
    v31 = v41;
    __swift_project_boxed_opaque_existential_1Tm(v39, v40);
    v32 = (*(v31 + 40))(v30, v31);
    v34 = v33;
    sub_1AB066D84(a1);
    sub_1AB066D84(v42);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v39);
  }

  else
  {
    sub_1AB066D84(a1);
    sub_1AB066D84(v42);
    result = sub_1AB014AC0(v39, &qword_1EB436BA0);
    v32 = 0;
    v34 = 1;
  }

  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v38;
  *(a2 + 17) = v35;
  *(a2 + 24) = v37;
  *(a2 + 32) = v36;
  *(a2 + 40) = v29 & 1;
  *(a2 + 48) = v32;
  *(a2 + 56) = v34 & 1;
  return result;
}

uint64_t Models.HTTPTemplateAction.Parameter.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Models.HTTPTemplateAction.Parameter.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1AB37B7D8()
{
  v1 = *v0;
  v2 = 7955819;
  v3 = 0x656C746974;
  v4 = 0x7269757165527369;
  if (v1 != 4)
  {
    v4 = 0x4C6D756D6978616DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746567726174;
  if (v1 != 1)
  {
    v5 = 0x7079547475706E69;
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

uint64_t sub_1AB37B898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB37EB74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AB37B8C0(uint64_t a1)
{
  v2 = sub_1AB37DB34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB37B8FC(uint64_t a1)
{
  v2 = sub_1AB37DB34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.HTTPTemplateAction.Substitutions.urlQuery.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Models.HTTPTemplateAction.Substitutions.headers.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Models.HTTPTemplateAction.Substitutions.jsonBody.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Models.HTTPTemplateAction.Substitutions.formBody.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Models.HTTPTemplateAction.Substitutions.init(urlQuery:headers:jsonBody:formBody:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = MEMORY[0x1E69E7CC0];
  sub_1AB0B22E0(MEMORY[0x1E69E7CC0]);
  sub_1AB0B22E0(v10);
  sub_1AB01B220(v10);
  sub_1AB0B22E0(v10);

  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t Models.HTTPTemplateAction.Substitutions.setParameter(value:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *a3;
  v6 = *(a3 + 8);
  if (*(a3 + 16) > 1u)
  {
    if (*(a3 + 16) == 2)
    {
      v12[3] = MEMORY[0x1E69E6158];
      v12[0] = a1;
      v12[1] = a2;

      return sub_1AB01AD48(v12, v7, v6);
    }

    else
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12[0] = v3[3];
      sub_1AB1D5C74(a1, a2, v7, v6, isUniquelyReferenced_nonNull_native);

      v3[3] = v12[0];
    }
  }

  else if (*(a3 + 16))
  {

    v10 = swift_isUniquelyReferenced_nonNull_native();
    v12[0] = v3[1];
    sub_1AB1D5C74(a1, a2, v7, v6, v10);

    v3[1] = v12[0];
  }

  else
  {

    v8 = swift_isUniquelyReferenced_nonNull_native();
    v12[0] = *v3;
    sub_1AB1D5C74(a1, a2, v7, v6, v8);

    *v3 = v12[0];
  }

  return result;
}

void sub_1AB37BCC8(void *a1, uint64_t a2)
{
  v3 = (a2 + 16);
  v4 = *(a2 + 16);
  if (!v4)
  {
    return;
  }

  v5 = v4 - 1;
  if (v4 == 1)
  {
    v7 = v2;
    v15 = a1;
LABEL_17:
    v17 = &v3[2 * v4];
    v19 = *v17;
    v18 = v17[1];
    __swift_project_boxed_opaque_existential_1Tm(v15, v15[3]);

    v20 = sub_1AB461D84();
    *&v26[0] = v19;
    *(&v26[0] + 1) = v18;
    [v7 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  v21 = *(a2 + 16);

  v7 = v2;
  v8 = 0;
  v9 = (a2 + 40);
  while (v5 != v8)
  {
    if (v8 >= *v3)
    {
      goto LABEL_20;
    }

    v13 = *(v9 - 1);
    v12 = *v9;
    *&v24 = v13;
    *(&v24 + 1) = *v9;
    swift_bridgeObjectRetain_n();
    v14 = [v7 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v14)
    {
      sub_1AB461494();
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    v26[0] = v24;
    v26[1] = v25;
    if (*(&v25 + 1))
    {
      sub_1AB37EE28();
      if (swift_dynamicCast())
      {

        v7 = v23;
        goto LABEL_6;
      }
    }

    else
    {
      sub_1AB014AC0(v26, &unk_1EB437E60);
    }

    v10 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    *&v26[0] = v13;
    *(&v26[0] + 1) = v12;
    v11 = v10;
    [v7 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    v7 = v11;
LABEL_6:
    ++v8;
    v9 += 2;
    if (v5 == v8)
    {

      v4 = v21;
      v15 = a1;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1AB37BF48(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AB45F204();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB0165C4(a3, v27);
  sub_1AB0165C4(a4, &v28);
  sub_1AB014A58(v27, v25, &qword_1EB43BA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1AB014AC0(v27, &qword_1EB43BA60);
    v21 = v26;
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1Tm(v21);

    return a1;
  }

  v13 = v23;
  v12 = v24;
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  sub_1AB014A58(v27, v25, &qword_1EB43BA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1AB014AC0(v27, &qword_1EB43BA60);

    v21 = v25;
    goto LABEL_14;
  }

  v15 = v23;
  v14 = v24;
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  v25[0] = a1;
  v25[1] = a2;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    MEMORY[0x1AC59BA20](38, 0xE100000000000000);
  }

  v23 = v15;
  v24 = v14;
  sub_1AB45F1D4();
  sub_1AB0273A8();
  v17 = sub_1AB461444();
  v19 = v18;
  (*(v9 + 8))(v11, v8);

  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v17 = 0;
    v20 = 0xE000000000000000;
  }

  v23 = v13;
  v24 = v12;
  MEMORY[0x1AC59BA20](61, 0xE100000000000000);
  MEMORY[0x1AC59BA20](v17, v20);

  MEMORY[0x1AC59BA20](v23, v24);

  sub_1AB014AC0(v27, &qword_1EB43BA60);
  return v25[0];
}

uint64_t Models.HTTPTemplateAction.Parameter.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B918);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v27 = *(v1 + 16);
  v23 = *(v1 + 17);
  v7 = *(v1 + 24);
  v21 = *(v1 + 32);
  v22 = v7;
  HIDWORD(v19) = *(v1 + 40);
  v20 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1Tm(v10, v9);
  sub_1AB37DB34();
  sub_1AB462274();
  LOBYTE(v25) = 0;
  v13 = v24;
  sub_1AB461BB4();
  if (!v13)
  {
    v14 = v23;
    v15 = v21;
    v16 = v22;
    LODWORD(v24) = v8;
    v17 = v20;
    LOBYTE(v25) = v27;
    v28 = 1;
    sub_1AB37DB88();
    sub_1AB461BF4();
    LOBYTE(v25) = v14;
    v28 = 2;
    sub_1AB37DBDC();
    sub_1AB461BF4();
    v25 = v16;
    v26 = v15;
    v28 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B938);
    sub_1AB37DC30();
    sub_1AB461BF4();
    LOBYTE(v25) = BYTE4(v19);
    v28 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B950);
    sub_1AB37DD30();
    sub_1AB461BF4();
    v25 = v17;
    LOBYTE(v26) = v24;
    v28 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B960);
    sub_1AB37DDAC();
    sub_1AB461BF4();
  }

  return (*(v4 + 8))(v6, v12);
}

uint64_t Models.HTTPTemplateAction.Parameter.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B978);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB37DB34();
  sub_1AB462224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v29) = 0;
  v9 = sub_1AB461A84();
  v11 = v10;
  v25 = v9;
  LOBYTE(v26) = 1;
  sub_1AB37DEAC();
  sub_1AB461AC4();
  v12 = v29;
  LOBYTE(v26) = 2;
  sub_1AB37DF00();
  sub_1AB461AC4();
  v24 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B938);
  LOBYTE(v26) = 3;
  sub_1AB37DF54();
  sub_1AB461AC4();
  v22 = v12;
  v13 = v30;
  v23 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B950);
  LOBYTE(v26) = 4;
  sub_1AB37E054();
  sub_1AB461AC4();
  v21 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B960);
  v41 = 5;
  sub_1AB37E0D0();
  sub_1AB461AC4();
  (*(v6 + 8))(v8, v5);
  v20 = v38;
  v14 = v39;
  v40 = v39;
  v15 = v25;
  *&v26 = v25;
  *(&v26 + 1) = v11;
  v16 = v22;
  LOBYTE(v27) = v22;
  v17 = v24;
  BYTE1(v27) = v24;
  *(&v27 + 1) = v23;
  *v28 = v13;
  v28[8] = v21;
  *&v28[16] = v38;
  v28[24] = v39;
  v18 = v27;
  *a2 = v26;
  a2[1] = v18;
  a2[2] = *v28;
  *(a2 + 41) = *&v28[9];
  sub_1AB37E1D0(&v26, &v29);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v29 = v15;
  v30 = v11;
  v31 = v16;
  v32 = v17;
  v33 = v23;
  v34 = v13;
  v35 = v21;
  v36 = v20;
  v37 = v14;
  return sub_1AB37E208(&v29);
}

uint64_t sub_1AB37CAB8()
{
  v1 = *v0;
  v2 = 0x654D6E6F69746361;
  v3 = 0x74736575716572;
  v4 = 0x4173736563637573;
  if (v1 != 3)
  {
    v4 = 0x416572756C696166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574656D61726170;
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

uint64_t sub_1AB37CB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB37E9A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AB37CBA4(uint64_t a1)
{
  v2 = sub_1AB37E238();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB37CBE0(uint64_t a1)
{
  v2 = sub_1AB37E238();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.HTTPTemplateAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v56 = type metadata accessor for Models.HTTPTemplateAction();
  MEMORY[0x1EEE9AC00](v56);
  v59 = (v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = type metadata accessor for NetRequest();
  MEMORY[0x1EEE9AC00](v58);
  v5 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B9B8);
  v60 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v47 - v10;
  v12 = a1[3];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v12);
  v13 = sub_1AB37E238();
  v14 = v61;
  sub_1AB462224();
  if (!v14)
  {
    v61 = v13;
    v54 = v5;
    v55 = v8;
    v15 = v60;
    LOBYTE(v72[0]) = 0;
    sub_1AB24CE74();
    sub_1AB461A54();
    if (*&v74[0])
    {
      v17 = *&v74[0];
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    if (*&v74[0])
    {
      v18 = *(&v74[0] + 1);
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC8];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B9C8);
    LOBYTE(v72[0]) = 1;
    sub_1AB37E28C();
    sub_1AB461AC4();
    v50 = v18;
    v51 = v9;
    v52 = v17;
    v53 = v11;
    v19 = *&v74[0];
    __swift_project_boxed_opaque_existential_1Tm(v76, v76[3]);
    v20 = sub_1AB462214();
    sub_1AB3098DC(0xD000000000000023, 0x80000001AB500830, v20);

    LOBYTE(v72[0]) = 3;
    decodeActionModel<A, B>(using:container:forKey:)(v74);
    v49 = v19;
    __swift_project_boxed_opaque_existential_1Tm(v76, v76[3]);
    v21 = sub_1AB462214();
    sub_1AB3098DC(0xD000000000000023, 0x80000001AB500830, v21);

    LOBYTE(v71[0]) = 4;
    decodeActionModel<A, B>(using:container:forKey:)(v72);
    v22 = v15;
    v23 = v50;
    LOBYTE(v62) = 2;
    v24 = v51;
    sub_1AB4619F4();
    v25 = v49;
    v48 = v70;
    v61 = *(&v69 + 1);
    v47[1] = __swift_project_boxed_opaque_existential_1Tm(&v68, *(&v69 + 1));
    __swift_project_boxed_opaque_existential_1Tm(v76, v76[3]);
    v26 = sub_1AB462214();
    JSONContext.init(userInfo:)(v26);
    v27 = v62;
    v28 = _s9JetEngine26AppleServicesPropertyScopeV13allPropertiesSayAA010NetRequestE0_pXpGvgZ_0();
    v67 = v28;
    v29 = sub_1AB3D8AA4(0xD00000000000001FLL, 0x80000001AB4FF9A0, v27);
    if (v29)
    {
      sub_1AB164A38(v29);
      v28 = v67;
    }

    *(&v63 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B80);
    *&v62 = v28;
    sub_1AB014B78(&v62, v66);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v27;
    sub_1AB01AE18(v66, 0xD00000000000001FLL, 0x80000001AB4FF9A0, isUniquelyReferenced_nonNull_native);

    v31 = _sSD9JetEngines17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v65);
    Decoder.withUserInfo(_:)(v31, v61, v48, v71);

    __swift_destroy_boxed_opaque_existential_1Tm(&v68);
    sub_1AB01494C(v71, &v68);
    v32 = v55;
    NetRequest.init(from:)(&v68, v55);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    (*(v22 + 8))(v53, v24);
    v33 = v54;
    sub_1AB37DACC(v32, v54, type metadata accessor for NetRequest);
    v68 = v74[0];
    v69 = v74[1];
    v70 = v75;
    v64 = v73;
    v62 = v72[0];
    v63 = v72[1];
    v34 = v59;
    *v59 = v52;
    *(v34 + 8) = v23;
    *(v34 + 16) = v25;
    v35 = v56;
    sub_1AB0B72A8(v33, v34 + *(v56 + 24));
    v36 = (v33 + *(v58 + 40));
    v38 = *v36;
    v37 = v36[1];

    sub_1AB0B730C(v33);
    v39 = (v34 + v35[7]);
    if (v37)
    {
      *v39 = v38;
      v39[1] = v37;
      v40 = (v34 + v35[8]);
      *v40 = v38;
      v40[1] = v37;
    }

    else
    {
      *v39 = 0;
      v39[1] = 0;
      v41 = (v34 + v35[8]);
      *v41 = 0;
      v41[1] = 0;
    }

    v42 = v57;
    v43 = v34 + v35[9];
    v44 = v69;
    *v43 = v68;
    *(v43 + 16) = v44;
    *(v43 + 32) = v70;
    v45 = v34 + v35[10];
    *(v45 + 32) = v64;
    v46 = v63;
    *v45 = v62;
    *(v45 + 16) = v46;
    sub_1AB37DACC(v34, v42, type metadata accessor for Models.HTTPTemplateAction);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v76);
}

uint64_t Models.HTTPTemplateAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B9E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v26 - v5;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB37E238();
  sub_1AB462274();
  v7 = v1[1];
  *&v35 = *v1;
  *(&v35 + 1) = v7;
  LOBYTE(v32[0]) = 0;
  sub_1AB24CA70();

  v8 = v29;
  sub_1AB461BF4();
  if (v8)
  {

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v29 = v4;

    *&v35 = v1[2];
    LOBYTE(v32[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B9C8);
    sub_1AB37E364();
    sub_1AB461BF4();
    v28 = v3;
    v10 = a1;
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    v11 = sub_1AB462264();
    v27 = "sandboxExtension";
    sub_1AB3098DC(0xD000000000000023, 0x80000001AB500830, v11);

    v12 = type metadata accessor for Models.HTTPTemplateAction();
    v13 = *(v12 + 36);
    LOBYTE(v35) = 3;
    encodeActionModel<A, B>(_:using:container:forKey:)(v1 + v13);
    __swift_project_boxed_opaque_existential_1Tm(v10, v10[3]);
    v14 = sub_1AB462264();
    sub_1AB3098DC(0xD000000000000023, v27 | 0x8000000000000000, v14);

    v15 = *(v12 + 40);
    LOBYTE(v35) = 4;
    encodeActionModel<A, B>(_:using:container:forKey:)(v1 + v15);
    v27 = v12;
    LOBYTE(v35) = 2;
    v16 = v6;
    sub_1AB461B34();
    v17 = v33;
    v18 = v34;
    v26[1] = __swift_project_boxed_opaque_existential_1Tm(v32, v33);
    __swift_project_boxed_opaque_existential_1Tm(v10, v10[3]);
    v19 = sub_1AB462264();
    JSONContext.init(userInfo:)(v19);
    v20 = v35;
    v21 = _s9JetEngine26AppleServicesPropertyScopeV13allPropertiesSayAA010NetRequestE0_pXpGvgZ_0();
    v37 = v21;
    v22 = sub_1AB3D8AA4(0xD00000000000001FLL, 0x80000001AB4FF9A0, v20);
    if (v22)
    {
      sub_1AB164A38(v22);
      v21 = v37;
    }

    v23 = v29;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B80);
    *&v35 = v21;
    sub_1AB014B78(&v35, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v20;
    sub_1AB01AE18(v31, 0xD00000000000001FLL, 0x80000001AB4FF9A0, isUniquelyReferenced_nonNull_native);

    v25 = _sSD9JetEngines17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v30);
    Encoder.withUserInfo(_:)(v25, v17, v18, &v35);

    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    NetRequest.encode(to:)(&v35);
    __swift_destroy_boxed_opaque_existential_1Tm(&v35);
    return (*(v23 + 8))(v16, v28);
  }
}

uint64_t _s9JetEngine6ModelsO18HTTPTemplateActionV9ParameterV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 16);
  v8 = *(a2 + 17);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v15 = *(a2 + 48);
  v16 = *(a1 + 48);
  v17 = *(a2 + 56);
  v18 = *(a1 + 56);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1AB461DA4() & 1) == 0 || (sub_1AB1CE924(v2, v7) & 1) == 0 || (sub_1AB1CEA60(v3, v8) & 1) == 0)
  {
    return 0;
  }

  if (!v5)
  {
    result = 0;
    if (v9)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (v9)
  {
    if (v4 == v10 && v5 == v9)
    {
      if (v6 != v11)
      {
        return 0;
      }

LABEL_16:
      if (v18)
      {
        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = v17;
        if (v16 != v15)
        {
          v14 = 1;
        }

        if (v14)
        {
          return 0;
        }
      }

      return 1;
    }

    v13 = sub_1AB461DA4();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }

LABEL_15:
    if ((v6 ^ v11))
    {
      return result;
    }

    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_1AB37DACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1AB37DB34()
{
  result = qword_1EB43B920;
  if (!qword_1EB43B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B920);
  }

  return result;
}

unint64_t sub_1AB37DB88()
{
  result = qword_1EB43B928;
  if (!qword_1EB43B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B928);
  }

  return result;
}

unint64_t sub_1AB37DBDC()
{
  result = qword_1EB43B930;
  if (!qword_1EB43B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B930);
  }

  return result;
}

unint64_t sub_1AB37DC30()
{
  result = qword_1EB43B940;
  if (!qword_1EB43B940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43B938);
    sub_1AB37DCB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B940);
  }

  return result;
}

unint64_t sub_1AB37DCB4()
{
  result = qword_1EB43B948;
  if (!qword_1EB43B948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB439AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B948);
  }

  return result;
}

unint64_t sub_1AB37DD30()
{
  result = qword_1EB43B958;
  if (!qword_1EB43B958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43B950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B958);
  }

  return result;
}

unint64_t sub_1AB37DDAC()
{
  result = qword_1EB43B968;
  if (!qword_1EB43B968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43B960);
    sub_1AB37DE30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B968);
  }

  return result;
}

unint64_t sub_1AB37DE30()
{
  result = qword_1EB43B970;
  if (!qword_1EB43B970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4383D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B970);
  }

  return result;
}

unint64_t sub_1AB37DEAC()
{
  result = qword_1EB43B980;
  if (!qword_1EB43B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B980);
  }

  return result;
}

unint64_t sub_1AB37DF00()
{
  result = qword_1EB43B988;
  if (!qword_1EB43B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B988);
  }

  return result;
}

unint64_t sub_1AB37DF54()
{
  result = qword_1EB43B990;
  if (!qword_1EB43B990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43B938);
    sub_1AB37DFD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B990);
  }

  return result;
}

unint64_t sub_1AB37DFD8()
{
  result = qword_1EB43B998;
  if (!qword_1EB43B998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB439AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B998);
  }

  return result;
}

unint64_t sub_1AB37E054()
{
  result = qword_1EB43B9A0;
  if (!qword_1EB43B9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43B950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B9A0);
  }

  return result;
}

unint64_t sub_1AB37E0D0()
{
  result = qword_1EB43B9A8;
  if (!qword_1EB43B9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43B960);
    sub_1AB37E154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B9A8);
  }

  return result;
}

unint64_t sub_1AB37E154()
{
  result = qword_1EB43B9B0;
  if (!qword_1EB43B9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4383D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B9B0);
  }

  return result;
}

unint64_t sub_1AB37E238()
{
  result = qword_1EB43B9C0;
  if (!qword_1EB43B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B9C0);
  }

  return result;
}

unint64_t sub_1AB37E28C()
{
  result = qword_1EB43B9D0;
  if (!qword_1EB43B9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43B9C8);
    sub_1AB37E310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B9D0);
  }

  return result;
}

unint64_t sub_1AB37E310()
{
  result = qword_1EB43B9D8;
  if (!qword_1EB43B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B9D8);
  }

  return result;
}

unint64_t sub_1AB37E364()
{
  result = qword_1EB43B9E8;
  if (!qword_1EB43B9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43B9C8);
    sub_1AB37E3E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B9E8);
  }

  return result;
}

unint64_t sub_1AB37E3E8()
{
  result = qword_1EB43B9F0;
  if (!qword_1EB43B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B9F0);
  }

  return result;
}

unint64_t sub_1AB37E440()
{
  result = qword_1EB43B9F8;
  if (!qword_1EB43B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B9F8);
  }

  return result;
}

unint64_t sub_1AB37E498()
{
  result = qword_1EB43BA00;
  if (!qword_1EB43BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BA00);
  }

  return result;
}

unint64_t sub_1AB37E4F0()
{
  result = qword_1EB43BA08;
  if (!qword_1EB43BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BA08);
  }

  return result;
}

void sub_1AB37E56C()
{
  sub_1AB37E6B4(319, &qword_1EB4323C8, &type metadata for Models.HTTPTemplateAction.Parameter, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for NetRequest();
    if (v1 <= 0x3F)
    {
      sub_1AB37E6B4(319, &qword_1EB432438, &type metadata for Models.HTTPTemplateAction.JSONBody, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1AB37E6B4(319, &qword_1EB432440, &type metadata for Models.HTTPTemplateAction.FormBody, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1AB36A8A0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1AB37E6B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1AB37E798()
{
  result = qword_1EB43BA10;
  if (!qword_1EB43BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BA10);
  }

  return result;
}

unint64_t sub_1AB37E7F0()
{
  result = qword_1EB43BA18;
  if (!qword_1EB43BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BA18);
  }

  return result;
}

unint64_t sub_1AB37E848()
{
  result = qword_1EB43BA20;
  if (!qword_1EB43BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BA20);
  }

  return result;
}

unint64_t sub_1AB37E8A0()
{
  result = qword_1EB43BA28;
  if (!qword_1EB43BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BA28);
  }

  return result;
}

unint64_t sub_1AB37E8F8()
{
  result = qword_1EB43BA30;
  if (!qword_1EB43BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BA30);
  }

  return result;
}

unint64_t sub_1AB37E950()
{
  result = qword_1EB43BA38;
  if (!qword_1EB43BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BA38);
  }

  return result;
}

uint64_t sub_1AB37E9A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v4 || (sub_1AB461DA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372 || (sub_1AB461DA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463 || (sub_1AB461DA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x416572756C696166 && a2 == 0xED00006E6F697463)
  {

    return 4;
  }

  else
  {
    v6 = sub_1AB461DA4();

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

uint64_t sub_1AB37EB74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1AB461DA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7079547475706E69 && a2 == 0xE900000000000065 || (sub_1AB461DA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7269757165527369 && a2 == 0xEA00000000006465 || (sub_1AB461DA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4C6D756D6978616DLL && a2 == 0xED00006874676E65)
  {

    return 5;
  }

  else
  {
    v6 = sub_1AB461DA4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1AB37ED80()
{
  result = qword_1EB43BA40;
  if (!qword_1EB43BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BA40);
  }

  return result;
}