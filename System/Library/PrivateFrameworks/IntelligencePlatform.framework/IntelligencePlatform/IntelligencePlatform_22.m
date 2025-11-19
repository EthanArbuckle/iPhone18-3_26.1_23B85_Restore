void sub_1ABC08BA8(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v24 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v24 == v5)
    {
LABEL_17:

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 8);
    if (v7 == 8)
    {
      goto LABEL_17;
    }

    v8 = *i;
    v26 = *(i - 8);
    v9 = *a3;
    v11 = sub_1ABAFF5B8(v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5658, &unk_1ABF4AC50);
      sub_1ABF24C74();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v18[6] + v11) = v7;
    *(v18[7] + 8 * v11) = v8;
    v19 = v18[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    v18[2] = v21;
    ++v5;
    a2 = 1;
  }

  sub_1ABC05D38();
  v15 = *a3;
  v16 = sub_1ABAFF5B8(v7);
  if ((v14 & 1) != (v17 & 1))
  {
    goto LABEL_22;
  }

  v11 = v16;
  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v22 = swift_allocError();
  swift_willThrow();

  v23 = v22;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC08E74(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v24 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v24 == v5)
    {
LABEL_17:

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 8);
    if (v7 == 4)
    {
      goto LABEL_17;
    }

    v8 = *i;
    v26 = *(i - 8);
    v9 = *a3;
    v11 = sub_1ABAFF5B8(v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5648, &qword_1ABF4AC40);
      sub_1ABF24C74();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v18[6] + v11) = v7;
    *(v18[7] + 8 * v11) = v8;
    v19 = v18[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    v18[2] = v21;
    ++v5;
    a2 = 1;
  }

  sub_1ABC05D38();
  v15 = *a3;
  v16 = sub_1ABAFF5B8(v7);
  if ((v14 & 1) != (v17 & 1))
  {
    goto LABEL_22;
  }

  v11 = v16;
  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v22 = swift_allocError();
  swift_willThrow();

  v23 = v22;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC09140(uint64_t a1, char a2, uint64_t *a3)
{
  v49 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v40 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D13B8, &qword_1ABF33540);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v47 = v40 - v15;
  v46 = *(a1 + 16);
  if (!v46)
  {
LABEL_13:

    return;
  }

  v40[1] = v3;
  v41 = a1;
  v16 = 0;
  v45 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v17 = *(v13 + 48);
  v43 = v6;
  v44 = v17;
  v48 = (v7 + 32);
  v42 = v10;
  while (1)
  {
    if (v16 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v18 = v14;
    v19 = v47;
    sub_1ABC1070C(v45 + *(v14 + 72) * v16, v47, &qword_1EB4D13B8, &qword_1ABF33540);
    v53 = *v19;
    v20 = v53;
    v21 = *v48;
    (*v48)(v10, &v19[v44], v6);
    v22 = *v49;
    v24 = sub_1ABAFF5B8(v20);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_19;
    }

    v28 = v23;
    if (v22[3] < v27)
    {
      break;
    }

    if (a2)
    {
      if (v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5560, &unk_1ABF618F0);
      sub_1ABF24C74();
      if (v28)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v33 = *v49;
    *(*v49 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    *(v33[6] + v24) = v20;
    v34 = v33[7] + *(v7 + 72) * v24;
    v10 = v42;
    v6 = v43;
    v21(v34, v42, v43);
    v35 = v33[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_20;
    }

    ++v16;
    v33[2] = v37;
    a2 = 1;
    a1 = v41;
    v14 = v18;
    if (v46 == v16)
    {
      goto LABEL_13;
    }
  }

  v29 = v49;
  sub_1ABC05A50(v27, a2 & 1, &qword_1EB4D16F0, &qword_1ABF33880, &qword_1EB4D5558, &unk_1ABF4AB20);
  v30 = *v29;
  v31 = sub_1ABAFF5B8(v20);
  if ((v28 & 1) != (v32 & 1))
  {
    goto LABEL_21;
  }

  v24 = v31;
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v38 = swift_allocError();
  swift_willThrow();

  v52 = v38;
  v39 = v38;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v42, v43);

    return;
  }

LABEL_22:
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC095D8(uint64_t a1, char a2, uint64_t *a3)
{
  v49 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v40 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D13C8, &qword_1ABF33550);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v47 = v40 - v15;
  v46 = *(a1 + 16);
  if (!v46)
  {
LABEL_13:

    return;
  }

  v40[1] = v3;
  v41 = a1;
  v16 = 0;
  v45 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v17 = *(v13 + 48);
  v43 = v6;
  v44 = v17;
  v48 = (v7 + 32);
  v42 = v10;
  while (1)
  {
    if (v16 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v18 = v14;
    v19 = v47;
    sub_1ABC1070C(v45 + *(v14 + 72) * v16, v47, &qword_1EB4D13C8, &qword_1ABF33550);
    v53 = *v19;
    v20 = v53;
    v21 = *v48;
    (*v48)(v10, &v19[v44], v6);
    v22 = *v49;
    v24 = sub_1ABAFF5B8(v20);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_19;
    }

    v28 = v23;
    if (v22[3] < v27)
    {
      break;
    }

    if (a2)
    {
      if (v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5570, &qword_1ABF4AB40);
      sub_1ABF24C74();
      if (v28)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v33 = *v49;
    *(*v49 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    *(v33[6] + v24) = v20;
    v34 = v33[7] + *(v7 + 72) * v24;
    v10 = v42;
    v6 = v43;
    v21(v34, v42, v43);
    v35 = v33[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_20;
    }

    ++v16;
    v33[2] = v37;
    a2 = 1;
    a1 = v41;
    v14 = v18;
    if (v46 == v16)
    {
      goto LABEL_13;
    }
  }

  v29 = v49;
  sub_1ABC05A50(v27, a2 & 1, &qword_1EB4D16F0, &qword_1ABF33880, &qword_1EB4D5568, &unk_1ABF4AB30);
  v30 = *v29;
  v31 = sub_1ABAFF5B8(v20);
  if ((v28 & 1) != (v32 & 1))
  {
    goto LABEL_21;
  }

  v24 = v31;
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v38 = swift_allocError();
  swift_willThrow();

  v52 = v38;
  v39 = v38;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v42, v43);

    return;
  }

LABEL_22:
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC09A70(uint64_t a1, char a2, uint64_t *a3)
{
  v49 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v40 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D13D8, &qword_1ABF33560);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v47 = v40 - v15;
  v46 = *(a1 + 16);
  if (!v46)
  {
LABEL_13:

    return;
  }

  v40[1] = v3;
  v41 = a1;
  v16 = 0;
  v45 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v17 = *(v13 + 48);
  v43 = v6;
  v44 = v17;
  v48 = (v7 + 32);
  v42 = v10;
  while (1)
  {
    if (v16 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v18 = v14;
    v19 = v47;
    sub_1ABC1070C(v45 + *(v14 + 72) * v16, v47, &qword_1EB4D13D8, &qword_1ABF33560);
    v53 = *v19;
    v20 = v53;
    v21 = *v48;
    (*v48)(v10, &v19[v44], v6);
    v22 = *v49;
    v24 = sub_1ABAFF5B8(v20);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_19;
    }

    v28 = v23;
    if (v22[3] < v27)
    {
      break;
    }

    if (a2)
    {
      if (v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5580, &qword_1ABF4AB58);
      sub_1ABF24C74();
      if (v28)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v33 = *v49;
    *(*v49 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    *(v33[6] + v24) = v20;
    v34 = v33[7] + *(v7 + 72) * v24;
    v10 = v42;
    v6 = v43;
    v21(v34, v42, v43);
    v35 = v33[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_20;
    }

    ++v16;
    v33[2] = v37;
    a2 = 1;
    a1 = v41;
    v14 = v18;
    if (v46 == v16)
    {
      goto LABEL_13;
    }
  }

  v29 = v49;
  sub_1ABC05A50(v27, a2 & 1, &qword_1EB4D16F0, &qword_1ABF33880, &qword_1EB4D5578, &unk_1ABF4AB48);
  v30 = *v29;
  v31 = sub_1ABAFF5B8(v20);
  if ((v28 & 1) != (v32 & 1))
  {
    goto LABEL_21;
  }

  v24 = v31;
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v38 = swift_allocError();
  swift_willThrow();

  v52 = v38;
  v39 = v38;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v42, v43);

    return;
  }

LABEL_22:
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC09F08(uint64_t a1, char a2, uint64_t *a3)
{
  v49 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v40 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D13E8, &qword_1ABF33570);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v47 = v40 - v15;
  v46 = *(a1 + 16);
  if (!v46)
  {
LABEL_13:

    return;
  }

  v40[1] = v3;
  v41 = a1;
  v16 = 0;
  v45 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v17 = *(v13 + 48);
  v43 = v6;
  v44 = v17;
  v48 = (v7 + 32);
  v42 = v10;
  while (1)
  {
    if (v16 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v18 = v14;
    v19 = v47;
    sub_1ABC1070C(v45 + *(v14 + 72) * v16, v47, &qword_1EB4D13E8, &qword_1ABF33570);
    v53 = *v19;
    v20 = v53;
    v21 = *v48;
    (*v48)(v10, &v19[v44], v6);
    v22 = *v49;
    v24 = sub_1ABAFF5B8(v20);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_19;
    }

    v28 = v23;
    if (v22[3] < v27)
    {
      break;
    }

    if (a2)
    {
      if (v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5590, &qword_1ABF4AB68);
      sub_1ABF24C74();
      if (v28)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v33 = *v49;
    *(*v49 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    *(v33[6] + v24) = v20;
    v34 = v33[7] + *(v7 + 72) * v24;
    v10 = v42;
    v6 = v43;
    v21(v34, v42, v43);
    v35 = v33[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_20;
    }

    ++v16;
    v33[2] = v37;
    a2 = 1;
    a1 = v41;
    v14 = v18;
    if (v46 == v16)
    {
      goto LABEL_13;
    }
  }

  v29 = v49;
  sub_1ABC05A50(v27, a2 & 1, &qword_1EB4D1710, &qword_1ABF338A0, &qword_1EB4D5588, &qword_1ABF4AB60);
  v30 = *v29;
  v31 = sub_1ABAFF5B8(v20);
  if ((v28 & 1) != (v32 & 1))
  {
    goto LABEL_21;
  }

  v24 = v31;
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v38 = swift_allocError();
  swift_willThrow();

  v52 = v38;
  v39 = v38;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v42, v43);

    return;
  }

LABEL_22:
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0A3A0(uint64_t a1, char a2, uint64_t *a3)
{
  v49 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v40 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D13F8, &qword_1ABF33580);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v47 = v40 - v15;
  v46 = *(a1 + 16);
  if (!v46)
  {
LABEL_13:

    return;
  }

  v40[1] = v3;
  v41 = a1;
  v16 = 0;
  v45 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v17 = *(v13 + 48);
  v43 = v6;
  v44 = v17;
  v48 = (v7 + 32);
  v42 = v10;
  while (1)
  {
    if (v16 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v18 = v14;
    v19 = v47;
    sub_1ABC1070C(v45 + *(v14 + 72) * v16, v47, &qword_1EB4D13F8, &qword_1ABF33580);
    v53 = *v19;
    v20 = v53;
    v21 = *v48;
    (*v48)(v10, &v19[v44], v6);
    v22 = *v49;
    v24 = sub_1ABAFF5B8(v20);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_19;
    }

    v28 = v23;
    if (v22[3] < v27)
    {
      break;
    }

    if (a2)
    {
      if (v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D55A0, &qword_1ABF4AB80);
      sub_1ABF24C74();
      if (v28)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v33 = *v49;
    *(*v49 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    *(v33[6] + v24) = v20;
    v34 = v33[7] + *(v7 + 72) * v24;
    v10 = v42;
    v6 = v43;
    v21(v34, v42, v43);
    v35 = v33[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_20;
    }

    ++v16;
    v33[2] = v37;
    a2 = 1;
    a1 = v41;
    v14 = v18;
    if (v46 == v16)
    {
      goto LABEL_13;
    }
  }

  v29 = v49;
  sub_1ABC05A50(v27, a2 & 1, &qword_1EB4D1710, &qword_1ABF338A0, &qword_1EB4D5598, &unk_1ABF4AB70);
  v30 = *v29;
  v31 = sub_1ABAFF5B8(v20);
  if ((v28 & 1) != (v32 & 1))
  {
    goto LABEL_21;
  }

  v24 = v31;
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v38 = swift_allocError();
  swift_willThrow();

  v52 = v38;
  v39 = v38;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v42, v43);

    return;
  }

LABEL_22:
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0A838(uint64_t a1, char a2, uint64_t *a3)
{
  v49 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v40 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D1408, &qword_1ABF33590);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v47 = v40 - v15;
  v46 = *(a1 + 16);
  if (!v46)
  {
LABEL_13:

    return;
  }

  v40[1] = v3;
  v41 = a1;
  v16 = 0;
  v45 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v17 = *(v13 + 48);
  v43 = v6;
  v44 = v17;
  v48 = (v7 + 32);
  v42 = v10;
  while (1)
  {
    if (v16 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v18 = v14;
    v19 = v47;
    sub_1ABC1070C(v45 + *(v14 + 72) * v16, v47, &qword_1EB4D1408, &qword_1ABF33590);
    v53 = *v19;
    v20 = v53;
    v21 = *v48;
    (*v48)(v10, &v19[v44], v6);
    v22 = *v49;
    v24 = sub_1ABAFF5B8(v20);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_19;
    }

    v28 = v23;
    if (v22[3] < v27)
    {
      break;
    }

    if (a2)
    {
      if (v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D55B0, &qword_1ABF4AB98);
      sub_1ABF24C74();
      if (v28)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v33 = *v49;
    *(*v49 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    *(v33[6] + v24) = v20;
    v34 = v33[7] + *(v7 + 72) * v24;
    v10 = v42;
    v6 = v43;
    v21(v34, v42, v43);
    v35 = v33[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_20;
    }

    ++v16;
    v33[2] = v37;
    a2 = 1;
    a1 = v41;
    v14 = v18;
    if (v46 == v16)
    {
      goto LABEL_13;
    }
  }

  v29 = v49;
  sub_1ABC05A50(v27, a2 & 1, &qword_1EB4D1710, &qword_1ABF338A0, &qword_1EB4D55A8, &unk_1ABF4AB88);
  v30 = *v29;
  v31 = sub_1ABAFF5B8(v20);
  if ((v28 & 1) != (v32 & 1))
  {
    goto LABEL_21;
  }

  v24 = v31;
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v38 = swift_allocError();
  swift_willThrow();

  v52 = v38;
  v39 = v38;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v42, v43);

    return;
  }

