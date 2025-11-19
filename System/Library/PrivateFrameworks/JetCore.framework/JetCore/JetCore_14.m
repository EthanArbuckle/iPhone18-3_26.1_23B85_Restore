uint64_t sub_1DB42A34C(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v49 = *MEMORY[0x1E69E9840];
  v8 = sub_1DB509DD0();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[4];
  v14 = a2[5];
  __swift_project_boxed_opaque_existential_1(a2 + 1, v13);
  (*(v14 + 8))(v13, v14);
  sub_1DB509D90();
  v16 = v15;
  v17 = *&v15;
  (*(v9 + 8))(v12, v8);
  v18 = v17 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  v18 = 0xC3E0000000000001;
  if (v16 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = 0x43E0000000000000;
  if (v16 < 9.22337204e18)
  {
    v45 = 0;
    v46 = 0xE000000000000000;
    MEMORY[0x1E1285C10](178);
    v40 = v45;
    v41 = v46;
    MEMORY[0x1E1285C70](0xD0000000000000A6, 0x80000001DB52E380);
    v47 = MEMORY[0x1E69E7360];
    v48 = &off_1F57000C8;
    v45 = v16;
    sub_1DB30C4B8(&v45, &v42, &qword_1ECC42798, &qword_1DB50F210);
    v8 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v12 = v8[2];
    v18 = v8[3];
    v17 = v12 + 1;
    if (v12 < v18 >> 1)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  v8 = sub_1DB302D80((v18 > 1), v17, 1, v8);
LABEL_5:
  v8[2] = v17;
  v19 = &v8[5 * v12];
  v20 = v42;
  v21 = v43;
  v19[8] = v44;
  *(v19 + 2) = v20;
  *(v19 + 3) = v21;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v45, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0x6920455245485720, 0xEC000000203D2064);
  v47 = MEMORY[0x1E69E72F0];
  v48 = &off_1F57000B8;
  LODWORD(v45) = a3;
  sub_1DB30C4B8(&v45, &v42, &qword_1ECC42798, &qword_1DB50F210);
  v23 = v8[2];
  v22 = v8[3];
  if (v23 >= v22 >> 1)
  {
    v8 = sub_1DB302D80((v22 > 1), v23 + 1, 1, v8);
  }

  v8[2] = v23 + 1;
  v24 = &v8[5 * v23];
  v25 = v42;
  v26 = v43;
  v24[8] = v44;
  *(v24 + 2) = v25;
  *(v24 + 3) = v26;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v45, &qword_1ECC42798, &qword_1DB50F210);
  v28 = v40;
  v27 = v41;
  v45 = 0;

  sub_1DB4ABE94(v28, v27, a1, &v45, &v42);
  if (v4)
  {

LABEL_16:

    v38 = *MEMORY[0x1E69E9840];
    return result;
  }

  v30 = v45;
  if (v45)
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v30;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v8);

    v32 = *(inited + 16);
    v33 = sqlite3_step(v32);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (!sub_1DB331244(v33, qword_1EE312D90) || (v34 = sub_1DB3AD5F0(&unk_1F56F0680), v35 = sub_1DB331244(v33, v34), , !v35))
    {
      sub_1DB388320();
      swift_allocError();
      *v36 = v33;
      *(v36 + 8) = 0;
      *(v36 + 16) = 0;
      swift_willThrow();
    }

    swift_setDeallocating();
    sqlite3_finalize(v32);
    v37 = *(inited + 24);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB42A874(uint64_t a1, void *a2, sqlite3_stmt *a3, unint64_t a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = sub_1DB509DD0();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[4];
  v14 = a2[5];
  __swift_project_boxed_opaque_existential_1(a2 + 1, v13);
  (*(v14 + 8))(v13, v14);
  sub_1DB509D90();
  v16 = v15;
  v17 = *&v15;
  (*(v9 + 8))(v12, v8);
  v18 = v17 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  v18 = 0xC3E0000000000001;
  if (v16 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = 0x43E0000000000000;
  if (v16 < 9.22337204e18)
  {
    v47 = 0;
    v48 = 0xE000000000000000;
    MEMORY[0x1E1285C10](186);
    v42 = v47;
    v43 = v48;
    MEMORY[0x1E1285C70](0xD0000000000000A6, 0x80000001DB52E380);
    v49 = MEMORY[0x1E69E7360];
    v50 = &off_1F57000C8;
    v47 = v16;
    sub_1DB30C4B8(&v47, &v44, &qword_1ECC42798, &qword_1DB50F210);
    v8 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v12 = v8[2];
    v18 = v8[3];
    v17 = v12 + 1;
    if (v12 < v18 >> 1)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  v8 = sub_1DB302D80((v18 > 1), v17, 1, v8);
LABEL_5:
  v8[2] = v17;
  v19 = &v8[5 * v12];
  v20 = v44;
  v21 = v45;
  v19[8] = v46;
  *(v19 + 2) = v20;
  *(v19 + 3) = v21;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v47, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0xD000000000000014, 0x80000001DB52E430);
  v49 = MEMORY[0x1E69E6158];
  v50 = &off_1F5700098;
  v47 = a3;
  v48 = a4;
  sub_1DB30C4B8(&v47, &v44, &qword_1ECC42798, &qword_1DB50F210);
  v23 = v8[2];
  v22 = v8[3];

  if (v23 >= v22 >> 1)
  {
    v8 = sub_1DB302D80((v22 > 1), v23 + 1, 1, v8);
  }

  v8[2] = v23 + 1;
  v24 = &v8[5 * v23];
  v25 = v44;
  v26 = v45;
  v24[8] = v46;
  *(v24 + 2) = v25;
  *(v24 + 3) = v26;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v47, &qword_1ECC42798, &qword_1DB50F210);
  v28 = v42;
  v27 = v43;
  v47 = 0;

  v29 = v28;
  v30 = v41;
  sub_1DB4ABE94(v29, v27, a1, &v47, &v44);
  if (v30)
  {

LABEL_16:

    v40 = *MEMORY[0x1E69E9840];
    return result;
  }

  v32 = v47;
  if (v47)
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v32;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v8);

    v34 = *(inited + 16);
    v35 = sqlite3_step(v34);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (!sub_1DB331244(v35, qword_1EE312D90) || (v36 = sub_1DB3AD5F0(&unk_1F56F06A8), v37 = sub_1DB331244(v35, v36), , !v37))
    {
      sub_1DB388320();
      swift_allocError();
      *v38 = v35;
      *(v38 + 8) = 0;
      *(v38 + 16) = 0;
      swift_willThrow();
    }

    swift_setDeallocating();
    sqlite3_finalize(v34);
    v39 = *(inited + 24);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB42ADA8(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v49 = *MEMORY[0x1E69E9840];
  v8 = sub_1DB509DD0();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[4];
  v14 = a2[5];
  __swift_project_boxed_opaque_existential_1(a2 + 1, v13);
  (*(v14 + 8))(v13, v14);
  sub_1DB509D90();
  v16 = v15;
  v17 = *&v15;
  (*(v9 + 8))(v12, v8);
  v18 = v17 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  v18 = 0xC3E0000000000001;
  if (v16 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = 0x43E0000000000000;
  if (v16 < 9.22337204e18)
  {
    v45 = 0;
    v46 = 0xE000000000000000;
    MEMORY[0x1E1285C10](114);
    v40 = v45;
    v41 = v46;
    MEMORY[0x1E1285C70](0xD000000000000056, 0x80000001DB52E300);
    v47 = MEMORY[0x1E69E7360];
    v48 = &off_1F57000C8;
    v45 = v16;
    sub_1DB30C4B8(&v45, &v42, &qword_1ECC42798, &qword_1DB50F210);
    v8 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v12 = v8[2];
    v18 = v8[3];
    v17 = v12 + 1;
    if (v12 < v18 >> 1)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  v8 = sub_1DB302D80((v18 > 1), v17, 1, v8);
LABEL_5:
  v8[2] = v17;
  v19 = &v8[5 * v12];
  v20 = v42;
  v21 = v43;
  v19[8] = v44;
  *(v19 + 2) = v20;
  *(v19 + 3) = v21;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v45, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0x6920455245485720, 0xEC000000203D2064);
  v47 = MEMORY[0x1E69E72F0];
  v48 = &off_1F57000B8;
  LODWORD(v45) = a3;
  sub_1DB30C4B8(&v45, &v42, &qword_1ECC42798, &qword_1DB50F210);
  v23 = v8[2];
  v22 = v8[3];
  if (v23 >= v22 >> 1)
  {
    v8 = sub_1DB302D80((v22 > 1), v23 + 1, 1, v8);
  }

  v8[2] = v23 + 1;
  v24 = &v8[5 * v23];
  v25 = v42;
  v26 = v43;
  v24[8] = v44;
  *(v24 + 2) = v25;
  *(v24 + 3) = v26;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v45, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52E360);
  v28 = v40;
  v27 = v41;
  v45 = 0;

  sub_1DB4ABE94(v28, v27, a1, &v45, &v42);
  if (v4)
  {

LABEL_16:

    v38 = *MEMORY[0x1E69E9840];
    return result;
  }

  v30 = v45;
  if (v45)
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v30;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v8);

    v32 = *(inited + 16);
    v33 = sqlite3_step(v32);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (!sub_1DB331244(v33, qword_1EE312D90) || (v34 = sub_1DB3AD5F0(&unk_1F56F06D0), v35 = sub_1DB331244(v33, v34), , !v35))
    {
      sub_1DB388320();
      swift_allocError();
      *v36 = v33;
      *(v36 + 8) = 0;
      *(v36 + 16) = 0;
      swift_willThrow();
    }

    swift_setDeallocating();
    sqlite3_finalize(v32);
    v37 = *(inited + 24);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB42B2F0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char **a3@<X8>)
{
  v44 = a3;
  v56[5] = *MEMORY[0x1E69E9840];
  v6 = sub_1DB509DD0();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2[4];
  v12 = a2[5];
  __swift_project_boxed_opaque_existential_1(a2 + 1, v11);
  (*(v12 + 8))(v11, v12);
  sub_1DB509D90();
  v14 = v13;
  v15 = *&v13;
  v17 = *(v7 + 8);
  v16 = (v7 + 8);
  v17(v10, v6);
  v18 = v15 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  v18 = 0xC3E0000000000001;
  if (v14 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = 0x43E0000000000000;
  if (v14 < 9.22337204e18)
  {
    v16 = v56;
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    MEMORY[0x1E1285C10](83);
    v45 = v46;
    MEMORY[0x1E1285C70](0xD000000000000047, 0x80000001DB52E2B0);
    *&v48 = &off_1F57000C8;
    *(&v47 + 1) = MEMORY[0x1E69E7360];
    *&v46 = v14;
    sub_1DB30C4B8(&v46, v56, &qword_1ECC42798, &qword_1DB50F210);
    v6 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v10 = v6[2];
    v18 = v6[3];
    v15 = v10 + 1;
    if (v10 < v18 >> 1)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  v6 = sub_1DB302D80((v18 > 1), v15, 1, v6);
LABEL_5:
  v6[2] = v15;
  v19 = &v6[5 * v10];
  v20 = *v16;
  v21 = *(v16 + 1);
  v19[8] = v56[4];
  *(v19 + 2) = v20;
  *(v19 + 3) = v21;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v46, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0x4220524544524F20, 0xEC00000064692059);
  v22 = v45;
  v56[0] = 0;

  sub_1DB4ABE94(v22, *(&v22 + 1), a1, v56, &v46);

  if (v3)
  {
LABEL_18:

LABEL_19:
    v41 = *MEMORY[0x1E69E9840];
    return result;
  }

  v24 = v56[0];
  if (v56[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v24;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v6);

    v26 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v27 = *(inited + 16);
      v28 = sqlite3_step(v27);
      if (qword_1EE30C820 != -1)
      {
        swift_once();
      }

      if (!sub_1DB331244(v28, qword_1EE312D90))
      {
        sub_1DB388320();
        swift_allocError();
        *v39 = v28;
        *(v39 + 8) = 0;
        *(v39 + 16) = 0;
        swift_willThrow();
        swift_setDeallocating();
        sqlite3_finalize(v27);
        v40 = *(inited + 24);

        goto LABEL_18;
      }

      if (v28 != 100)
      {
        break;
      }

      sub_1DB4271D0(inited, &v46);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1DB303BE0(0, *(v26 + 2) + 1, 1, v26);
      }

      v30 = *(v26 + 2);
      v29 = *(v26 + 3);
      if (v30 >= v29 >> 1)
      {
        v26 = sub_1DB303BE0((v29 > 1), v30 + 1, 1, v26);
      }

      *(v26 + 2) = v30 + 1;
      v31 = &v26[152 * v30];
      v32 = v47;
      *(v31 + 2) = v46;
      *(v31 + 3) = v32;
      v33 = v48;
      v34 = v49;
      v35 = v51;
      *(v31 + 6) = v50;
      *(v31 + 7) = v35;
      *(v31 + 4) = v33;
      *(v31 + 5) = v34;
      v36 = v52;
      v37 = v53;
      v38 = v54;
      v31[176] = v55;
      *(v31 + 9) = v37;
      *(v31 + 10) = v38;
      *(v31 + 8) = v36;
    }

    swift_setDeallocating();
    sqlite3_finalize(v27);
    v42 = *(inited + 24);

    *v44 = v26;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB42B894@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, char **a4@<X8>)
{
  v50 = a1;
  v49 = a4;
  v64 = *MEMORY[0x1E69E9840];
  v7 = sub_1DB509DD0();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[4];
  v12 = a2[5];
  __swift_project_boxed_opaque_existential_1(a2 + 1, v13);
  (*(v12 + 8))(v13, v12);
  v14 = v11;
  sub_1DB509D90();
  v16 = v15;
  v17 = *&v15;
  (*(v8 + 8))(v11, v7);
  v18 = v17 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v17 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  v18 = 0xC3E0000000000001;
  if (v16 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = 0x43E0000000000000;
  if (v16 < 9.22337204e18)
  {
    v13 = v62;
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;
    MEMORY[0x1E1285C10](106);
    v51 = v52;
    MEMORY[0x1E1285C70](0xD000000000000045, 0x80000001DB52E200);
    *&v54 = &off_1F57000C8;
    *(&v53 + 1) = MEMORY[0x1E69E7360];
    *&v52 = v16;
    sub_1DB30C4B8(&v52, v62, &qword_1ECC42798, &qword_1DB50F210);
    v7 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v17 = v7[2];
    v18 = v7[3];
    v14 = v17 + 1;
    if (v17 < v18 >> 1)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  v7 = sub_1DB302D80((v18 > 1), v14, 1, v7);
LABEL_5:
  v19 = v50;
  v7[2] = v14;
  v20 = &v7[5 * v17];
  v21 = *v13;
  v22 = *(v13 + 1);
  v20[8] = v63;
  *(v20 + 2) = v21;
  *(v20 + 3) = v22;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v52, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52E250);
  *(&v53 + 1) = MEMORY[0x1E69E72F0];
  *&v54 = &off_1F57000B8;
  LODWORD(v52) = a3;
  sub_1DB30C4B8(&v52, v62, &qword_1ECC42798, &qword_1DB50F210);
  v24 = v7[2];
  v23 = v7[3];
  if (v24 >= v23 >> 1)
  {
    v7 = sub_1DB302D80((v23 > 1), v24 + 1, 1, v7);
  }

  v7[2] = v24 + 1;
  v25 = &v7[5 * v24];
  v26 = *v13;
  v27 = *(v13 + 1);
  v25[8] = v63;
  *(v25 + 2) = v26;
  *(v25 + 3) = v27;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(&v52, &qword_1ECC42798, &qword_1DB50F210);
  MEMORY[0x1E1285C70](0x4220524544524F20, 0xEC00000064692059);
  v28 = v51;
  v62[0] = 0;

  sub_1DB4ABE94(v28, *(&v28 + 1), v19, v62, &v52);
  if (v4)
  {

LABEL_21:

LABEL_22:
    v47 = *MEMORY[0x1E69E9840];
    return result;
  }

  v30 = v62[0];
  if (v62[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v30;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v7);

    v32 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v33 = *(inited + 16);
      v34 = sqlite3_step(v33);
      if (qword_1EE30C820 != -1)
      {
        swift_once();
      }

      if (!sub_1DB331244(v34, qword_1EE312D90))
      {
        sub_1DB388320();
        swift_allocError();
        *v45 = v34;
        *(v45 + 8) = 0;
        *(v45 + 16) = 0;
        swift_willThrow();
        swift_setDeallocating();
        sqlite3_finalize(v33);
        v46 = *(inited + 24);

        goto LABEL_21;
      }

      if (v34 != 100)
      {
        break;
      }

      sub_1DB4271D0(inited, &v52);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1DB303BE0(0, *(v32 + 2) + 1, 1, v32);
      }

      v36 = *(v32 + 2);
      v35 = *(v32 + 3);
      if (v36 >= v35 >> 1)
      {
        v32 = sub_1DB303BE0((v35 > 1), v36 + 1, 1, v32);
      }

      *(v32 + 2) = v36 + 1;
      v37 = &v32[152 * v36];
      v38 = v53;
      *(v37 + 2) = v52;
      *(v37 + 3) = v38;
      v39 = v54;
      v40 = v55;
      v41 = v57;
      *(v37 + 6) = v56;
      *(v37 + 7) = v41;
      *(v37 + 4) = v39;
      *(v37 + 5) = v40;
      v42 = v58;
      v43 = v59;
      v44 = v60;
      v37[176] = v61;
      *(v37 + 9) = v43;
      *(v37 + 10) = v44;
      *(v37 + 8) = v42;
    }

    swift_setDeallocating();
    sqlite3_finalize(v33);
    v48 = *(inited + 24);

    *v49 = v32;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB42BEF8@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v41[5] = *MEMORY[0x1E69E9840];
  v41[1] = 0xE000000000000000;
  MEMORY[0x1E1285C10](202);
  MEMORY[0x1E1285C70](0xD0000000000000CALL, 0x80000001DB52E0F0);
  v41[3] = MEMORY[0x1E69E72F0];
  v41[4] = &off_1F57000B8;
  v41[0] = a2;
  sub_1DB30C4B8(v41, v39, &qword_1ECC42798, &qword_1DB50F210);
  v7 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1DB302D80((v8 > 1), v9 + 1, 1, v7);
  }

  v7[2] = v9 + 1;
  v10 = &v7[5 * v9];
  v11 = v39[0];
  v12 = v39[1];
  v10[8] = v40;
  *(v10 + 2) = v11;
  *(v10 + 3) = v12;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(v41, &qword_1ECC42798, &qword_1DB50F210);
  v41[0] = 0;

  sub_1DB4ABE94(0, 0xE000000000000000, a1, v41, v39);

  if (v3)
  {
    goto LABEL_20;
  }

  v14 = v41[0];
  if (v41[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v14;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v7);

    v16 = *(inited + 16);
    v17 = sqlite3_step(v16);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (sub_1DB331244(v17, qword_1EE312D90))
    {
      v18 = sub_1DB3AD5F0(&unk_1F56F0520);
      v19 = sub_1DB331244(v17, v18);

      if (v19)
      {
        v20 = sub_1DB4AE7B8();
        if (!*(v20 + 16))
        {
          goto LABEL_22;
        }

        v21 = sub_1DB306160(0xD000000000000011, 0x80000001DB52E1C0);
        if ((v22 & 1) == 0)
        {
          goto LABEL_22;
        }

        v23 = *(*(v20 + 56) + 4 * v21);
        v24 = *(inited + 16);
        if (sqlite3_column_type(v24, v23) != 5 && (sqlite3_column_int64(v24, v23), *(v20 + 16)) && (v25 = sub_1DB306160(0x656863735F6E696DLL, 0xEF6F745F656C7564), (v26 & 1) != 0) && (v27 = *(*(v20 + 56) + 4 * v25), sqlite3_column_type(v24, v27) != 5) && (sqlite3_column_int64(v24, v27), *(v20 + 16)) && (v28 = sub_1DB306160(0xD000000000000019, 0x80000001DB52E1E0), (v29 & 1) != 0))
        {
          v30 = *(*(v20 + 56) + 4 * v28);

          if (sqlite3_column_type(v24, v30) != 5)
          {
            v35 = sqlite3_column_int(v24, v30);
            sub_1DB509D80();
            Schedule = type metadata accessor for AssetNextSchedule();
            v37 = a3 + *(Schedule + 20);
            sub_1DB509D80();
            swift_setDeallocating();
            sqlite3_finalize(v24);
            v38 = *(inited + 24);

            *(a3 + *(Schedule + 24)) = v35;
            result = (*(*(Schedule - 8) + 56))(a3, 0, 1, Schedule);
            goto LABEL_21;
          }
        }

        else
        {
LABEL_22:
        }

        v34 = type metadata accessor for AssetNextSchedule();
        result = (*(*(v34 - 8) + 56))(a3, 1, 1, v34);
LABEL_21:
        v33 = *MEMORY[0x1E69E9840];
        return result;
      }
    }

    sub_1DB388320();
    swift_allocError();
    *v31 = v17;
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    swift_willThrow();
    swift_setDeallocating();
    sqlite3_finalize(v16);
    v32 = *(inited + 24);
LABEL_20:

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t AssetPushSubscriptionSQLiteStore.channels(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;

  sub_1DB348A40(v5, a1, a2);
  v7 = v6;

  return v7;
}

uint64_t sub_1DB42C444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E1285C10](68);
  MEMORY[0x1E1285C70](0xD000000000000044, 0x80000001DB52E0A0);
  v41[3] = MEMORY[0x1E69E6158];
  v41[4] = &off_1F5700098;
  v41[0] = a2;
  v41[1] = a3;
  sub_1DB30C4B8(v41, v42, &qword_1ECC42798, &qword_1DB50F210);

  v9 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1DB302D80((v10 > 1), v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  v12 = &v9[5 * v11];
  v13 = v42[0];
  v14 = v42[1];
  v12[8] = v43;
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB30623C(v41, &qword_1ECC42798, &qword_1DB50F210);
  *&v42[0] = 0;

  sub_1DB4ABE94(0, 0xE000000000000000, a1, v42, v41);

  if (v4)
  {
LABEL_22:

LABEL_23:
    v38 = *MEMORY[0x1E69E9840];
    return result;
  }

  v16 = *&v42[0];
  if (*&v42[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v16;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v9);

    v40 = MEMORY[0x1E69E7CC0];
    v18 = 0x1EE30C000uLL;
    v19 = &unk_1EE312000;
    while (1)
    {
      v20 = *(inited + 16);
      v21 = sqlite3_step(v20);
      v22 = v18;
      if (*(v18 + 2080) != -1)
      {
        swift_once();
      }

      v23 = v19;
      v24 = v19[434];
      if (!*(v24 + 16) || (v25 = *(v24 + 40), sub_1DB50BCF0(), sub_1DB50BD20(), v26 = sub_1DB50BD30(), v27 = -1 << *(v24 + 32), v28 = v26 & ~v27, ((*(v24 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0))
      {
LABEL_21:
        sub_1DB388320();
        swift_allocError();
        *v36 = v21;
        *(v36 + 8) = 0;
        *(v36 + 16) = 0;
        swift_willThrow();
        swift_setDeallocating();
        sqlite3_finalize(v20);
        v37 = *(inited + 24);

        goto LABEL_22;
      }

      v29 = ~v27;
      while (*(*(v24 + 48) + 4 * v28) != v21)
      {
        v28 = (v28 + 1) & v29;
        if (((*(v24 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
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
        v30 = sub_1DB50A7A0();
        v32 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_1DB302404(0, *(v40 + 2) + 1, 1, v40);
        }

        v34 = *(v40 + 2);
        v33 = *(v40 + 3);
        if (v34 >= v33 >> 1)
        {
          v40 = sub_1DB302404((v33 > 1), v34 + 1, 1, v40);
        }

        *(v40 + 2) = v34 + 1;
        v35 = &v40[16 * v34];
        *(v35 + 4) = v30;
        *(v35 + 5) = v32;
        v18 = v22;
        v19 = v23;
      }
    }

    swift_setDeallocating();
    sqlite3_finalize(v20);
    v39 = *(inited + 24);

    *a4 = v40;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

void sub_1DB42C880(__int128 *a1)
{
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = *(a1 + 144);
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v3 = *a1;
  v4 = a1[1];
  v2 = *v1;
  sub_1DB426398(sub_1DB42D5C0);
}

uint64_t sub_1DB42CAD8(uint64_t a1)
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
  sub_1DB348C18(v11, v10);
  sub_1DB348870(v6, v11);
  v8 = v7;
  sub_1DB348C74(v11);
  return v8 & 1;
}

uint64_t sub_1DB42CD60(uint64_t a1, uint64_t a2)
{
  v5 = *v2;

  sub_1DB348A40(v5, a1, a2);
  v7 = v6;

  return v7;
}

uint64_t sub_1DB42CE74@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[4] = &type metadata for SystemDateProvider;
  a2[5] = &protocol witness table for SystemDateProvider;
  return result;
}

double sub_1DB42CFA8(uint64_t a1)
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

uint64_t sub_1DB42CFDC(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  result = sub_1DB387D84(0xD000000000000011, 0x80000001DB52E810);
  if (v1)
  {
    goto LABEL_15;
  }

  if ((result & 1) == 0)
  {
    if (qword_1ECC42128 != -1)
    {
      swift_once();
    }

    result = sub_1DB4B017C(qword_1ECC45840, *algn_1ECC45848, qword_1ECC45850);
    goto LABEL_15;
  }

  result = sub_1DB387888();
  if (result > 0)
  {
LABEL_15:
    v17 = *MEMORY[0x1E69E9840];
    return result;
  }

  v4 = result;
  if (sub_1DB388044(0xD000000000000011, 0x80000001DB52E810, 0xD000000000000011, 0x80000001DB52E290))
  {
    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v5 = v36;
    v6 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1DB50EE90;
    v28 = sub_1DB301BC0(0, 77, 0, MEMORY[0x1E69E7CC0]);
    v8._countAndFlagsBits = 0xD000000000000027;
    v8._object = 0x80000001DB52E8D0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    v34 = MEMORY[0x1E69E72F0];
    v33[0] = v4;
    sub_1DB30C4B8(v33, v29, &qword_1ECC426B0, &qword_1DB50EEB0);
    v30 = 0u;
    v31 = 0u;
    sub_1DB301D4C(v29, &v30);
    v32 = 0;
    v9 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1DB301BC0(0, *(v28 + 2) + 1, 1, v28);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    v12 = v11 + 1;
    if (v11 >= v10 >> 1)
    {
      v27 = sub_1DB301BC0((v10 > 1), v11 + 1, 1, v9);
      v12 = v11 + 1;
      v9 = v27;
    }

    *(v9 + 2) = v12;
    v13 = &v9[40 * v11];
    v14 = v30;
    v15 = v31;
    v13[64] = v32;
    *(v13 + 2) = v14;
    *(v13 + 3) = v15;
    sub_1DB30623C(v33, &qword_1ECC426B0, &qword_1DB50EEB0);
    v16._countAndFlagsBits = 0xD000000000000025;
    v16._object = 0x80000001DB52E900;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    *(v7 + 32) = v9;
    Logger.warning(_:)(v7, v5, v6);

    result = __swift_destroy_boxed_opaque_existential_0(v35);
    goto LABEL_15;
  }

  sub_1DB4B017C(0xD000000000000042, 0x80000001DB52E830, MEMORY[0x1E69E7CC0]);
  v35[0] = 0;

  result = sub_1DB4ABE94(0xD000000000000044, 0x80000001DB52E880, a1, v35, &v30);
  v18 = v35[0];
  if (v35[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v18;
    *(inited + 24) = 0;
    sub_1DB4B03C0(MEMORY[0x1E69E7CC0]);
    v21 = *(inited + 16);
    v22 = sqlite3_step(v21);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (sub_1DB331244(v22, qword_1EE312D90) && (v23 = sub_1DB3AD5F0(&unk_1F56F0570), v24 = sub_1DB331244(v22, v23), , v24))
    {
      swift_setDeallocating();
      sqlite3_finalize(v21);
      v20 = *(inited + 24);
    }

    else
    {
      sub_1DB388320();
      swift_allocError();
      *v25 = v22;
      *(v25 + 8) = 0;
      *(v25 + 16) = 0;
      swift_willThrow();
      swift_setDeallocating();
      sqlite3_finalize(v21);
      v26 = *(inited + 24);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

unint64_t IntentDispatcherError.errorDescription.getter()
{
  v1 = 0xD0000000000000A5;
  if (*v0 == 1)
  {
    v1 = 0xD0000000000000C2;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD0000000000000B5;
  }

  *v0;
  return result;
}

uint64_t IntentDispatcherError.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

unint64_t sub_1DB42D6BC()
{
  result = qword_1ECC45858;
  if (!qword_1ECC45858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45858);
  }

  return result;
}

unint64_t sub_1DB42D714()
{
  v1 = 0xD0000000000000A5;
  if (*v0 == 1)
  {
    v1 = 0xD0000000000000C2;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD0000000000000B5;
  }

  *v0;
  return result;
}

unint64_t sub_1DB42D77C()
{
  sub_1DB330D60(v0, v8);
  if (!v9)
  {
    sub_1DB330DD0(v8);
LABEL_6:
    v2 = 0x40000001F56FD7F0uLL;
    sub_1DB315178();
    swift_allocError();
    *v3 = xmmword_1DB51C000;
    v4 = MEMORY[0x1E69E7CC0];
    *(v3 + 16) = 0x40000001F56FD7F0uLL;
    *(v3 + 24) = v4;
    swift_willThrow();
    return v2;
  }

  v1 = __swift_project_boxed_opaque_existential_1(v8, v9);
  sub_1DB300B14(v1, v7);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v8);
    goto LABEL_6;
  }

  v2 = v6;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v2;
}

unint64_t sub_1DB42D874()
{
  sub_1DB330D60(v0, v8);
  if (!v9)
  {
    sub_1DB330DD0(v8);
LABEL_6:
    v2 = 0x40000001F56FC3C8uLL;
    sub_1DB315178();
    swift_allocError();
    *v3 = xmmword_1DB51C000;
    v4 = MEMORY[0x1E69E7CC0];
    *(v3 + 16) = 0x40000001F56FC3C8uLL;
    *(v3 + 24) = v4;
    swift_willThrow();
    return v2;
  }

  v1 = __swift_project_boxed_opaque_existential_1(v8, v9);
  sub_1DB300B14(v1, v7);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v8);
    goto LABEL_6;
  }

  v2 = v6;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v2;
}

__n128 Models.FlowBackAction.init(actionMetrics:dismissal:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u64[0] = a2;
  a4[1].n128_u64[1] = a3;
  return result;
}

uint64_t Models.FlowBackAction.actionMetrics.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 Models.FlowBackAction.actionMetrics.setter(__n128 *a1)
{
  v4 = v1->n128_u64[0];
  v3 = v1->n128_i64[1];

  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t Models.FlowBackAction.dismissal.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Models.FlowBackAction.dismissal.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1DB42DC08()
{
  if (*v0)
  {
    result = 0x617373696D736964;
  }

  else
  {
    result = 0x654D6E6F69746361;
  }

  *v0;
  return result;
}

uint64_t sub_1DB42DC54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v6 || (sub_1DB50BA30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617373696D736964 && a2 == 0xE90000000000006CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB50BA30();

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

uint64_t sub_1DB42DD40(uint64_t a1)
{
  v2 = sub_1DB42DF80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB42DD7C(uint64_t a1)
{
  v2 = sub_1DB42DF80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.FlowBackAction.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45860, &qword_1DB51C010);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14 = v1[3];
  v15 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB42DF80();

  sub_1DB50BE40();
  v17 = v8;
  v18 = v9;
  v19 = 0;
  sub_1DB37BCC8();
  sub_1DB50B8A0();

  if (!v2)
  {
    v17 = v15;
    v18 = v14;
    v19 = 1;
    sub_1DB42DFD4();
    sub_1DB50B8A0();
  }

  return (*(v16 + 8))(v7, v4);
}

unint64_t sub_1DB42DF80()
{
  result = qword_1ECC45868;
  if (!qword_1ECC45868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45868);
  }

  return result;
}

unint64_t sub_1DB42DFD4()
{
  result = qword_1ECC45870;
  if (!qword_1ECC45870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45870);
  }

  return result;
}

uint64_t Models.FlowBackAction.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45878, &qword_1DB51C018);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB42DF80();
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v18 = 0;
  sub_1DB37C0CC();
  sub_1DB50B780();
  v11 = v16;
  v12 = v17;
  v18 = 1;
  sub_1DB42E244();
  sub_1DB50B780();
  (*(v6 + 8))(v9, v5);
  v13 = v16;
  v14 = v17;
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1DB42E244()
{
  result = qword_1ECC45880;
  if (!qword_1ECC45880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45880);
  }

  return result;
}

uint64_t Models.FlowBackAction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x654D6E6F69746361, 0xED00007363697274, v16);
  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v15);

  v7 = sub_1DB320870(v15, v6);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v15);
  v14 = v6;
  ScalarDictionary.init(tryDeserializing:using:)(v15, &v14, &v17);
  sub_1DB3151CC(v16);
  v8 = v17;
  JSONObject.subscript.getter(0x617373696D736964, 0xE90000000000006CLL, v16);
  v9 = sub_1DB42D874();
  if (v3)
  {

    sub_1DB3151CC(a1);
    return sub_1DB3151CC(v16);
  }

  else
  {
    v12 = v9;
    v13 = v10;
    sub_1DB3151CC(a1);
    result = sub_1DB3151CC(v16);
    *a3 = v7;
    a3[1] = v8;
    a3[2] = v12;
    a3[3] = v13;
  }

  return result;
}

