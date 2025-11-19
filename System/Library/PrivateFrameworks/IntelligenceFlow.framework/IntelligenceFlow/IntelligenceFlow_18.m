uint64_t sub_1DD853180()
{
  v34 = v0[18];
  v35 = v0[17];
  v2 = v0[15];
  v1 = v0[16];
  v27 = v0[14];
  v3 = v0[11];
  v30 = v0[10];
  v31 = v0[20];
  v4 = v0[7];
  v36 = v0[8];
  v37 = v0[21];
  v32 = v0[6];
  v33 = v0[5];
  v5 = v0[4];
  v28 = v5;
  v29 = v0[12];
  v6 = *(v36 + 16);
  v6(v2, v0[2], v4);
  v7 = sub_1DD6DDEFC();
  sub_1DD6E2040(v7, v8, v9);
  v10 = type metadata accessor for ResponseManifest(0);
  sub_1DD6E5E68(v3, 1, 1, v10);
  v11 = type metadata accessor for MessagePayload.ClientActionResult(0);
  v12 = *(v11 + 24);
  sub_1DD6E5E68(v2 + v12, 1, 1, v10);
  ActionOutcome.asStatementOutcome.getter((v2 + *(v11 + 20)));
  sub_1DD6E2098(v1, type metadata accessor for ActionOutcome);
  sub_1DD8559EC(v3, v2 + v12);
  swift_storeEnumTagMultiPayload();
  v6(v30, v28, v4);
  sub_1DD6E2040(v2, v27, type metadata accessor for MessagePayload);
  v6(v31, v30, v4);
  sub_1DD6E2040(v27, v31 + *(v34 + 24), type metadata accessor for MessagePayload);
  if (v32)
  {
    v13 = v33;
  }

  else
  {
    v13 = 0;
  }

  if (v32)
  {
    v14 = v32;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  sub_1DD6E2098(v27, type metadata accessor for MessagePayload);
  (*(v36 + 8))(v30, v4);
  sub_1DD6E2098(v35, type metadata accessor for ActionOutcome);
  v15 = (v31 + *(v34 + 20));
  *v15 = v13;
  v15[1] = v14;
  sub_1DD6DE0DC();
  sub_1DD6E5A0C(v31, v37, v16);
  sub_1DD6E2098(v2, type metadata accessor for MessagePayload);
  v17 = v0[27];
  v18 = v0[21];
  v19 = v0[3];
  sub_1DD6FE380();
  v20 = v0[24];
  if (v17)
  {
    v21 = v0[21];
    sub_1DD6DF4D8();
    sub_1DD6E2098(v22, v23);
    sub_1DD6E0640();
    sub_1DD8564F8();
    v38 = v0[9];
  }

  else
  {
    sub_1DD6FBE98();
    v39 = v0[9];

    sub_1DD6DF4D8();
    sub_1DD6E2098(v4, v25);
    sub_1DD6E0640();
  }

  sub_1DD6DDF40();

  return v24();
}

void sub_1DD853530()
{
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[13];
  v26 = v0[12];
  v27 = v0[18];
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
  v28 = v8;
  v29 = v0[21];
  v9 = *(v5 + 16);
  v9(v4, v0[4], v6);
  sub_1DD710A9C(&qword_1ECD10C28, &qword_1DD889130);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD8782E0;
  *(v10 + 32) = v1;
  *(v10 + 40) = 0;
  *v3 = v1;
  *(v3 + 8) = 0;
  *(v3 + 16) = v10;
  swift_storeEnumTagMultiPayload();
  v9(v2, v4, v6);
  v11 = *(v27 + 24);
  sub_1DD6DE3A0();
  sub_1DD6E2040(v3, v2 + v12, v13);
  if (v7)
  {
    v14 = v28;
  }

  else
  {
    v14 = 0;
  }

  if (v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  v16 = v1;
  sub_1DD6E2238();
  sub_1DD6E2098(v3, v17);
  (*(v5 + 8))(v4, v6);
  v18 = (v2 + *(v27 + 20));
  *v18 = v14;
  v18[1] = v15;
  sub_1DD6DE0DC();
  sub_1DD6E5A0C(v2, v29, v19);
  v20 = v0[21];
  v21 = v0[3];
  sub_1DD6FE380();
  v22 = v0[24];
  sub_1DD6FBE98();
  v30 = v0[9];

  sub_1DD6DF4D8();
  sub_1DD6E2098(v7, v23);
  sub_1DD6E0640();

  sub_1DD6DDF40();
  sub_1DD6E188C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DD85381C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1DD6FB688(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    v11 = *(*v4 + 24);
    sub_1DD710A9C(&qword_1ECD16460, &qword_1DD8AF8B8);
    sub_1DD875770();
    v12 = *(*(v19 + 48) + 16 * v9 + 8);

    v13 = *(v19 + 56);
    v14 = sub_1DD710A9C(&qword_1ECD0E350, &qword_1DD8AF8B0);
    (*(*(v14 - 8) + 32))(a3, v13 + *(*(v14 - 8) + 72) * v9, v14);
    sub_1DD875790();
    *v4 = v19;
    v15 = a3;
    v16 = 0;
    v17 = v14;
  }

  else
  {
    v17 = sub_1DD710A9C(&qword_1ECD0E350, &qword_1DD8AF8B0);
    v15 = a3;
    v16 = 1;
  }

  return sub_1DD6E5E68(v15, v16, 1, v17);
}

uint64_t sub_1DD85397C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1DD6FB688(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    v11 = *(*v4 + 24);
    sub_1DD710A9C(&qword_1ECD16468, &qword_1DD8AF8C0);
    sub_1DD875770();
    v12 = *(*(v19 + 48) + 16 * v9 + 8);

    v13 = *(v19 + 56);
    v14 = type metadata accessor for ClientAction(0);
    sub_1DD6E5A0C(v13 + *(*(v14 - 8) + 72) * v9, a3, type metadata accessor for ClientAction);
    sub_1DD875790();
    *v4 = v19;
    v15 = a3;
    v16 = 0;
    v17 = v14;
  }

  else
  {
    v17 = type metadata accessor for ClientAction(0);
    v15 = a3;
    v16 = 1;
  }

  return sub_1DD6E5E68(v15, v16, 1, v17);
}

void sub_1DD853AC4()
{
  sub_1DD6DEB38();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v52 = sub_1DD874FA0();
  v6 = sub_1DD6DDEAC(v52);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE4A8();
  v51 = v12 - v11;
  v13 = *v0;
  if (*(*v0 + 24) > v5)
  {
    v14 = *(*v0 + 24);
  }

  sub_1DD710A9C(&qword_1ECD16488, &unk_1DD8AF8F0);
  v49 = v3;
  v15 = sub_1DD8757D0();
  v16 = v15;
  if (!*(v13 + 16))
  {
LABEL_34:

LABEL_35:
    *v1 = v16;
    sub_1DD6DFED0();
    return;
  }

  v17 = 0;
  v18 = (v13 + 64);
  v19 = 1 << *(v13 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v13 + 64);
  v22 = (v19 + 63) >> 6;
  v46 = (v8 + 16);
  v47 = v13;
  v48 = v8;
  v50 = (v8 + 32);
  v23 = v15 + 64;
  if (!v21)
  {
LABEL_9:
    v25 = v17;
    while (1)
    {
      v17 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v17 >= v22)
      {
        break;
      }

      v26 = v18[v17];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v21 = (v26 - 1) & v26;
        goto LABEL_14;
      }
    }

    if ((v49 & 1) == 0)
    {

      v1 = v0;
      goto LABEL_35;
    }

    v45 = 1 << *(v13 + 32);
    v1 = v0;
    if (v45 >= 64)
    {
      sub_1DD722480(0, (v45 + 63) >> 6, v18);
    }

    else
    {
      *v18 = -1 << v45;
    }

    *(v13 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v24 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
LABEL_14:
    v27 = v24 | (v17 << 6);
    v28 = *(v13 + 56);
    v29 = (*(v13 + 48) + 16 * v27);
    v31 = *v29;
    v30 = v29[1];
    v32 = *(v48 + 72);
    v33 = v28 + v32 * v27;
    if (v49)
    {
      (*v50)(v51, v33, v52);
    }

    else
    {
      (*v46)(v51, v33, v52);
    }

    v34 = *(v16 + 40);
    sub_1DD875B20();
    _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
    v35 = sub_1DD875B60();
    v36 = -1 << *(v16 + 32);
    v37 = v35 & ~v36;
    v38 = v37 >> 6;
    if (((-1 << v37) & ~*(v23 + 8 * (v37 >> 6))) == 0)
    {
      break;
    }

    v39 = __clz(__rbit64((-1 << v37) & ~*(v23 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v23 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
    v44 = (*(v16 + 48) + 16 * v39);
    *v44 = v31;
    v44[1] = v30;
    (*v50)(*(v16 + 56) + v32 * v39, v51, v52);
    ++*(v16 + 16);
    v13 = v47;
    if (!v21)
    {
      goto LABEL_9;
    }
  }

  v40 = 0;
  v41 = (63 - v36) >> 6;
  while (++v38 != v41 || (v40 & 1) == 0)
  {
    v42 = v38 == v41;
    if (v38 == v41)
    {
      v38 = 0;
    }

    v40 |= v42;
    v43 = *(v23 + 8 * v38);
    if (v43 != -1)
    {
      v39 = __clz(__rbit64(~v43)) + (v38 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_1DD853E20(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1DD710A9C(&qword_1ECD16480, &unk_1DD8AF8E0);
  v38 = a2;
  result = sub_1DD8757D0();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

  v37 = v3;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_1DD722480(0, (v36 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    if (v38)
    {
      v23 = *(v5 + 56) + 104 * v19;
      v39 = *(v23 + 8);
      v40 = *(v23 + 24);
      v41 = *v23;
      v42 = *(v23 + 40);
      v43 = *(v23 + 16);
      v44 = *(v23 + 56);
      v45 = *(v23 + 32);
      v24 = *(v23 + 64);
      v46 = v24;
      v47 = *(v23 + 48);
      v48 = *(v23 + 72);
      v50 = *(v23 + 80);
      v49 = *(v23 + 88);
    }

    else
    {
      memcpy(__dst, (*(v5 + 56) + 104 * v19), 0x68uLL);
      v49 = *&__dst[11];
      v50 = __dst[10];
      v47 = __dst[6];
      v48 = __dst[9];
      v45 = __dst[4];
      v46 = __dst[8];
      v43 = __dst[2];
      v44 = __dst[7];
      v41 = __dst[0];
      v42 = __dst[5];
      v39 = __dst[1];
      v40 = __dst[3];

      sub_1DD854B24(__dst, v51);
    }

    v25 = *(v8 + 40);
    sub_1DD875B20();
    _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
    result = sub_1DD875B60();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    v35 = *(v8 + 56) + 104 * v29;
    *v35 = v41;
    *(v35 + 8) = v39;
    *(v35 + 16) = v43;
    *(v35 + 24) = v40;
    *(v35 + 32) = v45;
    *(v35 + 40) = v42;
    *(v35 + 48) = v47;
    *(v35 + 56) = v44;
    *(v35 + 64) = v46;
    *(v35 + 72) = v48;
    *(v35 + 80) = v50;
    *(v35 + 88) = v49;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1DD8541BC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ClientAction(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_1DD710A9C(&qword_1ECD16470, &qword_1DD8AF8C8);
  v44 = a2;
  result = sub_1DD8757D0();
  v12 = result;
  if (!*(v9 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v12;
    return result;
  }

  v41 = v3;
  v42 = v9;
  v13 = 0;
  v14 = (v9 + 64);
  v15 = 1 << *(v9 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v9 + 64);
  v18 = (v15 + 63) >> 6;
  v19 = result + 64;
  if (!v17)
  {
LABEL_9:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v13 >= v18)
      {
        break;
      }

      v22 = v14[v13];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_35;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      sub_1DD722480(0, (v40 + 63) >> 6, v14);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_14:
    v23 = v20 | (v13 << 6);
    v24 = *(v9 + 56);
    v25 = (*(v9 + 48) + 16 * v23);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(v43 + 72);
    v29 = v24 + v28 * v23;
    if (v44)
    {
      sub_1DD6E5A0C(v29, v45, type metadata accessor for ClientAction);
    }

    else
    {
      sub_1DD6E2040(v29, v45, type metadata accessor for ClientAction);
    }

    v30 = *(v12 + 40);
    sub_1DD875B20();
    _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
    result = sub_1DD875B60();
    v31 = -1 << *(v12 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
    {
      break;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v19 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    v39 = (*(v12 + 48) + 16 * v34);
    *v39 = v26;
    v39[1] = v27;
    result = sub_1DD6E5A0C(v45, *(v12 + 56) + v28 * v34, type metadata accessor for ClientAction);
    ++*(v12 + 16);
    v9 = v42;
    if (!v17)
    {
      goto LABEL_9;
    }
  }

  v35 = 0;
  v36 = (63 - v31) >> 6;
  while (++v33 != v36 || (v35 & 1) == 0)
  {
    v37 = v33 == v36;
    if (v33 == v36)
    {
      v33 = 0;
    }

    v35 |= v37;
    v38 = *(v19 + 8 * v33);
    if (v38 != -1)
    {
      v34 = __clz(__rbit64(~v38)) + (v33 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1DD854530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1DD6FB688(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  sub_1DD710A9C(&qword_1ECD16460, &qword_1DD8AF8B8);
  if ((sub_1DD875770() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_1DD6FB688(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1DD875A80();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = sub_1DD710A9C(&qword_1ECD0E350, &qword_1DD8AF8B0);
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v11;

    return v20(v22, a1, v21);
  }

  else
  {
    sub_1DD854948(v11, a2, a3, a1, v16);
  }
}

uint64_t sub_1DD8546B0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1DD6FB688(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  sub_1DD710A9C(&qword_1ECD16478, &qword_1DD8AF8D8);
  if ((sub_1DD875770() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_1DD6FB688(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1DD875A80();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7] + 104 * v11;

    return sub_1DD85641C(a1, v17);
  }

  else
  {
    sub_1DD854A04(v11, a2, a3, a1, v16);
  }
}

uint64_t sub_1DD8547F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1DD6FB688(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  sub_1DD710A9C(&qword_1ECD16468, &qword_1DD8AF8C0);
  if ((sub_1DD875770() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_1DD6FB688(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1DD875A80();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for ClientAction(0) - 8) + 72) * v11;

    return sub_1DD85636C(a1, v18);
  }

  else
  {
    sub_1DD854A78(v11, a2, a3, a1, v16);
  }
}

uint64_t sub_1DD854948(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1DD710A9C(&qword_1ECD0E350, &qword_1DD8AF8B0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_1DD854A04(unint64_t a1, uint64_t a2, uint64_t a3, void *__src, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = memcpy((a5[7] + 104 * a1), __src, 0x68uLL);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1DD854A78(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ClientAction(0);
  result = sub_1DD6E5A0C(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for ClientAction);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_1DD854BB8()
{
  result = qword_1ECD163A8;
  if (!qword_1ECD163A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD163A8);
  }

  return result;
}

unint64_t sub_1DD854C0C(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1DD718F34(result);
  }

  return result;
}

unint64_t sub_1DD854C20(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1DD718F6C(result);
  }

  return result;
}

unint64_t sub_1DD854C34()
{
  result = qword_1ECD163D0;
  if (!qword_1ECD163D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD163D0);
  }

  return result;
}

void sub_1DD854C88(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v25 = *(a1 + 16);
  for (i = 32; ; i += 120)
  {
    if (v25 == v5)
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
      sub_1DD875A80();
      __break(1u);
      goto LABEL_23;
    }

    memcpy(__dst, (a1 + i), 0x78uLL);
    v7 = *&__dst[7];
    v30 = __dst[5];
    v31 = __dst[6];
    v28 = __dst[3];
    v29 = __dst[4];
    v26 = __dst[1];
    v27 = __dst[2];
    v8 = __dst[0];
    sub_1DD856454(__dst, &v33, &qword_1ECD0FA68, &qword_1DD881468);
    if (!*(&v8 + 1))
    {
      goto LABEL_17;
    }

    v33 = v8;
    __dst[0] = v26;
    __dst[1] = v27;
    __dst[2] = v28;
    __dst[3] = v29;
    __dst[4] = v30;
    __dst[5] = v31;
    *&__dst[6] = v7;
    v9 = *a3;
    v11 = sub_1DD6FB688(v8, *(&v8 + 1));
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v15 = v10;
    if (v9[3] < v14)
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
      sub_1DD710A9C(&qword_1ECD16478, &qword_1DD8AF8D8);
      sub_1DD875780();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v19[6] + 16 * v11) = v8;
    memcpy((v19[7] + 104 * v11), __dst, 0x68uLL);
    v20 = v19[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_21;
    }

    v19[2] = v22;
    ++v5;
    a2 = 1;
  }

  sub_1DD853E20(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_1DD6FB688(v8, *(&v8 + 1));
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_22;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v23 = swift_allocError();
  swift_willThrow();
  v35 = v23;
  v24 = v23;
  sub_1DD710A9C(&qword_1ECD0FAB0, &qword_1DD8AF8D0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1DD8564AC(__dst);

    return;
  }

LABEL_23:
  sub_1DD8756B0();
  MEMORY[0x1E12B4C10](0xD00000000000001BLL, 0x80000001DD8B7B10);
  sub_1DD875760();
  MEMORY[0x1E12B4C10](39, 0xE100000000000000);
  sub_1DD8757A0();
  __break(1u);
}

void sub_1DD854FD0(uint64_t a1, char a2, uint64_t *a3)
{
  v48 = a3;
  v6 = type metadata accessor for ClientAction(0);
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DD710A9C(&qword_1ECD0FA50, &qword_1DD881450);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v47 = (&v41 - v14);
  v45 = *(a1 + 16);
  if (!v45)
  {
LABEL_13:

    return;
  }

  v41 = v3;
  v42 = a1;
  v15 = 0;
  v16 = *(v12 + 48);
  v43 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v44 = v16;
  while (1)
  {
    if (v15 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1DD875A80();
      __break(1u);
      goto LABEL_22;
    }

    v17 = v13;
    v18 = v47;
    sub_1DD856454(v43 + *(v13 + 72) * v15, v47, &qword_1ECD0FA50, &qword_1DD881450);
    v20 = v18[1];
    v51 = *v18;
    v19 = v51;
    v52 = v20;
    v21 = v9;
    sub_1DD6E5A0C(v18 + v44, v9, type metadata accessor for ClientAction);
    v22 = *v48;
    v24 = sub_1DD6FB688(v19, v20);
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
      sub_1DD710A9C(&qword_1ECD16468, &qword_1DD8AF8C0);
      sub_1DD875780();
      if (v28)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v33 = *v48;
    *(*v48 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    v34 = (v33[6] + 16 * v24);
    *v34 = v19;
    v34[1] = v20;
    v35 = v33[7] + *(v46 + 72) * v24;
    v9 = v21;
    sub_1DD6E5A0C(v21, v35, type metadata accessor for ClientAction);
    v36 = v33[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_20;
    }

    ++v15;
    v33[2] = v38;
    a2 = 1;
    a1 = v42;
    v13 = v17;
    if (v45 == v15)
    {
      goto LABEL_13;
    }
  }

  v29 = v48;
  sub_1DD8541BC(v27, a2 & 1);
  v30 = *v29;
  v31 = sub_1DD6FB688(v19, v20);
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
  v39 = swift_allocError();
  swift_willThrow();
  v53 = v39;
  v40 = v39;
  sub_1DD710A9C(&qword_1ECD0FAB0, &qword_1DD8AF8D0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1DD6E2098(v21, type metadata accessor for ClientAction);

    return;
  }

LABEL_22:
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_1DD8756B0();
  MEMORY[0x1E12B4C10](0xD00000000000001BLL, 0x80000001DD8B7B10);
  sub_1DD875760();
  MEMORY[0x1E12B4C10](39, 0xE100000000000000);
  sub_1DD8757A0();
  __break(1u);
}

uint64_t sub_1DD855450(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E12B5570](v3);
  if (v3)
  {
    v5 = 0;
    v14 = a2 + 32;
    do
    {
      v6 = (v14 + 24 * v5);
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      MEMORY[0x1E12B5570](*(*v6 + 16));
      v10 = *(v7 + 16);
      if (v10)
      {

        v11 = (v7 + 40);
        do
        {
          v12 = *(v11 - 1);
          v13 = *v11;

          _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();

          v11 += 2;
          --v10;
        }

        while (v10);
        if (!v9)
        {
LABEL_9:
          sub_1DD875B40();
          goto LABEL_10;
        }
      }

      else
      {

        if (!v9)
        {
          goto LABEL_9;
        }
      }

      sub_1DD875B40();
      _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
LABEL_10:

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_1DD85557C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E12B5570](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1DD8555F4()
{
  result = qword_1EE015AF0;
  if (!qword_1EE015AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015AF0);
  }

  return result;
}

uint64_t sub_1DD855648(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ClientAction.Definition.ParameterDefinition(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a2 + 16);
  result = MEMORY[0x1E12B5570](v9, v6);
  if (v9)
  {
    v11 = *(v3 + 24);
    v12 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);
    do
    {
      sub_1DD6E2040(v12, v8, type metadata accessor for ClientAction.Definition.ParameterDefinition);
      v14 = *v8;
      v15 = v8[1];
      _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
      v16 = v8[2];
      v17 = v8[3];
      _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
      sub_1DD874FC0();
      sub_1DD6E1588(&unk_1ECD163B8);
      sub_1DD8750C0();
      result = sub_1DD6E2098(v8, type metadata accessor for ClientAction.Definition.ParameterDefinition);
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  return result;
}

unint64_t sub_1DD8557EC()
{
  result = qword_1EE015AE8;
  if (!qword_1EE015AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015AE8);
  }

  return result;
}

uint64_t sub_1DD855860(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD0FA50, &qword_1DD881450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD8558D0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DD6FA5C4;

  return sub_1DD852944(a1, a2, v7);
}

unint64_t sub_1DD855998()
{
  result = qword_1ECD16408;
  if (!qword_1ECD16408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16408);
  }

  return result;
}

uint64_t sub_1DD8559EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD11798, &qword_1DD889718);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD855AA8()
{
  result = qword_1ECD16418;
  if (!qword_1ECD16418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16418);
  }

  return result;
}

unint64_t sub_1DD855B44(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 61;
  }

  else
  {
    return (*a1 >> 3) + 4;
  }
}

uint64_t sub_1DD855B60(void *a1)
{
  v1 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7B)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1DD855BD8()
{
  result = type metadata accessor for ClientAction.Definition(319);
  if (v1 <= 0x3F)
  {
    result = sub_1DD732A14();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1DD855C84()
{
  sub_1DD855D40();
  if (v0 <= 0x3F)
  {
    sub_1DD874FC0();
    if (v1 <= 0x3F)
    {
      sub_1DD855D98();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DD855D40()
{
  if (!qword_1EE015DF8)
  {
    type metadata accessor for ClientAction.Definition.ParameterDefinition(255);
    v0 = sub_1DD875350();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE015DF8);
    }
  }
}

void sub_1DD855D98()
{
  if (!qword_1EE015E00)
  {
    v0 = sub_1DD875350();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE015E00);
    }
  }
}

uint64_t sub_1DD855E10()
{
  result = sub_1DD874FC0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD855E8C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD855ECC(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ClientAction.Definition.ExampleInvocationDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD856058()
{
  result = qword_1ECD16438;
  if (!qword_1ECD16438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16438);
  }

  return result;
}

unint64_t sub_1DD8560B0()
{
  result = qword_1ECD16440;
  if (!qword_1ECD16440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16440);
  }

  return result;
}

unint64_t sub_1DD856108()
{
  result = qword_1ECD16448;
  if (!qword_1ECD16448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16448);
  }

  return result;
}

unint64_t sub_1DD856160()
{
  result = qword_1EE018BA8;
  if (!qword_1EE018BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018BA8);
  }

  return result;
}

unint64_t sub_1DD8561B8()
{
  result = qword_1EE018BB0;
  if (!qword_1EE018BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018BB0);
  }

  return result;
}

unint64_t sub_1DD856210()
{
  result = qword_1ECD16450;
  if (!qword_1ECD16450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16450);
  }

  return result;
}

unint64_t sub_1DD856268()
{
  result = qword_1ECD16458;
  if (!qword_1ECD16458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16458);
  }

  return result;
}

unint64_t sub_1DD8562C0()
{
  result = qword_1EE018C58;
  if (!qword_1EE018C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018C58);
  }

  return result;
}

unint64_t sub_1DD856318()
{
  result = qword_1EE018C60;
  if (!qword_1EE018C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018C60);
  }

  return result;
}

uint64_t sub_1DD85636C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientAction(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD8563D0(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1DD875600();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1DD856410(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1DD856454(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1DD710A9C(a3, a4);
  sub_1DD6DF448(v5);
  v7 = *(v6 + 16);
  v8 = sub_1DD6DDEFC();
  v9(v8);
  return a2;
}

uint64_t sub_1DD8564F8()
{
  result = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];
  v12 = v0[10];
  v11 = v0[11];
  return result;
}

uint64_t IndexedElements.Iterator.inner.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  sub_1DD6E0954();
  v6 = *(sub_1DD6ED6C0() + 8);
  v7 = *(v4 + 8);
  sub_1DD6E53B0();
  v8 = sub_1DD8756F0();
  sub_1DD6DF448(v8);
  return (*(v9 + 40))(v2, a1);
}

uint64_t sub_1DD856618@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  v9 = *(v6 + 8);
  v10 = sub_1DD6E53B0();
  v11 = a2(v10);
  sub_1DD6DF448(v11);
  return (*(v12 + 16))(a3, v3);
}

uint64_t sub_1DD856740(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 84);
  v9 = *(v6 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v13 = AssociatedTypeWitness;
  v14 = *(*(AssociatedTypeWitness - 8) + 64) + v12;
  if (a2 <= v11)
  {
LABEL_25:
    if (v8 >= v10)
    {
      v22 = a1;
    }

    else
    {
      v22 = (a1 + v14) & ~v12;
      v8 = *(v9 + 84);
      v13 = v6;
    }

    return sub_1DD6E5ED0(v22, v8, v13);
  }

  v15 = (v14 & ~v12) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v18 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_24;
  }

LABEL_14:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = (v14 & ~v12) + *(*(v6 - 8) + 64);
    }

    else
    {
      v20 = 4;
    }

    switch(v20)
    {
      case 2:
        v21 = *a1;
        break;
      case 3:
        v21 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v21 = *a1;
        break;
      default:
        v21 = *a1;
        break;
    }
  }

  else
  {
    v21 = 0;
  }

  return v11 + (v21 | v19) + 1;
}

void sub_1DD856968(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 84);
  v11 = *(v8 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v10)
  {
    v13 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v11 + 80);
  v15 = *(*(AssociatedTypeWitness - 8) + 64) + v14;
  v16 = (v15 & ~v14) + *(*(v8 - 8) + 64);
  v17 = 8 * v16;
  if (a3 <= v13)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v13 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v10 >= v12)
          {
            v24 = a1;
            v25 = a2;
          }

          else
          {
            v24 = &a1[v15] & ~v14;
            v25 = a2;
            v10 = v12;
            AssociatedTypeWitness = v8;
          }

          sub_1DD6E5E68(v24, v25, v10, AssociatedTypeWitness);
        }

        break;
    }
  }

  else
  {
    v19 = ~v13 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DD856C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *))
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = sub_1DD6E0954();
  v8 = *(sub_1DD6ED6C0() + 8);
  v9 = *(v5 + 8);
  v12[0] = v7;
  v12[1] = v6;
  v12[2] = v8;
  v12[3] = v9;
  result = a4(319, v12);
  if (v11 <= 0x3F)
  {
    v13 = 0;
    v12[0] = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD856CF4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v5 + 8);
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  if (v14 <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  if (v15 <= 0xFE)
  {
    v15 = 254;
  }

  v16 = *(v13 + 80);
  v17 = *(*(v12 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v18 = v12;
  v19 = *(v9 + 64) + v16;
  if (a2 > v15)
  {
    v20 = v17 + (v19 & ~v16) + 1;
    v21 = 8 * v20;
    if (v20 > 3)
    {
      goto LABEL_9;
    }

    v23 = ((a2 - v15 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v23))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v23 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v23 >= 2)
    {
LABEL_9:
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_26;
      }

LABEL_16:
      v24 = (v22 - 1) << v21;
      if (v20 > 3)
      {
        v24 = 0;
      }

      if (v20)
      {
        if (v20 <= 3)
        {
          v25 = v20;
        }

        else
        {
          v25 = 4;
        }

        switch(v25)
        {
          case 2:
            v26 = *a1;
            break;
          case 3:
            v26 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v26 = *a1;
            break;
          default:
            v26 = *a1;
            break;
        }
      }

      else
      {
        v26 = 0;
      }

      v30 = v15 + (v26 | v24);
      return (v30 + 1);
    }
  }

LABEL_26:
  if (v10 != v15)
  {
    v27 = (a1 + v19) & ~v16;
    if (v14 == v15)
    {
      goto LABEL_29;
    }

    v29 = *(v27 + v17);
    if (v29 < 2)
    {
      return 0;
    }

    v30 = (v29 + 2147483646) & 0x7FFFFFFF;
    return (v30 + 1);
  }

  v27 = a1;
  v14 = v10;
  v18 = AssociatedTypeWitness;
LABEL_29:

  return sub_1DD6E5ED0(v27, v14, v18);
}

void sub_1DD856FDC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  v12 = *(v7 + 8);
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  if (v15 <= v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  if (v16 <= 0xFE)
  {
    v16 = 254;
  }

  v17 = *(v14 + 80);
  v18 = *(v10 + 64) + v17;
  v19 = *(*(v13 - 8) + 64);
  v20 = v19 + (v18 & ~v17) + 1;
  v21 = 8 * v20;
  if (a3 <= v16)
  {
    v22 = 0;
  }

  else if (v20 <= 3)
  {
    v26 = ((a3 - v16 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v26))
    {
      v22 = 4;
    }

    else
    {
      if (v26 < 0x100)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      if (v26 >= 2)
      {
        v22 = v27;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 1;
  }

  if (v16 >= a2)
  {
    v25 = ~v17;
    switch(v22)
    {
      case 1:
        a1[v20] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        return;
      case 2:
        *&a1[v20] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        return;
      case 3:
LABEL_47:
        __break(1u);
        return;
      case 4:
        *&a1[v20] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (!a2)
        {
          return;
        }

LABEL_29:
        if (v11 == v16)
        {
          v29 = a1;
          v30 = a2;
          v15 = v11;
          v13 = AssociatedTypeWitness;
        }

        else
        {
          v29 = &a1[v18] & v25;
          if (v15 != v16)
          {
            *(v29 + v19) = a2 + 1;
            return;
          }

          v30 = a2;
        }

        sub_1DD6E5E68(v29, v30, v15, v13);
        break;
    }
  }

  else
  {
    v23 = ~v16 + a2;
    if (v20 < 4)
    {
      v24 = (v23 >> v21) + 1;
      if (v19 + (v18 & ~v17) != -1)
      {
        v28 = v23 & ~(-1 << v21);
        bzero(a1, v20);
        if (v20 == 3)
        {
          *a1 = v28;
          a1[2] = BYTE2(v28);
        }

        else if (v20 == 2)
        {
          *a1 = v28;
        }

        else
        {
          *a1 = v23;
        }
      }
    }

    else
    {
      bzero(a1, v20);
      *a1 = v23;
      v24 = 1;
    }

    switch(v22)
    {
      case 1:
        a1[v20] = v24;
        break;
      case 2:
        *&a1[v20] = v24;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *&a1[v20] = v24;
        break;
      default:
        return;
    }
  }
}

uint64_t IntelligenceFlowError.localizedDescription.getter()
{
  v1 = *v0;
  swift_getErrorValue();
  v2 = v1;
  v3 = sub_1DD875AB0();
  sub_1DD71900C(v1);
  return v3;
}

uint64_t static IntelligenceFlowError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if ((*(a1 + 8) & 1) == 0)
  {
    v8 = v2;
    v5 = sub_1DD874670();
    sub_1DD71900C(v2);
    if ((v4 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = v3;
    goto LABEL_6;
  }

  v5 = v2;
  if (v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = v3;
  v7 = sub_1DD874670();
  sub_1DD71900C(v3);
LABEL_6:
  sub_1DD804C4C(0, &qword_1ECD0E2A8, 0x1E69E58C0);
  v9 = sub_1DD8755A0();

  return v9 & 1;
}

uint64_t IntelligenceFlowError.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

void *sub_1DD8574E0(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_1DD6DF224(a1, a1[3]);
  sub_1DD875B80();
  if (!v1)
  {
    sub_1DD6DF224(v9, v9[3]);
    sub_1DD717D38();
    sub_1DD875A40();
    sub_1DD804C4C(0, &qword_1ECD164A0, 0x1E696ACD0);
    sub_1DD804C4C(0, &qword_1ECD164A8, 0x1E696ABC0);
    v5 = sub_1DD875510();
    v4 = v5;
    if (v5)
    {
      sub_1DD6E6658(v7, v8);
      sub_1DD6E1EC8(v9);
      sub_1DD6E1EC8(a1);
      return v4;
    }

    sub_1DD857CC8();
    swift_allocError();
    swift_willThrow();
    sub_1DD6E6658(v7, v8);
    sub_1DD6E1EC8(v9);
  }

  sub_1DD6E1EC8(a1);
  return v4;
}

uint64_t sub_1DD857658(void *a1, uint64_t a2)
{
  v12[5] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v12];
  v4 = v12[0];
  if (v3)
  {
    v5 = sub_1DD874770();
    v7 = v6;

    v8 = a1[4];
    sub_1DD6DF224(a1, a1[3]);
    sub_1DD875BA0();
    sub_1DD857B30(v12, v12[3]);
    sub_1DD712070();
    sub_1DD875A50();
    sub_1DD6E6658(v5, v7);
    result = sub_1DD6E1EC8(v12);
  }

  else
  {
    v10 = v4;
    sub_1DD874680();

    result = swift_willThrow();
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1DD8577B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DD8574E0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id IntelligenceFlowError.error.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1DD719000(*v0);
  return v1;
}

id IntelligenceFlowError.nsError.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    return v1;
  }

  else
  {
    v5 = *v0;
    v3 = v1;
    v4 = sub_1DD874670();
    sub_1DD71900C(v5);
    return v4;
  }
}

uint64_t IntelligenceFlowError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD875B80();
  if (!v2)
  {
    sub_1DD6DF224(v10, v10[3]);
    sub_1DD8579A0();
    sub_1DD875A40();
    v6 = v9;
    v7 = sub_1DD875570();

    if (v7)
    {

      v6 = v7;
    }

    sub_1DD6E1EC8(v10);
    *a2 = v6;
    *(a2 + 8) = v7 == 0;
  }

  return sub_1DD6E1EC8(a1);
}

unint64_t sub_1DD8579A0()
{
  result = qword_1ECD16490;
  if (!qword_1ECD16490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16490);
  }

  return result;
}

uint64_t IntelligenceFlowError.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD719000(v2);
  sub_1DD875BA0();
  if (v3)
  {
    sub_1DD857B30(v7, v8);
    sub_1DD857B80();
    sub_1DD875A50();
  }

  else
  {
    swift_getErrorValue();
    v6 = sub_1DD875AC0();
    sub_1DD857B30(v7, v8);
    sub_1DD857B80();
    sub_1DD875A50();
  }

  sub_1DD71900C(v2);
  return sub_1DD6E1EC8(v7);
}

uint64_t sub_1DD857B30(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1DD857B80()
{
  result = qword_1ECD16498;
  if (!qword_1ECD16498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16498);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolboxClient.ToolboxClientError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolboxClient.ToolboxClientError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1DD857CC8()
{
  result = qword_1ECD164B0;
  if (!qword_1ECD164B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD164B0);
  }

  return result;
}

uint64_t SaltedLoggingIDConvertible.toLoggingId(scope:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DD874820();
  v8 = sub_1DD6DDEAC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DF39C();
  v24 = *a1;
  (*(a3 + 8))(v25, &v24, a2, a3);
  v13 = v25[0];
  v14 = v25[1];
  v16 = v25[2];
  v15 = v25[3];
  v18 = v25[4];
  v17 = v25[5];
  v19 = qword_1EE015500;

  if (v19 != -1)
  {
    sub_1DD6E1530();
  }

  v20 = sub_1DD6E1224(v7, qword_1EE015508);
  (*(v10 + 16))(v3, v20, v7);
  *&v24 = 0;
  *(&v24 + 1) = 0xE000000000000000;
  if (v14)
  {
    v21 = v13;
  }

  else
  {
    v21 = 0;
  }

  if (v14)
  {
    v22 = v14;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  MEMORY[0x1E12B4C10](v21, v22);

  sub_1DD6ED6DC();
  MEMORY[0x1E12B4C10](v18, v17);
  sub_1DD6ED6DC();
  MEMORY[0x1E12B4C10](v16, v15);
  UUID.init(namespace:name:)(v3);
}

uint64_t SaltedLoggingIDData.toLoggingID()()
{
  v2 = sub_1DD874820();
  v3 = sub_1DD6DDEAC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DF39C();
  v8 = *v0;
  v9 = v0[1];
  v10 = v0[2];
  v11 = v0[3];
  v12 = v0[4];
  v13 = v0[5];
  v14 = qword_1EE015500;

  if (v14 != -1)
  {
    sub_1DD6E1530();
  }

  v15 = sub_1DD6E1224(v2, qword_1EE015508);
  (*(v5 + 16))(v1, v15, v2);
  if (v9)
  {
    v16 = v8;
  }

  else
  {
    v16 = 0;
  }

  if (!v9)
  {
    v9 = 0xE000000000000000;
  }

  MEMORY[0x1E12B4C10](v16, v9);

  sub_1DD6ED6DC();
  MEMORY[0x1E12B4C10](v12, v13);
  sub_1DD6ED6DC();
  MEMORY[0x1E12B4C10](v10, v11);
  return UUID.init(namespace:name:)(v1);
}

uint64_t sub_1DD85803C()
{
  v0 = sub_1DD874820();
  sub_1DD732C90(v0, qword_1EE015508);
  sub_1DD6E1224(v0, qword_1EE015508);
  return _s16IntelligenceFlow15SessionClientIDVACycfC_0();
}

void __swiftcall SaltedLoggingIDData.init(_:scope:category:)(IntelligenceFlow::SaltedLoggingIDData *__return_ptr retstr, Swift::String _, IntelligenceFlow::SaltedLoggingIDScope scope, Swift::String category)
{
  retstr->logData = _;
  retstr->scope = *scope.scopeData.value._countAndFlagsBits;
  retstr->category._countAndFlagsBits = scope.scopeData.value._object;
  retstr->category._object = category._countAndFlagsBits;
}

uint64_t static SaltedLoggingIDScope.custom(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

IntelligenceFlow::SaltedLoggingIDCategory_optional __swiftcall SaltedLoggingIDCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD8757F0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SaltedLoggingIDCategory.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6574656D61726170;
  }

  else
  {
    result = 0x74616469646E6163;
  }

  *v0;
  return result;
}

unint64_t sub_1DD858164()
{
  result = qword_1ECD164B8;
  if (!qword_1ECD164B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD164B8);
  }

  return result;
}

uint64_t sub_1DD8581DC@<X0>(uint64_t *a1@<X8>)
{
  result = SaltedLoggingIDCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SaltedLoggingIDCategory(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s16IntelligenceFlow15StructBuildablePAAE6create_23furtherInitializingWithxxn_yxzqd__YKXEtqd__YKs5ErrorRd__lFZ@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00]();
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16(v13, v15);
  v17 = *(a2 - 8);
  if (!v5)
  {
    return (*(v17 + 32))(a5, a1, a2);
  }

  (*(v17 + 8))(a1, a2);
  return (*(v11 + 32))(a4, v15, a3);
}

uint64_t _s16IntelligenceFlow20EmptyStructBuildablePAAEyxyxzqd__YKXEqd__YKcs5ErrorRd__lufC@<X0>(uint64_t (*a1)(uint64_t, char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v18 = a4;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00]();
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v15, v14);
  result = a1(a5, v13);
  if (v5)
  {
    (*(*(a2 - 8) + 8))(a5, a2);
    return (*(v10 + 32))(v18, v13, a3);
  }

  return result;
}