LABEL_22:
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0ACD0(uint64_t a1, char a2, uint64_t *a3)
{
  v49 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v40 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D1418, &qword_1ABF335A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v47 = v40 - v15;
  v46 = *(a1 + 16);
  if (!v46)
  {
LABEL_13:

    return;
  }

  v40[1] = v3;
  v41 = a1;
  v16 = 0;
  v45 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v17 = *(v13 + 48);
  v43 = v6;
  v44 = v17;
  v48 = (v7 + 32);
  v42 = v10;
  while (1)
  {
    if (v16 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v18 = v14;
    v19 = v47;
    sub_1ABC1070C(v45 + *(v14 + 72) * v16, v47, &qword_1EB4D1418, &qword_1ABF335A0);
    v53 = *v19;
    v20 = v53;
    v21 = *v48;
    (*v48)(v10, &v19[v44], v6);
    v22 = *v49;
    v24 = sub_1ABAFF5B8(v20);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_19;
    }

    v28 = v23;
    if (v22[3] < v27)
    {
      break;
    }

    if (a2)
    {
      if (v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D55D0, &qword_1ABF4ABC0);
      sub_1ABF24C74();
      if (v28)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v33 = *v49;
    *(*v49 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    *(v33[6] + v24) = v20;
    v34 = v33[7] + *(v7 + 72) * v24;
    v10 = v42;
    v6 = v43;
    v21(v34, v42, v43);
    v35 = v33[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_20;
    }

    ++v16;
    v33[2] = v37;
    a2 = 1;
    a1 = v41;
    v14 = v18;
    if (v46 == v16)
    {
      goto LABEL_13;
    }
  }

  v29 = v49;
  sub_1ABC05A50(v27, a2 & 1, &qword_1EB4D16F0, &qword_1ABF33880, &qword_1EB4D55C8, &unk_1ABF4ABB0);
  v30 = *v29;
  v31 = sub_1ABAFF5B8(v20);
  if ((v28 & 1) != (v32 & 1))
  {
    goto LABEL_21;
  }

  v24 = v31;
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v38 = swift_allocError();
  swift_willThrow();

  v52 = v38;
  v39 = v38;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v42, v43);

    return;
  }

LABEL_22:
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0B168(uint64_t a1, char a2, uint64_t *a3)
{
  v49 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v40 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D1428, &qword_1ABF335B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v47 = v40 - v15;
  v46 = *(a1 + 16);
  if (!v46)
  {
LABEL_13:

    return;
  }

  v40[1] = v3;
  v41 = a1;
  v16 = 0;
  v45 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v17 = *(v13 + 48);
  v43 = v6;
  v44 = v17;
  v48 = (v7 + 32);
  v42 = v10;
  while (1)
  {
    if (v16 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v18 = v14;
    v19 = v47;
    sub_1ABC1070C(v45 + *(v14 + 72) * v16, v47, &qword_1EB4D1428, &qword_1ABF335B0);
    v53 = *v19;
    v20 = v53;
    v21 = *v48;
    (*v48)(v10, &v19[v44], v6);
    v22 = *v49;
    v24 = sub_1ABAFF5B8(v20);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_19;
    }

    v28 = v23;
    if (v22[3] < v27)
    {
      break;
    }

    if (a2)
    {
      if (v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D55E0, &qword_1ABF617F0);
      sub_1ABF24C74();
      if (v28)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v33 = *v49;
    *(*v49 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    *(v33[6] + v24) = v20;
    v34 = v33[7] + *(v7 + 72) * v24;
    v10 = v42;
    v6 = v43;
    v21(v34, v42, v43);
    v35 = v33[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_20;
    }

    ++v16;
    v33[2] = v37;
    a2 = 1;
    a1 = v41;
    v14 = v18;
    if (v46 == v16)
    {
      goto LABEL_13;
    }
  }

  v29 = v49;
  sub_1ABC05A50(v27, a2 & 1, &qword_1EB4D1710, &qword_1ABF338A0, &qword_1EB4D55D8, &qword_1ABF4ABC8);
  v30 = *v29;
  v31 = sub_1ABAFF5B8(v20);
  if ((v28 & 1) != (v32 & 1))
  {
    goto LABEL_21;
  }

  v24 = v31;
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v38 = swift_allocError();
  swift_willThrow();

  v52 = v38;
  v39 = v38;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v42, v43);

    return;
  }

LABEL_22:
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0B600(uint64_t a1, char a2, uint64_t *a3)
{
  v49 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v40 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D1438, &qword_1ABF335C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v47 = v40 - v15;
  v46 = *(a1 + 16);
  if (!v46)
  {
LABEL_13:

    return;
  }

  v40[1] = v3;
  v41 = a1;
  v16 = 0;
  v45 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v17 = *(v13 + 48);
  v43 = v6;
  v44 = v17;
  v48 = (v7 + 32);
  v42 = v10;
  while (1)
  {
    if (v16 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v18 = v14;
    v19 = v47;
    sub_1ABC1070C(v45 + *(v14 + 72) * v16, v47, &qword_1EB4D1438, &qword_1ABF335C0);
    v53 = *v19;
    v20 = v53;
    v21 = *v48;
    (*v48)(v10, &v19[v44], v6);
    v22 = *v49;
    v24 = sub_1ABAFF5B8(v20);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_19;
    }

    v28 = v23;
    if (v22[3] < v27)
    {
      break;
    }

    if (a2)
    {
      if (v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D55F0, &qword_1ABF4ABE0);
      sub_1ABF24C74();
      if (v28)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v33 = *v49;
    *(*v49 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    *(v33[6] + v24) = v20;
    v34 = v33[7] + *(v7 + 72) * v24;
    v10 = v42;
    v6 = v43;
    v21(v34, v42, v43);
    v35 = v33[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_20;
    }

    ++v16;
    v33[2] = v37;
    a2 = 1;
    a1 = v41;
    v14 = v18;
    if (v46 == v16)
    {
      goto LABEL_13;
    }
  }

  v29 = v49;
  sub_1ABC05A50(v27, a2 & 1, &qword_1EB4D16F0, &qword_1ABF33880, &qword_1EB4D55E8, &unk_1ABF4ABD0);
  v30 = *v29;
  v31 = sub_1ABAFF5B8(v20);
  if ((v28 & 1) != (v32 & 1))
  {
    goto LABEL_21;
  }

  v24 = v31;
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v38 = swift_allocError();
  swift_willThrow();

  v52 = v38;
  v39 = v38;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v42, v43);

    return;
  }

LABEL_22:
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0BA98(uint64_t a1, char a2, uint64_t *a3)
{
  v49 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v40 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D1448, &qword_1ABF335D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v47 = v40 - v15;
  v46 = *(a1 + 16);
  if (!v46)
  {
LABEL_13:

    return;
  }

  v40[1] = v3;
  v41 = a1;
  v16 = 0;
  v45 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v17 = *(v13 + 48);
  v43 = v6;
  v44 = v17;
  v48 = (v7 + 32);
  v42 = v10;
  while (1)
  {
    if (v16 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v18 = v14;
    v19 = v47;
    sub_1ABC1070C(v45 + *(v14 + 72) * v16, v47, &qword_1EB4D1448, &qword_1ABF335D0);
    v53 = *v19;
    v20 = v53;
    v21 = *v48;
    (*v48)(v10, &v19[v44], v6);
    v22 = *v49;
    v24 = sub_1ABAFF5B8(v20);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_19;
    }

    v28 = v23;
    if (v22[3] < v27)
    {
      break;
    }

    if (a2)
    {
      if (v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5600, &qword_1ABF4ABF8);
      sub_1ABF24C74();
      if (v28)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v33 = *v49;
    *(*v49 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    *(v33[6] + v24) = v20;
    v34 = v33[7] + *(v7 + 72) * v24;
    v10 = v42;
    v6 = v43;
    v21(v34, v42, v43);
    v35 = v33[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_20;
    }

    ++v16;
    v33[2] = v37;
    a2 = 1;
    a1 = v41;
    v14 = v18;
    if (v46 == v16)
    {
      goto LABEL_13;
    }
  }

  v29 = v49;
  sub_1ABC05A50(v27, a2 & 1, &qword_1EB4D1710, &qword_1ABF338A0, &qword_1EB4D55F8, &unk_1ABF4ABE8);
  v30 = *v29;
  v31 = sub_1ABAFF5B8(v20);
  if ((v28 & 1) != (v32 & 1))
  {
    goto LABEL_21;
  }

  v24 = v31;
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v38 = swift_allocError();
  swift_willThrow();

  v52 = v38;
  v39 = v38;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v42, v43);

    return;
  }

LABEL_22:
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0BF30(uint64_t a1, char a2, uint64_t *a3)
{
  v49 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v40 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D1458, &qword_1ABF335E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v47 = v40 - v15;
  v46 = *(a1 + 16);
  if (!v46)
  {
LABEL_13:

    return;
  }

  v40[1] = v3;
  v41 = a1;
  v16 = 0;
  v45 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v17 = *(v13 + 48);
  v43 = v6;
  v44 = v17;
  v48 = (v7 + 32);
  v42 = v10;
  while (1)
  {
    if (v16 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v18 = v14;
    v19 = v47;
    sub_1ABC1070C(v45 + *(v14 + 72) * v16, v47, &qword_1EB4D1458, &qword_1ABF335E0);
    v53 = *v19;
    v20 = v53;
    v21 = *v48;
    (*v48)(v10, &v19[v44], v6);
    v22 = *v49;
    v24 = sub_1ABAFF5B8(v20);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_19;
    }

    v28 = v23;
    if (v22[3] < v27)
    {
      break;
    }

    if (a2)
    {
      if (v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5610, &qword_1ABF4AC10);
      sub_1ABF24C74();
      if (v28)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v33 = *v49;
    *(*v49 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    *(v33[6] + v24) = v20;
    v34 = v33[7] + *(v7 + 72) * v24;
    v10 = v42;
    v6 = v43;
    v21(v34, v42, v43);
    v35 = v33[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_20;
    }

    ++v16;
    v33[2] = v37;
    a2 = 1;
    a1 = v41;
    v14 = v18;
    if (v46 == v16)
    {
      goto LABEL_13;
    }
  }

  v29 = v49;
  sub_1ABC05A50(v27, a2 & 1, &qword_1EB4D16F0, &qword_1ABF33880, &qword_1EB4D5608, &unk_1ABF4AC00);
  v30 = *v29;
  v31 = sub_1ABAFF5B8(v20);
  if ((v28 & 1) != (v32 & 1))
  {
    goto LABEL_21;
  }

  v24 = v31;
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v38 = swift_allocError();
  swift_willThrow();

  v52 = v38;
  v39 = v38;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v42, v43);

    return;
  }

LABEL_22:
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0C3C8(uint64_t a1, char a2, uint64_t *a3)
{
  v49 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v40 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D1468, &qword_1ABF335F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v47 = v40 - v15;
  v46 = *(a1 + 16);
  if (!v46)
  {
LABEL_13:

    return;
  }

  v40[1] = v3;
  v41 = a1;
  v16 = 0;
  v45 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v17 = *(v13 + 48);
  v43 = v6;
  v44 = v17;
  v48 = (v7 + 32);
  v42 = v10;
  while (1)
  {
    if (v16 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v18 = v14;
    v19 = v47;
    sub_1ABC1070C(v45 + *(v14 + 72) * v16, v47, &qword_1EB4D1468, &qword_1ABF335F0);
    v53 = *v19;
    v20 = v53;
    v21 = *v48;
    (*v48)(v10, &v19[v44], v6);
    v22 = *v49;
    v24 = sub_1ABAFF5B8(v20);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_19;
    }

    v28 = v23;
    if (v22[3] < v27)
    {
      break;
    }

    if (a2)
    {
      if (v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5620, &unk_1ABF61980);
      sub_1ABF24C74();
      if (v28)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v33 = *v49;
    *(*v49 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    *(v33[6] + v24) = v20;
    v34 = v33[7] + *(v7 + 72) * v24;
    v10 = v42;
    v6 = v43;
    v21(v34, v42, v43);
    v35 = v33[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_20;
    }

    ++v16;
    v33[2] = v37;
    a2 = 1;
    a1 = v41;
    v14 = v18;
    if (v46 == v16)
    {
      goto LABEL_13;
    }
  }

  v29 = v49;
  sub_1ABC05A50(v27, a2 & 1, &qword_1EB4D1710, &qword_1ABF338A0, &qword_1EB4D5618, &qword_1ABF4AC18);
  v30 = *v29;
  v31 = sub_1ABAFF5B8(v20);
  if ((v28 & 1) != (v32 & 1))
  {
    goto LABEL_21;
  }

  v24 = v31;
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v38 = swift_allocError();
  swift_willThrow();

  v52 = v38;
  v39 = v38;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v42, v43);

    return;
  }

LABEL_22:
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0C860(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v24 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v24 == v5)
    {
LABEL_17:

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 8);
    if (v7 == 4)
    {
      goto LABEL_17;
    }

    v8 = *i;
    v26 = *(i - 8);
    v9 = *a3;
    v11 = sub_1ABAFF5B8(v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5630, &qword_1ABF4AC28);
      sub_1ABF24C74();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v18[6] + v11) = v7;
    *(v18[7] + 8 * v11) = v8;
    v19 = v18[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    v18[2] = v21;
    ++v5;
    a2 = 1;
  }

  sub_1ABC05874();
  v15 = *a3;
  v16 = sub_1ABAFF5B8(v7);
  if ((v14 & 1) != (v17 & 1))
  {
    goto LABEL_22;
  }

  v11 = v16;
  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v22 = swift_allocError();
  swift_willThrow();

  v23 = v22;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0CB1C(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v26 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABAFF390(0, &qword_1EB4D1F98, 0x1E6985C40);
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *i;
    v8 = *a3;
    v9 = *(i - 1);
    v10 = v7;
    sub_1ABAF89FC();
    v13 = v12;
    v14 = v8[2];
    v15 = (v11 & 1) == 0;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v8[3] < v14 + v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5540, &qword_1ABF4AB08);
      sub_1ABF24C74();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
    *(v20[6] + 8 * v13) = v9;
    *(v20[7] + 8 * v13) = v10;
    v21 = v20[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v20[2] = v23;
    ++v5;
    a2 = 1;
  }

  sub_1ABC069AC();
  v17 = *a3;
  sub_1ABAF89FC();
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v13 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABAFF390(0, &qword_1EB4D1F98, 0x1E6985C40);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0CE18(uint64_t a1, char a2, void *a3)
{
  v6 = 0;
  v32 = *(a1 + 16);
  for (i = 32; ; i += 80)
  {
    if (v32 == v6)
    {
LABEL_17:

      return;
    }

    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_23;
    }

    memcpy(__dst, (a1 + i), sizeof(__dst));
    v8 = *(&__dst[4] + 1);
    v27 = *(&__dst[2] + 8);
    v28 = *(&__dst[3] + 8);
    v29 = *(&__dst[1] + 8);
    v26 = *(__dst + 8);
    v9 = *&__dst[0];
    sub_1ABC1070C(__dst, v30, &qword_1EB4D12B0, &qword_1ABF4AAF0);
    if (v29 == 1)
    {
      goto LABEL_17;
    }

    __dst[0] = v26;
    __dst[1] = v29;
    __dst[2] = v27;
    __dst[3] = v28;
    *&__dst[4] = v8;
    v10 = *a3;
    v12 = sub_1ABAFF5A4(v9);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_20;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5530, &qword_1ABF4AAF8);
      sub_1ABF24C74();
      if (v16)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    *(v20[6] + 8 * v12) = v9;
    memcpy((v20[7] + 72 * v12), __dst, 0x48uLL);
    v21 = v20[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_21;
    }

    v20[2] = v23;
    ++v6;
    a2 = 1;
  }

  sub_1ABC06554(v15, a2 & 1);
  v17 = *a3;
  v18 = sub_1ABAFF5A4(v9);
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_22;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1ABC1065C(__dst);

    return;
  }

LABEL_23:
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0D158(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v32 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v32 == v5)
    {
LABEL_17:

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_23;
    }

    v8 = *(i - 1);
    v7 = *i;

    if (!v7)
    {
      goto LABEL_17;
    }

    v9 = *a3;
    v15 = sub_1ABAF81A8();
    v16 = v9[2];
    v17 = (v10 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_20;
    }

    v19 = v10;
    if (v9[3] < v18)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5520, &qword_1ABF4AAE0);
      sub_1ABF24C74();
      if (v19)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v23 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(v23[6] + 8 * v15) = v8;
    *(v23[7] + 8 * v15) = v7;
    v24 = v23[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_21;
    }

    v23[2] = v26;
    ++v5;
    a2 = 1;
  }

  sub_1ABC06820(v18, a2 & 1, &unk_1EB4D5518, &unk_1ABF4AAD8, v11, v12, v13, v14, v29, v30, *v31, v31[4]);
  v20 = *a3;
  v21 = sub_1ABAF81A8();
  if ((v19 & 1) != (v22 & 1))
  {
    goto LABEL_22;
  }

  v15 = v21;
  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v27 = swift_allocError();
  swift_willThrow();
  v28 = v27;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

unint64_t sub_1ABC0D42C()
{
  result = qword_1EB4D52E8;
  if (!qword_1EB4D52E8)
  {
    sub_1ABAFF390(255, &qword_1ED86B920, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D52E8);
  }

  return result;
}

unint64_t sub_1ABC0D494()
{
  result = qword_1EB4D5328;
  if (!qword_1EB4D5328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5328);
  }

  return result;
}

unint64_t sub_1ABC0D4E8()
{
  result = qword_1EB4D5330;
  if (!qword_1EB4D5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5330);
  }

  return result;
}

unint64_t sub_1ABC0D53C()
{
  result = qword_1EB4D5338;
  if (!qword_1EB4D5338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5338);
  }

  return result;
}

unint64_t sub_1ABC0D590()
{
  result = qword_1EB4D5340;
  if (!qword_1EB4D5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5340);
  }

  return result;
}

unint64_t sub_1ABC0D5E4()
{
  result = qword_1EB4D5348;
  if (!qword_1EB4D5348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5348);
  }

  return result;
}

unint64_t sub_1ABC0D638()
{
  result = qword_1EB4D5350;
  if (!qword_1EB4D5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5350);
  }

  return result;
}

uint64_t sub_1ABC0D68C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D4768, &qword_1ABF497E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABC0D6F8()
{
  result = qword_1EB4D5390;
  if (!qword_1EB4D5390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5390);
  }

  return result;
}

unint64_t sub_1ABC0D74C()
{
  result = qword_1EB4D5398;
  if (!qword_1EB4D5398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5398);
  }

  return result;
}

unint64_t sub_1ABC0D7A0()
{
  result = qword_1EB4D53A8;
  if (!qword_1EB4D53A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D53A8);
  }

  return result;
}

unint64_t sub_1ABC0D818()
{
  result = qword_1EB4D53C8;
  if (!qword_1EB4D53C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D53C8);
  }

  return result;
}

unint64_t sub_1ABC0D86C()
{
  result = qword_1EB4D53D0;
  if (!qword_1EB4D53D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D53D0);
  }

  return result;
}

unint64_t sub_1ABC0D8C0()
{
  result = qword_1EB4D53D8;
  if (!qword_1EB4D53D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D53D8);
  }

  return result;
}

unint64_t sub_1ABC0D914()
{
  result = qword_1EB4D53E8;
  if (!qword_1EB4D53E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D53E8);
  }

  return result;
}

unint64_t sub_1ABC0D968()
{
  result = qword_1EB4D53F0;
  if (!qword_1EB4D53F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D53F0);
  }

  return result;
}

unint64_t sub_1ABC0D9C0()
{
  result = qword_1ED86D3D0;
  if (!qword_1ED86D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D3D0);
  }

  return result;
}

unint64_t sub_1ABC0DA18()
{
  result = qword_1EB4D53F8;
  if (!qword_1EB4D53F8)
  {
    sub_1ABAE2850(&qword_1EB4D5400, &qword_1ABF498E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D53F8);
  }

  return result;
}

uint64_t sub_1ABC0DA7C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1ABC0DB00(&qword_1EB4D5408, a2, type metadata accessor for EntityTaggingStatefulFeedback);
  result = sub_1ABC0DB00(&qword_1EB4D2B78, v3, type metadata accessor for EntityTaggingStatefulFeedback);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1ABC0DB00(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    sub_1ABA89740();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABC0DB48()
{
  result = qword_1EB4D5410;
  if (!qword_1EB4D5410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5410);
  }

  return result;
}

uint64_t sub_1ABC0DB9C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1ABC0DB00(&qword_1EB4D5418, a2, type metadata accessor for EntityTaggingDirectFeedback);
  result = sub_1ABC0DB00(&qword_1EB4D2B40, v3, type metadata accessor for EntityTaggingDirectFeedback);
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PersonEntityTagType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE3)
  {
    if (a2 + 29 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 29) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 30;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v5 = v6 - 30;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PersonEntityTagType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE2)
  {
    v6 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 29;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of PersonEntityTaggingService.personEntityTags(for:options:)()
{
  sub_1ABA8C008();
  sub_1ABC10814();
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  v4 = *(v3 + 104);
  v12 = v4 + *v4;
  v5 = v4[1];
  v6 = swift_task_alloc();
  v7 = sub_1ABA8864C(v6);
  *v7 = v8;
  v9 = sub_1ABA8E850(v7);

  return v10(v9);
}

uint64_t dispatch thunk of PersonEntityTaggingService.peopleEntityTags(for:options:)()
{
  sub_1ABA8C008();
  sub_1ABA954A8();
  v0 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  v2 = *(v1 + 112);
  v10 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = sub_1ABA8864C(v4);
  *v5 = v6;
  v7 = sub_1ABA7E680(v5);

  return v8(v7);
}

uint64_t dispatch thunk of PersonEntityTaggingService.entitiesForTag(gdEntityTagType:options:)()
{
  sub_1ABA8C008();
  sub_1ABA954A8();
  v0 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  v2 = *(v1 + 120);
  v10 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = sub_1ABA8864C(v4);
  *v5 = v6;
  v7 = sub_1ABA7E680(v5);

  return v8(v7);
}

uint64_t dispatch thunk of PersonEntityTaggingService.personEntities(for:options:)()
{
  sub_1ABA8C008();
  sub_1ABA954A8();
  v0 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  v2 = *(v1 + 128);
  v10 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = sub_1ABA8864C(v4);
  *v5 = v6;
  v7 = sub_1ABA7E680(v5);

  return v8(v7);
}

{
  sub_1ABA8C008();
  sub_1ABA954A8();
  v0 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  v2 = *(v1 + 144);
  v10 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = sub_1ABA8864C(v4);
  *v5 = v6;
  v7 = sub_1ABA7E680(v5);

  return v8(v7);
}

uint64_t dispatch thunk of PersonEntityTaggingService.personEntities(tags:options:)()
{
  sub_1ABA8C008();
  sub_1ABA954A8();
  v0 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  v2 = *(v1 + 136);
  v10 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = sub_1ABA8864C(v4);
  *v5 = v6;
  v7 = sub_1ABA7E680(v5);

  return v8(v7);
}

uint64_t dispatch thunk of PersonEntityTaggingService.recordStatefulFeedbackForObjC(gdFeedback:)()
{
  sub_1ABA7BC04();
  v2 = v1;
  v3 = *v0;
  v4 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  v6 = *(v5 + 160);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v9 = sub_1ABA8864C(v8);
  *v9 = v10;
  v9[1] = sub_1ABAB2788;

  return v12(v2);
}

uint64_t dispatch thunk of PersonEntityTaggingService.recordDirectFeedbackForObjC(gradedTrue:gradedFalse:ignored:neverPresented:)()
{
  sub_1ABA906D0();
  sub_1ABA88C5C();
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  v4 = *(v3 + 176);
  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v7 = sub_1ABA8864C(v6);
  *v7 = v8;
  v7[1] = sub_1ABAB2788;
  v9 = sub_1ABA805B4();

  return v11(v9);
}

uint64_t dispatch thunk of PersonEntityTaggingService.PersonEntityTaggingOptions.tagThresholds.setter()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 104))();
}

uint64_t dispatch thunk of PersonEntityTaggingService.PersonEntityTaggingOptions.tagThresholds.modify()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 112))();
}

uint64_t dispatch thunk of EntityTaggingService.entityTags(identifier:options:)()
{
  sub_1ABA906D0();
  sub_1ABA88C5C();
  v5 = *(*v1 + 104);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v8 = sub_1ABA8864C(v7);
  *v8 = v9;
  v8[1] = sub_1ABA7FDA0;

  return v11(v4, v3, v2, v0);
}

uint64_t dispatch thunk of EntityTaggingService.personEntityTags(for:options:)()
{
  sub_1ABA8C008();
  sub_1ABC10814();
  v1 = *(*v0 + 112);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_1ABA8864C(v3);
  *v4 = v5;
  v6 = sub_1ABA8E850(v4);

  return v7(v6);
}

uint64_t dispatch thunk of EntityTaggingService.peopleEntityTags(for:options:)()
{
  sub_1ABA8C008();
  sub_1ABAA2284();
  v1 = *(v0 + 120);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_1ABA8864C(v3);
  *v4 = v5;
  v6 = sub_1ABA7E680(v4);

  return v7(v6);
}

uint64_t sub_1ABC0EDB4()
{
  sub_1ABA7BBF8();
  sub_1ABAB10C8();
  v3 = *(v2 + 16);
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;

  sub_1ABA82A20();

  return v6(v0);
}

uint64_t dispatch thunk of EntityTaggingService.entitiesForTag(entityTagType:options:)()
{
  sub_1ABA8C008();
  sub_1ABC10814();
  v4 = *(*v1 + 128);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v7 = sub_1ABA8864C(v6);
  *v7 = v8;
  v7[1] = sub_1ABAB2788;

  return v10(v3, v2, v0);
}