unint64_t sub_1DB42E430()
{
  result = qword_1ECC45888;
  if (!qword_1ECC45888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45888);
  }

  return result;
}

unint64_t sub_1DB42E4B8()
{
  result = qword_1ECC45890;
  if (!qword_1ECC45890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45890);
  }

  return result;
}

unint64_t sub_1DB42E510()
{
  result = qword_1ECC45898;
  if (!qword_1ECC45898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45898);
  }

  return result;
}

unint64_t sub_1DB42E568()
{
  result = qword_1ECC458A0;
  if (!qword_1ECC458A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC458A0);
  }

  return result;
}

unint64_t sub_1DB42E5BC()
{
  result = qword_1ECC458A8;
  if (!qword_1ECC458A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC458A8);
  }

  return result;
}

uint64_t sub_1DB42E620()
{
  v1 = *v0;
  if (!*v0)
  {
    v3 = 1;
LABEL_8:

    return v3 & 1;
  }

  v2 = sub_1DB50BA30();

  if ((v2 & 1) == 0)
  {
    if (v1 == 2)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_1DB50BA30();
    }

    goto LABEL_8;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_1DB42E724()
{
  v1 = *v0;
  if (!*v0)
  {
    v3 = 1;
LABEL_8:

    return v3 & 1;
  }

  v2 = sub_1DB50BA30();

  if ((v2 & 1) == 0)
  {
    if (v1 == 2)
    {
      v3 = sub_1DB50BA30();
    }

    else
    {
      v3 = 1;
    }

    goto LABEL_8;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t JetPackAssetRequestSourcePolicy.debugDescription.getter()
{
  v1 = 0x6E4F65746F6D6572;
  if (*v0 != 1)
  {
    v1 = 0x6C6E4F6C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x647261646E617473;
  }
}

JetCore::JetPackAssetRequestSourcePolicy_optional __swiftcall JetPackAssetRequestSourcePolicy.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v5 = rawValue._countAndFlagsBits == 0x647261646E617473 && rawValue._object == 0xE800000000000000;
  if (v5 || (sub_1DB50BA30() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x6E4F65746F6D6572 && object == 0xEA0000000000796CLL || (sub_1DB50BA30() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x6C6E4F6C61636F6CLL && object == 0xE900000000000079)
  {

    v7 = 2;
  }

  else
  {
    v8 = sub_1DB50BA30();

    if (v8)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t sub_1DB42E9C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E4F65746F6D6572;
  v4 = 0xEA0000000000796CLL;
  if (v2 != 1)
  {
    v3 = 0x6C6E4F6C61636F6CLL;
    v4 = 0xE900000000000079;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6E4F65746F6D6572;
  v8 = 0xEA0000000000796CLL;
  if (*a2 != 1)
  {
    v7 = 0x6C6E4F6C61636F6CLL;
    v8 = 0xE900000000000079;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x647261646E617473;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB50BA30();
  }

  return v11 & 1;
}

unint64_t sub_1DB42EAE0()
{
  result = qword_1ECC458B0;
  if (!qword_1ECC458B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC458B0);
  }

  return result;
}

uint64_t sub_1DB42EB34()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB42EBE0()
{
  *v0;
  *v0;
  sub_1DB50A740();
}

uint64_t sub_1DB42EC78()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB42ED20()
{
  v1 = 0x6E4F65746F6D6572;
  if (*v0 != 1)
  {
    v1 = 0x6C6E4F6C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x647261646E617473;
  }
}

void sub_1DB42EE40(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEA0000000000796CLL;
  v5 = 0x6E4F65746F6D6572;
  if (v2 != 1)
  {
    v5 = 0x6C6E4F6C61636F6CLL;
    v4 = 0xE900000000000079;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x647261646E617473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1DB42EEE0()
{
  result = qword_1EE30DCE8[0];
  if (!qword_1EE30DCE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE30DCE8);
  }

  return result;
}

uint64_t sub_1DB42EF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB42EF5C, 0, 0);
}

uint64_t sub_1DB42EF5C()
{
  if (qword_1EE30E778 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v1 = *(v0 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1DB302744(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1DB302744((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 32) = v1;
  v5 = *(MEMORY[0x1E69E8950] + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  type metadata accessor for StartUpPerformanceEvent();
  *v6 = v0;
  v6[1] = sub_1DB42F0F4;
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);

  return MEMORY[0x1EEE6DE98](v0 + 16, v0 + 32, v7, v8, 0, 0, 0xD000000000000022, 0x80000001DB529E70);
}

uint64_t sub_1DB42F0F4()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1DB469584;
  }

  else
  {
    v4 = sub_1DB469600;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB42F224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB42F24C, 0, 0);
}

uint64_t sub_1DB42F24C()
{
  if (qword_1EE30E778 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v1 = *(v0 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1DB302744(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1DB302744((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 24) = v1;
  v5 = *(MEMORY[0x1E69E8950] + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1DB42F3E4;
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 32);

  return MEMORY[0x1EEE6DE98](v9, v0 + 24, v7, v8, 0, 0, 0xD000000000000022, 0x80000001DB529E70);
}

uint64_t sub_1DB42F3E4()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(v4 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB469584, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_1DB42F534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB42F55C, 0, 0);
}

uint64_t sub_1DB42F55C()
{
  if (qword_1EE30E778 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v1 = *(v0 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1DB302744(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1DB302744((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 24) = v1;
  v5 = *(MEMORY[0x1E69E8950] + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A88, &qword_1DB51CBB0);
  *v6 = v0;
  v6[1] = sub_1DB42F3E4;
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 32);

  return MEMORY[0x1EEE6DE98](v9, v0 + 24, v7, v8, 0, 0, 0xD000000000000022, 0x80000001DB529E70);
}

uint64_t sub_1DB42F704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB42F728, 0, 0);
}

uint64_t sub_1DB42F728()
{
  if (qword_1EE30E778 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v1 = *(v0 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1DB302744(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1DB302744((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 32) = v1;
  v5 = *(MEMORY[0x1E69E8950] + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  sub_1DB4679C8();
  *v6 = v0;
  v6[1] = sub_1DB42F0F4;
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);

  return MEMORY[0x1EEE6DE98](v0 + 16, v0 + 32, v7, v8, 0, 0, 0xD000000000000022, 0x80000001DB529E70);
}

uint64_t sub_1DB42F8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB42F8E8, 0, 0);
}

uint64_t sub_1DB42F8E8()
{
  if (qword_1EE30E778 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v1 = *(v0 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1DB302744(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1DB302744((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 24) = v1;
  v5 = *(MEMORY[0x1E69E8950] + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1DB42F3E4;
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 32);

  return MEMORY[0x1EEE6DE98](v9, v0 + 24, v7, v8, 0, 0, 0xD000000000000022, 0x80000001DB529E70);
}

uint64_t sub_1DB42FA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB42FAA4, 0, 0);
}

uint64_t sub_1DB42FAA4()
{
  if (qword_1EE30E778 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v1 = *(v0 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1DB302744(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1DB302744((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 32) = v1;
  v5 = *(MEMORY[0x1E69E8950] + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  type metadata accessor for JetPackAssetSession();
  *v6 = v0;
  v6[1] = sub_1DB42FC38;
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);

  return MEMORY[0x1EEE6DE98](v0 + 16, v0 + 32, v7, v8, 0, 0, 0xD000000000000022, 0x80000001DB529E70);
}

uint64_t sub_1DB42FC38()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1DB3D4B04;
  }

  else
  {
    v4 = sub_1DB4092C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB42FD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB42FD90, 0, 0);
}

uint64_t sub_1DB42FD90()
{
  if (qword_1EE30E778 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v1 = *(v0 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1DB302744(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1DB302744((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 24) = v1;
  v5 = *(MEMORY[0x1E69E8950] + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  type metadata accessor for JetPackAsset(0);
  *v6 = v0;
  v6[1] = sub_1DB42F3E4;
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 32);

  return MEMORY[0x1EEE6DE98](v9, v0 + 24, v7, v8, 0, 0, 0xD000000000000022, 0x80000001DB529E70);
}

uint64_t sub_1DB42FF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB42FF54, 0, 0);
}

uint64_t sub_1DB42FF54()
{
  if (qword_1EE30E778 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v1 = *(v0 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1DB302744(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1DB302744((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 24) = v1;
  v5 = *(MEMORY[0x1E69E8950] + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1DB4300EC;
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 32);

  return MEMORY[0x1EEE6DE98](v9, v0 + 24, v7, v8, 0, 0, 0xD000000000000022, 0x80000001DB529E70);
}

uint64_t sub_1DB4300EC()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(v4 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB3D4B04, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_1DB43023C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB430264, 0, 0);
}

uint64_t sub_1DB430264()
{
  if (qword_1EE30E778 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v1 = *(v0 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1DB302744(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1DB302744((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 72) = v1;
  v4 = *(v0 + 56);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 24) = v1;
  v5 = *(MEMORY[0x1E69E8950] + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1DB42F3E4;
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 32);

  return MEMORY[0x1EEE6DE98](v9, v0 + 24, v7, v8, 0, 0, 0xD000000000000022, 0x80000001DB529E70);
}

uint64_t sub_1DB4303FC(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    if (!v5)
    {
      break;
    }

    v11 = v8;
LABEL_13:
    v13 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v14 = v13 | (v11 << 6);
    v15 = *(*(a1 + 48) + 8 * v14);
    sub_1DB300B14(*(a1 + 56) + 32 * v14, v21);
    *&v22 = v15;
    sub_1DB30C200(v21, (&v22 + 8));
    v8 = v11;
LABEL_14:
    v25[0] = v22;
    v25[1] = v23;
    v26 = v24;
    v16 = v22;
    if (!v22)
    {

      return v9;
    }

    sub_1DB30C200((v25 + 8), &v22);
    if (swift_dynamicCast())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1DB303148(0, *(v9 + 2) + 1, 1, v9);
      }

      v20 = *(v9 + 2);
      v19 = *(v9 + 3);
      if (v20 >= v19 >> 1)
      {
        v9 = sub_1DB303148((v19 > 1), v20 + 1, 1, v9);
      }

      *(v9 + 2) = v20 + 1;
      *&v9[8 * v20 + 32] = v16;
      swift_unknownObjectRelease();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A10, &qword_1DB51CA38);
      if (swift_dynamicCast() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A18, &qword_1DB51CA40), swift_dynamicCast()))
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1DB303148(0, *(v9 + 2) + 1, 1, v9);
        }

        v18 = *(v9 + 2);
        v17 = *(v9 + 3);
        if (v18 >= v17 >> 1)
        {
          v9 = sub_1DB303148((v17 > 1), v18 + 1, 1, v9);
        }

        *(v9 + 2) = v18 + 1;
        *&v9[8 * v18 + 32] = v16;
      }
    }

    result = __swift_destroy_boxed_opaque_existential_0(&v22);
  }

  if (v6 <= v8 + 1)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v6;
  }

  v8 = v12 - 1;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v6)
    {
      v5 = 0;
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      goto LABEL_14;
    }

    v5 = *(v2 + 8 * v11);
    ++v10;
    if (v5)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4306D4(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    if (!v5)
    {
      break;
    }

    v11 = v8;
LABEL_13:
    v13 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v14 = v13 | (v11 << 6);
    v15 = *(*(a1 + 48) + 8 * v14);
    sub_1DB300B14(*(a1 + 56) + 32 * v14, v24);
    *&v25 = v15;
    sub_1DB30C200(v24, (&v25 + 8));
    v8 = v11;
LABEL_14:
    v28[0] = v25;
    v28[1] = v26;
    v29 = v27;
    v16 = v25;
    if (!v25)
    {

      return v9;
    }

    sub_1DB30C200((v28 + 8), &v25);
    type metadata accessor for JetPackAssetSession();
    if (swift_dynamicCast())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1DB303148(0, *(v9 + 2) + 1, 1, v9);
      }

      v18 = *(v9 + 2);
      v17 = *(v9 + 3);
      if (v18 >= v17 >> 1)
      {
        v9 = sub_1DB303148((v17 > 1), v18 + 1, 1, v9);
      }

      *(v9 + 2) = v18 + 1;
      *&v9[8 * v18 + 32] = v16;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A30, &qword_1DB51CA98);
      if (swift_dynamicCast())
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1DB303148(0, *(v9 + 2) + 1, 1, v9);
        }

        v20 = *(v9 + 2);
        v19 = *(v9 + 3);
        if (v20 >= v19 >> 1)
        {
          v9 = sub_1DB303148((v19 > 1), v20 + 1, 1, v9);
        }

        *(v9 + 2) = v20 + 1;
        v21 = &v9[8 * v20];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A38, &qword_1DB51CAA0);
        if (!swift_dynamicCast())
        {
          goto LABEL_18;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1DB303148(0, *(v9 + 2) + 1, 1, v9);
        }

        v23 = *(v9 + 2);
        v22 = *(v9 + 3);
        if (v23 >= v22 >> 1)
        {
          v9 = sub_1DB303148((v22 > 1), v23 + 1, 1, v9);
        }

        *(v9 + 2) = v23 + 1;
        v21 = &v9[8 * v23];
      }

      *(v21 + 4) = v16;
    }

LABEL_18:
    result = __swift_destroy_boxed_opaque_existential_0(&v25);
  }

  if (v6 <= v8 + 1)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v6;
  }

  v8 = v12 - 1;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v6)
    {
      v5 = 0;
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      goto LABEL_14;
    }

    v5 = *(v2 + 8 * v11);
    ++v10;
    if (v5)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

char *sub_1DB430A1C(uint64_t a1)
{
  v2 = type metadata accessor for JetPackAsset(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v11;
    if (!v8)
    {
      break;
    }

    v13 = v11;
LABEL_13:
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v16 = v15 | (v13 << 6);
    v17 = *(*(a1 + 48) + 8 * v16);
    sub_1DB300B14(*(a1 + 56) + 32 * v16, v31);
    *&v32 = v17;
    sub_1DB30C200(v31, (&v32 + 8));
    v11 = v13;
LABEL_14:
    v35[0] = v32;
    v35[1] = v33;
    v36 = v34;
    v18 = v32;
    if (!v32)
    {

      return v30;
    }

    sub_1DB30C200((v35 + 8), &v32);
    if (swift_dynamicCast())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1DB303148(0, *(v30 + 2) + 1, 1, v30);
      }

      v24 = *(v30 + 2);
      v23 = *(v30 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v29 = v24 + 1;
        v28 = sub_1DB303148((v23 > 1), v24 + 1, 1, v30);
        v25 = v29;
        v30 = v28;
      }

      v26 = v30;
      *(v30 + 2) = v25;
      *&v26[8 * v24 + 32] = v18;
      sub_1DB467374(v5, type metadata accessor for JetPackAsset);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45950, &qword_1DB51C748);
      if (swift_dynamicCast() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45958, &qword_1DB51C750), swift_dynamicCast()))
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_1DB303148(0, *(v30 + 2) + 1, 1, v30);
        }

        v20 = *(v30 + 2);
        v19 = *(v30 + 3);
        v21 = v20 + 1;
        if (v20 >= v19 >> 1)
        {
          v29 = v20 + 1;
          v27 = sub_1DB303148((v19 > 1), v20 + 1, 1, v30);
          v21 = v29;
          v30 = v27;
        }

        v22 = v30;
        *(v30 + 2) = v21;
        *&v22[8 * v20 + 32] = v18;
      }
    }

    result = __swift_destroy_boxed_opaque_existential_0(&v32);
  }

  if (v9 <= v11 + 1)
  {
    v14 = v11 + 1;
  }

  else
  {
    v14 = v9;
  }

  v11 = v14 - 1;
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v9)
    {
      v8 = 0;
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      goto LABEL_14;
    }

    v8 = *(a1 + 64 + 8 * v13);
    ++v12;
    if (v8)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB430D78(uint64_t a1)
{
  *(v1 + 216) = a1;
  *(v1 + 224) = type metadata accessor for StartUpPerformanceEvent();

  return MEMORY[0x1EEE6DFA0](sub_1DB430DE8, 0, 0);
}