uint64_t sub_1DD858614()
{
  sub_1DD6DEDA4();
  sub_1DD874820();
  sub_1DD722428();
  sub_1DD8750C0();
  return sub_1DD875B60();
}

uint64_t sub_1DD8586D0(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = sub_1DD875B20();
  a2(v3);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

uint64_t sub_1DD858760()
{
  sub_1DD6DEDA4();
  sub_1DD875B50();
  return sub_1DD875B60();
}

uint64_t sub_1DD8587A0()
{
  sub_1DD6ED408();
  sub_1DD6DEDA4();
  sub_1DD8754B0();
  return sub_1DD875B60();
}

uint64_t sub_1DD858818(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_1DD6DEDA4();
  a2(v5, a1);
  return sub_1DD875B60();
}

uint64_t ToolDefinition.effect.getter@<X0>(_BYTE *a1@<X8>)
{
  sub_1DD874F00();
  v2 = sub_1DD875210();

  *a1 = v2 & 1;
  return result;
}

IntelligenceFlow::ToolEffect_optional __swiftcall ToolEffect.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD8757F0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ToolEffect.rawValue.getter()
{
  if (*v0)
  {
    result = 0x7972657571;
  }

  else
  {
    result = 0x6E6F69746361;
  }

  *v0;
  return result;
}

uint64_t sub_1DD858988@<X0>(uint64_t *a1@<X8>)
{
  result = ToolEffect.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ToolDefinition.id.setter()
{
  sub_1DD6DE304();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolDefinition.bundleId.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolDefinition.displayName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_1DD6DDEFC();
}

uint64_t ToolDefinition.displayName.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ToolDefinition.explanation.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return sub_1DD6DDEFC();
}

uint64_t ToolDefinition.explanation.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

unint64_t ToolDefinition.returnType.getter()
{
  v1 = *(v0 + 64);
  sub_1DD854C0C(v1);
  return v1;
}

unint64_t ToolDefinition.returnType.setter(uint64_t a1)
{
  result = sub_1DD854C20(*(v1 + 64));
  *(v1 + 64) = a1;
  return result;
}

uint64_t ToolDefinition.parameters.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t ToolDefinition.init(id:bundleId:displayName:explanation:returnType:parameters:effect:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12)
{
  v12 = *a12;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = v12;
  return result;
}

uint64_t static ToolDefinition.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = *(v3 + 16);
  v6 = *(v3 + 24);
  v5 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 56);
  v27 = *(v3 + 64);
  v23 = *(v3 + 80);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  v13 = *(v2 + 56);
  v28 = *(v2 + 48);
  v29 = *(v3 + 48);
  v25 = *(v3 + 72);
  v26 = *(v2 + 64);
  v24 = *(v2 + 72);
  v14 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  v22 = *(v2 + 80);
  if (!v14 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  v15 = v4 == v9 && v6 == v10;
  if (!v15 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  v16 = v5 == v11 && v7 == v12;
  if (!v16 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  if (v8)
  {
    if (!v13)
    {
      return 0;
    }

    v17 = v29 == v28 && v8 == v13;
    if (!v17 && (sub_1DD875A30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v18 = v26 & 0xF000000000000007;
  if ((~v27 & 0xF000000000000007) != 0)
  {
    if (v18 == 0xF000000000000007)
    {
      return 0;
    }

    sub_1DD718F34(v26);
    v19 = static TypeDefinition.== infix(_:_:)(v27, v26);
    sub_1DD854C20(v26);
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18 != 0xF000000000000007)
  {
    return 0;
  }

  sub_1DD71557C(v25, v24);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  return sub_1DD735ADC(v23, v22);
}

uint64_t sub_1DD858F28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74616E616C707865 && a2 == 0xEB000000006E6F69;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x79546E7275746572 && a2 == 0xEA00000000006570;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x746365666665 && a2 == 0xE600000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD875A30();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD859160(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6449656C646E7562;
      break;
    case 2:
      result = 0x4E79616C70736964;
      break;
    case 3:
      result = 0x74616E616C707865;
      break;
    case 4:
      result = 0x79546E7275746572;
      break;
    case 5:
      result = 0x6574656D61726170;
      break;
    case 6:
      result = 0x746365666665;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD859240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD858F28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD859268(uint64_t a1)
{
  v2 = sub_1DD859E88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD8592A4(uint64_t a1)
{
  v2 = sub_1DD859E88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ToolDefinition.encode(to:)()
{
  sub_1DD6DED2C();
  v24 = v1;
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD164C0, &qword_1DD8AFE30);
  sub_1DD6DDEAC(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v19 - v10;
  v12 = *v0;
  v13 = v0[1];
  sub_1DD6DE3B8();
  v14 = v0[6];
  v22 = v0[7];
  v23 = v14;
  v15 = v0[8];
  v20 = v0[9];
  v21 = v15;
  v19[3] = *(v0 + 80);
  v16 = v3[4];
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD859E88();
  sub_1DD875BB0();
  v17 = v24;
  sub_1DD875970();
  if (!v17)
  {
    sub_1DD6E38D4(1);
    sub_1DD6FAB58();
    sub_1DD875970();
    sub_1DD6E38D4(2);
    sub_1DD6FAB58();
    sub_1DD875970();
    sub_1DD6E38D4(3);
    sub_1DD6FAB58();
    sub_1DD875920();
    v25 = 4;
    sub_1DD859EDC();
    sub_1DD6F17C0();
    sub_1DD6FAB58();
    sub_1DD875960();
    v25 = 5;
    sub_1DD710A9C(&qword_1ECD164D8, &qword_1DD8AFE38);
    sub_1DD6DF4F0();
    sub_1DD85A02C(v18);
    sub_1DD6F17C0();
    sub_1DD6FAB58();
    sub_1DD8759D0();
    v25 = 6;
    sub_1DD859F84();
    sub_1DD6F17C0();
    sub_1DD6FAB58();
    sub_1DD8759D0();
  }

  (*(v6 + 8))(v11, v4);
  sub_1DD6E0C78();
}

void ToolDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1DD6DED2C();
  v15 = v14;
  v17 = v16;
  v18 = sub_1DD710A9C(&qword_1ECD164F8, &qword_1DD8AFE40);
  sub_1DD6DDEAC(v18);
  v20 = *(v19 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v21);
  v22 = v15[4];
  sub_1DD6DEA7C(v15, v15[3]);
  sub_1DD859E88();
  sub_1DD875B90();
  if (v13)
  {
    sub_1DD6E1EC8(v15);

    sub_1DD854C20(0xF000000000000007);
  }

  else
  {
    sub_1DD6E6AF8();
    v23 = sub_1DD875870();
    v25 = v24;
    sub_1DD6E6AF8();
    v40 = sub_1DD875870();
    v42 = v26;
    sub_1DD6E6AF8();
    v39 = sub_1DD875870();
    v38 = v23;
    v41 = v27;
    LOBYTE(v44[0]) = 3;
    sub_1DD6E6AF8();
    v28 = sub_1DD875820();
    v30 = v29;
    v37 = v28;
    sub_1DD859FD8();
    sub_1DD6F453C();
    sub_1DD875860();
    v36 = v17;
    v31 = v44[0];
    sub_1DD710A9C(&qword_1ECD164D8, &qword_1DD8AFE38);
    LOBYTE(v43[0]) = 5;
    sub_1DD6E53C0();
    sub_1DD85A02C(v32);
    sub_1DD8758D0();
    v35 = v44[0];
    sub_1DD85A0E4();
    sub_1DD6F453C();
    sub_1DD8758D0();
    v33 = sub_1DD6E0BA4();
    v34(v33);
    v43[0] = v38;
    v43[1] = v25;
    v43[2] = v40;
    v43[3] = v42;
    v43[4] = v39;
    v43[5] = v41;
    v43[6] = v37;
    v43[7] = v30;
    v43[8] = v31;
    v43[9] = v35;
    LOBYTE(v43[10]) = a13;
    memcpy(v36, v43, 0x51uLL);
    sub_1DD854B5C(v43, v44);
    sub_1DD6E1EC8(v15);
    v44[0] = v38;
    v44[1] = v25;
    v44[2] = v40;
    v44[3] = v42;
    v44[4] = v39;
    v44[5] = v41;
    v44[6] = v37;
    v44[7] = v30;
    v44[8] = v31;
    v44[9] = v35;
    v45 = a13;
    sub_1DD85A138(v44);
  }

  sub_1DD6E0C78();
}

unint64_t ParameterDefinition.type.getter()
{
  v1 = *(v0 + 32);
  sub_1DD718F34(v1);
  return v1;
}

unint64_t ParameterDefinition.type.setter(uint64_t a1)
{
  result = sub_1DD718F6C(*(v1 + 32));
  *(v1 + 32) = a1;
  return result;
}

uint64_t ParameterDefinition.explanation.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return sub_1DD6DDEFC();
}

uint64_t ParameterDefinition.explanation.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t ParameterDefinition.init(id:displayName:type:explanation:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v12 = result;
  if (!a4)
  {

    a3 = v12;
    a4 = a2;
  }

  *a8 = v12;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t static ParameterDefinition.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = v3[2];
  v6 = v3[3];
  v5 = v3[4];
  v7 = v3[5];
  v8 = v3[6];
  v9 = v2[2];
  v10 = v2[3];
  v12 = v2[4];
  v11 = v2[5];
  v13 = v2[6];
  v14 = v1 == *v2 && v3[1] == v2[1];
  if (v14 || (sub_1DD875A30() & 1) != 0)
  {
    v15 = v4 == v9 && v6 == v10;
    if (v15 || (sub_1DD6ED130(), (sub_1DD875A30() & 1) != 0))
    {
      if (static TypeDefinition.== infix(_:_:)(v5, v12))
      {
        if (v8)
        {
          if (v13)
          {
            if (v7 == v11 && v8 == v13)
            {
              return 1;
            }

            sub_1DD6DDEFC();
            if (sub_1DD875A30())
            {
              return 1;
            }
          }
        }

        else if (!v13)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t static TypeDefinition.== infix(_:_:)(unint64_t a1, unint64_t a2)
{
  switch(a1 >> 61)
  {
    case 1uLL:
      if (a2 >> 61 != 1)
      {
        goto LABEL_23;
      }

      v24 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v26 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v27 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v28 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v15 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v29 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v30 = v15;
      v16 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v31 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v32 = v16;
      v14 = static ObjectDefinition.== infix(_:_:)(&v29);
      return v14 & 1;
    case 2uLL:
      if (a2 >> 61 != 2)
      {
        goto LABEL_23;
      }

      v5 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v3 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      goto LABEL_8;
    case 3uLL:
      if (a2 >> 61 != 3)
      {
        goto LABEL_23;
      }

      v9 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v10 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v11 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v13 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      *&v29 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *(&v29 + 1) = v10;
      v30 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      *&v31 = v9;
      v25 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v14 = static EnumDefinition.== infix(_:_:)(&v29);
      return v14 & 1;
    case 4uLL:
      switch(__ROR8__(a1 ^ 0x8000000000000000, 3))
      {
        case 1:
          sub_1DD6E9B54();
          break;
        case 2:
          sub_1DD6E9B54();
          v4 = v18 + 8;
          break;
        case 3:
          sub_1DD6E9B54();
          v4 = v19 | 0x10;
          break;
        case 4:
          sub_1DD6E9B54();
          v4 = v17 + 24;
          break;
        case 5:
          sub_1DD6E9B54();
          v4 = v21 | 0x20;
          break;
        case 6:
          sub_1DD6E9B54();
          v4 = v22 + 40;
          break;
        case 7:
          sub_1DD6E9B54();
          v4 = v20 | 0x30;
          break;
        case 8:
          sub_1DD6E9B54();
          v4 = v23 + 56;
          break;
        default:
          v4 = 0x8000000000000000;
          break;
      }

      if (a2 != v4)
      {
        goto LABEL_23;
      }

      v14 = 1;
      return v14 & 1;
    default:
      if (a2 >> 61)
      {
LABEL_23:
        v14 = 0;
        return v14 & 1;
      }

      else
      {
        v2 = *(a1 + 16);
        v3 = *(a2 + 16);
LABEL_8:
        sub_1DD718F34(v3);
        v6 = sub_1DD6DDEFC();
        v7 = static TypeDefinition.== infix(_:_:)(v6);
        sub_1DD718F6C(v3);
        return v7 & 1;
      }
  }
}

unint64_t sub_1DD859E88()
{
  result = qword_1ECD164C8;
  if (!qword_1ECD164C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD164C8);
  }

  return result;
}

unint64_t sub_1DD859EDC()
{
  result = qword_1ECD164D0;
  if (!qword_1ECD164D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD164D0);
  }

  return result;
}

unint64_t sub_1DD859F30()
{
  result = qword_1ECD164E8;
  if (!qword_1ECD164E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD164E8);
  }

  return result;
}

unint64_t sub_1DD859F84()
{
  result = qword_1ECD164F0;
  if (!qword_1ECD164F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD164F0);
  }

  return result;
}

unint64_t sub_1DD859FD8()
{
  result = qword_1ECD16500;
  if (!qword_1ECD16500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16500);
  }

  return result;
}

uint64_t sub_1DD85A02C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DD6ED408();
    sub_1DD717E88(&qword_1ECD164D8, &qword_1DD8AFE38);
    v1();
    result = sub_1DD6E9658();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD85A090()
{
  result = qword_1ECD16510;
  if (!qword_1ECD16510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16510);
  }

  return result;
}

unint64_t sub_1DD85A0E4()
{
  result = qword_1ECD16518;
  if (!qword_1ECD16518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16518);
  }

  return result;
}

uint64_t sub_1DD85A168(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701869940 && a2 == 0xE400000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x74616E616C707865 && a2 == 0xEB000000006E6F69)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD875A30();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1DD85A2C0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x4E79616C70736964;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0x74616E616C707865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD85A348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD85A168(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD85A370(uint64_t a1)
{
  v2 = sub_1DD85B7B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD85A3AC(uint64_t a1)
{
  v2 = sub_1DD85B7B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParameterDefinition.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = sub_1DD710A9C(&qword_1ECD16520, &qword_1DD8AFE48);
  sub_1DD6DDEAC(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DEA6C();
  v6 = *v0;
  v7 = v0[1];
  sub_1DD6DE3B8();
  v10 = v0[6];
  sub_1DD6E71CC();
  sub_1DD85B7B0();
  sub_1DD6E6240();
  sub_1DD6DFF80();
  if (!v1)
  {
    sub_1DD6DEC54();
    sub_1DD6E0E40();
    sub_1DD875970();
    sub_1DD6E0FF8();
    sub_1DD859EDC();
    sub_1DD6DE334();
    sub_1DD8759D0();
    sub_1DD6E6174();
    sub_1DD6ED130();
    sub_1DD6E0E40();
    sub_1DD875920();
  }

  v8 = sub_1DD6EEDBC();
  v9(v8);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void ParameterDefinition.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD6E6390();
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD16530, &unk_1DD8AFE50);
  sub_1DD6DDEAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6F0A58();
  v11 = v0[4];
  sub_1DD6DEA7C(v0, v0[3]);
  sub_1DD85B7B0();
  sub_1DD6E2000();
  sub_1DD875B90();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD6FC4DC();
    v12 = sub_1DD875870();
    v22 = v13;
    sub_1DD6DEC54();
    sub_1DD6FC4DC();
    v14 = sub_1DD875870();
    v21 = v15;
    v20 = v14;
    sub_1DD6E0FF8();
    sub_1DD859FD8();
    sub_1DD8758D0();
    sub_1DD6E6174();
    sub_1DD6FC4DC();
    v16 = sub_1DD875820();
    v17 = v2;
    v19 = v18;
    (*(v7 + 8))(v17, v5);
    *v4 = v12;
    v4[1] = v22;
    v4[2] = v20;
    v4[3] = v21;
    v4[4] = v23;
    v4[5] = v16;
    v4[6] = v19;

    sub_1DD718F34(v23);

    sub_1DD6E1EC8(v0);

    sub_1DD718F6C(v23);
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

void TypeDefinition.nestedDefinitions.getter(unint64_t a1)
{
  switch(a1 >> 61)
  {
    case 1uLL:
      v4 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      sub_1DD710A9C(&qword_1ECD10310, &qword_1DD884D30);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1DD8782E0;
      *(v5 + 32) = a1;
      v6 = *(v4 + 16);
      if (!v6)
      {

        return;
      }

      sub_1DD718F34(a1);

      v7 = (v4 + 80);
      break;
    case 2uLL:
      v3 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      goto LABEL_5;
    case 3uLL:
    case 4uLL:
      sub_1DD710A9C(&qword_1ECD10310, &qword_1DD884D30);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1DD8782E0;
      *(v2 + 32) = a1;
      sub_1DD718F34(a1);
      return;
    default:
      v3 = *(a1 + 16);
LABEL_5:
      sub_1DD718F34(v3);
      TypeDefinition.nestedDefinitions.getter(v3);
      sub_1DD718F6C(v3);
      return;
  }

  while (1)
  {
    v8 = *(v7 - 5);
    v10 = *(v7 - 3);
    v9 = *(v7 - 2);
    v11 = *v7;

    sub_1DD718F34(v9);

    v12 = TypeDefinition.nestedDefinitions.getter(v9);
    v13 = *(v12 + 16);
    v14 = *(v5 + 16);
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      break;
    }

    v16 = v12;
    v17 = *(v5 + 24) >> 1;
    if (v17 < v15)
    {
      if (v14 > v15)
      {
        v22 = *(v5 + 16);
      }

      sub_1DD784C48();
      v5 = v23;
      v14 = *(v23 + 16);
      v17 = *(v23 + 24) >> 1;
      if (*(v16 + 16))
      {
LABEL_11:
        if ((v17 - v14) < v13)
        {
          goto LABEL_25;
        }

        swift_arrayInitWithCopy();

        if (v13)
        {
          v19 = *(v5 + 16);
          v20 = __OFADD__(v19, v13);
          v21 = v19 + v13;
          if (v20)
          {
            goto LABEL_26;
          }

          *(v5 + 16) = v21;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v18 = *(v12 + 16);
      if (v13)
      {
        goto LABEL_11;
      }
    }

    if (v13)
    {
      goto LABEL_24;
    }

LABEL_19:
    v7 += 7;

    sub_1DD718F6C(v9);

    if (!--v6)
    {

      return;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

unint64_t TypeDefinition.encode(to:)(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 61)
  {
    case 1uLL:
      v12 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v20 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = v12;
      v13 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v22 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v23 = v13;
      sub_1DD710A9C(&qword_1ECD16550, &qword_1DD8AFE70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DD8782E0;
      *(inited + 32) = 0x7463656A626FLL;
      *(inited + 40) = 0xE600000000000000;
      v15 = v21;
      v17 = v22;
      v16 = v23;
      *(inited + 48) = v20;
      *(inited + 64) = v15;
      *(inited + 80) = v17;
      *(inited + 96) = v16;
      sub_1DD85D5E8(&v20, v19);
      sub_1DD875080();
      sub_1DD85D620();
      sub_1DD6E65D0();
      sub_1DD8750A0();

    case 2uLL:
      v2 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1DD710A9C(&qword_1ECD16548, &qword_1DD8AFE68);
      v3 = swift_initStackObject();
      *(v3 + 16) = xmmword_1DD8782E0;
      v4 = 0x6C616E6F6974706FLL;
      v5 = 0xE800000000000000;
      goto LABEL_5;
    case 3uLL:
      v7 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v9 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v8 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v10 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      sub_1DD710A9C(&qword_1ECD16538, &qword_1DD8AFE60);
      v11 = swift_initStackObject();
      *(v11 + 16) = xmmword_1DD8782E0;
      *(v11 + 32) = 1836412517;
      *(v11 + 40) = 0xE400000000000000;
      *(v11 + 48) = v7;
      *(v11 + 56) = v6;
      *(v11 + 64) = v9;
      *(v11 + 72) = v8;
      *(v11 + 80) = v10;

      sub_1DD6E65D0();
      sub_1DD875080();
      sub_1DD85D594();
      sub_1DD8750A0();

    case 4uLL:
      return sub_1DD8751E0();
    default:
      v2 = *(a2 + 16);
      sub_1DD710A9C(&qword_1ECD16548, &qword_1DD8AFE68);
      v3 = swift_initStackObject();
      *(v3 + 16) = xmmword_1DD8782E0;
      v4 = 0x7961727261;
      v5 = 0xE500000000000000;
LABEL_5:
      *(v3 + 32) = v4;
      *(v3 + 40) = v5;
      *(v3 + 48) = v2;
      sub_1DD718F34(v2);
      sub_1DD718F34(v2);
      sub_1DD875080();
      sub_1DD859EDC();
      sub_1DD8750A0();

      return sub_1DD718F6C(v2);
  }
}

void TypeDefinition.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = *(*(sub_1DD710A9C(&qword_1ECD16560, &qword_1DD8AFE78) - 8) + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v53 - v5;
  v7 = sub_1DD710A9C(&qword_1ECD16568, &qword_1DD8AFE80);
  sub_1DD6DDEAC(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  sub_1DD6E71CC();
  sub_1DD85D674();
  sub_1DD875B90();
  if (v0)
  {

    sub_1DD6E5E68(v6, 1, 1, v7);
    sub_1DD85D6C8(v6);
    sub_1DD6E0F0C(v2, &v55);
    v16 = sub_1DD8751A0();
    v17 = v15;
    if (v16 == 7958113 && v15 == 0xE300000000000000)
    {
      goto LABEL_7;
    }

    sub_1DD6E0668();
    if (sub_1DD875A30())
    {
      goto LABEL_7;
    }

    if (v16 == 1819242338 && v17 == 0xE400000000000000)
    {
      goto LABEL_7;
    }

    sub_1DD6E0668();
    if (sub_1DD875A30())
    {
      goto LABEL_7;
    }

    if (v16 == 7630441 && v17 == 0xE300000000000000)
    {
      goto LABEL_7;
    }

    sub_1DD6E0668();
    if (sub_1DD875A30())
    {
      goto LABEL_7;
    }

    if (v16 == 0x656C62756F64 && v17 == 0xE600000000000000)
    {
      goto LABEL_7;
    }

    sub_1DD6E0668();
    if (sub_1DD875A30())
    {
      goto LABEL_7;
    }

    v43 = v16 == 0x676E69727473 && v17 == 0xE600000000000000;
    if (v43 || (sub_1DD6E0668(), (sub_1DD875A30() & 1) != 0) || (v16 == 7107189 ? (v44 = v17 == 0xE300000000000000) : (v44 = 0), v44 || (sub_1DD6E0668(), (sub_1DD875A30() & 1) != 0) || (v16 == 1702125924 ? (v45 = v17 == 0xE400000000000000) : (v45 = 0), v45 || (sub_1DD6E0668(), (sub_1DD875A30() & 1) != 0) || (v16 == 0x706D6F4365746164 ? (v46 = v17 == 0xEE0073746E656E6FLL) : (v46 = 0), v46 || (sub_1DD6E0668(), (sub_1DD875A30() & 1) != 0)))))
    {
LABEL_7:
    }

    else if (v16 == 0x72616D6563616C70 && v17 == 0xE90000000000006BLL)
    {
    }

    else
    {
      sub_1DD6E0668();
      v48 = sub_1DD875A30();

      if ((v48 & 1) == 0)
      {
        v49 = sub_1DD875740();
        swift_allocError();
        v51 = v50;
        v52 = v2[4];
        sub_1DD6DEA7C(v2, v2[3]);
        sub_1DD6ED130();
        sub_1DD875B70();
        sub_1DD875730();
        (*(*(v49 - 8) + 104))(v51, *MEMORY[0x1E69E6B00], v49);
        swift_willThrow();
      }
    }
  }

  else
  {
    sub_1DD6E5E68(v6, 0, 1, v7);
    (*(v9 + 32))(v14, v6, v7);
    v19 = sub_1DD875900();
    if (*(v19 + 16))
    {
      v20 = *(v19 + 32);

      switch(v20)
      {
        case 2:
          sub_1DD85D784();
          sub_1DD6E6008();
          v28 = sub_1DD6F3260();
          v29(v28);
          v30 = swift_allocObject();
          v31 = v56;
          v30[1] = v55;
          v30[2] = v31;
          v32 = v58;
          v30[3] = v57;
          v30[4] = v32;
          break;
        case 3:
          sub_1DD85D730();
          sub_1DD6E6008();
          v36 = sub_1DD6F3260();
          v37(v36);
          v53 = v56;
          v54 = v55;
          v38 = v57;
          v39 = swift_allocObject();
          v40 = v53;
          *(v39 + 16) = v54;
          *(v39 + 32) = v40;
          *(v39 + 48) = v38;
          break;
        default:
          sub_1DD859FD8();
          sub_1DD6E6008();
          v21 = sub_1DD6F3260();
          v22(v21);
          v23 = v55;
          *(swift_allocObject() + 16) = v23;
          break;
      }
    }

    else
    {

      v24 = sub_1DD875740();
      swift_allocError();
      *&v54 = v25;
      v26 = v2[4];
      sub_1DD6DEA7C(v2, v2[3]);
      sub_1DD875B70();
      v27 = v54;
      sub_1DD875730();
      (*(*(v24 - 8) + 104))(v27, *MEMORY[0x1E69E6B00], v24);
      swift_willThrow();
      v34 = sub_1DD6F3260();
      v35(v34);
    }
  }

  sub_1DD6E1EC8(v2);
  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t static ObjectDefinition.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = v3[1];
  v5 = v3[2];
  v7 = v3[3];
  v6 = v3[4];
  v8 = v3[5];
  v9 = v3[6];
  v10 = v3[7];
  v12 = v2[2];
  v11 = v2[3];
  v14 = v2[4];
  v13 = v2[5];
  v15 = v1 == *v2 && v4 == v2[1];
  v16 = v2[6];
  v24 = v2[7];
  v25 = v10;
  if (!v15 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (!v11)
    {
      return 0;
    }

    v17 = v5 == v12 && v7 == v11;
    if (!v17 && (sub_1DD875A30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v18 = sub_1DD6ED130();
  if (sub_1DD71557C(v18))
  {
    if (v9)
    {
      if (!v16)
      {
        return 0;
      }

      if (v8 != v13 || v9 != v16)
      {
        sub_1DD6E65D0();
        if ((sub_1DD875A30() & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v16)
    {
      return 0;
    }

    if (v25)
    {
      if (v24)
      {

        v20 = sub_1DD6DDEFC();
        v22 = sub_1DD7157E8(v20, v21);

        if (v22)
        {
          return 1;
        }
      }
    }

    else if (!v24)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t static EnumDefinition.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = v3[2];
  v6 = v3[3];
  v5 = v3[4];
  v8 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v10 = v1 == *v2 && v3[1] == v2[1];
  if (!v10 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (v7)
    {
      if (v4 == v8 && v6 == v7)
      {
        goto LABEL_13;
      }

      sub_1DD6E0668();
      if (sub_1DD875A30())
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  if (v7)
  {
    return 0;
  }

LABEL_13:
  v12 = sub_1DD6DDEFC();

  return sub_1DD7152B8(v12, v13);
}

unint64_t sub_1DD85B7B0()
{
  result = qword_1ECD16528;
  if (!qword_1ECD16528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16528);
  }

  return result;
}

void sub_1DD85B804(void *a1@<X8>)
{
  TypeDefinition.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t ObjectDefinition.id.setter()
{
  sub_1DD6DE304();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ObjectDefinition.bundleId.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ObjectDefinition.properties.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t ObjectDefinition.explanation.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return sub_1DD6DDEFC();
}

uint64_t ObjectDefinition.explanation.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t ObjectDefinition.queries.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

void __swiftcall ObjectDefinition.init(id:bundleId:properties:explanation:queries:)(IntelligenceFlow::ObjectDefinition *__return_ptr retstr, Swift::String id, Swift::String_optional bundleId, Swift::OpaquePointer properties, Swift::String_optional explanation, Swift::OpaquePointer queries)
{
  retstr->id = id;
  retstr->bundleId = bundleId;
  retstr->properties = properties;
  retstr->explanation = explanation;
  retstr->queries.value = queries;
}

uint64_t sub_1DD85BA68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74616E616C707865 && a2 == 0xEB000000006E6F69;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x73656972657571 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DD875A30();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1DD85BC0C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6449656C646E7562;
      break;
    case 2:
      result = 0x69747265706F7270;
      break;
    case 3:
      result = 0x74616E616C707865;
      break;
    case 4:
      result = 0x73656972657571;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD85BCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD85BA68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD85BCD8(uint64_t a1)
{
  v2 = sub_1DD85D7D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD85BD14(uint64_t a1)
{
  v2 = sub_1DD85D7D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ObjectDefinition.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = sub_1DD710A9C(&qword_1ECD16588, &qword_1DD8AFE88);
  sub_1DD6DDEAC(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DEA6C();
  v10 = *v0;
  v9 = v0[1];
  sub_1DD6DE3B8();
  v12 = v0[7];
  v13 = v0[6];
  sub_1DD6E71CC();
  sub_1DD85D7D8();
  sub_1DD6E6240();
  sub_1DD875970();
  if (!v1)
  {
    sub_1DD6E38D4(1);
    sub_1DD6DE334();
    sub_1DD875920();
    sub_1DD710A9C(&qword_1ECD164D8, &qword_1DD8AFE38);
    sub_1DD6DF4F0();
    sub_1DD85A02C(v11);
    sub_1DD6DEE04();
    sub_1DD6DE334();
    sub_1DD8759D0();
    sub_1DD6E38D4(3);
    sub_1DD6DE334();
    sub_1DD875920();
    sub_1DD710A9C(&qword_1ECD16598, &qword_1DD8AFE90);
    sub_1DD85D82C(&qword_1ECD165A0);
    sub_1DD6DEE04();
    sub_1DD6DE334();
    sub_1DD875960();
  }

  (*(v5 + 8))(v2, v3);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void ObjectDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  sub_1DD6E6390();
  v13 = v12;
  v14 = sub_1DD710A9C(&qword_1ECD165B0, &qword_1DD8AFE98);
  sub_1DD6DDEAC(v14);
  v16 = *(v15 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6F0A58();
  v18 = v10[4];
  sub_1DD6DEA7C(v10, v10[3]);
  sub_1DD85D7D8();
  sub_1DD6E2000();
  sub_1DD875B90();
  if (v11)
  {
    sub_1DD6E1EC8(v10);
  }

  else
  {
    sub_1DD6DEB0C();
    v19 = sub_1DD875870();
    v21 = v20;
    LOBYTE(v35[0]) = 1;
    sub_1DD6DEB0C();
    *&v31 = sub_1DD875820();
    *(&v31 + 1) = v22;
    sub_1DD710A9C(&qword_1ECD164D8, &qword_1DD8AFE38);
    sub_1DD6E53C0();
    sub_1DD85A02C(v23);
    sub_1DD6DEE04();
    sub_1DD6DEB0C();
    sub_1DD8758D0();
    v30 = v35[0];
    LOBYTE(v35[0]) = 3;
    sub_1DD6DEB0C();
    v28 = sub_1DD875820();
    v29 = v24;
    sub_1DD710A9C(&qword_1ECD16598, &qword_1DD8AFE90);
    v41 = 4;
    sub_1DD85D82C(&qword_1ECD165B8);
    sub_1DD6DEE04();
    sub_1DD6DEB0C();
    sub_1DD875860();
    v25 = sub_1DD6DE694();
    v26(v25);
    *&v32[0] = v19;
    *(&v32[0] + 1) = v21;
    v32[1] = v31;
    *&v33 = v30;
    *(&v33 + 1) = v28;
    *&v34 = v29;
    *(&v34 + 1) = a10;
    *v13 = v32[0];
    v13[1] = v31;
    v27 = v34;
    v13[2] = v33;
    v13[3] = v27;
    sub_1DD85D5E8(v32, v35);
    sub_1DD6E1EC8(v10);
    v35[0] = v19;
    v35[1] = v21;
    v36 = v31;
    v37 = v30;
    v38 = v28;
    v39 = v29;
    v40 = a10;
    sub_1DD85D938(v35);
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t EnumDefinition.id.setter()
{
  sub_1DD6DE304();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t EnumDefinition.bundleId.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t EnumDefinition.cases.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall EnumDefinition.init(id:bundleId:cases:)(IntelligenceFlow::EnumDefinition *__return_ptr retstr, Swift::String id, Swift::String_optional bundleId, Swift::OpaquePointer cases)
{
  retstr->id = id;
  retstr->bundleId = bundleId;
  retstr->cases = cases;
}

uint64_t sub_1DD85C478(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7365736163 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD85C57C(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x6449656C646E7562;
  }

  return 0x7365736163;
}

uint64_t sub_1DD85C5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD85C478(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD85C5F4(uint64_t a1)
{
  v2 = sub_1DD85D968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD85C630(uint64_t a1)
{
  v2 = sub_1DD85D968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EnumDefinition.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD165C8, &unk_1DD8AFEA0);
  sub_1DD6DDEAC(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEA6C();
  v8 = *v0;
  v9 = v0[1];
  v14 = v0[3];
  v15 = v0[2];
  v13 = v0[4];
  v10 = v3[4];
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD85D968();
  sub_1DD875BB0();
  sub_1DD875970();
  if (!v1)
  {
    sub_1DD6DEC54();
    sub_1DD6E0E40();
    sub_1DD875920();
    sub_1DD6E0FF8();
    sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    sub_1DD703A98(&qword_1EE015DC0);
    sub_1DD6DE334();
    sub_1DD8759D0();
  }

  v11 = sub_1DD6EEDBC();
  v12(v11);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void EnumDefinition.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD6E6390();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD165D8, &qword_1DD8AFEB0);
  sub_1DD6DDEAC(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = v0[4];
  sub_1DD6DEA7C(v0, v0[3]);
  sub_1DD85D968();
  sub_1DD875B90();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    v9 = sub_1DD875870();
    v11 = v10;
    sub_1DD6DEC54();
    v15 = sub_1DD875820();
    v16 = v12;
    sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    sub_1DD6E0FF8();
    sub_1DD703A98(&qword_1EE015DB8);
    sub_1DD8758D0();
    v13 = sub_1DD6E0E30();
    v14(v13);
    *v3 = v9;
    v3[1] = v11;
    v3[2] = v15;
    v3[3] = v16;
    v3[4] = v17;

    sub_1DD6E1EC8(v0);
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t QueryDefinition.id.setter()
{
  sub_1DD6DE304();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t QueryDefinition.entityId.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t QueryDefinition.bundleId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_1DD6DDEFC();
}

uint64_t QueryDefinition.bundleId.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t QueryDefinition.parameters.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

void __swiftcall QueryDefinition.init(id:entityId:bundleId:parameters:)(IntelligenceFlow::QueryDefinition *__return_ptr retstr, Swift::String id, Swift::String entityId, Swift::String bundleId, Swift::OpaquePointer parameters)
{
  retstr->id = id;
  retstr->entityId = entityId;
  retstr->bundleId = bundleId;
  retstr->parameters = parameters;
}

void static QueryDefinition.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = v3[2];
  v6 = v3[3];
  v5 = v3[4];
  v8 = v3[5];
  v7 = v3[6];
  v9 = v2[2];
  v10 = v2[3];
  v11 = v2[4];
  v12 = v2[5];
  v13 = v2[6];
  v14 = v1 == *v2 && v3[1] == v2[1];
  if (v14 || (sub_1DD875A30() & 1) != 0)
  {
    v15 = v4 == v9 && v6 == v10;
    if (v15 || (sub_1DD6ED130(), (sub_1DD875A30() & 1) != 0))
    {
      v16 = v5 == v11 && v8 == v12;
      if (v16 || (sub_1DD6E65D0(), (sub_1DD875A30() & 1) != 0))
      {
        v17 = sub_1DD6DDEFC();

        sub_1DD71557C(v17, v18);
      }
    }
  }
}

uint64_t sub_1DD85CD58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449797469746E65 && a2 == 0xE800000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD875A30();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1DD85CEB8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      v3 = 0x797469746E65;
      goto LABEL_4;
    case 2:
      v3 = 0x656C646E7562;
LABEL_4:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 3:
      result = 0x6574656D61726170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD85CF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD85CD58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD85CF60(uint64_t a1)
{
  v2 = sub_1DD85D9BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD85CF9C(uint64_t a1)
{
  v2 = sub_1DD85D9BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void QueryDefinition.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = sub_1DD710A9C(&qword_1ECD165E0, &qword_1DD8AFEB8);
  sub_1DD6DDEAC(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DEA6C();
  v6 = *v0;
  v7 = v0[1];
  sub_1DD6DE3B8();
  v11 = v0[6];
  sub_1DD6E71CC();
  sub_1DD85D9BC();
  sub_1DD6E6240();
  sub_1DD6DFF80();
  if (!v1)
  {
    sub_1DD6DEC54();
    sub_1DD6E0E40();
    sub_1DD875970();
    sub_1DD6E0FF8();
    sub_1DD6E0E40();
    sub_1DD875970();
    sub_1DD6E6174();
    sub_1DD710A9C(&qword_1ECD164D8, &qword_1DD8AFE38);
    sub_1DD6DF4F0();
    sub_1DD85A02C(v8);
    sub_1DD6DE334();
    sub_1DD8759D0();
  }

  v9 = sub_1DD6EEDBC();
  v10(v9);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void QueryDefinition.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD6E6390();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD165F0, &qword_1DD8AFEC0);
  sub_1DD6DDEAC(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6F0A58();
  v8 = v0[4];
  sub_1DD6DEA7C(v0, v0[3]);
  sub_1DD85D9BC();
  sub_1DD6E2000();
  sub_1DD875B90();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD6FC4DC();
    v9 = sub_1DD875870();
    v21 = v10;
    sub_1DD6DEC54();
    sub_1DD6FC4DC();
    v11 = sub_1DD875870();
    v20 = v12;
    v18 = v11;
    sub_1DD6E0FF8();
    v17 = sub_1DD875870();
    v19 = v13;
    sub_1DD710A9C(&qword_1ECD164D8, &qword_1DD8AFE38);
    sub_1DD6E6174();
    sub_1DD6E53C0();
    sub_1DD85A02C(v14);
    sub_1DD6DEB0C();
    sub_1DD8758D0();
    v15 = sub_1DD6ED6F4();
    v16(v15);
    *v3 = v9;
    v3[1] = v21;
    v3[2] = v18;
    v3[3] = v20;
    v3[4] = v17;
    v3[5] = v19;
    v3[6] = v22;

    sub_1DD6E1EC8(v0);
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t sub_1DD85D490@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD70FB60();
  *a2 = result;
  return result;
}

uint64_t sub_1DD85D4C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD70FBAC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD85D4F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD70FB60();
  *a1 = result;
  return result;
}

uint64_t sub_1DD85D51C(uint64_t a1)
{
  v2 = sub_1DD85D674();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD85D558(uint64_t a1)
{
  v2 = sub_1DD85D674();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD85D594()
{
  result = qword_1ECD16540;
  if (!qword_1ECD16540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16540);
  }

  return result;
}

unint64_t sub_1DD85D620()
{
  result = qword_1ECD16558;
  if (!qword_1ECD16558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16558);
  }

  return result;
}

unint64_t sub_1DD85D674()
{
  result = qword_1ECD16570;
  if (!qword_1ECD16570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16570);
  }

  return result;
}

uint64_t sub_1DD85D6C8(uint64_t a1)
{
  v2 = sub_1DD710A9C(&qword_1ECD16560, &qword_1DD8AFE78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DD85D730()
{
  result = qword_1ECD16578;
  if (!qword_1ECD16578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16578);
  }

  return result;
}

unint64_t sub_1DD85D784()
{
  result = qword_1ECD16580;
  if (!qword_1ECD16580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16580);
  }

  return result;
}

unint64_t sub_1DD85D7D8()
{
  result = qword_1ECD16590;
  if (!qword_1ECD16590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16590);
  }

  return result;
}

uint64_t sub_1DD85D82C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DD6ED408();
    sub_1DD717E88(&qword_1ECD16598, &qword_1DD8AFE90);
    v1();
    result = sub_1DD6E9658();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD85D890()
{
  result = qword_1ECD165A8;
  if (!qword_1ECD165A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD165A8);
  }

  return result;
}

unint64_t sub_1DD85D8E4()
{
  result = qword_1ECD165C0;
  if (!qword_1ECD165C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD165C0);
  }

  return result;
}

unint64_t sub_1DD85D968()
{
  result = qword_1ECD165D0;
  if (!qword_1ECD165D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD165D0);
  }

  return result;
}

unint64_t sub_1DD85D9BC()
{
  result = qword_1ECD165E8;
  if (!qword_1ECD165E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD165E8);
  }

  return result;
}

unint64_t sub_1DD85DA14()
{
  result = qword_1ECD165F8;
  if (!qword_1ECD165F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD165F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolEffect(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DD85DB48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD85DB88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD85DBEC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 8))
    {
      v2 = *a1 + 123;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7B)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1DD85DC40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
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

unint64_t *sub_1DD85DCA0(unint64_t *result, uint64_t a2)
{
  if (a2 < 4)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    v2 = (8 * (a2 - 4)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_1DD85DCE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD85DD20(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for EnumDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ObjectDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DD85DF58(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD85E114()
{
  result = qword_1ECD16600;
  if (!qword_1ECD16600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16600);
  }

  return result;
}

unint64_t sub_1DD85E16C()
{
  result = qword_1ECD16608;
  if (!qword_1ECD16608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16608);
  }

  return result;
}

unint64_t sub_1DD85E1C4()
{
  result = qword_1ECD16610;
  if (!qword_1ECD16610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16610);
  }

  return result;
}

unint64_t sub_1DD85E21C()
{
  result = qword_1ECD16618;
  if (!qword_1ECD16618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16618);
  }

  return result;
}

unint64_t sub_1DD85E274()
{
  result = qword_1ECD16620;
  if (!qword_1ECD16620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16620);
  }

  return result;
}

unint64_t sub_1DD85E2CC()
{
  result = qword_1ECD16628;
  if (!qword_1ECD16628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16628);
  }

  return result;
}

unint64_t sub_1DD85E324()
{
  result = qword_1ECD16630;
  if (!qword_1ECD16630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16630);
  }

  return result;
}

unint64_t sub_1DD85E37C()
{
  result = qword_1ECD16638;
  if (!qword_1ECD16638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16638);
  }

  return result;
}

unint64_t sub_1DD85E3D4()
{
  result = qword_1ECD16640;
  if (!qword_1ECD16640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16640);
  }

  return result;
}

unint64_t sub_1DD85E42C()
{
  result = qword_1ECD16648;
  if (!qword_1ECD16648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16648);
  }

  return result;
}

unint64_t sub_1DD85E484()
{
  result = qword_1ECD16650;
  if (!qword_1ECD16650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16650);
  }

  return result;
}

unint64_t sub_1DD85E4DC()
{
  result = qword_1ECD16658;
  if (!qword_1ECD16658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16658);
  }

  return result;
}

unint64_t sub_1DD85E534()
{
  result = qword_1ECD16660;
  if (!qword_1ECD16660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16660);
  }

  return result;
}

unint64_t sub_1DD85E58C()
{
  result = qword_1ECD16668;
  if (!qword_1ECD16668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16668);
  }

  return result;
}

unint64_t sub_1DD85E5E4()
{
  result = qword_1ECD16670;
  if (!qword_1ECD16670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16670);
  }

  return result;
}

unint64_t sub_1DD85E63C()
{
  result = qword_1ECD16678;
  if (!qword_1ECD16678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16678);
  }

  return result;
}

unint64_t sub_1DD85E694()
{
  result = qword_1ECD16680;
  if (!qword_1ECD16680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16680);
  }

  return result;
}

unint64_t sub_1DD85E6EC()
{
  result = qword_1ECD16688;
  if (!qword_1ECD16688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16688);
  }

  return result;
}

unint64_t sub_1DD85E740()
{
  result = qword_1ECD16690;
  if (!qword_1ECD16690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16690);
  }

  return result;
}

uint64_t UUID.init(namespace:name:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD874820();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  sub_1DD8747A0();
  UUID.init(namespace:name:)(v9);
  v10 = *(v5 + 8);
  v10(a2, v4);
  return (v10)(a1, v4);
}

id static InternalXPCService.interface.getter()
{
  if (qword_1ECD0DFB0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECD16698;

  return v1;
}

uint64_t static InternalXPCService.selectorClasses.getter()
{
  if (qword_1ECD0DFB8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DD85EA30()
{
  v0 = sub_1DD874ED0();
  sub_1DD732C90(v0, qword_1ECD166A8);
  sub_1DD6E1224(v0, qword_1ECD166A8);
  return sub_1DD874C00();
}

uint64_t static InternalXPCService.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECD0DFC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD874ED0();
  v3 = sub_1DD6E1224(v2, qword_1ECD166A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t InternalClient.__allocating_init()()
{
  v0 = swift_allocObject();
  InternalClient.init()(v0, v1);
  return v0;
}

uint64_t InternalClient.init()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  sub_1DD85ED58(&qword_1ECD166C0, a2, type metadata accessor for InternalClient);
  v3 = sub_1DD710A9C(&qword_1ECD166C8, &unk_1DD8B0DF0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  v6 = sub_1DD874D10();
  v7 = *(v2 + 16);
  *(v2 + 16) = v6;

  return v2;
}

uint64_t InternalClient.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t InternalClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1DD85ECB4(uint64_t a1, uint64_t a2)
{
  result = sub_1DD85ED58(&qword_1ECD166C0, a2, type metadata accessor for InternalClient);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DD85ED58(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1DD85EDA0(uint64_t a1)
{
  v2 = type metadata accessor for InternalClient();

  return MEMORY[0x1EEE2EE60](a1, v2);
}

_BYTE *storeEnumTagSinglePayload for InternalXPCService(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DD85EF28()
{
  v2 = *v1;
  sub_1DD6E07F0();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  sub_1DD6E07F0();
  *v7 = v6;
  v2[19] = v0;

  if (v0)
  {
    v8 = sub_1DD85F14C;
  }

  else
  {
    v9 = v2[16];
    v10 = v2[17];

    v8 = sub_1DD85F044;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1DD85F044()
{
  sub_1DD6E6030();
  sub_1DD874B90();
  sub_1DD6E4A38(&qword_1EE013AB0, 255, MEMORY[0x1E69A9128]);
  sub_1DD6E2270();
  v5 = v2[14];
  v4 = v2[15];
  sub_1DD6E6658(v2[12], v2[13]);
  sub_1DD6E6658(v5, v4);
  sub_1DD6E6658(v0, v3);
  if (v1)
  {
    sub_1DD6DF508();

    return v6();
  }

  else
  {
    v8 = sub_1DD6E0E78();

    return v9(v8);
  }
}

uint64_t sub_1DD85F14C()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  sub_1DD6E6658(v0[12], v0[13]);
  sub_1DD6E6658(v4, v3);

  v5 = v0[19];
  v6 = v0[1];

  return v6();
}

uint64_t sub_1DD85F1DC(uint64_t a1, void *a2)
{
  v3[8] = a1;
  v3[9] = v2;
  v4 = a2[1];
  v3[10] = *a2;
  v3[11] = v4;
  return sub_1DD6E13F8();
}

uint64_t sub_1DD85F1F8()
{
  v2 = sub_1DD6DE3CC();
  sub_1DD6E53D8();
  sub_1DD6E4A38(v3, 255, v4);
  *(v0 + 48) = sub_1DD6E0BB4();
  *(v0 + 56) = v5;
  if (v2)
  {
    sub_1DD6DF508();
    sub_1DD6DE6A4();

    __asm { BRAA            X1, X16 }
  }

  sub_1DD6E6B0C();
  v1[14] = sub_1DD8745F0();
  v1[15] = v6;
  v9 = *(v1[9] + 16);
  v1[16] = v9;
  if (v9)
  {
    v10 = sub_1DD6E2828();
    sub_1DD6F3270(v10);
    v11 = *(MEMORY[0x1E69C5B08] + 4);

    v12 = swift_task_alloc();
    v1[18] = v12;
    *v12 = v1;
    v12[1] = sub_1DD85F370;
    sub_1DD6FC4EC();
    sub_1DD6DE6A4();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EE30]();
}

uint64_t sub_1DD85F370()
{
  v2 = *v1;
  sub_1DD6E07F0();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  sub_1DD6E07F0();
  *v7 = v6;
  v2[19] = v0;

  if (v0)
  {
    v8 = sub_1DD85FDC8;
  }

  else
  {
    v9 = v2[16];
    v10 = v2[17];

    v8 = sub_1DD85F48C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1DD85F48C()
{
  sub_1DD6E6030();
  sub_1DD874BA0();
  sub_1DD6E0678();
  sub_1DD6E4A38(v4, 255, v5);
  sub_1DD6E2270();
  v7 = v2[14];
  v6 = v2[15];
  sub_1DD6E6658(v2[12], v2[13]);
  sub_1DD6E6658(v7, v6);
  sub_1DD6E6658(v0, v3);
  if (v1)
  {
    sub_1DD6DF508();

    return v8();
  }

  else
  {
    v10 = sub_1DD6E0E78();

    return v11(v10);
  }
}

uint64_t sub_1DD85F584(uint64_t a1, void *a2)
{
  v3[6] = a1;
  v3[7] = v2;
  v4 = a2[1];
  v3[8] = *a2;
  v3[9] = v4;
  return sub_1DD6E13F8();
}

uint64_t sub_1DD85F5A0()
{
  v1 = *(v0[7] + 24);
  v0[4] = v0[6];
  v2 = sub_1DD874BA0();
  sub_1DD6E0678();
  sub_1DD6E4A38(v3, 255, v4);
  v5 = sub_1DD6E0BB4();
  v0[10] = v5;
  v0[11] = v6;
  if (v2)
  {
    sub_1DD6DF508();
    sub_1DD6DE6A4();

    __asm { BRAA            X1, X16 }
  }

  v7 = v5;
  v8 = v6;
  v9 = v0[9];
  v0[2] = v0[8];
  v0[3] = v9;
  sub_1DD6EF294();
  v10 = sub_1DD8745F0();
  v0[12] = v10;
  v0[13] = v11;
  v14 = *(v0[7] + 16);
  v0[14] = v14;
  if (v14)
  {
    v15 = v10;
    v16 = v11;
    v17 = swift_task_alloc();
    v0[15] = v17;
    v17[2] = v7;
    v17[3] = v8;
    v17[4] = v15;
    v17[5] = v16;
    v18 = *(MEMORY[0x1E69C5B08] + 4);

    v19 = swift_task_alloc();
    v0[16] = v19;
    sub_1DD6E0EC8();
    *v19 = v0;
    v19[1] = sub_1DD85F768;
    sub_1DD6DE6A4();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EE30]();
}

uint64_t sub_1DD85F768()
{
  v2 = *v1;
  sub_1DD6E07F0();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  sub_1DD6E07F0();
  *v7 = v6;
  *(v2 + 136) = v0;

  if (v0)
  {
    v8 = sub_1DD85F90C;
  }

  else
  {
    v10 = *(v2 + 112);
    v9 = *(v2 + 120);

    v8 = sub_1DD85F898;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1DD85F898()
{
  v1 = v0[12];
  v2 = v0[13];
  sub_1DD6E6658(v0[10], v0[11]);
  sub_1DD6E6658(v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DD85F90C()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  sub_1DD6E6658(v0[10], v0[11]);
  sub_1DD6E6658(v4, v3);

  v5 = v0[17];
  v6 = v0[1];

  return v6();
}

uint64_t sub_1DD85F9C4()
{
  v0 = sub_1DD874ED0();
  sub_1DD732C90(v0, qword_1EE019090);
  sub_1DD6E1224(v0, qword_1EE019090);
  return sub_1DD874BD0();
}

uint64_t sub_1DD85FA10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  sub_1DD85FAC8(a4, a5, a6, a7, sub_1DD6E6440, v14, a1);
}

void sub_1DD85FAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_1DD874750();
  v11 = sub_1DD874750();
  v13[4] = a5;
  v13[5] = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DD6E1B38;
  v13[3] = &unk_1F58E5F58;
  v12 = _Block_copy(v13);

  [a7 cacheRemoteDeviceStateWithRemoteStateData:v10 crossAPIAssociationKeyData:v11 with:v12];
  _Block_release(v12);
}

uint64_t sub_1DD85FBBC(uint64_t a1, uint64_t a2)
{
  result = sub_1DD6E4A38(qword_1EE017168, a2, type metadata accessor for QueryDecorationClient);
  *(a1 + 8) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryDecorationXPCService(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DD85FD98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t EventsSubscription.Iterator.next()()
{
  sub_1DD6E1F54();
  v2 = v1;
  v3 = *(MEMORY[0x1E69E87B0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  sub_1DD710A9C(&qword_1ECD0E490, &qword_1DD878808);
  *v4 = v0;
  v4[1] = sub_1DD6FA5C4;

  return MEMORY[0x1EEE6DB98](v2);
}

uint64_t sub_1DD85FE94()
{
  sub_1DD6DDF4C();
  v2 = v1;
  v0[3] = v3;
  v0[4] = v4;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1DD85FF30;

  return SessionDebuggerEventsSubscription.Iterator.next()(v2);
}

uint64_t sub_1DD85FF30()
{
  sub_1DD6E1F54();
  sub_1DD6DF09C();
  v3 = v2;
  sub_1DD6DE408();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_1DD6E04EC();
  *v8 = v7;
  v3[6] = v0;

  if (v0)
  {
    if (v3[3])
    {
      v9 = v3[4];
      swift_getObjectType();
      v10 = sub_1DD875360();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1DD8656BC, v10, v12);
  }

  else
  {
    sub_1DD6DDF40();

    return v13();
  }
}

uint64_t sub_1DD860084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v5 = *(MEMORY[0x1E69E87B0] + 4);
  v6 = swift_task_alloc();
  v3[5] = v6;
  sub_1DD710A9C(&qword_1ECD0E490, &qword_1DD878808);
  *v6 = v3;
  v6[1] = sub_1DD860144;

  return MEMORY[0x1EEE6DB98](a1);
}

uint64_t sub_1DD860144()
{
  sub_1DD6E1F54();
  sub_1DD6DF09C();
  v3 = v2;
  sub_1DD6DE408();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_1DD6E04EC();
  *v8 = v7;
  v3[6] = v0;

  if (v0)
  {
    if (v3[3])
    {
      v9 = v3[4];
      swift_getObjectType();
      v10 = sub_1DD875360();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1DD860298, v10, v12);
  }

  else
  {
    sub_1DD6DDF40();

    return v13();
  }
}

uint64_t sub_1DD860298()
{
  sub_1DD6DDF4C();
  *(v0 + 16) = *(v0 + 48);
  sub_1DD710A9C(&qword_1ECD0FAB0, &qword_1DD8AF8D0);
  swift_willThrowTypedImpl();
  sub_1DD6DDF40();
  v2 = *(v0 + 48);

  return v1();
}

uint64_t sub_1DD860354()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DD71FCC8;

  return EventsSubscription.Iterator.next()();
}

uint64_t sub_1DD8603EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1DD8604B8;

  return sub_1DD860084(a1, a2, a3);
}

uint64_t sub_1DD8604B8()
{
  sub_1DD6E1F54();
  sub_1DD6DF09C();
  v3 = v2;
  sub_1DD6DE408();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  sub_1DD6E04EC();
  *v8 = v7;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t EventsSubscription.__allocating_init(continuation:stream:)()
{
  v0 = sub_1DD6EEDF4();
  v1 = sub_1DD6ED118();
  EventsSubscription.init(continuation:stream:)(v1, v2);
  return v0;
}

uint64_t EventsSubscription.init(continuation:stream:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DD710A9C(&qword_1ECD166F0, &unk_1DD8B1090);
  sub_1DD6DE1C4(v5);
  (*(v6 + 8))(a1);
  *(v2 + 16) = 0;
  v7 = OBJC_IVAR____TtC16IntelligenceFlow18EventsSubscription_stream;
  v8 = sub_1DD710A9C(&qword_1ECD0E4A0, qword_1DD878818);
  sub_1DD6DE1C4(v8);
  (*(v9 + 32))(v2 + v7, a2);
  return v2;
}

uint64_t sub_1DD860730()
{
  v1 = *v0;
  sub_1DD8606C8();
}

uint64_t sub_1DD860774()
{
  v2 = sub_1DD6EEDF4();
  *(v2 + 16) = 0;
  v3 = *v0;
  v4 = sub_1DD710A9C(&qword_1ECD0E4A0, qword_1DD878818);
  sub_1DD6DE1C4(v4);
  (*(v5 + 32))(v2 + v3, v1);
  return v2;
}

uint64_t sub_1DD8607F8(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = 0;
  v4 = *a2;
  v5 = sub_1DD710A9C(&qword_1ECD0E4A0, qword_1DD878818);
  sub_1DD6DE1C4(v5);
  (*(v6 + 32))(v2 + v4, a1);
  return v2;
}

uint64_t sub_1DD8608C8(uint64_t *a1)
{
  v3 = *(v1 + 16);

  v4 = *a1;
  v5 = sub_1DD710A9C(&qword_1ECD0E4A0, qword_1DD878818);
  sub_1DD6DE1C4(v5);
  (*(v6 + 8))(v1 + v4);
  return v1;
}

uint64_t sub_1DD860940(uint64_t *a1)
{
  v3 = *(v1 + 2);

  v4 = *a1;
  v5 = sub_1DD710A9C(&qword_1ECD0E4A0, qword_1DD878818);
  sub_1DD6DE1C4(v5);
  (*(v6 + 8))(&v1[v4]);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v7, v8);
}

uint64_t sub_1DD8609E8()
{
  v1 = *v0;
  sub_1DD86086C();
}

uint64_t SessionClient.__allocating_init(clientIdentifier:)()
{

  type metadata accessor for SessionClient.ReverseServer();
  sub_1DD6E2848();
  v1 = swift_allocObject();
  sub_1DD6DE128();

  v3 = SessionClient.__allocating_init(localObject:)(v2);
  v4 = v3;
  if (v0)
  {
  }

  else
  {
    v5 = *(v3 + 56);
    *(v4 + 56) = v1;
    swift_unknownObjectRelease();
  }

  return v4;
}

uint64_t SessionClient.__allocating_init(localObject:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 0;
  return (*(v1 + 168))(a1, &v3);
}

uint64_t SessionClient.__allocating_init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  v2 = 0;
  return SessionClient.__allocating_init(configuration:)(&v1);
}

uint64_t SessionClient.__allocating_init<A>(clientIdentifier:connection:)()
{
  sub_1DD6E6600();
  sub_1DD6DF290();
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6E2220();
  v3 = sub_1DD6DEC78();
  v6(v3, v4, v5);
  SessionClient.__allocating_init<A>(clientIdentifier:connection:configuration:)();
  v8 = v7;
  v9 = sub_1DD6DFFAC();
  v10(v9);
  return v8;
}

void SessionClient.__allocating_init<A>(clientIdentifier:connection:configuration:)()
{
  sub_1DD6DEB38();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1DD6DF290();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6E2220();

  v16 = *v8;
  v17 = *(v8 + 8);
  type metadata accessor for SessionClient.ReverseServer();
  sub_1DD6E2848();
  v18 = swift_allocObject();
  sub_1DD6DE128();
  (*(v12 + 16))(v1, v10, v6);
  v26 = v16;
  v27 = v17;
  v19 = *(v2 + 176);

  v21 = v19(v20, v1, &v26, v6, v4);
  v22 = *(v12 + 8);
  v23 = sub_1DD6ED118();
  v24(v23);
  v25 = *(v21 + 56);
  *(v21 + 56) = v18;
  swift_unknownObjectRelease();
  sub_1DD6DFED0();
}

uint64_t SessionClient.__allocating_init<A>(localObject:connection:)()
{
  sub_1DD6FABA4();
  sub_1DD6DF290();
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6E2220();
  v4 = sub_1DD6DEC78();
  v5(v4);
  v6 = *(v0 + 176);
  v7 = sub_1DD6DEE10();
  v9 = v8(v7);
  v10 = sub_1DD6DFFAC();
  v11(v10);
  return v9;
}

uint64_t SessionClient.__allocating_init<A>(localObject:connection:configuration:)()
{
  sub_1DD6E6600();
  sub_1DD6E6B30();
  swift_allocObject();
  v1 = sub_1DD6EE30C();
  SessionClient.init<A>(localObject:connection:configuration:)(v1, v2, v3, v4, v5);
  return v0;
}

uint64_t SessionClient.init<A>(localObject:connection:configuration:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *a3;
  v12 = *(a3 + 8);
  v13 = sub_1DD874610();
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  v14 = v5 + 16;
  *(v5 + 48) = 0;
  sub_1DD6DE2C8(v13);
  swift_allocObject();
  *(v5 + 64) = sub_1DD874600();
  v15 = sub_1DD8745E0();
  sub_1DD6DE2C8(v15);
  swift_allocObject();
  *(v5 + 72) = sub_1DD8745D0();
  *(v5 + 56) = a1;
  *(&v21 + 1) = a4;
  v22 = a5;
  v16 = sub_1DD79A52C(&v20);
  (*(*(a4 - 8) + 32))(v16, a2, a4);
  swift_beginAccess();
  v17 = *(&v21 + 1);
  if (!*(v14 + 24))
  {
    if (*(&v21 + 1))
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = v21;
    *v14 = v20;
    *(v14 + 16) = v18;
    *(v14 + 32) = v22;
    goto LABEL_6;
  }

  sub_1DD6E1EC8(v14);
  if (!v17)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1DD6DF5E4(&v20, v14);
LABEL_6:
  swift_endAccess();
  *(v6 + 80) = v11;
  *(v6 + 88) = v12;
  return v6;
}

uint64_t sub_1DD860FDC()
{
  sub_1DD6ED2E8();
  result = swift_beginAccess();
  if (*(v0 + 40))
  {
    result = sub_1DD6E0F0C(v0 + 16, &v3);
  }

  else
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 16);
    v4 = v2;
    v5 = *(v0 + 48);
  }

  if (*(&v4 + 1))
  {
    sub_1DD6DEA7C(&v3, *(&v4 + 1));
    sub_1DD874820();
    sub_1DD874D80();
    return sub_1DD6E1EC8(&v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DD8610B4(void *a1, uint64_t a2, uint64_t a3)
{
  v5[4] = a2;
  v5[5] = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1DD6FC2C0;
  v5[3] = &unk_1F58E67D0;
  v4 = _Block_copy(v5);

  [a1 fetchSessionClientIdWithReply_];
  _Block_release(v4);
}

void sub_1DD8611C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1DD6DED2C();
  v12 = *(v10 + 56);
  if (object_getClass(v12) != _TtCC16IntelligenceFlow13SessionClient13ReverseServer || v12 == 0)
  {
    goto LABEL_14;
  }

  swift_unknownObjectRetain();
  v16 = sub_1DD8613A8();
  sub_1DD861470();
  sub_1DD6ED2E8();
  swift_beginAccess();
  if (*(v10 + 40))
  {
    sub_1DD6E0F0C(v10 + 16, &v17);
  }

  else
  {
    v14 = *(v10 + 32);
    v17 = *(v10 + 16);
    v18 = v14;
    v19 = *(v10 + 48);
  }

  if (!*(&v18 + 1))
  {
    __break(1u);
LABEL_14:
    sub_1DD6E6260();
    __break(1u);
    return;
  }

  v15 = sub_1DD6DEA7C(&v17, *(&v18 + 1));
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6E0EC8();
  sub_1DD874D80();
  if (v11)
  {
    sub_1DD6E1EC8(&v17);
    sub_1DD861470();
    swift_willThrow();
    sub_1DD863360(v16);
    swift_unknownObjectRelease();
  }

  else
  {

    sub_1DD863360(v16);
    swift_unknownObjectRelease();
    sub_1DD6E1EC8(&v17);
  }

  sub_1DD6E0C78();
}

uint64_t (*sub_1DD8613A8())()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 48));
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (v2)
  {
    sub_1DD6E2848();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1DD86563C;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_1DD864654(v2);
  os_unfair_lock_unlock((v1 + 48));
  if (!v2)
  {
    return 0;
  }

  sub_1DD6E2848();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  return sub_1DD865614;
}

void sub_1DD861470()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 12);
  sub_1DD8655F8(&v1[4]);
  os_unfair_lock_unlock(v1 + 12);
}

void sub_1DD8614C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v10 = [v9 initWithBool_];
  v12[4] = sub_1DD865698;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DD6E1B38;
  v12[3] = &unk_1F58E6690;
  v11 = _Block_copy(v12);

  [a1 updateTransactionHookAttachmentStatus:v10 with:v11];
  _Block_release(v11);
}

void sub_1DD8615EC()
{
  sub_1DD6ED2E8();
  swift_beginAccess();
  if (*(v0 + 40))
  {
    sub_1DD6E0F0C(v0 + 16, &v4);
  }

  else
  {
    sub_1DD6E6D08();
  }

  if (v5)
  {
    v2 = sub_1DD6DEA7C(&v4, v5);
    MEMORY[0x1EEE9AC00](v2);
    sub_1DD6E0EC8();
    sub_1DD7032C4();
    if (!v1)
    {
    }

    sub_1DD6E1EC8(&v4);
    sub_1DD6E1868();
  }

  else
  {
    __break(1u);
  }
}

void sub_1DD8616E8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_1DD8747C0();
  v8 = sub_1DD8752C0();
  v10[4] = sub_1DD865698;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1DD6E1B38;
  v10[3] = &unk_1F58E6640;
  v9 = _Block_copy(v10);

  [a1 postTransactionWithSessionId:v7 eventProtos:v8 with:v9];
  _Block_release(v9);
}

void sub_1DD861808()
{
  sub_1DD6DED2C();
  v3 = v0;
  v36 = v4;
  v5 = sub_1DD710A9C(&qword_1ECD16708, &qword_1DD8B10A8);
  sub_1DD6DEA10(v5);
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DD6E0CB8();
  v10 = type metadata accessor for SessionConfiguration(v9);
  v11 = sub_1DD6DE1C4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DE4A8();
  v16 = v15 - v14;
  v17 = sub_1DD6DFF24();
  sub_1DD6E7A88(v17, v18, &qword_1ECD16708, &qword_1DD8B10A8);
  if (sub_1DD6E5ED0(v2, 1, v10) == 1)
  {
    *v16 = 5;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    *(v16 + 24) = 2;
    v19 = v10[8];
    v20 = type metadata accessor for LocaleSettings(0);
    sub_1DD6E5E68(v16 + v19, 1, 1, v20);
    *(v16 + v10[9]) = 2;
    *(v16 + v10[10]) = 512;
    *(v16 + v10[11]) = 0;
    v21 = v16 + v10[12];
    *v21 = 0;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    *(v16 + v10[13]) = 4;
    *(v16 + v10[14]) = 2;
    v22 = (v16 + v10[15]);
    *v22 = 0;
    v22[1] = 0;
    if (sub_1DD6E5ED0(v2, 1, v10) != 1)
    {
      sub_1DD6FC560(v2, &qword_1ECD16708, &qword_1DD8B10A8);
    }
  }

  else
  {
    sub_1DD6E7B9C(v2, v16);
  }

  v23 = *(v3 + 64);
  sub_1DD6FC500();
  sub_1DD6DEC94(v24, 255, v25);
  v26 = sub_1DD8745F0();
  if (v1)
  {
    sub_1DD6DF518();
    sub_1DD6EEEFC(v16, v28);
LABEL_12:
    sub_1DD6E0C78();
    return;
  }

  v29 = v26;
  v30 = v27;
  empty = xpc_dictionary_create_empty();
  sub_1DD6EF494();
  sub_1DD6ED2E8();
  swift_beginAccess();
  if (*(v3 + 40))
  {
    sub_1DD6E0F0C(v3 + 16, &v37);
  }

  else
  {
    v32 = *(v3 + 32);
    v37 = *(v3 + 16);
    v38 = v32;
    v39 = *(v3 + 48);
  }

  if (*(&v38 + 1))
  {
    v33 = sub_1DD6DEA7C(&v37, *(&v38 + 1));
    v35[1] = v35;
    MEMORY[0x1EEE9AC00](v33);
    v35[-4] = v36;
    v35[-3] = v29;
    v35[-2] = v30;
    v35[-1] = empty;
    sub_1DD874820();
    sub_1DD874D80();
    sub_1DD6DF518();
    sub_1DD6EEEFC(v16, v34);
    sub_1DD6E6658(v29, v30);
    swift_unknownObjectRelease();
    sub_1DD6E1EC8(&v37);
    goto LABEL_12;
  }

  __break(1u);
}

void sub_1DD861B1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_1DD8752C0();
  v12 = sub_1DD874750();
  v14[4] = a2;
  v14[5] = a3;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1DD6FC2C0;
  v14[3] = &unk_1F58E65F0;
  v13 = _Block_copy(v14);

  [a1 createSessionFromProtoEventsWithEventProtos:v11 configData:v12 xpcData:a7 with:v13];
  _Block_release(v13);
}

void sub_1DD861C2C()
{
  sub_1DD6ED2E8();
  swift_beginAccess();
  if (*(v0 + 40))
  {
    sub_1DD6E0F0C(v0 + 16, &v4);
  }

  else
  {
    sub_1DD6E6D08();
  }

  if (v5)
  {
    v2 = sub_1DD6DEA7C(&v4, v5);
    MEMORY[0x1EEE9AC00](v2);
    sub_1DD6E0EC8();
    sub_1DD874D80();
    if (v1)
    {
      sub_1DD6E1EC8(&v4);
    }

    else
    {
      v3 = v6;
      sub_1DD6E1EC8(&v4);
      [v3 unsignedIntValue];
    }

    sub_1DD6E1868();
  }

  else
  {
    __break(1u);
  }
}

void sub_1DD861D58()
{
  sub_1DD6FE380();
  if (!v0)
  {
  }
}

void sub_1DD861DB8()
{
  sub_1DD6F4550();
  sub_1DD6E63DC();
  sub_1DD86525C();
  os_unfair_lock_unlock(v0 + 12);
}

uint64_t sub_1DD861E0C(uint64_t a1)
{
  v3 = v1;
  sub_1DD6E0F0C(a1, v7);
  v4 = sub_1DD861D88();
  if (v2)
  {
    sub_1DD6E1EC8(v7);
  }

  else
  {
    v5 = v4;
    type metadata accessor for SessionDebuggerEventsSubscription();
    swift_allocObject();
    v2 = sub_1DD71F1E8(v3, v7, v5);
  }

  return v2;
}

uint64_t sub_1DD861ED8(uint64_t (*a1)(uint64_t))
{
  v3 = v1;
  v4 = *(v1 + 56);
  if (object_getClass(v4) != _TtCC16IntelligenceFlow13SessionClient13ReverseServer || v4 == 0)
  {
    result = sub_1DD6E6260();
    __break(1u);
  }

  else
  {
    swift_unknownObjectRetain();
    v6 = a1(v3);
    swift_unknownObjectRelease();
    return v6;
  }

  return result;
}

void sub_1DD861F98()
{
  sub_1DD6F4550();
  sub_1DD6E63DC();
  sub_1DD864918();
  os_unfair_lock_unlock(v0 + 12);
}

uint64_t sub_1DD861FF8(uint64_t a1)
{
  v2 = type metadata accessor for SessionClient();

  return MEMORY[0x1EEE2EE60](a1, v2);
}

uint64_t IntelligenceFlowClient.__allocating_init(localObject:configuration:)()
{
  sub_1DD6FABA4();
  sub_1DD6E6B30();
  swift_allocObject();
  v1 = sub_1DD6DEB18();
  IntelligenceFlowClient.init(localObject:configuration:)(v1, v2);
  return v0;
}

uint64_t IntelligenceFlowClient.init(localObject:configuration:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  SessionClient.init(localObject:configuration:)();
  return v2;
}

uint64_t IntelligenceFlowClient.__allocating_init<A>(localObject:connection:configuration:)()
{
  sub_1DD6E6600();
  sub_1DD6E6B30();
  swift_allocObject();
  sub_1DD6EE30C();
  IntelligenceFlowClient.init<A>(localObject:connection:configuration:)();
  return v0;
}

void IntelligenceFlowClient.init<A>(localObject:connection:configuration:)()
{
  sub_1DD6DEB38();
  sub_1DD6FABA4();
  sub_1DD6DF290();
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6E2220();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = sub_1DD6DEC78();
  v7(v6);
  v8 = sub_1DD6DEE10();
  SessionClient.init<A>(localObject:connection:configuration:)(v8, v9, v10, v11, v12);
  v13 = sub_1DD6DFFAC();
  v14(v13);
  sub_1DD6DFED0();
}

void sub_1DD8621EC()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 12);
  sub_1DD864634(&v1[4]);
  os_unfair_lock_unlock(v1 + 12);
}

void sub_1DD862244(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void *))
{
  v20 = a4;
  v8 = sub_1DD874ED0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(a1 + 24);
    v21 = a2;
    sub_1DD864654(v13);

    v13(a3, &v21);
    if (v4)
    {

      sub_1DD863360(v13);
      v15 = v4;
      v20(0, v4);
    }

    else
    {
      v20(v21, 0);
      sub_1DD863360(v13);
    }
  }

  else
  {
    sub_1DD874C00();
    v16 = sub_1DD874EC0();
    v17 = sub_1DD8754E0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DD6DC000, v16, v17, "Unexpected execution of transaction hook from Server. This should not happen and may have performance impact. Responding with no changes to the transaction.", v18, 2u);
      MEMORY[0x1E12B5DE0](v18, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    v20(a2, 0);
  }
}

void sub_1DD8625E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_1DD8752C0();
    if (a2)
    {
LABEL_3:
      v6 = sub_1DD874670();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_1DD862680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  sub_1DD864654(a2);
  result = sub_1DD863360(v6);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  return result;
}

uint64_t sub_1DD8626E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD862704, 0, 0);
}

void sub_1DD862704()
{
  sub_1DD6E48E0();
  *(sub_1DD6ED414() + 16) = v0;
  os_unfair_lock_lock(v1 + 12);
  sub_1DD865598(&v1[4]);
  os_unfair_lock_unlock(v1 + 12);

  sub_1DD6DDF40();
  sub_1DD702AA0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DD8627AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1DD710A9C(&qword_1ECD16770, &qword_1DD8B16C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v26 - v11;
  sub_1DD6E7A88(a3, v26 - v11, &qword_1ECD16770, &qword_1DD8B16C0);
  v13 = sub_1DD875380();
  v14 = sub_1DD6E5ED0(v12, 1, v13);

  if (v14 == 1)
  {
    sub_1DD6FC560(v12, &qword_1ECD16770, &qword_1DD8B16C0);
  }

  else
  {
    sub_1DD875370();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1DD875360();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1DD875190() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1DD6FC560(a3, &qword_1ECD16770, &qword_1DD8B16C0);

      return v24;
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

  sub_1DD6FC560(a3, &qword_1ECD16770, &qword_1DD8B16C0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_1DD862A90()
{
  sub_1DD6DED2C();
  v83 = v2;
  v84 = v1;
  v80 = v3;
  v81 = v4;
  v76 = v6;
  v77 = v5;
  v88 = v7;
  v89 = v0;
  v9 = v8;
  v82 = sub_1DD710A9C(&qword_1ECD10300, &qword_1DD884D20);
  sub_1DD6DDEAC(v82);
  v86 = v10;
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6FF92C(v14, v69);
  v15 = sub_1DD710A9C(&qword_1ECD16768, &qword_1DD8B16B8);
  sub_1DD6DDEAC(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v69 - v21;
  v23 = sub_1DD710A9C(&qword_1ECD166F0, &unk_1DD8B1090);
  v78 = sub_1DD6DDEAC(v23);
  v79 = v24;
  v26 = *(v25 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  v90 = &v69 - v28;
  v91 = sub_1DD710A9C(&qword_1ECD0E4A0, qword_1DD878818);
  v29 = sub_1DD6DDEAC(v91);
  v74 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6DE21C();
  v75 = v33 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v92 = &v69 - v36;
  v37 = sub_1DD874820();
  v38 = sub_1DD6DDEAC(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v43 = &v69 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v69 - v46;
  v87 = v9;
  if (v9[1])
  {
    sub_1DD864664();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v48 = v45;
    _s16IntelligenceFlow15SessionClientIDVACycfC_0();
    type metadata accessor for SessionServerMessage(0);
    (*(v17 + 104))(v22, *MEMORY[0x1E69E8790], v15);
    sub_1DD875390();
    (*(v17 + 8))(v22, v15);
    v49 = *(v40 + 16);
    v71 = v47;
    v72 = v49;
    (v49)(v43, v47, v48);
    v50 = *(v40 + 80);
    v73 = v40;
    v51 = (v50 + 24) & ~v50;
    v52 = swift_allocObject();
    *(v52 + 16) = v77;
    v53 = *(v40 + 32);
    v70 = v48;
    v53(v52 + v51, v43, v48);

    v54 = v78;
    v55 = v90;
    sub_1DD8753A0();
    v57 = v74;
    v56 = v75;
    v58 = v91;
    (*(v74 + 16))(v75, v92, v91);
    v59 = v81(0);
    sub_1DD6DE2C8(v59);
    v60 = swift_allocObject();
    v81 = v60;
    v61 = v83;
    *(v60 + 16) = v84;
    (*(v57 + 32))(v60 + *v61, v56, v58);
    v62 = *(v82 + 48);
    v63 = v85;
    v64 = sub_1DD6DFF24();
    v72(v64);
    v65 = v79;
    (*(v79 + 16))(v63 + v62, v55, v54);

    v66 = v87;
    sub_1DD8647E0(sub_1DD784D30);
    v67 = *(*v66 + 16);
    sub_1DD86486C(v67, sub_1DD784D30);
    (*(v65 + 8))(v55, v54);
    (*(v57 + 8))(v92, v91);
    (*(v73 + 8))(v71, v70);
    v68 = *v66;
    *(v68 + 16) = v67 + 1;
    sub_1DD86498C(v63, v68 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v67);
    *v66 = v68;
    *v88 = v81;
  }

  sub_1DD6E0C78();
}

void sub_1DD863020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DEB38();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1DD874820();
  v28 = sub_1DD6DDEAC(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v33 = sub_1DD710A9C(&qword_1ECD16770, &qword_1DD8B16C0);
  sub_1DD6DEA10(v33);
  v35 = *(v34 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD6E0CB8();
  v37 = sub_1DD875380();
  sub_1DD6E5E68(v20, 1, 1, v37);
  v38 = *(v30 + 16);
  v39 = sub_1DD6DDEDC();
  v40(v39);
  v41 = (*(v30 + 80) + 40) & ~*(v30 + 80);
  v42 = swift_allocObject();
  *(v42 + 2) = 0;
  *(v42 + 3) = 0;
  *(v42 + 4) = v26;
  (*(v30 + 32))(&v42[v41], &a9 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v27);

  sub_1DD8627AC(0, 0, v20, v24, v42);

  sub_1DD6DFED0();
}

uint64_t sub_1DD8631A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD8631C8, 0, 0);
}

void sub_1DD8631C8()
{
  sub_1DD6E48E0();
  *(sub_1DD6ED414() + 16) = v0;
  os_unfair_lock_lock(v1 + 12);
  sub_1DD864B74(&v1[4]);
  os_unfair_lock_unlock(v1 + 12);

  sub_1DD6DDF40();
  sub_1DD702AA0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DD863270(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t))
{
  v6[2] = a2;
  result = sub_1DD864D84(a3, v6);
  v5 = *(*a1 + 16);
  if (v5 >= result)
  {
    return sub_1DD864C34(result, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD863360(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1DD863370(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_1DD8616E8(a1, a2, a3);
}

uint64_t SessionClientError.hashValue.getter()
{
  sub_1DD875B20();
  MEMORY[0x1E12B5570](0);
  return sub_1DD875B60();
}

Swift::String __swiftcall String.escapedForIntelligenceFlowPrescribedPlanStringLiteral()()
{
  sub_1DD719D30();
  sub_1DD6ED2E8();
  sub_1DD700D88();
  sub_1DD6ED2E8();
  v0 = sub_1DD700D88();
  v2 = v1;

  v3 = v0;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_1DD86356C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1DD874ED0();
  sub_1DD732C90(v3, a2);
  sub_1DD6E1224(v3, a2);
  return sub_1DD874C00();
}

uint64_t sub_1DD863600()
{
  sub_1DD6DDF4C();
  v1 = v0[7];
  v2 = v0[8];
  sub_1DD6E6658(v0[5], v0[6]);

  v3 = v0[10];
  sub_1DD6DDF40();

  return v4();
}

uint64_t sub_1DD863670(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return sub_1DD6E13F8();
}

uint64_t sub_1DD863688(uint64_t a1, void (*a2)(void *a1, uint64_t a2, uint64_t a3), uint64_t a3, uint64_t a4)
{
  v5 = *(*(v4 + 40) + 24);
  *(v4 + 48) = v5;
  if (v5)
  {
    sub_1DD6E1F54();
    v6 = swift_task_alloc();
    *(v4 + 56) = v6;
    *(v6 + 16) = *(v4 + 24);
    v7 = *(MEMORY[0x1E69C5B18] + 4);

    v8 = swift_task_alloc();
    *(v4 + 64) = v8;
    a4 = sub_1DD710A9C(&qword_1ECD15680, &qword_1DD8A7300);
    *v8 = v4;
    v8[1] = sub_1DD86378C;
    a2 = sub_1DD863A38;
    a1 = v4 + 16;
    a3 = v6;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EEA0](a1, a2, a3, a4);
}

uint64_t sub_1DD86378C()
{
  sub_1DD6DDF4C();
  sub_1DD6DF09C();
  v3 = v2;
  sub_1DD6DE408();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_1DD6E04EC();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    v9 = sub_1DD8638B4;
  }

  else
  {
    v10 = v3[6];
    v11 = v3[7];

    v9 = sub_1DD863898;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DD8638B4()
{
  sub_1DD6DDF4C();
  v1 = v0[6];
  v2 = v0[7];

  sub_1DD6DDF40();
  v4 = v0[9];

  return v3();
}

void sub_1DD863918(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_1DD8747C0();
  v8 = sub_1DD8752C0();
  v10[4] = sub_1DD6E6448;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1DD863A40;
  v10[3] = &unk_1F58E6398;
  v9 = _Block_copy(v10);

  [a1 runTransactionHookWithSessionId:v7 transaction:v8 with:v9];
  _Block_release(v9);
}

void sub_1DD863A38(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_1DD863918(a1, a2, a3);
}

uint64_t sub_1DD863A40(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1DD8752D0();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_1DD863AD8(uint64_t a1)
{
  v2 = type metadata accessor for SessionReverseClient();

  return MEMORY[0x1EEE2EE60](a1, v2);
}

uint64_t sub_1DD863C00(uint64_t a1, uint64_t a2)
{
  result = sub_1DD6DEC94(qword_1EE0159F0, a2, type metadata accessor for SessionClient);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DD863C5C()
{
  result = qword_1ECD16730;
  if (!qword_1ECD16730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16730);
  }

  return result;
}

unint64_t sub_1DD863CB4()
{
  result = qword_1EE015258;
  if (!qword_1EE015258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015258);
  }

  return result;
}

void sub_1DD863DCC()
{
  sub_1DD863E54(319, &qword_1ECD16758, MEMORY[0x1E69E87B8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DD863E54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SessionServerMessage(255);
    v7 = sub_1DD717E88(&qword_1ECD0FAB0, &qword_1DD8AF8D0);
    v8 = a3(a1, v6, v7, MEMORY[0x1E69E7288]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DD863F00()
{
  sub_1DD863E54(319, &qword_1EE0139B8, MEMORY[0x1E69E87C8]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of SessionReverseClient.runTransactionHook(sessionId:transaction:)()
{
  sub_1DD6E48E0();
  sub_1DD6DE6BC();
  v2 = *(v1 + 136);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = sub_1DD864484;
  v5 = sub_1DD6ED118();

  return v7(v5);
}

uint64_t sub_1DD864484()
{
  sub_1DD6DDF4C();
  v2 = v1;
  sub_1DD6DF09C();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_1DD6E04EC();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

_BYTE *sub_1DD864570(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DD864654(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1DD864664()
{
  result = qword_1EE0155B8;
  if (!qword_1EE0155B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0155B8);
  }

  return result;
}

uint64_t sub_1DD8646B8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD852A48;

  return v7(a1);
}

uint64_t sub_1DD8647E0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1DD86486C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1DD8648B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionServerMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DD864918()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DD862A90();
}

uint64_t sub_1DD86498C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD10300, &qword_1DD884D20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD8649FC()
{
  sub_1DD6E48E0();
  v2 = sub_1DD874820();
  sub_1DD6DEA10(v2);
  v4 = *(v3 + 80);
  sub_1DD6E5958();
  v5 = swift_task_alloc();
  v6 = sub_1DD865700(v5);
  *v6 = v7;
  v6[1] = sub_1DD71FCC8;
  v8 = sub_1DD6E8930();

  return sub_1DD8631A4(v8, v9, v0, v1, v10);
}

uint64_t sub_1DD864AD0()
{
  sub_1DD6E1F54();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1DD865700(v3);
  *v4 = v5;
  v4[1] = sub_1DD71FCC8;
  v6 = sub_1DD6E8930();

  return v7(v6);
}

uint64_t sub_1DD864BBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1DD864C34(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1DD864BBC(result, 1, sub_1DD784D30);
  v8 = *v2;
  v9 = *(sub_1DD710A9C(&qword_1ECD10300, &qword_1DD884D20) - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = sub_1DD785254(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1DD864D84(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v4 = v2;
  v7 = sub_1DD710A9C(&qword_1ECD10300, &qword_1DD884D20);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - v16;
  v18 = *v2;
  result = sub_1DD8650EC(a1, a2, v18);
  if (!v3)
  {
    v38 = a2;
    if (v20)
    {
      return *(v18 + 16);
    }

    else
    {
      v37 = a1;
      v35 = v4;
      v21 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_27:
        __break(1u);
      }

      else
      {
        v22 = v18;
        v36 = v8;
        while (1)
        {
          v23 = *(v22 + 16);
          if (v21 == v23)
          {
            break;
          }

          if (v21 >= v23)
          {
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v41 = result;
          v42 = v22;
          v24 = v11;
          v39 = (*(v8 + 80) + 32) & ~*(v8 + 80);
          v25 = v22 + v39;
          v26 = *(v8 + 72);
          v43 = v21;
          v40 = v26 * v21;
          sub_1DD6E7A88(v22 + v39 + v26 * v21, v17, &qword_1ECD10300, &qword_1DD884D20);
          v27 = v37(v17);
          sub_1DD6FC560(v17, &qword_1ECD10300, &qword_1DD884D20);
          if (v27)
          {
            v8 = v36;
            v11 = v24;
            result = v41;
            v22 = v42;
            v28 = v43;
          }

          else
          {
            result = v41;
            v28 = v43;
            if (v43 == v41)
            {
              v8 = v36;
              v11 = v24;
              v22 = v42;
            }

            else
            {
              if ((v41 & 0x8000000000000000) != 0)
              {
                goto LABEL_23;
              }

              v29 = *(v42 + 16);
              if (v41 >= v29)
              {
                goto LABEL_24;
              }

              v30 = v26 * v41;
              result = sub_1DD6E7A88(v25 + v30, v14, &qword_1ECD10300, &qword_1DD884D20);
              if (v43 >= v29)
              {
                goto LABEL_25;
              }

              v31 = v25 + v40;
              v11 = v24;
              sub_1DD6E7A88(v31, v24, &qword_1ECD10300, &qword_1DD884D20);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1DD85E8E4(v42);
                v42 = v34;
              }

              v32 = v42;
              v33 = v42 + v39;
              result = sub_1DD8651EC(v11, v42 + v39 + v30);
              if (v43 >= *(v32 + 16))
              {
                goto LABEL_26;
              }

              sub_1DD8651EC(v14, v33 + v40);
              v28 = v43;
              v8 = v36;
              *v35 = v32;
              result = v41;
              v22 = v32;
            }

            ++result;
          }

          v21 = v28 + 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1DD8650EC(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(sub_1DD710A9C(&qword_1ECD10300, &qword_1DD884D20) - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t sub_1DD8651EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD10300, &qword_1DD884D20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1DD86525C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DD862A90();
}

uint64_t sub_1DD8652B0()
{
  v1 = sub_1DD874820();
  sub_1DD6DDEAC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1DD865404()
{
  v1 = sub_1DD874820();
  sub_1DD6DDEAC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1DD8654C4()
{
  sub_1DD6E48E0();
  v2 = sub_1DD874820();
  sub_1DD6DEA10(v2);
  v4 = *(v3 + 80);
  sub_1DD6E5958();
  v5 = swift_task_alloc();
  v6 = sub_1DD865700(v5);
  *v6 = v7;
  v6[1] = sub_1DD6FA5C4;
  v8 = sub_1DD6E8930();

  return sub_1DD8626E0(v8, v9, v0, v1, v10);
}

uint64_t sub_1DD865614()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1DD86563C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1DD865710()
{
  v0 = sub_1DD874B40();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69A90B0], v0, v3);
  sub_1DD874B30();
  return (*(v1 + 8))(v5, v0);
}

uint64_t SnippetStreamingClient.__allocating_init(streamingId:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SnippetStreamingClient.init(streamingId:)(a1);
  return v2;
}

uint64_t SnippetStreamingClient.init(streamingId:)(uint64_t a1)
{
  v3 = v1;
  v1[2] = 0;
  type metadata accessor for SnippetStreamingClient.ReverseServer();
  v1[3] = swift_allocObject();
  v5 = sub_1DD874610();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v1[4] = sub_1DD874600();
  v8 = v1[3];
  sub_1DD869474(&qword_1ECD167D0, v9, type metadata accessor for SnippetStreamingClient);
  v10 = sub_1DD710A9C(&qword_1ECD167D8, &qword_1DD8B1710);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  v13 = sub_1DD874DA0();
  if (v2)
  {

    sub_1DD865C94(a1);
    return v3;
  }

  v14 = v3[2];
  v3[2] = v13;

  v15 = v3[4];
  type metadata accessor for SnippetStreamingContextID();
  sub_1DD869474(&qword_1ECD167E0, 255, type metadata accessor for SnippetStreamingContextID);

  v17 = sub_1DD8745F0();
  v19 = v18;

  if (v3[2])
  {
    MEMORY[0x1EEE9AC00](result);
    sub_1DD6E0EC8();

    sub_1DD874DB0();
    sub_1DD6E6658(v17, v19);

    sub_1DD865C94(a1);

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD865C94(uint64_t a1)
{
  v2 = type metadata accessor for SnippetStreamingContextID();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SnippetStreamingClient.post(update:)(_OWORD *a1)
{
  *(v2 + 56) = v1;
  v3 = a1[1];
  *(v2 + 64) = *a1;
  *(v2 + 80) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DD865D6C, 0, 0);
}

uint64_t sub_1DD865D6C()
{
  v1 = *(*(v0 + 56) + 32);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = *(v0 + 80);
  sub_1DD866104();
  v2 = sub_1DD8745F0();
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  v6 = *(*(v0 + 56) + 16);
  *(v0 + 112) = v6;
  if (v6)
  {
    v7 = v2;
    v8 = v3;
    v9 = swift_task_alloc();
    *(v0 + 120) = v9;
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v10 = *(MEMORY[0x1E69C5B18] + 4);

    v11 = swift_task_alloc();
    *(v0 + 128) = v11;
    v5 = sub_1DD6E0EC8();
    *v11 = v0;
    v11[1] = sub_1DD865EF0;
    v3 = sub_1DD866260;
    v2 = v0 + 48;
    v4 = v9;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EEA0](v2, v3, v4, v5);
}

uint64_t sub_1DD865EF0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1DD86608C;
  }

  else
  {
    v6 = *(v2 + 112);
    v5 = *(v2 + 120);

    v4 = sub_1DD866028;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DD866028()
{
  sub_1DD6E6658(v0[12], v0[13]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1DD86608C()
{
  v1 = v0[14];
  v2 = v0[15];
  sub_1DD6E6658(v0[12], v0[13]);

  v3 = v0[17];
  v4 = v0[1];

  return v4();
}

unint64_t sub_1DD866104()
{
  result = qword_1ECD167E8;
  if (!qword_1ECD167E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD167E8);
  }

  return result;
}

void sub_1DD866158(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, SEL *a9)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  v15 = sub_1DD874750();
  v17[4] = a7;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1DD6E1B38;
  v17[3] = a8;
  v16 = _Block_copy(v17);

  [a1 *a9];
  _Block_release(v16);
}

void *SnippetStreamingClient.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t SnippetStreamingClient.__deallocating_deinit()
{
  SnippetStreamingClient.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1DD8663F0(uint64_t a1)
{
  v2 = sub_1DD86649C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD86642C(uint64_t a1)
{
  v2 = sub_1DD86649C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD86649C()
{
  result = qword_1ECD167F8;
  if (!qword_1ECD167F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD167F8);
  }

  return result;
}

uint64_t SnippetStreamingClient.StatusUpdate.Content.SuccessfulCompletion.data.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1DD6DDEFC();
  sub_1DD710E74(v3, v4);
  return sub_1DD6DDEFC();
}

uint64_t SnippetStreamingClient.StatusUpdate.Content.SuccessfulCompletion.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1DD6E6658(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t SnippetStreamingClient.StatusUpdate.Content.SuccessfulCompletion.init(data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void static SnippetStreamingClient.StatusUpdate.Content.SuccessfulCompletion.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  JUMPOUT(0x1E12B41A0);
}

uint64_t sub_1DD8665F4(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD86666C(uint64_t a1)
{
  v2 = sub_1DD866850();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD8666A8(uint64_t a1)
{
  v2 = sub_1DD866850();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DD866718()
{
  sub_1DD6DED2C();
  v17 = v2;
  v4 = v3;
  v7 = sub_1DD710A9C(v5, v6);
  sub_1DD6DDEAC(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DE340();
  v13 = *v0;
  v14 = v0[1];
  v15 = v4[4];
  sub_1DD6DEA7C(v4, v4[3]);
  v16 = sub_1DD710E74(v13, v14);
  v17(v16);
  sub_1DD875BB0();
  sub_1DD712070();
  sub_1DD8759D0();
  sub_1DD6E6658(v13, v14);
  (*(v9 + 8))(v1, v7);
  sub_1DD6E0C78();
}

unint64_t sub_1DD866850()
{
  result = qword_1ECD16810;
  if (!qword_1ECD16810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16810);
  }

  return result;
}

void sub_1DD8668D8()
{
  sub_1DD6DED2C();
  v2 = v1;
  v4 = v3;
  v19 = v5;
  v8 = sub_1DD710A9C(v6, v7);
  sub_1DD6DDEAC(v8);
  v21 = v9;
  v11 = *(v10 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  v15 = v4[4];
  v16 = sub_1DD6DEA7C(v4, v4[3]);
  v2(v16);
  sub_1DD875B90();
  if (!v0)
  {
    v17 = v19;
    sub_1DD717D38();
    sub_1DD8758D0();
    (*(v21 + 8))(v14, v8);
    *v17 = v20;
  }

  sub_1DD6E1EC8(v4);
  sub_1DD6E0C78();
}

uint64_t SnippetStreamingClient.StatusUpdate.Content.FailedCompletion.data.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1DD6DDEFC();
  sub_1DD710E74(v3, v4);
  return sub_1DD6DDEFC();
}

uint64_t SnippetStreamingClient.StatusUpdate.Content.FailedCompletion.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1DD6E6658(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t SnippetStreamingClient.StatusUpdate.Content.FailedCompletion.reason.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1DD6DDEFC();
}

uint64_t SnippetStreamingClient.StatusUpdate.Content.FailedCompletion.reason.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SnippetStreamingClient.StatusUpdate.Content.FailedCompletion.init(data:reason:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static SnippetStreamingClient.StatusUpdate.Content.FailedCompletion.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((MEMORY[0x1E12B41A0](*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  sub_1DD6DE6C8();

  return sub_1DD875A30();
}

uint64_t sub_1DD866BF4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD866CB8(char a1)
{
  if (a1)
  {
    return 0x6E6F73616572;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1DD866CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD866BF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD866D14(uint64_t a1)
{
  v2 = sub_1DD866F08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD866D50(uint64_t a1)
{
  v2 = sub_1DD866F08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SnippetStreamingClient.StatusUpdate.Content.FailedCompletion.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD16820, &qword_1DD8B1740);
  sub_1DD6DDEAC(v4);
  v16 = v5;
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - v9;
  v11 = *v0;
  v12 = v0[1];
  v13 = v0[2];
  v15[1] = v0[3];
  v15[2] = v13;
  v14 = v3[4];
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD710E74(v11, v12);
  sub_1DD866F08();
  sub_1DD875BB0();
  v17 = v11;
  v18 = v12;
  sub_1DD712070();
  sub_1DD8759D0();
  sub_1DD6E6658(v17, v18);
  if (!v1)
  {
    LOBYTE(v17) = 1;
    sub_1DD875970();
  }

  (*(v16 + 8))(v10, v4);
  sub_1DD6E0C78();
}

unint64_t sub_1DD866F08()
{
  result = qword_1ECD16828;
  if (!qword_1ECD16828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16828);
  }

  return result;
}

void SnippetStreamingClient.StatusUpdate.Content.FailedCompletion.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD16830, &qword_1DD8B1748);
  sub_1DD6DDEAC(v5);
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DDFE4();
  v9 = v2[4];
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD866F08();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v2);
  }

  else
  {
    sub_1DD717D38();
    sub_1DD8758D0();
    v10 = sub_1DD875870();
    v12 = v11;
    v13 = sub_1DD6DFF30();
    v14(v13);
    *v4 = v15;
    v4[1] = v16;
    v4[2] = v10;
    v4[3] = v12;
    sub_1DD710E74(v15, v16);

    sub_1DD6E1EC8(v2);
    sub_1DD6E6658(v15, v16);
  }

  sub_1DD6E0C78();
}

uint64_t sub_1DD867184(uint64_t a1)
{
  v2 = sub_1DD8672F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD8671C0(uint64_t a1)
{
  v2 = sub_1DD8672F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SnippetStreamingClient.StatusUpdate.Content.DisconnectedCompletion.encode(to:)(void *a1)
{
  v3 = sub_1DD710A9C(&qword_1ECD16838, &qword_1DD8B1750);
  sub_1DD6DDEAC(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DE340();
  v9 = a1[4];
  sub_1DD6DEA7C(a1, a1[3]);
  sub_1DD8672F4();
  sub_1DD875BB0();
  return (*(v5 + 8))(v1, v3);
}

unint64_t sub_1DD8672F4()
{
  result = qword_1ECD16840;
  if (!qword_1ECD16840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16840);
  }

  return result;
}

uint64_t static SnippetStreamingClient.StatusUpdate.Content.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  switch((v2 >> 60) & 3)
  {
    case 1uLL:
      if ((v6 & 0x3000000000000000) != 0x1000000000000000)
      {
        goto LABEL_21;
      }

      v43 = sub_1DD6DF530();
      sub_1DD86766C(v43, v44);
      v45 = sub_1DD6E53F0();
      goto LABEL_16;
    case 2uLL:
      if ((v6 & 0x3000000000000000) == 0x2000000000000000)
      {
        v12 = sub_1DD6E53F0();
        sub_1DD8675E4(v12, v13);
        v14 = sub_1DD6DF530();
        sub_1DD8675E4(v14, v15);
        v16 = sub_1DD6DF530();
        sub_1DD8675E4(v16, v17);
        v18 = sub_1DD6E53F0();
        sub_1DD8675E4(v18, v19);
        v20 = sub_1DD86A4A0();
        goto LABEL_25;
      }

      v11 = v2 & 0xCFFFFFFFFFFFFFFFLL;
      v10 = *a1;
      goto LABEL_19;
    case 3uLL:
      if ((~v6 & 0x3000000000000000) != 0)
      {
        sub_1DD710E74(*a1, v2 & 0xCFFFFFFFFFFFFFFFLL);

        goto LABEL_21;
      }

      v24 = sub_1DD6E53F0();
      sub_1DD8675E4(v24, v25);
      v26 = sub_1DD6DF530();
      sub_1DD8675E4(v26, v27);
      v28 = sub_1DD6DF530();
      sub_1DD8675E4(v28, v29);
      v30 = sub_1DD6E53F0();
      sub_1DD8675E4(v30, v31);
      v32 = sub_1DD86A4A0();
      if ((MEMORY[0x1E12B41A0](v32) & 1) == 0)
      {
        v71 = sub_1DD6DF530();
        sub_1DD86766C(v71, v72);
        v73 = sub_1DD6E53F0();
        sub_1DD86766C(v73, v74);
        v75 = sub_1DD6E53F0();
        sub_1DD86766C(v75, v76);
        v52 = sub_1DD6DF530();
        goto LABEL_22;
      }

      if (v5 == v9 && v4 == v8)
      {
        v77 = sub_1DD6DF530();
        sub_1DD86766C(v77, v78);
        sub_1DD6E8940();
        sub_1DD6E8940();
        v45 = sub_1DD6DF530();
LABEL_16:
        sub_1DD86766C(v45, v46);
      }

      else
      {
        v34 = sub_1DD875A30();
        v35 = sub_1DD6DF530();
        sub_1DD86766C(v35, v36);
        v37 = sub_1DD6E53F0();
        sub_1DD86766C(v37, v38);
        v39 = sub_1DD6E53F0();
        sub_1DD86766C(v39, v40);
        v41 = sub_1DD6DF530();
        sub_1DD86766C(v41, v42);
        if ((v34 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      result = 1;
      break;
    default:
      if ((v6 & 0x3000000000000000) != 0)
      {
        v10 = *a1;
        v11 = v2;
LABEL_19:
        sub_1DD710E74(v10, v11);
LABEL_21:
        v48 = sub_1DD6E53F0();
        sub_1DD8675E4(v48, v49);
        v50 = sub_1DD6DF530();
        sub_1DD86766C(v50, v51);
        v52 = sub_1DD6E53F0();
LABEL_22:
        sub_1DD86766C(v52, v53);
LABEL_23:
        result = 0;
      }

      else
      {
        v54 = sub_1DD6E53F0();
        sub_1DD8675E4(v54, v55);
        v56 = sub_1DD6DF530();
        sub_1DD8675E4(v56, v57);
        v58 = sub_1DD6DF530();
        sub_1DD8675E4(v58, v59);
        v60 = sub_1DD6E53F0();
        sub_1DD8675E4(v60, v61);
        v20 = v3;
        v21 = v2;
        v22 = v7;
        v23 = v6;
LABEL_25:
        v62 = MEMORY[0x1E12B41A0](v20, v21, v22, v23);
        v63 = sub_1DD6DF530();
        sub_1DD86766C(v63, v64);
        v65 = sub_1DD6E53F0();
        sub_1DD86766C(v65, v66);
        v67 = sub_1DD6E53F0();
        sub_1DD86766C(v67, v68);
        v69 = sub_1DD6DF530();
        sub_1DD86766C(v69, v70);
        result = v62 & 1;
      }

      break;
  }

  return result;
}

uint64_t sub_1DD8675E4(uint64_t result, unint64_t a2)
{
  switch((a2 >> 60) & 3)
  {
    case 1uLL:
      return result;
    case 2uLL:
      a2 &= 0xCFFFFFFFFFFFFFFFLL;

      goto LABEL_4;
    case 3uLL:
      sub_1DD710E74(result, a2 & 0xCFFFFFFFFFFFFFFFLL);

      break;
    default:

LABEL_4:
      result = sub_1DD710E74(result, a2);
      break;
  }

  return result;
}

uint64_t sub_1DD86766C(uint64_t result, unint64_t a2)
{
  switch((a2 >> 60) & 3)
  {
    case 1uLL:
      return result;
    case 2uLL:
      a2 &= 0xCFFFFFFFFFFFFFFFLL;

      goto LABEL_4;
    case 3uLL:
      sub_1DD6E6658(result, a2 & 0xCFFFFFFFFFFFFFFFLL);

      break;
    default:

LABEL_4:
      result = sub_1DD6E6658(result, a2);
      break;
  }

  return result;
}

uint64_t sub_1DD8676F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616974726170 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656E6E6F63736964 && a2 == 0xED00006E6F697463;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001DD8B7FE0 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x80000001DD8B8000 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD875A30();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1DD867864(char a1)
{
  result = 0x6C616974726170;
  switch(a1)
  {
    case 1:
      result = 0x656E6E6F63736964;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD867908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD8676F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD867930(uint64_t a1)
{
  v2 = sub_1DD86800C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD86796C(uint64_t a1)
{
  v2 = sub_1DD86800C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD8679A8(uint64_t a1)
{
  v2 = sub_1DD8681B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD8679E4(uint64_t a1)
{
  v2 = sub_1DD8681B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD867A20(uint64_t a1)
{
  v2 = sub_1DD868060();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD867A5C(uint64_t a1)
{
  v2 = sub_1DD868060();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD867A98(uint64_t a1)
{
  v2 = sub_1DD868258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD867AD4(uint64_t a1)
{
  v2 = sub_1DD868258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD867B10(uint64_t a1)
{
  v2 = sub_1DD868108();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD867B4C(uint64_t a1)
{
  v2 = sub_1DD868108();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SnippetStreamingClient.StatusUpdate.Content.encode(to:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD16848, &qword_1DD8B1758);
  v6 = sub_1DD6DDEAC(v5);
  v54 = v7;
  v55 = v6;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6E0C6C();
  v53 = v11;
  v12 = sub_1DD710A9C(&qword_1ECD16850, &qword_1DD8B1760);
  v13 = sub_1DD6DDEAC(v12);
  v51 = v14;
  v52 = v13;
  v16 = *(v15 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6E0C6C();
  v50 = v18;
  v19 = sub_1DD710A9C(&qword_1ECD16858, &qword_1DD8B1768);
  v20 = sub_1DD6DDEAC(v19);
  v48 = v21;
  v49 = v20;
  v23 = *(v22 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v45 - v25;
  v27 = sub_1DD710A9C(&qword_1ECD16860, &qword_1DD8B1770);
  sub_1DD6DDEAC(v27);
  v47 = v28;
  v30 = *(v29 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6DDFE4();
  v32 = sub_1DD710A9C(&qword_1ECD16868, &qword_1DD8B1778);
  v33 = sub_1DD6DDEAC(v32);
  v57 = v34;
  v58 = v33;
  v36 = *(v35 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD6DE340();
  v38 = v0[1];
  v56 = *v0;
  v39 = v0[2];
  v45 = v0[3];
  v46 = v39;
  v40 = v4[3];
  sub_1DD6DEA7C(v4, v40);
  sub_1DD86800C();
  sub_1DD875BB0();
  switch((v38 >> 60) & 3)
  {
    case 1uLL:
      LOBYTE(v59) = 1;
      sub_1DD8681B0();
      sub_1DD6E6048();
      sub_1DD868204();
      v44 = v49;
      sub_1DD8759D0();
      (*(v48 + 8))(v26, v44);
      break;
    case 2uLL:
      LOBYTE(v59) = 2;
      sub_1DD868108();
      v41 = v50;
      sub_1DD6E6048();
      v59 = v56;
      v60 = v38 & 0xCFFFFFFFFFFFFFFFLL;
      sub_1DD86815C();
      v42 = v52;
      sub_1DD8759D0();
      v43 = v51;
      goto LABEL_5;
    case 3uLL:
      LOBYTE(v59) = 3;
      sub_1DD868060();
      v41 = v53;
      sub_1DD6E6048();
      v59 = v56;
      v60 = v38 & 0xCFFFFFFFFFFFFFFFLL;
      v61 = v46;
      v62 = v45;
      sub_1DD8680B4();
      v42 = v55;
      sub_1DD8759D0();
      v43 = v54;
LABEL_5:
      (*(v43 + 8))(v41, v42);
      break;
    default:
      LOBYTE(v59) = 0;
      sub_1DD868258();
      sub_1DD6E6048();
      v59 = v56;
      v60 = v38;
      sub_1DD8682AC();
      sub_1DD8759D0();
      (*(v47 + 8))(v2, v27);
      break;
  }

  (*(v57 + 8))(v1, v40);
  sub_1DD6E0C78();
}

unint64_t sub_1DD86800C()
{
  result = qword_1ECD16870;
  if (!qword_1ECD16870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16870);
  }

  return result;
}

unint64_t sub_1DD868060()
{
  result = qword_1ECD16878;
  if (!qword_1ECD16878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16878);
  }

  return result;
}

unint64_t sub_1DD8680B4()
{
  result = qword_1ECD16880;
  if (!qword_1ECD16880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16880);
  }

  return result;
}

unint64_t sub_1DD868108()
{
  result = qword_1ECD16888;
  if (!qword_1ECD16888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16888);
  }

  return result;
}

unint64_t sub_1DD86815C()
{
  result = qword_1ECD16890;
  if (!qword_1ECD16890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16890);
  }

  return result;
}

unint64_t sub_1DD8681B0()
{
  result = qword_1ECD16898;
  if (!qword_1ECD16898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16898);
  }

  return result;
}

unint64_t sub_1DD868204()
{
  result = qword_1ECD168A0;
  if (!qword_1ECD168A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD168A0);
  }

  return result;
}

unint64_t sub_1DD868258()
{
  result = qword_1ECD168A8;
  if (!qword_1ECD168A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD168A8);
  }

  return result;
}

unint64_t sub_1DD8682AC()
{
  result = qword_1ECD168B0;
  if (!qword_1ECD168B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD168B0);
  }

  return result;
}

void SnippetStreamingClient.StatusUpdate.Content.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v92 = v3;
  v89 = sub_1DD710A9C(&qword_1ECD168B8, &qword_1DD8B1780);
  sub_1DD6DDEAC(v89);
  v93 = v4;
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E0C6C();
  v95 = v8;
  v9 = sub_1DD710A9C(&qword_1ECD168C0, &qword_1DD8B1788);
  v10 = sub_1DD6DDEAC(v9);
  v90 = v11;
  v91 = v10;
  v13 = *(v12 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6E0C6C();
  v94 = v15;
  v16 = sub_1DD710A9C(&qword_1ECD168C8, &qword_1DD8B1790);
  v17 = sub_1DD6DDEAC(v16);
  v87 = v18;
  v88 = v17;
  v20 = *(v19 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v80 - v22;
  v24 = sub_1DD710A9C(&qword_1ECD168D0, &qword_1DD8B1798);
  sub_1DD6DDEAC(v24);
  v86 = v25;
  v27 = *(v26 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v80 - v29;
  v31 = sub_1DD710A9C(&qword_1ECD168D8, &unk_1DD8B17A0);
  sub_1DD6DDEAC(v31);
  v33 = v32;
  v35 = *(v34 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v80 - v37;
  v39 = v2[3];
  v40 = v2[4];
  v96 = v2;
  sub_1DD6DEA7C(v2, v39);
  sub_1DD86800C();
  sub_1DD875B90();
  if (v0)
  {
    goto LABEL_9;
  }

  v82 = v24;
  v83 = v30;
  v84 = v23;
  v41 = v95;
  v101 = v33;
  v42 = v38;
  v43 = sub_1DD875900();
  sub_1DD6ED750(v43, 0);
  if (v45 == v46 >> 1)
  {
LABEL_8:
    v55 = sub_1DD875740();
    swift_allocError();
    v57 = v56;
    v58 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v57 = &type metadata for SnippetStreamingClient.StatusUpdate.Content;
    sub_1DD875810();
    sub_1DD875730();
    (*(*(v55 - 8) + 104))(v57, *MEMORY[0x1E69E6AF8], v55);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v33 + 8))(v42, v31);
LABEL_9:
    v59 = v96;
LABEL_10:
    sub_1DD6E1EC8(v59);
    sub_1DD6E0C78();
    return;
  }

  v85 = v38;
  v81 = 0;
  if (v45 < (v46 >> 1))
  {
    v47 = *(v44 + v45);
    sub_1DD6ED830(v45 + 1);
    v49 = v48;
    v51 = v50;
    swift_unknownObjectRelease();
    v52 = v93;
    if (v49 == v51 >> 1)
    {
      v53 = v81;
      v54 = v92;
      switch(v47)
      {
        case 1:
          LOBYTE(v97) = 1;
          sub_1DD8681B0();
          v61 = v85;
          sub_1DD875800();
          if (v53)
          {
            (*(v101 + 8))(v61, v31);
            swift_unknownObjectRelease();
            goto LABEL_9;
          }

          sub_1DD86922C();
          sub_1DD6F3128();
          sub_1DD8758D0();
          sub_1DD6E71F0();
          swift_unknownObjectRelease();
          v76 = sub_1DD6E6AD4();
          v77(v76);
          v78 = sub_1DD6E0690();
          v79(v78);
          v74 = 0;
          v72 = 0;
          v73 = 0;
          v75 = 0x1000000000000000;
          break;
        case 2:
          LOBYTE(v97) = 2;
          sub_1DD868108();
          sub_1DD6FC518();
          sub_1DD8691D8();
          sub_1DD6F3128();
          sub_1DD8758D0();
          sub_1DD6E71F0();
          swift_unknownObjectRelease();
          v62 = sub_1DD6E6AD4();
          v63(v62);
          v64 = sub_1DD6E0690();
          v65(v64);
          v72 = 0;
          v73 = 0;
          v74 = v97;
          v75 = v98 | 0x2000000000000000;
          break;
        case 3:
          LOBYTE(v97) = 3;
          sub_1DD868060();
          sub_1DD6FC518();
          sub_1DD869184();
          v60 = v89;
          sub_1DD6F3128();
          sub_1DD8758D0();
          sub_1DD6E71F0();
          swift_unknownObjectRelease();
          (*(v52 + 8))(v41, v60);
          v66 = sub_1DD6E0690();
          v67(v66);
          v74 = v97;
          v72 = v99;
          v73 = v100;
          v75 = v98 | 0x3000000000000000;
          break;
        default:
          LOBYTE(v97) = 0;
          sub_1DD868258();
          sub_1DD6FC518();
          sub_1DD869280();
          sub_1DD6F3128();
          sub_1DD8758D0();
          sub_1DD6E71F0();
          swift_unknownObjectRelease();
          v68 = sub_1DD6E6AD4();
          v69(v68);
          v70 = sub_1DD6E0690();
          v71(v70);
          v72 = 0;
          v73 = 0;
          v74 = v97;
          v75 = v98;
          break;
      }

      v59 = v96;
      *v54 = v74;
      v54[1] = v75;
      v54[2] = v72;
      v54[3] = v73;
      goto LABEL_10;
    }

    v33 = v101;
    v42 = v85;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t SnippetStreamingClient.StatusUpdate.content.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1DD8675E4(v2, v3);
}

__n128 SnippetStreamingClient.StatusUpdate.content.setter(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  sub_1DD86766C(*v1, v1[1]);
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v6;
  return result;
}

__n128 SnippetStreamingClient.StatusUpdate.init(content:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t static SnippetStreamingClient.StatusUpdate.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v20[0] = *a1;
  v20[1] = v2;
  v20[2] = v3;
  v20[3] = v4;
  v19[0] = v5;
  v19[1] = v6;
  v19[2] = v7;
  v19[3] = v8;
  v9 = sub_1DD6DE6C8();
  sub_1DD8675E4(v9, v10);
  v11 = sub_1DD6E6614();
  sub_1DD8675E4(v11, v12);
  v13 = static SnippetStreamingClient.StatusUpdate.Content.== infix(_:_:)(v20, v19);
  v14 = sub_1DD6E6614();
  sub_1DD86766C(v14, v15);
  v16 = sub_1DD6DE6C8();
  sub_1DD86766C(v16, v17);
  return v13 & 1;
}

uint64_t sub_1DD868BA0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD868C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD868BA0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD868C60(uint64_t a1)
{
  v2 = sub_1DD8692D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD868C9C(uint64_t a1)
{
  v2 = sub_1DD8692D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SnippetStreamingClient.StatusUpdate.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v13 = sub_1DD710A9C(&qword_1ECD16900, &qword_1DD8B17B0);
  sub_1DD6DDEAC(v13);
  v14 = v4;
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DE340();
  v8 = *v0;
  v9 = v0[1];
  v10 = v0[2];
  v11 = v0[3];
  v12 = v3[4];
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD8675E4(v8, v9);
  sub_1DD8692D4();
  sub_1DD875BB0();
  sub_1DD869328();
  sub_1DD8759D0();
  sub_1DD86766C(v8, v9);
  (*(v14 + 8))(v1, v13);
  sub_1DD6E0C78();
}

void SnippetStreamingClient.StatusUpdate.init(from:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v5 = v4;
  v6 = sub_1DD710A9C(&qword_1ECD16918, &unk_1DD8B17B8);
  sub_1DD6DDEAC(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DDFE4();
  v12 = v3[4];
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD8692D4();
  sub_1DD875B90();
  if (!v0)
  {
    sub_1DD86937C();
    sub_1DD8758D0();
    (*(v8 + 8))(v1, v6);
    *v5 = v13;
    v5[1] = v14;
  }

  sub_1DD6E1EC8(v3);
  sub_1DD6E0C78();
}

uint64_t sub_1DD869034@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SnippetStreamingClient.ReverseServerClient.__allocating_init(existingConnection:localObject:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t SnippetStreamingClientError.hashValue.getter()
{
  v1 = *v0;
  sub_1DD875B20();
  MEMORY[0x1E12B5570](v1);
  return sub_1DD875B60();
}

uint64_t sub_1DD869100(uint64_t a1)
{
  v2 = sub_1DD86A408();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DD86913C(uint64_t a1)
{
  v2 = sub_1DD86A408();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1DD869184()
{
  result = qword_1ECD168E0;
  if (!qword_1ECD168E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD168E0);
  }

  return result;
}

unint64_t sub_1DD8691D8()
{
  result = qword_1ECD168E8;
  if (!qword_1ECD168E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD168E8);
  }

  return result;
}

unint64_t sub_1DD86922C()
{
  result = qword_1ECD168F0;
  if (!qword_1ECD168F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD168F0);
  }

  return result;
}

unint64_t sub_1DD869280()
{
  result = qword_1ECD168F8;
  if (!qword_1ECD168F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD168F8);
  }

  return result;
}

unint64_t sub_1DD8692D4()
{
  result = qword_1ECD16908;
  if (!qword_1ECD16908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16908);
  }

  return result;
}

unint64_t sub_1DD869328()
{
  result = qword_1ECD16910;
  if (!qword_1ECD16910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16910);
  }

  return result;
}

unint64_t sub_1DD86937C()
{
  result = qword_1ECD16920;
  if (!qword_1ECD16920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16920);
  }

  return result;
}

uint64_t sub_1DD8693D0(uint64_t a1, uint64_t a2)
{
  result = sub_1DD869474(&qword_1ECD167D0, a2, type metadata accessor for SnippetStreamingClient);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DD869474(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1DD8694C0()
{
  result = qword_1EE015190;
  if (!qword_1EE015190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015190);
  }

  return result;
}

unint64_t sub_1DD869518()
{
  result = qword_1ECD16928;
  if (!qword_1ECD16928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16928);
  }

  return result;
}

unint64_t sub_1DD869570()
{
  result = qword_1ECD16930;
  if (!qword_1ECD16930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16930);
  }

  return result;
}

uint64_t sub_1DD869660(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 16))
    {
      return sub_1DD6DEAA4(*a1 + 12);
    }

    v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
    if (v3 >= 0xC)
    {
      return sub_1DD6DEAA4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return sub_1DD6DEAA4(v3);
}

_BYTE *sub_1DD86974C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SnippetStreamingClient.StatusUpdate.Content.FailedCompletion.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DD869964(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD869A14()
{
  result = qword_1ECD16938;
  if (!qword_1ECD16938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16938);
  }

  return result;
}

unint64_t sub_1DD869A6C()
{
  result = qword_1ECD16940;
  if (!qword_1ECD16940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16940);
  }

  return result;
}

unint64_t sub_1DD869AC4()
{
  result = qword_1ECD16948;
  if (!qword_1ECD16948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16948);
  }

  return result;
}

unint64_t sub_1DD869B1C()
{
  result = qword_1ECD16950;
  if (!qword_1ECD16950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16950);
  }

  return result;
}

unint64_t sub_1DD869B74()
{
  result = qword_1ECD16958;
  if (!qword_1ECD16958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16958);
  }

  return result;
}

unint64_t sub_1DD869BCC()
{
  result = qword_1ECD16960;
  if (!qword_1ECD16960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16960);
  }

  return result;
}

unint64_t sub_1DD869C24()
{
  result = qword_1ECD16968;
  if (!qword_1ECD16968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16968);
  }

  return result;
}

unint64_t sub_1DD869C7C()
{
  result = qword_1ECD16970;
  if (!qword_1ECD16970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16970);
  }

  return result;
}

unint64_t sub_1DD869CD4()
{
  result = qword_1ECD16978;
  if (!qword_1ECD16978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16978);
  }

  return result;
}

unint64_t sub_1DD869D2C()
{
  result = qword_1ECD16980;
  if (!qword_1ECD16980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16980);
  }

  return result;
}

unint64_t sub_1DD869D84()
{
  result = qword_1ECD16988;
  if (!qword_1ECD16988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16988);
  }

  return result;
}

unint64_t sub_1DD869DDC()
{
  result = qword_1ECD16990;
  if (!qword_1ECD16990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16990);
  }

  return result;
}

unint64_t sub_1DD869E34()
{
  result = qword_1ECD16998;
  if (!qword_1ECD16998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16998);
  }

  return result;
}

unint64_t sub_1DD869E8C()
{
  result = qword_1ECD169A0;
  if (!qword_1ECD169A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD169A0);
  }

  return result;
}

unint64_t sub_1DD869EE4()
{
  result = qword_1ECD169A8;
  if (!qword_1ECD169A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD169A8);
  }

  return result;
}

unint64_t sub_1DD869F3C()
{
  result = qword_1ECD169B0;
  if (!qword_1ECD169B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD169B0);
  }

  return result;
}

unint64_t sub_1DD869F94()
{
  result = qword_1ECD169B8;
  if (!qword_1ECD169B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD169B8);
  }

  return result;
}

unint64_t sub_1DD869FEC()
{
  result = qword_1ECD169C0;
  if (!qword_1ECD169C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD169C0);
  }

  return result;
}

unint64_t sub_1DD86A044()
{
  result = qword_1ECD169C8;
  if (!qword_1ECD169C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD169C8);
  }

  return result;
}

unint64_t sub_1DD86A09C()
{
  result = qword_1ECD169D0;
  if (!qword_1ECD169D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD169D0);
  }

  return result;
}

unint64_t sub_1DD86A0F4()
{
  result = qword_1ECD169D8;
  if (!qword_1ECD169D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD169D8);
  }

  return result;
}

unint64_t sub_1DD86A14C()
{
  result = qword_1ECD169E0;
  if (!qword_1ECD169E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD169E0);
  }

  return result;
}

unint64_t sub_1DD86A1A4()
{
  result = qword_1ECD169E8;
  if (!qword_1ECD169E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD169E8);
  }

  return result;
}

unint64_t sub_1DD86A1FC()
{
  result = qword_1ECD169F0;
  if (!qword_1ECD169F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD169F0);
  }

  return result;
}

unint64_t sub_1DD86A254()
{
  result = qword_1ECD169F8;
  if (!qword_1ECD169F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD169F8);
  }

  return result;
}

unint64_t sub_1DD86A2AC()
{
  result = qword_1ECD16A00;
  if (!qword_1ECD16A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16A00);
  }

  return result;
}

unint64_t sub_1DD86A304()
{
  result = qword_1ECD16A08;
  if (!qword_1ECD16A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16A08);
  }

  return result;
}

unint64_t sub_1DD86A35C()
{
  result = qword_1ECD16A10;
  if (!qword_1ECD16A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16A10);
  }

  return result;
}

unint64_t sub_1DD86A3B4()
{
  result = qword_1ECD16A18;
  if (!qword_1ECD16A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16A18);
  }

  return result;
}

unint64_t sub_1DD86A408()
{
  result = qword_1ECD16A20;
  if (!qword_1ECD16A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16A20);
  }

  return result;
}

id static ToolboxXPCService.interface.getter()
{
  if (qword_1ECD0DFF8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECD16A30;

  return v1;
}

uint64_t sub_1DD86A540()
{
  sub_1DD710A9C(&qword_1ECD16C18, &qword_1DD8B3330);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD87AAA0;
  *(v0 + 32) = sel_queryWithPlannerType_query_k_bundleIDs_clientIdentifier_availableClientActions_with_;
  *(v0 + 40) = 0;
  sub_1DD710A9C(&qword_1ECD16C20, &qword_1DD8B3338);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DD8782F0;
  v2 = type metadata accessor for ToolboxSearchResult();
  v3 = sub_1DD710A9C(&qword_1ECD16C28, &qword_1DD8B3340);
  *(v1 + 56) = v3;
  v4 = v3;
  *(v1 + 32) = v2;
  v24 = sub_1DD804C4C(0, &qword_1ECD16C30, 0x1E695DEC8);
  v5 = sub_1DD710A9C(&qword_1ECD16C38, &qword_1DD8B3348);
  *(v1 + 88) = v5;
  v6 = v5;
  v23 = v5;
  *(v1 + 64) = v24;
  sub_1DD804C4C(0, &unk_1ECD16C40, 0x1E695DFD8);
  v7 = MEMORY[0x1E12B4F80](v1);
  sub_1DD804C4C(0, &qword_1ECD0E2A8, 0x1E69E58C0);
  sub_1DD87120C();
  v8 = sub_1DD875410();

  v9 = sub_1DD86A828(v8);

  *(v0 + 48) = v9;
  *(v0 + 56) = sel_queryWithPlannerType_query_k_clientIdentifier_availableClientActions_with_;
  *(v0 + 64) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD8782F0;
  *(v10 + 32) = v2;
  *(v10 + 88) = v6;
  *(v10 + 56) = v4;
  *(v10 + 64) = v24;
  v11 = MEMORY[0x1E12B4F80]();
  v12 = sub_1DD875410();

  v13 = sub_1DD86A828(v12);

  *(v0 + 72) = v13;
  *(v0 + 80) = sel_queryWithPlannerType_query_bundleIDs_with_;
  *(v0 + 88) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DD8782F0;
  *(v14 + 32) = v2;
  *(v14 + 88) = v23;
  *(v14 + 56) = v4;
  *(v14 + 64) = v24;
  v15 = MEMORY[0x1E12B4F80]();
  v16 = sub_1DD875410();

  v17 = sub_1DD86A828(v16);

  *(v0 + 96) = v17;
  *(v0 + 104) = sel_queryWithPlannerType_query_toolIDs_with_;
  *(v0 + 112) = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DD8782F0;
  *(v18 + 32) = v2;
  *(v18 + 88) = v23;
  *(v18 + 56) = v4;
  *(v18 + 64) = v24;
  v19 = MEMORY[0x1E12B4F80]();
  v20 = sub_1DD875410();

  v21 = sub_1DD86A828(v20);

  *(v0 + 120) = v21;
  qword_1ECD16A38 = v0;
  return result;
}

uint64_t sub_1DD86A828(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1DD875630())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x1E69E7CD0];
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1DD710A9C(&qword_1ECD16C58, &unk_1DD8B3350);
  v3 = sub_1DD875680();
  if (v2)
  {
LABEL_4:

    sub_1DD875620();
    sub_1DD804C4C(0, &qword_1ECD0E2A8, 0x1E69E58C0);
    sub_1DD87120C();
    result = sub_1DD875470();
    v1 = v31;
    v5 = v32;
    v6 = v33;
    v7 = v34;
    v8 = v35;
    goto LABEL_11;
  }

LABEL_7:
  v9 = -1 << *(v1 + 32);
  v5 = v1 + 56;
  v6 = ~v9;
  v10 = -v9;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v8 = v11 & *(v1 + 56);

  v7 = 0;
LABEL_11:
  v12 = v3 + 56;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v8)
  {
    v13 = v7;
LABEL_21:
    v16 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v17 = *(*(v1 + 48) + ((v13 << 9) | (8 * v16)));
    while (1)
    {
      sub_1DD804C4C(0, &qword_1ECD0E2A8, 0x1E69E58C0);
      swift_dynamicCast();
      v18 = *(v3 + 40);
      result = sub_1DD875650();
      v19 = -1 << *(v3 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        break;
      }

      v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
      *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v27 = *(v3 + 48) + 40 * v22;
      *(v27 + 32) = v30;
      *v27 = v28;
      *(v27 + 16) = v29;
      ++*(v3 + 16);
      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_14:
      v14 = sub_1DD875640();
      if (!v14)
      {
        goto LABEL_33;
      }

      *&v28 = v14;
      sub_1DD804C4C(0, &qword_1ECD0E2A8, 0x1E69E58C0);
      swift_dynamicCast();
    }

    v23 = 0;
    v24 = (63 - v19) >> 6;
    while (++v21 != v24 || (v23 & 1) == 0)
    {
      v25 = v21 == v24;
      if (v21 == v24)
      {
        v21 = 0;
      }

      v23 |= v25;
      v26 = *(v12 + 8 * v21);
      if (v26 != -1)
      {
        v22 = __clz(__rbit64(~v26)) + (v21 << 6);
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = v7;
    while (1)
    {
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v13 >= ((v6 + 64) >> 6))
      {
LABEL_33:
        sub_1DD82414C();

        return v3;
      }

      v8 = *(v5 + 8 * v13);
      ++v15;
      if (v8)
      {
        v7 = v13;
        goto LABEL_21;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t static ToolboxXPCService.selectorClasses.getter()
{
  if (qword_1ECD0E000 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DD86ABFC()
{
  v0 = sub_1DD874ED0();
  sub_1DD732C90(v0, qword_1ECD16A40);
  sub_1DD6E1224(v0, qword_1ECD16A40);
  return sub_1DD874C00();
}

uint64_t static ToolboxXPCService.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECD0E008 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD874ED0();
  v3 = sub_1DD6E1224(v2, qword_1ECD16A40);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void Readiness.init(toolKitTools:assistantSchemas:totalEmbeddings:isToolboxIndexingFinished:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_1DD6E1CBC();
  a16 = v22;
  a17 = v23;
  sub_1DD6DFFBC();
  ObjectType = swift_getObjectType();
  *&v18[OBJC_IVAR____TtC16IntelligenceFlow9Readiness_toolKitTools] = v21;
  *&v18[OBJC_IVAR____TtC16IntelligenceFlow9Readiness_assistantSchemas] = v20;
  *&v18[OBJC_IVAR____TtC16IntelligenceFlow9Readiness_totalEmbeddings] = v19;
  v18[OBJC_IVAR____TtC16IntelligenceFlow9Readiness_isToolboxIndexingFinished] = v17;
  a9.receiver = v18;
  a9.super_class = ObjectType;
  objc_msgSendSuper2(&a9, sel_init);
  sub_1DD6E63F0();
}

uint64_t static Readiness.supportsSecureCoding.setter(char a1)
{
  result = sub_1DD6E098C();
  byte_1ECD16A58 = a1;
  return result;
}

uint64_t sub_1DD86AF00@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECD16A58;
  return result;
}

uint64_t sub_1DD86AF4C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECD16A58 = v1;
  return result;
}

Swift::Void __swiftcall Readiness.encode(with:)(NSCoder with)
{
  sub_1DD6E1CBC();
  v3 = v2;
  v4 = *(v1 + OBJC_IVAR____TtC16IntelligenceFlow9Readiness_toolKitTools);
  v5 = sub_1DD875110();
  sub_1DD6E0E8C(v5, sel_encodeObject_forKey_);

  v6 = *(v1 + OBJC_IVAR____TtC16IntelligenceFlow9Readiness_assistantSchemas);
  v7 = sub_1DD875110();
  sub_1DD6E0E8C(v7, sel_encodeObject_forKey_);

  v8 = *(v1 + OBJC_IVAR____TtC16IntelligenceFlow9Readiness_totalEmbeddings);
  v9 = sub_1DD6E6D1C();
  sub_1DD6E0E8C(v9, sel_encodeInteger_forKey_);

  v10 = *(v1 + OBJC_IVAR____TtC16IntelligenceFlow9Readiness_isToolboxIndexingFinished);
  sub_1DD875110();
  sub_1DD6DEC88();
  [v3 encodeBool:v10 forKey:?];
  sub_1DD6E63F0();
}

void Readiness.init(coder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_1DD6E1CBC();
  a16 = v18;
  a17 = v19;
  sub_1DD6E2854();
  ObjectType = swift_getObjectType();
  type metadata accessor for ToolBoxIndexedSource();
  v21 = sub_1DD875550();
  if (v21)
  {
    *&v17[OBJC_IVAR____TtC16IntelligenceFlow9Readiness_toolKitTools] = v21;
    sub_1DD6E4A28();
    sub_1DD6E596C();
    v22 = sub_1DD875550();
    if (v22)
    {
      *&v17[OBJC_IVAR____TtC16IntelligenceFlow9Readiness_assistantSchemas] = v22;
      v23 = sub_1DD6E6D1C();
      v24 = [v17 decodeIntegerForKey_];

      *&v17[OBJC_IVAR____TtC16IntelligenceFlow9Readiness_totalEmbeddings] = v24;
      v25 = sub_1DD875110();
      LOBYTE(v24) = [v17 decodeBoolForKey_];

      v17[OBJC_IVAR____TtC16IntelligenceFlow9Readiness_isToolboxIndexingFinished] = v24;
      a9.receiver = v17;
      a9.super_class = ObjectType;
      objc_msgSendSuper2(&a9, sel_init);

      sub_1DD6E63F0();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id ToolBoxIndexedSource.init(upToDateWithSource:eligibleTools:)(char a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR____TtC16IntelligenceFlow20ToolBoxIndexedSource_upToDateWithSource] = a1;
  *&v2[OBJC_IVAR____TtC16IntelligenceFlow20ToolBoxIndexedSource_eligibleTools] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t static ToolBoxIndexedSource.supportsSecureCoding.setter(char a1)
{
  result = sub_1DD6E098C();
  byte_1ECD16A59 = a1;
  return result;
}

uint64_t sub_1DD86B518@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECD16A59;
  return result;
}

uint64_t sub_1DD86B564(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECD16A59 = v1;
  return result;
}

Swift::Void __swiftcall ToolBoxIndexedSource.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC16IntelligenceFlow20ToolBoxIndexedSource_upToDateWithSource);
  v4 = sub_1DD6DE0F4();
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC16IntelligenceFlow20ToolBoxIndexedSource_eligibleTools);
  sub_1DD6E71FC();
  sub_1DD6DEC88();
  [(objc_class *)with.super.isa encodeInteger:v5 forKey:?];
}

void ToolBoxIndexedSource.init(coder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_1DD6E1CBC();
  a16 = v19;
  a17 = v20;
  sub_1DD8712F8();
  ObjectType = swift_getObjectType();
  v22 = sub_1DD6DE0F4();
  v23 = [v17 decodeBoolForKey_];

  v18[OBJC_IVAR____TtC16IntelligenceFlow20ToolBoxIndexedSource_upToDateWithSource] = v23;
  v24 = sub_1DD6E71FC();
  v25 = [v17 decodeIntegerForKey_];

  *&v18[OBJC_IVAR____TtC16IntelligenceFlow20ToolBoxIndexedSource_eligibleTools] = v25;
  a9.receiver = v18;
  a9.super_class = ObjectType;
  objc_msgSendSuper2(&a9, sel_init);

  sub_1DD6E63F0();
}

id ToolboxIndexedMetadata.init(id:name:toolDescription:positiveUtterances:negativeUtterances:)()
{
  sub_1DD6FC538();
  ObjectType = swift_getObjectType();
  v10 = &v1[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_id];
  *v10 = v8;
  *(v10 + 1) = v7;
  v11 = &v1[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_name];
  *v11 = v6;
  *(v11 + 1) = v5;
  v12 = &v1[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_toolDescription];
  *v12 = v4;
  *(v12 + 1) = v3;
  *&v1[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_positiveUtterances] = v2;
  *&v1[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_negativeUtterances] = v0;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t static ToolboxIndexedMetadata.supportsSecureCoding.setter(char a1)
{
  result = sub_1DD6E098C();
  byte_1ECD16A5A = a1;
  return result;
}

uint64_t sub_1DD86BAA0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECD16A5A;
  return result;
}

uint64_t sub_1DD86BAEC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECD16A5A = v1;
  return result;
}

Swift::Void __swiftcall ToolboxIndexedMetadata.encode(with:)(NSCoder with)
{
  sub_1DD6E1CBC();
  v2 = *&v1[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_id];
  v3 = *&v1[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_id + 8];
  v4 = sub_1DD875110();
  v5 = sub_1DD875110();
  sub_1DD6E0E8C(v5, sel_encodeObject_forKey_);

  v6 = *&v1[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_name];
  v7 = *&v1[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_name + 8];
  v8 = sub_1DD875110();
  v9 = sub_1DD875110();
  sub_1DD6E0E8C(v9, sel_encodeObject_forKey_);

  v10 = [v1 description];
  if (!v10)
  {
    sub_1DD875140();
    v10 = sub_1DD875110();
  }

  v11 = sub_1DD875110();
  sub_1DD6E0E8C(v11, sel_encodeObject_forKey_);

  v12 = *&v1[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_positiveUtterances];
  v13 = sub_1DD8752C0();
  v14 = sub_1DD6DE0F4();
  v15 = sub_1DD6DEB2C();
  [v15 v16];

  v17 = *&v1[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_negativeUtterances];
  v18 = sub_1DD8752C0();
  sub_1DD6DE0F4();
  sub_1DD6DEC88();
  v19 = sub_1DD6DEB2C();
  [v19 v20];

  sub_1DD6E63F0();
}

unint64_t ToolboxIndexedMetadata.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1DD8712F8());
  sub_1DD6E2854();
  return ToolboxIndexedMetadata.init(coder:)();
}

unint64_t ToolboxIndexedMetadata.init(coder:)()
{
  sub_1DD6E2854();
  ObjectType = swift_getObjectType();
  sub_1DD804C4C(0, &qword_1ECD16AB8, 0x1E696AEC0);
  result = sub_1DD875550();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  v4 = sub_1DD875140();
  v6 = v5;

  v7 = &v0[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_id];
  *v7 = v4;
  v7[1] = v6;
  result = sub_1DD875550();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  v9 = sub_1DD875140();
  v11 = v10;

  v12 = &v0[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_name];
  *v12 = v9;
  v12[1] = v11;
  result = sub_1DD875550();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = result;
  v14 = sub_1DD875140();
  v16 = v15;

  v17 = &v0[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_toolDescription];
  *v17 = v14;
  v17[1] = v16;
  sub_1DD6E4A28();
  sub_1DD6E596C();
  result = sub_1DD875560();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = sub_1DD86BF4C(result);

  *&v0[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_positiveUtterances] = v18;
  sub_1DD6E4A28();
  sub_1DD6E596C();
  result = sub_1DD875560();
  if (result)
  {
    v19 = sub_1DD86BF4C(result);

    *&v0[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_negativeUtterances] = v19;
    v21.receiver = v0;
    v21.super_class = ObjectType;
    v20 = objc_msgSendSuper2(&v21, sel_init);

    return v20;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1DD86BF4C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1DD875630();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1DD76C4A4(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12B5160](0, a1);
    }

    else
    {
      v4 = *(a1 + 32);
    }

    result = sub_1DD875120();
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD86C0EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x637365446C6F6F74 && a2 == 0xEF6E6F6974706972;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001DD8B8110 == a2;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000012 && 0x80000001DD8B8130 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DD875A30();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1DD86C29C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x637365446C6F6F74;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD86C338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD86C0EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD86C360(uint64_t a1)
{
  v2 = sub_1DD86C648();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD86C39C(uint64_t a1)
{
  v2 = sub_1DD86C648();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ToolboxIndexedMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1DD710A9C(&qword_1ECD16AC0, &unk_1DD8B2DD0);
  sub_1DD6DDEAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD86C648();
  sub_1DD6E1808();
  v14 = *(v3 + OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_id);
  v15 = *(v3 + OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_id + 8);
  v22 = 0;
  sub_1DD6F329C();
  sub_1DD875970();
  if (!v2)
  {
    v16 = *(v3 + OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_name);
    v17 = *(v3 + OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_name + 8);
    v22 = 1;
    sub_1DD6F329C();
    sub_1DD875970();
    v18 = *(v3 + OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_toolDescription);
    v19 = *(v3 + OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_toolDescription + 8);
    v22 = 2;
    sub_1DD6F329C();
    sub_1DD875920();
    sub_1DD6EEE18(OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_positiveUtterances);
    HIBYTE(v21) = 3;
    sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    sub_1DD703B00(&qword_1EE015DC0);
    sub_1DD6ED724();
    sub_1DD6EEE18(OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_negativeUtterances);
    HIBYTE(v21) = 4;
    sub_1DD6ED724();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_1DD86C648()
{
  result = qword_1ECD16AC8;
  if (!qword_1ECD16AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16AC8);
  }

  return result;
}

void ToolboxIndexedMetadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  v13 = v12;
  ObjectType = swift_getObjectType();
  v14 = sub_1DD710A9C(&unk_1ECD16AE0, &qword_1DD8B2DE0);
  sub_1DD6DDEAC(v14);
  v16 = *(v15 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  v18 = v13[4];
  sub_1DD6DF224(v13, v13[3]);
  sub_1DD86C648();
  sub_1DD6E1030();
  if (v11)
  {
    sub_1DD6E1EC8(v13);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1DD6EE298();
    v19 = sub_1DD875870();
    v20 = &v10[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_id];
    *v20 = v19;
    v20[1] = v21;
    sub_1DD6EE298();
    v22 = sub_1DD875870();
    v23 = &v10[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_name];
    *v23 = v22;
    v23[1] = v24;
    LOBYTE(a10) = 2;
    v25 = sub_1DD875820();
    v26 = &v10[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_toolDescription];
    *v26 = v25;
    v26[1] = v27;
    sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    v32 = 3;
    sub_1DD703B00(&qword_1EE015DB8);
    sub_1DD6EE298();
    sub_1DD8758D0();
    *&v10[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_positiveUtterances] = a10;
    v32 = 4;
    sub_1DD6EE298();
    sub_1DD8758D0();
    *&v10[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_negativeUtterances] = a10;
    v31.receiver = v10;
    v31.super_class = ObjectType;
    objc_msgSendSuper2(&v31, sel_init);
    v28 = sub_1DD6E0BEC();
    v29(v28);
    sub_1DD6E1EC8(v13);
  }

  sub_1DD6E0C78();
}

void sub_1DD86CA50(void *a1@<X8>)
{
  ToolboxIndexedMetadata.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

id ToolboxIndexedTools.init(tools:assistantSchemas:)(uint64_t a1, uint64_t a2)
{
  sub_1DD6E5E30();
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC16IntelligenceFlow19ToolboxIndexedTools_tools] = v3;
  *&v2[OBJC_IVAR____TtC16IntelligenceFlow19ToolboxIndexedTools_assistantSchemas] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t static ToolboxIndexedTools.supportsSecureCoding.setter(char a1)
{
  result = sub_1DD6E098C();
  byte_1ECD16A5B = a1;
  return result;
}

uint64_t sub_1DD86CC48@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECD16A5B;
  return result;
}

uint64_t sub_1DD86CC94(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECD16A5B = v1;
  return result;
}

Swift::Void __swiftcall ToolboxIndexedTools.encode(with:)(NSCoder with)
{
  sub_1DD6E1CBC();
  v2 = *(v1 + OBJC_IVAR____TtC16IntelligenceFlow19ToolboxIndexedTools_tools);
  type metadata accessor for ToolboxIndexedMetadata();
  v3 = sub_1DD8752C0();
  v4 = sub_1DD875110();
  v5 = sub_1DD6DEB2C();
  [v5 v6];

  v7 = *(v1 + OBJC_IVAR____TtC16IntelligenceFlow19ToolboxIndexedTools_assistantSchemas);
  v8 = sub_1DD8752C0();
  sub_1DD875110();
  sub_1DD6DEC88();
  v9 = sub_1DD6DEB2C();
  [v9 v10];

  sub_1DD6E63F0();
}

uint64_t ToolboxIndexedTools.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1DD8712F8());
  sub_1DD6E2854();
  return ToolboxIndexedTools.init(coder:)();
}

uint64_t ToolboxIndexedTools.init(coder:)()
{
  sub_1DD6E2854();
  ObjectType = swift_getObjectType();
  type metadata accessor for ToolboxIndexedMetadata();
  result = sub_1DD875560();
  if (result)
  {
    *&v0[OBJC_IVAR____TtC16IntelligenceFlow19ToolboxIndexedTools_tools] = result;
    sub_1DD6E4A28();
    sub_1DD6E596C();
    result = sub_1DD875560();
    if (result)
    {
      *&v0[OBJC_IVAR____TtC16IntelligenceFlow19ToolboxIndexedTools_assistantSchemas] = result;
      v4.receiver = v0;
      v4.super_class = ObjectType;
      v3 = objc_msgSendSuper2(&v4, sel_init);

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id ToolboxIndexedTools.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1DD86CFC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736C6F6F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DD8B8050 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD86D094(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x736C6F6F74;
  }
}

uint64_t sub_1DD86D0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD86CFC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD86D0FC(uint64_t a1)
{
  v2 = sub_1DD86D350();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD86D138(uint64_t a1)
{
  v2 = sub_1DD86D350();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ToolboxIndexedTools.encode(to:)(void *a1)
{
  v3 = sub_1DD710A9C(&qword_1ECD16B00, &qword_1DD8B2DE8);
  sub_1DD6DDEAC(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD86D350();
  sub_1DD6E1808();
  sub_1DD6EEE18(OBJC_IVAR____TtC16IntelligenceFlow19ToolboxIndexedTools_tools);
  HIBYTE(v13) = 0;
  sub_1DD710A9C(&qword_1ECD16B10, &qword_1DD8B2DF0);
  sub_1DD86D60C();
  sub_1DD6ED724();
  if (!v1)
  {
    sub_1DD6EEE18(OBJC_IVAR____TtC16IntelligenceFlow19ToolboxIndexedTools_assistantSchemas);
    HIBYTE(v13) = 1;
    sub_1DD6ED724();
  }

  return (*(v5 + 8))(v10, v3);
}

unint64_t sub_1DD86D350()
{
  result = qword_1ECD16B08;
  if (!qword_1ECD16B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16B08);
  }

  return result;
}

void ToolboxIndexedTools.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  sub_1DD6F17D0();
  ObjectType = swift_getObjectType();
  v13 = sub_1DD710A9C(&qword_1ECD16B28, &qword_1DD8B2DF8);
  sub_1DD6DDEAC(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  v19 = v12[4];
  sub_1DD6DF224(v12, v12[3]);
  sub_1DD86D350();
  sub_1DD6E1030();
  if (v11)
  {
    sub_1DD6E1EC8(v12);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1DD710A9C(&qword_1ECD16B10, &qword_1DD8B2DF0);
    sub_1DD86D60C();
    sub_1DD6E6628();
    *&v10[OBJC_IVAR____TtC16IntelligenceFlow19ToolboxIndexedTools_tools] = a10;
    v25 = 1;
    sub_1DD6E6628();
    *&v10[OBJC_IVAR____TtC16IntelligenceFlow19ToolboxIndexedTools_assistantSchemas] = a10;
    v24.receiver = v10;
    v24.super_class = ObjectType;
    objc_msgSendSuper2(&v24, sel_init);
    v20 = *(v15 + 8);
    v21 = sub_1DD6E6384();
    v22(v21);
    sub_1DD6E1EC8(v12);
  }

  sub_1DD6E0C78();
}

void sub_1DD86D60C()
{
  sub_1DD6E1CBC();
  v2 = v1;
  if (!*v1)
  {
    v3 = v0;
    sub_1DD717E88(&qword_1ECD16B10, &qword_1DD8B2DF0);
    sub_1DD86D6A0(v3, v4, type metadata accessor for ToolboxIndexedMetadata);
    atomic_store(swift_getWitnessTable(), v2);
  }

  sub_1DD6E63F0();
}

uint64_t sub_1DD86D6A0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1DD86D6E8(void *a1@<X8>)
{
  ToolboxIndexedTools.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

id ToolboxSearchResult.init(similarity:toolEmbeddingSnippet:)()
{
  sub_1DD6ED200();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16IntelligenceFlow19ToolboxSearchResult_similarity] = v3;
  v5 = &v1[OBJC_IVAR____TtC16IntelligenceFlow19ToolboxSearchResult_toolEmbeddingSnippet];
  *v5 = v2;
  *(v5 + 1) = v0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t static ToolboxSearchResult.supportsSecureCoding.setter(char a1)
{
  result = sub_1DD6E098C();
  byte_1ECD16A5C = a1;
  return result;
}

uint64_t sub_1DD86D910@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECD16A5C;
  return result;
}

uint64_t sub_1DD86D95C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECD16A5C = v1;
  return result;
}

Swift::Void __swiftcall ToolboxSearchResult.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC16IntelligenceFlow19ToolboxSearchResult_similarity);
  v4 = sub_1DD871304();
  LODWORD(v5) = v3;
  [(objc_class *)with.super.isa encodeFloat:v4 forKey:v5];

  v6 = *(v1 + OBJC_IVAR____TtC16IntelligenceFlow19ToolboxSearchResult_toolEmbeddingSnippet);
  v7 = *(v1 + OBJC_IVAR____TtC16IntelligenceFlow19ToolboxSearchResult_toolEmbeddingSnippet + 8);
  v8 = sub_1DD875110();
  sub_1DD875110();
  sub_1DD6DEC88();
  [(objc_class *)with.super.isa encodeObject:v8 forKey:?];
}

uint64_t ToolboxSearchResult.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1DD8712F8());
  sub_1DD6E2854();
  return ToolboxSearchResult.init(coder:)();
}

uint64_t ToolboxSearchResult.init(coder:)()
{
  sub_1DD6E2854();
  swift_getObjectType();
  sub_1DD804C4C(0, &qword_1ECD16AB8, 0x1E696AEC0);
  v1 = sub_1DD875550();
  if (v1)
  {
    v2 = v1;
    v4 = 0;
    sub_1DD875130();
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id _s16IntelligenceFlow19ToolboxIndexedToolsCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ToolboxClient.__allocating_init()()
{
  v0 = swift_allocObject();
  ToolboxClient.init()(v0, v1);
  return v0;
}

uint64_t ToolboxClient.init()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  sub_1DD86D6A0(&qword_1ECD16B50, a2, type metadata accessor for ToolboxClient);
  v3 = sub_1DD710A9C(&qword_1ECD16B58, &qword_1DD8B2E00);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  v6 = sub_1DD874D10();
  v7 = *(v2 + 16);
  *(v2 + 16) = v6;

  return v2;
}

uint64_t sub_1DD86DDE4()
{
  v0 = sub_1DD874B60();
  sub_1DD86D6A0(&qword_1ECD16B60, 255, MEMORY[0x1E69A90C0]);
  swift_allocError();
  (*(*(v0 - 8) + 104))(v1, *MEMORY[0x1E69A90B8], v0);
  return swift_willThrow();
}

void sub_1DD86DEA4(unsigned __int8 *a1)
{
  if (*(v1 + 16))
  {
    v2 = sub_1DD6E06A4(a1);
    MEMORY[0x1EEE9AC00](v2);
    sub_1DD6F0AB4();
    type metadata accessor for Readiness();
    sub_1DD6E5E30();

    sub_1DD6E5404();
    sub_1DD874CF0();
    sub_1DD6FBEB4();
    sub_1DD6DE418();
  }

  else
  {
    __break(1u);
  }
}

void sub_1DD86DFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1DD875110();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1DD8712F0;
  v10[3] = &unk_1F58E78C8;
  v9 = _Block_copy(v10);

  [a5 readinessWithPlannerType:v8 with:v9];
  _Block_release(v9);
}

void sub_1DD86E07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1DD6DED2C();
  v12 = v10;
  v14 = v13;
  v15 = sub_1DD874ED0();
  v16 = sub_1DD6DDEAC(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v49 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v48 - v24;
  if (*(v10 + 16))
  {
    v26 = *v14;
    MEMORY[0x1EEE9AC00](v23);
    *(&v48 - 16) = v26;
    sub_1DD804C4C(0, &qword_1EE018CD8, 0x1E696AD98);
    sub_1DD6E5E30();

    sub_1DD874CF0();

    if (!v11)
    {
      v48 = a10;
      v27 = (v18 + 8);
      v28 = -300;
      do
      {
        if (!v28)
        {
          break;
        }

        sub_1DD874C00();
        v29 = sub_1DD874EC0();
        v30 = sub_1DD8754C0();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v50 = v28;
          v32 = v25;
          v33 = v27;
          v34 = v26;
          v35 = v12;
          v36 = v15;
          v37 = v31;
          *v31 = 0;
          _os_log_impl(&dword_1DD6DC000, v29, v30, "Waiting for toolbox to be ready: the read-write database is still in the process of being copied over to the read-only database", v31, 2u);
          v38 = v37;
          v15 = v36;
          v12 = v35;
          v26 = v34;
          v27 = v33;
          v25 = v32;
          v28 = v50;
          MEMORY[0x1E12B5DE0](v38, -1, -1);
        }

        (*v27)(v25, v15);
        sleep(0xAu);
        v51 = v26;
        sub_1DD86DEA4(&v51);
        v40 = v39[OBJC_IVAR____TtC16IntelligenceFlow9Readiness_isToolboxIndexingFinished];

        v28 += 10;
      }

      while ((v40 & 1) == 0);
      if (!v28)
      {
        v41 = v49;
        sub_1DD874C00();
        v42 = sub_1DD874EC0();
        v43 = sub_1DD8754C0();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = v15;
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_1DD6DC000, v42, v43, "Time limit of 300 seconds reached while waiting for the read-write database to be copied over to the read-only database", v45, 2u);
          v46 = v45;
          v15 = v44;
          MEMORY[0x1E12B5DE0](v46, -1, -1);
        }

        (*v27)(v41, v15);
      }

      v47 = v48;
      [v48 integerValue];
    }

    sub_1DD6E0C78();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DD86E3D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = 0xE800000000000000;
  v15 = 0x647261646E617473;
  v16 = v13;
  switch(a4)
  {
    case 1:
      v14 = 0xE500000000000000;
      v15 = 0x796D6D7564;
      break;
    case 2:
      v14 = 0xE700000000000000;
      v15 = 0x676E6974736574;
      break;
    case 3:
      v14 = 0xE300000000000000;
      v15 = 7169123;
      break;
    case 4:
      v14 = 0xEE0072656E6E616CLL;
      v15 = 0x506369746E656761;
      break;
    default:
      break;
  }

  a7(v15, v14, a6, v16, a1);
}

void sub_1DD86E554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1DD875110();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1DD6E1B38;
  v10[3] = &unk_1F58E7878;
  v9 = _Block_copy(v10);

  [a5 populateWithPlannerType:v8 with:v9];
  _Block_release(v9);
}

void sub_1DD86E628()
{
  sub_1DD6DED2C();
  v3 = v2;
  v30 = v4;
  v33 = sub_1DD8746B0();
  v5 = sub_1DD6DDEAC(v33);
  v29 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DD874740();
  v12 = sub_1DD6DDEAC(v11);
  v28 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v27 - v20;
  if (*(v0 + 16))
  {
    v22 = *v3;
    MEMORY[0x1EEE9AC00](v19);
    *(&v27 - 16) = v23;

    sub_1DD874CF0();

    if (!v1)
    {
      sub_1DD874BC0();
      v31 = sub_1DD874710();
      v32 = v24;
      v25 = v29;
      (*(v29 + 104))(v10, *MEMORY[0x1E6968F70], v33);
      sub_1DD719D30();
      sub_1DD874730();
      (*(v25 + 8))(v10, v33);

      v26 = *(v28 + 8);
      v26(v17, v11);
      v26(v21, v11);
    }

    sub_1DD6E0C78();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DD86E8A4(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = 0xE800000000000000;
  v6 = 0x647261646E617473;
  switch(a4)
  {
    case 1:
      v5 = 0xE500000000000000;
      v6 = 0x796D6D7564;
      break;
    case 2:
      v5 = 0xE700000000000000;
      v6 = 0x676E6974736574;
      break;
    case 3:
      v5 = 0xE300000000000000;
      v6 = 7169123;
      break;
    case 4:
      v5 = 0xEE0072656E6E616CLL;
      v6 = 0x506369746E656761;
      break;
    default:
      break;
  }

  sub_1DD86E980(v6, v5, a2, a3, a1);
}

void sub_1DD86E980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1DD875110();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1DD86EA54;
  v10[3] = &unk_1F58E7828;
  v9 = _Block_copy(v10);

  [a5 baseRelativeURLWithPlannerType:v8 with:v9];
  _Block_release(v9);
}

uint64_t sub_1DD86EA54(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1DD710A9C(&qword_1ECD16C10, &qword_1DD878230);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_1DD874700();
    v12 = sub_1DD874740();
    v13 = 0;
  }

  else
  {
    v12 = sub_1DD874740();
    v13 = 1;
  }

  sub_1DD6E5E68(v9, v13, 1, v12);

  v14 = a3;
  v11(v9, a3);

  return sub_1DD8711A4(v9);
}

void sub_1DD86EB54(unsigned __int8 *a1)
{
  if (*(v1 + 16))
  {
    v2 = sub_1DD6E06A4(a1);
    MEMORY[0x1EEE9AC00](v2);
    sub_1DD6ED510();
    *(v4 - 8) = v3;

    sub_1DD710A9C(&qword_1ECD16B68, &qword_1DD8B2E08);
    sub_1DD6E5404();
    sub_1DD874CF0();
    sub_1DD6FBEB4();
    sub_1DD6DE418();
  }

  else
  {
    __break(1u);
  }
}

void sub_1DD86EBFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v12 = a10;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = v13;

  v15 = sub_1DD875110();

  v16 = sub_1DD875110();
  v17 = sub_1DD875400();
  if (a10)
  {
    v12 = sub_1DD875110();
  }

  v18 = sub_1DD875400();
  aBlock[4] = sub_1DD8712F4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DD86EE58;
  aBlock[3] = &unk_1F58E7800;
  v19 = _Block_copy(aBlock);

  [a1 queryWithPlannerType:v15 query:v16 k:a7 bundleIDs:v17 clientIdentifier:v12 availableClientActions:v18 with:v19];
  _Block_release(v19);
}

uint64_t sub_1DD86EE58(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for ToolboxSearchResult();
    v4 = sub_1DD8752D0();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_1DD86EEE8(unsigned __int8 *a1)
{
  if (*(v1 + 16))
  {
    v2 = sub_1DD6E06A4(a1);
    MEMORY[0x1EEE9AC00](v2);
    sub_1DD6ED510();

    sub_1DD710A9C(&qword_1ECD16B68, &qword_1DD8B2E08);
    sub_1DD6E5404();
    sub_1DD874CF0();
    sub_1DD6FBEB4();
    sub_1DD6DE418();
  }

  else
  {
    __break(1u);
  }
}

void sub_1DD86EF8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = v11;

  v13 = sub_1DD875110();

  v14 = sub_1DD875110();
  if (a9)
  {
    v15 = sub_1DD875110();
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_1DD875400();
  aBlock[4] = sub_1DD8712F4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DD86EE58;
  aBlock[3] = &unk_1F58E77B0;
  v17 = _Block_copy(aBlock);

  [a1 queryWithPlannerType:v13 query:v14 k:a7 clientIdentifier:v15 availableClientActions:v16 with:v17];
  _Block_release(v17);
}

void sub_1DD86F1C4(unsigned __int8 *a1)
{
  if (*(v1 + 16))
  {
    v2 = sub_1DD6E06A4(a1);
    MEMORY[0x1EEE9AC00](v2);
    sub_1DD6E2014();
    sub_1DD710A9C(&qword_1ECD16B68, &qword_1DD8B2E08);
    sub_1DD6E5404();
    sub_1DD874CF0();
    sub_1DD6FBEB4();
    sub_1DD6DE418();
  }

  else
  {
    __break(1u);
  }
}

void sub_1DD86F260(unsigned __int8 *a1)
{
  if (*(v1 + 16))
  {
    v2 = sub_1DD6E06A4(a1);
    MEMORY[0x1EEE9AC00](v2);
    sub_1DD6E2014();
    sub_1DD710A9C(&qword_1ECD16B68, &qword_1DD8B2E08);
    sub_1DD6E5404();
    sub_1DD874CF0();
    sub_1DD6FBEB4();
    sub_1DD6DE418();
  }

  else
  {
    __break(1u);
  }
}

void sub_1DD86F2FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, SEL *a11)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = v13;

  sub_1DD6E6384();
  v15 = sub_1DD875110();

  v16 = sub_1DD875110();
  v17 = sub_1DD8752C0();
  aBlock[4] = a9;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DD86EE58;
  aBlock[3] = a10;
  v18 = _Block_copy(aBlock);

  [a1 *a11];
  _Block_release(v18);
}

void sub_1DD86F4EC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (*(v3 + 16))
  {
    v5 = *a3;
    MEMORY[0x1EEE9AC00](a1);

    sub_1DD710A9C(&qword_1ECD16B70, &qword_1DD8B2E10);
    sub_1DD6E5404();
    sub_1DD874CF0();
    sub_1DD6FBEB4();
    if (v4)
    {
LABEL_5:
      sub_1DD6DE418();
      return;
    }

    if (*(v7 + 16))
    {
      v6 = *(v7 + 32);

      goto LABEL_5;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1DD86F5C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = 0xE800000000000000;
  v14 = 0x647261646E617473;
  v15 = v12;
  switch(a6)
  {
    case 1:
      v13 = 0xE500000000000000;
      v14 = 0x796D6D7564;
      break;
    case 2:
      v13 = 0xE700000000000000;
      v14 = 0x676E6974736574;
      break;
    case 3:
      v13 = 0xE300000000000000;
      v14 = 7169123;
      break;
    case 4:
      v13 = 0xEE0072656E6E616CLL;
      v14 = 0x506369746E656761;
      break;
    default:
      break;
  }

  sub_1DD86F710(a4, a5, v14, v13, sub_1DD8712F4, v15, a1);
}

void sub_1DD86F710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_1DD875110();
  v11 = sub_1DD875110();
  v13[4] = a5;
  v13[5] = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DD86F804;
  v13[3] = &unk_1F58E76C0;
  v12 = _Block_copy(v13);

  [a7 sandboxWithInjectionId:v10 plannerType:v11 with:v12];
  _Block_release(v12);
}

uint64_t sub_1DD86F804(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1DD8752D0();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

void sub_1DD86F89C(unsigned __int8 *a1)
{
  if (*(v2 + 16))
  {
    v3 = sub_1DD6E06A4(a1);
    MEMORY[0x1EEE9AC00](v3);
    sub_1DD6E8960();
    sub_1DD804C4C(0, &qword_1EE018CD8, 0x1E696AD98);
    sub_1DD6E5E30();

    sub_1DD6E5404();
    sub_1DD874CF0();
    sub_1DD6FBEB4();
    if (!v1)
    {
      [v4 integerValue];
    }

    sub_1DD6DE418();
  }

  else
  {
    __break(1u);
  }
}

void sub_1DD86F960(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = v12;

  v14 = sub_1DD875110();

  v15 = sub_1DD875110();
  if (a8)
  {
    a8 = sub_1DD875110();
  }

  v17[4] = sub_1DD6E6440;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1DD6E1B38;
  v17[3] = &unk_1F58E7670;
  v16 = _Block_copy(v17);

  [a1 countWithPlannerType:v14 toolType:v15 clientIdentifier:a8 with:v16];
  _Block_release(v16);
}

void sub_1DD86FB6C(unsigned __int8 *a1)
{
  if (*(v1 + 16))
  {
    v2 = sub_1DD6E06A4(a1);
    MEMORY[0x1EEE9AC00](v2);
    sub_1DD6E8960();

    sub_1DD710A9C(&qword_1ECD16B78, &unk_1DD8B2E18);
    sub_1DD6E5404();
    sub_1DD874CF0();
    sub_1DD6FBEB4();
    sub_1DD6DE418();
  }

  else
  {
    __break(1u);
  }
}

void sub_1DD86FC10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = v12;

  v14 = sub_1DD875110();

  v15 = sub_1DD875110();
  if (a8)
  {
    a8 = sub_1DD875110();
  }

  v17[4] = sub_1DD8712F4;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1DD86FE1C;
  v17[3] = &unk_1F58E7620;
  v16 = _Block_copy(v17);

  [a1 listToolsWithPlannerType:v14 toolType:v15 clientIdentifier:a8 with:v16];
  _Block_release(v16);
}

uint64_t sub_1DD86FE1C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1DD875410();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

void sub_1DD86FEBC(unsigned __int8 *a1)
{
  if (*(v1 + 16))
  {
    v2 = *a1;
    MEMORY[0x1EEE9AC00](a1);
    v6 = v3;
    v7 = v4;
    v8 = v5;

    sub_1DD874CF0();
    sub_1DD6FBEB4();
    sub_1DD6DE418();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DD86FF68(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = 0xE800000000000000;
  v14 = 0x647261646E617473;
  v15 = v12;
  switch(a4)
  {
    case 1:
      v13 = 0xE500000000000000;
      v14 = 0x796D6D7564;
      break;
    case 2:
      v13 = 0xE700000000000000;
      v14 = 0x676E6974736574;
      break;
    case 3:
      v13 = 0xE300000000000000;
      v14 = 7169123;
      break;
    case 4:
      v13 = 0xEE0072656E6E616CLL;
      v14 = 0x506369746E656761;
      break;
    default:
      break;
  }

  sub_1DD8700B8(v14, v13, a5, a6, sub_1DD701010, v15, a1);
}

void sub_1DD8700B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_1DD875110();
  v11 = sub_1DD875110();
  v13[4] = a5;
  v13[5] = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DD8701AC;
  v13[3] = &unk_1F58E75D0;
  v12 = _Block_copy(v13);

  [a7 toolMappingWithPlannerType:v10 customKey:v11 with:v12];
  _Block_release(v12);
}

uint64_t sub_1DD8701AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1DD875140();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

void sub_1DD870244(unsigned __int8 *a1)
{
  if (*(v1 + 16))
  {
    v2 = sub_1DD6E06A4(a1);
    MEMORY[0x1EEE9AC00](v2);
    sub_1DD6F0AB4();
    *(v4 - 15) = v3 & 1;
    type metadata accessor for ToolboxIndexedTools();
    sub_1DD6E5E30();

    sub_1DD6E5404();
    sub_1DD874CF0();
    sub_1DD6FBEB4();
    sub_1DD6DE418();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DD8702E0(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = 0xE800000000000000;
  v12 = 0x647261646E617473;
  v13 = v10;
  switch(a4)
  {
    case 1:
      v11 = 0xE500000000000000;
      v12 = 0x796D6D7564;
      break;
    case 2:
      v11 = 0xE700000000000000;
      v12 = 0x676E6974736574;
      break;
    case 3:
      v11 = 0xE300000000000000;
      v12 = 7169123;
      break;
    case 4:
      v11 = 0xEE0072656E6E616CLL;
      v12 = 0x506369746E656761;
      break;
    default:
      break;
  }

  sub_1DD870428(v12, v11, a5 & 1, sub_1DD6E6448, v13, a1);
}

void sub_1DD870428(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_1DD875110();
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DD8712F0;
  v12[3] = &unk_1F58E7580;
  v11 = _Block_copy(v12);

  [a6 metadataWithPlannerType:v10 enableAllowList:a3 & 1 with:v11];
  _Block_release(v11);
}

void sub_1DD870504()
{
  sub_1DD6E1CBC();
  v2 = v1;
  v4 = v3;
  v7 = *(v5 + 32);
  v6 = *(v5 + 40);

  v4;
  v8 = v2;
  v9 = sub_1DD6F17D0();
  v7(v9, v2);

  sub_1DD6E63F0();
}

uint64_t ToolboxClient.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ToolboxClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1DD8705DC(uint64_t a1)
{
  v2 = type metadata accessor for ToolboxClient();

  return MEMORY[0x1EEE2EE60](a1, v2);
}

uint64_t sub_1DD870808(uint64_t a1, uint64_t a2)
{
  result = sub_1DD86D6A0(&qword_1ECD16B50, a2, type metadata accessor for ToolboxClient);
  *(a1 + 8) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolboxXPCService(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ToolboxIndexedTools.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ToolboxIndexedMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD870F98()
{
  result = qword_1ECD16BE0;
  if (!qword_1ECD16BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16BE0);
  }

  return result;
}

unint64_t sub_1DD870FF0()
{
  result = qword_1ECD16BE8;
  if (!qword_1ECD16BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16BE8);
  }

  return result;
}

unint64_t sub_1DD871048()
{
  result = qword_1ECD16BF0;
  if (!qword_1ECD16BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16BF0);
  }

  return result;
}

unint64_t sub_1DD8710A0()
{
  result = qword_1ECD16BF8;
  if (!qword_1ECD16BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16BF8);
  }

  return result;
}

unint64_t sub_1DD8710F8()
{
  result = qword_1ECD16C00;
  if (!qword_1ECD16C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16C00);
  }

  return result;
}

unint64_t sub_1DD871150()
{
  result = qword_1ECD16C08;
  if (!qword_1ECD16C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16C08);
  }

  return result;
}

uint64_t sub_1DD8711A4(uint64_t a1)
{
  v2 = sub_1DD710A9C(&qword_1ECD16C10, &qword_1DD878230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DD87120C()
{
  result = qword_1ECD16C50;
  if (!qword_1ECD16C50)
  {
    sub_1DD804C4C(255, &qword_1ECD0E2A8, 0x1E69E58C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16C50);
  }

  return result;
}

uint64_t sub_1DD871304()
{

  return sub_1DD875110();
}

uint64_t sub_1DD87132C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v5[0] = a1;
  v5[1] = a2;
  return a4(v5, a3);
}

uint64_t TranscriptEntityQueryingClient.__allocating_init()()
{
  v0 = swift_allocObject();
  TranscriptEntityQueryingClient.init()();
  return v0;
}

uint64_t TranscriptEntityQueryingClient.init()()
{
  v2 = sub_1DD874610();
  *(v0 + 16) = 0u;
  v3 = (v0 + 16);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  sub_1DD6DE3F0(v2);
  *(v0 + 64) = sub_1DD874600();
  v4 = sub_1DD8745E0();
  sub_1DD6DE3F0(v4);
  *(v0 + 72) = sub_1DD8745D0();
  type metadata accessor for TranscriptEntityQueryingClient.ReverseServer();
  *(v0 + 56) = swift_allocObject();
  sub_1DD871A8C(qword_1EE015020, v5, type metadata accessor for TranscriptEntityQueryingClient);
  v6 = sub_1DD710A9C(&qword_1ECD16CD8, &qword_1DD8B3360);
  sub_1DD6DE3F0(v6);
  swift_retain_n();

  v7 = sub_1DD874DA0();
  if (v1)
  {
  }

  else
  {
    v8 = v7;
    v11 = v6;
    v12 = sub_1DD871630();

    *&v10 = v8;
    swift_beginAccess();
    if (*(v0 + 40))
    {
      sub_1DD6E1EC8(v3);
    }

    sub_1DD6DF5E4(&v10, v3);
    swift_endAccess();
  }

  return v0;
}

unint64_t sub_1DD871630()
{
  result = qword_1EE013A78;
  if (!qword_1EE013A78)
  {
    sub_1DD717E88(&qword_1ECD16CD8, &qword_1DD8B3360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE013A78);
  }

  return result;
}

void sub_1DD871694(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v5 = v3;
  v38 = a3;
  v7 = sub_1DD874820();
  v8 = sub_1DD6DDEAC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DE4A8();
  v15 = (v14 - v13);
  v16 = *(v3 + 64);
  type metadata accessor for TranscriptEntityEnumerationParameters(0);
  sub_1DD871A8C(qword_1EE014CB8, 255, type metadata accessor for TranscriptEntityEnumerationParameters);

  v17 = sub_1DD8745F0();
  v19 = v18;

  if (!v4)
  {
    v31 = a2;
    v32 = v15;
    v30 = v10;
    swift_beginAccess();
    if (*(v5 + 40))
    {
      sub_1DD6E0F0C(v5 + 16, v36);
    }

    else
    {
      sub_1DD6DE114();
    }

    v33 = v7;
    if (v37)
    {
      v20 = sub_1DD6E49C0(v36);
      MEMORY[0x1EEE9AC00](v20);
      *(&v27 - 2) = v17;
      *(&v27 - 1) = v19;
      v21 = v32;
      sub_1DD874D80();
      v28 = v19;
      v29 = v17;
      sub_1DD6E1EC8(v36);
      v22 = v31;
      while (1)
      {
        if (*(v5 + 40))
        {
          sub_1DD6E0F0C(v5 + 16, v36);
        }

        else
        {
          sub_1DD6DE114();
        }

        if (!v37)
        {
          break;
        }

        v23 = sub_1DD6E49C0(v36);
        MEMORY[0x1EEE9AC00](v23);
        *(&v27 - 2) = v21;
        sub_1DD874D80();
        v25 = v34;
        v24 = v35;
        sub_1DD6E1EC8(v36);
        v26 = *(v5 + 72);
        sub_1DD710A9C(&qword_1ECD16CE0, &qword_1DD8B3368);
        sub_1DD871F7C();

        sub_1DD8745C0();

        if (!*(v36[0] + 16))
        {

          sub_1DD6E6658(v25, v24);
          sub_1DD871BB8(v5, v21);
          sub_1DD6E6658(v29, v28);
          (*(v30 + 8))(v21, v33);
          return;
        }

        v22(v36[0]);

        sub_1DD6E6658(v25, v24);
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_1DD871A8C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1DD871AD4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD874750();
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1DD6FC2C0;
  v8[3] = &unk_1F58E7C60;
  v7 = _Block_copy(v8);

  [a1 getTranscriptEntitiesWithParameters:v6 reply:v7];
  _Block_release(v7);
}

void sub_1DD871BB0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_1DD871AD4(a1, a2, a3);
}

uint64_t sub_1DD871BB8(uint64_t a1, void *a2)
{
  v4 = sub_1DD874ED0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  result = swift_beginAccess();
  if (*(a1 + 40))
  {
    result = sub_1DD6E0F0C(a1 + 16, &v10);
  }

  else
  {
    v7 = *(a1 + 32);
    v10 = *(a1 + 16);
    v11 = v7;
    v12 = *(a1 + 48);
  }

  if (*(&v11 + 1))
  {
    v8 = sub_1DD6DF224(&v10, *(&v11 + 1));
    MEMORY[0x1EEE9AC00](v8);
    v9[-2] = a2;
    sub_1DD6E0EC8();
    sub_1DD874D80();

    return sub_1DD6E1EC8(&v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DD871E74(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_1DD8747C0();
  v9[4] = sub_1DD701010;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DD700F5C;
  v9[3] = &unk_1F58E7C38;
  v8 = _Block_copy(v9);

  [a1 getTranscriptEntitiesBatchWithId:v7 reply:v8];
  _Block_release(v8);
}

unint64_t sub_1DD871F7C()
{
  result = qword_1EE0139E8;
  if (!qword_1EE0139E8)
  {
    sub_1DD717E88(&qword_1ECD16CE0, &qword_1DD8B3368);
    sub_1DD871A8C(&qword_1EE015348, 255, type metadata accessor for TranscriptEntityItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0139E8);
  }

  return result;
}

uint64_t *TranscriptEntityQueryingClient.deinit()
{
  if (v0[5])
  {
    sub_1DD6E1EC8(v0 + 2);
  }

  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  return v0;
}

uint64_t TranscriptEntityQueryingClient.__deallocating_deinit()
{
  TranscriptEntityQueryingClient.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_1DD8720C8(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptEntityQueryingClient();

  return MEMORY[0x1EEE2EE60](a1, v2);
}

uint64_t TranscriptEntityEnumerationParameters.startDate.getter()
{
  v2 = sub_1DD6E0A5C();
  v3 = v1 + *(type metadata accessor for TranscriptEntityEnumerationParameters(v2) + 20);

  return sub_1DD87218C(v3, v0);
}

uint64_t sub_1DD87218C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD16CE8, &qword_1DD8B3370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TranscriptEntityEnumerationParameters.init()()
{
  v1 = sub_1DD6E0A5C();
  v2 = *(type metadata accessor for TranscriptEntityEnumerationParameters(v1) + 20);
  v3 = sub_1DD874790();
  result = sub_1DD6E5E68(&v0[v2], 1, 1, v3);
  *v0 = 1;
  return result;
}

uint64_t TranscriptEntityEnumerationParameters.init(startDate:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 1;
  v3 = &a2[*(type metadata accessor for TranscriptEntityEnumerationParameters(0) + 20)];

  return sub_1DD8722A0(a1, v3);
}

uint64_t sub_1DD8722A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD16CE8, &qword_1DD8B3370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL static TranscriptEntityEnumerationParameters.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1DD874790();
  v5 = sub_1DD6DDEAC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE4A8();
  v12 = v11 - v10;
  v13 = *(*(sub_1DD710A9C(&qword_1ECD16CE8, &qword_1DD8B3370) - 8) + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  v17 = sub_1DD710A9C(&qword_1ECD16CF0, &qword_1DD8B3378);
  sub_1DD6DE1C4(v17);
  v19 = *(v18 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v31 - v21;
  if (*a1 != *a2)
  {
    return 0;
  }

  v23 = *(type metadata accessor for TranscriptEntityEnumerationParameters(0) + 20);
  v24 = *(v17 + 48);
  sub_1DD87218C(&a1[v23], v22);
  sub_1DD87218C(&a2[v23], &v22[v24]);
  sub_1DD6E26E4(v22);
  if (v25)
  {
    sub_1DD6E26E4(&v22[v24]);
    if (v25)
    {
      sub_1DD6FC560(v22, &qword_1ECD16CE8, &qword_1DD8B3370);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1DD87218C(v22, v16);
  sub_1DD6E26E4(&v22[v24]);
  if (v25)
  {
    (*(v7 + 8))(v16, v4);
LABEL_10:
    sub_1DD6FC560(v22, &qword_1ECD16CF0, &qword_1DD8B3378);
    return 0;
  }

  (*(v7 + 32))(v12, &v22[v24], v4);
  sub_1DD6E1550();
  sub_1DD871A8C(v27, 255, v28);
  v29 = sub_1DD8750F0();
  v30 = *(v7 + 8);
  v30(v12, v4);
  v30(v16, v4);
  sub_1DD6FC560(v22, &qword_1ECD16CE8, &qword_1DD8B3370);
  return (v29 & 1) != 0;
}

uint64_t sub_1DD8725B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6172656C6F74 && a2 == 0xEC00000065646F4DLL;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD872688(char a1)
{
  if (a1)
  {
    return 0x7461447472617473;
  }

  else
  {
    return 0x746E6172656C6F74;
  }
}

uint64_t sub_1DD8726D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD8725B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD8726FC(uint64_t a1)
{
  v2 = sub_1DD8728E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD872738(uint64_t a1)
{
  v2 = sub_1DD8728E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TranscriptEntityEnumerationParameters.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = sub_1DD710A9C(&qword_1ECD16D00, &qword_1DD8B3380);
  sub_1DD6DDEAC(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DE340();
  v12 = a1[3];
  v13 = a1[4];
  sub_1DD6E49C0(a1);
  sub_1DD8728E0();
  sub_1DD6E0EA8();
  v14 = *v4;
  sub_1DD875980();
  if (!v2)
  {
    v15 = *(type metadata accessor for TranscriptEntityEnumerationParameters(0) + 20);
    sub_1DD6DEC54();
    sub_1DD874790();
    sub_1DD6E1550();
    sub_1DD871A8C(v16, 255, v17);
    sub_1DD6E730C();
    sub_1DD875960();
  }

  return (*(v8 + 8))(v3, v6);
}

unint64_t sub_1DD8728E0()
{
  result = qword_1EE015F20[0];
  if (!qword_1EE015F20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE015F20);
  }

  return result;
}

uint64_t TranscriptEntityEnumerationParameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = *(*(sub_1DD710A9C(&qword_1ECD16CE8, &qword_1DD8B3370) - 8) + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = sub_1DD710A9C(&qword_1ECD16D08, &qword_1DD8B3388);
  v9 = sub_1DD6DDEAC(v8);
  v31 = v10;
  v32 = v9;
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = type metadata accessor for TranscriptEntityEnumerationParameters(0);
  v17 = sub_1DD6DE1C4(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DE4A8();
  v22 = (v21 - v20);
  v23 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD8728E0();
  sub_1DD875B90();
  if (v2)
  {
    return sub_1DD6E1EC8(a1);
  }

  v24 = v31;
  v25 = v32;
  v33 = 0;
  *v22 = sub_1DD875880() & 1;
  sub_1DD874790();
  sub_1DD6DEC54();
  sub_1DD6E1550();
  sub_1DD871A8C(v26, 255, v27);
  sub_1DD875860();
  (*(v24 + 8))(v15, v25);
  sub_1DD8722A0(v7, &v22[*(v16 + 20)]);
  sub_1DD87381C(v22, v30, type metadata accessor for TranscriptEntityEnumerationParameters);
  sub_1DD6E1EC8(a1);
  return sub_1DD87387C(v22, type metadata accessor for TranscriptEntityEnumerationParameters);
}

uint64_t TranscriptEntityItem.eventId.getter()
{
  sub_1DD6E0A5C();
  v2 = sub_1DD874820();
  v3 = sub_1DD6DE1C4(v2);
  v5 = *(v4 + 16);

  return v5(v0, v1, v3);
}

uint64_t TranscriptEntityItem.eventTimestamp.getter()
{
  v2 = sub_1DD6E0A5C();
  v3 = *(type metadata accessor for TranscriptEntityItem(v2) + 20);
  v4 = sub_1DD874790();
  v5 = sub_1DD6DE1C4(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t TranscriptEntityItem.entity.getter()
{
  v2 = sub_1DD6E0A5C();
  v3 = *(type metadata accessor for TranscriptEntityItem(v2) + 24);
  v4 = sub_1DD874FA0();
  v5 = sub_1DD6DE1C4(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t TranscriptEntityItem.init(eventId:eventTimestamp:entity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1DD874820();
  sub_1DD6DE1C4(v8);
  (*(v9 + 32))(a4, a1);
  v10 = type metadata accessor for TranscriptEntityItem(0);
  v11 = *(v10 + 20);
  v12 = sub_1DD874790();
  sub_1DD6DE1C4(v12);
  (*(v13 + 32))(a4 + v11, a2);
  v14 = *(v10 + 24);
  v15 = sub_1DD874FA0();
  sub_1DD6DE1C4(v15);
  v17 = *(v16 + 32);

  return v17(a4 + v14, a3);
}

uint64_t static TranscriptEntityItem.== infix(_:_:)()
{
  if ((_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for TranscriptEntityItem(0);
  v1 = *(v0 + 20);
  if ((sub_1DD874780() & 1) == 0)
  {
    return 0;
  }

  v2 = *(v0 + 24);

  return _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
}

uint64_t sub_1DD872EC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449746E657665 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D6954746E657665 && a2 == 0xEE00706D61747365;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x797469746E65 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD872FD4(char a1)
{
  if (!a1)
  {
    return 0x6449746E657665;
  }

  if (a1 == 1)
  {
    return 0x6D6954746E657665;
  }

  return 0x797469746E65;
}

uint64_t sub_1DD87303C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD872EC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD873064(uint64_t a1)
{
  v2 = sub_1DD8732D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD8730A0(uint64_t a1)
{
  v2 = sub_1DD8732D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TranscriptEntityItem.encode(to:)(void *a1)
{
  v4 = sub_1DD710A9C(&qword_1ECD16D10, &qword_1DD8B3390);
  sub_1DD6DDEAC(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DE340();
  v10 = a1[3];
  v11 = a1[4];
  sub_1DD6E49C0(a1);
  sub_1DD8732D8();
  sub_1DD6E0EA8();
  sub_1DD874820();
  sub_1DD6E09AC();
  sub_1DD871A8C(v12, 255, v13);
  sub_1DD6E730C();
  sub_1DD8759D0();
  if (!v1)
  {
    v14 = type metadata accessor for TranscriptEntityItem(0);
    v15 = *(v14 + 20);
    sub_1DD6DEC54();
    sub_1DD874790();
    sub_1DD6E1550();
    sub_1DD871A8C(v16, 255, v17);
    sub_1DD6E730C();
    sub_1DD8759D0();
    v18 = *(v14 + 24);
    sub_1DD874FA0();
    sub_1DD6E0BFC();
    sub_1DD871A8C(v19, 255, v20);
    sub_1DD6E730C();
    sub_1DD8759D0();
  }

  return (*(v6 + 8))(v2, v4);
}

unint64_t sub_1DD8732D8()
{
  result = qword_1ECD16D18;
  if (!qword_1ECD16D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16D18);
  }

  return result;
}

uint64_t TranscriptEntityItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = sub_1DD874FA0();
  v4 = sub_1DD6DDEAC(v45);
  v43 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE4A8();
  v46 = v9 - v8;
  v50 = sub_1DD874790();
  v10 = sub_1DD6DDEAC(v50);
  v47 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DE4A8();
  v16 = v15 - v14;
  v17 = sub_1DD874820();
  v18 = sub_1DD6DDEAC(v17);
  v48 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DE4A8();
  v51 = v23 - v22;
  v52 = sub_1DD710A9C(&qword_1ECD16D20, &qword_1DD8B3398);
  sub_1DD6DDEAC(v52);
  v49 = v24;
  v26 = *(v25 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6DE340();
  v28 = type metadata accessor for TranscriptEntityItem(0);
  v29 = sub_1DD6DE1C4(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6DE4A8();
  v34 = v33 - v32;
  v35 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD8732D8();
  sub_1DD875B90();
  if (v53)
  {
    return sub_1DD6E1EC8(a1);
  }

  sub_1DD6E09AC();
  sub_1DD871A8C(v36, 255, v37);
  sub_1DD8758D0();
  (*(v48 + 32))(v34, v51, v17);
  sub_1DD6DEC54();
  sub_1DD6E1550();
  sub_1DD871A8C(v38, 255, v39);
  sub_1DD8758D0();
  (*(v47 + 32))(v34 + *(v28 + 20), v16, v50);
  sub_1DD6E0BFC();
  sub_1DD871A8C(v40, 255, v41);
  sub_1DD8758D0();
  (*(v49 + 8))(v2, v52);
  (*(v43 + 32))(v34 + *(v28 + 24), v46, v45);
  sub_1DD87381C(v34, a2, type metadata accessor for TranscriptEntityItem);
  sub_1DD6E1EC8(a1);
  return sub_1DD87387C(v34, type metadata accessor for TranscriptEntityItem);
}

uint64_t sub_1DD87381C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1DD6DE1C4(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD87387C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1DD6DE1C4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t TranscriptEntityQueryingReverseClient.__allocating_init(existingConnection:localObject:)()
{
  sub_1DD6E6088();
  v0 = swift_allocObject();
  TranscriptEntityQueryingReverseClient.init(existingConnection:localObject:)();
  return v0;
}

uint64_t TranscriptEntityQueryingReverseClient.init(existingConnection:localObject:)()
{
  v2 = sub_1DD874610();
  sub_1DD6DE3F0(v2);
  *(v0 + 16) = sub_1DD874600();
  *(v0 + 24) = 0;
  sub_1DD871A8C(&qword_1EE014CB0, v3, type metadata accessor for TranscriptEntityQueryingReverseClient);
  v4 = sub_1DD710A9C(&qword_1ECD16D28, &unk_1DD8B33A0);
  sub_1DD6DE3F0(v4);

  v5 = sub_1DD874D90();
  if (!v1)
  {
    v6 = *(v0 + 24);
    *(v0 + 24) = v5;
  }

  return v0;
}

uint64_t TranscriptEntityQueryingReverseClient.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t TranscriptEntityQueryingReverseClient.__deallocating_deinit()
{
  TranscriptEntityQueryingReverseClient.deinit();
  v0 = sub_1DD6E6088();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DD873B9C@<X0>(uint64_t *a1@<X8>)
{
  result = TranscriptEntityQueryingReverseClient.__allocating_init(existingConnection:localObject:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DD873BC8(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptEntityQueryingReverseClient();

  return MEMORY[0x1EEE2EE60](a1, v2);
}

uint64_t TranscriptEntityQueryingServiceError.hashValue.getter()
{
  v1 = *v0;
  sub_1DD875B20();
  MEMORY[0x1E12B5570](v1);
  return sub_1DD875B60();
}

unint64_t sub_1DD873CB8()
{
  result = qword_1EE014A20;
  if (!qword_1EE014A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE014A20);
  }

  return result;
}

unint64_t sub_1DD873D10()
{
  result = qword_1ECD16D30;
  if (!qword_1ECD16D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16D30);
  }

  return result;
}

void sub_1DD873E14()
{
  sub_1DD873E90();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DD873E90()
{
  if (!qword_1EE018CC0)
  {
    sub_1DD874790();
    v0 = sub_1DD8755C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE018CC0);
    }
  }
}

uint64_t sub_1DD873F10()
{
  result = sub_1DD874820();
  if (v1 <= 0x3F)
  {
    result = sub_1DD874790();
    if (v2 <= 0x3F)
    {
      result = sub_1DD874FA0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

_BYTE *sub_1DD873FAC(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for TranscriptEntityItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD874184(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD874264()
{
  result = qword_1ECD16D38;
  if (!qword_1ECD16D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16D38);
  }

  return result;
}

unint64_t sub_1DD8742BC()
{
  result = qword_1ECD16D40;
  if (!qword_1ECD16D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16D40);
  }

  return result;
}

unint64_t sub_1DD874314()
{
  result = qword_1ECD16D48;
  if (!qword_1ECD16D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16D48);
  }

  return result;
}

unint64_t sub_1DD87436C()
{
  result = qword_1ECD16D50;
  if (!qword_1ECD16D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16D50);
  }

  return result;
}

unint64_t sub_1DD8743C4()
{
  result = qword_1EE015F10;
  if (!qword_1EE015F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015F10);
  }

  return result;
}

unint64_t sub_1DD87441C()
{
  result = qword_1EE015F18;
  if (!qword_1EE015F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015F18);
  }

  return result;
}

void sub_1DD874470(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_1DD8747C0();
  v9[4] = sub_1DD6E6448;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DD6E1B38;
  v9[3] = &unk_1F58E7BE8;
  v8 = _Block_copy(v9);

  [a1 stopTranscriptEntitiesEnumerationWithId:v7 reply:v8];
  _Block_release(v8);
}