uint64_t dispatch thunk of EntityTaggingService.personEntities(for:options:)()
{
  sub_1ABA8C008();
  sub_1ABAA2284();
  v1 = *(v0 + 136);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_1ABA8864C(v3);
  *v4 = v5;
  v6 = sub_1ABA7E680(v4);

  return v7(v6);
}

uint64_t dispatch thunk of EntityTaggingService.entitiesForTag(gdEntityTagType:options:)()
{
  sub_1ABA8C008();
  sub_1ABAA2284();
  v1 = *(v0 + 144);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_1ABA8864C(v3);
  *v4 = v5;
  v6 = sub_1ABA7E680(v4);

  return v7(v6);
}

uint64_t dispatch thunk of EntityTaggingService.personEntities(tags:options:)()
{
  sub_1ABA8C008();
  sub_1ABAA2284();
  v1 = *(v0 + 152);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_1ABA8864C(v3);
  *v4 = v5;
  v6 = sub_1ABA7E680(v4);

  return v7(v6);
}

uint64_t dispatch thunk of EntityTaggingService.personEntities(gdEntityTagTypes:options:)()
{
  sub_1ABA8C008();
  sub_1ABAA2284();
  v1 = *(v0 + 160);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_1ABA8864C(v3);
  *v4 = v5;
  v6 = sub_1ABA7E680(v4);

  return v7(v6);
}

uint64_t getEnumTagSinglePayload for EntityTaggingService.RankedPersonEntityTags.ScoredPersonEntityTagType(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xE3 && a1[16])
    {
      v2 = *a1 + 226;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 0x1E;
      v2 = v3 - 30;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EntityTaggingService.RankedPersonEntityTags.ScoredPersonEntityTagType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE2)
  {
    *result = a2 - 227;
    *(result + 8) = 0;
    if (a3 >= 0xE3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 29;
    }
  }

  return result;
}

uint64_t dispatch thunk of EntityTaggingStatefulFeedback.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 112))();
}

uint64_t dispatch thunk of EntityTaggingDirectFeedback.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 120))();
}

_BYTE *storeEnumTagSinglePayload for EntityTaggingDirectFeedback.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABC0F7C8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABC0F8E4(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return sub_1ABA814E4();
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

_BYTE *sub_1ABC0F930(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1ABC0F9E0()
{
  result = qword_1EB4D5420;
  if (!qword_1EB4D5420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5420);
  }

  return result;
}

unint64_t sub_1ABC0FA38()
{
  result = qword_1EB4D5428;
  if (!qword_1EB4D5428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5428);
  }

  return result;
}

unint64_t sub_1ABC0FA90()
{
  result = qword_1EB4D5430;
  if (!qword_1EB4D5430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5430);
  }

  return result;
}

unint64_t sub_1ABC0FAE8()
{
  result = qword_1EB4D5438;
  if (!qword_1EB4D5438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5438);
  }

  return result;
}

unint64_t sub_1ABC0FB40()
{
  result = qword_1EB4D5440;
  if (!qword_1EB4D5440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5440);
  }

  return result;
}

unint64_t sub_1ABC0FB98()
{
  result = qword_1EB4D5448;
  if (!qword_1EB4D5448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5448);
  }

  return result;
}

unint64_t sub_1ABC0FBF0()
{
  result = qword_1EB4D5450;
  if (!qword_1EB4D5450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5450);
  }

  return result;
}

unint64_t sub_1ABC0FC48()
{
  result = qword_1EB4D5458;
  if (!qword_1EB4D5458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5458);
  }

  return result;
}

unint64_t sub_1ABC0FCA0()
{
  result = qword_1EB4D5460;
  if (!qword_1EB4D5460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5460);
  }

  return result;
}

unint64_t sub_1ABC0FCF8()
{
  result = qword_1EB4D5468;
  if (!qword_1EB4D5468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5468);
  }

  return result;
}

unint64_t sub_1ABC0FD50()
{
  result = qword_1EB4D5470;
  if (!qword_1EB4D5470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5470);
  }

  return result;
}

unint64_t sub_1ABC0FDA8()
{
  result = qword_1EB4D5478;
  if (!qword_1EB4D5478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5478);
  }

  return result;
}

unint64_t sub_1ABC0FE00()
{
  result = qword_1EB4D5480;
  if (!qword_1EB4D5480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5480);
  }

  return result;
}

unint64_t sub_1ABC0FE58()
{
  result = qword_1EB4D5488;
  if (!qword_1EB4D5488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5488);
  }

  return result;
}

unint64_t sub_1ABC0FEB0()
{
  result = qword_1EB4D5490;
  if (!qword_1EB4D5490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5490);
  }

  return result;
}

unint64_t sub_1ABC0FF08()
{
  result = qword_1EB4D5498;
  if (!qword_1EB4D5498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5498);
  }

  return result;
}

unint64_t sub_1ABC0FF60()
{
  result = qword_1EB4D54A0;
  if (!qword_1EB4D54A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D54A0);
  }

  return result;
}

unint64_t sub_1ABC0FFB8()
{
  result = qword_1EB4D54A8;
  if (!qword_1EB4D54A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D54A8);
  }

  return result;
}

unint64_t sub_1ABC10010()
{
  result = qword_1EB4D54B0;
  if (!qword_1EB4D54B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D54B0);
  }

  return result;
}

unint64_t sub_1ABC10068()
{
  result = qword_1EB4D54B8;
  if (!qword_1EB4D54B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D54B8);
  }

  return result;
}

unint64_t sub_1ABC100C0()
{
  result = qword_1EB4D54C0;
  if (!qword_1EB4D54C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D54C0);
  }

  return result;
}

unint64_t sub_1ABC10118()
{
  result = qword_1EB4D54C8;
  if (!qword_1EB4D54C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D54C8);
  }

  return result;
}

unint64_t sub_1ABC10170()
{
  result = qword_1EB4D54D0;
  if (!qword_1EB4D54D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D54D0);
  }

  return result;
}

unint64_t sub_1ABC101C8()
{
  result = qword_1EB4D54D8;
  if (!qword_1EB4D54D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D54D8);
  }

  return result;
}

uint64_t sub_1ABC1021C()
{
  sub_1ABA906D0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = sub_1ABA8864C(v7);
  *v8 = v9;
  v8[1] = sub_1ABAB2788;
  v10 = sub_1ABAA25B0();

  return v11(v10);
}

uint64_t sub_1ABC102E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = sub_1ABAA08C0();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1ABC10318()
{
  sub_1ABA7BC04();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_1ABA8864C(v4);
  *v5 = v6;
  v5[1] = sub_1ABAB2788;
  v7 = sub_1ABAA25B0();

  return v8(v7);
}

uint64_t sub_1ABC103BC()
{
  sub_1ABC10824();
  sub_1ABA8C008();
  sub_1ABA89C7C();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  sub_1ABA949A0(v1);
  sub_1ABAA9184();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1ABC1044C()
{
  sub_1ABC10824();
  sub_1ABA8C008();
  sub_1ABA89C7C();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  sub_1ABA949A0(v1);
  sub_1ABAA9184();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1ABC104DC()
{
  sub_1ABC10824();
  sub_1ABA8C008();
  sub_1ABA89C7C();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  sub_1ABA949A0(v1);
  sub_1ABAA9184();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1ABC1056C()
{
  _Block_release(*(v0 + 32));

  v1 = sub_1ABAA08C0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

unint64_t sub_1ABC105B4()
{
  result = qword_1EB4D5500;
  if (!qword_1EB4D5500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5500);
  }

  return result;
}

unint64_t sub_1ABC10608()
{
  result = qword_1EB4D5508;
  if (!qword_1EB4D5508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5508);
  }

  return result;
}

uint64_t sub_1ABC1070C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1ABA9F5B8(a1, a2, a3, a4);
  sub_1ABA7D08C(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

id sub_1ABC107F4()
{

  return objc_allocWithZone(v0);
}

uint64_t sub_1ABC10838(uint64_t a1, void *a2, double a3)
{
  v6 = a1 + 56;
  v5 = *(a1 + 56);
  v7 = sub_1ABA7E5E8(a1);
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  v29 = v7;

  v13 = 0;
  v27 = v6;
  v28 = a2;
  if (v10)
  {
LABEL_6:
    while (1)
    {
      v15 = *(*(v29 + 48) + (__clz(__rbit64(v10)) | (v13 << 6)));
      v16 = *a2;
      swift_isUniquelyReferenced_nonNull_native();
      v30 = *a2;
      v17 = sub_1ABAAFEB4();
      if (__OFADD__(v30[2], (v18 & 1) == 0))
      {
        break;
      }

      v19 = v17;
      v20 = v18;
      sub_1ABAD219C(&qword_1EB4D52E0, qword_1ABF49790);
      if (sub_1ABF24C64())
      {
        v21 = sub_1ABAAFEB4();
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_20;
        }

        v19 = v21;
      }

      if (v20)
      {
        *(v30[7] + 8 * v19) = a3;
      }

      else
      {
        v30[(v19 >> 6) + 8] |= 1 << v19;
        *(v30[6] + v19) = v15;
        *(v30[7] + 8 * v19) = a3;
        v23 = v30[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_19;
        }

        v30[2] = v25;
      }

      v10 &= v10 - 1;
      v6 = v27;
      a2 = v28;
      *v28 = v30;
      if (!v10)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {
      }

      v10 = *(v6 + 8 * v14);
      ++v13;
      if (v10)
      {
        v13 = v14;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABC10A34(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void))
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    a3();
    return a2;
  }

  else
  {

    return a4();
  }
}

void sub_1ABC10A90(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_30;
  }

  v6 = sub_1ABA8180C();
  if ((v7 & 1) == 0)
  {
    goto LABEL_30;
  }

  if (sub_1ABA7C154(v6) >= 0.95)
  {
    goto LABEL_31;
  }

  sub_1ABC1289C(v3, &v45);
  v8 = v45;
  v9 = sub_1ABE8B4D4(&unk_1F2091958);
  sub_1ABA8C048(v9);
  sub_1ABA946E0();
  if (v4)
  {
    goto LABEL_31;
  }

  v10 = sub_1ABE8B4D4(&unk_1F2091928);
  sub_1ABA8C048(v10);
  sub_1ABA946E0();
  v11 = sub_1ABE8B4D4(&unk_1F2091980);
  sub_1ABA8C048(v11);
  sub_1ABAA38A4();
  if (v8)
  {
    goto LABEL_31;
  }

  sub_1ABC12A7C(&v44);
  v12 = v44;
  v13 = sub_1ABE8B4D4(&unk_1F2091958);
  sub_1ABA8C048(v13);
  sub_1ABAA38A4();
  if (v12)
  {
    goto LABEL_31;
  }

  v14 = sub_1ABF239C4();
  v15 = sub_1ABF23BD4();
  v16 = sub_1ABAA605C();
  v18 = [v16 v17];

  v19 = 0.0;
  if (v18)
  {
    [v18 doubleValue];
    v19 = v20;
  }

  sub_1ABAD5944(v14, v19);

  v21 = sub_1ABA8E89C();
  v22 = sub_1ABAA605C();
  v24 = [v22 v23];

  if (v24)
  {
    [v24 doubleValue];
    v5 = v25;
  }

  sub_1ABA8F2F8();
  if (!(v27 ^ v28 | v26))
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v5 <= -9.22337204e18)
  {
    goto LABEL_33;
  }

  sub_1ABA80A94();
  if (!v27)
  {
    goto LABEL_34;
  }

  AgeDifferenceCategory.init(rawValue:)(v5);
  v29 = sub_1ABF23BD4();
  v30 = sub_1ABAA605C();
  v32 = [v30 v31];

  if (v32)
  {
    [v32 doubleValue];
    v34 = v33;
  }

  else
  {
    v34 = 0.0;
  }

  sub_1ABA8F2F8();
  if (!(v27 ^ v28 | v26))
  {
    goto LABEL_35;
  }

  if (v34 > -9.22337204e18)
  {
    sub_1ABA80A94();
    if (!v27)
    {
      goto LABEL_37;
    }

    AgeDifferenceCategory.init(rawValue:)(v34);
    v35 = sub_1ABF23BD4();
    v36 = sub_1ABAA605C();
    v38 = [v36 v37];

    if (v38)
    {
      [v38 doubleValue];
    }

    v39 = sub_1ABF23BD4();
    v40 = sub_1ABAA605C();
    v42 = [v40 v41];

    if (v42)
    {
      [v42 doubleValue];
    }

    sub_1ABAD58F0(4, v2);
    if ((v43 & 1) == 0)
    {
      sub_1ABAA34D0();

      goto LABEL_31;
    }

LABEL_30:
    sub_1ABC136C0();
    sub_1ABA7BD00();
    sub_1ABA8E210();
LABEL_31:
    sub_1ABA99400();
    return;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_1ABC10F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1ABAA28F4();
  a24 = v29;
  a25 = v30;
  if (!*(v31 + 16) || (sub_1ABA907B0(), sub_1ABAA2C9C(), v32 = sub_1ABAAFEB4(), (v33 & 1) == 0))
  {
    sub_1ABC136C0();
    sub_1ABA7BD00();
    sub_1ABA8E210();
    goto LABEL_10;
  }

  if (sub_1ABA7C154(v32) >= 0.95)
  {
LABEL_10:
    sub_1ABA99400();
    sub_1ABAA25C0();
    return;
  }

  v34 = sub_1ABF23BD4();
  v35 = sub_1ABA949C4();
  v37 = [v35 v36];

  if (!v37)
  {
    v37 = [objc_opt_self() featureValueWithDouble_];
  }

  [v37 doubleValue];
  sub_1ABAA3108();
  if (v38)
  {
    goto LABEL_13;
  }

  sub_1ABC1289C(v26, &a15);
  v39 = a15;
  v40 = sub_1ABE8B4D4(&unk_1F2091D40);
  sub_1ABA7E698(v40);
  sub_1ABAA407C();
  if (v28)
  {
    goto LABEL_13;
  }

  v41 = sub_1ABE8B4D4(&unk_1F2091928);
  sub_1ABA7E698(v41);
  sub_1ABAA407C();
  v42 = sub_1ABE8B4D4(&unk_1F2091980);
  sub_1ABA7E698(v42);
  sub_1ABAA4E00();
  if (v39 & 1) != 0 || (sub_1ABC12A7C(&a14), v43 = a14, v44 = sub_1ABE8B4D4(&unk_1F2091D40), sub_1ABA7E698(v44), sub_1ABAA4E00(), (v43))
  {
LABEL_13:

    goto LABEL_10;
  }

  v45 = sub_1ABA8E89C();
  v46 = sub_1ABA934B0(v45);

  if (v46)
  {
    sub_1ABAA3CBC();
    v48 = v47;
  }

  else
  {
    v48 = 0.0;
  }

  sub_1ABA8F2F8();
  if (!(v49 ^ v50 | v38))
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v48 <= -9.22337204e18)
  {
    goto LABEL_33;
  }

  sub_1ABA80A94();
  if (!v49)
  {
    goto LABEL_34;
  }

  AgeDifferenceCategory.init(rawValue:)(v48);
  v51 = sub_1ABF23BD4();
  v52 = sub_1ABA949C4();
  v54 = [v52 v53];

  if (v54)
  {
    [v54 doubleValue];
    v56 = v55;
  }

  else
  {
    v56 = 0.0;
  }

  sub_1ABA8F2F8();
  if (!(v49 ^ v50 | v38))
  {
    goto LABEL_35;
  }

  if (v56 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_1ABA80A94();
  if (v49)
  {
    AgeDifferenceCategory.init(rawValue:)(v56);
    sub_1ABAD58F0(4, v25);
    if (v57)
    {
      sub_1ABC136C0();
      sub_1ABA7BD00();
      sub_1ABA8E210();
    }

    else
    {

      sub_1ABAA34D0();
    }

    goto LABEL_10;
  }

LABEL_37:
  __break(1u);
}

void sub_1ABC11240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1ABAA28F4();
  a24 = v27;
  a25 = v29;
  if (!*(v28 + 16) || (v30 = v28, sub_1ABAA2C9C(), v31 = sub_1ABAAFEB4(), (v32 & 1) == 0))
  {
    sub_1ABC136C0();
    sub_1ABA7BD00();
    sub_1ABA8E210();
    goto LABEL_10;
  }

  if (*(*(v30 + 56) + 8 * v31) >= 0.95)
  {
LABEL_10:
    sub_1ABA99400();
    sub_1ABAA25C0();
    return;
  }

  v33 = sub_1ABF23BD4();
  v34 = sub_1ABAA5328();
  v36 = [v34 v35];

  if (!v36)
  {
    v36 = [objc_opt_self() featureValueWithDouble_];
  }

  [v36 doubleValue];
  sub_1ABAA3108();
  if (v52)
  {
    goto LABEL_8;
  }

  sub_1ABC1289C(v25, &a15);
  v37 = a15;
  v38 = sub_1ABE8B4D4(&unk_1F2091D68);
  sub_1ABA7E698(v38);
  sub_1ABAA407C();
  if (v26)
  {
    goto LABEL_8;
  }

  v39 = sub_1ABE8B4D4(&unk_1F2091928);
  sub_1ABA7E698(v39);
  sub_1ABAA407C();
  v40 = sub_1ABE8B4D4(&unk_1F2091980);
  sub_1ABA7E698(v40);
  sub_1ABAA4E00();
  if (v37 & 1) != 0 || (sub_1ABC12A7C(&a14), v41 = a14, v42 = sub_1ABE8B4D4(&unk_1F2091D68), sub_1ABA7E698(v42), sub_1ABAA4E00(), (v41))
  {
LABEL_8:

    goto LABEL_10;
  }

  v43 = sub_1ABF23BD4();
  v44 = sub_1ABAA5328();
  v46 = [v44 v45];

  if (v46)
  {
    v47 = [v46 stringValue];

    v48 = sub_1ABF23C04();
    v50 = v49;

    v51 = v50 == 0xE500000000000000;
    v52 = v48 == 0x544C554441 && v50 == 0xE500000000000000;
    if (v52)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v51 = 0;
    v48 = 0x4E574F4E4B4E55;
    v50 = 0xE700000000000000;
  }

  if (sub_1ABAA4538())
  {
LABEL_22:

    goto LABEL_8;
  }

  v53 = v48 == 1313162580 && v50 == 0xE400000000000000;
  if (v53 || (sub_1ABAA4538() & 1) != 0)
  {

    goto LABEL_8;
  }

  if (v48 == 0x444C494843 && v51)
  {

    goto LABEL_10;
  }

  sub_1ABAA4538();
  sub_1ABA946E0();
  if (v51)
  {
    goto LABEL_8;
  }

  v54 = sub_1ABA8E89C();
  v55 = sub_1ABAA5328();
  v57 = [v55 v56];

  if (v57)
  {
    [v57 doubleValue];
    v59 = v58;
  }

  else
  {
    v59 = 0.0;
  }

  sub_1ABA8F2F8();
  if (!(v60 ^ v61 | v52))
  {
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v59 <= -9.22337204e18)
  {
    goto LABEL_55;
  }

  sub_1ABA80A94();
  if (!v60)
  {
    goto LABEL_56;
  }

  AgeDifferenceCategory.init(rawValue:)(v59);
  v62 = sub_1ABF23BD4();
  v63 = sub_1ABAA5328();
  v65 = [v63 v64];

  if (v65)
  {
    [v65 doubleValue];
    v67 = v66;
  }

  else
  {
    v67 = 0.0;
  }

  sub_1ABA8F2F8();
  if (!(v60 ^ v61 | v52))
  {
    goto LABEL_57;
  }

  if (v67 <= -9.22337204e18)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  sub_1ABA80A94();
  if (v60)
  {
    AgeDifferenceCategory.init(rawValue:)(v67);
    v68 = sub_1ABF23BD4();
    v69 = sub_1ABAA5328();
    v71 = [v69 v70];

    if (v71)
    {
      [v71 doubleValue];
    }

    sub_1ABAD58F0(4, v30);
    if (v72)
    {
      sub_1ABC136C0();
      sub_1ABA7BD00();
      sub_1ABA8E210();
    }

    else
    {

      sub_1ABAA34D0();
    }

    goto LABEL_10;
  }

LABEL_59:
  __break(1u);
}

void sub_1ABC1174C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a2 + 16))
  {
    goto LABEL_10;
  }

  sub_1ABA907B0();
  v8 = v7;
  v9 = sub_1ABAAFEB4();
  if ((v10 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (sub_1ABA7C154(v9) < 0.95)
  {
    sub_1ABC1289C(v8, &v19);
    v11 = v19;
    if ((sub_1ABAB0550(v19, a3) & 1) == 0)
    {
      v12 = sub_1ABE8B4D4(&unk_1F2091928);
      v13 = sub_1ABB13550(v11, v12);

      if ((v13 & 1) == 0)
      {
        v14 = sub_1ABE8B4D4(&unk_1F2091980);
        v15 = sub_1ABB13550(v11, v14);

        if ((v15 & 1) == 0)
        {
          sub_1ABC12A7C(&v18);
          v16 = v18;
          if (sub_1ABAB0550(v18, a3) & 1) == 0 && (sub_1ABAB0550(v16, 1))
          {
            sub_1ABAD58F0(a4, v4);
            if (v17)
            {
LABEL_10:
              sub_1ABC136C0();
              sub_1ABA7BD00();
              sub_1ABA8E210();
            }
          }
        }
      }
    }
  }

  sub_1ABA99400();
}

void sub_1ABC118B8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v5 = sub_1ABA8180C(), (v6 & 1) != 0))
  {
    if (sub_1ABA7C154(v5) < 0.95)
    {
      sub_1ABC1289C(v3, &v12);
      v7 = v12;
      if ((sub_1ABAB0550(v12, 17) & 1) == 0)
      {
        v8 = sub_1ABE8B4D4(&unk_1F2091928);
        sub_1ABA8C048(v8);
        sub_1ABA946E0();
        if ((v4 & 1) == 0)
        {
          v9 = sub_1ABE8B4D4(&unk_1F2091980);
          sub_1ABA8C048(v9);
          sub_1ABAA38A4();
          if ((v7 & 1) == 0)
          {
            sub_1ABC12A7C(&v11);
            v10 = v11;
            if (sub_1ABAB0550(v11, 17) & 1) == 0 && (sub_1ABAB0550(v10, 1))
            {
              sub_1ABAD58F0(15, v2);
            }
          }
        }
      }
    }
  }

  else
  {
    sub_1ABC136C0();
    sub_1ABA7BD00();
    sub_1ABA8E210();
  }

  sub_1ABA99400();
}