uint64_t sub_1DB430DE8()
{
  if (!*(*(v0 + 216) + 16) || (v1 = sub_1DB30EE50(*(v0 + 224)), (v2 & 1) == 0))
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v6 = off_1EE30D3B0;
    v7 = *(off_1EE30D3B0 + 2);

    if (!v7)
    {
      goto LABEL_16;
    }

    v8 = 0;
    while (1)
    {
      *(v0 + 128) = v6[v8 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45AC8, &qword_1DB51CCC8);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 112))
        {
          break;
        }
      }

      if (v7 == ++v8)
      {
        v8 = v7;
        break;
      }
    }

    v10 = *(v6 + 2);
    if (v8 == v10)
    {
LABEL_16:

      v5 = 0;
      goto LABEL_17;
    }

    if (v8 >= v10)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 160) = v6[v8 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45AC8, &qword_1DB51CCC8);
      result = swift_dynamicCast();
      if (result)
      {
        v12 = *(v0 + 144);
        if (v12)
        {
          v13 = *(v0 + 152);

          v14 = swift_task_alloc();
          *(v0 + 232) = v14;
          *v14 = v0;
          v14[1] = sub_1DB4695C8;
          v15 = *(v0 + 216);
          v16 = *(v0 + 224);

          return sub_1DB37F5C0(v0 + 176, v12, v15, v16, v12, v13);
        }
      }
    }

    __break(1u);
    return result;
  }

  v3 = *(v0 + 224);
  sub_1DB300B14(*(*(v0 + 216) + 56) + 32 * v1, v0 + 48);
  sub_1DB30C200((v0 + 48), (v0 + 16));
  sub_1DB300B14(v0 + 16, v0 + 80);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 184);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0((v0 + 80));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v5 = v4;
LABEL_17:
    v11 = *(v0 + 8);

    return v11(v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45AD0, &qword_1DB51CCD0);
  if (swift_dynamicCast())
  {
    v17 = *(v0 + 192);
    v18 = sub_1DB4BA9D4();

    *(v0 + 176) = v18;
    __swift_destroy_boxed_opaque_existential_0((v0 + 80));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v5 = v18;
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45AD8, &qword_1DB51CCD8);
  if (swift_dynamicCast())
  {
    v19 = *(v0 + 200);
    v4 = sub_1DB4C34E4();

    *(v0 + 176) = v4;
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45AE0, &qword_1DB51CCE0);
  if (swift_dynamicCast())
  {
    *(v0 + 240) = *(v0 + 208);
    v20 = swift_task_alloc();
    *(v0 + 248) = v20;
    *v20 = v0;
    v20[1] = sub_1DB4313A4;

    return sub_1DB43CE64();
  }

  else
  {
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52F580);
    MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
    return sub_1DB50B580();
  }
}

uint64_t sub_1DB4313A4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v7 = sub_1DB469564;
  }

  else
  {
    *(v4 + 264) = a1;
    *(v4 + 176) = a1;
    v7 = sub_1DB4695D4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DB4314D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 280) = a1;
  *(v2 + 288) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB4314F0, 0, 0);
}

uint64_t sub_1DB4314F0()
{
  if (!*(*(v0 + 288) + 16) || (v1 = sub_1DB30EE50(&type metadata for JetPackAssetSession.Configuration), (v2 & 1) == 0))
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v7 = off_1EE30D3B0;
    v8 = *(off_1EE30D3B0 + 2);

    if (!v8)
    {
      goto LABEL_15;
    }

    v9 = 0;
    while (1)
    {
      *(v0 + 208) = v7[v9 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A60, &qword_1DB51CB48);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 192))
        {
          break;
        }
      }

      if (v8 == ++v9)
      {
        v9 = v8;
        break;
      }
    }

    v11 = *(v7 + 2);
    if (v9 == v11)
    {
LABEL_15:
      v12 = *(v0 + 280);

      *v12 = 0;
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
      *(v12 + 24) = 1;
      *(v12 + 32) = 0u;
      *(v12 + 48) = 0u;
      *(v12 + 64) = 0u;
LABEL_25:
      v19 = *(v0 + 8);

      return v19();
    }

    if (v9 >= v11)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 240) = v7[v9 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A60, &qword_1DB51CB48);
      result = swift_dynamicCast();
      if (result)
      {
        v13 = *(v0 + 224);
        if (v13)
        {
          v14 = *(v0 + 232);

          v15 = swift_task_alloc();
          *(v0 + 296) = v15;
          *v15 = v0;
          v15[1] = sub_1DB431A98;
          v16 = *(v0 + 280);
          v17 = *(v0 + 288);

          return sub_1DB37F5C0(v16, v13, v17, &type metadata for JetPackAssetSession.Configuration, v13, v14);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1DB300B14(*(*(v0 + 288) + 56) + 32 * v1, v0 + 128);
  sub_1DB30C200((v0 + 128), (v0 + 96));
  sub_1DB300B14(v0 + 96, v0 + 160);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 280);
    *v3 = *(v0 + 16);
    v4 = *(v0 + 32);
    v5 = *(v0 + 48);
    v6 = *(v0 + 80);
    v3[3] = *(v0 + 64);
    v3[4] = v6;
    v3[1] = v4;
    v3[2] = v5;
LABEL_24:
    __swift_destroy_boxed_opaque_existential_0((v0 + 160));
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A68, &qword_1DB51CB50);
  if (swift_dynamicCast())
  {
    v18 = *(v0 + 256);
    sub_1DB4BAA00(*(v0 + 280));

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A70, &qword_1DB51CB58);
  if (swift_dynamicCast())
  {
    v20 = *(v0 + 264);
    sub_1DB4C3524(*(v0 + 280));

    __swift_destroy_boxed_opaque_existential_0((v0 + 160));
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A78, &qword_1DB51CB60);
  if (swift_dynamicCast())
  {
    *(v0 + 304) = *(v0 + 272);
    v21 = swift_task_alloc();
    *(v0 + 312) = v21;
    *v21 = v0;
    v21[1] = sub_1DB431B8C;
    v22 = *(v0 + 280);

    return sub_1DB43D170(v22);
  }

  else
  {
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0x72756769666E6F43, 0xED00006E6F697461);
    MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
    return sub_1DB50B580();
  }
}

uint64_t sub_1DB431A98()
{
  v1 = *(*v0 + 296);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DB431B8C()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_1DB431D14;
  }

  else
  {
    v3 = sub_1DB431CA0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB431CA0()
{
  v1 = v0[38];

  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1DB431D14()
{
  v1 = v0[38];

  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v2 = v0[40];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB431D88(uint64_t a1, uint64_t a2)
{
  v2[30] = a1;
  v2[31] = a2;
  v2[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A88, &qword_1DB51CBB0);

  return MEMORY[0x1EEE6DFA0](sub_1DB431E04, 0, 0);
}

uint64_t sub_1DB431E04()
{
  if (!*(*(v0 + 248) + 16) || (v1 = sub_1DB30EE50(*(v0 + 256)), (v2 & 1) == 0))
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v4 = off_1EE30D3B0;
    v5 = *(off_1EE30D3B0 + 2);

    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = 0;
    while (1)
    {
      *(v0 + 168) = v4[v6 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A90, &qword_1DB51CBB8);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 152))
        {
          break;
        }
      }

      if (v5 == ++v6)
      {
        v6 = v5;
        break;
      }
    }

    v8 = *(v4 + 2);
    if (v6 == v8)
    {
LABEL_15:
      v9 = *(v0 + 240);

      *(v9 + 32) = 0;
      *v9 = 0u;
      *(v9 + 16) = 0u;
LABEL_25:
      v18 = *(v0 + 8);

      return v18();
    }

    if (v6 >= v8)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 200) = v4[v6 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A90, &qword_1DB51CBB8);
      result = swift_dynamicCast();
      if (result)
      {
        v10 = *(v0 + 184);
        if (v10)
        {
          v11 = *(v0 + 192);

          v12 = swift_task_alloc();
          *(v0 + 264) = v12;
          *v12 = v0;
          v12[1] = sub_1DB432380;
          v13 = *(v0 + 248);
          v14 = *(v0 + 256);
          v15 = *(v0 + 240);

          return sub_1DB37F5C0(v15, v10, v13, v14, v10, v11);
        }
      }
    }

    __break(1u);
    return result;
  }

  v3 = *(v0 + 256);
  sub_1DB300B14(*(*(v0 + 248) + 56) + 32 * v1, v0 + 88);
  sub_1DB30C200((v0 + 88), (v0 + 56));
  sub_1DB300B14(v0 + 56, v0 + 120);
  if (swift_dynamicCast())
  {
    sub_1DB2FEA0C((v0 + 16), *(v0 + 240));
LABEL_24:
    __swift_destroy_boxed_opaque_existential_0((v0 + 120));
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A98, &qword_1DB51CBC0);
  if (swift_dynamicCast())
  {
    v16 = *(v0 + 240);
    v17 = *(v0 + 216);
    sub_1DB4BAB94();

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45AA0, &qword_1DB51CBC8);
  if (swift_dynamicCast())
  {
    v19 = *(v0 + 240);
    v20 = *(v0 + 224);
    sub_1DB4C36A8();

    __swift_destroy_boxed_opaque_existential_0((v0 + 120));
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45AA8, &qword_1DB51CBD0);
  if (swift_dynamicCast())
  {
    *(v0 + 272) = *(v0 + 232);
    v21 = swift_task_alloc();
    *(v0 + 280) = v21;
    *v21 = v0;
    v21[1] = sub_1DB432474;
    v22 = *(v0 + 240);

    return sub_1DB43D478(v22);
  }

  else
  {
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52F440);
    MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
    return sub_1DB50B580();
  }
}

uint64_t sub_1DB432380()
{
  v1 = *(*v0 + 264);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DB432474()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_1DB4325FC;
  }

  else
  {
    v3 = sub_1DB432588;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB432588()
{
  v1 = v0[34];

  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1DB4325FC()
{
  v1 = v0[34];

  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v2 = v0[36];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB432670(uint64_t a1)
{
  *(v1 + 216) = a1;
  *(v1 + 224) = sub_1DB4679C8();

  return MEMORY[0x1EEE6DFA0](sub_1DB4326E0, 0, 0);
}

uint64_t sub_1DB4326E0()
{
  if (!*(*(v0 + 216) + 16) || (v1 = sub_1DB30EE50(*(v0 + 224)), (v2 & 1) == 0))
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v6 = off_1EE30D3B0;
    v7 = *(off_1EE30D3B0 + 2);

    if (!v7)
    {
      goto LABEL_16;
    }

    v8 = 0;
    while (1)
    {
      *(v0 + 128) = v6[v8 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459E0, &qword_1DB51C9B8);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 112))
        {
          break;
        }
      }

      if (v7 == ++v8)
      {
        v8 = v7;
        break;
      }
    }

    v10 = *(v6 + 2);
    if (v8 == v10)
    {
LABEL_16:

      v5 = 0;
      goto LABEL_17;
    }

    if (v8 >= v10)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 160) = v6[v8 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459E0, &qword_1DB51C9B8);
      result = swift_dynamicCast();
      if (result)
      {
        v12 = *(v0 + 144);
        if (v12)
        {
          v13 = *(v0 + 152);

          v14 = swift_task_alloc();
          *(v0 + 232) = v14;
          *v14 = v0;
          v14[1] = sub_1DB4695C8;
          v15 = *(v0 + 216);
          v16 = *(v0 + 224);

          return sub_1DB37F5C0(v0 + 176, v12, v15, v16, v12, v13);
        }
      }
    }

    __break(1u);
    return result;
  }

  v3 = *(v0 + 224);
  sub_1DB300B14(*(*(v0 + 216) + 56) + 32 * v1, v0 + 48);
  sub_1DB30C200((v0 + 48), (v0 + 16));
  sub_1DB300B14(v0 + 16, v0 + 80);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 184);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0((v0 + 80));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v5 = v4;
LABEL_17:
    v11 = *(v0 + 8);

    return v11(v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459E8, &qword_1DB51C9C0);
  if (swift_dynamicCast())
  {
    v17 = *(v0 + 192);
    v18 = sub_1DB4BABBC();

    *(v0 + 176) = v18;
    __swift_destroy_boxed_opaque_existential_0((v0 + 80));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v5 = v18;
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459F0, &qword_1DB51C9C8);
  if (swift_dynamicCast())
  {
    v19 = *(v0 + 200);
    v4 = sub_1DB4C36E4();

    *(v0 + 176) = v4;
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459F8, &qword_1DB51C9D0);
  if (swift_dynamicCast())
  {
    *(v0 + 240) = *(v0 + 208);
    v20 = swift_task_alloc();
    *(v0 + 248) = v20;
    *v20 = v0;
    v20[1] = sub_1DB4313A4;

    return sub_1DB43D63C();
  }

  else
  {
    v21 = *(v0 + 224);
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    v22 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v22);

    MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
    return sub_1DB50B580();
  }
}

uint64_t sub_1DB432C9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB432CBC, 0, 0);
}

uint64_t sub_1DB432CBC()
{
  if (!*(*(v0 + 216) + 16) || (v1 = sub_1DB30EE50(&type metadata for Bag), (v2 & 1) == 0))
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v3 = off_1EE30D3B0;
    v4 = *(off_1EE30D3B0 + 2);

    if (!v4)
    {
      goto LABEL_15;
    }

    v5 = 0;
    while (1)
    {
      *(v0 + 128) = v3[v5 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A20, &qword_1DB51CA50);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 112))
        {
          break;
        }
      }

      if (v4 == ++v5)
      {
        v5 = v4;
        break;
      }
    }

    v7 = *(v3 + 2);
    if (v5 == v7)
    {
LABEL_15:
      v8 = *(v0 + 208);

      *v8 = 0;
LABEL_25:
      v15 = *(v0 + 8);

      return v15();
    }

    if (v5 >= v7)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 160) = v3[v5 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A20, &qword_1DB51CA50);
      result = swift_dynamicCast();
      if (result)
      {
        v9 = *(v0 + 144);
        if (v9)
        {
          v10 = *(v0 + 152);

          v11 = swift_task_alloc();
          *(v0 + 224) = v11;
          *v11 = v0;
          v11[1] = sub_1DB43322C;
          v12 = *(v0 + 208);
          v13 = *(v0 + 216);

          return sub_1DB37F5C0(v12, v9, v13, &type metadata for Bag, v9, v10);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1DB300B14(*(*(v0 + 216) + 56) + 32 * v1, v0 + 48);
  sub_1DB30C200((v0 + 48), (v0 + 16));
  sub_1DB300B14(v0 + 16, v0 + 80);
  if (swift_dynamicCast())
  {
    **(v0 + 208) = *(v0 + 176);
LABEL_24:
    __swift_destroy_boxed_opaque_existential_0((v0 + 80));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A10, &qword_1DB51CA38);
  if (swift_dynamicCast())
  {
    v14 = *(v0 + 184);
    sub_1DB4BABE8(*(v0 + 208));

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A18, &qword_1DB51CA40);
  if (swift_dynamicCast())
  {
    v16 = *(v0 + 192);
    sub_1DB4C3724(*(v0 + 208));

    __swift_destroy_boxed_opaque_existential_0((v0 + 80));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A28, &qword_1DB51CA58);
  if (swift_dynamicCast())
  {
    *(v0 + 232) = *(v0 + 200);
    v17 = swift_task_alloc();
    *(v0 + 240) = v17;
    *v17 = v0;
    v17[1] = sub_1DB433320;
    v18 = *(v0 + 208);

    return sub_1DB43D7F4(v18);
  }

  else
  {
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](6775106, 0xE300000000000000);
    MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
    return sub_1DB50B580();
  }
}

uint64_t sub_1DB43322C()
{
  v1 = *(*v0 + 224);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DB433320()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_1DB4334A8;
  }

  else
  {
    v3 = sub_1DB433434;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB433434()
{
  v1 = v0[29];

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1DB4334A8()
{
  v1 = v0[29];

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[31];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB43351C(uint64_t a1)
{
  *(v1 + 216) = a1;
  *(v1 + 224) = type metadata accessor for JetPackAssetSession();

  return MEMORY[0x1EEE6DFA0](sub_1DB433588, 0, 0);
}

uint64_t sub_1DB433588()
{
  if (!*(*(v0 + 216) + 16) || (v1 = sub_1DB30EE50(*(v0 + 224)), (v2 & 1) == 0))
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v6 = off_1EE30D3B0;
    v7 = *(off_1EE30D3B0 + 2);

    if (!v7)
    {
      goto LABEL_16;
    }

    v8 = 0;
    while (1)
    {
      *(v0 + 128) = v6[v8 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A48, &qword_1DB51CAC8);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 112))
        {
          break;
        }
      }

      if (v7 == ++v8)
      {
        v8 = v7;
        break;
      }
    }

    v10 = *(v6 + 2);
    if (v8 == v10)
    {
LABEL_16:

      v5 = 0;
      goto LABEL_17;
    }

    if (v8 >= v10)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 160) = v6[v8 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A48, &qword_1DB51CAC8);
      result = swift_dynamicCast();
      if (result)
      {
        v12 = *(v0 + 144);
        if (v12)
        {
          v13 = *(v0 + 152);

          v14 = swift_task_alloc();
          *(v0 + 232) = v14;
          *v14 = v0;
          v14[1] = sub_1DB433B44;
          v15 = *(v0 + 216);
          v16 = *(v0 + 224);

          return sub_1DB37F5C0(v0 + 176, v12, v15, v16, v12, v13);
        }
      }
    }

    __break(1u);
    return result;
  }

  v3 = *(v0 + 224);
  sub_1DB300B14(*(*(v0 + 216) + 56) + 32 * v1, v0 + 48);
  sub_1DB30C200((v0 + 48), (v0 + 16));
  sub_1DB300B14(v0 + 16, v0 + 80);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 184);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0((v0 + 80));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v5 = v4;
LABEL_17:
    v11 = *(v0 + 8);

    return v11(v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A30, &qword_1DB51CA98);
  if (swift_dynamicCast())
  {
    v17 = *(v0 + 192);
    v18 = sub_1DB4BAD7C();

    *(v0 + 176) = v18;
    __swift_destroy_boxed_opaque_existential_0((v0 + 80));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v5 = v18;
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A38, &qword_1DB51CAA0);
  if (swift_dynamicCast())
  {
    v19 = *(v0 + 200);
    v4 = sub_1DB4C38A8();

    *(v0 + 176) = v4;
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459D0, &qword_1DB51C8E0);
  if (swift_dynamicCast())
  {
    *(v0 + 240) = *(v0 + 208);
    v20 = swift_task_alloc();
    *(v0 + 248) = v20;
    *v20 = v0;
    v20[1] = sub_1DB433C84;

    return sub_1DB43DB6C();
  }

  else
  {
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000013, 0x80000001DB51C550);
    MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
    return sub_1DB50B580();
  }
}

uint64_t sub_1DB433B44()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 176);
    v8 = *(v4 + 8);

    return v8(v7);
  }
}

uint64_t sub_1DB433C84(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v7 = sub_1DB433E2C;
  }

  else
  {
    *(v4 + 264) = a1;
    *(v4 + 176) = a1;
    v7 = sub_1DB433DB0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DB433DB0()
{
  v1 = v0[33];
  v2 = v0[30];

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_1DB433E2C()
{
  v1 = v0[30];

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[32];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB433EA0(uint64_t a1, uint64_t a2)
{
  v2[25] = a1;
  v2[26] = a2;
  v3 = type metadata accessor for JetPackAsset(0);
  v2[27] = v3;
  v4 = *(v3 - 8);
  v2[28] = v4;
  v5 = *(v4 + 64) + 15;
  v2[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB433F60, 0, 0);
}

uint64_t sub_1DB433F60()
{
  if (!*(*(v0 + 208) + 16) || (v1 = sub_1DB30EE50(*(v0 + 216)), (v2 & 1) == 0))
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v8 = off_1EE30D3B0;
    v9 = *(off_1EE30D3B0 + 2);

    if (!v9)
    {
      goto LABEL_15;
    }

    v10 = 0;
    while (1)
    {
      *(v0 + 128) = v8[v10 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45960, &qword_1DB51C770);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 112))
        {
          break;
        }
      }

      if (v9 == ++v10)
      {
        v10 = v9;
        break;
      }
    }

    v12 = *(v8 + 2);
    if (v10 == v12)
    {
LABEL_15:
      v13 = *(v0 + 216);
      v14 = *(v0 + 224);
      v15 = *(v0 + 200);

      (*(v14 + 56))(v15, 1, 1, v13);
LABEL_25:
      v26 = *(v0 + 232);

      v27 = *(v0 + 8);

      return v27();
    }

    if (v10 >= v12)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 160) = v8[v10 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45960, &qword_1DB51C770);
      result = swift_dynamicCast();
      if (result)
      {
        v16 = *(v0 + 144);
        if (v16)
        {
          v17 = *(v0 + 152);

          v18 = swift_task_alloc();
          *(v0 + 240) = v18;
          *v18 = v0;
          v18[1] = sub_1DB434598;
          v19 = *(v0 + 208);
          v20 = *(v0 + 216);
          v21 = *(v0 + 200);

          return sub_1DB37F5C0(v21, v16, v19, v20, v16, v17);
        }
      }
    }

    __break(1u);
    return result;
  }

  v3 = *(v0 + 232);
  v4 = *(v0 + 216);
  sub_1DB300B14(*(*(v0 + 208) + 56) + 32 * v1, v0 + 48);
  sub_1DB30C200((v0 + 48), (v0 + 16));
  sub_1DB300B14(v0 + 16, v0 + 80);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 224);
    v6 = *(v0 + 216);
    v7 = *(v0 + 200);
    sub_1DB468D80(*(v0 + 232), v7, type metadata accessor for JetPackAsset);
    (*(v5 + 56))(v7, 0, 1, v6);