void sub_1ABC119E8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1ABA907B0(), sub_1ABAA2C9C(), v6 = sub_1ABAAFEB4(), (v7 & 1) != 0))
  {
    if (*(*(v2 + 56) + 8 * v6) < 0.95)
    {
      v8 = sub_1ABF23BD4();
      v9 = sub_1ABA949C4();
      v11 = [v9 v10];

      if (!v11)
      {
        v11 = [objc_opt_self() featureValueWithDouble_];
      }

      [v11 doubleValue];
      if (v12 == 1.0)
      {
        goto LABEL_12;
      }

      sub_1ABC1289C(v3, &v39);
      v13 = v39;
      v14 = sub_1ABE8B4D4(&unk_1F2091980);
      sub_1ABA7E698(v14);
      sub_1ABAA407C();
      if (v5 & 1) != 0 || (v15 = sub_1ABE8B4D4(&unk_1F2091928), sub_1ABA7E698(v15), sub_1ABAA4E00(), (v13))
      {
LABEL_12:

        return;
      }

      sub_1ABC12A7C(&v38);
      v16 = v38;
      v17 = sub_1ABE8B4D4(&unk_1F2091980);
      sub_1ABA7E698(v17);
      sub_1ABAA4E00();
      if (v16)
      {

        return;
      }

      v18 = sub_1ABA8E89C();
      v19 = sub_1ABA934B0(v18);

      if (v19)
      {
        sub_1ABAA3CBC();
        v21 = v20;
      }

      else
      {
        v21 = 0.0;
      }

      sub_1ABA8F2F8();
      if (!(v23 ^ v24 | v22))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      if (v21 <= -9.22337204e18)
      {
        goto LABEL_40;
      }

      sub_1ABA80A94();
      if (!v23)
      {
        goto LABEL_41;
      }

      AgeDifferenceCategory.init(rawValue:)(v21);
      v25 = sub_1ABF23BD4();
      v26 = sub_1ABA934B0(v25);

      if (v26)
      {
        sub_1ABAA3CBC();
        v28 = v27;
      }

      else
      {
        v28 = 0.0;
      }

      sub_1ABA8F2F8();
      if (!(v23 ^ v24 | v22))
      {
        goto LABEL_42;
      }

      if (v28 <= -9.22337204e18)
      {
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        return;
      }

      sub_1ABA80A94();
      if (!v23)
      {
        goto LABEL_44;
      }

      AgeDifferenceCategory.init(rawValue:)(v28);
      v29 = sub_1ABF23BD4();
      v30 = sub_1ABA934B0(v29);

      if (v30)
      {
        sub_1ABAA3CBC();
      }

      v31 = sub_1ABF23BD4();
      v32 = sub_1ABA934B0(v31);

      if (v32)
      {
        sub_1ABAA3CBC();
      }

      v33 = sub_1ABF23BD4();
      v34 = sub_1ABA949C4();
      v36 = [v34 v35];

      if (v36)
      {
        [v36 doubleValue];
      }

      sub_1ABAD58F0(4, v2);
      if (v37)
      {
        sub_1ABC136C0();
        sub_1ABA7BD00();
        sub_1ABA8E210();
      }

      else
      {

        sub_1ABAA34D0();
      }
    }
  }

  else
  {
    sub_1ABC136C0();
    sub_1ABA7BD00();
    sub_1ABA8E210();
  }
}

void sub_1ABC11E20(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_5;
  }

  sub_1ABA907B0();
  sub_1ABAA2C9C();
  v4 = sub_1ABAAFEB4();
  if ((v5 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (sub_1ABA7C154(v4) < 0.95)
  {
    v6 = COERCE_DOUBLE(sub_1ABAD58F0(15, v2));
    if (v7)
    {
LABEL_5:
      sub_1ABC136C0();
      sub_1ABA7BD00();
      sub_1ABA8E210();
      goto LABEL_6;
    }

    if (v6 < 0.8)
    {
      sub_1ABC1289C(v3, &v55);
      if ((sub_1ABAB0550(v55, 21) & 1) == 0)
      {
        sub_1ABC12A7C(&v55);
        if ((sub_1ABAB0550(v55, 21) & 1) == 0)
        {
          v8 = sub_1ABF23BD4();
          v9 = sub_1ABA949C4();
          v11 = [v9 v10];

          if (v11)
          {
            sub_1ABAA2298();
          }

          v12 = sub_1ABF23BD4();
          v13 = sub_1ABA949C4();
          v15 = [v13 v14];

          if (v15)
          {
            sub_1ABAA2298();
          }

          v16 = sub_1ABF239C4();
          sub_1ABA7F0D0();
          v17 = sub_1ABF23BD4();
          v18 = sub_1ABA934B0(v17);

          v19 = 0.0;
          v20 = 0.0;
          if (v18)
          {
            [v18 doubleValue];
            v20 = v21;
          }

          v22 = sub_1ABAD5944(v16, v20);
          v24 = v23;

          if (v24)
          {
            v25 = v22;
          }

          else
          {
            v25 = 0;
          }

          v54 = v25;
          if (v24)
          {
            v26 = v24;
          }

          else
          {
            v26 = 0xE000000000000000;
          }

          v57 = v26;
          v27 = sub_1ABF239C4();
          sub_1ABA7F0D0();
          v28 = sub_1ABF23BD4();
          v29 = sub_1ABA949C4();
          v31 = [v29 v30];

          if (v31)
          {
            [v31 doubleValue];
            v19 = v32;
          }

          v33 = sub_1ABAD5944(v27, v19);
          v35 = v34;

          if (v35)
          {
            v36 = v33;
          }

          else
          {
            v36 = 0;
          }

          if (v35)
          {
            v37 = v35;
          }

          else
          {
            v37 = 0xE000000000000000;
          }

          v38 = sub_1ABF239C4();
          sub_1ABA7F0D0();
          v39 = sub_1ABF23BD4();
          v40 = sub_1ABA949C4();
          v42 = [v40 v41];

          if (v42)
          {
            [v42 doubleValue];
            v44 = v43;
          }

          else
          {
            v44 = 0.0;
          }

          v45 = sub_1ABAD5944(v38, v44);
          v47 = v46;

          if (v47)
          {
            v48 = v45;
          }

          else
          {
            v48 = 0;
          }

          if (v47)
          {
            v49 = v47;
          }

          else
          {
            v49 = 0xE000000000000000;
          }

          sub_1ABAD58F0(22, v2);
          if (v50)
          {

            goto LABEL_5;
          }

          v55 = v54;
          v56 = v57;
          sub_1ABAE28EC();
          sub_1ABA7D6F8();
          if (sub_1ABF248D4())
          {
          }

          else
          {
            v55 = v36;
            v56 = v37;
            sub_1ABA7D6F8();
            v51 = sub_1ABF248D4();

            if (v51)
            {
            }

            else
            {
              v55 = v48;
              v56 = v49;
              sub_1ABA7D6F8();
              v52 = sub_1ABF248D4();

              v53 = v57;
              if (v52 & 1) != 0 || (v55 = v54, v56 = v57, sub_1ABA7D6F8(), (sub_1ABF248D4()))
              {
              }

              else
              {
                v55 = v54;
                v56 = v53;
                sub_1ABA7D6F8();
                sub_1ABF248D4();
              }
            }
          }
        }
      }
    }
  }

LABEL_6:
  sub_1ABA99400();
}

void sub_1ABC12400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, unsigned __int8 a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1ABAA28F4();
  a24 = v27;
  a25 = v28;
  if (*(v29 + 16) && (v30 = sub_1ABA8180C(), (v31 & 1) != 0))
  {
    if (sub_1ABA7C154(v30) < 0.95)
    {
      v32 = sub_1ABF23BD4();
      v33 = sub_1ABA838A0();
      v35 = [v33 v34];

      if (!v35)
      {
        v35 = [objc_opt_self() featureValueWithDouble_];
      }

      [v35 doubleValue];
      sub_1ABAA3108();
      if (!v36)
      {
        sub_1ABC1289C(v25, &a15);
        if ((sub_1ABAB0550(a15, 23) & 1) == 0)
        {
          sub_1ABC12A7C(&a14);
          if ((sub_1ABAB0550(a14, 23) & 1) == 0)
          {
            v37 = sub_1ABF23BD4();
            v38 = sub_1ABA7F1D8(v37);

            if (v38)
            {
              sub_1ABA97B18();
            }

            sub_1ABA7F0D0();
            v39 = sub_1ABF23BD4();
            v40 = sub_1ABA7F1D8(v39);

            if (v40)
            {
              sub_1ABA97B18();
            }

            v41 = sub_1ABF23BD4();
            v42 = sub_1ABA7F1D8(v41);

            if (v42)
            {
              sub_1ABA97B18();
            }

            sub_1ABC12C20(v25);
            v43 = sub_1ABF23BD4();
            v44 = sub_1ABA7F1D8(v43);

            if (v44)
            {
              sub_1ABA97B18();
            }

            sub_1ABA7F0D0();
            v45 = sub_1ABF23BD4();
            v46 = sub_1ABA7F1D8(v45);

            if (v46)
            {
              sub_1ABA97B18();
            }

            v47 = sub_1ABF23BD4();
            v48 = sub_1ABA838A0();
            v50 = [v48 v49];

            if (v50)
            {
              sub_1ABAA2298();
            }
          }
        }
      }
    }
  }

  else
  {
    sub_1ABC136C0();
    sub_1ABA7BD00();
    sub_1ABA8E210();
  }

  sub_1ABA99400();
  sub_1ABAA25C0();
}

void sub_1ABC12778(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = sub_1ABA8180C(), (v4 & 1) != 0))
  {
    if (sub_1ABA7C154(v3) < 0.95)
    {
      sub_1ABC1289C(v2, &v8);
      if ((sub_1ABAB0550(v8, 26) & 1) == 0)
      {
        sub_1ABC12A7C(&v7);
        if ((sub_1ABAB0550(v7, 26) & 1) == 0)
        {
          v5 = sub_1ABA8E89C();
          v6 = [v2 featureValueForName_];

          if (v6)
          {
            [v6 doubleValue];
          }
        }
      }
    }
  }

  else
  {
    sub_1ABC136C0();
    sub_1ABA7BD00();
    sub_1ABA8E210();
  }

  sub_1ABA99400();
}

void sub_1ABC1289C(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1ABF23BD4();
  v5 = [a1 featureValueForName_];

  if (!v5)
  {
LABEL_7:
    sub_1ABA7F0D0();
    v12 = sub_1ABF23BD4();
    v13 = [a1 featureValueForName_];

    if (v13)
    {
      v14 = [v13 stringValue];
      v15 = sub_1ABF23C04();
      v17 = v16;

      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        static EntityTaggingModelUtility.entityTagTypeFromUnlocalizedLabel(label:)(v15, v17, a2);

        goto LABEL_12;
      }
    }

    *a2 = 1;
    return;
  }

  v6 = v5;
  v7 = [v6 stringValue];
  v8 = sub_1ABF23C04();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    goto LABEL_7;
  }

  static EntityTaggingModelUtility.entityTagTypeFromUnlocalizedLabel(label:)(v8, v10, a2);

LABEL_12:
}

void sub_1ABC12A7C(char *a1@<X8>)
{
  sub_1ABA7F0D0();
  v2 = sub_1ABF23BD4();
  v3 = sub_1ABAA605C();
  v5 = [v3 v4];

  if (v5)
  {
    v6 = [v5 stringValue];

    v5 = sub_1ABF23C04();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1ABF23BD4();
  v10 = sub_1ABAA605C();
  v12 = [v10 v11];

  if (v12)
  {
    v13 = [v12 stringValue];

    v14 = sub_1ABF23C04();
    v12 = v15;

    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  v16._countAndFlagsBits = v5;
  v16._object = v8;
  PersonEntityTagType.init(qid:)(v16);
  v17 = v19;
  if ((sub_1ABAB0550(v19, 1) & 1) == 0)
  {

    goto LABEL_13;
  }

LABEL_9:
  if (!v12 || (v18._countAndFlagsBits = v14, v18._object = v12, PersonEntityTagType.init(qid:)(v18), v17 = v20, (sub_1ABAB0550(v20, 1) & 1) != 0))
  {
    v17 = 1;
  }

LABEL_13:
  *a1 = v17;
}

uint64_t sub_1ABC12C20(void *a1)
{
  v3 = sub_1ABF239C4();
  v4 = sub_1ABF23BD4();
  v5 = [a1 featureValueForName_];

  v6 = 0.0;
  v7 = 0.0;
  if (v5)
  {
    [v5 doubleValue];
    v7 = v8;
  }

  sub_1ABAD5944(v3, v7);

  v9 = sub_1ABF239C4();
  v10 = sub_1ABAA49B8();
  v11 = sub_1ABA95838(v10);

  if (v11)
  {
    [v11 doubleValue];
    v6 = v12;
  }

  sub_1ABAD5944(v9, v6);
  v14 = v13;

  v15 = sub_1ABF239C4();
  v16 = sub_1ABAA49B8();
  v17 = sub_1ABA95838(v16);

  if (v17)
  {
    [v17 doubleValue];
    v19 = v18;
  }

  else
  {
    v19 = 0.0;
  }

  sub_1ABAD5944(v15, v19);

  sub_1ABAE28EC();
  sub_1ABA7D6F8();
  if (sub_1ABF248D4() & 1) != 0 || (sub_1ABAA57E0(), sub_1ABA7D6F8(), (sub_1ABF248D4()))
  {
  }

  sub_1ABA7D6F8();
  if (sub_1ABF248D4())
  {

LABEL_14:
  }

  sub_1ABAA57E0();
  sub_1ABA7D6F8();
  v21 = sub_1ABF248D4();

  if (v21)
  {
    goto LABEL_14;
  }

  sub_1ABA7D6F8();
  if (sub_1ABF248D4())
  {
  }

  sub_1ABAA57E0();
  sub_1ABA7D6F8();
  v22 = sub_1ABF248D4();

  if (v22)
  {
  }

  sub_1ABA7D6F8();
  sub_1ABF248D4();
}

uint64_t sub_1ABC13030(void *a1)
{
  sub_1ABC1289C(a1, &v13);
  v1 = v13;
  if ((sub_1ABAB0550(v13, 1) & 1) == 0 && (sub_1ABAB0550(v1, 0) & 1) == 0)
  {
    LOBYTE(v13) = v1;
    v3 = PersonEntityTagType.allParentTagTypes.getter();
    v4 = sub_1ABE8B4D4(&unk_1F2091928);
    v5 = sub_1ABB13550(v1, v4);

    v6 = sub_1ABE8B4D4(&unk_1F2091980);
    if (v5)
    {
      v7 = &unk_1F2091928;
    }

    else
    {
      v8 = sub_1ABB13550(v1, v6);

      if ((v8 & 1) == 0)
      {
        if ((sub_1ABAB0550(v1, 2) & 1) == 0)
        {
          v12 = MEMORY[0x1E69E7CD0];
          goto LABEL_12;
        }

        v11 = sub_1ABE8B4D4(&unk_1F20918F0);
LABEL_11:
        v12 = v11;
LABEL_12:
        v13 = MEMORY[0x1E69E7CC8];
        sub_1ABC10838(v12, &v13, 0.0);

        sub_1ABC10838(v3, &v13, 1.0);

        return v13;
      }

      v6 = sub_1ABE8B4D4(&unk_1F2091928);
      v7 = &unk_1F2091980;
    }

    v9 = sub_1ABE8B4D4(v7);
    v10 = sub_1ABC10A34(v3, v9, sub_1ABC13C64, sub_1ABC14228);
    sub_1ABD92014(v10, v6);
    goto LABEL_11;
  }

  sub_1ABAB20D0();

  return sub_1ABF239C4();
}

uint64_t PersonEntityTagType.allParentTagTypes.getter()
{
  v1 = *v0;
  switch(*v0)
  {
    case 4:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF34060;
      v5 = 5636;
      goto LABEL_26;
    case 5:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFC0;
      v3 = 1029;
      goto LABEL_19;
    case 6:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFB0;
      v4 = 369362182;
      goto LABEL_22;
    case 7:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFB0;
      v4 = 369362183;
      goto LABEL_22;
    case 8:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFC0;
      v3 = 1032;
      goto LABEL_19;
    case 9:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFB0;
      v4 = 369362953;
      goto LABEL_22;
    case 10:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFB0;
      v4 = 369362954;
      goto LABEL_22;
    case 11:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFC0;
      v3 = 1035;
      goto LABEL_19;
    case 12:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFB0;
      v4 = 369363724;
      goto LABEL_22;
    case 13:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFB0;
      v4 = 369363725;
      goto LABEL_22;
    case 14:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFB0;
      v4 = 369364750;
      goto LABEL_22;
    case 15:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFC0;
      v3 = 1039;
      goto LABEL_19;
    case 16:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFB0;
      v4 = 369364752;
      goto LABEL_22;
    case 17:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFB0;
      v4 = 369364753;
      goto LABEL_22;
    case 18:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFC0;
      v3 = 1042;
LABEL_19:
      *(inited + 32) = v3;
      v6 = 22;
      goto LABEL_20;
    case 19:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFB0;
      v4 = 369365523;
      goto LABEL_22;
    case 20:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFB0;
      v4 = 369365524;
LABEL_22:
      *(inited + 32) = v4;
      return sub_1ABE8B4D4(inited);
    case 21:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF34060;
      v5 = 5653;
      goto LABEL_26;
    case 27:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BFC0;
      *(inited + 32) = 7195;
      v6 = 29;
LABEL_20:
      *(inited + 34) = v6;
      return sub_1ABE8B4D4(inited);
    case 28:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF34060;
      v5 = 7195;
      goto LABEL_26;
    case 29:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF34060;
      v5 = 7451;
LABEL_26:
      *(inited + 32) = v5;
      break;
    default:
      sub_1ABAD219C(&qword_1EB4D1908, &qword_1ABF4AF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF34740;
      *(inited + 32) = v1;
      break;
  }

  return sub_1ABE8B4D4(inited);
}

unint64_t sub_1ABC136C0()
{
  result = qword_1EB4D5738;
  if (!qword_1EB4D5738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5738);
  }

  return result;
}

uint64_t sub_1ABC13714(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1ABAD219C(&qword_1EB4D2E70, &unk_1ABF4AF30);
  result = sub_1ABF24A54();
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
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_1ABF25234();

    sub_1ABF23D34();
    result = sub_1ABF25294();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1ABC13930(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1ABAD219C(&qword_1EB4D2B30, &unk_1ABF4AF20);
  result = sub_1ABF24A54();
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
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_1ABF25234();
    PersonEntityTagType.rawValue.getter();
    sub_1ABF23D34();

    result = sub_1ABF25294();
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
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1ABC13B50(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v4 = result + 56;
    v3 = *(result + 56);
    sub_1ABA7E5E8(result);
    v7 = v6 & v5;
    v9 = (v8 + 63) >> 6;

    v10 = 0;
    if (!v7)
    {
      goto LABEL_4;
    }

    do
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = (*(v2 + 48) + ((v11 << 10) | (16 * v12)));
      v14 = *v13;
      v15 = v13[1];

      sub_1ABB22428();
    }

    while (v7);
    while (1)
    {
LABEL_4:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        return result;
      }

      if (v11 >= v9)
      {
        break;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        v10 = v11;
        goto LABEL_8;
      }
    }
  }

  return result;
}

void sub_1ABC13C64(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(*(a1 + 48) + (v10 | (v9 << 6)));
        sub_1ABB2252C();
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_1ABC13D68(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v62 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v53 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v55 = v12;
    v56 = v7;
    v57 = v14;
    if (v11)
    {
LABEL_6:
      v16 = v15;
LABEL_11:
      sub_1ABA80858();
      v20 = (*(v18 + 48) + ((v16 << 10) | (16 * v19)));
      v22 = *v20;
      v21 = v20[1];
      v23 = *(v5 + 40);
      sub_1ABF25234();

      sub_1ABF23D34();
      v24 = sub_1ABF25294();
      v25 = ~(-1 << *(v5 + 32));
      while (1)
      {
        v7 = v24 & v25;
        v4 = (v24 & v25) >> 6;
        v8 = 1 << (v24 & v25);
        if ((v8 & *(v13 + 8 * v4)) == 0)
        {

          v15 = v16;
          goto LABEL_6;
        }

        v26 = (*(v5 + 48) + 16 * v7);
        v27 = *v26 == v22 && v26[1] == v21;
        if (v27 || (sub_1ABF25054() & 1) != 0)
        {
          break;
        }

        v24 = v7 + 1;
      }

      v59 = v53;
      v60 = v16;
      v61 = v11;
      v3 = v56;
      v12 = v57;
      v58[0] = v57;
      v58[1] = v56;

      v29 = *(v5 + 32);
      v50 = ((1 << v29) + 63) >> 6;
      v2 = 8 * v50;
      if ((v29 & 0x3Fu) > 0xD)
      {
        goto LABEL_47;
      }

      while (1)
      {
        v51 = &v49;
        MEMORY[0x1EEE9AC00](v28);
        v7 = &v49 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
        memcpy(v7, (v5 + 56), v2);
        v30 = *(v7 + 8 * v4) & ~v8;
        v31 = *(v5 + 16);
        v54 = v7;
        *(v7 + 8 * v4) = v30;
        v32 = v31 - 1;
        v33 = v55;
        while (1)
        {
          v52 = v32;
LABEL_23:
          if (!v11)
          {
            break;
          }

LABEL_28:
          sub_1ABA80858();
          v36 = (*(v12 + 48) + ((v16 << 10) | (16 * v35)));
          v2 = *v36;
          v37 = v36[1];
          v38 = *(v5 + 40);
          sub_1ABF25234();

          sub_1ABF23D34();
          v39 = sub_1ABF25294();
          v40 = ~(-1 << *(v5 + 32));
          do
          {
            v4 = v39 & v40;
            v7 = (v39 & v40) >> 6;
            v8 = 1 << (v39 & v40);
            if ((v8 & *(v13 + 8 * v7)) == 0)
            {

              v3 = v56;
              v12 = v57;
              v33 = v55;
              goto LABEL_23;
            }

            v41 = (*(v5 + 48) + 16 * v4);
            if (*v41 == v2 && v41[1] == v37)
            {
              break;
            }

            v43 = sub_1ABF25054();
            v39 = v4 + 1;
          }

          while ((v43 & 1) == 0);

          v44 = v54[v7];
          v54[v7] = v44 & ~v8;
          v3 = v56;
          v12 = v57;
          v33 = v55;
          if ((v44 & v8) == 0)
          {
            goto LABEL_23;
          }

          v32 = v52 - 1;
          if (__OFSUB__(v52, 1))
          {
            __break(1u);
          }

          if (v52 == 1)
          {

            v5 = MEMORY[0x1E69E7CD0];
            goto LABEL_43;
          }
        }

        while (1)
        {
          v34 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v34 >= v33)
          {
            v5 = sub_1ABC13714(v54, v50, v52, v5);
            goto LABEL_43;
          }

          v11 = *(v3 + 8 * v34);
          ++v16;
          if (v11)
          {
            v16 = v34;
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v47 = swift_slowAlloc();
      v48 = sub_1ABC16280(v47, v50, (v5 + 56), v50, v5, v7, v58);

      MEMORY[0x1AC5AB8B0](v47, -1, -1);
      v53 = v59;
      v5 = v48;
    }

    else
    {
      v17 = 0;
      while (1)
      {
        v16 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_46;
        }

        if (v16 >= v12)
        {
          break;
        }

        v11 = *(v7 + 8 * v16);
        ++v17;
        if (v11)
        {
          goto LABEL_11;
        }
      }
    }

LABEL_43:
    sub_1ABAB4C48();
  }

  else
  {

    v5 = MEMORY[0x1E69E7CD0];
  }

  v45 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1ABC14228(size_t a1, uint64_t a2)
{
  v5 = a2;
  v94 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v6 = a1;
    v77 = 0;
    v7 = *(a1 + 56);
    v85 = a1 + 56;
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v82 = ~v9;
    if (-v9 < 64)
    {
      v8 = ~(-1 << -v9);
    }

    v10 = v8 & v7;
    v83 = (63 - v9) >> 6;
    v84 = 0x80000001ABF81E70;
    v88 = (a2 + 56);

    v11 = 0;
    do
    {
LABEL_5:
      if (!v10)
      {
        v12 = v11;
        while (1)
        {
          v13 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_199;
          }

          if (v13 >= v83)
          {
            goto LABEL_196;
          }

          v10 = *(v85 + 8 * v13);
          ++v12;
          if (v10)
          {
            v11 = v13;
            break;
          }
        }
      }

      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = *(*(v6 + 48) + (v14 | (v11 << 6)));
      v16 = *(v5 + 40);
      sub_1ABF25234();
      sub_1ABF23D34();

      v17 = sub_1ABF25294();
      v18 = -1 << *(v5 + 32);
      v2 = v17 & ~v18;
      v3 = v2 >> 6;
      v4 = 1 << v2;
    }

    while (((1 << v2) & v88[v2 >> 6]) == 0);
    v86 = v6;
    v87 = ~v18;
    while (1)
    {
      v19 = 0xE500000000000000;
      v20 = 0x7465736E75;
      switch(*(*(v5 + 48) + v2))
      {
        case 1:
          v19 = 0xE700000000000000;
          v20 = 0x6E776F6E6B6E75;
          break;
        case 2:
          v20 = 0x726568746FLL;
          break;
        case 3:
          v19 = 0xE600000000000000;
          v20 = 0x666C6573796DLL;
          break;
        case 4:
          v19 = 0xE600000000000000;
          v20 = 0x796C696D6166;
          break;
        case 5:
          v19 = 0xE600000000000000;
          v20 = 0x746E65726170;
          break;
        case 6:
          v20 = 0x726568746F6DLL;
          v19 = 0xE600000000000000;
          break;
        case 7:
          v19 = 0xE600000000000000;
          v25 = 1752457574;
          goto LABEL_40;
        case 8:
          v19 = 0xE700000000000000;
          v20 = 0x676E696C626973;
          break;
        case 9:
          v19 = 0xE700000000000000;
          v24 = 0x6568746F7262;
          goto LABEL_38;
        case 0xA:
          v19 = 0xE600000000000000;
          v25 = 1953720691;
LABEL_40:
          v20 = v25 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 0xB:
          v20 = 0x726150646E617267;
          v23 = 7630437;
          goto LABEL_35;
        case 0xC:
          v20 = 0x746F6D646E617267;
          goto LABEL_34;
        case 0xD:
          v20 = 0x746166646E617267;
LABEL_34:
          v23 = 7497064;
LABEL_35:
          v19 = v23 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0xE:
          v19 = 0xE700000000000000;
          v22 = 0x6C696843796DLL;
          goto LABEL_30;
        case 0xF:
          v20 = 0x646C696863;
          break;
        case 0x10:
          v19 = 0xE300000000000000;
          v20 = 7237491;
          break;
        case 0x11:
          v19 = 0xE800000000000000;
          v26 = 0x746867756164;
          goto LABEL_45;
        case 0x12:
          v19 = 0xE700000000000000;
          v24 = 0x656E74726170;
LABEL_38:
          v20 = v24 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 0x13:
          v19 = 0xE400000000000000;
          v20 = 1701210487;
          break;
        case 0x14:
          v19 = 0xE700000000000000;
          v22 = 0x6E6162737568;
LABEL_30:
          v20 = v22 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
          break;
        case 0x15:
          v19 = 0xE600000000000000;
          v20 = 0x646E65697266;
          break;
        case 0x16:
          v20 = 0xD000000000000010;
          v19 = v84;
          break;
        case 0x17:
          v19 = 0xE800000000000000;
          v26 = 0x6B726F776F63;
LABEL_45:
          v20 = v26 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 0x18:
          v19 = 0xE800000000000000;
          v20 = 0x726F62686769656ELL;
          break;
        case 0x19:
          v20 = 0x74616D6573756F68;
          v19 = 0xE900000000000065;
          break;
        case 0x1A:
          v19 = 0xE600000000000000;
          v20 = 0x696E6D756C61;
          break;
        case 0x1B:
          v21 = 1699772781;
          goto LABEL_48;
        case 0x1C:
          v20 = 0x676F44796DLL;
          break;
        case 0x1D:
          v21 = 1631811949;
LABEL_48:
          v20 = v21 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
          break;
        default:
          break;
      }

      v27 = 0xE500000000000000;
      v28 = 0x7465736E75;
      switch(v15)
      {
        case 1:
          v27 = 0xE700000000000000;
          v28 = 0x6E776F6E6B6E75;
          break;
        case 2:
          v28 = 0x726568746FLL;
          break;
        case 3:
          v27 = 0xE600000000000000;
          v28 = 0x666C6573796DLL;
          break;
        case 4:
          v27 = 0xE600000000000000;
          v28 = 0x796C696D6166;
          break;
        case 5:
          v27 = 0xE600000000000000;
          v28 = 0x746E65726170;
          break;
        case 6:
          v28 = 0x726568746F6DLL;
          v27 = 0xE600000000000000;
          break;
        case 7:
          v27 = 0xE600000000000000;
          v33 = 1752457574;
          goto LABEL_77;
        case 8:
          v27 = 0xE700000000000000;
          v28 = 0x676E696C626973;
          break;
        case 9:
          v27 = 0xE700000000000000;
          v32 = 0x6568746F7262;
          goto LABEL_75;
        case 10:
          v27 = 0xE600000000000000;
          v33 = 1953720691;
LABEL_77:
          v28 = v33 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 11:
          v28 = 0x726150646E617267;
          v31 = 7630437;
          goto LABEL_72;
        case 12:
          v28 = 0x746F6D646E617267;
          goto LABEL_71;
        case 13:
          v28 = 0x746166646E617267;
LABEL_71:
          v31 = 7497064;
LABEL_72:
          v27 = v31 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 14:
          v27 = 0xE700000000000000;
          v30 = 0x6C696843796DLL;
          goto LABEL_67;
        case 15:
          v28 = 0x646C696863;
          break;
        case 16:
          v27 = 0xE300000000000000;
          v28 = 7237491;
          break;
        case 17:
          v27 = 0xE800000000000000;
          v34 = 0x746867756164;
          goto LABEL_82;
        case 18:
          v27 = 0xE700000000000000;
          v32 = 0x656E74726170;
LABEL_75:
          v28 = v32 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 19:
          v27 = 0xE400000000000000;
          v28 = 1701210487;
          break;
        case 20:
          v27 = 0xE700000000000000;
          v30 = 0x6E6162737568;
LABEL_67:
          v28 = v30 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
          break;
        case 21:
          v27 = 0xE600000000000000;
          v28 = 0x646E65697266;
          break;
        case 22:
          v28 = 0xD000000000000010;
          v27 = v84;
          break;
        case 23:
          v27 = 0xE800000000000000;
          v34 = 0x6B726F776F63;
LABEL_82:
          v28 = v34 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 24:
          v27 = 0xE800000000000000;
          v28 = 0x726F62686769656ELL;
          break;
        case 25:
          v28 = 0x74616D6573756F68;
          v27 = 0xE900000000000065;
          break;
        case 26:
          v27 = 0xE600000000000000;
          v28 = 0x696E6D756C61;
          break;
        case 27:
          v29 = 1699772781;
          goto LABEL_85;
        case 28:
          v28 = 0x676F44796DLL;
          break;
        case 29:
          v29 = 1631811949;
LABEL_85:
          v28 = v29 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
          break;
        default:
          break;
      }

      if (v20 == v28 && v19 == v27)
      {
        v91 = v82;
        v92 = v11;
        v93 = v10;
        v89 = v86;
        v90 = v85;

        goto LABEL_98;
      }

      v36 = sub_1ABF25054();

      if (v36)
      {
        break;
      }

      v2 = (v2 + 1) & v87;
      v3 = v2 >> 6;
      v4 = 1 << v2;
      if ((v88[v2 >> 6] & (1 << v2)) == 0)
      {
        v6 = v86;
        goto LABEL_5;
      }
    }

    v91 = v82;
    v92 = v11;
    v93 = v10;
    v89 = v86;
    v90 = v85;
LABEL_98:
    v38 = *(v5 + 32);
    v78 = ((1 << v38) + 63) >> 6;
    v6 = 8 * v78;
    if ((v38 & 0x3Fu) > 0xD)
    {
      goto LABEL_200;
    }

    while (1)
    {
      v79 = &v76;
      MEMORY[0x1EEE9AC00](v37);
      v39 = &v76 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v39, v88, v6);
      v40 = *(v5 + 16);
      v41 = *&v39[8 * v3] & ~v4;
      v81 = v39;
      *&v39[8 * v3] = v41;
      v42 = v40 - 1;
      v6 = v86;
LABEL_100:
      v80 = v42;
LABEL_101:
      while (v10)
      {
LABEL_107:
        v44 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v45 = *(*(v6 + 48) + (v44 | (v11 << 6)));
        v46 = *(v5 + 40);
        sub_1ABF25234();
        v87 = v45;
        sub_1ABF23D34();

        v47 = sub_1ABF25294();
        v48 = -1 << *(v5 + 32);
        v4 = v47 & ~v48;
        v49 = v4 >> 6;
        v3 = 1 << v4;
        if (((1 << v4) & v88[v4 >> 6]) != 0)
        {
          v50 = ~v48;
          while (1)
          {
            v51 = 0xE500000000000000;
            v52 = 0x7465736E75;
            switch(*(*(v5 + 48) + v4))
            {
              case 1:
                v51 = 0xE700000000000000;
                v52 = 0x6E776F6E6B6E75;
                break;
              case 2:
                v52 = 0x726568746FLL;
                break;
              case 3:
                v51 = 0xE600000000000000;
                v52 = 0x666C6573796DLL;
                break;
              case 4:
                v51 = 0xE600000000000000;
                v52 = 0x796C696D6166;
                break;
              case 5:
                v51 = 0xE600000000000000;
                v52 = 0x746E65726170;
                break;
              case 6:
                v52 = 0x726568746F6DLL;
                v51 = 0xE600000000000000;
                break;
              case 7:
                v51 = 0xE600000000000000;
                v57 = 1752457574;
                goto LABEL_136;
              case 8:
                v51 = 0xE700000000000000;
                v52 = 0x676E696C626973;
                break;
              case 9:
                v51 = 0xE700000000000000;
                v56 = 0x6568746F7262;
                goto LABEL_134;
              case 0xA:
                v51 = 0xE600000000000000;
                v57 = 1953720691;
LABEL_136:
                v52 = v57 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
                break;
              case 0xB:
                v52 = 0x726150646E617267;
                v55 = 7630437;
                goto LABEL_131;
              case 0xC:
                v52 = 0x746F6D646E617267;
                goto LABEL_130;
              case 0xD:
                v52 = 0x746166646E617267;
LABEL_130:
                v55 = 7497064;
LABEL_131:
                v51 = v55 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
                break;
              case 0xE:
                v51 = 0xE700000000000000;
                v54 = 0x6C696843796DLL;
                goto LABEL_126;
              case 0xF:
                v52 = 0x646C696863;
                break;
              case 0x10:
                v51 = 0xE300000000000000;
                v52 = 7237491;
                break;
              case 0x11:
                v51 = 0xE800000000000000;
                v58 = 0x746867756164;
                goto LABEL_141;
              case 0x12:
                v51 = 0xE700000000000000;
                v56 = 0x656E74726170;
LABEL_134:
                v52 = v56 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
                break;
              case 0x13:
                v51 = 0xE400000000000000;
                v52 = 1701210487;
                break;
              case 0x14:
                v51 = 0xE700000000000000;
                v54 = 0x6E6162737568;
LABEL_126:
                v52 = v54 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
                break;
              case 0x15:
                v51 = 0xE600000000000000;
                v52 = 0x646E65697266;
                break;
              case 0x16:
                v52 = 0xD000000000000010;
                v51 = v84;
                break;
              case 0x17:
                v51 = 0xE800000000000000;
                v58 = 0x6B726F776F63;
LABEL_141:
                v52 = v58 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
                break;
              case 0x18:
                v51 = 0xE800000000000000;
                v52 = 0x726F62686769656ELL;
                break;
              case 0x19:
                v52 = 0x74616D6573756F68;
                v51 = 0xE900000000000065;
                break;
              case 0x1A:
                v51 = 0xE600000000000000;
                v52 = 0x696E6D756C61;
                break;
              case 0x1B:
                v53 = 1699772781;
                goto LABEL_144;
              case 0x1C:
                v52 = 0x676F44796DLL;
                break;
              case 0x1D:
                v53 = 1631811949;
LABEL_144:
                v52 = v53 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
                break;
              default:
                break;
            }

            v59 = 0xE500000000000000;
            v60 = 0x7465736E75;
            switch(v87)
            {
              case 1:
                v59 = 0xE700000000000000;
                v60 = 0x6E776F6E6B6E75;
                break;
              case 2:
                v60 = 0x726568746FLL;
                break;
              case 3:
                v59 = 0xE600000000000000;
                v60 = 0x666C6573796DLL;
                break;
              case 4:
                v59 = 0xE600000000000000;
                v60 = 0x796C696D6166;
                break;
              case 5:
                v59 = 0xE600000000000000;
                v60 = 0x746E65726170;
                break;
              case 6:
                v60 = 0x726568746F6DLL;
                v59 = 0xE600000000000000;
                break;
              case 7:
                v59 = 0xE600000000000000;
                v65 = 1752457574;
                goto LABEL_173;
              case 8:
                v59 = 0xE700000000000000;
                v60 = 0x676E696C626973;
                break;
              case 9:
                v59 = 0xE700000000000000;
                v64 = 0x6568746F7262;
                goto LABEL_171;
              case 10:
                v59 = 0xE600000000000000;
                v65 = 1953720691;
LABEL_173:
                v60 = v65 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
                break;
              case 11:
                v60 = 0x726150646E617267;
                v63 = 7630437;
                goto LABEL_168;
              case 12:
                v60 = 0x746F6D646E617267;
                goto LABEL_167;
              case 13:
                v60 = 0x746166646E617267;
LABEL_167:
                v63 = 7497064;
LABEL_168:
                v59 = v63 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
                break;
              case 14:
                v59 = 0xE700000000000000;
                v62 = 0x6C696843796DLL;
                goto LABEL_163;
              case 15:
                v60 = 0x646C696863;
                break;
              case 16:
                v59 = 0xE300000000000000;
                v60 = 7237491;
                break;
              case 17:
                v59 = 0xE800000000000000;
                v66 = 0x746867756164;
                goto LABEL_178;
              case 18:
                v59 = 0xE700000000000000;
                v64 = 0x656E74726170;
LABEL_171:
                v60 = v64 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
                break;
              case 19:
                v59 = 0xE400000000000000;
                v60 = 1701210487;
                break;
              case 20:
                v59 = 0xE700000000000000;
                v62 = 0x6E6162737568;
LABEL_163:
                v60 = v62 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
                break;
              case 21:
                v59 = 0xE600000000000000;
                v60 = 0x646E65697266;
                break;
              case 22:
                v60 = 0xD000000000000010;
                v59 = v84;
                break;
              case 23:
                v59 = 0xE800000000000000;
                v66 = 0x6B726F776F63;
LABEL_178:
                v60 = v66 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
                break;
              case 24:
                v59 = 0xE800000000000000;
                v60 = 0x726F62686769656ELL;
                break;
              case 25:
                v60 = 0x74616D6573756F68;
                v59 = 0xE900000000000065;
                break;
              case 26:
                v59 = 0xE600000000000000;
                v60 = 0x696E6D756C61;
                break;
              case 27:
                v61 = 1699772781;
                goto LABEL_181;
              case 28:
                v60 = 0x676F44796DLL;
                break;
              case 29:
                v61 = 1631811949;
LABEL_181:
                v60 = v61 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
                break;
              default:
                break;
            }

            if (v52 == v60 && v51 == v59)
            {
              break;
            }

            v68 = sub_1ABF25054();

            if (v68)
            {
              goto LABEL_191;
            }

            v4 = (v4 + 1) & v50;
            v49 = v4 >> 6;
            v3 = 1 << v4;
            if ((v88[v4 >> 6] & (1 << v4)) == 0)
            {
              v6 = v86;
              goto LABEL_101;
            }
          }

LABEL_191:
          v69 = v81[v49];
          v81[v49] = v69 & ~v3;
          v6 = v86;
          if ((v69 & v3) != 0)
          {
            v42 = v80 - 1;
            if (__OFSUB__(v80, 1))
            {
              __break(1u);
            }

            if (v80 == 1)
            {

              v5 = MEMORY[0x1E69E7CD0];
              goto LABEL_196;
            }

            goto LABEL_100;
          }
        }
      }

      v2 = v85;
      while (1)
      {
        v43 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v43 >= v83)
        {
          v5 = sub_1ABC13930(v81, v78, v80, v5);
          goto LABEL_196;
        }

        v10 = *(v85 + 8 * v43);
        ++v11;
        if (v10)
        {
          v11 = v43;
          goto LABEL_107;
        }
      }

      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v72 = swift_slowAlloc();
    v73 = v77;
    v74 = sub_1ABC16308(v72, v78, v88, v78, v5, v2, &v89);
    if (!v73)
    {
      v75 = v74;

      MEMORY[0x1AC5AB8B0](v72, -1, -1);
      v82 = v91;
      v5 = v75;
LABEL_196:
      sub_1ABAB4C48();
      goto LABEL_197;
    }

    result = MEMORY[0x1AC5AB8B0](v72, -1, -1);
    __break(1u);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CD0];
LABEL_197:
    v70 = *MEMORY[0x1E69E9840];
    return v5;
  }

  return result;
}