LABEL_24:
    __swift_destroy_boxed_opaque_existential_0((v0 + 80));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45950, &qword_1DB51C748);
  if (swift_dynamicCast())
  {
    v22 = *(v0 + 216);
    v23 = *(v0 + 224);
    v24 = *(v0 + 200);
    v25 = *(v0 + 176);
    sub_1DB4BAF48();

    (*(v23 + 56))(v24, 0, 1, v22);
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45958, &qword_1DB51C750);
  if (swift_dynamicCast())
  {
    v28 = *(v0 + 200);
    v29 = *(v0 + 184);
    sub_1DB4C3A90();
    (*(*(v0 + 224) + 56))(*(v0 + 200), 0, 1, *(v0 + 216));

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45968, &qword_1DB51C778);
  if (swift_dynamicCast())
  {
    *(v0 + 248) = *(v0 + 192);
    v30 = swift_task_alloc();
    *(v0 + 256) = v30;
    *v30 = v0;
    v30[1] = sub_1DB4346B0;
    v31 = *(v0 + 200);

    return sub_1DB43DED8(v31);
  }

  else
  {
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0x416B63615074654ALL, 0xEC00000074657373);
    MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
    return sub_1DB50B580();
  }
}

uint64_t sub_1DB434598()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v6 = *v0;

  v3 = *(v1 + 232);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1DB4346B0()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_1DB434870;
  }

  else
  {
    v3 = sub_1DB4347C4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4347C4()
{
  v1 = v0[31];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[25];

  (*(v3 + 56))(v4, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v5 = v0[29];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB434870()
{
  v1 = v0[31];

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[33];
  v3 = v0[29];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB4348EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB43490C, 0, 0);
}

uint64_t sub_1DB43490C()
{
  if (!*(*(v0 + 264) + 16) || (v1 = sub_1DB30EE50(&type metadata for DiskJetPackLoader), (v2 & 1) == 0))
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v7 = off_1EE30D3B0;
    v8 = *(off_1EE30D3B0 + 2);

    if (!v8)
    {
      goto LABEL_15;
    }

    v9 = 0;
    while (1)
    {
      *(v0 + 184) = v7[v9 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459A8, &qword_1DB51C878);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 168))
        {
          break;
        }
      }

      if (v8 == ++v9)
      {
        v9 = v8;
        break;
      }
    }

    v11 = *(v7 + 2);
    if (v9 == v11)
    {
LABEL_15:
      v12 = *(v0 + 256);

      *(v12 + 32) = 0;
      *v12 = 0u;
      *(v12 + 16) = 0u;
      *(v12 + 40) = xmmword_1DB51C480;
LABEL_25:
      v20 = *(v0 + 8);

      return v20();
    }

    if (v9 >= v11)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 216) = v7[v9 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459A8, &qword_1DB51C878);
      result = swift_dynamicCast();
      if (result)
      {
        v13 = *(v0 + 200);
        if (v13)
        {
          v14 = *(v0 + 208);

          v15 = swift_task_alloc();
          *(v0 + 272) = v15;
          *v15 = v0;
          v15[1] = sub_1DB434EB0;
          v16 = *(v0 + 256);
          v17 = *(v0 + 264);

          return sub_1DB37F5C0(v16, v13, v17, &type metadata for DiskJetPackLoader, v13, v14);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1DB300B14(*(*(v0 + 264) + 56) + 32 * v1, v0 + 104);
  sub_1DB30C200((v0 + 104), (v0 + 72));
  sub_1DB300B14(v0 + 72, v0 + 136);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 256);
    v4 = *(v0 + 16);
    v5 = *(v0 + 32);
    v6 = *(v0 + 48);
    *(v3 + 48) = *(v0 + 64);
    *(v3 + 16) = v5;
    *(v3 + 32) = v6;
    *v3 = v4;
LABEL_24:
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    __swift_destroy_boxed_opaque_existential_0((v0 + 72));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459B0, &qword_1DB51C880);
  if (swift_dynamicCast())
  {
    v18 = *(v0 + 256);
    v19 = *(v0 + 232);
    sub_1DB4BAF74();

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459B8, &qword_1DB51C888);
  if (swift_dynamicCast())
  {
    v21 = *(v0 + 256);
    v22 = *(v0 + 240);
    sub_1DB4C3AD0();

    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    __swift_destroy_boxed_opaque_existential_0((v0 + 72));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459C0, &qword_1DB51C890);
  if (swift_dynamicCast())
  {
    *(v0 + 280) = *(v0 + 248);
    v23 = swift_task_alloc();
    *(v0 + 288) = v23;
    *v23 = v0;
    v23[1] = sub_1DB434FA4;
    v24 = *(v0 + 256);

    return sub_1DB43E090(v24);
  }

  else
  {
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1((v0 + 72), *(v0 + 96));
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52F150);
    MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
    return sub_1DB50B580();
  }
}

uint64_t sub_1DB434EB0()
{
  v1 = *(*v0 + 272);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DB434FA4()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_1DB43512C;
  }

  else
  {
    v3 = sub_1DB4350B8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4350B8()
{
  v1 = v0[35];

  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1DB43512C()
{
  v1 = v0[35];

  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  v2 = v0[37];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB4351A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB4351C0, 0, 0);
}

uint64_t sub_1DB4351C0()
{
  if (!*(*(v0 + 264) + 16) || (v1 = sub_1DB30EE50(&type metadata for InMemoryJetPackLoader), (v2 & 1) == 0))
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v7 = off_1EE30D3B0;
    v8 = *(off_1EE30D3B0 + 2);

    if (!v8)
    {
      goto LABEL_15;
    }

    v9 = 0;
    while (1)
    {
      *(v0 + 184) = v7[v9 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45978, &qword_1DB51C7D0);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 168))
        {
          break;
        }
      }

      if (v8 == ++v9)
      {
        v9 = v8;
        break;
      }
    }

    v11 = *(v7 + 2);
    if (v9 == v11)
    {
LABEL_15:
      v12 = *(v0 + 256);

      *(v12 + 32) = 0;
      *v12 = 0u;
      *(v12 + 16) = 0u;
      *(v12 + 40) = xmmword_1DB51C480;
LABEL_25:
      v20 = *(v0 + 8);

      return v20();
    }

    if (v9 >= v11)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 216) = v7[v9 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45978, &qword_1DB51C7D0);
      result = swift_dynamicCast();
      if (result)
      {
        v13 = *(v0 + 200);
        if (v13)
        {
          v14 = *(v0 + 208);

          v15 = swift_task_alloc();
          *(v0 + 272) = v15;
          *v15 = v0;
          v15[1] = sub_1DB469554;
          v16 = *(v0 + 256);
          v17 = *(v0 + 264);

          return sub_1DB37F5C0(v16, v13, v17, &type metadata for InMemoryJetPackLoader, v13, v14);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1DB300B14(*(*(v0 + 264) + 56) + 32 * v1, v0 + 104);
  sub_1DB30C200((v0 + 104), (v0 + 72));
  sub_1DB300B14(v0 + 72, v0 + 136);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 256);
    v4 = *(v0 + 16);
    v5 = *(v0 + 32);
    v6 = *(v0 + 48);
    *(v3 + 48) = *(v0 + 64);
    *(v3 + 16) = v5;
    *(v3 + 32) = v6;
    *v3 = v4;
LABEL_24:
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    __swift_destroy_boxed_opaque_existential_0((v0 + 72));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45980, &qword_1DB51C7D8);
  if (swift_dynamicCast())
  {
    v18 = *(v0 + 256);
    v19 = *(v0 + 232);
    sub_1DB4BAF94();

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45988, &qword_1DB51C7E0);
  if (swift_dynamicCast())
  {
    v21 = *(v0 + 256);
    v22 = *(v0 + 240);
    sub_1DB4C3B04();

    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    __swift_destroy_boxed_opaque_existential_0((v0 + 72));
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45990, &qword_1DB51C7E8);
  if (swift_dynamicCast())
  {
    *(v0 + 280) = *(v0 + 248);
    v23 = swift_task_alloc();
    *(v0 + 288) = v23;
    *v23 = v0;
    v23[1] = sub_1DB435764;
    v24 = *(v0 + 256);

    return sub_1DB43E398(v24);
  }

  else
  {
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1((v0 + 72), *(v0 + 96));
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000015, 0x80000001DB52F130);
    MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
    return sub_1DB50B580();
  }
}

uint64_t sub_1DB435764()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_1DB4695D0;
  }

  else
  {
    v3 = sub_1DB469580;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB435878()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v46 - v4;
  v6 = sub_1DB50A230();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  v14 = *(v1 + 16);
  os_unfair_lock_lock(v14 + 4);
  v15 = *(v1 + 24);
  if (*(v1 + 40))
  {
    v16 = *(v1 + 24);

    os_unfair_lock_unlock(v14 + 4);
    return v15;
  }

  else
  {
    v49 = v5;
    v18 = *(v1 + 32);
    v19 = qword_1EE30EAE8;
    v46 = v14;
    v47 = v18;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_1DB50A270();
    __swift_project_value_buffer(v20, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v21 = sub_1DB50A250();
    v22 = sub_1DB50B070();
    v23 = sub_1DB50B0E0();
    v48 = v15;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v50.tv_sec = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1DB3D4EE8(0xD000000000000017, 0x80000001DB52F580, &v50.tv_sec);
      v26 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v21, v22, v26, "MakeDependency", "object=%s,type=async", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1E1288220](v25, -1, -1);
      MEMORY[0x1E1288220](v24, -1, -1);
    }

    (*(v7 + 16))(v10, v13, v6);
    v27 = sub_1DB50A2C0();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = sub_1DB50A2B0();
    (*(v7 + 8))(v13, v6);
    static MonotonicTime.now.getter(&v50);
    tv_sec = v50.tv_sec;
    tv_nsec = v50.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v33 = v50.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45AE8, &qword_1DB51CCF8);
    v34 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    v36 = MEMORY[0x1E69E7CC0];
    *(v34 + 16) = v35;
    *(v34 + 24) = v36;
    *(v34 + 32) = 0;
    v37 = *(v1 + 24);
    v38 = *(v1 + 32);
    v39 = *(v1 + 40);
    *(v1 + 24) = v34;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1DB2FEB54();
    os_unfair_lock_unlock(v46 + 4);
    started = type metadata accessor for StartUpPerformanceEvent();
    v41 = sub_1DB50ABA0();
    v42 = v49;
    (*(*(v41 - 8) + 56))(v49, 1, 1, v41);
    v43 = swift_allocObject();
    swift_weakInit();
    v44 = swift_allocObject();
    v44[2] = 0;
    v44[3] = 0;
    v45 = v47;
    v44[4] = v48;
    v44[5] = v45;
    v44[6] = v1;
    v44[7] = started;
    v44[8] = tv_sec;
    v44[9] = tv_nsec;
    v44[10] = v30;
    v44[11] = v33;
    v44[12] = v34;
    v44[13] = v43;

    sub_1DB388F14(0, 0, v42, &unk_1DB51CD08, v44);

    return v34;
  }
}

uint64_t sub_1DB435D44()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v45 - v4;
  v6 = sub_1DB50A230();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = *(v1 + 16);
  os_unfair_lock_lock(v14 + 4);
  v15 = *(v1 + 24);
  if (*(v1 + 40))
  {
    v16 = *(v1 + 24);

    os_unfair_lock_unlock(v14 + 4);
    return v15;
  }

  else
  {
    v48 = v5;
    v18 = *(v1 + 32);
    v19 = qword_1EE30EAE8;
    v45 = v14;
    v46 = v18;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_1DB50A270();
    __swift_project_value_buffer(v20, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v21 = sub_1DB50A250();
    v22 = sub_1DB50B070();
    v23 = sub_1DB50B0E0();
    v47 = v15;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v49.tv_sec = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1DB3D4EE8(0x72756769666E6F43, 0xED00006E6F697461, &v49.tv_sec);
      v26 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v21, v22, v26, "MakeDependency", "object=%s,type=async", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1E1288220](v25, -1, -1);
      MEMORY[0x1E1288220](v24, -1, -1);
    }

    (*(v7 + 16))(v10, v13, v6);
    v27 = sub_1DB50A2C0();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = sub_1DB50A2B0();
    (*(v7 + 8))(v13, v6);
    static MonotonicTime.now.getter(&v49);
    tv_sec = v49.tv_sec;
    tv_nsec = v49.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v33 = v49.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A80, &qword_1DB51CB78);
    v34 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    v36 = MEMORY[0x1E69E7CC0];
    *(v34 + 16) = v35;
    *(v34 + 24) = v36;
    *(v34 + 104) = 0;
    v37 = *(v1 + 24);
    v38 = *(v1 + 32);
    v39 = *(v1 + 40);
    *(v1 + 24) = v34;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1DB2FEB54();
    os_unfair_lock_unlock(v45 + 4);
    v40 = sub_1DB50ABA0();
    v41 = v48;
    (*(*(v40 - 8) + 56))(v48, 1, 1, v40);
    v42 = swift_allocObject();
    swift_weakInit();
    v43 = swift_allocObject();
    v43[2] = 0;
    v43[3] = 0;
    v44 = v46;
    v43[4] = v47;
    v43[5] = v44;
    v43[6] = v1;
    v43[7] = &type metadata for JetPackAssetSession.Configuration;
    v43[8] = tv_sec;
    v43[9] = tv_nsec;
    v43[10] = v30;
    v43[11] = v33;
    v43[12] = v34;
    v43[13] = v42;

    sub_1DB388F14(0, 0, v41, &unk_1DB51CB88, v43);

    return v34;
  }
}

uint64_t sub_1DB436214()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v46 - v4;
  v6 = sub_1DB50A230();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  v14 = *(v1 + 16);
  os_unfair_lock_lock(v14 + 4);
  v15 = *(v1 + 24);
  if (*(v1 + 40))
  {
    v16 = *(v1 + 24);

    os_unfair_lock_unlock(v14 + 4);
    return v15;
  }

  else
  {
    v49 = v5;
    v18 = *(v1 + 32);
    v19 = qword_1EE30EAE8;
    v46 = v14;
    v47 = v18;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_1DB50A270();
    __swift_project_value_buffer(v20, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v21 = sub_1DB50A250();
    v22 = sub_1DB50B070();
    v23 = sub_1DB50B0E0();
    v48 = v15;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v50.tv_sec = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1DB3D4EE8(0xD000000000000011, 0x80000001DB52F440, &v50.tv_sec);
      v26 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v21, v22, v26, "MakeDependency", "object=%s,type=async", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1E1288220](v25, -1, -1);
      MEMORY[0x1E1288220](v24, -1, -1);
    }

    (*(v7 + 16))(v10, v13, v6);
    v27 = sub_1DB50A2C0();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = sub_1DB50A2B0();
    (*(v7 + 8))(v13, v6);
    static MonotonicTime.now.getter(&v50);
    tv_sec = v50.tv_sec;
    tv_nsec = v50.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v33 = v50.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45AB0, &qword_1DB51CBE8);
    v34 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    v36 = MEMORY[0x1E69E7CC0];
    *(v34 + 16) = v35;
    *(v34 + 24) = v36;
    *(v34 + 64) = 0;
    v37 = *(v1 + 24);
    v38 = *(v1 + 32);
    v39 = *(v1 + 40);
    *(v1 + 24) = v34;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1DB2FEB54();
    os_unfair_lock_unlock(v46 + 4);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A88, &qword_1DB51CBB0);
    v41 = sub_1DB50ABA0();
    v42 = v49;
    (*(*(v41 - 8) + 56))(v49, 1, 1, v41);
    v43 = swift_allocObject();
    swift_weakInit();
    v44 = swift_allocObject();
    v44[2] = 0;
    v44[3] = 0;
    v45 = v47;
    v44[4] = v48;
    v44[5] = v45;
    v44[6] = v1;
    v44[7] = v40;
    v44[8] = tv_sec;
    v44[9] = tv_nsec;
    v44[10] = v30;
    v44[11] = v33;
    v44[12] = v34;
    v44[13] = v43;

    sub_1DB388F14(0, 0, v42, &unk_1DB51CBF8, v44);

    return v34;
  }
}

uint64_t sub_1DB4366EC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v50[-v4];
  v6 = sub_1DB50A230();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v50[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50[-v12];
  v14 = *(v1 + 16);
  os_unfair_lock_lock(v14 + 4);
  v15 = *(v1 + 24);
  if (*(v1 + 40))
  {
    v16 = *(v1 + 24);

    os_unfair_lock_unlock(v14 + 4);
    return v15;
  }

  else
  {
    v55 = v5;
    v18 = *(v1 + 32);
    v19 = qword_1EE30EAE8;
    v52 = v14;
    v53 = v18;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_1DB50A270();
    __swift_project_value_buffer(v20, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v21 = sub_1DB50A250();
    v22 = sub_1DB50B070();
    v23 = sub_1DB50B0E0();
    v54 = v15;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v51 = v22;
      v26 = v25;
      v56.tv_sec = v25;
      *v24 = 136315138;
      sub_1DB4679C8();
      v27 = sub_1DB50BEE0();
      v29 = sub_1DB3D4EE8(v27, v28, &v56.tv_sec);

      *(v24 + 4) = v29;
      v30 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v21, v51, v30, "MakeDependency", "object=%s,type=async", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1E1288220](v26, -1, -1);
      MEMORY[0x1E1288220](v24, -1, -1);
    }

    (*(v7 + 16))(v10, v13, v6);
    v31 = sub_1DB50A2C0();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    v34 = sub_1DB50A2B0();
    (*(v7 + 8))(v13, v6);
    static MonotonicTime.now.getter(&v56);
    tv_sec = v56.tv_sec;
    tv_nsec = v56.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v37 = v56.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A00, &qword_1DB51C9E8);
    v38 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    v40 = MEMORY[0x1E69E7CC0];
    *(v38 + 16) = v39;
    *(v38 + 24) = v40;
    *(v38 + 32) = 0;
    v41 = *(v1 + 24);
    v42 = *(v1 + 32);
    v43 = *(v1 + 40);
    *(v1 + 24) = v38;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1DB2FEB54();
    os_unfair_lock_unlock(v52 + 4);
    v44 = sub_1DB4679C8();
    v45 = sub_1DB50ABA0();
    v46 = v55;
    (*(*(v45 - 8) + 56))(v55, 1, 1, v45);
    v47 = swift_allocObject();
    swift_weakInit();
    v48 = swift_allocObject();
    v48[2] = 0;
    v48[3] = 0;
    v49 = v53;
    v48[4] = v54;
    v48[5] = v49;
    v48[6] = v1;
    v48[7] = v44;
    v48[8] = tv_sec;
    v48[9] = tv_nsec;
    v48[10] = v34;
    v48[11] = v37;
    v48[12] = v38;
    v48[13] = v47;

    sub_1DB388F14(0, 0, v46, &unk_1DB51C9F8, v48);

    return v38;
  }
}

uint64_t sub_1DB436BC8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v45 - v4;
  v6 = sub_1DB50A230();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = *(v1 + 16);
  os_unfair_lock_lock(v14 + 4);
  v15 = *(v1 + 24);
  if (*(v1 + 40))
  {
    v16 = *(v1 + 24);

    os_unfair_lock_unlock(v14 + 4);
    return v15;
  }

  else
  {
    v48 = v5;
    v18 = *(v1 + 32);
    v19 = qword_1EE30EAE8;
    v45 = v14;
    v46 = v18;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_1DB50A270();
    __swift_project_value_buffer(v20, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v21 = sub_1DB50A250();
    v22 = sub_1DB50B070();
    v23 = sub_1DB50B0E0();
    v47 = v15;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v49.tv_sec = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1DB3D4EE8(6775106, 0xE300000000000000, &v49.tv_sec);
      v26 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v21, v22, v26, "MakeDependency", "object=%s,type=async", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1E1288220](v25, -1, -1);
      MEMORY[0x1E1288220](v24, -1, -1);
    }

    (*(v7 + 16))(v10, v13, v6);
    v27 = sub_1DB50A2C0();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = sub_1DB50A2B0();
    (*(v7 + 8))(v13, v6);
    static MonotonicTime.now.getter(&v49);
    tv_sec = v49.tv_sec;
    tv_nsec = v49.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v33 = v49.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
    v34 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    v36 = MEMORY[0x1E69E7CC0];
    *(v34 + 16) = v35;
    *(v34 + 24) = v36;
    *(v34 + 32) = 0;
    v37 = *(v1 + 24);
    v38 = *(v1 + 32);
    v39 = *(v1 + 40);
    *(v1 + 24) = v34;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1DB2FEB54();
    os_unfair_lock_unlock(v45 + 4);
    v40 = sub_1DB50ABA0();
    v41 = v48;
    (*(*(v40 - 8) + 56))(v48, 1, 1, v40);
    v42 = swift_allocObject();
    swift_weakInit();
    v43 = swift_allocObject();
    v43[2] = 0;
    v43[3] = 0;
    v44 = v46;
    v43[4] = v47;
    v43[5] = v44;
    v43[6] = v1;
    v43[7] = &type metadata for Bag;
    v43[8] = tv_sec;
    v43[9] = tv_nsec;
    v43[10] = v30;
    v43[11] = v33;
    v43[12] = v34;
    v43[13] = v42;

    sub_1DB388F14(0, 0, v41, &unk_1DB51CA78, v43);

    return v34;
  }
}