uint64_t sub_1ABC156E4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v27 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    v16 = *(a3 + 40);
    sub_1ABF25234();

    sub_1ABF23D34();
    v17 = sub_1ABF25294();
    v18 = ~(-1 << *(a3 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v9 + 8 * v20)) == 0)
      {

        goto LABEL_3;
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 == v15 && v22[1] == v14)
      {
        break;
      }

      v24 = sub_1ABF25054();
      v17 = v19 + 1;
    }

    while ((v24 & 1) == 0);

    v25 = v28[v20];
    v28[v20] = v25 & ~v21;
    if ((v25 & v21) == 0)
    {
      goto LABEL_3;
    }

    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_23;
    }

    if (v27 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_1ABC13714(v28, a2, v27, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1ABC158D0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v38 = result;
  v5 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v40 = a3 + 56;
  while (2)
  {
    v37 = v6;
    while (1)
    {
LABEL_3:
      v7 = a5[3];
      v8 = a5[4];
      if (!v8)
      {
        while (1)
        {
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v9 >= ((a5[2] + 64) >> 6))
          {
            a5[3] = v7;
            a5[4] = 0;

            return sub_1ABC13930(v38, a2, v37, a3);
          }

          v8 = *(a5[1] + 8 * v9);
          ++v7;
          if (v8)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_98;
      }

      v9 = a5[3];
LABEL_8:
      v10 = *(*(*a5 + 48) + (__clz(__rbit64(v8)) | (v9 << 6)));
      a5[3] = v9;
      a5[4] = (v8 - 1) & v8;
      v11 = *(a3 + 40);
      sub_1ABF25234();
      sub_1ABF23D34();

      result = sub_1ABF25294();
      v12 = -1 << *(a3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & *(v40 + 8 * (v13 >> 6))) != 0)
      {
        v16 = ~v12;
        while (1)
        {
          v17 = 0xE500000000000000;
          v18 = 0x7465736E75;
          switch(*(*(a3 + 48) + v13))
          {
            case 1:
              v17 = 0xE700000000000000;
              v18 = 0x6E776F6E6B6E75;
              break;
            case 2:
              v18 = 0x726568746FLL;
              break;
            case 3:
              v17 = 0xE600000000000000;
              v18 = 0x666C6573796DLL;
              break;
            case 4:
              v17 = 0xE600000000000000;
              v18 = 0x796C696D6166;
              break;
            case 5:
              v17 = 0xE600000000000000;
              v18 = 0x746E65726170;
              break;
            case 6:
              v18 = 0x726568746F6DLL;
              v17 = 0xE600000000000000;
              break;
            case 7:
              v17 = 0xE600000000000000;
              v23 = 1752457574;
              goto LABEL_37;
            case 8:
              v17 = 0xE700000000000000;
              v18 = 0x676E696C626973;
              break;
            case 9:
              v17 = 0xE700000000000000;
              v22 = 0x6568746F7262;
              goto LABEL_35;
            case 0xA:
              v17 = 0xE600000000000000;
              v23 = 1953720691;
LABEL_37:
              v18 = v23 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
              break;
            case 0xB:
              v18 = 0x726150646E617267;
              v21 = 7630437;
              goto LABEL_32;
            case 0xC:
              v18 = 0x746F6D646E617267;
              goto LABEL_31;
            case 0xD:
              v18 = 0x746166646E617267;
LABEL_31:
              v21 = 7497064;
LABEL_32:
              v17 = v21 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              break;
            case 0xE:
              v17 = 0xE700000000000000;
              v20 = 0x6C696843796DLL;
              goto LABEL_27;
            case 0xF:
              v18 = 0x646C696863;
              break;
            case 0x10:
              v17 = 0xE300000000000000;
              v18 = 7237491;
              break;
            case 0x11:
              v17 = 0xE800000000000000;
              v24 = 0x746867756164;
              goto LABEL_42;
            case 0x12:
              v17 = 0xE700000000000000;
              v22 = 0x656E74726170;
LABEL_35:
              v18 = v22 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
              break;
            case 0x13:
              v17 = 0xE400000000000000;
              v18 = 1701210487;
              break;
            case 0x14:
              v17 = 0xE700000000000000;
              v20 = 0x6E6162737568;
LABEL_27:
              v18 = v20 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
              break;
            case 0x15:
              v17 = 0xE600000000000000;
              v18 = 0x646E65697266;
              break;
            case 0x16:
              v18 = 0xD000000000000010;
              v17 = 0x80000001ABF81E70;
              break;
            case 0x17:
              v17 = 0xE800000000000000;
              v24 = 0x6B726F776F63;
LABEL_42:
              v18 = v24 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
              break;
            case 0x18:
              v17 = 0xE800000000000000;
              v18 = 0x726F62686769656ELL;
              break;
            case 0x19:
              v18 = 0x74616D6573756F68;
              v17 = 0xE900000000000065;
              break;
            case 0x1A:
              v17 = 0xE600000000000000;
              v18 = 0x696E6D756C61;
              break;
            case 0x1B:
              v19 = 1699772781;
              goto LABEL_45;
            case 0x1C:
              v18 = 0x676F44796DLL;
              break;
            case 0x1D:
              v19 = 1631811949;
LABEL_45:
              v18 = v19 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
              break;
            default:
              break;
          }

          v25 = 0xE500000000000000;
          v26 = 0x7465736E75;
          switch(v10)
          {
            case 1:
              v25 = 0xE700000000000000;
              v26 = 0x6E776F6E6B6E75;
              break;
            case 2:
              v26 = 0x726568746FLL;
              break;
            case 3:
              v25 = 0xE600000000000000;
              v26 = 0x666C6573796DLL;
              break;
            case 4:
              v25 = 0xE600000000000000;
              v26 = 0x796C696D6166;
              break;
            case 5:
              v25 = 0xE600000000000000;
              v26 = 0x746E65726170;
              break;
            case 6:
              v26 = 0x726568746F6DLL;
              v25 = 0xE600000000000000;
              break;
            case 7:
              v25 = 0xE600000000000000;
              v31 = 1752457574;
              goto LABEL_74;
            case 8:
              v25 = 0xE700000000000000;
              v26 = 0x676E696C626973;
              break;
            case 9:
              v25 = 0xE700000000000000;
              v30 = 0x6568746F7262;
              goto LABEL_72;
            case 10:
              v25 = 0xE600000000000000;
              v31 = 1953720691;
LABEL_74:
              v26 = v31 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
              break;
            case 11:
              v26 = 0x726150646E617267;
              v29 = 7630437;
              goto LABEL_69;
            case 12:
              v26 = 0x746F6D646E617267;
              goto LABEL_68;
            case 13:
              v26 = 0x746166646E617267;
LABEL_68:
              v29 = 7497064;
LABEL_69:
              v25 = v29 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              break;
            case 14:
              v25 = 0xE700000000000000;
              v28 = 0x6C696843796DLL;
              goto LABEL_64;
            case 15:
              v26 = 0x646C696863;
              break;
            case 16:
              v25 = 0xE300000000000000;
              v26 = 7237491;
              break;
            case 17:
              v25 = 0xE800000000000000;
              v32 = 0x746867756164;
              goto LABEL_79;
            case 18:
              v25 = 0xE700000000000000;
              v30 = 0x656E74726170;
LABEL_72:
              v26 = v30 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
              break;
            case 19:
              v25 = 0xE400000000000000;
              v26 = 1701210487;
              break;
            case 20:
              v25 = 0xE700000000000000;
              v28 = 0x6E6162737568;
LABEL_64:
              v26 = v28 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
              break;
            case 21:
              v25 = 0xE600000000000000;
              v26 = 0x646E65697266;
              break;
            case 22:
              v26 = 0xD000000000000010;
              v25 = 0x80000001ABF81E70;
              break;
            case 23:
              v25 = 0xE800000000000000;
              v32 = 0x6B726F776F63;
LABEL_79:
              v26 = v32 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
              break;
            case 24:
              v25 = 0xE800000000000000;
              v26 = 0x726F62686769656ELL;
              break;
            case 25:
              v26 = 0x74616D6573756F68;
              v25 = 0xE900000000000065;
              break;
            case 26:
              v25 = 0xE600000000000000;
              v26 = 0x696E6D756C61;
              break;
            case 27:
              v27 = 1699772781;
              goto LABEL_82;
            case 28:
              v26 = 0x676F44796DLL;
              break;
            case 29:
              v27 = 1631811949;
LABEL_82:
              v26 = v27 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
              break;
            default:
              break;
          }

          if (v18 == v26 && v17 == v25)
          {
            break;
          }

          v34 = sub_1ABF25054();

          if (v34)
          {
            goto LABEL_92;
          }

          v13 = (v13 + 1) & v16;
          v14 = v13 >> 6;
          v15 = 1 << v13;
          if ((*(v40 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
          {
            goto LABEL_3;
          }
        }

LABEL_92:
        v35 = v38[v14];
        v38[v14] = v35 & ~v15;
        if ((v35 & v15) != 0)
        {
          break;
        }
      }
    }

    v6 = v37 - 1;
    if (__OFSUB__(v37, 1))
    {
LABEL_98:
      __break(1u);
      return result;
    }

    if (v37 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1ABC16280(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1ABC156E4(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_1ABC16308(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1ABC158D0(a1, a2, a5, a6, a7);

  return v12;
}

_BYTE *storeEnumTagSinglePayload for EntityTaggingHeuristicModel.ETHeuristicError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1ABC16440()
{
  result = qword_1EB4D5740;
  if (!qword_1EB4D5740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5740);
  }

  return result;
}

uint64_t sub_1ABC164B0(void *a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D57A8, &qword_1ABF4B3D8);
  v3 = sub_1ABA7BB64(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC1B464();
  sub_1ABF252E4();
  return (*(v5 + 8))(v9, v2);
}

uint64_t sub_1ABC165E0(uint64_t a1)
{
  v2 = sub_1ABC1B464();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC1661C(uint64_t a1)
{
  v2 = sub_1ABC1B464();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC16688(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1ABA8F224(sub_1ABC166A4, 0);
}

uint64_t sub_1ABC166A4()
{
  sub_1ABA7BBF8();
  v1 = *(v0 + 24);
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1ABC16718, v1, 0);
}

uint64_t sub_1ABC16718()
{
  sub_1ABA7BBF8();
  v1 = v0[2];

  v2 = v0[1];
  v3 = v0[3];

  return v2(v3);
}

uint64_t sub_1ABC1677C(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 192) = a3;
  *(v4 + 200) = v3;
  *(v4 + 184) = a1;
  *(v4 + 208) = *a2;
  return sub_1ABA8F224(sub_1ABC167A4, v3);
}

void sub_1ABC167A4()
{
  v142 = v1;
  v2 = *(v1 + 216);
  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 64);
  v6 = (63 - v4) >> 6;
  isUniquelyReferenced_nonNull_native = 0x80000001ABF81E70;
  v8 = *(v1 + 216);

  v9 = 0;
  while (2)
  {
    if (v5)
    {
LABEL_9:
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      switch(*(*(v2 + 56) + (v11 | (v9 << 6))))
      {
        case 0x12:
          goto LABEL_130;
        default:
          v0 = sub_1ABF25054();

          if ((v0 & 1) == 0)
          {
            continue;
          }

          v12 = *(v1 + 216);
          break;
      }
    }

    else
    {
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v10 >= v6)
        {
          v13 = 0;
          v12 = *(v1 + 216);
          goto LABEL_14;
        }

        v5 = *(v2 + 64 + 8 * v10);
        ++v9;
        if (v5)
        {
          v9 = v10;
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      v12 = *(v1 + 216);
    }

    break;
  }

  v13 = 1;
LABEL_14:

  *(v1 + 290) = v13;
  v14 = sub_1ABC13030(*(v1 + 208));
  v15 = 0;
  v126 = 0x80000001ABF86420;
  while (2)
  {
    *(v1 + 232) = v15;
    *(v1 + 240) = v14;
    *(v1 + 224) = v14;
    v16 = *(&unk_1F20918F0 + v15 + 32);
    if (v14[2])
    {

      sub_1ABAAFEB4();
      v12 = v17;

      if (v12)
      {
        goto LABEL_91;
      }
    }

    v18 = 0.0;
    switch(v16)
    {
      case 3:
        v0 = sub_1ABA8C064();
        v19 = [v12 featureValueForName_];

        if (v19)
        {
          [v19 doubleValue];
          v21 = v20;

          v22 = v21 <= 0.0;
          v18 = 0.96;
          if (!v22)
          {
            goto LABEL_82;
          }
        }

        sub_1ABC1289C(*(v1 + 208), (v1 + 288));
        PersonEntityTagType.rawValue.getter();
        sub_1ABA840F4();
        v24 = v24 && v23 == 0xE600000000000000;
        if (v24)
        {
          goto LABEL_101;
        }

        sub_1ABA907BC();
        isUniquelyReferenced_nonNull_native = v25;
        sub_1ABF25054();
        sub_1ABAA4578();
        v18 = 1.0;
        if ((v0 & 1) == 0)
        {
          v26 = *(v1 + 208);
          sub_1ABC12A7C((v1 + 289));
          if (PersonEntityTagType.rawValue.getter() == isUniquelyReferenced_nonNull_native && v27 == 0xE600000000000000)
          {
          }

          else
          {
            sub_1ABA907BC();
            sub_1ABF25054();
            sub_1ABAA4578();
            if (v0)
            {
              v18 = 1.0;
            }

            else
            {
              v18 = 0.0;
            }
          }
        }

        goto LABEL_82;
      case 4:
        sub_1ABAA179C();
        *(v1 + 16) = v117 + 20;
        *(v1 + 24) = v118;
        *(v1 + 32) = v117;
        *(v1 + 40) = v126;
        sub_1ABA7D708();
        *(v1 + 48) = v119;
        *(v1 + 56) = v120;
        sub_1ABA96C98(&dword_1ABF4B378);

        swift_unknownObjectRetain();
        swift_task_alloc();
        sub_1ABA8E8BC();
        *(v1 + 264) = v121;
        *v121 = v122;
        sub_1ABA7C164(v121);
        goto LABEL_125;
      case 5:
        v57 = sub_1ABA838AC();
        sub_1ABC10A90(v57, v58);
        if (v0)
        {
          goto LABEL_119;
        }

        goto LABEL_81;
      case 6:
        v61 = sub_1ABA838AC();
        sub_1ABC10EDC(v61, v62);
        if (v0)
        {
          goto LABEL_119;
        }

        goto LABEL_81;
      case 7:
        v48 = sub_1ABA838AC();
        sub_1ABC10EFC(v48, v49);
        if (v0)
        {
          goto LABEL_119;
        }

        goto LABEL_81;
      case 8:
        v81 = sub_1ABA838AC();
        sub_1ABC10F1C(v81, v82, v83, v84, v85, v86, v87, v88, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141);
        if (v0)
        {
          goto LABEL_119;
        }

        goto LABEL_81;
      case 9:
        sub_1ABC1289C(*(v1 + 208), &v127 + 6);
        v0 = BYTE6(v127);
        *(v1 + 284) = BYTE6(v127);
        *(v1 + 285) = 9;
        PersonEntityTagType.rawValue.getter();
        sub_1ABA8BC34();
        PersonEntityTagType.rawValue.getter();
        sub_1ABAA22B0();
        if (v24 && isUniquelyReferenced_nonNull_native == v53)
        {
          goto LABEL_65;
        }

        sub_1ABAA4554();
        sub_1ABA9607C();

        v18 = 1.0;
        if (v5)
        {
          goto LABEL_82;
        }

        v55 = sub_1ABE8B4D4(&unk_1F2091928);
        isUniquelyReferenced_nonNull_native = sub_1ABAB10D8(v55);

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_64;
        }

        v56 = sub_1ABE8B4D4(&unk_1F2091DB8);
        sub_1ABAB10D8(v56);
        sub_1ABAA4578();
        if (v0)
        {
          goto LABEL_64;
        }

        v100 = *(v1 + 208);
        sub_1ABC12A7C(&v127 + 7);
        v0 = HIBYTE(v127);
        *(v1 + 286) = HIBYTE(v127);
        *(v1 + 287) = 9;
        PersonEntityTagType.rawValue.getter();
        sub_1ABA8BC34();
        goto LABEL_107;
      case 10:
        sub_1ABC1289C(*(v1 + 208), &v127 + 4);
        v0 = BYTE4(v127);
        *(v1 + 280) = BYTE4(v127);
        *(v1 + 281) = 10;
        PersonEntityTagType.rawValue.getter();
        sub_1ABA8BC34();
        PersonEntityTagType.rawValue.getter();
        sub_1ABAA22B0();
        if (v24 && isUniquelyReferenced_nonNull_native == v29)
        {
LABEL_65:

LABEL_101:

          v18 = 1.0;
        }

        else
        {
          sub_1ABAA4554();
          sub_1ABA9607C();

          v18 = 1.0;
          if ((v5 & 1) == 0)
          {
            v31 = sub_1ABE8B4D4(&unk_1F2091928);
            isUniquelyReferenced_nonNull_native = sub_1ABAB10D8(v31);

            if (isUniquelyReferenced_nonNull_native & 1) != 0 || (v32 = sub_1ABE8B4D4(&unk_1F2091DE0), sub_1ABAB10D8(v32), sub_1ABAA4578(), (v0))
            {
LABEL_64:
              v18 = 0.0;
            }

            else
            {
              v33 = *(v1 + 208);
              sub_1ABC12A7C(&v127 + 5);
              v0 = BYTE5(v127);
              *(v1 + 282) = BYTE5(v127);
              *(v1 + 283) = 10;
              PersonEntityTagType.rawValue.getter();
              sub_1ABA8BC34();
LABEL_107:
              PersonEntityTagType.rawValue.getter();
              sub_1ABAA22B0();
              if (v24 && isUniquelyReferenced_nonNull_native == v101)
              {

                v18 = 0.96;
              }

              else
              {
                sub_1ABAA4554();
                sub_1ABA9607C();

                v18 = 0.96;
                if ((v5 & 1) == 0)
                {
                  v18 = 0.0;
                  if (sub_1ABAB0550(v0, 1))
                  {
                    v103 = COERCE_DOUBLE(sub_1ABAD58F0(8, v14));
                    if (v104)
                    {
                      goto LABEL_132;
                    }

                    v18 = v103 * 0.5;
                  }
                }
              }
            }
          }
        }

LABEL_82:
        LOBYTE(v5) = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 144) = v14;
        sub_1ABAAFEB4();
        v91 = v14[2];
        sub_1ABA7AD10();
        if (__OFADD__(v92, v93))
        {
          goto LABEL_129;
        }

        sub_1ABAB54C4();
        sub_1ABAD219C(&qword_1EB4D52E0, qword_1ABF49790);
        v12 = v1 + 144;
        if (sub_1ABF24C64())
        {
          v12 = *(v1 + 144);
          sub_1ABAAFEB4();
          sub_1ABAA3404();
          if (!v24)
          {
            goto LABEL_116;
          }

          v0 = v94;
        }

        v14 = *(v1 + 144);
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_88;
        }

        sub_1ABA7E6B4(&v14[v0 >> 6]);
        *(v14[6] + v0) = v16;
        sub_1ABA90CE0();
        if (!v47)
        {
          goto LABEL_90;
        }

        __break(1u);
LABEL_132:
        sub_1ABC136C0();
        sub_1ABA7BD00();
        swift_willThrow();
LABEL_119:

        sub_1ABA7BBE0();
        goto LABEL_120;
      case 15:
        v63 = sub_1ABA838AC();
        sub_1ABC11240(v63, v64, v65, v66, v67, v68, v69, v70, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141);
        if (v0)
        {
          goto LABEL_119;
        }

        goto LABEL_81;
      case 16:
        v89 = sub_1ABA838AC();
        sub_1ABC1172C(v89, v90);
        if (!v0)
        {
          goto LABEL_81;
        }

        goto LABEL_119;
      case 17:
        v51 = sub_1ABA838AC();
        sub_1ABC118B8(v51, v52);
        if (v0)
        {
          goto LABEL_119;
        }

        goto LABEL_81;
      case 18:
        if (*(v1 + 290) == 1)
        {
          if (!v14[2] || (sub_1ABAAFEB4(), (v34 & 1) == 0))
          {
            swift_isUniquelyReferenced_nonNull_native();
            *(v1 + 160) = v14;
            sub_1ABAAFEB4();
            v95 = v14[2];
            sub_1ABA7AD10();
            if (__OFADD__(v96, v97))
            {
              goto LABEL_134;
            }

            sub_1ABAB54C4();
            sub_1ABAD219C(&qword_1EB4D52E0, qword_1ABF49790);
            v12 = v1 + 160;
            if (sub_1ABF24C64())
            {
              v12 = *(v1 + 160);
              sub_1ABAAFEB4();
              sub_1ABAA3404();
              if (!v24)
              {
LABEL_116:
                sub_1ABAA25DC();

                sub_1ABF25104();
                return;
              }

              v0 = v98;
            }

            v14 = *(v1 + 160);
            if (isUniquelyReferenced_nonNull_native)
            {
              *(v14[7] + 8 * v0) = 0;
              goto LABEL_91;
            }

            sub_1ABA7E6B4(&v14[v0 >> 6]);
            *(v14[6] + v0) = 18;
            *(v14[7] + 8 * v0) = 0;
            v99 = v14[2];
            v47 = __OFADD__(v99, 1);
            v46 = v99 + 1;
            if (v47)
            {
              goto LABEL_136;
            }

            goto LABEL_90;
          }
        }

        v35 = sub_1ABA838AC();
        sub_1ABC119E8(v35, v36);
        if (v0)
        {
          goto LABEL_119;
        }

        v18 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 152) = v14;
        sub_1ABAAFEB4();
        v38 = v14[2];
        sub_1ABA7AD10();
        if (!__OFADD__(v41, v42))
        {
          v0 = v39;
          v43 = v40;
          sub_1ABAD219C(&qword_1EB4D52E0, qword_1ABF49790);
          v12 = v1 + 152;
          if (sub_1ABF24C64())
          {
            v12 = *(v1 + 152);
            v44 = sub_1ABAAFEB4();
            if ((v43 & 1) != (v45 & 1))
            {
              goto LABEL_116;
            }

            v0 = v44;
          }

          v14 = *(v1 + 152);
          if ((v43 & 1) == 0)
          {
            sub_1ABA7E6B4(&v14[v0 >> 6]);
            *(v14[6] + v0) = 18;
            sub_1ABA90CE0();
            if (v47)
            {
              goto LABEL_135;
            }

LABEL_90:
            v14[2] = v46;
            goto LABEL_91;
          }

LABEL_88:
          *(v14[7] + 8 * v0) = v18;
LABEL_91:
          sub_1ABAA1F3C();
          if (v24)
          {
            v105 = *(v1 + 184);
            sub_1ABAB1A04(v14);
            v106 = sub_1ABBFA50C();
            v107 = static EntityTaggingModelUtility.normalizeEntityTagsDictionary(input:)(v106);

            *v105 = v107;
            *(v105 + 8) = v107;

            *(v105 + 16) = 0;
            *(v105 + 24) = 1;
            sub_1ABA80A84();
LABEL_120:
            sub_1ABAA25DC();

            __asm { BRAA            X1, X16 }
          }

          continue;
        }

        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
        return;
      case 21:
        v59 = sub_1ABA838AC();
        sub_1ABC11E20(v59, v60);
        if (v0)
        {
          goto LABEL_119;
        }

        goto LABEL_81;
      case 22:
        sub_1ABAA179C();
        *(v1 + 64) = v111 + 30;
        *(v1 + 72) = v112;
        *(v1 + 80) = v111;
        *(v1 + 88) = v126;
        sub_1ABA7D708();
        *(v1 + 96) = v113;
        *(v1 + 104) = v114;
        sub_1ABA96C98(&dword_1ABF4B378);

        swift_unknownObjectRetain();
        swift_task_alloc();
        sub_1ABA8E8BC();
        *(v1 + 248) = v115;
        *v115 = v116;
        sub_1ABA934D0(v115);
LABEL_125:
        sub_1ABAA25DC();

        __asm { BR              X6 }

        return;
      case 23:
        v71 = sub_1ABA838AC();
        sub_1ABC12400(v71, v72, v73, v74, v75, v76, v77, v78, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141);
        if (v0)
        {
          goto LABEL_119;
        }

        goto LABEL_81;
      case 26:
        v79 = sub_1ABA838AC();
        sub_1ABC12778(v79, v80);
        if (v0)
        {
          goto LABEL_119;
        }

LABEL_81:
        v18 = v50;
        goto LABEL_82;
      default:
        goto LABEL_82;
    }
  }
}

uint64_t sub_1ABC173B0()
{
  sub_1ABA8C008();
  v2 = *v1;
  v3 = *v1;
  sub_1ABA7BBC0();
  *v4 = v3;
  v5 = v2[31];
  *v4 = *v1;
  v3[32] = v0;

  v6 = v2[30];
  v7 = v2[26];
  v8 = v2[25];
  sub_1ABC1AFCC((v3 + 8));
  swift_unknownObjectRelease();

  sub_1ABAB5CD8();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABC17E20()
{
  sub_1ABA8C008();
  v2 = *v1;
  v3 = *v1;
  sub_1ABA7BBC0();
  *v4 = v3;
  v5 = v2[33];
  *v4 = *v1;
  v3[34] = v0;

  v6 = v2[30];
  v7 = v2[26];
  v8 = v2[25];
  sub_1ABC1AFCC((v3 + 2));
  swift_unknownObjectRelease();

  sub_1ABAB5CD8();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABC1888C()
{
  sub_1ABA7BBF8();
  v1 = *(v0 + 240);

  v2 = *(v0 + 256);
  sub_1ABA7BBE0();

  return v3();
}

uint64_t sub_1ABC188E8()
{
  sub_1ABA7BBF8();
  v1 = *(v0 + 240);

  v2 = *(v0 + 272);
  sub_1ABA7BBE0();

  return v3();
}

uint64_t sub_1ABC18944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 57) = a6;
  *(v7 + 112) = a5;
  *(v7 + 120) = v6;
  *(v7 + 96) = a3;
  *(v7 + 104) = a4;
  *(v7 + 80) = a1;
  *(v7 + 88) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1ABC18970, 0, 0);
}

uint64_t sub_1ABC18970()
{
  sub_1ABA906D0();
  v1 = *(v0 + 120);
  v2 = *(v0 + 57);
  sub_1ABD3F148();
  if (v2)
  {
    v3 = *(v0 + 120);
    v4 = (v3 + 24);
  }

  else
  {
    v4 = (v0 + 112);
    v3 = *(v0 + 120);
  }

  v5 = *v4;
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v8 = *(v3 + 16);
  *(v0 + 128) = *(v8 + 16);
  swift_unownedRetainStrong();
  *(v0 + 160) = 0;
  v9 = *(v8 + 24);
  *(v0 + 16) = v7;
  *(v0 + 136) = v9;
  *(v0 + 24) = v6;
  *(v0 + 32) = 0xD00000000000001DLL;
  *(v0 + 40) = 0x80000001ABF8C140;
  *(v0 + 48) = v5;
  *(v0 + 56) = 0;
  sub_1ABA96C98(&dword_1ABF4B380);
  swift_unknownObjectRetain();

  swift_task_alloc();
  sub_1ABA8E8BC();
  *(v0 + 144) = v10;
  *v10 = v11;
  v10[1] = sub_1ABC18ABC;
  v12 = *(v0 + 104);

  return v14(v0 + 64, v12, v0 + 16, v9);
}

uint64_t sub_1ABC18ABC()
{
  sub_1ABA8C008();
  sub_1ABA7BC10();
  v3 = v2[18];
  v4 = v2[17];
  v5 = v2[16];
  v6 = v2[12];
  v7 = v2[11];
  v8 = *v1;
  sub_1ABA7BBC0();
  *v9 = v8;
  *(v10 + 152) = v0;

  swift_unknownObjectRelease();

  if (v0)
  {
    v11 = sub_1ABC18C68;
  }

  else
  {
    v11 = sub_1ABC18C54;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1ABC18C54()
{
  v2 = v0[9];
  v1 = v0[10];
  *v1 = v0[8];
  v1[1] = v2;
  return sub_1ABAA57F0();
}

uint64_t sub_1ABC18C68()
{
  sub_1ABA7BBE0();
  v1 = *(v0 + 152);
  return v2();
}

uint64_t sub_1ABC18C8C()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1ABC18CBC(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1ABA7FDA0;

  return sub_1ABC1677C(a1, a2, a3);
}

uint64_t sub_1ABC18D70()
{
  sub_1ABA7BC04();
  v2 = v1;
  type metadata accessor for EntityTaggingHeuristicsInferenceServiceDefinition.Runner();
  swift_allocObject();

  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1ABB9916C;

  return sub_1ABC16688(v2);
}

uint64_t sub_1ABC18E4C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1ABB273DC;

  return sub_1ABC18D70();
}

uint64_t sub_1ABC18F08(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001ABF8C0B0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABC18FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC18F08(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABC18FD4(uint64_t a1)
{
  v2 = sub_1ABC191E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC19010(uint64_t a1)
{
  v2 = sub_1ABC191E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EntityTaggingHeuristicsInferenceServiceRunEvent.encode(to:)(void *a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4D5748, &unk_1ABF4B030);
  v4 = sub_1ABA7BB64(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC191E0();

  sub_1ABF252E4();
  v14[1] = v11;
  sub_1ABAD219C(&qword_1EB4D3E68, &qword_1ABF40BF8);
  sub_1ABB99B30(&qword_1EB4D3E70);
  sub_1ABF24F84();

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_1ABC191E0()
{
  result = qword_1EB4D5750;
  if (!qword_1EB4D5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5750);
  }

  return result;
}

uint64_t EntityTaggingHeuristicsInferenceServiceRunEvent.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D5758, &qword_1ABF4B040);
  v6 = sub_1ABA7BB64(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = v15 - v11;
  v13 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC191E0();
  sub_1ABF252C4();
  if (!v2)
  {
    sub_1ABAD219C(&qword_1EB4D3E68, &qword_1ABF40BF8);
    sub_1ABB99B30(&qword_1EB4D3E80);
    sub_1ABF24E64();
    (*(v8 + 8))(v12, v5);
    *a2 = v15[1];
  }

  return sub_1ABA84B54(a1);
}

unint64_t sub_1ABC19420()
{
  result = qword_1EB4CE9A8;
  if (!qword_1EB4CE9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE9A8);
  }

  return result;
}

unint64_t sub_1ABC19474()
{
  result = qword_1EB4CE9B0;
  if (!qword_1EB4CE9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE9B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityTaggingHeuristicsInferenceServiceRunEvent.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1ABC195E4()
{
  result = qword_1EB4D5760;
  if (!qword_1EB4D5760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5760);
  }

  return result;
}

unint64_t sub_1ABC1963C()
{
  result = qword_1EB4CE940;
  if (!qword_1EB4CE940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE940);
  }

  return result;
}

unint64_t sub_1ABC19694()
{
  result = qword_1EB4CEBD8;
  if (!qword_1EB4CEBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEBD8);
  }

  return result;
}

unint64_t sub_1ABC196EC()
{
  result = qword_1EB4CE938;
  if (!qword_1EB4CE938)
  {
    type metadata accessor for EntityTaggingHeuristicsInferenceServiceDefinition.Runner();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE938);
  }

  return result;
}

uint64_t sub_1ABC1976C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABC197A8()
{
  result = qword_1EB4CE948;
  if (!qword_1EB4CE948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE948);
  }

  return result;
}

unint64_t sub_1ABC197FC()
{
  result = qword_1EB4CE950;
  if (!qword_1EB4CE950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE950);
  }

  return result;
}

unint64_t sub_1ABC19894(uint64_t a1)
{
  result = sub_1ABC196EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC198C0()
{
  result = qword_1EB4D5770;
  if (!qword_1EB4D5770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5770);
  }

  return result;
}

unint64_t sub_1ABC19918()
{
  result = qword_1EB4D5778;
  if (!qword_1EB4D5778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5778);
  }

  return result;
}

uint64_t sub_1ABC1996C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19[0] = a1;
  v4 = a1;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  result = swift_dynamicCast();
  if (result)
  {
    v6 = v15 & 1;
LABEL_5:
    *a2 = v6;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    return result;
  }

  v19[0] = a1;
  v7 = a1;
  result = swift_dynamicCast();
  if (result)
  {
    v6 = 256;
    goto LABEL_5;
  }

  v18 = a1;
  v8 = a1;
  sub_1ABAD219C(&qword_1EB4D5790, &unk_1ABF4B3A0);
  if (swift_dynamicCast())
  {
    sub_1ABA946C0(&v15, v19);
    v9 = v20;
    v10 = v21;
    sub_1ABA93E20(v19, v20);
    (*(v10 + 32))(&v15, v9, v10);
    v11 = v17;
    v12 = v16;
    *a2 = v15;
    *(a2 + 16) = v12;
    *(a2 + 32) = v11;
    *(a2 + 33) = 1;
    return sub_1ABA84B54(v19);
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    sub_1ABC1B020(&v15);
    v19[0] = a1;
    v13 = a1;
    result = sub_1ABF23C94();
    *a2 = result;
    *(a2 + 8) = v14;
    *(a2 + 33) = 2;
  }

  return result;
}

uint64_t sub_1ABC19B04(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v8 = v4;
  if (qword_1EB4CFFC0 != -1)
  {
    swift_once();
  }

  *(v8 + 16) = qword_1EB4CF2B8;
  v10 = swift_task_alloc();
  *(v8 + 24) = v10;
  *v10 = v8;
  v10[1] = sub_1ABC19C04;

  return sub_1ABC19DF8(a1, a2, a3, a4);
}

uint64_t sub_1ABC19C04()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v3 + 32) = v0;

  if (!v0)
  {
    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  v9 = *(v3 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1ABC19D1C, v9, 0);
}

uint64_t sub_1ABC19D1C()
{
  sub_1ABA8C008();
  v1 = *(v0 + 32);
  sub_1ABAD219C(&qword_1EB4D5780, &unk_1ABF4B390);
  sub_1ABAB47C4(&qword_1EB4D5788, &qword_1EB4D5780, &unk_1ABF4B390);
  sub_1ABA7BD00();
  sub_1ABC1996C(v1, v2);
  swift_willThrow();

  sub_1ABA7BBE0();

  return v3();
}

uint64_t sub_1ABC19DF8(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  *(v5 + 128) = a4;
  *(v5 + 136) = v4;
  *(v5 + 112) = a1;
  *(v5 + 120) = a2;
  v6 = a3[1];
  *(v5 + 64) = *a3;
  *(v5 + 80) = v6;
  *(v5 + 89) = *(a3 + 25);
  if (qword_1EB4CFFC0 != -1)
  {
    swift_once();
  }

  *(v5 + 144) = qword_1EB4CF2B8;

  return MEMORY[0x1EEE6DFA0](sub_1ABC19EA8);
}

uint64_t sub_1ABC19EA8()
{
  v18 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = v3[1];
  v16[0] = *v3;
  v16[1] = v4;
  v16[2] = v3[2];
  v17 = v1;
  sub_1ABD34F48(v16, &v17);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 120);
  v8 = swift_task_alloc();
  *(v0 + 152) = v8;
  v8[2] = v5;
  v8[3] = v0 + 64;
  v8[4] = v7;
  v8[5] = v6;
  *(v0 + 41) = *(v0 + 89);
  v9 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v9;
  swift_task_alloc();
  sub_1ABA8E8BC();
  *(v0 + 160) = v10;
  *v10 = v11;
  v10[1] = sub_1ABC1A004;
  v12 = *(v0 + 136);
  v13 = *(v0 + 112);
  v14 = *(v0 + 120);

  return sub_1ABC1A8F4(v13, v14, (v0 + 16), &unk_1ABF4B3B8, v8);
}