uint64_t sub_1DB437084()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v46 - v4;
  v6 = sub_1DB50A230();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  v14 = *(v1 + 16);
  os_unfair_lock_lock(v14 + 4);
  v15 = *(v1 + 24);
  if (*(v1 + 40))
  {
    v16 = *(v1 + 24);

    os_unfair_lock_unlock(v14 + 4);
    return v15;
  }

  else
  {
    v49 = v5;
    v18 = *(v1 + 32);
    v19 = qword_1EE30EAE8;
    v46 = v14;
    v47 = v18;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_1DB50A270();
    __swift_project_value_buffer(v20, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v21 = sub_1DB50A250();
    v22 = sub_1DB50B070();
    v23 = sub_1DB50B0E0();
    v48 = v15;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v50.tv_sec = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1DB3D4EE8(0xD000000000000013, 0x80000001DB51C550, &v50.tv_sec);
      v26 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v21, v22, v26, "MakeDependency", "object=%s,type=async", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1E1288220](v25, -1, -1);
      MEMORY[0x1E1288220](v24, -1, -1);
    }

    (*(v7 + 16))(v10, v13, v6);
    v27 = sub_1DB50A2C0();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = sub_1DB50A2B0();
    (*(v7 + 8))(v13, v6);
    static MonotonicTime.now.getter(&v50);
    tv_sec = v50.tv_sec;
    tv_nsec = v50.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v33 = v50.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A50, &qword_1DB51CAE0);
    v34 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    v36 = MEMORY[0x1E69E7CC0];
    *(v34 + 16) = v35;
    *(v34 + 24) = v36;
    *(v34 + 32) = 0;
    v37 = *(v1 + 24);
    v38 = *(v1 + 32);
    v39 = *(v1 + 40);
    *(v1 + 24) = v34;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1DB2FEB54();
    os_unfair_lock_unlock(v46 + 4);
    v40 = type metadata accessor for JetPackAssetSession();
    v41 = sub_1DB50ABA0();
    v42 = v49;
    (*(*(v41 - 8) + 56))(v49, 1, 1, v41);
    v43 = swift_allocObject();
    swift_weakInit();
    v44 = swift_allocObject();
    v44[2] = 0;
    v44[3] = 0;
    v45 = v47;
    v44[4] = v48;
    v44[5] = v45;
    v44[6] = v1;
    v44[7] = v40;
    v44[8] = tv_sec;
    v44[9] = tv_nsec;
    v44[10] = v30;
    v44[11] = v33;
    v44[12] = v34;
    v44[13] = v43;

    sub_1DB388F14(0, 0, v42, &unk_1DB51CAF0, v44);

    return v34;
  }
}

void *sub_1DB43754C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v54 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45350, &unk_1DB518F60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v54 - v8);
  v10 = sub_1DB50A230();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v54 - v16;
  v18 = *(v1 + 16);
  os_unfair_lock_lock(v18 + 4);
  v19 = *(v1 + 24);
  if (*(v1 + 40))
  {
    v20 = *(v1 + 24);

    os_unfair_lock_unlock(v18 + 4);
    return v19;
  }

  else
  {
    v57 = *(v1 + 24);
    v58 = v5;
    v22 = *(v1 + 32);
    v23 = qword_1EE30EAE8;
    v55 = v18;
    v56 = v22;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = sub_1DB50A270();
    __swift_project_value_buffer(v24, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v25 = sub_1DB50A250();
    v26 = sub_1DB50B070();
    v27 = sub_1DB50B0E0();
    v54[1] = v6;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v54[0] = v9;
      v29 = v28;
      v30 = swift_slowAlloc();
      v59.tv_sec = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1DB3D4EE8(0x416B63615074654ALL, 0xEC00000074657373, &v59.tv_sec);
      v31 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v25, v26, v31, "MakeDependency", "object=%s,type=async", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x1E1288220](v30, -1, -1);
      v32 = v29;
      v9 = v54[0];
      MEMORY[0x1E1288220](v32, -1, -1);
    }

    (*(v11 + 16))(v14, v17, v10);
    v33 = sub_1DB50A2C0();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    v36 = sub_1DB50A2B0();
    (*(v11 + 8))(v17, v10);
    static MonotonicTime.now.getter(&v59);
    tv_sec = v59.tv_sec;
    tv_nsec = v59.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v39 = v59.tv_sec;
    *v9 = MEMORY[0x1E69E7CC0];
    swift_storeEnumTagMultiPayload();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45970, &qword_1DB51C790);
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    v43 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    v43[2] = v44;
    sub_1DB30C06C(v9, v43 + *(*v43 + 96), &unk_1ECC45350, &unk_1DB518F60);
    v45 = *(v1 + 24);
    v46 = *(v1 + 32);
    v47 = *(v1 + 40);
    *(v1 + 24) = v43;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1DB2FEB54();
    os_unfair_lock_unlock(v55 + 4);
    v48 = type metadata accessor for JetPackAsset(0);
    v49 = sub_1DB50ABA0();
    v50 = v58;
    (*(*(v49 - 8) + 56))(v58, 1, 1, v49);
    v51 = swift_allocObject();
    swift_weakInit();
    v52 = swift_allocObject();
    v52[2] = 0;
    v52[3] = 0;
    v53 = v56;
    v52[4] = v57;
    v52[5] = v53;
    v52[6] = v1;
    v52[7] = v48;
    v52[8] = tv_sec;
    v52[9] = tv_nsec;
    v52[10] = v36;
    v52[11] = v39;
    v52[12] = v43;
    v52[13] = v51;

    sub_1DB388F14(0, 0, v50, &unk_1DB51C7A0, v52);

    return v43;
  }
}

uint64_t sub_1DB437AB8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v45 - v4;
  v6 = sub_1DB50A230();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = *(v1 + 16);
  os_unfair_lock_lock(v14 + 4);
  v15 = *(v1 + 24);
  if (*(v1 + 40))
  {
    v16 = *(v1 + 24);

    os_unfair_lock_unlock(v14 + 4);
    return v15;
  }

  else
  {
    v48 = v5;
    v18 = *(v1 + 32);
    v19 = qword_1EE30EAE8;
    v45 = v14;
    v46 = v18;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_1DB50A270();
    __swift_project_value_buffer(v20, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v21 = sub_1DB50A250();
    v22 = sub_1DB50B070();
    v23 = sub_1DB50B0E0();
    v47 = v15;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v49.tv_sec = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1DB3D4EE8(0xD000000000000011, 0x80000001DB52F150, &v49.tv_sec);
      v26 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v21, v22, v26, "MakeDependency", "object=%s,type=async", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1E1288220](v25, -1, -1);
      MEMORY[0x1E1288220](v24, -1, -1);
    }

    (*(v7 + 16))(v10, v13, v6);
    v27 = sub_1DB50A2C0();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = sub_1DB50A2B0();
    (*(v7 + 8))(v13, v6);
    static MonotonicTime.now.getter(&v49);
    tv_sec = v49.tv_sec;
    tv_nsec = v49.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v33 = v49.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459C8, &qword_1DB51C8A8);
    v34 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    v36 = MEMORY[0x1E69E7CC0];
    *(v34 + 16) = v35;
    *(v34 + 24) = v36;
    *(v34 + 80) = 0;
    v37 = *(v1 + 24);
    v38 = *(v1 + 32);
    v39 = *(v1 + 40);
    *(v1 + 24) = v34;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1DB2FEB54();
    os_unfair_lock_unlock(v45 + 4);
    v40 = sub_1DB50ABA0();
    v41 = v48;
    (*(*(v40 - 8) + 56))(v48, 1, 1, v40);
    v42 = swift_allocObject();
    swift_weakInit();
    v43 = swift_allocObject();
    v43[2] = 0;
    v43[3] = 0;
    v44 = v46;
    v43[4] = v47;
    v43[5] = v44;
    v43[6] = v1;
    v43[7] = &type metadata for DiskJetPackLoader;
    v43[8] = tv_sec;
    v43[9] = tv_nsec;
    v43[10] = v30;
    v43[11] = v33;
    v43[12] = v34;
    v43[13] = v42;

    sub_1DB388F14(0, 0, v41, &unk_1DB51C8B8, v43);

    return v34;
  }
}

uint64_t sub_1DB437F80()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v45 - v4;
  v6 = sub_1DB50A230();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = *(v1 + 16);
  os_unfair_lock_lock(v14 + 4);
  v15 = *(v1 + 24);
  if (*(v1 + 40))
  {
    v16 = *(v1 + 24);

    os_unfair_lock_unlock(v14 + 4);
    return v15;
  }

  else
  {
    v48 = v5;
    v18 = *(v1 + 32);
    v19 = qword_1EE30EAE8;
    v45 = v14;
    v46 = v18;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_1DB50A270();
    __swift_project_value_buffer(v20, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v21 = sub_1DB50A250();
    v22 = sub_1DB50B070();
    v23 = sub_1DB50B0E0();
    v47 = v15;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v49.tv_sec = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1DB3D4EE8(0xD000000000000015, 0x80000001DB52F130, &v49.tv_sec);
      v26 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v21, v22, v26, "MakeDependency", "object=%s,type=async", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1E1288220](v25, -1, -1);
      MEMORY[0x1E1288220](v24, -1, -1);
    }

    (*(v7 + 16))(v10, v13, v6);
    v27 = sub_1DB50A2C0();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = sub_1DB50A2B0();
    (*(v7 + 8))(v13, v6);
    static MonotonicTime.now.getter(&v49);
    tv_sec = v49.tv_sec;
    tv_nsec = v49.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v33 = v49.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45998, &qword_1DB51C800);
    v34 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    v36 = MEMORY[0x1E69E7CC0];
    *(v34 + 16) = v35;
    *(v34 + 24) = v36;
    *(v34 + 80) = 0;
    v37 = *(v1 + 24);
    v38 = *(v1 + 32);
    v39 = *(v1 + 40);
    *(v1 + 24) = v34;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;

    sub_1DB2FEB54();
    os_unfair_lock_unlock(v45 + 4);
    v40 = sub_1DB50ABA0();
    v41 = v48;
    (*(*(v40 - 8) + 56))(v48, 1, 1, v40);
    v42 = swift_allocObject();
    swift_weakInit();
    v43 = swift_allocObject();
    v43[2] = 0;
    v43[3] = 0;
    v44 = v46;
    v43[4] = v47;
    v43[5] = v44;
    v43[6] = v1;
    v43[7] = &type metadata for InMemoryJetPackLoader;
    v43[8] = tv_sec;
    v43[9] = tv_nsec;
    v43[10] = v30;
    v43[11] = v33;
    v43[12] = v34;
    v43[13] = v42;

    sub_1DB388F14(0, 0, v41, &unk_1DB51C810, v43);

    return v34;
  }
}

uint64_t sub_1DB438448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v12;
  *(v8 + 96) = v10;
  *(v8 + 112) = v11;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 56) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB438484, 0, 0);
}

uint64_t sub_1DB438484()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v1 = swift_allocObject();
  *(v0 + 136) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v9 = *(v0 + 88);
  *(v0 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  v5 = *(v0 + 72);
  *(v4 + 16) = *(v0 + 56);
  *(v4 + 32) = v5;
  *(v4 + 48) = v9;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = *(MEMORY[0x1E69E8950] + 4);
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  type metadata accessor for StartUpPerformanceEvent();
  *v7 = v0;
  v7[1] = sub_1DB43862C;

  return MEMORY[0x1EEE6DE98](v0 + 40, v0 + 48, &unk_1DB51CD18, v4, 0, 0, 0xD00000000000001FLL, 0x80000001DB52BC50);
}

uint64_t sub_1DB43862C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  v4 = *(v2 + 144);

  if (v0)
  {
    v5 = sub_1DB4387D4;
  }

  else
  {
    v5 = sub_1DB438750;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB438750()
{
  v1 = v0[17];
  v2 = v0[15];
  sub_1DB3F9A48(v0[5]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB4387D4()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + 16);
    v6 = swift_task_alloc();
    v7 = *(v0 + 56);
    *(v6 + 16) = v4;
    *(v6 + 24) = v7;
    v8 = swift_task_alloc();
    *(v8 + 16) = sub_1DB466D90;
    *(v8 + 24) = v6;

    os_unfair_lock_lock(v5 + 4);
    sub_1DB4695E8(v9);
    os_unfair_lock_unlock(v5 + 4);
  }

  v10 = *(v0 + 160);
  v11 = *(v0 + 120);
  sub_1DB3DE0C8(v10);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DB43892C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 200) = v12;
  *(v8 + 184) = v11;
  *(v8 + 168) = v10;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 136) = a5;
  *(v8 + 144) = a6;
  *(v8 + 128) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB43896C, 0, 0);
}

uint64_t sub_1DB43896C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v1 = swift_allocObject();
  *(v0 + 208) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v9 = *(v0 + 160);
  *(v0 + 120) = v1;
  v4 = swift_task_alloc();
  *(v0 + 216) = v4;
  v5 = *(v0 + 144);
  *(v4 + 16) = *(v0 + 128);
  *(v4 + 32) = v5;
  *(v4 + 48) = v9;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = *(MEMORY[0x1E69E8950] + 4);
  v7 = swift_task_alloc();
  *(v0 + 224) = v7;
  *v7 = v0;
  v7[1] = sub_1DB438B10;

  return MEMORY[0x1EEE6DE98](v0 + 16, v0 + 120, &unk_1DB51CB98, v4, 0, 0, 0xD00000000000001FLL, 0x80000001DB52BC50);
}

uint64_t sub_1DB438B10()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 232) = v0;

  v4 = *(v2 + 216);

  if (v0)
  {
    v5 = sub_1DB438CAC;
  }

  else
  {
    v5 = sub_1DB438C34;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB438C34()
{
  v1 = v0[26];
  v2 = v0[24];
  sub_1DB3FA4D8((v0 + 2));

  sub_1DB30C018((v0 + 2));
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB438CAC()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + 16);
    v6 = swift_task_alloc();
    v7 = *(v0 + 128);
    *(v6 + 16) = v4;
    *(v6 + 24) = v7;
    v8 = swift_task_alloc();
    *(v8 + 16) = sub_1DB466D90;
    *(v8 + 24) = v6;

    os_unfair_lock_lock(v5 + 4);
    sub_1DB4695E8(v9);
    os_unfair_lock_unlock(v5 + 4);
  }

  v10 = *(v0 + 232);
  v11 = *(v0 + 192);
  sub_1DB3DEA54(v10);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DB438E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = v12;
  *(v8 + 128) = v10;
  *(v8 + 144) = v11;
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 88) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB438E40, 0, 0);
}

uint64_t sub_1DB438E40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v1 = swift_allocObject();
  *(v0 + 168) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v9 = *(v0 + 120);
  *(v0 + 80) = v1;
  v4 = swift_task_alloc();
  *(v0 + 176) = v4;
  v5 = *(v0 + 104);
  *(v4 + 16) = *(v0 + 88);
  *(v4 + 32) = v5;
  *(v4 + 48) = v9;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = *(MEMORY[0x1E69E8950] + 4);
  v7 = swift_task_alloc();
  *(v0 + 184) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A88, &qword_1DB51CBB0);
  *v7 = v0;
  v7[1] = sub_1DB438FF4;

  return MEMORY[0x1EEE6DE98](v0 + 16, v0 + 80, &unk_1DB51CC08, v4, 0, 0, 0xD00000000000001FLL, 0x80000001DB52BC50);
}

uint64_t sub_1DB438FF4()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v7 = *v1;
  *(*v1 + 192) = v0;

  v4 = *(v2 + 176);

  if (v0)
  {
    v5 = sub_1DB439190;
  }

  else
  {
    v5 = sub_1DB439118;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB439118()
{
  v1 = v0[21];
  v2 = v0[19];
  sub_1DB3FA7F4((v0 + 2));

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB439190()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + 16);
    v6 = swift_task_alloc();
    v7 = *(v0 + 88);
    *(v6 + 16) = v4;
    *(v6 + 24) = v7;
    v8 = swift_task_alloc();
    *(v8 + 16) = sub_1DB466D90;
    *(v8 + 24) = v6;

    os_unfair_lock_lock(v5 + 4);
    sub_1DB4695E8(v9);
    os_unfair_lock_unlock(v5 + 4);
  }

  v10 = *(v0 + 192);
  v11 = *(v0 + 152);
  sub_1DB3DED44(v10);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DB4392E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v12;
  *(v8 + 96) = v10;
  *(v8 + 112) = v11;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 56) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB439324, 0, 0);
}

uint64_t sub_1DB439324()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v1 = swift_allocObject();
  *(v0 + 136) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v9 = *(v0 + 88);
  *(v0 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  v5 = *(v0 + 72);
  *(v4 + 16) = *(v0 + 56);
  *(v4 + 32) = v5;
  *(v4 + 48) = v9;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = *(MEMORY[0x1E69E8950] + 4);
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  sub_1DB4679C8();
  *v7 = v0;
  v7[1] = sub_1DB4394CC;

  return MEMORY[0x1EEE6DE98](v0 + 40, v0 + 48, &unk_1DB51CA08, v4, 0, 0, 0xD00000000000001FLL, 0x80000001DB52BC50);
}

uint64_t sub_1DB4394CC()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  v4 = *(v2 + 144);

  if (v0)
  {
    v5 = sub_1DB439670;
  }

  else
  {
    v5 = sub_1DB4395F0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB4395F0()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[5];
  sub_1DB3FAAEC(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB439670()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + 16);
    v6 = swift_task_alloc();
    v7 = *(v0 + 56);
    *(v6 + 16) = v4;
    *(v6 + 24) = v7;
    v8 = swift_task_alloc();
    *(v8 + 16) = sub_1DB466D90;
    *(v8 + 24) = v6;

    os_unfair_lock_lock(v5 + 4);
    sub_1DB4695E8(v9);
    os_unfair_lock_unlock(v5 + 4);
  }

  v10 = *(v0 + 160);
  v11 = *(v0 + 120);
  sub_1DB3DF034(v10);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DB4397C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v12;
  *(v8 + 96) = v10;
  *(v8 + 112) = v11;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 56) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB439804, 0, 0);
}

uint64_t sub_1DB439804()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v1 = swift_allocObject();
  *(v0 + 136) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v9 = *(v0 + 88);
  *(v0 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  v5 = *(v0 + 72);
  *(v4 + 16) = *(v0 + 56);
  *(v4 + 32) = v5;
  *(v4 + 48) = v9;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = *(MEMORY[0x1E69E8950] + 4);
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *v7 = v0;
  v7[1] = sub_1DB4399AC;

  return MEMORY[0x1EEE6DE98](v0 + 40, v0 + 48, &unk_1DB51CA88, v4, 0, 0, 0xD00000000000001FLL, 0x80000001DB52BC50);
}

uint64_t sub_1DB4399AC()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  v4 = *(v2 + 144);

  if (v0)
  {
    v5 = sub_1DB439B48;
  }

  else
  {
    v5 = sub_1DB439AD0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB439AD0()
{
  v1 = v0[17];
  v2 = v0[15];
  sub_1DB3F9794(v0[5]);

  v3 = v0[5];
  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB439B48()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + 16);
    v6 = swift_task_alloc();
    v7 = *(v0 + 56);
    *(v6 + 16) = v4;
    *(v6 + 24) = v7;
    v8 = swift_task_alloc();
    *(v8 + 16) = sub_1DB466D90;
    *(v8 + 24) = v6;

    os_unfair_lock_lock(v5 + 4);
    sub_1DB4695E8(v9);
    os_unfair_lock_unlock(v5 + 4);
  }

  v10 = *(v0 + 160);
  v11 = *(v0 + 120);
  sub_1DB3DDDFC(v10);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DB439CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v12;
  *(v8 + 96) = v10;
  *(v8 + 112) = v11;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 56) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB439CDC, 0, 0);
}

uint64_t sub_1DB439CDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v1 = swift_allocObject();
  *(v0 + 136) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v9 = *(v0 + 88);
  *(v0 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  v5 = *(v0 + 72);
  *(v4 + 16) = *(v0 + 56);
  *(v4 + 32) = v5;
  *(v4 + 48) = v9;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = *(MEMORY[0x1E69E8950] + 4);
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  type metadata accessor for JetPackAssetSession();
  *v7 = v0;
  v7[1] = sub_1DB439E80;

  return MEMORY[0x1EEE6DE98](v0 + 40, v0 + 48, &unk_1DB51CB00, v4, 0, 0, 0xD00000000000001FLL, 0x80000001DB52BC50);
}

uint64_t sub_1DB439E80()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  v4 = *(v2 + 144);

  if (v0)
  {
    v5 = sub_1DB43A028;
  }

  else
  {
    v5 = sub_1DB439FA4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB439FA4()
{
  v1 = v0[17];
  v2 = v0[15];
  sub_1DB3FAB1C(v0[5]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB43A028()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + 16);
    v6 = swift_task_alloc();
    v7 = *(v0 + 56);
    *(v6 + 16) = v4;
    *(v6 + 24) = v7;
    v8 = swift_task_alloc();
    *(v8 + 16) = sub_1DB466D90;
    *(v8 + 24) = v6;

    os_unfair_lock_lock(v5 + 4);
    sub_1DB4695E8(v9);
    os_unfair_lock_unlock(v5 + 4);
  }

  v10 = *(v0 + 160);
  v11 = *(v0 + 120);
  sub_1DB3DF064(v10);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DB43A180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v15;
  *(v8 + 104) = v14;
  *(v8 + 88) = v13;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 48) = a4;
  v9 = type metadata accessor for JetPackAsset(0);
  *(v8 + 128) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB43A234, 0, 0);
}

uint64_t sub_1DB43A234()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v1 = swift_allocObject();
  *(v0 + 144) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v10 = *(v0 + 80);
  *(v0 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  v5 = *(v0 + 64);
  *(v4 + 16) = *(v0 + 48);
  *(v4 + 32) = v5;
  *(v4 + 48) = v10;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = *(MEMORY[0x1E69E8950] + 4);
  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  *v7 = v0;
  v7[1] = sub_1DB43A3D0;
  v8 = *(v0 + 136);
  v12 = *(v0 + 128);

  return MEMORY[0x1EEE6DE98](v8, v0 + 40, &unk_1DB51C7B8, v4, 0, 0, 0xD00000000000001FLL, 0x80000001DB52BC50);
}

uint64_t sub_1DB43A3D0()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  v4 = *(v2 + 152);

  if (v0)
  {
    v5 = sub_1DB43A590;
  }

  else
  {
    v5 = sub_1DB43A4F4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB43A4F4()
{
  v1 = v0[17];
  v2 = v0[14];
  sub_1DB3FADB8(v1);

  sub_1DB467374(v1, type metadata accessor for JetPackAsset);
  v3 = v0[17];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB43A590()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + 16);
    v6 = swift_task_alloc();
    v7 = *(v0 + 48);
    *(v6 + 16) = v4;
    *(v6 + 24) = v7;
    v8 = swift_task_alloc();
    *(v8 + 16) = sub_1DB466D90;
    *(v8 + 24) = v6;

    os_unfair_lock_lock(v5 + 4);
    sub_1DB466DBC(v9);
    os_unfair_lock_unlock(v5 + 4);
  }

  v10 = *(v0 + 168);
  v11 = *(v0 + 112);
  sub_1DB3DF318(v10);

  v12 = *(v0 + 136);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1DB43A6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 176) = v12;
  *(v8 + 144) = v10;
  *(v8 + 160) = v11;
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 104) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB43A730, 0, 0);
}

uint64_t sub_1DB43A730()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v1 = swift_allocObject();
  *(v0 + 184) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v9 = *(v0 + 136);
  *(v0 + 96) = v1;
  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  v5 = *(v0 + 120);
  *(v4 + 16) = *(v0 + 104);
  *(v4 + 32) = v5;
  *(v4 + 48) = v9;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = *(MEMORY[0x1E69E8950] + 4);
  v7 = swift_task_alloc();
  *(v0 + 200) = v7;
  *v7 = v0;
  v7[1] = sub_1DB43A8D8;

  return MEMORY[0x1EEE6DE98](v0 + 16, v0 + 96, &unk_1DB51C8C8, v4, 0, 0, 0xD00000000000001FLL, 0x80000001DB52BC50);
}

uint64_t sub_1DB43A8D8()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  v4 = *(v2 + 192);

  if (v0)
  {
    v5 = sub_1DB43AA74;
  }

  else
  {
    v5 = sub_1DB43A9FC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB43A9FC()
{
  v1 = v0[23];
  v2 = v0[21];
  sub_1DB3FB28C((v0 + 2));

  sub_1DB30BFC4((v0 + 2));
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB43AA74()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + 16);
    v6 = swift_task_alloc();
    v7 = *(v0 + 104);
    *(v6 + 16) = v4;
    *(v6 + 24) = v7;
    v8 = swift_task_alloc();
    *(v8 + 16) = sub_1DB466D90;
    *(v8 + 24) = v6;

    os_unfair_lock_lock(v5 + 4);
    sub_1DB4695E8(v9);
    os_unfair_lock_unlock(v5 + 4);
  }

  v10 = *(v0 + 208);
  v11 = *(v0 + 168);
  sub_1DB3DF6D8(v10);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DB43ABCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 176) = v12;
  *(v8 + 144) = v10;
  *(v8 + 160) = v11;
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 104) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB43AC08, 0, 0);
}

uint64_t sub_1DB43AC08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v1 = swift_allocObject();
  *(v0 + 184) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v9 = *(v0 + 136);
  *(v0 + 96) = v1;
  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  v5 = *(v0 + 120);
  *(v4 + 16) = *(v0 + 104);
  *(v4 + 32) = v5;
  *(v4 + 48) = v9;
  *(v4 + 64) = v3;
  *(v4 + 72) = v1;
  *(v4 + 80) = v2;
  v6 = *(MEMORY[0x1E69E8950] + 4);
  v7 = swift_task_alloc();
  *(v0 + 200) = v7;
  *v7 = v0;
  v7[1] = sub_1DB43ADB0;

  return MEMORY[0x1EEE6DE98](v0 + 16, v0 + 96, &unk_1DB51C820, v4, 0, 0, 0xD00000000000001FLL, 0x80000001DB52BC50);
}

uint64_t sub_1DB43ADB0()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  v4 = *(v2 + 192);

  if (v0)
  {
    v5 = sub_1DB43AF4C;
  }

  else
  {
    v5 = sub_1DB43AED4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB43AED4()
{
  v1 = v0[23];
  v2 = v0[21];
  sub_1DB3FB5A8((v0 + 2));

  sub_1DB30BF70((v0 + 2));
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB43AF4C()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + 16);
    v6 = swift_task_alloc();
    v7 = *(v0 + 104);
    *(v6 + 16) = v4;
    *(v6 + 24) = v7;
    v8 = swift_task_alloc();
    *(v8 + 16) = sub_1DB466D90;
    *(v8 + 24) = v6;

    os_unfair_lock_lock(v5 + 4);
    sub_1DB4695E8(v9);
    os_unfair_lock_unlock(v5 + 4);
  }

  v10 = *(v0 + 208);
  v11 = *(v0 + 168);
  sub_1DB3DF9C8(v10);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DB43B0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v22;
  v8[6] = a6;
  v8[7] = a7;
  v8[5] = a5;
  v13 = sub_1DB50A280();
  v8[10] = v13;
  v14 = *(v13 - 8);
  v8[11] = v14;
  v15 = *(v14 + 64) + 15;
  v8[12] = swift_task_alloc();
  v16 = sub_1DB50A230();
  v8[13] = v16;
  v17 = *(v16 - 8);
  v8[14] = v17;
  v18 = *(v17 + 64) + 15;
  v8[15] = swift_task_alloc();
  v19 = swift_task_alloc();
  v8[16] = v19;
  *v19 = v8;
  v19[1] = sub_1DB43B23C;

  return sub_1DB42EF38(a1, a2, a3, a4);
}

uint64_t sub_1DB43B23C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[16];
  v6 = *v2;

  if (v1)
  {
    v7 = v4[15];
    v8 = v4[12];

    v9 = v6[1];

    return v9();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB4695C0, 0, 0);
  }
}

uint64_t sub_1DB43B39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v8;
  v13[5] = v24;
  v13[6] = v25;
  v13[3] = a7;
  v13[4] = a8;
  v13[2] = a6;
  v15 = sub_1DB50A280();
  v13[7] = v15;
  v16 = *(v15 - 8);
  v13[8] = v16;
  v17 = *(v16 + 64) + 15;
  v13[9] = swift_task_alloc();
  v18 = sub_1DB50A230();
  v13[10] = v18;
  v19 = *(v18 - 8);
  v13[11] = v19;
  v20 = *(v19 + 64) + 15;
  v13[12] = swift_task_alloc();
  v21 = swift_task_alloc();
  v13[13] = v21;
  *v21 = v13;
  v21[1] = sub_1DB43B548;

  return sub_1DB42F224(a1, a2, a3, a4, a5);
}

uint64_t sub_1DB43B548()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 96);
    v6 = *(v2 + 72);

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB4695E0, 0, 0);
  }
}

uint64_t sub_1DB43B6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v8;
  v13[5] = v24;
  v13[6] = v25;
  v13[3] = a7;
  v13[4] = a8;
  v13[2] = a6;
  v15 = sub_1DB50A280();
  v13[7] = v15;
  v16 = *(v15 - 8);
  v13[8] = v16;
  v17 = *(v16 + 64) + 15;
  v13[9] = swift_task_alloc();
  v18 = sub_1DB50A230();
  v13[10] = v18;
  v19 = *(v18 - 8);
  v13[11] = v19;
  v20 = *(v19 + 64) + 15;
  v13[12] = swift_task_alloc();
  v21 = swift_task_alloc();
  v13[13] = v21;
  *v21 = v13;
  v21[1] = sub_1DB43B548;

  return sub_1DB42F534(a1, a2, a3, a4, a5);
}

uint64_t sub_1DB43B84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v22;
  v8[6] = a6;
  v8[7] = a7;
  v8[5] = a5;
  v13 = sub_1DB50A280();
  v8[10] = v13;
  v14 = *(v13 - 8);
  v8[11] = v14;
  v15 = *(v14 + 64) + 15;
  v8[12] = swift_task_alloc();
  v16 = sub_1DB50A230();
  v8[13] = v16;
  v17 = *(v16 - 8);
  v8[14] = v17;
  v18 = *(v17 + 64) + 15;
  v8[15] = swift_task_alloc();
  v19 = swift_task_alloc();
  v8[16] = v19;
  *v19 = v8;
  v19[1] = sub_1DB43B23C;

  return sub_1DB42F704(a1, a2, a3, a4);
}

uint64_t sub_1DB43B9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v22;
  v8[8] = v23;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a1;
  v8[4] = a6;
  v13 = sub_1DB50A280();
  v8[9] = v13;
  v14 = *(v13 - 8);
  v8[10] = v14;
  v15 = *(v14 + 64) + 15;
  v8[11] = swift_task_alloc();
  v16 = sub_1DB50A230();
  v8[12] = v16;
  v17 = *(v16 - 8);
  v8[13] = v17;
  v18 = *(v17 + 64) + 15;
  v8[14] = swift_task_alloc();
  v19 = swift_task_alloc();
  v8[15] = v19;
  *v19 = v8;
  v19[1] = sub_1DB43BB84;

  return sub_1DB42F8C0((v8 + 2), a2, a3, a4, a5);
}

uint64_t sub_1DB43BB84()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1DB38A280;
  }

  else
  {
    v3 = sub_1DB43BC98;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB43BC98()
{
  v32 = v0;
  static MonotonicTime.now.getter(&v31);
  tv_sec = v31.tv_sec;
  tv_nsec = v31.tv_nsec;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v3 = tv_nsec / *&qword_1EE30ED50 + tv_sec;
  v4 = v0[5] / *&qword_1EE30ED50 + v0[4];
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v5 = v3 - v4;
  v6 = v0[14];
  v8 = v0[6];
  v7 = v0[7];
  v9 = sub_1DB50A270();
  __swift_project_value_buffer(v9, qword_1EE312DE8);

  v10 = sub_1DB50A250();
  sub_1DB50A2A0();
  v11 = sub_1DB50B060();

  if (sub_1DB50B0E0())
  {
    v13 = v0[10];
    v12 = v0[11];
    v14 = v0[9];
    v15 = v0[6];

    sub_1DB50A2D0();

    if ((*(v13 + 88))(v12, v14) == *MEMORY[0x1E69E93E8])
    {
      v16 = 0;
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[10] + 8))(v0[11], v0[9]);
      v17 = "selfTime=%f";
      v16 = 1;
    }

    v18 = v0[14];
    v19 = v0[7];
    v20 = swift_slowAlloc();
    *v20 = 0;
    *(v20 + 1) = v16;
    *(v20 + 2) = 2048;
    os_unfair_lock_lock((v19 + 24));
    v21 = *(v19 + 16);
    os_unfair_lock_unlock((v19 + 24));
    *(v20 + 4) = v5 - v21;
    v22 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v10, v11, v22, "MakeDependency", v17, v20, 0xCu);
    MEMORY[0x1E1288220](v20, -1, -1);
  }

  v24 = v0[13];
  v23 = v0[14];
  v26 = v0[11];
  v25 = v0[12];
  v27 = v0[8];
  v28 = v0[3];

  (*(v24 + 8))(v23, v25);
  os_unfair_lock_lock((v27 + 24));
  *(v27 + 16) = v5 + *(v27 + 16);
  os_unfair_lock_unlock((v27 + 24));
  *v28 = v0[2];

  v29 = v0[1];

  return v29();
}

uint64_t sub_1DB43BF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v22;
  v8[6] = a6;
  v8[7] = a7;
  v8[5] = a5;
  v13 = sub_1DB50A280();
  v8[10] = v13;
  v14 = *(v13 - 8);
  v8[11] = v14;
  v15 = *(v14 + 64) + 15;
  v8[12] = swift_task_alloc();
  v16 = sub_1DB50A230();
  v8[13] = v16;
  v17 = *(v16 - 8);
  v8[14] = v17;
  v18 = *(v17 + 64) + 15;
  v8[15] = swift_task_alloc();
  v19 = swift_task_alloc();
  v8[16] = v19;
  *v19 = v8;
  v19[1] = sub_1DB43C108;

  return sub_1DB42FA80(a1, a2, a3, a4);
}

uint64_t sub_1DB43C108(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[16];
  v6 = *v2;

  if (v1)
  {
    v7 = v4[15];
    v8 = v4[12];

    v9 = v6[1];

    return v9();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB43C268, 0, 0);
  }
}

uint64_t sub_1DB43C268()
{
  v32 = v0;
  static MonotonicTime.now.getter(&v31);
  tv_sec = v31.tv_sec;
  tv_nsec = v31.tv_nsec;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v3 = tv_nsec / *&qword_1EE30ED50 + tv_sec;
  v4 = v0[6] / *&qword_1EE30ED50 + v0[5];
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v5 = v3 - v4;
  v6 = v0[15];
  v8 = v0[7];
  v7 = v0[8];
  v9 = sub_1DB50A270();
  __swift_project_value_buffer(v9, qword_1EE312DE8);

  v10 = sub_1DB50A250();
  sub_1DB50A2A0();
  v11 = sub_1DB50B060();

  if (sub_1DB50B0E0())
  {
    v13 = v0[11];
    v12 = v0[12];
    v14 = v0[10];
    v15 = v0[7];

    sub_1DB50A2D0();

    if ((*(v13 + 88))(v12, v14) == *MEMORY[0x1E69E93E8])
    {
      v16 = 0;
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[11] + 8))(v0[12], v0[10]);
      v17 = "selfTime=%f";
      v16 = 1;
    }

    v18 = v0[15];
    v19 = v0[8];
    v20 = swift_slowAlloc();
    *v20 = 0;
    *(v20 + 1) = v16;
    *(v20 + 2) = 2048;
    os_unfair_lock_lock((v19 + 24));
    v21 = *(v19 + 16);
    os_unfair_lock_unlock((v19 + 24));
    *(v20 + 4) = v5 - v21;
    v22 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v10, v11, v22, "MakeDependency", v17, v20, 0xCu);
    MEMORY[0x1E1288220](v20, -1, -1);
  }

  v23 = v0[3];
  v25 = v0[14];
  v24 = v0[15];
  v27 = v0[12];
  v26 = v0[13];
  v28 = v0[9];

  (*(v25 + 8))(v24, v26);
  os_unfair_lock_lock((v28 + 24));
  *(v28 + 16) = v5 + *(v28 + 16);
  os_unfair_lock_unlock((v28 + 24));

  v29 = v0[1];

  return v29(v23);
}

uint64_t sub_1DB43C53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v8;
  v13[5] = v24;
  v13[6] = v25;
  v13[3] = a7;
  v13[4] = a8;
  v13[2] = a6;
  v15 = sub_1DB50A280();
  v13[7] = v15;
  v16 = *(v15 - 8);
  v13[8] = v16;
  v17 = *(v16 + 64) + 15;
  v13[9] = swift_task_alloc();
  v18 = sub_1DB50A230();
  v13[10] = v18;
  v19 = *(v18 - 8);
  v13[11] = v19;
  v20 = *(v19 + 64) + 15;
  v13[12] = swift_task_alloc();
  v21 = swift_task_alloc();
  v13[13] = v21;
  *v21 = v13;
  v21[1] = sub_1DB43B548;

  return sub_1DB42FD68(a1, a2, a3, a4, a5);
}

uint64_t sub_1DB43C6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v8;
  v13[5] = v24;
  v13[6] = v25;
  v13[3] = a7;
  v13[4] = a8;
  v13[2] = a6;
  v15 = sub_1DB50A280();
  v13[7] = v15;
  v16 = *(v15 - 8);
  v13[8] = v16;
  v17 = *(v16 + 64) + 15;
  v13[9] = swift_task_alloc();
  v18 = sub_1DB50A230();
  v13[10] = v18;
  v19 = *(v18 - 8);
  v13[11] = v19;
  v20 = *(v19 + 64) + 15;
  v13[12] = swift_task_alloc();
  v21 = swift_task_alloc();
  v13[13] = v21;
  *v21 = v13;
  v21[1] = sub_1DB43C894;

  return sub_1DB42FF2C(a1, a2, a3, a4, a5);
}

uint64_t sub_1DB43C894()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 96);
    v6 = *(v2 + 72);

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB43C9EC, 0, 0);
  }
}

uint64_t sub_1DB43C9EC()
{
  v31 = v0;
  static MonotonicTime.now.getter(&v30);
  tv_sec = v30.tv_sec;
  tv_nsec = v30.tv_nsec;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v3 = tv_nsec / *&qword_1EE30ED50 + tv_sec;
  v4 = v0[3] / *&qword_1EE30ED50 + v0[2];
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v5 = v3 - v4;
  v6 = v0[12];
  v8 = v0[4];
  v7 = v0[5];
  v9 = sub_1DB50A270();
  __swift_project_value_buffer(v9, qword_1EE312DE8);

  v10 = sub_1DB50A250();
  sub_1DB50A2A0();
  v11 = sub_1DB50B060();

  if (sub_1DB50B0E0())
  {
    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[7];
    v15 = v0[4];

    sub_1DB50A2D0();

    if ((*(v13 + 88))(v12, v14) == *MEMORY[0x1E69E93E8])
    {
      v16 = 0;
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[8] + 8))(v0[9], v0[7]);
      v17 = "selfTime=%f";
      v16 = 1;
    }

    v18 = v0[12];
    v19 = v0[5];
    v20 = swift_slowAlloc();
    *v20 = 0;
    *(v20 + 1) = v16;
    *(v20 + 2) = 2048;
    os_unfair_lock_lock((v19 + 24));
    v21 = *(v19 + 16);
    os_unfair_lock_unlock((v19 + 24));
    *(v20 + 4) = v5 - v21;
    v22 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v10, v11, v22, "MakeDependency", v17, v20, 0xCu);
    MEMORY[0x1E1288220](v20, -1, -1);
  }

  v24 = v0[11];
  v23 = v0[12];
  v26 = v0[9];
  v25 = v0[10];
  v27 = v0[6];

  (*(v24 + 8))(v23, v25);
  os_unfair_lock_lock((v27 + 24));
  *(v27 + 16) = v5 + *(v27 + 16);
  os_unfair_lock_unlock((v27 + 24));

  v28 = v0[1];

  return v28();
}

uint64_t sub_1DB43CCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v8;
  v13[5] = v24;
  v13[6] = v25;
  v13[3] = a7;
  v13[4] = a8;
  v13[2] = a6;
  v15 = sub_1DB50A280();
  v13[7] = v15;
  v16 = *(v15 - 8);
  v13[8] = v16;
  v17 = *(v16 + 64) + 15;
  v13[9] = swift_task_alloc();
  v18 = sub_1DB50A230();
  v13[10] = v18;
  v19 = *(v18 - 8);
  v13[11] = v19;
  v20 = *(v19 + 64) + 15;
  v13[12] = swift_task_alloc();
  v21 = swift_task_alloc();
  v13[13] = v21;
  *v21 = v13;
  v21[1] = sub_1DB43B548;

  return sub_1DB43023C(a1, a2, a3, a4, a5);
}

uint64_t sub_1DB43CE84()
{
  v4 = v0;
  v3.i64[0] = *(v0 + 168);
  v3.i64[1] = type metadata accessor for StartUpPerformanceEvent();
  sub_1DB330884(&v3);
  v1 = *(v0 + 168);
  *(v0 + 176) = sub_1DB435878();

  return MEMORY[0x1EEE6DFA0](sub_1DB43CF50, 0, 0);
}

uint64_t sub_1DB43CF50()
{
  v1 = v0 + 2;
  v2 = v0[22];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1DB43D01C;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1DB309F2C(v3);
  sub_1DB30623C(v3, &qword_1ECC428B0, &qword_1DB51CCF0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB43D01C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 184) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1DB4695CC, 0, 0);
  }

  else
  {
    v4 = *(v1 + 176);

    v5 = *(v1 + 160);
    v6 = *(v2 + 8);

    return v6(v5);
  }
}

uint64_t sub_1DB43D170(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB43D190, 0, 0);
}

uint64_t sub_1DB43D190()
{
  v4 = v0;
  v3.i64[0] = *(v0 + 168);
  v3.i64[1] = &type metadata for JetPackAssetSession.Configuration;
  sub_1DB330884(&v3);
  v1 = *(v0 + 168);
  *(v0 + 176) = sub_1DB435D44();

  return MEMORY[0x1EEE6DFA0](sub_1DB43D25C, 0, 0);
}

uint64_t sub_1DB43D25C()
{
  v1 = v0 + 2;
  v2 = v0[22];
  v3 = v0[20];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_1DB43D328;
  v0[10] = swift_continuation_init();
  v4 = (v0 + 10);
  *(v4 + 72) = 1;
  sub_1DB30A780(v4);
  sub_1DB30623C(v4, &unk_1ECC42B90, &qword_1DB50F290);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB43D328()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 184) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1DB4695CC, 0, 0);
  }

  else
  {
    v4 = *(v1 + 176);

    v5 = *(v2 + 8);

    return v5();
  }
}

uint64_t sub_1DB43D478(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB43D498, 0, 0);
}

uint64_t sub_1DB43D498()
{
  v4 = v0;
  v3.i64[0] = *(v0 + 168);
  v3.i64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A88, &qword_1DB51CBB0);
  sub_1DB330884(&v3);
  v1 = *(v0 + 168);
  *(v0 + 176) = sub_1DB436214();

  return MEMORY[0x1EEE6DFA0](sub_1DB43D570, 0, 0);
}

uint64_t sub_1DB43D570()
{
  v1 = v0 + 2;
  v2 = v0[22];
  v3 = v0[20];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_1DB43D328;
  v0[10] = swift_continuation_init();
  v4 = (v0 + 10);
  *(v4 + 72) = 1;
  sub_1DB30A960(v4);
  sub_1DB30623C(v4, &unk_1ECC42BA0, &qword_1DB50F2A0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB43D65C()
{
  v4 = v0;
  v3.i64[0] = *(v0 + 168);
  v3.i64[1] = sub_1DB4679C8();
  sub_1DB330884(&v3);
  v1 = *(v0 + 168);
  *(v0 + 176) = sub_1DB4366EC();

  return MEMORY[0x1EEE6DFA0](sub_1DB43D728, 0, 0);
}

uint64_t sub_1DB43D728()
{
  v1 = v0 + 2;
  v2 = v0[22];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1DB43D01C;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1DB30AB2C(v3);
  sub_1DB30623C(v3, &unk_1ECC44FF0, &qword_1DB50F270);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB43D7F4(uint64_t a1)
{
  *(v2 + 168) = a1;
  *(v2 + 176) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB43D814, 0, 0);
}

uint64_t sub_1DB43D814()
{
  v4 = v0;
  v3.i64[0] = *(v0 + 176);
  v3.i64[1] = &type metadata for Bag;
  sub_1DB330884(&v3);
  v1 = *(v0 + 176);
  *(v0 + 184) = sub_1DB436BC8();

  return MEMORY[0x1EEE6DFA0](sub_1DB43D8E0, 0, 0);
}

uint64_t sub_1DB43D8E0()
{
  v1 = v0 + 2;
  v2 = v0[23];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1DB43D9AC;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1DB309848(v3);
  sub_1DB30623C(v3, &qword_1ECC428C0, &unk_1DB50F6F0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB43D9AC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 192) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1DB43DB08, 0, 0);
  }

  else
  {
    v4 = v1[23];
    v5 = v1[21];

    *v5 = v1[20];
    v6 = v2[1];

    return v6();
  }
}

uint64_t sub_1DB43DB08()
{
  v1 = v0[23];

  v2 = v0[24];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB43DB8C()
{
  v4 = v0;
  v3.i64[0] = *(v0 + 168);
  v3.i64[1] = type metadata accessor for JetPackAssetSession();
  sub_1DB330884(&v3);
  v1 = *(v0 + 168);
  *(v0 + 176) = sub_1DB437084();

  return MEMORY[0x1EEE6DFA0](sub_1DB43DC54, 0, 0);
}

uint64_t sub_1DB43DC54()
{
  v1 = v0 + 2;
  v2 = v0[22];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1DB43DD20;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1DB30ACE0(v3);
  sub_1DB30623C(v3, &unk_1ECC42B80, &qword_1DB50F280);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB43DD20()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 184) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1DB43DE74, 0, 0);
  }

  else
  {
    v4 = *(v1 + 176);

    v5 = *(v1 + 160);
    v6 = *(v2 + 8);

    return v6(v5);
  }
}

uint64_t sub_1DB43DE74()
{
  v1 = v0[22];

  v2 = v0[23];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB43DED8(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB43DEF8, 0, 0);
}

uint64_t sub_1DB43DEF8()
{
  v4 = v0;
  v3.i64[0] = *(v0 + 168);
  v3.i64[1] = type metadata accessor for JetPackAsset(0);
  sub_1DB330884(&v3);
  v1 = *(v0 + 168);
  *(v0 + 176) = sub_1DB43754C();

  return MEMORY[0x1EEE6DFA0](sub_1DB43DFC4, 0, 0);
}

uint64_t sub_1DB43DFC4()
{
  v1 = v0 + 2;
  v2 = v0[22];
  v3 = v0[20];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_1DB43D328;
  v0[10] = swift_continuation_init();
  v4 = (v0 + 10);
  *(v4 + 72) = 1;
  sub_1DB30AEE4(v4);
  sub_1DB30623C(v4, &unk_1ECC42B50, &qword_1DB50F240);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB43E090(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB43E0B0, 0, 0);
}