uint64_t sub_1ABC1A004()
{
  sub_1ABA7BC04();
  v2 = *v1;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = v2[20];
  *v4 = *v1;
  *(v3 + 168) = v0;

  v6 = v2[19];
  v7 = v2[18];

  sub_1ABAB5CD8();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABC1A13C()
{
  v1 = *(v0 + 168);
  sub_1ABA7BBE0();
  return v2();
}

uint64_t sub_1ABC1A160(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 232) = a5;
  *(v6 + 240) = a6;
  *(v6 + 216) = a2;
  *(v6 + 224) = a3;
  *(v6 + 208) = a1;
  v7 = a4[1];
  *(v6 + 16) = *a4;
  *(v6 + 32) = v7;
  *(v6 + 41) = *(a4 + 25);
  if (qword_1EB4CFFC0 != -1)
  {
    swift_once();
  }

  *(v6 + 248) = qword_1EB4CF2B8;

  return MEMORY[0x1EEE6DFA0](sub_1ABC1A214);
}

uint64_t sub_1ABC1A214()
{
  v18 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = v1[1];
  v17[0] = *v1;
  v17[1] = v3;
  v17[2] = v1[2];
  sub_1ABD34620(v17, v0 + 64);
  v4 = *(v0 + 240);
  v5 = *(v0 + 224);
  *(v0 + 128) = sub_1ABAD219C(&qword_1EB4D57A0, &qword_1ABF4B3D0);
  *(v0 + 136) = &off_1F2081628;
  v6 = swift_allocObject();
  *(v0 + 104) = v6;
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  *(v0 + 256) = v9;
  *(v0 + 264) = v10;
  v11 = *(v0 + 48);
  *(v0 + 272) = v11;
  v12 = *(v0 + 56);
  *(v0 + 57) = v12;
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  *(v6 + 32) = v9;
  *(v6 + 40) = v10;
  *(v6 + 48) = v11;
  *(v6 + 56) = v12;
  *(v0 + 176) = v5;
  *(v0 + 184) = v4;

  swift_unknownObjectRetain();

  swift_task_alloc();
  sub_1ABA8E8BC();
  *(v0 + 280) = v13;
  *v13 = v14;
  v13[1] = sub_1ABC1A3E0;
  v15 = *(v0 + 224);

  return sub_1ABD34FC0();
}

uint64_t sub_1ABC1A3E0()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v6 = *(v5 + 280);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  v3[36] = v0;

  if (v0)
  {
    v9 = v3[31];
    v10 = sub_1ABC1A770;
  }

  else
  {
    v11 = v3[31];
    sub_1ABA84B54(v3 + 13);
    v10 = sub_1ABC1A4F0;
    v9 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

void sub_1ABC1A4F0()
{
  sub_1ABA906D0();
  v1 = *(v0 + 57);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 96);
  sub_1ABA93E20((v0 + 64), *(v0 + 88));
  *(v0 + 192) = v3;
  *(v0 + 200) = v2;
  v5 = *(v4 + 48);
  v12 = v5 + *v5;
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  sub_1ABC1B410();
  *v7 = v0;
  v7[1] = sub_1ABC1A670;
  v8 = *(v0 + 264);
  v9 = *(v0 + 272);
  v10 = *(v0 + 256);

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1ABC1A670()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v6 = *(v5 + 296);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v3 + 304) = v0;

  v9 = *(v3 + 248);
  if (v0)
  {
    v10 = sub_1ABC1A884;
  }

  else
  {
    v10 = sub_1ABC1A7E8;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1ABC1A770()
{
  sub_1ABA7BBF8();
  v1 = v0[30];
  v2 = v0[28];

  sub_1ABA84B54(v0 + 13);
  sub_1ABA84B54(v0 + 8);
  v3 = v0[36];
  sub_1ABA7BBE0();

  return v4();
}

uint64_t sub_1ABC1A7E8()
{
  sub_1ABA7BC04();
  v1 = *(v0 + 240);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 208);

  v5 = *(v0 + 152);
  *v4 = *(v0 + 144);
  v4[1] = v5;
  v6 = *(v0 + 168);
  *v3 = *(v0 + 160);
  *(v3 + 8) = v6;
  sub_1ABA84B54((v0 + 64));
  sub_1ABA80A84();

  return v7();
}

uint64_t sub_1ABC1A884()
{
  sub_1ABA7BBF8();
  v1 = v0[30];
  v2 = v0[28];

  sub_1ABA84B54(v0 + 8);
  v3 = v0[38];
  sub_1ABA7BBE0();

  return v4();
}

uint64_t sub_1ABC1A8F4(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 136) = a5;
  *(v6 + 144) = v5;
  *(v6 + 120) = a2;
  *(v6 + 128) = a4;
  *(v6 + 112) = a1;
  v8 = sub_1ABF21F04();
  *(v6 + 152) = v8;
  v9 = *(v8 - 8);
  *(v6 + 160) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 168) = swift_task_alloc();
  v11 = a3[1];
  *(v6 + 16) = *a3;
  *(v6 + 32) = v11;
  *(v6 + 41) = *(a3 + 25);
  if (qword_1EB4CFFC0 != -1)
  {
    swift_once();
  }

  *(v6 + 176) = qword_1EB4CF2B8;

  return MEMORY[0x1EEE6DFA0](sub_1ABC1AA08);
}

uint64_t sub_1ABC1AA08()
{
  sub_1ABA906D0();
  v1 = v0[21];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  sub_1ABF21EF4();
  v5 = *(v2 + 168);
  v0[23] = v5;
  v6 = swift_task_alloc();
  v6[2] = v1;
  v6[3] = v4;
  v6[4] = v0 + 2;
  sub_1ABEA58D4(sub_1ABC1B35C, v6, v5);

  v12 = (v3 + *v3);
  v7 = v3[1];
  swift_task_alloc();
  sub_1ABA8E8BC();
  v0[24] = v8;
  *v8 = v9;
  v8[1] = sub_1ABC1AB6C;
  v10 = v0[17];

  return (v12)(v0 + 10, v0 + 12);
}

uint64_t sub_1ABC1AB6C()
{
  sub_1ABA7BC04();
  v2 = *v1;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *(v2 + 192);
  *v4 = *v1;
  *(v3 + 200) = v0;

  v6 = *(v2 + 176);
  if (v0)
  {
    v7 = sub_1ABC1ADB8;
  }

  else
  {
    v7 = sub_1ABC1AC8C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1ABC1AC8C()
{
  v13 = *(v0 + 184);
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v14 = *(v0 + 200);
  v15 = *(v0 + 152);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 104);
  v6 = *(v0 + 105);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  *(v0 + 64) = *(v0 + 80);
  *(v0 + 72) = v7;
  v9 = swift_task_alloc();
  *(v9 + 16) = v1;
  *(v9 + 24) = v3;
  *(v9 + 32) = v0 + 16;
  *(v9 + 40) = v0 + 64;
  *(v9 + 48) = v8;
  *(v9 + 56) = v5;
  *(v9 + 57) = v6;
  sub_1ABEA58D4(sub_1ABC1B3D8, v9, v13);

  v10 = *(v0 + 72);
  *v4 = *(v0 + 64);
  v4[1] = v10;
  (*(v2 + 8))(v1, v15);

  sub_1ABA80A84();

  return v11();
}

uint64_t sub_1ABC1ADB8()
{
  sub_1ABA7BBF8();
  (*(v0[20] + 8))(v0[21], v0[19]);

  sub_1ABA7BBE0();
  v2 = v0[25];

  return v1();
}

uint64_t sub_1ABC1AE30(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, __int128 *a5)
{
  v8 = a5[1];
  v15 = *a5;
  v16[0] = v8;
  *(v16 + 9) = *(a5 + 25);
  ObjectType = swift_getObjectType();
  v10 = a4[1];
  v14[0] = *a4;
  v14[1] = v10;
  v14[2] = a4[2];
  v11 = *(a2 + 8);
  v12 = sub_1ABC1B410();
  return v11(a3, v14, &type metadata for EntityTaggingMLModelInferenceInterface, &v15, &type metadata for EntityTaggingMLModelInferenceInterface, v12, ObjectType, a2);
}

uint64_t sub_1ABC1AEEC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, __int128 *a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  v14 = a6[1];
  v24 = *a6;
  v25[0] = v14;
  *(v25 + 9) = *(a6 + 25);
  *v23 = a1;
  v23[1] = a7;
  ObjectType = swift_getObjectType();
  v16 = a5[1];
  v22[0] = *a5;
  v22[1] = v16;
  v22[2] = a5[2];
  v20 = a8;
  v21 = a9 & 0x1FF;
  v17 = *(a3 + 24);
  v18 = sub_1ABC1B410();
  return v17(a4, v22, &type metadata for EntityTaggingMLModelInferenceInterface, &v24, v23, &v20, &type metadata for EntityTaggingMLModelInferenceInterface, v18, ObjectType, a3);
}

uint64_t sub_1ABC1B020(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D5798, &unk_1ABF598E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABC1B088(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  v12 = a4[1];
  *(v6 + 16) = *a4;
  *(v6 + 32) = v12;
  *(v6 + 41) = *(a4 + 25);
  v13 = swift_task_alloc();
  *(v6 + 64) = v13;
  *v13 = v6;
  v13[1] = sub_1ABC1B164;

  return sub_1ABC1A160(a1, a2, a3, (v6 + 16), a5, a6);
}

uint64_t sub_1ABC1B164()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v2 = *(v1 + 64);
  v3 = *v0;
  sub_1ABA7BBC0();
  *v4 = v3;

  sub_1ABA7BBE0();

  return v5();
}

uint64_t sub_1ABC1B244()
{
  sub_1ABA906D0();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  swift_task_alloc();
  sub_1ABA8E8BC();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1ABA7FDA0;
  sub_1ABAA19C4();

  return v8();
}

uint64_t sub_1ABC1B314(uint64_t *a1, uint64_t a2, _OWORD *a3, __int128 *a4)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a4[1];
  v10 = *a4;
  v11[0] = v8;
  *(v11 + 9) = *(a4 + 25);
  return sub_1ABC1AE30(v7, v6, a2, a3, &v10);
}

uint64_t sub_1ABC1B37C(uint64_t *a1, uint64_t a2, _OWORD *a3, __int128 *a4, uint64_t a5, uint64_t a6, __int16 a7)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a4[1];
  v13 = *a4;
  v14[0] = v11;
  *(v14 + 9) = *(a4 + 25);
  return sub_1ABC1AEEC(*a5, v10, v9, a2, a3, &v13, *(a5 + 8), a6, a7 & 0x1FF);
}

unint64_t sub_1ABC1B410()
{
  result = qword_1EB4CEA28;
  if (!qword_1EB4CEA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA28);
  }

  return result;
}

unint64_t sub_1ABC1B464()
{
  result = qword_1EB4D57B0;
  if (!qword_1EB4D57B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D57B0);
  }

  return result;
}

unint64_t sub_1ABC1B4D8()
{
  result = qword_1EB4D57B8;
  if (!qword_1EB4D57B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D57B8);
  }

  return result;
}

unint64_t sub_1ABC1B530()
{
  result = qword_1EB4D57C0;
  if (!qword_1EB4D57C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D57C0);
  }

  return result;
}

uint64_t sub_1ABC1B5AC()
{

  return sub_1ABF24C64();
}

uint64_t sub_1ABC1B5CC()
{
  sub_1ABAD219C(&unk_1EB4D5800, &unk_1ABF4B4C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF3EB70;
  *(inited + 32) = 3;
  *(inited + 40) = &unk_1F2091E08;
  *(inited + 48) = 4;
  *(inited + 56) = &unk_1F2091E38;
  *(inited + 64) = 5;
  sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1ABF34740;
  v2 = *MEMORY[0x1E695C8F8];
  *(v1 + 32) = sub_1ABF23C04();
  *(v1 + 40) = v3;
  *(inited + 72) = v1;
  *(inited + 80) = 6;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABF34740;
  v5 = *MEMORY[0x1E695C870];
  *(v4 + 32) = sub_1ABF23C04();
  *(v4 + 40) = v6;
  *(inited + 88) = v4;
  *(inited + 96) = 7;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1ABF34740;
  v8 = *MEMORY[0x1E695C720];
  *(v7 + 32) = sub_1ABF23C04();
  *(v7 + 40) = v9;
  *(inited + 104) = v7;
  *(inited + 112) = 8;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1ABF34740;
  v11 = *MEMORY[0x1E695C958];
  *(v10 + 32) = sub_1ABF23C04();
  *(v10 + 40) = v12;
  *(inited + 120) = v10;
  *(inited + 128) = 9;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1ABF34740;
  v14 = *MEMORY[0x1E695C540];
  *(v13 + 32) = sub_1ABF23C04();
  *(v13 + 40) = v15;
  *(inited + 136) = v13;
  *(inited + 144) = 10;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1ABF34740;
  v17 = *MEMORY[0x1E695C970];
  *(v16 + 32) = sub_1ABF23C04();
  *(v16 + 40) = v18;
  *(inited + 152) = v16;
  *(inited + 160) = 11;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1ABF34740;
  v20 = *MEMORY[0x1E695C7F8];
  *(v19 + 32) = sub_1ABF23C04();
  *(v19 + 40) = v21;
  *(inited + 168) = v19;
  *(inited + 176) = 12;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1ABF34740;
  v23 = *MEMORY[0x1E695C7B0];
  *(v22 + 32) = sub_1ABF23C04();
  *(v22 + 40) = v24;
  *(inited + 184) = v22;
  *(inited + 192) = 13;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1ABF34740;
  v26 = *MEMORY[0x1E695C798];
  *(v25 + 32) = sub_1ABF23C04();
  *(v25 + 40) = v27;
  *(inited + 200) = v25;
  *(inited + 208) = 15;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1ABF34740;
  v29 = *MEMORY[0x1E695C590];
  *(v28 + 32) = sub_1ABF23C04();
  *(v28 + 40) = v30;
  *(inited + 216) = v28;
  *(inited + 224) = 16;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1ABF34740;
  v32 = *MEMORY[0x1E695C9C0];
  *(v31 + 32) = sub_1ABF23C04();
  *(v31 + 40) = v33;
  *(inited + 232) = v31;
  *(inited + 240) = 17;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1ABF34740;
  v35 = *MEMORY[0x1E695C658];
  *(v34 + 32) = sub_1ABF23C04();
  *(v34 + 40) = v36;
  *(inited + 248) = v34;
  *(inited + 256) = 18;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1ABF34740;
  v38 = *MEMORY[0x1E695C950];
  *(v37 + 32) = sub_1ABF23C04();
  *(v37 + 40) = v39;
  *(inited + 264) = v37;
  *(inited + 272) = 19;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1ABF34740;
  v41 = *MEMORY[0x1E695CAA0];
  *(v40 + 32) = sub_1ABF23C04();
  *(v40 + 40) = v42;
  *(inited + 280) = v40;
  *(inited + 288) = 20;
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1ABF34740;
  v44 = *MEMORY[0x1E695C848];
  *(v43 + 32) = sub_1ABF23C04();
  *(v43 + 40) = v45;
  *(inited + 296) = v43;
  *(inited + 304) = 21;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1ABF34740;
  v47 = *MEMORY[0x1E695C760];
  *(v46 + 32) = sub_1ABF23C04();
  *(v46 + 40) = v48;
  *(inited + 312) = v46;
  *(inited + 320) = 23;
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1ABF34740;
  v50 = *MEMORY[0x1E695C5D0];
  *(v49 + 32) = sub_1ABF23C04();
  *(v49 + 40) = v51;
  *(inited + 328) = v49;
  *(inited + 336) = 24;
  *(inited + 344) = &unk_1F2091E68;
  *(inited + 352) = 25;
  *(inited + 360) = &unk_1F2091E98;
  *(inited + 368) = 26;
  *(inited + 376) = &unk_1F2091EC8;
  *(inited + 384) = 27;
  *(inited + 392) = &unk_1F2091EF8;
  *(inited + 400) = 28;
  *(inited + 408) = &unk_1F2091F48;
  *(inited + 416) = 29;
  *(inited + 424) = &unk_1F2091F88;
  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABAB20D0();
  result = sub_1ABF239C4();
  qword_1EB4D57D0 = result;
  return result;
}

void *sub_1ABC1BB20()
{
  sub_1ABAD219C(&qword_1EB4D5828, qword_1ABF4B4E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF3EB70;
  *(inited + 32) = 0x213E654D3C21245FLL;
  *(inited + 40) = 0xEA00000000005F24;
  *(inited + 48) = 3;
  strcpy((inited + 56), "_$!<Family>!$_");
  *(inited + 71) = -18;
  *(inited + 72) = 4;
  v1 = *MEMORY[0x1E695C8F8];
  *(inited + 80) = sub_1ABF23C04();
  *(inited + 88) = v2;
  *(inited + 96) = 5;
  v3 = *MEMORY[0x1E695C870];
  *(inited + 104) = sub_1ABF23C04();
  *(inited + 112) = v4;
  *(inited + 120) = 6;
  v5 = *MEMORY[0x1E695C720];
  *(inited + 128) = sub_1ABF23C04();
  *(inited + 136) = v6;
  *(inited + 144) = 7;
  v7 = *MEMORY[0x1E695C958];
  *(inited + 152) = sub_1ABF23C04();
  *(inited + 160) = v8;
  *(inited + 168) = 8;
  v9 = *MEMORY[0x1E695C540];
  *(inited + 176) = sub_1ABF23C04();
  *(inited + 184) = v10;
  *(inited + 192) = 9;
  v11 = *MEMORY[0x1E695C970];
  *(inited + 200) = sub_1ABF23C04();
  *(inited + 208) = v12;
  *(inited + 216) = 10;
  v13 = *MEMORY[0x1E695C7F8];
  *(inited + 224) = sub_1ABF23C04();
  *(inited + 232) = v14;
  *(inited + 240) = 11;
  v15 = *MEMORY[0x1E695C7B0];
  *(inited + 248) = sub_1ABF23C04();
  *(inited + 256) = v16;
  *(inited + 264) = 12;
  v17 = *MEMORY[0x1E695C798];
  *(inited + 272) = sub_1ABF23C04();
  *(inited + 280) = v18;
  *(inited + 288) = 13;
  v19 = *MEMORY[0x1E695C590];
  *(inited + 296) = sub_1ABF23C04();
  *(inited + 304) = v20;
  *(inited + 312) = 15;
  v21 = *MEMORY[0x1E695C9C0];
  *(inited + 320) = sub_1ABF23C04();
  *(inited + 328) = v22;
  *(inited + 336) = 16;
  v23 = *MEMORY[0x1E695C658];
  *(inited + 344) = sub_1ABF23C04();
  *(inited + 352) = v24;
  *(inited + 360) = 17;
  v25 = *MEMORY[0x1E695C950];
  *(inited + 368) = sub_1ABF23C04();
  *(inited + 376) = v26;
  *(inited + 384) = 18;
  v27 = *MEMORY[0x1E695CAA0];
  *(inited + 392) = sub_1ABF23C04();
  *(inited + 400) = v28;
  *(inited + 408) = 19;
  v29 = *MEMORY[0x1E695C848];
  *(inited + 416) = sub_1ABF23C04();
  *(inited + 424) = v30;
  *(inited + 432) = 20;
  v31 = *MEMORY[0x1E695C760];
  *(inited + 440) = sub_1ABF23C04();
  *(inited + 448) = v32;
  *(inited + 456) = 21;
  v33 = *MEMORY[0x1E695C5D0];
  *(inited + 464) = sub_1ABF23C04();
  *(inited + 472) = v34;
  *(inited + 480) = 23;
  *(inited + 488) = 0xD000000000000010;
  *(inited + 496) = 0x80000001ABF82450;
  *(inited + 504) = 24;
  *(inited + 512) = 0xD000000000000011;
  *(inited + 520) = 0x80000001ABF82470;
  *(inited + 528) = 25;
  strcpy((inited + 536), "_$!<Alumni>!$_");
  *(inited + 551) = -18;
  *(inited + 552) = 26;
  *(inited + 560) = 7628144;
  *(inited + 568) = 0xE300000000000000;
  *(inited + 576) = 27;
  *(inited + 584) = 6778724;
  *(inited + 592) = 0xE300000000000000;
  *(inited + 600) = 28;
  *(inited + 608) = 7627107;
  *(inited + 616) = 0xE300000000000000;
  *(inited + 624) = 29;
  result = sub_1ABF239C4();
  off_1EB4D57D8 = result;
  return result;
}