uint64_t sub_1DB43E0B0()
{
  v4 = v0;
  v3.i64[0] = *(v0 + 168);
  v3.i64[1] = &type metadata for DiskJetPackLoader;
  sub_1DB330884(&v3);
  v1 = *(v0 + 168);
  *(v0 + 176) = sub_1DB437AB8();

  return MEMORY[0x1EEE6DFA0](sub_1DB43E17C, 0, 0);
}

uint64_t sub_1DB43E17C()
{
  v1 = v0 + 2;
  v2 = v0[22];
  v3 = v0[20];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_1DB43E248;
  v0[10] = swift_continuation_init();
  v4 = (v0 + 10);
  *(v4 + 72) = 1;
  sub_1DB30B1C0(v4);
  sub_1DB30623C(v4, &unk_1ECC42B70, &qword_1DB50F260);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB43E248()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 184) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1DB43DE74, 0, 0);
  }

  else
  {
    v4 = *(v1 + 176);

    v5 = *(v2 + 8);

    return v5();
  }
}

uint64_t sub_1DB43E398(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB43E3B8, 0, 0);
}

uint64_t sub_1DB43E3B8()
{
  v4 = v0;
  v3.i64[0] = *(v0 + 168);
  v3.i64[1] = &type metadata for InMemoryJetPackLoader;
  sub_1DB330884(&v3);
  v1 = *(v0 + 168);
  *(v0 + 176) = sub_1DB437F80();

  return MEMORY[0x1EEE6DFA0](sub_1DB43E484, 0, 0);
}

uint64_t sub_1DB43E484()
{
  v1 = v0 + 2;
  v2 = v0[22];
  v3 = v0[20];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_1DB43D328;
  v0[10] = swift_continuation_init();
  v4 = (v0 + 10);
  *(v4 + 72) = 1;
  sub_1DB30B3A0(v4);
  sub_1DB30623C(v4, &unk_1ECC42B60, &qword_1DB50F250);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB43E570()
{
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v0[3] = v0[4];
  v1 = *(MEMORY[0x1E69E8950] + 4);
  v2 = swift_task_alloc();
  v0[5] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45AC0, &qword_1DB51CCB8);
  *v2 = v0;
  v2[1] = sub_1DB43E6B0;
  v3 = v0[4];

  return MEMORY[0x1EEE6DE98](v0 + 2, v0 + 3, &unk_1DB51CCB0, v3, 0, 0, 0xD00000000000001DLL, 0x80000001DB52D7F0);
}

uint64_t sub_1DB43E6B0()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB469588, 0, 0);
  }

  else
  {
    v4 = v3[2];
    v5 = v3[1];

    return v5(v4);
  }
}

uint64_t sub_1DB43E808()
{
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v0[3] = v0[4];
  v1 = *(MEMORY[0x1E69E8950] + 4);
  v2 = swift_task_alloc();
  v0[5] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC459D8, &qword_1DB51C9A8);
  *v2 = v0;
  v2[1] = sub_1DB43E6B0;
  v3 = v0[4];

  return MEMORY[0x1EEE6DE98](v0 + 2, v0 + 3, &unk_1DB51C9A0, v3, 0, 0, 0xD00000000000001DLL, 0x80000001DB52D7F0);
}

uint64_t sub_1DB43E968()
{
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v0[3] = v0[4];
  v1 = *(MEMORY[0x1E69E8950] + 4);
  v2 = swift_task_alloc();
  v0[5] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A40, &qword_1DB51CAB8);
  *v2 = v0;
  v2[1] = sub_1DB43EAA8;
  v3 = v0[4];

  return MEMORY[0x1EEE6DE98](v0 + 2, v0 + 3, &unk_1DB51CAB0, v3, 0, 0, 0xD00000000000001DLL, 0x80000001DB52D7F0);
}

uint64_t sub_1DB43EAA8()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB4092E0, 0, 0);
  }

  else
  {
    v4 = v3[2];
    v5 = v3[1];

    return v5(v4);
  }
}

unint64_t sub_1DB43EBE0()
{
  sub_1DB50B320();

  v26[0] = 0xD000000000000024;
  v26[1] = 0x80000001DB52F3D0;
  swift_beginAccess();
  v1 = v0[3];
  v2 = v0[4];

  MEMORY[0x1E1285C70](v1, v2);

  MEMORY[0x1E1285C70](11810, 0xE200000000000000);
  v27 = 0xD000000000000024;
  v28 = 0x80000001DB52F3D0;
  v3 = v0[2];
  if (*(sub_1DB4303FC(v3) + 16))
  {
    v26[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45680, &qword_1DB51C740);
    sub_1DB41114C();
    v4 = sub_1DB50A5E0();
    v6 = v5;

    sub_1DB50B320();

    strcpy(v26, " Did you mean ");
    HIBYTE(v26[1]) = -18;
    MEMORY[0x1E1285C70](v4, v6);

    MEMORY[0x1E1285C70](63, 0xE100000000000000);
    MEMORY[0x1E1285C70](v26[0], v26[1]);

    MEMORY[0x1E1285C70](0xD000000000000034, 0x80000001DB52D830);
    MEMORY[0x1E1285C70](0xD000000000000023, 0x80000001DB52D870);
    return v27;
  }

  v7 = *(v3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = sub_1DB324338(*(v3 + 16), 0);
  v10 = sub_1DB324740(v26, v9 + 4, v7, v3);

  sub_1DB2FEA60();
  if (v10 != v7)
  {
    __break(1u);
LABEL_6:
    v9 = v8;
  }

  v26[0] = v9;

  sub_1DB4102CC(v26);

  v11 = v26[0];
  v12 = *(v26[0] + 2);
  if (v12)
  {
    sub_1DB34130C(0, v12, 0);
    v13 = 32;
    v14 = v8;
    do
    {
      v15 = *&v11[v13];
      v26[0] = 60;
      v26[1] = 0xE100000000000000;
      v16 = sub_1DB50BEE0();
      MEMORY[0x1E1285C70](v16);

      MEMORY[0x1E1285C70](62, 0xE100000000000000);
      v17 = v26[0];
      v18 = v26[1];
      v20 = *(v14 + 2);
      v19 = *(v14 + 3);
      if (v20 >= v19 >> 1)
      {
        sub_1DB34130C((v19 > 1), v20 + 1, 1);
      }

      *(v14 + 2) = v20 + 1;
      v21 = &v14[16 * v20];
      *(v21 + 4) = v17;
      *(v21 + 5) = v18;
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v26[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
  sub_1DB367EE0(&qword_1EE30C840, &qword_1ECC43100, &unk_1DB511B70);
  v22 = sub_1DB50A5E0();
  v24 = v23;

  strcpy(v26, " Candidates: ");
  HIWORD(v26[1]) = -4864;
  MEMORY[0x1E1285C70](v22, v24);

  MEMORY[0x1E1285C70](v26[0], v26[1]);

  return v27;
}

unint64_t sub_1DB43F02C()
{
  sub_1DB50B320();

  v26[0] = 0xD000000000000034;
  v26[1] = 0x80000001DB52F400;
  swift_beginAccess();
  v1 = v0[3];
  v2 = v0[4];

  MEMORY[0x1E1285C70](v1, v2);

  MEMORY[0x1E1285C70](11810, 0xE200000000000000);
  v27 = 0xD000000000000034;
  v28 = 0x80000001DB52F400;
  v3 = v0[2];
  if (*(sub_1DB4306D4(v3) + 16))
  {
    v26[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45680, &qword_1DB51C740);
    sub_1DB41114C();
    v4 = sub_1DB50A5E0();
    v6 = v5;

    sub_1DB50B320();

    strcpy(v26, " Did you mean ");
    HIBYTE(v26[1]) = -18;
    MEMORY[0x1E1285C70](v4, v6);

    MEMORY[0x1E1285C70](63, 0xE100000000000000);
    MEMORY[0x1E1285C70](v26[0], v26[1]);

    MEMORY[0x1E1285C70](0xD000000000000034, 0x80000001DB52D830);
    MEMORY[0x1E1285C70](0xD000000000000023, 0x80000001DB52D870);
    return v27;
  }

  v7 = *(v3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = sub_1DB324338(*(v3 + 16), 0);
  v10 = sub_1DB324740(v26, v9 + 4, v7, v3);

  sub_1DB2FEA60();
  if (v10 != v7)
  {
    __break(1u);
LABEL_6:
    v9 = v8;
  }

  v26[0] = v9;

  sub_1DB4102CC(v26);

  v11 = v26[0];
  v12 = *(v26[0] + 2);
  if (v12)
  {
    sub_1DB34130C(0, v12, 0);
    v13 = 32;
    v14 = v8;
    do
    {
      v15 = *&v11[v13];
      v26[0] = 60;
      v26[1] = 0xE100000000000000;
      v16 = sub_1DB50BEE0();
      MEMORY[0x1E1285C70](v16);

      MEMORY[0x1E1285C70](62, 0xE100000000000000);
      v17 = v26[0];
      v18 = v26[1];
      v20 = *(v14 + 2);
      v19 = *(v14 + 3);
      if (v20 >= v19 >> 1)
      {
        sub_1DB34130C((v19 > 1), v20 + 1, 1);
      }

      *(v14 + 2) = v20 + 1;
      v21 = &v14[16 * v20];
      *(v21 + 4) = v17;
      *(v21 + 5) = v18;
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v26[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
  sub_1DB367EE0(&qword_1EE30C840, &qword_1ECC43100, &unk_1DB511B70);
  v22 = sub_1DB50A5E0();
  v24 = v23;

  strcpy(v26, " Candidates: ");
  HIWORD(v26[1]) = -4864;
  MEMORY[0x1E1285C70](v22, v24);

  MEMORY[0x1E1285C70](v26[0], v26[1]);

  return v27;
}

unint64_t sub_1DB43F474()
{
  sub_1DB50B320();

  v26[0] = 0xD00000000000002DLL;
  v26[1] = 0x80000001DB52F100;
  swift_beginAccess();
  v1 = v0[3];
  v2 = v0[4];

  MEMORY[0x1E1285C70](v1, v2);

  MEMORY[0x1E1285C70](11810, 0xE200000000000000);
  v27 = 0xD00000000000002DLL;
  v28 = 0x80000001DB52F100;
  v3 = v0[2];
  if (*(sub_1DB430A1C(v3) + 2))
  {
    v26[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45680, &qword_1DB51C740);
    sub_1DB41114C();
    v4 = sub_1DB50A5E0();
    v6 = v5;

    sub_1DB50B320();

    strcpy(v26, " Did you mean ");
    HIBYTE(v26[1]) = -18;
    MEMORY[0x1E1285C70](v4, v6);

    MEMORY[0x1E1285C70](63, 0xE100000000000000);
    MEMORY[0x1E1285C70](v26[0], v26[1]);

    MEMORY[0x1E1285C70](0xD000000000000034, 0x80000001DB52D830);
    MEMORY[0x1E1285C70](0xD000000000000023, 0x80000001DB52D870);
    return v27;
  }

  v7 = *(v3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = sub_1DB324338(*(v3 + 16), 0);
  v10 = sub_1DB324740(v26, v9 + 4, v7, v3);

  sub_1DB2FEA60();
  if (v10 != v7)
  {
    __break(1u);
LABEL_6:
    v9 = v8;
  }

  v26[0] = v9;

  sub_1DB4102CC(v26);

  v11 = v26[0];
  v12 = *(v26[0] + 2);
  if (v12)
  {
    sub_1DB34130C(0, v12, 0);
    v13 = 32;
    v14 = v8;
    do
    {
      v15 = *&v11[v13];
      v26[0] = 60;
      v26[1] = 0xE100000000000000;
      v16 = sub_1DB50BEE0();
      MEMORY[0x1E1285C70](v16);

      MEMORY[0x1E1285C70](62, 0xE100000000000000);
      v17 = v26[0];
      v18 = v26[1];
      v20 = *(v14 + 2);
      v19 = *(v14 + 3);
      if (v20 >= v19 >> 1)
      {
        sub_1DB34130C((v19 > 1), v20 + 1, 1);
      }

      *(v14 + 2) = v20 + 1;
      v21 = &v14[16 * v20];
      *(v21 + 4) = v17;
      *(v21 + 5) = v18;
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v26[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
  sub_1DB367EE0(&qword_1EE30C840, &qword_1ECC43100, &unk_1DB511B70);
  v22 = sub_1DB50A5E0();
  v24 = v23;

  strcpy(v26, " Candidates: ");
  HIWORD(v26[1]) = -4864;
  MEMORY[0x1E1285C70](v22, v24);

  MEMORY[0x1E1285C70](v26[0], v26[1]);

  return v27;
}

uint64_t sub_1DB43F8C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB43F8E0, 0, 0);
}

uint64_t sub_1DB43F8E0()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1DB469558;
  v3 = v0[2];

  return sub_1DB4314D0(v3, v1);
}

uint64_t sub_1DB43F994(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB43F9B4, 0, 0);
}

uint64_t sub_1DB43F9B4()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1DB469558;
  v3 = v0[2];

  return sub_1DB431D88(v3, v1);
}

uint64_t sub_1DB43FA68(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB43FA88, 0, 0);
}

uint64_t sub_1DB43FA88()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1DB469558;
  v3 = v0[2];

  return sub_1DB432C9C(v3, v1);
}

uint64_t sub_1DB43FB3C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB43FB5C, 0, 0);
}

uint64_t sub_1DB43FB5C()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1DB469558;
  v3 = v0[2];

  return sub_1DB433EA0(v3, v1);
}

uint64_t sub_1DB43FC10(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB43FC30, 0, 0);
}

uint64_t sub_1DB43FC30()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1DB3372E8;
  v3 = v0[2];

  return sub_1DB4348EC(v3, v1);
}

uint64_t sub_1DB43FCE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB43FD04, 0, 0);
}

uint64_t sub_1DB43FD04()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1DB469558;
  v3 = v0[2];

  return sub_1DB4351A0(v3, v1);
}

uint64_t sub_1DB43FDB8(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB43FDD8, 0, 0);
}

uint64_t sub_1DB43FDD8()
{
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v0[3] = v0[5];
  v1 = *(MEMORY[0x1E69E8950] + 4);
  v2 = swift_task_alloc();
  v0[6] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45A08, &qword_1DB51CA30);
  *v2 = v0;
  v2[1] = sub_1DB43FF18;
  v3 = v0[5];

  return MEMORY[0x1EEE6DE98](v0 + 2, v0 + 3, &unk_1DB51CA28, v3, 0, 0, 0xD00000000000001DLL, 0x80000001DB52D7F0);
}

uint64_t sub_1DB43FF18()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1DB4400EC;
  }

  else
  {
    v3 = sub_1DB44002C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB44002C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    **(v0 + 32) = v1;
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 40);
    sub_1DB43EBE0();
    return sub_1DB50B580();
  }
}

uint64_t sub_1DB440104(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F20, qword_1DB5105D0);
  v2[5] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB4401A4, 0, 0);
}

uint64_t sub_1DB4401A4()
{
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v0[2] = v0[4];
  v1 = *(MEMORY[0x1E69E8950] + 4);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1DB4402D0;
  v3 = v0[6];
  v4 = v0[4];
  v7 = v0[5];

  return MEMORY[0x1EEE6DE98](v3, v0 + 2, &unk_1DB51C738, v4, 0, 0, 0xD00000000000001DLL, 0x80000001DB52D7F0);
}

uint64_t sub_1DB4402D0()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1DB3A0414;
  }

  else
  {
    v3 = sub_1DB4403E4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4403E4()
{
  v1 = v0[6];
  v2 = type metadata accessor for JetPackAsset(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[4];
    sub_1DB30623C(v1, &qword_1ECC46F20, qword_1DB5105D0);
    sub_1DB43F474();
    return sub_1DB50B580();
  }

  else
  {
    sub_1DB468D80(v1, v0[3], type metadata accessor for JetPackAsset);

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1DB440524()
{
  v0 = sub_1DB50A270();
  __swift_allocate_value_buffer(v0, qword_1EE30E178);
  __swift_project_value_buffer(v0, qword_1EE30E178);
  return sub_1DB50A260();
}

double sub_1DB4405A8()
{
  result = 0.0;
  xmmword_1ECC458E8 = 0u;
  unk_1ECC458F8 = 0u;
  xmmword_1ECC458C8 = 0u;
  unk_1ECC458D8 = 0u;
  xmmword_1ECC458B8 = 0u;
  return result;
}

uint64_t static JetPackAssetSession.Configuration.default.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1ECC42138 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1DB400AF8(&xmmword_1ECC458B8, v2);
}

uint64_t JetPackAssetSession.Configuration.init(cache:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = &type metadata for JetPackAssetStandardCachePolicy;
  v6 = &protocol witness table for JetPackAssetStandardCachePolicy;
  sub_1DB2FEA0C(a1, a2);
  return sub_1DB2FEA0C(&v4, a2 + 40);
}

uint64_t JetPackAssetSession.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  JetPackAssetSession.init(configuration:)(a1);
  return v2;
}

void *JetPackAssetSession.init(configuration:)(uint64_t a1)
{
  sub_1DB400AF8(a1, (v1 + 3));
  v3 = sub_1DB31440C(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45908, &qword_1DB51C490);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  v1[2] = v4;
  v1[16] = &type metadata for JetPackAssetDaemonClient;
  v1[17] = &off_1F56FDE60;
  v8 = &type metadata for CoreAnalyticsLogger;
  v9 = &protocol witness table for CoreAnalyticsLogger;
  v5 = swift_allocObject();
  *&v7 = v5;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0;
  *(v5 + 40) = &type metadata for DefaultCoreAnalyticsLoggerProvider;
  *(v5 + 48) = &protocol witness table for DefaultCoreAnalyticsLoggerProvider;
  sub_1DB30C018(a1);
  sub_1DB2FEA0C(&v7, (v1 + 18));
  return v1;
}

uint64_t JetPackAssetSession.jetPack(urlRequest:fetcher:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[155] = v3;
  v4[154] = a3;
  v4[153] = a2;
  v4[152] = a1;
  v5 = type metadata accessor for DaemonError();
  v4[156] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[157] = swift_task_alloc();
  v4[158] = swift_task_alloc();
  v4[159] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB44086C, 0, 0);
}

uint64_t sub_1DB44086C()
{
  v1 = *(v0 + 1224);
  if (sub_1DB509B50())
  {
    v2 = *(v0 + 1224);
    v3 = sub_1DB509C30();
    v5 = v4;
    *(v0 + 1344) = v4;
    sub_1DB509CA0();
    sub_1DB468C90(&qword_1EE30E288, MEMORY[0x1E6968FB0]);
    v6 = sub_1DB50B8F0();
    v8 = v7;
    *(v0 + 1352) = v7;
    v9 = swift_task_alloc();
    *(v0 + 1360) = v9;
    *v9 = v0;
    v10 = sub_1DB4423BC;
LABEL_3:
    v9[1] = v10;
    v11 = *(v0 + 1240);
    v12 = *(v0 + 1216);

    return sub_1DB443368(v12, v3, v5, v6, v8);
  }

  sub_1DB400AF8(*(v0 + 1240) + 24, v0 + 96);
  v14 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v14;
  *(v0 + 80) = *(v0 + 160);
  v15 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v15;
  sub_1DB466224(v0 + 16, v0 + 176);
  if (*(v0 + 200))
  {
    v16 = *(v0 + 224);
    *(v0 + 288) = *(v0 + 208);
    *(v0 + 304) = v16;
    *(v0 + 320) = *(v0 + 240);
    v17 = *(v0 + 192);
    *(v0 + 256) = *(v0 + 176);
    *(v0 + 272) = v17;
    sub_1DB30C4B8(v0 + 256, v0 + 336, &qword_1ECC45910, &qword_1DB51C4A0);
    v18 = swift_task_alloc();
    *(v0 + 1328) = v18;
    *v18 = v0;
    v18[1] = sub_1DB4421FC;
    v19 = *(v0 + 1240);
    v20 = *(v0 + 1232);
    v21 = *(v0 + 1224);
    v22 = *(v0 + 1216);

    return sub_1DB444354(v22, v21, v20, v0 + 336, v0 + 376);
  }

  else
  {
    v23 = *(v0 + 1224);
    if (sub_1DB509B50())
    {
      v24 = *(v0 + 1224);
      v3 = sub_1DB509C30();
      v5 = v25;
      *(v0 + 1280) = v25;
      sub_1DB509CA0();
      sub_1DB468C90(&qword_1EE30E288, MEMORY[0x1E6968FB0]);
      v6 = sub_1DB50B8F0();
      v8 = v26;
      *(v0 + 1288) = v26;
      v9 = swift_task_alloc();
      *(v0 + 1296) = v9;
      *v9 = v0;
      v10 = sub_1DB440BD4;
      goto LABEL_3;
    }

    v27 = swift_task_alloc();
    *(v0 + 1312) = v27;
    *v27 = v0;
    v27[1] = sub_1DB440CFC;
    v28 = *(v0 + 1240);
    v29 = *(v0 + 1224);
    v30 = *(v0 + 1216);

    return sub_1DB4463F0(v30, v29);
  }
}

uint64_t sub_1DB440BD4()
{
  v2 = *v1;
  v3 = *(*v1 + 1296);
  v8 = *v1;
  *(*v1 + 1304) = v0;

  if (v0)
  {
    v4 = sub_1DB440E1C;
  }

  else
  {
    v5 = *(v2 + 1288);
    v6 = *(v2 + 1280);

    v4 = sub_1DB440E98;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB440CFC()
{
  v2 = *v1;
  v3 = *(*v1 + 1312);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 1320) = v0;
    v5 = sub_1DB440F1C;
  }

  else
  {
    v5 = sub_1DB440E98;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB440E1C()
{
  v1 = v0[161];
  v2 = v0[160];

  v0[165] = v0[163];

  return MEMORY[0x1EEE6DFA0](sub_1DB440F1C, 0, 0);
}

uint64_t sub_1DB440E98()
{
  sub_1DB46625C((v0 + 2));
  v1 = v0[159];
  v2 = v0[158];
  v3 = v0[157];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB440F1C()
{
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1272);
  v3 = *(v0 + 1248);
  *(v0 + 1208) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 1272);
    v6 = *(v0 + 1264);
    v7 = *(v0 + 1256);
    v8 = *(v0 + 1248);

    sub_1DB468D80(v5, v6, type metadata accessor for DaemonError);
    sub_1DB468D18(v6, v7, type metadata accessor for DaemonError);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v35 = (v0 + 696);
      if (qword_1EE30C928 != -1)
      {
        swift_once();
      }

      v36 = *(v0 + 1264);
      v37 = *(v0 + 1248);
      sub_1DB50BEB0();
      v38 = *(v0 + 520);
      v39 = *(v0 + 528);
      __swift_project_boxed_opaque_existential_1((v0 + 496), v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1DB50EE90;
      v136 = sub_1DB301BC0(0, 54, 0, MEMORY[0x1E69E7CC0]);
      v41._countAndFlagsBits = 0xD000000000000035;
      v41._object = 0x80000001DB52EDB0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      *(v0 + 944) = v37;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 920));
      sub_1DB468D18(v36, boxed_opaque_existential_0, type metadata accessor for DaemonError);
      sub_1DB30C4B8(v0 + 920, v0 + 952, &qword_1ECC426B0, &qword_1DB50EEB0);
      *v35 = 0u;
      *(v0 + 712) = 0u;
      sub_1DB30C2D8(v0 + 952, v0 + 696, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 728) = 0;
      v43 = v136;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_1DB301BC0(0, *(v136 + 2) + 1, 1, v136);
      }

      v45 = *(v43 + 2);
      v44 = *(v43 + 3);
      if (v45 >= v44 >> 1)
      {
        v43 = sub_1DB301BC0((v44 > 1), v45 + 1, 1, v43);
      }

      *(v43 + 2) = v45 + 1;
      v46 = &v43[40 * v45];
      v47 = *v35;
      v48 = *(v0 + 712);
      v46[64] = *(v0 + 728);
      *(v46 + 2) = v47;
      *(v46 + 3) = v48;
      sub_1DB30623C(v0 + 920, &qword_1ECC426B0, &qword_1DB50EEB0);
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v49);
      *(v40 + 32) = v43;
      Logger.error(_:)(v40, v38, v39);

      __swift_destroy_boxed_opaque_existential_0((v0 + 496));
      v50 = swift_task_alloc();
      *(v0 + 1448) = v50;
      *v50 = v0;
      v50[1] = sub_1DB442AC4;
      v51 = *(v0 + 1240);
      v31 = *(v0 + 1232);
      v32 = *(v0 + 1224);
      v33 = *(v0 + 1216);
      v34 = 0;
      goto LABEL_36;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v17 = **(v0 + 1256);
      if (qword_1EE30C928 != -1)
      {
        swift_once();
      }

      sub_1DB50BEB0();
      v18 = *(v0 + 480);
      v19 = *(v0 + 488);
      __swift_project_boxed_opaque_existential_1((v0 + 456), v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1DB50EE90;
      v135 = sub_1DB301BC0(0, 71, 0, MEMORY[0x1E69E7CC0]);
      v21._countAndFlagsBits = 0xD00000000000003ELL;
      v21._object = 0x80000001DB52ED70;
      LogMessage.StringInterpolation.appendLiteral(_:)(v21);
      *(v0 + 880) = MEMORY[0x1E69E63B0];
      *(v0 + 856) = v17;
      sub_1DB30C4B8(v0 + 856, v0 + 888, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 656) = 0u;
      *(v0 + 672) = 0u;
      sub_1DB30C2D8(v0 + 888, v0 + 656, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 688) = 0;
      v22 = v135;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1DB301BC0(0, *(v135 + 2) + 1, 1, v135);
      }

      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_1DB301BC0((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[40 * v24];
      v26 = *(v0 + 656);
      v27 = *(v0 + 672);
      v25[64] = *(v0 + 688);
      *(v25 + 2) = v26;
      *(v25 + 3) = v27;
      sub_1DB30623C(v0 + 856, &qword_1ECC426B0, &qword_1DB50EEB0);
      v28._countAndFlagsBits = 0x73646E6F63657320;
      v28._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v28);
      *(v20 + 32) = v22;
      Logger.error(_:)(v20, v18, v19);

      __swift_destroy_boxed_opaque_existential_0((v0 + 456));
      v29 = swift_task_alloc();
      *(v0 + 1464) = v29;
      *v29 = v0;
      v29[1] = sub_1DB442C94;
      v30 = *(v0 + 1240);
      v31 = *(v0 + 1232);
      v32 = *(v0 + 1224);
      v33 = *(v0 + 1216);
      v34 = 5;
      goto LABEL_36;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v52 = *(v0 + 1264);
      v53 = *(v0 + 1256);
      v54 = *(v0 + 1248);
      sub_1DB468C90(&qword_1ECC43900, type metadata accessor for DaemonError);
      swift_allocError();
      sub_1DB468D18(v52, v55, type metadata accessor for DaemonError);
      swift_willThrow();
      sub_1DB467374(v52, type metadata accessor for DaemonError);
      sub_1DB46625C(v0 + 16);
      sub_1DB467374(v53, type metadata accessor for DaemonError);
LABEL_24:

      goto LABEL_25;
    }

    v10 = *(v0 + 1256);
    v11 = *v10;
    *(v0 + 1376) = *v10;
    v12 = [v11 domain];
    v13 = sub_1DB50A650();
    v15 = v14;

    if (v13 == 0xD000000000000015 && 0x80000001DB52EDF0 == v15)
    {

LABEL_29:
      if (qword_1EE30C928 != -1)
      {
        swift_once();
      }

      v62 = *(v0 + 1264);
      v63 = *(v0 + 1248);
      sub_1DB50BEB0();
      v64 = *(v0 + 640);
      v65 = *(v0 + 648);
      __swift_project_boxed_opaque_existential_1((v0 + 616), v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1DB50EE90;
      v137 = sub_1DB301BC0(0, 59, 0, MEMORY[0x1E69E7CC0]);
      v67._countAndFlagsBits = 0xD00000000000003ALL;
      v67._object = 0x80000001DB52EF20;
      LogMessage.StringInterpolation.appendLiteral(_:)(v67);
      *(v0 + 1168) = v63;
      v68 = __swift_allocate_boxed_opaque_existential_0((v0 + 1144));
      sub_1DB468D18(v62, v68, type metadata accessor for DaemonError);
      sub_1DB30C4B8(v0 + 1144, v0 + 1176, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 816) = 0u;
      *(v0 + 832) = 0u;
      sub_1DB30C2D8(v0 + 1176, v0 + 816, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 848) = 0;
      v69 = v137;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_1DB301BC0(0, *(v137 + 2) + 1, 1, v137);
      }

      v71 = *(v69 + 2);
      v70 = *(v69 + 3);
      if (v71 >= v70 >> 1)
      {
        v69 = sub_1DB301BC0((v70 > 1), v71 + 1, 1, v69);
      }

      *(v69 + 2) = v71 + 1;
      v72 = &v69[40 * v71];
      v73 = *(v0 + 816);
      v74 = *(v0 + 832);
      v72[64] = *(v0 + 848);
      *(v72 + 2) = v73;
      *(v72 + 3) = v74;
      sub_1DB30623C(v0 + 1144, &qword_1ECC426B0, &qword_1DB50EEB0);
      v75._countAndFlagsBits = 0;
      v75._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v75);
      *(v66 + 32) = v69;
      Logger.error(_:)(v66, v64, v65);

      __swift_destroy_boxed_opaque_existential_0((v0 + 616));
      v76 = swift_task_alloc();
      *(v0 + 1384) = v76;
      *v76 = v0;
      v76[1] = sub_1DB4425C0;
      v77 = *(v0 + 1240);
      v31 = *(v0 + 1232);
      v32 = *(v0 + 1224);
      v33 = *(v0 + 1216);
      v34 = 1;
LABEL_36:

      return sub_1DB443C40(v33, v32, v31, v34);
    }

    v61 = sub_1DB50BA30();

    if (v61)
    {
      goto LABEL_29;
    }

    v78 = [v11 domain];
    v79 = sub_1DB50A650();
    v81 = v80;

    if (v79 == 0xD000000000000016 && 0x80000001DB52B980 == v81)
    {
    }

    else
    {
      v82 = sub_1DB50BA30();

      if ((v82 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    if ([v11 code] == 3)
    {
      if (qword_1EE30C928 != -1)
      {
        swift_once();
      }

      sub_1DB50BEB0();
      v83 = *(v0 + 600);
      v84 = *(v0 + 608);
      __swift_project_boxed_opaque_existential_1((v0 + 576), v83);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_1DB50EE90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v86 = swift_allocObject();
      *(v86 + 16) = xmmword_1DB50EE90;
      *(v0 + 1136) = MEMORY[0x1E69E6158];
      *(v0 + 1112) = 0xD000000000000046;
      *(v0 + 1120) = 0x80000001DB52EED0;
      *(v86 + 48) = 0u;
      *(v86 + 32) = 0u;
      sub_1DB30C2D8(v0 + 1112, v86 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v86 + 64) = 0;
      *(v85 + 32) = v86;
      Logger.error(_:)(v85, v83, v84);

      __swift_destroy_boxed_opaque_existential_0((v0 + 576));
      v87 = swift_task_alloc();
      *(v0 + 1400) = v87;
      *v87 = v0;
      v87[1] = sub_1DB442788;
      v88 = *(v0 + 1240);
      v31 = *(v0 + 1232);
      v32 = *(v0 + 1224);
      v33 = *(v0 + 1216);
      v34 = 4;
      goto LABEL_36;
    }

LABEL_47:
    v89 = [v11 domain];
    v90 = sub_1DB50A650();
    v92 = v91;

    if (v90 == 0xD00000000000002ALL && 0x80000001DB52EE10 == v92)
    {

LABEL_51:
      v94 = (v0 + 776);
      if (qword_1EE30C928 != -1)
      {
        swift_once();
      }

      v95 = *(v0 + 1264);
      v96 = *(v0 + 1248);
      sub_1DB50BEB0();
      v97 = *(v0 + 560);
      v98 = *(v0 + 568);
      __swift_project_boxed_opaque_existential_1((v0 + 536), v97);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_1DB50EE90;
      v138 = sub_1DB301BC0(0, 60, 0, MEMORY[0x1E69E7CC0]);
      v100._countAndFlagsBits = 0xD00000000000003BLL;
      v100._object = 0x80000001DB52EE90;
      LogMessage.StringInterpolation.appendLiteral(_:)(v100);
      *(v0 + 1072) = v96;
      v101 = __swift_allocate_boxed_opaque_existential_0((v0 + 1048));
      sub_1DB468D18(v95, v101, type metadata accessor for DaemonError);
      sub_1DB30C4B8(v0 + 1048, v0 + 1080, &qword_1ECC426B0, &qword_1DB50EEB0);
      *v94 = 0u;
      *(v0 + 792) = 0u;
      sub_1DB30C2D8(v0 + 1080, v0 + 776, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 808) = 0;
      v102 = v138;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = sub_1DB301BC0(0, *(v138 + 2) + 1, 1, v138);
      }

      v104 = *(v102 + 2);
      v103 = *(v102 + 3);
      if (v104 >= v103 >> 1)
      {
        v102 = sub_1DB301BC0((v103 > 1), v104 + 1, 1, v102);
      }

      *(v102 + 2) = v104 + 1;
      v105 = &v102[40 * v104];
      v106 = *v94;
      v107 = *(v0 + 792);
      v105[64] = *(v0 + 808);
      *(v105 + 2) = v106;
      *(v105 + 3) = v107;
      sub_1DB30623C(v0 + 1048, &qword_1ECC426B0, &qword_1DB50EEB0);
      v108._countAndFlagsBits = 0;
      v108._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v108);
      *(v99 + 32) = v102;
      Logger.error(_:)(v99, v97, v98);

      __swift_destroy_boxed_opaque_existential_0((v0 + 536));
      v109 = swift_task_alloc();
      *(v0 + 1416) = v109;
      *v109 = v0;
      v109[1] = sub_1DB44289C;
      v110 = *(v0 + 1240);
      v31 = *(v0 + 1232);
      v32 = *(v0 + 1224);
      v33 = *(v0 + 1216);
      v34 = 6;
      goto LABEL_36;
    }

    v93 = sub_1DB50BA30();

    if (v93)
    {
      goto LABEL_51;
    }

    v111 = [v11 domain];
    v112 = sub_1DB50A650();
    v114 = v113;

    if (v112 == 0xD000000000000024 && 0x80000001DB529AF0 == v114)
    {
    }

    else
    {
      v115 = sub_1DB50BA30();

      if ((v115 & 1) == 0)
      {
LABEL_70:
        v132 = *(v0 + 1264);
        v133 = *(v0 + 1248);
        sub_1DB468C90(&qword_1ECC43900, type metadata accessor for DaemonError);
        swift_allocError();
        sub_1DB468D18(v132, v134, type metadata accessor for DaemonError);
        swift_willThrow();

        sub_1DB467374(v132, type metadata accessor for DaemonError);
        sub_1DB46625C(v0 + 16);
        goto LABEL_24;
      }
    }

    if ([v11 code] == 5)
    {
      if (qword_1EE30C928 != -1)
      {
        swift_once();
      }

      v116 = *(v0 + 1264);
      v117 = *(v0 + 1248);
      sub_1DB50BEB0();
      v118 = *(v0 + 440);
      v119 = *(v0 + 448);
      __swift_project_boxed_opaque_existential_1((v0 + 416), v118);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v120 = swift_allocObject();
      *(v120 + 16) = xmmword_1DB50EE90;
      v139 = sub_1DB301BC0(0, 73, 0, MEMORY[0x1E69E7CC0]);
      v121._countAndFlagsBits = 0xD000000000000048;
      v121._object = 0x80000001DB52EE40;
      LogMessage.StringInterpolation.appendLiteral(_:)(v121);
      *(v0 + 1008) = v117;
      v122 = __swift_allocate_boxed_opaque_existential_0((v0 + 984));
      sub_1DB468D18(v116, v122, type metadata accessor for DaemonError);
      sub_1DB30C4B8(v0 + 984, v0 + 1016, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 736) = 0u;
      *(v0 + 752) = 0u;
      sub_1DB30C2D8(v0 + 1016, v0 + 736, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 768) = 0;
      v123 = v139;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v123 = sub_1DB301BC0(0, *(v139 + 2) + 1, 1, v139);
      }

      v125 = *(v123 + 2);
      v124 = *(v123 + 3);
      if (v125 >= v124 >> 1)
      {
        v123 = sub_1DB301BC0((v124 > 1), v125 + 1, 1, v123);
      }

      *(v123 + 2) = v125 + 1;
      v126 = &v123[40 * v125];
      v127 = *(v0 + 736);
      v128 = *(v0 + 752);
      v126[64] = *(v0 + 768);
      *(v126 + 2) = v127;
      *(v126 + 3) = v128;
      sub_1DB30623C(v0 + 984, &qword_1ECC426B0, &qword_1DB50EEB0);
      v129._countAndFlagsBits = 0;
      v129._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v129);
      *(v120 + 32) = v123;
      Logger.error(_:)(v120, v118, v119);

      __swift_destroy_boxed_opaque_existential_0((v0 + 416));
      v130 = swift_task_alloc();
      *(v0 + 1432) = v130;
      *v130 = v0;
      v130[1] = sub_1DB4429B0;
      v131 = *(v0 + 1240);
      v31 = *(v0 + 1232);
      v32 = *(v0 + 1224);
      v33 = *(v0 + 1216);
      v34 = 7;
      goto LABEL_36;
    }

    goto LABEL_70;
  }

  sub_1DB46625C(v0 + 16);

  v16 = *(v0 + 1320);
LABEL_25:
  v56 = *(v0 + 1272);
  v57 = *(v0 + 1264);
  v58 = *(v0 + 1256);

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_1DB4421FC()
{
  v2 = *v1;
  v3 = *(*v1 + 1328);
  v6 = *v1;
  *(*v1 + 1336) = v0;

  if (v0)
  {
    v4 = sub_1DB4432B4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 376));
    __swift_destroy_boxed_opaque_existential_0((v2 + 336));
    v4 = sub_1DB442320;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB442320()
{
  sub_1DB30623C((v0 + 32), &qword_1ECC45910, &qword_1DB51C4A0);
  sub_1DB46625C((v0 + 2));
  v1 = v0[159];
  v2 = v0[158];
  v3 = v0[157];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB4423BC()
{
  v2 = *(*v1 + 1360);
  v3 = *v1;
  v3[171] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB442528, 0, 0);
  }

  else
  {
    v4 = v3[169];
    v5 = v3[168];

    v6 = v3[159];
    v7 = v3[158];
    v8 = v3[157];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_1DB442528()
{
  v1 = v0[169];
  v2 = v0[168];

  v3 = v0[171];
  v4 = v0[159];
  v5 = v0[158];
  v6 = v0[157];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DB4425C0()
{
  v2 = *(*v1 + 1384);
  v5 = *v1;
  *(*v1 + 1392) = v0;

  if (v0)
  {
    v3 = sub_1DB442E50;
  }

  else
  {
    v3 = sub_1DB4426D4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4426D4()
{
  v1 = *(v0 + 1264);

  sub_1DB467374(v1, type metadata accessor for DaemonError);
  sub_1DB46625C(v0 + 16);

  v2 = *(v0 + 1272);
  v3 = *(v0 + 1264);
  v4 = *(v0 + 1256);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DB442788()
{
  v2 = *(*v1 + 1400);
  v5 = *v1;
  *(*v1 + 1408) = v0;

  if (v0)
  {
    v3 = sub_1DB442F0C;
  }

  else
  {
    v3 = sub_1DB4695D8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB44289C()
{
  v2 = *(*v1 + 1416);
  v5 = *v1;
  *(*v1 + 1424) = v0;

  if (v0)
  {
    v3 = sub_1DB442FC8;
  }

  else
  {
    v3 = sub_1DB4695D8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4429B0()
{
  v2 = *(*v1 + 1432);
  v5 = *v1;
  *(*v1 + 1440) = v0;

  if (v0)
  {
    v3 = sub_1DB443084;
  }

  else
  {
    v3 = sub_1DB4695D8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB442AC4()
{
  v2 = *(*v1 + 1448);
  v5 = *v1;
  *(*v1 + 1456) = v0;

  if (v0)
  {
    v3 = sub_1DB443140;
  }

  else
  {
    v3 = sub_1DB442BD8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB442BD8()
{
  v1 = *(v0 + 1256);
  sub_1DB467374(*(v0 + 1264), type metadata accessor for DaemonError);
  sub_1DB46625C(v0 + 16);
  sub_1DB467374(v1, type metadata accessor for DaemonError);

  v2 = *(v0 + 1272);
  v3 = *(v0 + 1264);
  v4 = *(v0 + 1256);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DB442C94()
{
  v2 = *(*v1 + 1464);
  v5 = *v1;
  *(*v1 + 1472) = v0;

  if (v0)
  {
    v3 = sub_1DB443204;
  }

  else
  {
    v3 = sub_1DB442DA8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB442DA8()
{
  sub_1DB467374(*(v0 + 1264), type metadata accessor for DaemonError);
  sub_1DB46625C(v0 + 16);

  v1 = *(v0 + 1272);
  v2 = *(v0 + 1264);
  v3 = *(v0 + 1256);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DB442E50()
{
  v1 = *(v0 + 1264);

  sub_1DB467374(v1, type metadata accessor for DaemonError);
  sub_1DB46625C(v0 + 16);

  v2 = *(v0 + 1392);
  v3 = *(v0 + 1272);
  v4 = *(v0 + 1264);
  v5 = *(v0 + 1256);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DB442F0C()
{
  v1 = *(v0 + 1264);

  sub_1DB467374(v1, type metadata accessor for DaemonError);
  sub_1DB46625C(v0 + 16);

  v2 = *(v0 + 1408);
  v3 = *(v0 + 1272);
  v4 = *(v0 + 1264);
  v5 = *(v0 + 1256);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DB442FC8()
{
  v1 = *(v0 + 1264);

  sub_1DB467374(v1, type metadata accessor for DaemonError);
  sub_1DB46625C(v0 + 16);

  v2 = *(v0 + 1424);
  v3 = *(v0 + 1272);
  v4 = *(v0 + 1264);
  v5 = *(v0 + 1256);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DB443084()
{
  v1 = *(v0 + 1264);

  sub_1DB467374(v1, type metadata accessor for DaemonError);
  sub_1DB46625C(v0 + 16);

  v2 = *(v0 + 1440);
  v3 = *(v0 + 1272);
  v4 = *(v0 + 1264);
  v5 = *(v0 + 1256);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DB443140()
{
  v1 = *(v0 + 1256);
  sub_1DB467374(*(v0 + 1264), type metadata accessor for DaemonError);
  sub_1DB46625C(v0 + 16);
  sub_1DB467374(v1, type metadata accessor for DaemonError);

  v2 = *(v0 + 1456);
  v3 = *(v0 + 1272);
  v4 = *(v0 + 1264);
  v5 = *(v0 + 1256);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DB443204()
{
  sub_1DB467374(*(v0 + 1264), type metadata accessor for DaemonError);
  sub_1DB46625C(v0 + 16);

  v1 = *(v0 + 1472);
  v2 = *(v0 + 1272);
  v3 = *(v0 + 1264);
  v4 = *(v0 + 1256);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DB4432B4()
{
  sub_1DB30623C((v0 + 32), &qword_1ECC45910, &qword_1DB51C4A0);
  sub_1DB46625C((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  v1 = v0[167];
  v2 = v0[159];
  v3 = v0[158];
  v4 = v0[157];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DB443368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB443390, 0, 0);
}

uint64_t sub_1DB443390()
{
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  sub_1DB50BEB0();
  v3 = *(v0 + 40);
  v34 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  v39 = sub_1DB301BC0(0, 38, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001DB52DD20;
  v5._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  *(v0 + 120) = MEMORY[0x1E69E6158];
  *(v0 + 96) = v2;
  *(v0 + 104) = v1;
  sub_1DB30C4B8(v0 + 96, v0 + 128, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;

  sub_1DB30C2D8(v0 + 128, v0 + 56, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 88) = 2;
  v6 = v39;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1DB301BC0(0, *(v39 + 2) + 1, 1, v39);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1DB301BC0((v7 > 1), v8 + 1, 1, v6);
  }

  v35 = *(v0 + 184);
  v37 = *(v0 + 192);
  v9 = *(v0 + 176);
  v33 = *(v0 + 168);
  v10 = *(v0 + 160);
  *(v6 + 2) = v8 + 1;
  v11 = &v6[40 * v8];
  v12 = *(v0 + 56);
  v13 = *(v0 + 72);
  v11[64] = *(v0 + 88);
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  *&v38 = v6;
  sub_1DB30623C(v0 + 96, &qword_1ECC426B0, &qword_1DB50EEB0);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v4 + 32) = v6;
  Logger.info(_:)(v4, v3, v34);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v15 = type metadata accessor for JetPackAsset(0);
  v16 = (v10 + v15[5]);
  v17 = type metadata accessor for JetPackAsset.Metadata(0);
  v18 = v17[6];

  _s7JetCore18SystemDateProviderV3now10Foundation0D0Vvg_0();
  v19 = [objc_opt_self() processInfo];
  [v19 operatingSystemVersion];

  v20 = JEGestaltGetBuildVersion();
  v21 = sub_1DB50A650();
  v23 = v22;

  *v16 = 0u;
  v16[1] = 0u;
  v24 = v16 + v17[7];
  *v24 = v38;
  *(v24 + 2) = v40;
  v24[24] = 0;
  v25 = (v16 + v17[8]);
  *v25 = v21;
  v25[1] = v23;
  v26 = (v16 + v17[9]);
  *v26 = 0;
  v26[1] = 0;
  *(v16 + v17[10]) = 2;
  v27 = v16 + v17[11];
  *v27 = 0x40AC200000000000;
  v27[8] = 0;
  *(v27 + 2) = 0;
  v27[24] = 1;
  *(v27 + 4) = 0x4143C68000000000;
  *(v27 + 20) = 0;
  v10[3] = &type metadata for JetPackFileStreamSource;
  v10[4] = &protocol witness table for JetPackFileStreamSource;
  v28 = swift_allocObject();
  *v10 = v28;
  v28[2] = v33;
  v28[3] = v9;
  v28[4] = 0;
  v28[5] = 0;
  v29 = v10 + v15[6];
  *v29 = 0;
  v29[4] = 1;
  v30 = (v10 + v15[7]);
  *v30 = v35;
  v30[1] = v37;
  *(v10 + v15[8]) = 0;
  *(v10 + v15[9]) = 0;
  *(v10 + v15[10]) = 0;
  v31 = (v10 + v15[11]);
  *v31 = 0;
  v31[1] = 0;
  v36 = *(v0 + 8);

  return v36();
}