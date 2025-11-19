__n128 sub_100408C14@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_100420598(a1, a2, a3);
  if (!v4)
  {
    v13.i64[0] = v6;
    v13.i64[1] = v7;
    v14.n128_u64[0] = v8;
    sub_1002F9D2C(&v13);
    v10 = v20;
    *(a4 + 96) = v19;
    *(a4 + 112) = v10;
    *(a4 + 128) = v21;
    v11 = v16;
    *(a4 + 32) = v15;
    *(a4 + 48) = v11;
    v12 = v18;
    *(a4 + 64) = v17;
    *(a4 + 80) = v12;
    result = v14;
    *a4 = v13;
    *(a4 + 16) = result;
  }

  return result;
}

void sub_100408C84(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
      goto LABEL_7;
    }

    v16 = *a1;
    v17 = *(a1 + 8);
    v18 = *(a1 + 16);
    v46 = *(a1 + 20);
    v47 = v18;
    v34 = *(a1 + 22);

    sub_10041AFA0(a1, v9, a3, v44);
    if (v8)
    {
      v19 = *a1;

      *a1 = v16;
      *(a1 + 8) = v17;
      v22 = v46;
      *(a1 + 16) = v47;
      *(a1 + 20) = v22;
      *(a1 + 22) = v34;
LABEL_7:
      swift_willThrow();
      return;
    }

    v31 = v44[1];
    v32 = v44[0];
    v30 = v44[2];
    v21 = v44[3];
    v29 = v45;

    v23 = sub_100470080(a1, v9, a3, a4, a5, a6, a7);

    v24 = _swiftEmptyArrayStorage;
    if (v23)
    {
      v24 = v23;
    }

    v35.i64[0] = v32;
    v35.i64[1] = v31;
    *&v36 = v30;
    *(&v36 + 1) = v21;
    LOBYTE(v37) = v29;
    *(&v37 + 1) = v24;
    sub_1002F9B44(&v35);
    v25 = v42;
    *(a8 + 96) = v41;
    *(a8 + 112) = v25;
    *(a8 + 128) = v43;
    v26 = v38;
    *(a8 + 32) = v37;
    *(a8 + 48) = v26;
    v27 = v40;
    *(a8 + 64) = v39;
    *(a8 + 80) = v27;
    v28 = v36;
    *a8 = v35;
    *(a8 + 16) = v28;
  }
}

unint64_t sub_100408EEC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_100408F38(a1, a2, a3, 0x53545349584520uLL, a4, sub_1002F9C00);
}

unint64_t sub_100408F38@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, unint64_t a4@<X7>, _OWORD *a5@<X8>, uint64_t (*a6)(_OWORD *))
{
  result = sub_10046C278(a1, a2, a3, 1);
  if (!v6)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      sub_1003A527C();
      swift_allocError();
      *v18 = 0xD000000000000011;
      v18[1] = 0x80000001004B08A0;
      v18[2] = 0xD000000000000020;
      v18[3] = 0x80000001004B03C0;
      v18[4] = 202;
      return swift_willThrow();
    }

    else
    {
      v13 = result;
      sub_10046B71C(a4, 0xE700000000000000, 0, 0, a1, a2, a3);
      *&v19[0] = v13;
      result = a6(v19);
      v14 = v19[7];
      a5[6] = v19[6];
      a5[7] = v14;
      a5[8] = v19[8];
      v15 = v19[3];
      a5[2] = v19[2];
      a5[3] = v15;
      v16 = v19[5];
      a5[4] = v19[4];
      a5[5] = v16;
      v17 = v19[1];
      *a5 = v19[0];
      a5[1] = v17;
    }
  }

  return result;
}

unint64_t sub_10040906C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_100408F38(a1, a2, a3, 0x544E4543455220uLL, a4, sub_1002F9BB4);
}

uint64_t sub_1004090B8(uint64_t result, uint64_t a2, int64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v4 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v13 = a3;
      return swift_willThrow();
    }

    v6 = result;
    v7 = *result;
    v8 = *(result + 8);
    v9 = *(result + 16);
    v10 = *(result + 20);
    v11 = *(result + 22);

    sub_1004091B0(v6, v4, a3, &v14);
    if (v3)
    {
      v12 = *v6;

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
      return swift_willThrow();
    }

    return v14;
  }

  return result;
}

uint64_t sub_1004091B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    v10 = *(a1 + 8);
    if (*(a1 + 12) == v10)
    {
      sub_1003A5324();
      swift_allocError();
      return swift_willThrow();
    }

    v11 = *(a1 + 22);
    v12 = *(a1 + 20);
    v13 = *a1;
    result = swift_beginAccess();
    if (v10 == -1)
    {
      __break(1u);
      return result;
    }

    v14 = *(*(v13 + 24) + (v11 | (v12 << 8)) + v10);
    *(a1 + 8) = v10 + 1;
    v15 = v14 == 10 || v14 == 13;
    if (v15 || v14 < 0 || !v14 || v14 == 34 || v14 == 92)
    {
      sub_1004A6724(29);

      v18._countAndFlagsBits = sub_1004A58D4();
      sub_1004A5994(v18);

      sub_1003A527C();
      swift_allocError();
      *v16 = 0xD00000000000001BLL;
      v16[1] = 0x80000001004B09D0;
      v16[2] = 0xD000000000000020;
      v16[3] = 0x80000001004B03C0;
      v16[4] = 174;
      return swift_willThrow();
    }

    sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    result = sub_1004A58E4();
    *a4 = result;
    a4[1] = v17;
  }

  return result;
}

uint64_t sub_1004093C0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v69 = a8;

    v18 = sub_1004700C8(a1, a2, a3, a4, a5, a6, a7);

    if (!v18)
    {
      v18 = _swiftEmptyArrayStorage;
    }

    result = sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1003A5228();
      swift_allocError();
      *v21 = a3;
      return swift_willThrow();
    }

    else
    {
      v68 = v18;
      v19 = *a1;
      v20 = *(a1 + 8);
      v66 = *(a1 + 16);
      v63 = *(a1 + 20);
      v59 = *(a1 + 22);

      sub_100469DF8(a1);

      v22 = *a1;
      v64 = *(a1 + 8);
      v60 = *(a1 + 16);
      v52 = *(a1 + 20);
      v50 = *(a1 + 12);
      v51 = *(a1 + 22);

      sub_1004090B8(a1, a2 + 1, a3);
      v65 = v23;

      v24 = *a1;
      v25 = *(a1 + 8);
      v61 = *(a1 + 16);
      v55 = *(a1 + 20);
      v53 = *(a1 + 22);

      sub_100469DF8(a1);

      v26 = sub_10041ED48(a1, a2, a3, a4, a5, a6, a7);
      v28 = v27;
      v56 = HIDWORD(v29);
      v62 = v26;
      v30 = v29;
      swift_beginAccess();
      v31 = v56 - v30;
      if (v56 == v30)
      {
        v32 = _swiftEmptyArrayStorage;
      }

      else
      {
        v54 = ((v28 >> 24) & 0xFFFF00 | BYTE6(v28)) + v30;
        v57 = *(v62 + 24);
        v33 = v31;
        v34 = sub_10015BEAC(v31, 0);
        memcpy(v34 + 32, (v57 + v54), v33);
        v32 = v34;
      }

      v35 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v32);
      v58 = v36;

      v37 = sub_1004700F4(a1, a2, a3, a4, a5, a6, a7);
      v38 = v68;
      v40 = v39;
      v42 = v41;
      v67 = v37;

      if (!v40)
      {
        result = sub_1003FF878(_swiftEmptyArrayStorage);
        v67 = result;
        v40 = v43;
        v42 = v44;
      }

      v45 = v35;
      v46 = v58;
      if (!v65)
      {
        goto LABEL_17;
      }

      v47 = sub_1004A5584();

      if ((v47 & 0x100) == 0)
      {
        v48 = sub_1004A5584();

        v38 = v68;
        v46 = v58;
        if ((v48 & 0x100) == 0)
        {
LABEL_18:
          *v69 = v38;
          *(v69 + 8) = v45;
          *(v69 + 16) = v46;
          *(v69 + 20) = v48;
          *(v69 + 24) = v67;
          *(v69 + 32) = v40;
          *(v69 + 40) = v42;
          return result;
        }

LABEL_17:
        LOBYTE(v48) = 0;
        goto LABEL_18;
      }

      sub_1002EEE28();
      swift_allocError();
      *v49 = 0xD000000000000029;
      v49[1] = 0x80000001004AE390;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100409AB8(uint64_t a1, uint64_t a2, int64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_10000C9C0(&qword_1005DC7E8, &qword_1005048F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004CEAA0;
  result = sub_10042117C(a1, a2, a3, a4);
  if (v4)
  {
    *(v9 + 16) = 0;
    v9 = v4;

    return v9;
  }

  *(v9 + 32) = result;
  *(v9 + 40) = v11;
  if (!__OFADD__(a2, 1))
  {
    if (a2 + 1 < a3)
    {
      v26 = a4;
      while (1)
      {
        v12 = *a1;
        v13 = *(a1 + 8);
        v14 = *(a1 + 16);
        v15 = *(a1 + 20);
        v16 = *(a1 + 22);

        sub_100469DF8(a1);

        v17 = sub_10042117C(a1, a2, a3, v26);
        v20 = *(v9 + 16);
        v19 = *(v9 + 24);
        if (v20 >= v19 >> 1)
        {
          v22 = v17;
          v23 = v18;
          v24 = sub_100461514((v19 > 1), v20 + 1, 1, v9);
          v18 = v23;
          v9 = v24;
          v17 = v22;
        }

        *(v9 + 16) = v20 + 1;
        v21 = v9 + 16 * v20;
        *(v21 + 32) = v17;
        *(v21 + 40) = v18;
      }
    }

    sub_1003A5228();
    swift_allocError();
    *v25 = a3;
    swift_willThrow();

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_100409CD4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return result;
  }

  if (v9 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v30 = a3;
    return swift_willThrow();
  }

  v11 = result;
  v13 = *result;
  v14 = *(result + 8);
  v15 = *(result + 16);
  v16 = *(result + 20);
  v17 = *(result + 22);
  sub_100469DF8(result);
  if (v8)
  {
    *v11 = v13;
    *(v11 + 8) = v14;
    *(v11 + 16) = v15;
    *(v11 + 20) = v16;
    *(v11 + 22) = v17;
    return swift_willThrow();
  }

  v18 = *v11;
  v19 = *(v11 + 8);
  v20 = *(v11 + 16);
  v21 = *(v11 + 20);
  v22 = *(v11 + 22);

  sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v11, v9, a3);

  v23 = sub_10046E5D4(v11, v9, a3, a4, a5, a6, a7);
  v25 = v24;
  v27 = v26;

  if (!v25)
  {
    v23 = sub_1003FF878(_swiftEmptyArrayStorage);
    v25 = v28;
    v27 = v29;
  }

  sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v11, v9, a3);

  *a8 = v23;
  a8[1] = v25;
  a8[2] = v27;
  return result;
}

uint64_t sub_100409ED8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v52 = a6;
  v47 = a8;
  v14 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v49 = &v44 - v16;
  v48 = sub_10000C9C0(&qword_1005DC7E0, &qword_1005048E8);
  v17 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v19 = &v44 - v18;
  v53 = 0;
  *&v54 = _swiftEmptyArrayStorage;
  *(&v54 + 1) = _swiftEmptyArrayStorage;
  v50 = a2;
  v20 = a2;
  v21 = a7;
  v22 = a3;
  v23 = v51;
  sub_10040A230(a1, v20, a3, a4, a5, v52, v21, &v44 - v18);
  v51 = v23;
  if (v23)
  {
    goto LABEL_8;
  }

  v44 = a4;
  v45 = a1;
  v46 = v21;
  v24 = *v19;
  v25 = *(v19 + 1);
  v26 = *(v19 + 4);
  v27 = *(v19 + 10);
  v28 = v19[22];
  v29 = v49;
  sub_1002FC178(&v19[*(v48 + 52)], v49);
  v30 = type metadata accessor for ParameterValue();
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);

  result = sub_1003FCAA0(v29, v24, v25, v26 | (v27 << 32) | (v28 << 48));
  v32 = v50 + 1;
  if (__OFADD__(v50, 1))
  {
    __break(1u);
  }

  else
  {
    if (v32 >= v22)
    {
      sub_1003A5228();
      swift_allocError();
      *v42 = v22;

      goto LABEL_7;
    }

    v33 = v45;
    v34 = *v45;
    v35 = *(v45 + 8);
    v36 = *(v45 + 16);
    v37 = *(v45 + 20);
    v38 = *(v45 + 22);
    swift_retain_n();

    v39 = v32;
    v40 = v51;
    sub_1004682F4(v33, v39, v22, &v53, v44, a5, v52, v46);
    if (v40)
    {
      v41 = *v33;

      *v33 = v34;
      *(v33 + 8) = v35;
      *(v33 + 16) = v36;
      *(v33 + 20) = v37;
      *(v33 + 22) = v38;
LABEL_7:
      swift_willThrow();

      sub_100025F40(v19, &qword_1005DC7E0, &qword_1005048E8);
LABEL_8:
    }

    sub_100025F40(v19, &qword_1005DC7E0, &qword_1005048E8);

    v43 = v47;
    *v47 = v53;
    *(v43 + 1) = v54;
  }

  return result;
}

void sub_10040A230(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v56 = a8;
  v16 = type metadata accessor for ParameterValue();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v20 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __OFADD__(a2, 1);
  v22 = a2 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    if (v22 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v30 = a3;
    }

    else
    {
      v51 = v18;
      v23 = *a1;
      v24 = *(a1 + 8);
      v25 = *(a1 + 16);
      v53 = *(a1 + 20);
      v54 = v25;
      v52 = *(a1 + 22);
      v55 = v23;

      v26 = sub_10041ED48(a1, v22, a3, a4, a5, a6, a7);
      if (v8)
      {
        v29 = *a1;
      }

      else
      {
        v50 = v26;
        v31 = v22 + 1;
        v32 = *a1;
        if (v31 < a3)
        {
          v47 = v27;
          v48 = v28;
          v49 = v31;
          sub_100469DF8(a1);
          v33 = *a1;
          v34 = *(a1 + 8);
          v35 = *(a1 + 16);
          v46[2] = *(a1 + 20);
          v46[3] = v35;
          v46[1] = *(a1 + 22);

          sub_10041206C(a1, v49, a3, a4, a5, a6, a7, v20);
          v38 = v47;
          v39 = v48;
          v40 = HIDWORD(v47);
          v41 = HIWORD(v48);
          v42 = HIDWORD(v48);
          swift_storeEnumTagMultiPayload();

          v43 = sub_10000C9C0(&qword_1005DC7E0, &qword_1005048E8);
          v44 = v56;
          sub_1002FC114(v20, v56 + *(v43 + 52));
          *v44 = v50;
          *(v44 + 8) = v38;
          *(v44 + 12) = v40;
          *(v44 + 16) = v39;
          *(v44 + 20) = v42;
          *(v44 + 22) = v41;
          return;
        }

        v36 = *a1;

        sub_1003A5228();
        swift_allocError();
        *v37 = a3;
        swift_willThrow();
      }

      *a1 = v55;
      *(a1 + 8) = v24;
      v45 = v53;
      *(a1 + 16) = v54;
      *(a1 + 20) = v45;
      *(a1 + 22) = v52;
    }

    swift_willThrow();
  }
}

uint64_t sub_10040A6E0(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_10046B71C(0x534547415353454DuLL, 0xE900000000000020, 0, 0, a1, a2, a3);
  if (!v3)
  {
    result = sub_10046C278(a1, a2, a3, 1);
    if (result < 0)
    {
      sub_1003A527C();
      swift_allocError();
      *v8 = 0xD000000000000011;
      v8[1] = 0x80000001004B08A0;
      v8[2] = 0xD000000000000020;
      v8[3] = 0x80000001004B03C0;
      v8[4] = 202;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10040A7D8(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_10046B71C(0x205458454E444955uLL, 0xE800000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    return sub_100405E9C(a1, a2, a3);
  }

  return result;
}

uint64_t sub_10040A85C(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_10046B71C(0x44494C4156444955uLL, 0xEC00000020595449, 0, 0, a1, a2, a3);
  if (!v3)
  {
    return sub_10041EC70(a1, a2, a3);
  }

  return result;
}

uint64_t sub_10040A8E8(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_10046B71C(0x204E4545534E55uLL, 0xE700000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    result = sub_10046C278(a1, a2, a3, 1);
    if (result < 0)
    {
      sub_1003A527C();
      swift_allocError();
      *v8 = 0xD000000000000011;
      v8[1] = 0x80000001004B08A0;
      v8[2] = 0xD000000000000020;
      v8[3] = 0x80000001004B03C0;
      v8[4] = 202;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10040A9DC(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_10046B71C(0x20455A4953uLL, 0xE500000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    result = sub_10046C278(a1, a2, a3, 1);
    if (result < 0)
    {
      sub_1003A527C();
      swift_allocError();
      *v8 = 0xD000000000000011;
      v8[1] = 0x80000001004B08A0;
      v8[2] = 0xD000000000000020;
      v8[3] = 0x80000001004B03C0;
      v8[4] = 202;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10040AACC(uint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_10046B71C(0x4D54534548474948uLL, 0xEE0020514553444FLL, 0, 0, a1, a2, a3);
  if (!v3)
  {
    return sub_10041D9A8(a1, a2, a3);
  }

  return result;
}

uint64_t sub_10040AB58(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_10046B71C(0x20544E45434552uLL, 0xE700000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    result = sub_10046C278(a1, a2, a3, 1);
    if (result < 0)
    {
      sub_1003A527C();
      swift_allocError();
      *v8 = 0xD000000000000011;
      v8[1] = 0x80000001004B08A0;
      v8[2] = 0xD000000000000020;
      v8[3] = 0x80000001004B03C0;
      v8[4] = 202;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10040AC4C(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  sub_10046B71C(0x494C444E45505041uLL, 0xEC0000002054494DLL, 0, 0, a1, a2, a3);
  if (!v7)
  {
    sub_10000C9C0(&qword_1005DC7D8, &qword_1005048E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004D01D0;
    v16 = swift_allocObject();
    v16[2] = a4;
    v16[3] = a5;
    v16[4] = a6;
    v16[5] = a7;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_10040C8CC;
    *(v17 + 24) = v16;
    *(inited + 32) = sub_10040CB80;
    *(inited + 40) = v17;
    v18 = swift_allocObject();
    v18[2] = a4;
    v18[3] = a5;
    v18[4] = a6;
    v18[5] = a7;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_10040C910;
    *(v19 + 24) = v18;
    *(inited + 48) = sub_10040CB80;
    *(inited + 56) = v19;
    swift_retain_n();
    v12 = sub_1003FA628(inited, a1, a2, v12, 0xD000000000000020, 0x80000001004B03C0, 374);
    swift_setDeallocating();
    sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
    swift_arrayDestroy();
  }

  return v12;
}

unint64_t sub_10040AE9C(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_10046C278(a1, a2, a3, 1);
  if (!v3 && (result & 0x8000000000000000) != 0)
  {
    sub_1003A527C();
    swift_allocError();
    *v5 = 0xD000000000000011;
    v5[1] = 0x80000001004B08A0;
    v5[2] = 0xD000000000000020;
    v5[3] = 0x80000001004B03C0;
    v5[4] = 202;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_10040AF48(uint64_t a1, uint64_t a2, int64_t a3)
{
  sub_10046B71C(0x49584F424C49414DuLL, 0xEB00000000282044, 0, 0, a1, a2, a3);
  if (!v3)
  {
    v4 = sub_10042E9D4(a1, a2, a3);
    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  }

  return v4;
}

uint64_t sub_10040B018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10000C9C0(&qword_1005DC7D8, &qword_1005048E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F5BE0;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10040C1BC;
  *(v15 + 24) = v14;
  *(inited + 32) = sub_10040C1DC;
  *(inited + 40) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10040C1F4;
  *(v17 + 24) = v16;
  *(inited + 48) = sub_10040CB80;
  *(inited + 56) = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10040C214;
  *(v19 + 24) = v18;
  *(inited + 64) = sub_10040CB80;
  *(inited + 72) = v19;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10040C234;
  *(v21 + 24) = v20;
  *(inited + 80) = sub_10040CB80;
  *(inited + 88) = v21;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_10040C28C;
  *(v23 + 24) = v22;
  *(inited + 96) = sub_10040CB80;
  *(inited + 104) = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_10040C2AC;
  *(v25 + 24) = v24;
  *(inited + 112) = sub_10040CB80;
  *(inited + 120) = v25;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10040C2CC;
  *(v27 + 24) = v26;
  *(inited + 128) = sub_10040CB80;
  *(inited + 136) = v27;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_10040C2EC;
  *(v29 + 24) = v28;
  *(inited + 144) = sub_10040CB80;
  *(inited + 152) = v29;
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = a5;
  v30[4] = a6;
  v30[5] = a7;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_10040C30C;
  *(v31 + 24) = v30;
  *(inited + 160) = sub_10040CB80;
  *(inited + 168) = v31;
  swift_retain_n();
  v32 = sub_1003FA628(inited, a1, a2, a3, 0xD000000000000020, 0x80000001004B03C0, 395);
  if (v36)
  {
    swift_setDeallocating();
    sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
    return swift_arrayDestroy();
  }

  else
  {
    v34 = v32;
    swift_setDeallocating();
    sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
    swift_arrayDestroy();
    return v34;
  }
}

uint64_t sub_10040B4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_10000C9C0(&qword_1005DC7D0, &qword_1005048D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  v17 = sub_10040B018(a1, a2, a3, a4, a5, a6, a7);
  if (v8)
  {
    *(inited + 16) = 0;
  }

  v69 = a4;
  v71 = a5;
  *(inited + 32) = v17;
  *(inited + 40) = v18;
  *(inited + 48) = v19;
  v21 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  if (v21 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v41 = a3;
LABEL_37:
    swift_willThrow();
  }

  v22 = a1;
  v23 = *(a1 + 8);
  v24 = *(a1 + 16);
  v58 = *(a1 + 22);
  v59 = *(a1 + 20);
  v60 = *a1;

  v66 = v21 + 1;
  if (v21 + 1 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v42 = a3;
  }

  else
  {
    v57 = v24;
    v25 = v21 + 2;
    v26 = *a1;
    v27 = *(a1 + 8);
    v28 = *(a1 + 16);
    v63 = *(v22 + 22);
    v64 = *(v22 + 20);
    if (v25 < a3)
    {
      v29 = inited;
      v61 = a7;
      v62 = v22;
      v68 = inited;
      do
      {
        v75 = v29;
        swift_retain_n();
        sub_100469DF8(v22);

        v30 = a3;
        v31 = a3;
        v32 = a6;
        v33 = sub_10040B018(v22, v66, v31, v69, v71, a6, a7);
        v35 = v34;
        v37 = v36;

        v29 = v75;
        v39 = *(v75 + 2);
        v38 = *(v75 + 3);
        if (v39 >= v38 >> 1)
        {
          v29 = sub_100461530((v38 > 1), v39 + 1, 1, v75);
        }

        *(v29 + 2) = v39 + 1;
        v40 = &v29[24 * v39];
        *(v40 + 4) = v33;
        *(v40 + 5) = v35;
        v40[48] = v37;
        a7 = v61;
        v22 = v62;
        v26 = *v62;
        v27 = *(v62 + 8);
        v28 = *(v62 + 16);
        v63 = *(v62 + 22);
        v64 = *(v62 + 20);
        inited = v68;
        a6 = v32;
        a3 = v30;
      }

      while (v25 < v30);
    }

    sub_1003A5228();
    swift_allocError();
    *v43 = a3;

    swift_willThrow();
    v44 = *v22;

    *v22 = v26;
    *(v22 + 8) = v27;
    *(v22 + 16) = v28;
    *(v22 + 20) = v64;
    *(v22 + 22) = v63;
    v24 = v57;
  }

  swift_willThrow();
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (!swift_dynamicCast())
  {

    v55 = *v22;

    *v22 = v60;
    *(v22 + 8) = v23;
    *(v22 + 16) = v24;
    *(v22 + 20) = v59;
    *(v22 + 22) = v58;
    goto LABEL_37;
  }

  v95 = 0;
  v96 = 1;
  v98 = 0;
  v99 = 1;
  v102 = 0;
  v103 = 1;
  v106 = 0;
  v107 = 1;
  v109 = 0;
  v110 = 1;
  v112 = 0;
  v113 = 1;
  v115 = 0;
  v116 = 1;
  v118 = 0;
  v119 = 1;
  v122 = 0;
  v121 = 0;
  v123 = 0;
  v124 = 1;
  v125 = 0;
  v126 = 1;
  v127 = 0;
  v128 = 1;
  v129 = 0;
  v130 = 1;
  v131 = 0;
  v132 = 1;
  v133 = 0;
  v134 = 1;
  v135 = 0;
  v136 = 1;
  v137 = 0;
  v138 = 1;
  v140 = 0;
  v139 = 0;
  sub_1000CB8B8(&v95, v94);
  sub_10009A0FC(&v123);
  v76 = v95;
  v94[0] = v96;
  *v93 = *v97;
  *&v93[3] = *&v97[3];
  v73 = v98;
  v83 = v99;
  v92 = v101;
  v91 = v100;
  v72 = v102;
  v82 = v103;
  v90 = v105;
  v89 = v104;
  v70 = v106;
  v81 = v107;
  *&v88[3] = *&v108[3];
  *v88 = *v108;
  v80 = v110;
  *&v87[3] = *&v111[3];
  *v87 = *v111;
  v65 = v112;
  v67 = v109;
  v79 = v113;
  *&v86[3] = *&v114[3];
  *v86 = *v114;
  v45 = v115;
  v78 = v116;
  *&v85[3] = *&v117[3];
  *v85 = *v117;
  v46 = v118;
  v77 = v119;
  *&v84[3] = *&v120[3];
  *v84 = *v120;
  v47 = v121;
  v48 = v122;
  v49 = *(inited + 16);
  if (v49)
  {
    v50 = (inited + 48);
    do
    {
      v51 = *(v50 - 2);
      v52 = *v50;
      if (v52 <= 3)
      {
        if (*v50 > 1u)
        {
          if (v52 == 2)
          {
            v81 = 0;
            v70 = *(v50 - 2);
          }

          else
          {
            v80 = 0;
            v67 = *(v50 - 2);
          }
        }

        else if (*v50)
        {
          v82 = 0;
          v72 = *(v50 - 2);
        }

        else
        {
          v94[0] = 0;
          v76 = v51;
        }
      }

      else if (*v50 <= 5u)
      {
        if (v52 == 4)
        {
          v79 = 0;
          v65 = *(v50 - 2);
        }

        else
        {
          v83 = 0;
          v73 = *(v50 - 2);
        }
      }

      else if (v52 == 6)
      {
        v78 = 0;
        v45 = *(v50 - 2);
      }

      else
      {
        v53 = *(v50 - 1);
        if (v52 == 7)
        {
          v77 = v53 & 1;
          v46 = *(v50 - 2);
        }

        else
        {
          v54 = *(v50 - 1);

          v47 = v51;
          v48 = v53;
        }
      }

      v50 += 24;
      --v49;
    }

    while (v49);
  }

  v56 = v94[0];
  *a8 = v76;
  *(a8 + 8) = v56;
  *(a8 + 9) = *v93;
  *(a8 + 12) = *&v93[3];
  *(a8 + 16) = v73;
  *(a8 + 24) = v83;
  *(a8 + 27) = v92;
  *(a8 + 25) = v91;
  *(a8 + 28) = v72;
  *(a8 + 32) = v82;
  *(a8 + 33) = v89;
  *(a8 + 35) = v90;
  *(a8 + 36) = v70;
  *(a8 + 40) = v81;
  *(a8 + 41) = *v88;
  *(a8 + 44) = *&v88[3];
  *(a8 + 48) = v67;
  *(a8 + 56) = v80;
  *(a8 + 60) = *&v87[3];
  *(a8 + 57) = *v87;
  *(a8 + 64) = v65;
  *(a8 + 72) = v79;
  *(a8 + 76) = *&v86[3];
  *(a8 + 73) = *v86;
  *(a8 + 80) = v45;
  *(a8 + 88) = v78;
  *(a8 + 92) = *&v85[3];
  *(a8 + 89) = *v85;
  *(a8 + 96) = v46;
  *(a8 + 104) = v77;
  *(a8 + 108) = *&v84[3];
  *(a8 + 105) = *v84;
  *(a8 + 112) = v47;
  *(a8 + 120) = v48;
  return result;
}

void sub_10040BC9C(uint64_t a1, Swift::UInt a2, char a3, unsigned __int8 a4)
{
  if (a4 <= 3u)
  {
    if (a4 > 1u)
    {
      if (a4 != 2)
      {
        v6 = 3;
        goto LABEL_22;
      }

      v7 = 2;
    }

    else
    {
      if (!a4)
      {
        v6 = 0;
LABEL_22:
        sub_1004A6EB4(v6);
LABEL_23:
        sub_1004A6EB4(a2);
        return;
      }

      v7 = 1;
    }

    sub_1004A6EB4(v7);
    sub_1004A6EE4(a2);
    return;
  }

  if (a4 <= 5u)
  {
    if (a4 == 4)
    {
      v6 = 4;
    }

    else
    {
      v6 = 5;
    }

    goto LABEL_22;
  }

  if (a4 == 6)
  {
    sub_1004A6EB4(6uLL);
    sub_1004A6EF4(a2);
    return;
  }

  if (a4 == 7)
  {
    sub_1004A6EB4(7uLL);
    if (a3)
    {
      sub_1004A6EC4(0);
      return;
    }

    sub_1004A6EC4(1u);
    goto LABEL_23;
  }

  sub_1004A6EB4(8uLL);

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_10040BDBC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1004A6E94();
  sub_10040BC9C(v5, v1, v2, v3);
  return sub_1004A6F14();
}

Swift::Int sub_10040BE24()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1004A6E94();
  sub_10040BC9C(v5, v1, v2, v3);
  return sub_1004A6F14();
}

uint64_t sub_10040BEB4(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 3u)
  {
    v6 = result == a4;
    if (a6 != 2)
    {
      v6 = 0;
    }

    v8 = a6 == 3 && result == a4;
    if (a3 != 2)
    {
      v6 = v8;
    }

    if (a6)
    {
      v9 = 0;
    }

    else
    {
      v9 = result == a4;
    }

    v10 = v9;
    v11 = a6 == 1 && a4 == result;
    if (!a3)
    {
      v11 = v10;
    }

    if (a3 <= 1u)
    {
      return v11;
    }

    else
    {
      return v6;
    }
  }

  else if (a3 <= 5u)
  {
    v13 = a6 == 4 && result == a4;
    v15 = a6 == 5 && result == a4;
    if (a3 == 4)
    {
      return v13;
    }

    else
    {
      return v15;
    }
  }

  else
  {
    if (a3 != 6)
    {
      if (a3 == 7)
      {
        if (a6 != 7)
        {
          return 0;
        }

        if (a2)
        {
          return (a5 & 1) != 0;
        }

        if (a5 & 1 | (result != a4))
        {
          return 0;
        }
      }

      else
      {
        if (a6 != 8)
        {
          return 0;
        }

        if (result != a4 || a2 != a5)
        {
          return sub_1004A6D34();
        }
      }

      return 1;
    }

    if (a6 != 6)
    {
      return 0;
    }

    if ((a4 | result) < 0)
    {
      __break(1u);
    }

    else
    {
      return a4 == result;
    }
  }

  return result;
}

void sub_10040C08C(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, int8x16_t *a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  sub_100407D80(a1, a2, a3, a4);
}

double sub_10040C0CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  *&result = sub_100408C14(a1, a2, a3, a4).n128_u64[0];
  return result;
}

__n128 sub_10040C10C@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v6(v12, a1, *a2, a2[1]);
  if (!v4)
  {
    v9 = v12[7];
    *(a3 + 96) = v12[6];
    *(a3 + 112) = v9;
    *(a3 + 128) = v12[8];
    v10 = v12[3];
    *(a3 + 32) = v12[2];
    *(a3 + 48) = v10;
    v11 = v12[5];
    *(a3 + 64) = v12[4];
    *(a3 + 80) = v11;
    result = v12[1];
    *a3 = v12[0];
    *(a3 + 16) = result;
  }

  return result;
}

double sub_10040C178(uint64_t a1)
{
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  return result;
}

uint64_t sub_10040C198(uint64_t a1)
{
  v1 = *(a1 + 120);
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

uint64_t sub_10040C1BC(unint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_10040A6E0(a1, a2, a3);
}

uint64_t sub_10040C1F4(unint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_10040A7D8(a1, a2, a3);
}

uint64_t sub_10040C214(unint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_10040A85C(a1, a2, a3);
}

uint64_t sub_10040C234(unint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_10040A8E8(a1, a2, a3);
}

uint64_t sub_10040C254()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10040C28C(unint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_10040A9DC(a1, a2, a3);
}

uint64_t sub_10040C2AC(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_10040AACC(a1, a2, a3);
}

uint64_t sub_10040C2CC(unint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_10040AB58(a1, a2, a3);
}

unint64_t sub_10040C30C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_10040AF48(a1, a2, a3);
}

void sub_10040C32C(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, int8x16_t *a4@<X8>)
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
      goto LABEL_6;
    }

    v9 = *a1;
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);
    v12 = *(a1 + 20);
    v13 = *(a1 + 22);
    sub_100469DF8(a1);
    if (v4)
    {
      *a1 = v9;
      *(a1 + 8) = v10;
      *(a1 + 16) = v11;
      *(a1 + 20) = v12;
      *(a1 + 22) = v13;
LABEL_6:
      swift_willThrow();
      return;
    }

    sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1004CEAA0;
    v16 = sub_10046C278(a1, a2, a3, 0);
    if ((v16 & 0x8000000000000000) != 0)
    {
      sub_1003A527C();
      swift_allocError();
      *v30 = 0xD000000000000011;
      v30[1] = 0x80000001004B08A0;
      v30[2] = 0xD000000000000020;
      v30[3] = 0x80000001004B03C0;
      v30[4] = 202;
      swift_willThrow();
      *(v15 + 16) = 0;
    }

    else
    {
      *(v15 + 32) = v16;
      v17 = *a1;
      v18 = *(a1 + 8);
      v19 = *(a1 + 16);
      v20 = *(a1 + 20);
      v49 = *(a1 + 22);

      if (v5 + 1 >= a3)
      {
        sub_1003A5228();
        v31 = swift_allocError();
        *v32 = a3;
      }

      else
      {
        v46 = v20;
        v47 = v19;
        v48 = v17;
        v21 = *a1;
        v22 = *(a1 + 8);
        v51 = *(a1 + 16);
        v23 = *(a1 + 20);
        v24 = *(a1 + 22);
        if (v5 + 2 >= a3)
        {
LABEL_18:
          sub_1003A5228();
          v31 = swift_allocError();
          *v33 = a3;
        }

        else
        {
          v25 = v15;
          while (1)
          {
            v52 = v25;
            swift_retain_n();
            sub_100469DF8(a1);

            v50 = v24;
            v26 = v23;
            v27 = sub_10046C278(a1, v5 + 1, a3, 0);
            if ((v27 & 0x8000000000000000) != 0)
            {
              break;
            }

            v25 = v52;
            v29 = *(v52 + 2);
            v28 = *(v52 + 3);
            if (v29 >= v28 >> 1)
            {
              v25 = sub_100460CC0((v28 > 1), v29 + 1, 1, v52);
            }

            *(v25 + 2) = v29 + 1;
            *&v25[8 * v29 + 32] = v27;
            v21 = *a1;
            v22 = *(a1 + 8);
            v51 = *(a1 + 16);
            v23 = *(a1 + 20);
            v24 = *(a1 + 22);
            if (v5 + 2 >= a3)
            {
              goto LABEL_18;
            }
          }

          sub_1003A527C();
          v31 = swift_allocError();
          *v45 = 0xD000000000000011;
          v45[1] = 0x80000001004B08A0;
          v45[2] = 0xD000000000000020;
          v45[3] = 0x80000001004B03C0;
          v45[4] = 202;
          v15 = v52;
          v23 = v26;
          v24 = v50;
        }

        swift_willThrow();
        v34 = *a1;

        *a1 = v21;
        *(a1 + 8) = v22;
        *(a1 + 16) = v51;
        *(a1 + 20) = v23;
        *(a1 + 22) = v24;
        v17 = v48;
        v20 = v46;
        v19 = v47;
      }

      swift_willThrow();
      v56 = v31;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
        v35 = v15;

        v36 = *a1;
        v37 = *(a1 + 8);
        v38 = *(a1 + 16);
        v39 = *(a1 + 20);
        v53 = *(a1 + 22);

        sub_100469DF8(a1);

        v55[0].i64[0] = v35;
        v55[0].i64[1] = sub_10041D468(a1, a2, a3);
        sub_10040C970(v55);
        v41 = v55[7];
        a4[6] = v55[6];
        a4[7] = v41;
        a4[8] = v55[8];
        v42 = v55[3];
        a4[2] = v55[2];
        a4[3] = v42;
        v43 = v55[5];
        a4[4] = v55[4];
        a4[5] = v43;
        v44 = v55[1];
        *a4 = v55[0];
        a4[1] = v44;
      }

      else
      {

        v40 = *a1;

        *a1 = v17;
        *(a1 + 8) = v18;
        *(a1 + 16) = v19;
        *(a1 + 20) = v20;
        *(a1 + 22) = v49;
        swift_willThrow();
      }
    }
  }
}

unint64_t sub_10040C910(unint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_10040AE9C(a1, a2, a3);
}

uint64_t sub_10040C930@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  result = v6(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
    *(a3 + 8) = v9;
    *(a3 + 16) = v10;
  }

  return result;
}

int8x16_t sub_10040C970(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x9000000000000000;
  result = vandq_s8(a1[3], xmmword_1004DDD00);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

uint64_t sub_10040C9C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 17))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10040CA10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_10040CA68()
{
  result = qword_1005DC7F0;
  if (!qword_1005DC7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC7F0);
  }

  return result;
}

uint64_t sub_10040CB98@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_10000C9C0(&qword_1005DC7F8, &qword_100504A60);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100504A50;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10041159C;
  *(v15 + 24) = v14;
  *(v13 + 32) = 0x5347414C46;
  *(v13 + 40) = 0xE500000000000000;
  *(v13 + 48) = sub_100404E94;
  *(v13 + 56) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1004115BC;
  *(v17 + 24) = v16;
  *(v13 + 64) = 0x45504F4C45564E45;
  *(v13 + 72) = 0xE800000000000000;
  *(v13 + 80) = sub_1004068EC;
  *(v13 + 88) = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1004115DC;
  *(v19 + 24) = v18;
  strcpy((v13 + 96), "INTERNALDATE");
  *(v13 + 109) = 0;
  *(v13 + 110) = -5120;
  *(v13 + 112) = sub_1004068EC;
  *(v13 + 120) = v19;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1004115FC;
  *(v21 + 24) = v20;
  *(v13 + 128) = 0x532E323238434652;
  *(v13 + 136) = 0xEB00000000455A49;
  *(v13 + 144) = sub_1004068EC;
  *(v13 + 152) = v21;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_10041161C;
  *(v23 + 24) = v22;
  *(v13 + 160) = 1497648962;
  *(v13 + 168) = 0xE400000000000000;
  *(v13 + 176) = sub_1004068EC;
  *(v13 + 184) = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_10041163C;
  *(v25 + 24) = v24;
  strcpy((v13 + 192), "BODYSTRUCTURE");
  *(v13 + 206) = -4864;
  *(v13 + 208) = sub_1004068EC;
  *(v13 + 216) = v25;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_100411660;
  *(v27 + 24) = v26;
  *(v13 + 224) = 4475221;
  *(v13 + 232) = 0xE300000000000000;
  *(v13 + 240) = sub_1004068EC;
  *(v13 + 248) = v27;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_100411680;
  *(v29 + 24) = v28;
  *(v13 + 256) = 0x532E5952414E4942;
  *(v13 + 264) = 0xEB00000000455A49;
  *(v13 + 272) = sub_1004068EC;
  *(v13 + 280) = v29;
  *(v13 + 288) = 0x47534D2D4D472D58;
  *(v13 + 296) = 0xEA00000000004449;
  *(v13 + 304) = sub_10040ECB8;
  *(v13 + 312) = 0;
  *(v13 + 320) = 0x5248542D4D472D58;
  *(v13 + 328) = 0xEA00000000004449;
  *(v13 + 336) = sub_10040ECE4;
  *(v13 + 344) = 0;
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = a5;
  v30[4] = a6;
  v30[5] = a7;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1004116A0;
  *(v31 + 24) = v30;
  *(v13 + 352) = 0x42414C2D4D472D58;
  *(v13 + 360) = 0xEB00000000534C45;
  *(v13 + 368) = sub_1004068EC;
  *(v13 + 376) = v31;
  v32 = swift_allocObject();
  v32[2] = a4;
  v32[3] = a5;
  v32[4] = a6;
  v32[5] = a7;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1004116C0;
  *(v33 + 24) = v32;
  *(v13 + 384) = 0x514553444F4DLL;
  *(v13 + 392) = 0xE600000000000000;
  *(v13 + 400) = sub_1004068EC;
  *(v13 + 408) = v33;
  v34 = swift_allocObject();
  v34[2] = a4;
  v34[3] = a5;
  v34[4] = a6;
  v34[5] = a7;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1004116E0;
  *(v35 + 24) = v34;
  *(v13 + 416) = 0x542E323238434652;
  *(v13 + 424) = 0xEB00000000545845;
  *(v13 + 432) = sub_1004068EC;
  *(v13 + 440) = v35;
  v36 = swift_allocObject();
  v36[2] = a4;
  v36[3] = a5;
  v36[4] = a6;
  v36[5] = a7;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_100411704;
  *(v37 + 24) = v36;
  strcpy((v13 + 448), "RFC822.HEADER");
  *(v13 + 462) = -4864;
  *(v13 + 464) = sub_1004068EC;
  *(v13 + 472) = v37;
  v38 = swift_allocObject();
  v38[2] = a4;
  v38[3] = a5;
  v38[4] = a6;
  v38[5] = a7;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_100411728;
  *(v39 + 24) = v38;
  *(v13 + 480) = 0x5952414E4942;
  *(v13 + 488) = 0xE600000000000000;
  *(v13 + 496) = sub_1004068EC;
  *(v13 + 504) = v39;
  v40 = swift_allocObject();
  v40[2] = a4;
  v40[3] = a5;
  v40[4] = a6;
  v40[5] = a7;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_100411748;
  *(v41 + 24) = v40;
  *(v13 + 512) = 0x57454956455250;
  *(v13 + 520) = 0xE700000000000000;
  *(v13 + 528) = sub_1004068EC;
  *(v13 + 536) = v41;
  v42 = swift_allocObject();
  v42[2] = a4;
  v42[3] = a5;
  v42[4] = a6;
  v42[5] = a7;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_100411768;
  *(v43 + 24) = v42;
  *(v13 + 544) = 0x44494C49414D45;
  *(v13 + 552) = 0xE700000000000000;
  *(v13 + 560) = sub_1004068EC;
  *(v13 + 568) = v43;
  v44 = swift_allocObject();
  v44[2] = a4;
  v44[3] = a5;
  v44[4] = a6;
  v44[5] = a7;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_100411788;
  *(v45 + 24) = v44;
  *(v13 + 576) = 0x4449444145524854;
  *(v13 + 584) = 0xE800000000000000;
  *(v13 + 592) = sub_1004068EC;
  *(v13 + 600) = v45;
  swift_retain_n();
  v46 = sub_100411884(v13, &qword_1005DC800, &qword_100504A68);
  swift_setDeallocating();
  sub_10000C9C0(&qword_1005DC798, &qword_100504118);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  if (!__OFADD__(a2, 1))
  {
    v48 = *a1;
    v49 = *(a1 + 8);
    v50 = *(a1 + 16);
    v51 = *(a1 + 20);
    v52 = *(a1 + 22);
    if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v54 = a3;
    }

    else
    {
      v53 = *a1;

      sub_1004658F8(a1, &v79);
      if (!v75)
      {
        v76 = v51;
        sub_10046C184(v79, v80, v81 | (v82 << 32) | (v83 << 48), 0xD000000000000020, 0x80000001004B03C0, 84);
        v72 = v50;
        v73 = sub_1004A5834();
        v56 = v55;

        if (*(v46 + 16))
        {
          v57 = sub_100064090(v73, v56);
          if (v58)
          {
            v59 = v57;

            v60 = *(v46 + 56) + 16 * v59;
            v62 = *v60;
            v61 = *(v60 + 8);
            v79 = a2;
            v80 = a3;

            v62(v84, a1, &v79);

            v66 = v84[9];
            v67 = v84[10];
            v68 = v84[7];
            *(a8 + 128) = v84[8];
            *(a8 + 144) = v66;
            *(a8 + 160) = v67;
            *(a8 + 176) = v85;
            v69 = v84[5];
            *(a8 + 64) = v84[4];
            *(a8 + 80) = v69;
            *(a8 + 96) = v84[6];
            *(a8 + 112) = v68;
            v70 = v84[1];
            *a8 = v84[0];
            *(a8 + 16) = v70;
            v71 = v84[3];
            *(a8 + 32) = v84[2];
            *(a8 + 48) = v71;
            return result;
          }
        }

        v79 = 0;
        v80 = 0xE000000000000000;
        sub_1004A6724(25);

        v79 = 0xD000000000000017;
        v80 = 0x80000001004B08E0;
        v86._countAndFlagsBits = v73;
        v86._object = v56;
        sub_1004A5994(v86);

        v63 = v79;
        v64 = v80;
        sub_1003A527C();
        swift_allocError();
        *v65 = v63;
        v65[1] = v64;
        v65[2] = 0xD000000000000020;
        v65[3] = 0x80000001004B03C0;
        v65[4] = 86;
        swift_willThrow();

        v50 = v72;
        v51 = v76;
LABEL_7:
        *a1 = v48;
        *(a1 + 8) = v49;
        *(a1 + 16) = v50;
        *(a1 + 20) = v51;
        *(a1 + 22) = v52;
        swift_willThrow();
      }
    }

    swift_willThrow();

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10040D758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_100411AA0;
  *(v17 + 24) = v16;
  v42 = sub_100411AC0;
  v43 = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_100411AF0;
  *(v19 + 24) = v18;
  v44 = sub_100411C00;
  v45 = v19;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100411B10;
  *(v21 + 24) = v20;
  v46 = sub_100411C00;
  v47 = v21;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_100411B30;
  *(v23 + 24) = v22;
  v48 = sub_100411C00;
  v49 = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_100411B8C;
  *(v25 + 24) = v24;
  v50 = sub_100411C00;
  v51 = v25;
  v26 = a2 + 1;
  v27 = __OFADD__(a2, 1);

  if (!v27)
  {
    swift_retain_n();
    v29 = 32;
    v30 = a1;
    while (1)
    {
      *(swift_allocObject() + 16) = *&v41[v29];
      if (v26 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v37 = a3;
      }

      else
      {
        v40 = v29;
        v31 = *v30;
        v32 = *(v30 + 8);
        v33 = *(v30 + 16);
        v39 = *(v30 + 20);
        v34 = v26;
        v35 = *(v30 + 22);

        sub_100411BE4(v30, v34, a3);
        if (!v8)
        {

          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          return swift_arrayDestroy();
        }

        v36 = *v30;

        *v30 = v31;
        *(v30 + 8) = v32;
        *(v30 + 16) = v33;
        *(v30 + 20) = v39;
        *(v30 + 22) = v35;
        v26 = v34;
        v29 = v40;
      }

      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          swift_arrayDestroy();
        }
      }

      v8 = 0;
      v29 += 16;
      if (v29 == 112)
      {
        sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
        swift_arrayDestroy();
        sub_1003A527C();
        swift_allocError();
        *v38 = 0xD000000000000019;
        v38[1] = 0x80000001004B08C0;
        v38[2] = 0xD000000000000020;
        v38[3] = 0x80000001004B03C0;
        v38[4] = 72;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10040DC90@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, _DWORD *a4@<X8>)
{
  result = sub_10040691C(a1, a2, a3);
  if (!v4)
  {
    v10 = result;
    sub_10046B71C(0x45474E5550584520uLL, 0xE800000000000000, 0, 0, a1, a2, a3);
    *a4 = v10;
    type metadata accessor for MessageData();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_10040DD2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_10046B71C(0x44454853494E4156uLL, 0xE900000000000020, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v18 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (v18 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v21 = a3;
      return swift_willThrow();
    }

    else
    {
      v19 = *a1;
      v20 = *(a1 + 8);
      v23 = *(a1 + 20);
      v24 = *(a1 + 16);
      v22 = *(a1 + 22);

      sub_10041DC38(a1, v18, a3, a4, a5, a6, a7, a8);

      type metadata accessor for MessageData();
      return swift_storeEnumTagMultiPayload();
    }
  }

  return result;
}

uint64_t sub_10040DEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_10046B71C(0xD000000000000013, 0x80000001004B09F0, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v18 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (v18 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v21 = a3;
      return swift_willThrow();
    }

    else
    {
      v19 = *a1;
      v20 = *(a1 + 8);
      v23 = *(a1 + 20);
      v24 = *(a1 + 16);
      v22 = *(a1 + 22);

      sub_10041DC38(a1, v18, a3, a4, a5, a6, a7, a8);

      type metadata accessor for MessageData();
      return swift_storeEnumTagMultiPayload();
    }
  }

  return result;
}

uint64_t sub_10040E03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>, unint64_t a10, void (*a11)(uint64_t, void **, uint64_t, int64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = sub_10046B71C(a8, a10, 0, 0, a1, a2, a3);
  if (!v11)
  {
    v21 = _swiftEmptyArrayStorage;

    a11(a1, &v21, a2, a3, a4, a5, a6, a7);

    *a9 = v21;
    type metadata accessor for MessageData();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_10040E140@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v37 = v11;
    v38 = v9;
    v39 = v10;
    if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v21 = a3;
      return swift_willThrow();
    }

    v13 = result;
    v14 = *result;
    v15 = *(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 20);
    v18 = a2 + 2;
    v19 = *(result + 22);
    if (a2 + 2 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v22 = a3;
      goto LABEL_8;
    }

    sub_100469DF8(v13);
    if (v8)
    {

LABEL_8:
      swift_willThrow();
      *v13 = v14;
      *(v13 + 8) = v15;
      *(v13 + 16) = v16;
      *(v13 + 20) = v17;
      *(v13 + 22) = v19;
      return swift_willThrow();
    }

    v29 = *v13;

    sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v13, v18, a3);

    v34 = sub_10046D9E8(v13, v18, a3, a4, a5, a6, a7, v18, a3);

    if (v34)
    {
      v23 = v34;
    }

    else
    {
      v23 = _swiftEmptyArrayStorage;
    }

    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 1, v13, v18, a3);

    *&v35[0] = v23;
    result = sub_1002FA00C(v35);
    v24 = v35[9];
    *(a8 + 128) = v35[8];
    *(a8 + 144) = v24;
    *(a8 + 160) = v35[10];
    *(a8 + 176) = v36;
    v25 = v35[5];
    *(a8 + 64) = v35[4];
    *(a8 + 80) = v25;
    v26 = v35[7];
    *(a8 + 96) = v35[6];
    *(a8 + 112) = v26;
    v27 = v35[1];
    *a8 = v35[0];
    *(a8 + 16) = v27;
    v28 = v35[3];
    *(a8 + 32) = v35[2];
    *(a8 + 48) = v28;
  }

  return result;
}

uint64_t sub_10040E3B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = __OFADD__(a2, 1);
  v11 = a2 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    if (v11 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
      return swift_willThrow();
    }

    v13 = result;
    v15 = *result;
    v16 = *(result + 8);
    v17 = *(result + 16);
    v18 = *(result + 20);
    v19 = *(result + 22);
    sub_100469DF8(result);
    if (v8)
    {
      *v13 = v15;
      *(v13 + 8) = v16;
      *(v13 + 16) = v17;
      *(v13 + 20) = v18;
      *(v13 + 22) = v19;
      return swift_willThrow();
    }

    sub_100402224(v13, a2, a3, a4, a5, a6, a7, v42);
    v34 = v42[4];
    v35 = v42[5];
    v36 = v42[6];
    *&v37 = v43;
    v30 = v42[0];
    v31 = v42[1];
    v32 = v42[2];
    v33 = v42[3];
    result = sub_1002FA01C(&v30);
    v21 = v39;
    *(a8 + 128) = v38;
    *(a8 + 144) = v21;
    *(a8 + 160) = v40;
    *(a8 + 176) = v41;
    v22 = v35;
    *(a8 + 64) = v34;
    *(a8 + 80) = v22;
    v23 = v37;
    *(a8 + 96) = v36;
    *(a8 + 112) = v23;
    v24 = v31;
    *a8 = v30;
    *(a8 + 16) = v24;
    v25 = v33;
    *(a8 + 32) = v32;
    *(a8 + 48) = v25;
  }

  return result;
}

uint64_t sub_10040E53C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __OFADD__(a2, 1);
  v7 = a2 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v10 = *result;
    v11 = *(result + 8);
    v12 = *(result + 16);
    v13 = *(result + 20);
    v14 = *(result + 22);
    sub_100469DF8(result);
    if (v4)
    {
      *v9 = v10;
      *(v9 + 8) = v11;
      *(v9 + 16) = v12;
      *(v9 + 20) = v13;
      *(v9 + 22) = v14;
      return swift_willThrow();
    }

    *&v22[0] = sub_100400454(v9, a2, a3);
    result = sub_1002F9FE4(v22);
    v16 = v22[9];
    *(a4 + 128) = v22[8];
    *(a4 + 144) = v16;
    *(a4 + 160) = v22[10];
    *(a4 + 176) = v23;
    v17 = v22[5];
    *(a4 + 64) = v22[4];
    *(a4 + 80) = v17;
    v18 = v22[7];
    *(a4 + 96) = v22[6];
    *(a4 + 112) = v18;
    v19 = v22[1];
    *a4 = v22[0];
    *(a4 + 16) = v19;
    v20 = v22[3];
    *(a4 + 32) = v22[2];
    *(a4 + 48) = v20;
  }

  return result;
}

uint64_t sub_10040E698@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __OFADD__(a2, 1);
  v7 = a2 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v16 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 20);
    v15 = *(result + 22);
    sub_100469DF8(result);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    v17 = sub_10046C278(v9, a2, a3, 1);
    if ((v17 & 0x8000000000000000) != 0)
    {
      sub_1003A527C();
      swift_allocError();
      *v23 = 0xD000000000000011;
      v23[1] = 0x80000001004B08A0;
      v23[2] = 0xD000000000000020;
      v23[3] = 0x80000001004B03C0;
      v23[4] = 202;
      return swift_willThrow();
    }

    *&v24[0] = v17;
    result = sub_1002F9FD0(v24);
    v18 = v24[9];
    *(a4 + 128) = v24[8];
    *(a4 + 144) = v18;
    *(a4 + 160) = v24[10];
    *(a4 + 176) = v25;
    v19 = v24[5];
    *(a4 + 64) = v24[4];
    *(a4 + 80) = v19;
    v20 = v24[7];
    *(a4 + 96) = v24[6];
    *(a4 + 112) = v20;
    v21 = v24[1];
    *a4 = v24[0];
    *(a4 + 16) = v21;
    v22 = v24[3];
    *(a4 + 32) = v24[2];
    *(a4 + 48) = v22;
  }

  return result;
}

uint64_t sub_10040E840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_100411A5C;
  *(v17 + 24) = v16;
  v41[0] = sub_1004068EC;
  v41[1] = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  result = swift_allocObject();
  *(result + 16) = sub_100411A80;
  *(result + 24) = v18;
  v41[2] = sub_1004068EC;
  v41[3] = result;
  v20 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    swift_retain_n();
    v21 = 0;
    for (i = 0; ; i = 1)
    {
      v39 = v21;
      *(swift_allocObject() + 16) = *&v41[2 * i];
      if (v20 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v30 = a3;
      }

      else
      {
        v23 = *a1;
        v24 = *(a1 + 8);
        v25 = *(a1 + 16);
        v38 = v9;
        v26 = v20;
        v27 = *(a1 + 20);
        v28 = *(a1 + 22);

        sub_100411D00(a1, v26, a3);
        if (!v38)
        {

          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          result = swift_arrayDestroy();
          v32 = v51;
          *(a8 + 128) = v50;
          *(a8 + 144) = v32;
          *(a8 + 160) = v52;
          *(a8 + 176) = v53;
          v33 = v47;
          *(a8 + 64) = v46;
          *(a8 + 80) = v33;
          v34 = v49;
          *(a8 + 96) = v48;
          *(a8 + 112) = v34;
          v35 = v43;
          *a8 = v42;
          *(a8 + 16) = v35;
          v36 = v45;
          *(a8 + 32) = v44;
          *(a8 + 48) = v36;
          return result;
        }

        v29 = *a1;

        *a1 = v23;
        *(a1 + 8) = v24;
        *(a1 + 16) = v25;
        *(a1 + 20) = v27;
        *(a1 + 22) = v28;
        v20 = v26;
      }

      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          swift_arrayDestroy();
        }
      }

      v9 = 0;
      v21 = 1;
      if (v39)
      {
        sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
        swift_arrayDestroy();
        sub_1003A527C();
        swift_allocError();
        *v31 = 0xD000000000000019;
        v31[1] = 0x80000001004B08C0;
        v31[2] = 0xD000000000000020;
        v31[3] = 0x80000001004B03C0;
        v31[4] = 137;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

double sub_10040ED10@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(_OWORD *)@<X2>, uint64_t a4@<X8>)
{
  sub_10040F91C(a1, *a2, a2[1], a3, v12);
  if (!v4)
  {
    v7 = v20;
    *(a4 + 128) = v19;
    *(a4 + 144) = v7;
    *(a4 + 160) = v21;
    *(a4 + 176) = v22;
    v8 = v16;
    *(a4 + 64) = v15;
    *(a4 + 80) = v8;
    v9 = v18;
    *(a4 + 96) = v17;
    *(a4 + 112) = v9;
    v10 = v12[1];
    *a4 = v12[0];
    *(a4 + 16) = v10;
    result = *&v13;
    v11 = v14;
    *(a4 + 32) = v13;
    *(a4 + 48) = v11;
  }

  return result;
}

uint64_t sub_10040ED9C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{

  v17 = sub_10046FB50(a1, a2, a3, a4, a5, a6, a7);
  v19 = v18;
  v21 = v20;

  if (!v8)
  {
    if (!v17)
    {
      v17 = _swiftEmptyArrayStorage;
      v19 = 0;
      v21 = 2;
    }

    result = sub_10047562C(a1, a2, a3);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1000511A4(v19, v21);
      sub_1003A5228();
      swift_allocError();
      *v26 = a3;
      return swift_willThrow();
    }

    else
    {
      v32 = v23;
      v33 = result;
      v24 = *a1;
      v25 = *(a1 + 8);
      v35 = *(a1 + 20);
      v36 = *(a1 + 16);
      v34 = *(a1 + 22);

      sub_100469DF8(a1);

      sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, a1, a2, a3);
      *&v37 = v17;
      *(&v37 + 1) = v19;
      *&v38 = v21;
      *(&v38 + 1) = v33;
      LOBYTE(v39) = v32 & 1 | 0x40;
      result = sub_1002F9E5C(&v37);
      v27 = v46;
      *(a8 + 128) = v45;
      *(a8 + 144) = v27;
      *(a8 + 160) = v47;
      *(a8 + 176) = v48;
      v28 = v42;
      *(a8 + 64) = v41;
      *(a8 + 80) = v28;
      v29 = v44;
      *(a8 + 96) = v43;
      *(a8 + 112) = v29;
      v30 = v38;
      *a8 = v37;
      *(a8 + 16) = v30;
      v31 = v40;
      *(a8 + 32) = v39;
      *(a8 + 48) = v31;
    }
  }

  return result;
}

uint64_t sub_10040F034@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v11 = __OFADD__(a2, 1);
  v12 = a2 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    if (v12 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v21 = a3;
      return swift_willThrow();
    }

    v15 = result;
    v16 = *result;
    v17 = *(result + 8);
    v18 = *(result + 16);
    v19 = *(result + 20);
    v20 = *(result + 22);
    sub_100469DF8(result);
    if (v9)
    {
      *v15 = v16;
      *(v15 + 8) = v17;
      *(v15 + 16) = v18;
      *(v15 + 20) = v19;
      *(v15 + 22) = v20;
      return swift_willThrow();
    }

    sub_1003F60D8(v15, a2, a3, a4, a5, a6, a7, v56);
    v40 = v56[8];
    v41 = v56[9];
    v42 = v56[10];
    LOBYTE(v43) = v57;
    v36 = v56[4];
    v37 = v56[5];
    v38 = v56[6];
    v39 = v56[7];
    v32 = v56[0];
    v33 = v56[1];
    v34 = v56[2];
    v35 = v56[3];
    UInt32.init(_:)(&v32);
    v52 = v40;
    v53 = v41;
    v54 = v42;
    v55 = v43;
    v48 = v36;
    v49 = v37;
    v50 = v38;
    v51 = v39;
    v44 = v32;
    v45 = v33;
    v46 = v34;
    v47 = v35;
    HIBYTE(v43) = a8;
    result = sub_1002F9F44(&v32);
    v22 = v41;
    *(a9 + 128) = v40;
    *(a9 + 144) = v22;
    *(a9 + 160) = v42;
    *(a9 + 176) = v43;
    v23 = v37;
    *(a9 + 64) = v36;
    *(a9 + 80) = v23;
    v24 = v39;
    *(a9 + 96) = v38;
    *(a9 + 112) = v24;
    v25 = v33;
    *a9 = v32;
    *(a9 + 16) = v25;
    v26 = v35;
    *(a9 + 32) = v34;
    *(a9 + 48) = v26;
  }

  return result;
}

uint64_t sub_10040F2E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __OFADD__(a2, 1);
  v7 = a2 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v16 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 20);
    v15 = *(result + 22);
    sub_100469DF8(result);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    LODWORD(v22[0]) = sub_100405E9C(v9, a2, a3);
    result = sub_1002F9FBC(v22);
    v17 = v22[9];
    *(a4 + 128) = v22[8];
    *(a4 + 144) = v17;
    *(a4 + 160) = v22[10];
    *(a4 + 176) = v23;
    v18 = v22[5];
    *(a4 + 64) = v22[4];
    *(a4 + 80) = v18;
    v19 = v22[7];
    *(a4 + 96) = v22[6];
    *(a4 + 112) = v19;
    v20 = v22[1];
    *a4 = v22[0];
    *(a4 + 16) = v20;
    v21 = v22[3];
    *(a4 + 32) = v22[2];
    *(a4 + 48) = v21;
  }

  return result;
}

uint64_t sub_10040F424@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
    }

    else
    {
      v12 = result;
      v16 = *result;
      v17 = *(result + 8);
      v37 = *(result + 20);
      v38 = *(result + 16);
      v36 = *(result + 22);

      sub_10046B71C(0x5BuLL, 0xE100000000000000, 0, 0, v12, v9, a3);
      if (v8)
      {
        v19 = *v12;

        *v12 = v16;
        *(v12 + 8) = v17;
        *(v12 + 16) = v38;
        *(v12 + 20) = v37;
        *(v12 + 22) = v36;
      }

      else
      {

        v18 = sub_100470F30(v12, v9, a3, a4, a5, a6, a7);

        sub_10046B71C(0x5DuLL, 0xE100000000000000, 0, 0, v12, v9, a3);

        if (v18)
        {
          v21 = v18;
        }

        else
        {
          v21 = _swiftEmptyArrayStorage;
        }

        v22 = *v12;
        v23 = *(v12 + 8);
        v24 = *(v12 + 16);
        v25 = *(v12 + 20);
        v26 = *(v12 + 22);

        sub_100469DF8(v12);

        v27 = sub_10046C278(v12, a2, a3, 1);
        if ((v27 & 0x8000000000000000) == 0)
        {
          *&v39[0] = v21;
          *(&v39[0] + 1) = v27;
          result = sub_100411A48(v39);
          v28 = v39[9];
          *(a8 + 128) = v39[8];
          *(a8 + 144) = v28;
          *(a8 + 160) = v39[10];
          *(a8 + 176) = v40;
          v29 = v39[5];
          *(a8 + 64) = v39[4];
          *(a8 + 80) = v29;
          v30 = v39[7];
          *(a8 + 96) = v39[6];
          *(a8 + 112) = v30;
          v31 = v39[1];
          *a8 = v39[0];
          *(a8 + 16) = v31;
          v32 = v39[3];
          *(a8 + 32) = v39[2];
          *(a8 + 48) = v32;
          return result;
        }

        sub_1003A527C();
        swift_allocError();
        *v33 = 0xD000000000000011;
        v33[1] = 0x80000001004B08A0;
        v33[2] = 0xD000000000000020;
        v33[3] = 0x80000001004B03C0;
        v33[4] = 202;
      }
    }

    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_10040F718@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
      return swift_willThrow();
    }

    v7 = result;
    v8 = *result;
    v9 = *(result + 8);
    v10 = *(result + 16);
    v11 = *(result + 20);
    v12 = *(result + 22);
    if (a2 + 2 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v16 = a3;
      goto LABEL_8;
    }

    v14 = *result;

    sub_100469DF8(v7);
    if (v4)
    {

LABEL_8:
      swift_willThrow();
      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
      return swift_willThrow();
    }

    sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v7, v5, a3);
    v22 = sub_10041D9A8(v7, v5, a3);
    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v7, v5, a3);

    *&v23[0] = v22;
    result = sub_1002F9FA8(v23);
    v17 = v23[9];
    *(a4 + 128) = v23[8];
    *(a4 + 144) = v17;
    *(a4 + 160) = v23[10];
    *(a4 + 176) = v24;
    v18 = v23[5];
    *(a4 + 64) = v23[4];
    *(a4 + 80) = v18;
    v19 = v23[7];
    *(a4 + 96) = v23[6];
    *(a4 + 112) = v19;
    v20 = v23[1];
    *a4 = v23[0];
    *(a4 + 16) = v20;
    v21 = v23[3];
    *(a4 + 32) = v23[2];
    *(a4 + 48) = v21;
  }

  return result;
}

uint64_t sub_10040F91C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t (*a4)(_OWORD *)@<X3>, uint64_t a5@<X8>)
{
  v7 = __OFADD__(a2, 1);
  v8 = a2 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v17 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v12 = *result;
    v13 = *(result + 8);
    v14 = *(result + 16);
    v15 = *(result + 20);
    v16 = *(result + 22);
    sub_100469DF8(result);
    if (v5)
    {
      *v10 = v12;
      *(v10 + 8) = v13;
      *(v10 + 16) = v14;
      *(v10 + 20) = v15;
      *(v10 + 22) = v16;
      return swift_willThrow();
    }

    *&v24[0] = sub_10046C278(v10, a2, a3, 0);
    result = a4(v24);
    v18 = v24[9];
    *(a5 + 128) = v24[8];
    *(a5 + 144) = v18;
    *(a5 + 160) = v24[10];
    *(a5 + 176) = v25;
    v19 = v24[5];
    *(a5 + 64) = v24[4];
    *(a5 + 80) = v19;
    v20 = v24[7];
    *(a5 + 96) = v24[6];
    *(a5 + 112) = v20;
    v21 = v24[1];
    *a5 = v24[0];
    *(a5 + 16) = v21;
    v22 = v24[3];
    *(a5 + 32) = v24[2];
    *(a5 + 48) = v22;
  }

  return result;
}

uint64_t sub_10040FA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  v17 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
LABEL_27:
    v10 = sub_100461668((a8 > 1), v14, 1, v10);
    goto LABEL_9;
  }

  v8 = a3;
  if (v17 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v23 = v8;
    return swift_willThrow();
  }

  v12 = a2;
  v9 = a1;
  v69 = a5;
  v74 = a4;
  v70 = a6;
  v71 = a7;
  v68 = a8;
  v18 = *a1;
  v19 = *(a1 + 8);
  v20 = *(a1 + 16);
  v21 = *(a1 + 20);
  v22 = *(a1 + 22);
  sub_100469DF8(a1);
  if (v10)
  {
    *v9 = v18;
    *(v9 + 8) = v19;
    *(v9 + 16) = v20;
    *(v9 + 20) = v21;
    *(v9 + 22) = v22;
    return swift_willThrow();
  }

  sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v9, v12, v8);
  v11 = 0;

  v15 = sub_1004701D4(v9, v12, v8, v74, v69, v70, v71);
  v26 = v25;
  v28 = v27;

  if (!v15)
  {
    v48 = _swiftEmptyArrayStorage;
LABEL_24:
    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v9, v12, v8);

    *&v72[0] = v48;
    result = sub_1002F9FF8(v72);
    v53 = v72[9];
    *(v68 + 128) = v72[8];
    *(v68 + 144) = v53;
    *(v68 + 160) = v72[10];
    *(v68 + 176) = v73;
    v54 = v72[5];
    *(v68 + 64) = v72[4];
    *(v68 + 80) = v54;
    v55 = v72[7];
    *(v68 + 96) = v72[6];
    *(v68 + 112) = v55;
    v56 = v72[1];
    *v68 = v72[0];
    *(v68 + 16) = v56;
    v57 = v72[3];
    *(v68 + 32) = v72[2];
    *(v68 + 48) = v57;
    return result;
  }

  v29 = v26;
  v16 = v28;
  v66 = v29;
  v64 = HIDWORD(v29);
  swift_retain_n();
  v10 = sub_100461668(0, 1, 1, _swiftEmptyArrayStorage);
  v13 = *(v10 + 2);
  a8 = *(v10 + 3);
  v14 = v13 + 1;
  if (v13 >= a8 >> 1)
  {
    goto LABEL_27;
  }

LABEL_9:
  *(v10 + 2) = v14;
  v30 = &v10[24 * v13];
  *(v30 + 4) = v15;
  *(v30 + 10) = v66;
  *(v30 + 11) = v64;
  *(v30 + 12) = v16;
  *(v30 + 26) = WORD2(v16);
  v30[54] = BYTE6(v16);
  v31 = *(v9 + 8);
  v59 = *(v9 + 20);
  v60 = *(v9 + 16);
  v58 = *(v9 + 22);
  v61 = *v9;

  v65 = v17 + 1;
  if (v17 + 1 >= v8)
  {
    v48 = v10;
    sub_1003A5228();
    swift_allocError();
    *v49 = v8;
  }

  else
  {
    v32 = v17 + 2;
    v33 = *v9;
    v34 = *(v9 + 8);
    v35 = *(v9 + 16);
    v36 = *(v9 + 20);
    v37 = *(v9 + 22);
    v62 = v32;
    if (v32 >= v8)
    {
LABEL_19:
      v63 = v37;
      sub_1003A5228();
      swift_allocError();
      *v50 = v8;

      v67 = v10;
    }

    else
    {
      v38 = v10;
      while (1)
      {
        v67 = v38;
        swift_retain_n();
        sub_100469DF8(v9);

        v63 = v37;
        if (v11)
        {
          break;
        }

        v39 = sub_100421650(v9, v65, v8, v74, v69, v70, v71);
        v11 = 0;
        v41 = v40;
        v43 = v42;
        v44 = v39;

        v38 = v67;
        v46 = *(v67 + 2);
        v45 = *(v67 + 3);
        if (v46 >= v45 >> 1)
        {
          v38 = sub_100461668((v45 > 1), v46 + 1, 1, v67);
        }

        *(v38 + 2) = v46 + 1;
        v47 = &v38[24 * v46];
        *(v47 + 4) = v44;
        *(v47 + 5) = v41;
        *(v47 + 12) = v43;
        *(v47 + 26) = WORD2(v43);
        v47[54] = BYTE6(v43);
        v33 = *v9;
        v34 = *(v9 + 8);
        v35 = *(v9 + 16);
        v36 = *(v9 + 20);
        v37 = *(v9 + 22);
        if (v62 >= v8)
        {
          goto LABEL_19;
        }
      }

      *v9 = v33;
      *(v9 + 8) = v34;
      *(v9 + 16) = v35;
      *(v9 + 20) = v36;
      *(v9 + 22) = v37;
    }

    swift_willThrow();
    v51 = *v9;

    *v9 = v33;
    *(v9 + 8) = v34;
    *(v9 + 16) = v35;
    *(v9 + 20) = v36;
    v48 = v67;
    *(v9 + 22) = v63;
  }

  swift_willThrow();
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast())
  {

    goto LABEL_24;
  }

  v52 = *v9;

  *v9 = v61;
  *(v9 + 8) = v31;
  *(v9 + 16) = v60;
  *(v9 + 20) = v59;
  *(v9 + 22) = v58;
  swift_willThrow();
}

uint64_t sub_100410000@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, unint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v7 = __OFADD__(a2, 1);
  v8 = a2 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v17 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v12 = *result;
    v13 = *(result + 8);
    v14 = *(result + 16);
    v15 = *(result + 20);
    v16 = *(result + 22);
    sub_100469DF8(result);
    if (v5)
    {
      *v10 = v12;
      *(v10 + 8) = v13;
      *(v10 + 16) = v14;
      *(v10 + 20) = v15;
      *(v10 + 22) = v16;
      return swift_willThrow();
    }

    sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, v10, a2, a3);
    v24 = a4;
    v25 = 0uLL;
    LOBYTE(v26) = 0x80;
    result = sub_1002F9E5C(&v24);
    v18 = v33;
    *(a5 + 128) = v32;
    *(a5 + 144) = v18;
    *(a5 + 160) = v34;
    *(a5 + 176) = v35;
    v19 = v29;
    *(a5 + 64) = v28;
    *(a5 + 80) = v19;
    v20 = v31;
    *(a5 + 96) = v30;
    *(a5 + 112) = v20;
    v21 = v25;
    *a5 = v24;
    *(a5 + 16) = v21;
    v22 = v27;
    *(a5 + 32) = v26;
    *(a5 + 48) = v22;
  }

  return result;
}

uint64_t sub_100410168@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return result;
  }

  if (v9 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v20 = a3;
    return swift_willThrow();
  }

  v12 = result;
  v16 = *result;
  v17 = *(result + 8);
  v39 = *(result + 16);
  v36 = *(result + 22);
  v37 = *(result + 20);

  sub_10046B71C(0x5BuLL, 0xE100000000000000, 0, 0, v12, v9, a3);
  if (v8)
  {
    v19 = *v12;

    *v12 = v16;
    *(v12 + 8) = v17;
    *(v12 + 16) = v39;
    *(v12 + 20) = v37;
    *(v12 + 22) = v36;
    return swift_willThrow();
  }

  v18 = sub_100470F30(v12, v9, a3, a4, a5, a6, a7);

  sub_10046B71C(0x5DuLL, 0xE100000000000000, 0, 0, v12, v9, a3);

  if (v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  v22 = sub_10047562C(v12, a2, a3);
  v24 = v23;
  v38 = v22;
  v25 = *v12;
  v26 = *(v12 + 8);
  v27 = *(v12 + 16);
  v28 = *(v12 + 20);
  v40 = *(v12 + 22);

  sub_100469DF8(v12);

  sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, v12, a2, a3);
  *&v41 = v21;
  *(&v41 + 1) = v38;
  v42 = v24 & 1;
  LOBYTE(v43) = 0;
  result = sub_1002F9E5C(&v41);
  v29 = v50;
  *(a8 + 128) = v49;
  *(a8 + 144) = v29;
  *(a8 + 160) = v51;
  *(a8 + 176) = v52;
  v30 = v46;
  *(a8 + 64) = v45;
  *(a8 + 80) = v30;
  v31 = v48;
  *(a8 + 96) = v47;
  *(a8 + 112) = v31;
  v32 = v42;
  *a8 = v41;
  *(a8 + 16) = v32;
  v33 = v44;
  *(a8 + 32) = v43;
  *(a8 + 48) = v33;
  return result;
}

uint64_t sub_100410434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1004119AC;
  *(v18 + 24) = v17;
  v41 = sub_1004068EC;
  v42 = v18;
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1004119CC;
  *(v20 + 24) = v19;
  v43 = sub_1004068EC;
  v44 = v20;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  result = swift_allocObject();
  *(result + 16) = sub_1004119EC;
  *(result + 24) = v21;
  v45 = sub_1004068EC;
  v46 = result;
  v23 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    swift_retain_n();
    v24 = 32;
    while (1)
    {
      *(swift_allocObject() + 16) = *&v40[v24];
      if (v23 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v31 = a3;
      }

      else
      {
        v25 = *a1;
        v26 = *(a1 + 8);
        v39 = *(a1 + 16);
        v27 = a3;
        v28 = *(a1 + 20);
        v29 = *(a1 + 22);

        sub_100411D00(a1, v23, v27);
        if (!v9)
        {

          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          result = swift_arrayDestroy();
          v33 = v56;
          *(a8 + 128) = v55;
          *(a8 + 144) = v33;
          *(a8 + 160) = v57;
          *(a8 + 176) = v58;
          v34 = v52;
          *(a8 + 64) = v51;
          *(a8 + 80) = v34;
          v35 = v54;
          *(a8 + 96) = v53;
          *(a8 + 112) = v35;
          v36 = v48;
          *a8 = v47;
          *(a8 + 16) = v36;
          v37 = v50;
          *(a8 + 32) = v49;
          *(a8 + 48) = v37;
          return result;
        }

        v30 = *a1;

        *a1 = v25;
        *(a1 + 8) = v26;
        *(a1 + 16) = v39;
        *(a1 + 20) = v28;
        *(a1 + 22) = v29;
        a3 = v27;
      }

      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          swift_arrayDestroy();
        }
      }

      v9 = 0;
      v24 += 16;
      if (v24 == 80)
      {
        sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
        swift_arrayDestroy();
        sub_1003A527C();
        swift_allocError();
        *v32 = 0xD000000000000019;
        v32[1] = 0x80000001004B08C0;
        v32[2] = 0xD000000000000020;
        v32[3] = 0x80000001004B03C0;
        v32[4] = 296;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004108E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = __OFADD__(a2, 1);
  v10 = a2 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    if (v10 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v12 = result;
    v14 = *result;
    v15 = *(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 20);
    v18 = *(result + 22);
    sub_100469DF8(result);
    if (v7)
    {
      *v12 = v14;
      *(v12 + 8) = v15;
      *(v12 + 16) = v16;
      *(v12 + 20) = v17;
      *(v12 + 22) = v18;
      return swift_willThrow();
    }

    v20 = sub_1004218EC(v12, a2, a3, a4, a5, a6);
    v22 = v21;
    v23 = v20;
    swift_beginAccess();
    v24 = *(v23 + 24) + ((v22 >> 24) & 0xFFFF00 | BYTE6(v22));
    v25 = sub_1004A58D4();
    v27 = v26;

    *&v37[0] = v25;
    *(&v37[0] + 1) = v27;
    result = sub_1002F9F30(v37);
    v28 = v37[9];
    v29 = v37[10];
    v30 = v37[7];
    *(a7 + 128) = v37[8];
    *(a7 + 144) = v28;
    *(a7 + 160) = v29;
    *(a7 + 176) = v38;
    v31 = v37[5];
    *(a7 + 64) = v37[4];
    *(a7 + 80) = v31;
    *(a7 + 96) = v37[6];
    *(a7 + 112) = v30;
    v32 = v37[1];
    *a7 = v37[0];
    *(a7 + 16) = v32;
    v33 = v37[3];
    *(a7 + 32) = v37[2];
    *(a7 + 48) = v33;
  }

  return result;
}

uint64_t sub_100410A98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __OFADD__(a2, 1);
  v7 = a2 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v16 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 20);
    v15 = *(result + 22);
    sub_100469DF8(result);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    v17 = sub_10042D898(v9, a2, a3);
    v19 = v18;
    v20 = v17;
    swift_beginAccess();
    v21 = *(v20 + 24) + ((v19 >> 24) & 0xFFFF00 | BYTE6(v19));
    v22 = sub_1004A58D4();
    v24 = v23;

    *&v31[0] = v22;
    *(&v31[0] + 1) = v24;
    result = sub_1002F9F30(v31);
    v25 = v31[9];
    v26 = v31[10];
    v27 = v31[7];
    *(a4 + 128) = v31[8];
    *(a4 + 144) = v25;
    *(a4 + 160) = v26;
    *(a4 + 176) = v32;
    v28 = v31[5];
    *(a4 + 64) = v31[4];
    *(a4 + 80) = v28;
    *(a4 + 96) = v31[6];
    *(a4 + 112) = v27;
    v29 = v31[1];
    *a4 = v31[0];
    *(a4 + 16) = v29;
    v30 = v31[3];
    *(a4 + 32) = v31[2];
    *(a4 + 48) = v30;
  }

  return result;
}

uint64_t sub_100410C34@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __OFADD__(a2, 1);
  v7 = a2 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v16 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 20);
    v15 = *(result + 22);
    sub_100469DF8(result);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v9, a2, a3);
    v17 = sub_10042E9D4(v9, a2, a3);
    v19 = v18;
    v20 = v17;
    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v9, a2, a3);
    *&v26[0] = v20;
    *(&v26[0] + 1) = v19;
    result = sub_100411998(v26);
    v21 = v26[9];
    *(a4 + 128) = v26[8];
    *(a4 + 144) = v21;
    *(a4 + 160) = v26[10];
    *(a4 + 176) = v27;
    v22 = v26[5];
    *(a4 + 64) = v26[4];
    *(a4 + 80) = v22;
    v23 = v26[7];
    *(a4 + 96) = v26[6];
    *(a4 + 112) = v23;
    v24 = v26[1];
    *a4 = v26[0];
    *(a4 + 16) = v24;
    v25 = v26[3];
    *(a4 + 32) = v26[2];
    *(a4 + 48) = v25;
  }

  return result;
}

uint64_t sub_100410DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_100411808;
  *(v17 + 24) = v16;
  v41[0] = sub_1004068EC;
  v41[1] = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  result = swift_allocObject();
  *(result + 16) = sub_100411828;
  *(result + 24) = v18;
  v41[2] = sub_1004068EC;
  v41[3] = result;
  v20 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    swift_retain_n();
    v21 = 0;
    for (i = 0; ; i = 1)
    {
      v39 = v21;
      *(swift_allocObject() + 16) = *&v41[2 * i];
      if (v20 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v30 = a3;
      }

      else
      {
        v23 = *a1;
        v24 = *(a1 + 8);
        v25 = *(a1 + 16);
        v38 = v9;
        v26 = v20;
        v27 = *(a1 + 20);
        v28 = *(a1 + 22);

        sub_10040BE98(a1, v26, a3);
        if (!v38)
        {

          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          result = swift_arrayDestroy();
          v32 = v51;
          *(a8 + 128) = v50;
          *(a8 + 144) = v32;
          *(a8 + 160) = v52;
          *(a8 + 176) = v53;
          v33 = v47;
          *(a8 + 64) = v46;
          *(a8 + 80) = v33;
          v34 = v49;
          *(a8 + 96) = v48;
          *(a8 + 112) = v34;
          v35 = v43;
          *a8 = v42;
          *(a8 + 16) = v35;
          v36 = v45;
          *(a8 + 32) = v44;
          *(a8 + 48) = v36;
          return result;
        }

        v29 = *a1;

        *a1 = v23;
        *(a1 + 8) = v24;
        *(a1 + 16) = v25;
        *(a1 + 20) = v27;
        *(a1 + 22) = v28;
        v20 = v26;
      }

      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          swift_arrayDestroy();
        }
      }

      v9 = 0;
      v21 = 1;
      if (v39)
      {
        sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
        swift_arrayDestroy();
        sub_1003A527C();
        swift_allocError();
        *v31 = 0xD000000000000019;
        v31[1] = 0x80000001004B08C0;
        v31[2] = 0xD000000000000020;
        v31[3] = 0x80000001004B03C0;
        v31[4] = 338;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100411258@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __OFADD__(a2, 1);
  v7 = a2 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v16 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 20);
    v15 = *(result + 22);
    sub_100469DF8(result);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v9, a2, a3);
    v17 = sub_10042E9D4(v9, a2, a3);
    v19 = v18;
    v20 = v17;
    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v9, a2, a3);
    *&v26[0] = v20;
    *(&v26[0] + 1) = v19;
    result = sub_10041185C(v26);
    v21 = v26[9];
    *(a4 + 128) = v26[8];
    *(a4 + 144) = v21;
    *(a4 + 160) = v26[10];
    *(a4 + 176) = v27;
    v22 = v26[5];
    *(a4 + 64) = v26[4];
    *(a4 + 80) = v22;
    v23 = v26[7];
    *(a4 + 96) = v26[6];
    *(a4 + 112) = v23;
    v24 = v26[1];
    *a4 = v26[0];
    *(a4 + 16) = v24;
    v25 = v26[3];
    *(a4 + 32) = v26[2];
    *(a4 + 48) = v25;
  }

  return result;
}

uint64_t sub_100411404@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t (*a4)(_OWORD *)@<X7>, uint64_t a5@<X8>)
{
  v7 = __OFADD__(a2, 1);
  v8 = a2 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v17 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v12 = *result;
    v13 = *(result + 8);
    v14 = *(result + 16);
    v15 = *(result + 20);
    v16 = *(result + 22);
    sub_100469DF8(result);
    if (v5)
    {
      *v10 = v12;
      *(v10 + 8) = v13;
      *(v10 + 16) = v14;
      *(v10 + 20) = v15;
      *(v10 + 22) = v16;
      return swift_willThrow();
    }

    sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, v10, a2, a3);
    v24[0] = 0uLL;
    result = a4(v24);
    v18 = v24[9];
    *(a5 + 128) = v24[8];
    *(a5 + 144) = v18;
    *(a5 + 160) = v24[10];
    *(a5 + 176) = v25;
    v19 = v24[5];
    *(a5 + 64) = v24[4];
    *(a5 + 80) = v19;
    v20 = v24[7];
    *(a5 + 96) = v24[6];
    *(a5 + 112) = v20;
    v21 = v24[1];
    *a5 = v24[0];
    *(a5 + 16) = v21;
    v22 = v24[3];
    *(a5 + 32) = v24[2];
    *(a5 + 48) = v22;
  }

  return result;
}

uint64_t sub_100411564()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004115DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_10040E53C(a1, a2, a3, a4);
}

uint64_t sub_1004115FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_10040E698(a1, a2, a3, a4);
}

uint64_t sub_100411660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_10040F2E4(a1, a2, a3, a4);
}

uint64_t sub_1004116C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_10040F718(a1, a2, a3, a4);
}

uint64_t sub_1004116E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_100410000(a1, a2, a3, 1uLL, a4);
}

uint64_t sub_100411704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_100410000(a1, a2, a3, 2uLL, a4);
}

uint64_t sub_100411768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_100410C34(a1, a2, a3, a4);
}

uint64_t sub_1004117A8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100411808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_100411258(a1, a2, a3, a4);
}

uint64_t sub_100411828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_100411404(a1, a2, a3, sub_10041185C, a4);
}

unint64_t sub_100411884(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10000C9C0(a2, a3);
    v5 = sub_1004A6A74();

    for (i = (a1 + 48); ; i += 2)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v15 = *i;

      result = sub_100064090(v7, v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v5[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      *(v5[7] + 16 * result) = v15;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1004119CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_100410A98(a1, a2, a3, a4);
}

uint64_t sub_1004119EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_100411404(a1, a2, a3, sub_1002F9F30, a4);
}

unint64_t sub_100411AA0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_10040DC90(a1, a2, a3, a4);
}

uint64_t sub_100411AC0(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, *a2, a2[1]);
}

uint64_t sub_100411D18(uint64_t result, uint64_t a2, int64_t a3)
{
  v4 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v6 = result;
    if (v4 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
    }

    else
    {
      v7 = *result;
      v8 = *(result + 8);
      v9 = *(result + 16);
      v10 = *(result + 20);
      v11 = *(result + 22);

      v12 = sub_10040691C(v6, v4, a3);
      if (!v3)
      {
        v26 = v12;
        sub_10046B71C(0x3AuLL, 0xE100000000000000, 0, 0, v6, v4, a3);
        v22 = sub_10040691C(v6, v4, a3);

        if (v22 >= v26)
        {
          v23 = v26;
        }

        else
        {
          v23 = v22;
        }

        if (v22 <= v26)
        {
          v24 = v26;
        }

        else
        {
          v24 = v22;
        }

        return v23 | (v24 << 32);
      }

      v13 = *v6;

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v4 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v21 = a3;
      return swift_willThrow();
    }

    v15 = *v6;
    v16 = *(v6 + 8);
    v17 = *(v6 + 16);
    v18 = *(v6 + 20);
    v19 = *(v6 + 22);

    sub_10046B71C(0x2DuLL, 0xE100000000000000, 0, 0, v6, v4, a3);
    v20 = sub_10040691C(v6, v4, a3);
    sub_10046B71C(0x2D3AuLL, 0xE200000000000000, 0, 0, v6, v4, a3);
    v25 = sub_10040691C(v6, v4, a3);

    if (v25 >= v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = v25;
    }

    if (v25 <= v20)
    {
      v24 = v20;
    }

    else
    {
      v24 = v25;
    }

    return v23 | (v24 << 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004120FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(uint64_t, uint64_t, int64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11)
{
  v12 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v14 = result;
    v15 = a9;
    v16 = a11;
    if (v12 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v25 = a3;
    }

    else
    {
      v18 = *(result + 8);
      v37 = *(result + 20);
      v38 = *(result + 16);
      v36 = *(result + 22);
      v39 = *result;

      a8(v14, v12, a3, a4, a5, a6, a7);
      if (!v11)
      {
        v34 = sub_10000C9C0(a10, a11);
        (*(*(v34 - 8) + 56))(a9, 0, 1, v34);
      }

      v24 = *v14;

      *v14 = v39;
      *(v14 + 8) = v18;
      *(v14 + 16) = v38;
      *(v14 + 20) = v37;
      *(v14 + 22) = v36;
      v15 = a9;
      v16 = a11;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v12 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v33 = a3;
      return swift_willThrow();
    }

    v26 = *v14;
    v27 = *(v14 + 8);
    v28 = *(v14 + 16);
    v29 = *(v14 + 20);
    v30 = v12;
    v31 = a3;
    v32 = *(v14 + 22);

    sub_10046B71C(0x24uLL, 0xE100000000000000, 0, 0, v14, v30, v31);
    v35 = sub_10000C9C0(a10, v16);
    (*(*(v35 - 8) + 56))(v15, 1, 1, v35);
  }

  __break(1u);
  return result;
}

uint64_t sub_100412454(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return result;
  }

  if (v10 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v22 = a3;
    return swift_willThrow();
  }

  v14 = result;
  v15 = *result;
  v16 = *(result + 8);
  v28 = *(result + 20);
  v29 = *(result + 16);
  v27 = *(result + 22);

  v20 = a8(v14, v10, a3, a4, a5, a6, a7);
  if (v9)
  {
    v21 = *v14;

    *v14 = v15;
    *(v14 + 8) = v16;
    *(v14 + 16) = v29;
    *(v14 + 20) = v28;
    *(v14 + 22) = v27;
    return swift_willThrow();
  }

  v26 = v20;

  v23 = a9(v14, v10, a3, a4, a5, a6, a7);

  if (v26 >= v23)
  {
    LODWORD(v24) = v23;
  }

  else
  {
    LODWORD(v24) = v26;
  }

  if (v26 <= v23)
  {
    LODWORD(v25) = v23;
  }

  else
  {
    LODWORD(v25) = v26;
  }

  if ((v23 & &_mh_execute_header) != 0)
  {
    v24 = v26;
  }

  else
  {
    v24 = v24;
  }

  if ((v23 & &_mh_execute_header) != 0)
  {
    v25 = v26;
  }

  else
  {
    v25 = v25;
  }

  return v24 | (v25 << 32);
}

uint64_t sub_100412604(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v17 = a3;
    }

    else
    {
      v10 = result;
      v14 = *result;
      v15 = *(result + 8);
      v20 = *(result + 20);
      v21 = *(result + 16);
      v19 = *(result + 22);

      sub_10046B71C(0x202AuLL, 0xE200000000000000, 0, 0, v10, v8, a3);
      if (!v7)
      {
        sub_100412790(v10, v8, a3, a4, a5, a6, a7);
        sub_100464188(v10, v8, a3);
      }

      v16 = *v10;

      *v10 = v14;
      *(v10 + 8) = v15;
      *(v10 + 16) = v21;
      *(v10 + 20) = v20;
      *(v10 + 22) = v19;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100412790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10041A10C;
  *(v17 + 24) = v16;
  v53 = sub_100411AC0;
  v54 = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10041A12C;
  *(v19 + 24) = v18;
  v55 = sub_100411C00;
  v56 = v19;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10041A14C;
  *(v21 + 24) = v20;
  v57 = sub_100411C00;
  v58 = v21;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_10041A16C;
  *(v23 + 24) = v22;
  v59 = sub_100411C00;
  v60 = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_10041A18C;
  *(v25 + 24) = v24;
  v61 = sub_100411C00;
  v62 = v25;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10041A1AC;
  *(v27 + 24) = v26;
  v63 = sub_100411C00;
  v64 = v27;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_10041A1CC;
  *(v29 + 24) = v28;
  v65 = sub_100411C00;
  v66 = v29;
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = a5;
  v30[4] = a6;
  v30[5] = a7;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_10041A1EC;
  *(v31 + 24) = v30;
  v67 = sub_100411C00;
  v68 = v31;
  v32 = swift_allocObject();
  v32[2] = a4;
  v32[3] = a5;
  v32[4] = a6;
  v32[5] = a7;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_10041A20C;
  *(v33 + 24) = v32;
  v69 = sub_100411C00;
  v70 = v33;
  v34 = swift_allocObject();
  v34[2] = a4;
  v34[3] = a5;
  v34[4] = a6;
  v34[5] = a7;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_10041A22C;
  *(v35 + 24) = v34;
  v71 = sub_100411C00;
  v72 = v35;
  v36 = __OFADD__(a2, 1);
  v37 = a2 + 1;
  v38 = v36;
  result = swift_retain_n();
  if ((v38 & 1) == 0)
  {
    swift_retain_n();
    v40 = 32;
    v41 = a1;
    while (1)
    {
      *(swift_allocObject() + 16) = *&v52[v40];
      if (v37 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v48 = a3;
      }

      else
      {
        v51 = v40;
        v42 = *v41;
        v43 = *(v41 + 8);
        v44 = *(v41 + 16);
        v50 = *(v41 + 20);
        v45 = v37;
        v46 = *(v41 + 22);

        sub_100411BE4(v41, v45, a3);
        if (!v8)
        {

          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          return swift_arrayDestroy();
        }

        v47 = *v41;

        *v41 = v42;
        *(v41 + 8) = v43;
        *(v41 + 16) = v44;
        *(v41 + 20) = v50;
        *(v41 + 22) = v46;
        v37 = v45;
        v40 = v51;
      }

      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          swift_arrayDestroy();
        }
      }

      v8 = 0;
      v40 += 16;
      if (v40 == 192)
      {
        sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
        swift_arrayDestroy();
        sub_1003A527C();
        swift_allocError();
        *v49 = 0xD000000000000019;
        v49[1] = 0x80000001004B08C0;
        v49[2] = 0xD000000000000020;
        v49[3] = 0x80000001004B03C0;
        v49[4] = 180;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100412E98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
    }

    else
    {
      v11 = result;
      v12 = *result;
      v13 = *(result + 8);
      v14 = *(result + 16);
      v15 = *(result + 20);
      v16 = *(result + 22);
      if (a2 + 2 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v20 = a3;
      }

      else
      {

        sub_100465CAC(v11, &v31);
        if (!v8)
        {
          v23 = sub_10046C184(v31, v32, v33 | (WORD2(v33) << 32) | (BYTE6(v33) << 48), 0xD000000000000020, 0x80000001004B03C0, 2610);
          v18 = v17;

          sub_100469DF8(v11);

          sub_100413B1C(v11, v9 + 1, a3, a4, a5, a6, a7, sub_10049FA80, &v31, 130);

          v22 = v31;
          v21 = v32;
          v28 = v33;
          v30 = v34;
          sub_100464188(v11, v9, a3);

          *a8 = v23;
          *(a8 + 8) = v18;
          *(a8 + 16) = v22;
          *(a8 + 24) = v21;
          *(a8 + 32) = v28;
          *(a8 + 40) = v30;
          return result;
        }
      }

      swift_willThrow();

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v15;
      *(v11 + 22) = v16;
    }

    return swift_willThrow();
  }

  return result;
}

void sub_100413188(unint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v34 - v17;
  v19 = __OFADD__(a2, 1);
  v20 = a2 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    if (v20 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v25 = a3;
LABEL_9:
      swift_willThrow();
      return;
    }

    v35 = a6;
    v36 = a7;
    v21 = *a1;
    v22 = *(a1 + 8);
    v23 = *(a1 + 16);
    v38 = *(a1 + 20);
    v39 = v23;
    v24 = v20 + 1;
    v37 = *(a1 + 22);
    v40 = v21;
    if (v20 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v26 = a3;
      goto LABEL_8;
    }

    sub_100469DF8(a1);
    if (v7)
    {

LABEL_8:
      swift_willThrow();
      *a1 = v40;
      *(a1 + 8) = v22;
      v27 = v38;
      *(a1 + 16) = v39;
      *(a1 + 20) = v27;
      *(a1 + 22) = v37;
      goto LABEL_9;
    }

    v28 = sub_10041EC70(a1, v20, a3);
    v29 = *a1;
    v30 = v28;
    sub_100469DF8(a1);

    sub_10041E1A4(a1, v24, a3, a4, a5, v35, v36, v18);

    v31 = type metadata accessor for ResponseCodeAppend();
    swift_allocBox();
    v33 = v32;
    sub_100025FDC(v18, v32 + *(v31 + 20), &qword_1005CD1D0, &unk_1004CF2C0);
    *v33 = v30;
  }
}

uint64_t sub_100413424(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v17 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 20);
    v15 = a2 + 2;
    v16 = *(result + 22);
    if (a2 + 2 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
      goto LABEL_8;
    }

    sub_100469DF8(v10);
    if (v7)
    {

LABEL_8:
      swift_willThrow();
      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v14;
      *(v10 + 22) = v16;
      return swift_willThrow();
    }

    v19 = sub_10041EC70(v10, v8, a3);
    v20 = *v10;
    v25 = v19;
    sub_100469DF8(v10);

    sub_10041E8C4(v10, v15, a3, a4, a5, a6, a7, &v30);

    v24 = v30;
    v21 = *v10;
    sub_100469DF8(v10);

    sub_10041E8C4(v10, v15, a3, a4, a5, a6, a7, &v30);

    v22 = v30;
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = v24;
    *(v23 + 32) = v22;
    return v23 | 0x4000000000000000;
  }

  return result;
}

uint64_t sub_1004136B4(uint64_t result, uint64_t a2, int64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v20 = *(result + 22);
    v21 = *(result + 20);

    sub_100413B1C(v10, v8, a3, a4, a5, a6, a7, sub_1004A1DF8, &v22, 100);
    if (v7)
    {
      v18 = *v10;

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v21;
      *(v10 + 22) = v20;
      return swift_willThrow();
    }

    return v22;
  }

  return result;
}

uint64_t sub_100413800(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
LABEL_16:
      swift_willThrow();
      return v8;
    }

    v12 = result;
    v13 = *result;
    v14 = *(result + 8);
    v15 = *(result + 16);
    v32 = *(result + 22);
    v33 = *(result + 20);
    v8 = a7;

    v18 = sub_1004703AC(v12, v9, a3, a4, a5, a6, v8);
    if (v7)
    {

      v19 = *v12;

LABEL_15:
      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v15;
      *(v12 + 20) = v33;
      *(v12 + 22) = v32;
      goto LABEL_16;
    }

    v8 = v18;

    if (v9 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v24 = a3;
    }

    else
    {
      v31 = *v12;
      v21 = *(v12 + 8);
      v22 = *(v12 + 16);
      v30 = *(v12 + 20);
      v23 = *(v12 + 22);
      if (v9 + 2 < a3)
      {
        sub_100469DF8(v12);
        goto LABEL_14;
      }

      sub_1003A5228();
      swift_allocError();
      *v25 = a3;
      swift_willThrow();
      *v12 = v31;
      *(v12 + 8) = v21;
      *(v12 + 16) = v22;
      *(v12 + 20) = v30;
      *(v12 + 22) = v23;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (!swift_dynamicCast())
    {
      v27 = *v12;

      sub_10001114C(v8);

      goto LABEL_15;
    }

LABEL_14:
    v26 = sub_10046D5B0(v12, v9, a3);
    sub_10046C184(v26, v29, v28 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 219);

    return v8;
  }

  __break(1u);
  return result;
}

unint64_t sub_100413B1C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t (*a8)(uint64_t, void *, unint64_t, uint64_t, uint64_t)@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v13 = result;
    v14 = *result;
    v15 = *(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 20);
    v18 = *(result + 22);
    sub_100466470(result, &v50);
    if (v10)
    {
      *v13 = v14;
      *(v13 + 8) = v15;
      *(v13 + 16) = v16;
      *(v13 + 20) = v17;
      *(v13 + 22) = v18;
      return swift_willThrow();
    }

    v20 = sub_10046C184(v50, v51, v52 | (v53 << 32) | (v54 << 48), 0xD000000000000020, 0x80000001004B03C0, 115);
    v43._countAndFlagsBits = a4(v20);
    v43._object = v21;

    v22 = *v13;
    v23 = *(v13 + 8);
    v24 = *(v13 + 16);
    v25 = *(v13 + 20);
    v26 = *(v13 + 22);
    sub_100469DF8(v13);
    v27 = sub_100413800(v13, a2, a3, a4, a5, a6, a7);
    v29 = v28;
    v31 = v30;
    sub_1000110B0(v27);

    v32 = a8(v43._countAndFlagsBits, v43._object, v27, v29, v31);
    if (v35 == -1)
    {
      v50 = 0;
      v51 = 0xE000000000000000;
      sub_1004A6724(25);

      v50 = 0xD000000000000017;
      v51 = 0x80000001004B0A10;
      sub_1004A5994(v43);

      v40 = v50;
      v41 = v51;
      sub_1003A527C();
      swift_allocError();
      *v42 = v40;
      v42[1] = v41;
      v42[2] = 0xD000000000000020;
      v42[3] = 0x80000001004B03C0;
      v42[4] = a10;
      swift_willThrow();
      sub_10001114C(v27);
    }

    else
    {
      v36 = v32;
      v37 = v33;
      v38 = v34;
      v39 = v35;
      sub_10001114C(v27);

      *a9 = v36;
      *(a9 + 8) = v37;
      *(a9 + 16) = v38;
      *(a9 + 24) = v39;
    }
  }

  return result;
}

uint64_t sub_100413ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_1004136B4(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    *a8 = result;
    *(a8 + 8) = v11;
    *(a8 + 16) = v12;
    *(a8 + 24) = v13;
    type metadata accessor for ResponsePayload();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_100413F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_100406964(a1, a2, a3, a4, a5, a6, a7, v15);
  if (!v8)
  {
    v11 = v15[7];
    a8[6] = v15[6];
    a8[7] = v11;
    a8[8] = v15[8];
    v12 = v15[3];
    a8[2] = v15[2];
    a8[3] = v12;
    v13 = v15[5];
    a8[4] = v15[4];
    a8[5] = v13;
    v14 = v15[1];
    *a8 = v15[0];
    a8[1] = v14;
    type metadata accessor for ResponsePayload();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_100413F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_10040D758(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
    type metadata accessor for ResponsePayload();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_100413FE4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
    }

    else
    {
      v12 = result;
      v16 = *result;
      v17 = *(result + 8);
      v22 = *(result + 20);
      v23 = *(result + 16);
      v21 = *(result + 22);

      sub_10046B71C(0x494C494241504143uLL, 0xEA00000000005954, 0, 0, v12, v9, a3);
      if (!v8)
      {
        v24 = _swiftEmptyArrayStorage;

        sub_1004733D0(v12, &v24, v9, a3, a4, a5, a6, a7);

        *a8 = v24;
        type metadata accessor for ResponsePayload();
        return swift_storeEnumTagMultiPayload();
      }

      v18 = *v12;

      *v12 = v16;
      *(v12 + 8) = v17;
      *(v12 + 16) = v23;
      *(v12 + 20) = v22;
      *(v12 + 22) = v21;
    }

    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1004141AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, unint64_t *a8@<X8>)
{
  result = sub_100421A38(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    *a8 = result;
    a8[1] = v11;
    a8[2] = v12;
    type metadata accessor for ResponsePayload();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void *sub_1004141FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, void *a5@<X8>)
{
  result = sub_100421F50(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    type metadata accessor for ResponsePayload();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_100414248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_100422470(a1, a2, a3, a4, a5, a6, a7, v12);
  if (!v8)
  {
    v11 = v12[1];
    *a8 = v12[0];
    *(a8 + 16) = v11;
    *(a8 + 32) = v13;
    type metadata accessor for ResponsePayload();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_1004142B0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v22 = a3;
    }

    else
    {
      v15 = result;
      v16 = *result;
      v17 = *(result + 8);
      v32 = *(result + 20);
      v33 = *(result + 16);
      v31 = *(result + 22);

      sub_10046B71C(0x2041544F5551uLL, 0xE600000000000000, 0, 0, v15, v9, a3);
      if (v8)
      {
        v21 = *v15;
      }

      else
      {
        v18 = sub_10041ED48(v15, v9, a3, a4, a5, a6, a7);
        v29 = v18;
        v23 = v9 + 1;
        if (v23 < a3)
        {
          v27 = v20;
          v28 = *v15;
          v26 = v19;
          sub_100469DF8(v15);

          sub_100417A3C(v15, v23, a3, a4, &v34);

          v25 = v34;
          *a8 = v29;
          *(a8 + 8) = v26;
          *(a8 + 16) = v27;
          *(a8 + 20) = WORD2(v27);
          *(a8 + 22) = BYTE6(v27);
          *(a8 + 24) = v25;
          type metadata accessor for ResponsePayload();
          return swift_storeEnumTagMultiPayload();
        }

        sub_1003A5228();
        swift_allocError();
        *v24 = a3;
        swift_willThrow();
      }

      *v15 = v16;
      *(v15 + 8) = v17;
      *(v15 + 16) = v33;
      *(v15 + 20) = v32;
      *(v15 + 22) = v31;
    }

    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_100414528@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
    }

    else
    {
      v15 = result;
      v16 = *result;
      v17 = *(result + 8);
      v46 = *(result + 20);
      v47 = *(result + 16);
      v45 = *(result + 22);

      sub_10046B71C(0x4F4F5241544F5551uLL, 0xEA00000000002054, 0, 0, v15, v9, a3);
      if (v8)
      {
        v19 = *v15;
      }

      else
      {
        v18 = sub_10041ED48(v15, v9, a3, a4, a5, a6, a7);
        v39 = HIDWORD(v21);
        v42 = v18;
        v34 = v22;
        v36 = v21;
        swift_beginAccess();
        v23 = v39 - v36;
        if (v39 == v36)
        {
          v24 = _swiftEmptyArrayStorage;
        }

        else
        {
          v40 = *(v42 + 24);
          v37 = ((v34 >> 24) & 0xFFFF00 | BYTE6(v34)) + v36;
          __n = v23;
          v35 = sub_10015BEAC(v23, 0);
          memcpy(v35 + 32, (v40 + v37), __n);
          v24 = v35;
        }

        v41 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v24);
        v38 = v25;

        if (v9 + 1 < a3)
        {
          v43 = *v15;

          sub_100469DF8(v15);

          v28 = sub_10041ED48(v15, v9, a3, a4, a5, a6, a7);
          v30 = v29;
          v32 = v31;

          *a8 = v41;
          *(a8 + 8) = v38;
          *(a8 + 16) = v28;
          *(a8 + 24) = v30;
          *(a8 + 32) = v32;
          *(a8 + 36) = WORD2(v32);
          *(a8 + 38) = BYTE6(v32);
          type metadata accessor for ResponsePayload();
          return swift_storeEnumTagMultiPayload();
        }

        v26 = *v15;

        sub_1003A5228();
        swift_allocError();
        *v27 = a3;
        swift_willThrow();
      }

      *v15 = v16;
      *(v15 + 8) = v17;
      *(v15 + 16) = v47;
      *(v15 + 20) = v46;
      *(v15 + 22) = v45;
    }

    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_10041485C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10000C9C0(&qword_1005DC820, &qword_100504AA0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100504A90;
  *(v11 + 32) = 0x5452454C41;
  *(v11 + 40) = 0xE500000000000000;
  *(v11 + 48) = sub_1004170FC;
  *(v11 + 56) = 0;
  strcpy((v11 + 64), "ALREADYEXISTS");
  *(v11 + 78) = -4864;
  *(v11 + 80) = sub_10041710C;
  *(v11 + 88) = 0;
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a7;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10041A32C;
  *(v13 + 24) = v12;
  *(v11 + 96) = 0x4955444E45505041;
  *(v11 + 104) = 0xE900000000000044;
  *(v11 + 112) = sub_10041A34C;
  *(v11 + 120) = v13;
  *(v11 + 128) = 0xD000000000000014;
  *(v11 + 136) = 0x80000001004B0A30;
  *(v11 + 144) = sub_10041711C;
  *(v11 + 152) = 0;
  *(v11 + 160) = 0xD000000000000013;
  *(v11 + 168) = 0x80000001004B0A50;
  *(v11 + 176) = sub_10041712C;
  *(v11 + 184) = 0;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10041A364;
  *(v15 + 24) = v14;
  *(v11 + 192) = 0x5352414843444142;
  *(v11 + 200) = 0xEA00000000005445;
  *(v11 + 208) = sub_10041AF58;
  *(v11 + 216) = v15;
  *(v11 + 224) = 0x544F4E4E4143;
  *(v11 + 232) = 0xE600000000000000;
  *(v11 + 240) = sub_10041713C;
  *(v11 + 248) = 0;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10041A384;
  *(v17 + 24) = v16;
  *(v11 + 256) = 0x494C494241504143;
  *(v11 + 264) = 0xEA00000000005954;
  *(v11 + 272) = sub_10041AF58;
  *(v11 + 280) = v17;
  *(v11 + 288) = 0x5542544E45494C43;
  *(v11 + 296) = 0xE900000000000047;
  *(v11 + 304) = sub_10041714C;
  *(v11 + 312) = 0;
  *(v11 + 320) = 0x4445534F4C43;
  *(v11 + 328) = 0xE600000000000000;
  *(v11 + 336) = sub_10041715C;
  *(v11 + 344) = 0;
  *(v11 + 352) = 0xD000000000000011;
  *(v11 + 360) = 0x80000001004B0A70;
  *(v11 + 368) = sub_10041716C;
  *(v11 + 376) = 0;
  strcpy((v11 + 384), "CONTACTADMIN");
  *(v11 + 397) = 0;
  *(v11 + 398) = -5120;
  *(v11 + 400) = sub_10041717C;
  *(v11 + 408) = 0;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10041A3A4;
  *(v19 + 24) = v18;
  *(v11 + 416) = 0x44495559504F43;
  *(v11 + 424) = 0xE700000000000000;
  *(v11 + 432) = sub_10041AF58;
  *(v11 + 440) = v19;
  *(v11 + 448) = 0x4954505552524F43;
  *(v11 + 456) = 0xEA00000000004E4FLL;
  *(v11 + 464) = sub_10041718C;
  *(v11 + 472) = 0;
  *(v11 + 480) = 0x44455249505845;
  *(v11 + 488) = 0xE700000000000000;
  *(v11 + 496) = sub_10041719C;
  *(v11 + 504) = 0;
  strcpy((v11 + 512), "EXPUNGEISSUED");
  *(v11 + 526) = -4864;
  *(v11 + 528) = sub_1004171AC;
  *(v11 + 536) = 0;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10041A3C4;
  *(v21 + 24) = v20;
  strcpy((v11 + 544), "HIGHESTMODSEQ");
  *(v11 + 558) = -4864;
  *(v11 + 560) = sub_10041AF58;
  *(v11 + 568) = v21;
  *(v11 + 576) = 0x4553554E49;
  *(v11 + 584) = 0xE500000000000000;
  *(v11 + 592) = sub_1004171BC;
  *(v11 + 600) = 0;
  *(v11 + 608) = 0x54494D494CLL;
  *(v11 + 616) = 0xE500000000000000;
  *(v11 + 624) = sub_1004171CC;
  *(v11 + 632) = 0;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_10041A41C;
  *(v23 + 24) = v22;
  *(v11 + 640) = 0x49584F424C49414DLL;
  *(v11 + 648) = 0xE900000000000044;
  *(v11 + 656) = sub_10041AF58;
  *(v11 + 664) = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_10041A43C;
  *(v25 + 24) = v24;
  *(v11 + 672) = 0x415441444154454DLL;
  *(v11 + 680) = 0xE800000000000000;
  *(v11 + 688) = sub_10041AF58;
  *(v11 + 696) = v25;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10041A45C;
  *(v27 + 24) = v26;
  *(v11 + 704) = 0x4445494649444F4DLL;
  *(v11 + 712) = 0xE800000000000000;
  *(v11 + 720) = sub_10041AF58;
  *(v11 + 728) = v27;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_10041A47C;
  *(v29 + 24) = v28;
  *(v11 + 736) = 0x43415053454D414ELL;
  *(v11 + 744) = 0xE900000000000045;
  *(v11 + 752) = sub_10041AF58;
  *(v11 + 760) = v29;
  *(v11 + 768) = 0x514553444F4D4F4ELL;
  *(v11 + 776) = 0xE800000000000000;
  *(v11 + 784) = sub_1004171DC;
  *(v11 + 792) = 0;
  *(v11 + 800) = 0x54534958454E4F4ELL;
  *(v11 + 808) = 0xEB00000000544E45;
  *(v11 + 816) = sub_1004171EC;
  *(v11 + 824) = 0;
  *(v11 + 832) = 0x4D5245504F4ELL;
  *(v11 + 840) = 0xE600000000000000;
  *(v11 + 848) = sub_1004171FC;
  *(v11 + 856) = 0;
  *(v11 + 864) = 0x4445564153544F4ELL;
  *(v11 + 872) = 0xE800000000000000;
  *(v11 + 880) = sub_10041720C;
  *(v11 + 888) = 0;
  *(v11 + 896) = 0x544F55515245564FLL;
  *(v11 + 904) = 0xE900000000000041;
  *(v11 + 912) = sub_10041721C;
  *(v11 + 920) = 0;
  *(v11 + 928) = 0x4553524150;
  *(v11 + 936) = 0xE500000000000000;
  *(v11 + 944) = sub_10041722C;
  *(v11 + 952) = 0;
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = a5;
  v30[4] = a6;
  v30[5] = a7;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_10041A49C;
  *(v31 + 24) = v30;
  strcpy((v11 + 960), "PERMANENTFLAGS");
  *(v11 + 975) = -18;
  *(v11 + 976) = sub_10041AF58;
  *(v11 + 984) = v31;
  *(v11 + 992) = 0x5259434156495250;
  *(v11 + 1000) = 0xEF44455249555145;
  *(v11 + 1008) = sub_10041723C;
  *(v11 + 1016) = 0;
  *(v11 + 1024) = 0x4C4E4F2D44414552;
  *(v11 + 1032) = 0xE900000000000059;
  *(v11 + 1040) = sub_10041724C;
  *(v11 + 1048) = 0;
  *(v11 + 1056) = 0x4952572D44414552;
  *(v11 + 1064) = 0xEA00000000004554;
  *(v11 + 1072) = sub_10041725C;
  *(v11 + 1080) = 0;
  v32 = swift_allocObject();
  v32[2] = a4;
  v32[3] = a5;
  v32[4] = a6;
  v32[5] = a7;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_10041A4BC;
  *(v33 + 24) = v32;
  *(v11 + 1088) = 0x4C41525245464552;
  *(v11 + 1096) = 0xE800000000000000;
  *(v11 + 1104) = sub_10041AF58;
  *(v11 + 1112) = v33;
  *(v11 + 1120) = 0x5542524556524553;
  *(v11 + 1128) = 0xE900000000000047;
  *(v11 + 1136) = sub_10041726C;
  *(v11 + 1144) = 0;
  *(v11 + 1152) = 0x5441455243595254;
  *(v11 + 1160) = 0xE900000000000045;
  *(v11 + 1168) = sub_10041727C;
  *(v11 + 1176) = 0;
  v34 = swift_allocObject();
  v34[2] = a4;
  v34[3] = a5;
  v34[4] = a6;
  v34[5] = a7;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_10041A4DC;
  *(v35 + 24) = v34;
  *(v11 + 1184) = 0x5458454E444955;
  *(v11 + 1192) = 0xE700000000000000;
  *(v11 + 1200) = sub_10041AF58;
  *(v11 + 1208) = v35;
  strcpy((v11 + 1216), "UIDNOTSTICKY");
  *(v11 + 1229) = 0;
  *(v11 + 1230) = -5120;
  *(v11 + 1232) = sub_10041728C;
  *(v11 + 1240) = 0;
  *(v11 + 1248) = 0x4955514552444955;
  *(v11 + 1256) = 0xEB00000000444552;
  *(v11 + 1264) = sub_10041729C;
  *(v11 + 1272) = 0;
  v36 = swift_allocObject();
  v36[2] = a4;
  v36[3] = a5;
  v36[4] = a6;
  v36[5] = a7;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_10041A4FC;
  *(v37 + 24) = v36;
  *(v11 + 1280) = 0x44494C4156444955;
  *(v11 + 1288) = 0xEB00000000595449;
  *(v11 + 1296) = sub_10041AF58;
  *(v11 + 1304) = v37;
  *(v11 + 1312) = 0x414C494156414E55;
  *(v11 + 1320) = 0xEB00000000454C42;
  *(v11 + 1328) = sub_1004172AC;
  *(v11 + 1336) = 0;
  v38 = swift_allocObject();
  v38[2] = a4;
  v38[3] = a5;
  v38[4] = a6;
  v38[5] = a7;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_10041A51C;
  *(v39 + 24) = v38;
  *(v11 + 1344) = 0x4E4545534E55;
  *(v11 + 1352) = 0xE600000000000000;
  *(v11 + 1360) = sub_10041AF58;
  *(v11 + 1368) = v39;
  v40 = swift_allocObject();
  v40[2] = a4;
  v40[3] = a5;
  v40[4] = a6;
  v40[5] = a7;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_10041A53C;
  *(v41 + 24) = v40;
  *(v11 + 1376) = 0x4843454D4C5255;
  *(v11 + 1384) = 0xE700000000000000;
  *(v11 + 1392) = sub_10041AF58;
  *(v11 + 1400) = v41;
  *(v11 + 1408) = 0x52545441455355;
  *(v11 + 1416) = 0xE700000000000000;
  *(v11 + 1424) = sub_1004172BC;
  *(v11 + 1432) = 0;
  swift_retain_n();
  v42 = sub_1004117E0(v11);
  swift_setDeallocating();
  sub_10000C9C0(&qword_1005DC798, &qword_100504118);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_10000C9C0(&qword_1005DC828, &qword_100504AA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004D01D0;
  v44 = swift_allocObject();
  v44[2] = a4;
  v44[3] = a5;
  v44[4] = a6;
  v44[5] = a7;
  v44[6] = v42;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_10041A59C;
  *(v45 + 24) = v44;
  *(inited + 32) = sub_10041AF58;
  *(inited + 40) = v45;
  v46 = swift_allocObject();
  v46[2] = a4;
  v46[3] = a5;
  v46[4] = a6;
  v46[5] = a7;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_10041A5B8;
  *(v47 + 24) = v46;
  *(inited + 48) = sub_10041AF58;
  *(inited + 56) = v47;
  swift_retain_n();
  v48 = sub_1003FA900(inited, a1, a2, a3, 0xD000000000000020, 0x80000001004B03C0, 436);
  swift_setDeallocating();
  sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
  swift_arrayDestroy();
  return v48;
}

uint64_t sub_1004157C8(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = __OFADD__(a2, 1);
  v10 = a2 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    if (v10 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v12 = result;
    v14 = *result;
    v15 = *(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 20);
    v18 = *(result + 22);
    sub_100469DF8(result);
    if (v7)
    {
      *v12 = v14;
      *(v12 + 8) = v15;
      *(v12 + 16) = v16;
      *(v12 + 20) = v17;
      *(v12 + 22) = v18;
      return swift_willThrow();
    }

    sub_10000C9C0(&qword_1005DC5D8, &unk_100502CC0);
    v20 = swift_allocBox();
    sub_1004120FC(v12, a2, a3, a4, a5, a6, a7, sub_100418408, v21, &qword_1005DC5C8, &qword_10050B730);
    return v20 | 0x5000000000000000;
  }

  return result;
}

uint64_t sub_100415934(uint64_t result, uint64_t a2, int64_t a3)
{
  v5 = __OFADD__(a2, 1);
  v6 = a2 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if (v6 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
      return swift_willThrow();
    }

    v8 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_100469DF8(result);
    if (v3)
    {
      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    v15 = swift_allocObject();
    *(v15 + 16) = sub_10041D9A8(v8, a2, a3);
    return v15 | 0x5000000000000004;
  }

  return result;
}

uint64_t sub_100415A58(uint64_t result, uint64_t a2, int64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = __OFADD__(a2, 1);
  v10 = a2 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    if (v10 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v12 = result;
    v14 = *result;
    v15 = *(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 20);
    v18 = *(result + 22);
    sub_100469DF8(result);
    if (v7)
    {
      *v12 = v14;
      *(v12 + 8) = v15;
      *(v12 + 16) = v16;
      *(v12 + 20) = v17;
      *(v12 + 22) = v18;
      return swift_willThrow();
    }

    v20 = swift_allocObject();
    sub_100422734(v12, a2, a3, a4, a5, a6, a7, v32);
    v21 = v32[13];
    *(v20 + 208) = v32[12];
    *(v20 + 224) = v21;
    v22 = v32[15];
    *(v20 + 240) = v32[14];
    *(v20 + 256) = v22;
    v23 = v32[9];
    *(v20 + 144) = v32[8];
    *(v20 + 160) = v23;
    v24 = v32[11];
    *(v20 + 176) = v32[10];
    *(v20 + 192) = v24;
    v25 = v32[5];
    *(v20 + 80) = v32[4];
    *(v20 + 96) = v25;
    v26 = v32[7];
    *(v20 + 112) = v32[6];
    *(v20 + 128) = v26;
    v27 = v32[1];
    *(v20 + 16) = v32[0];
    *(v20 + 32) = v27;
    v28 = v32[3];
    result = v20 | 0x7000000000000004;
    *(v20 + 48) = v32[2];
    *(v20 + 64) = v28;
  }

  return result;
}

uint64_t sub_100415C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  v15 = sub_10046DE2C(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
    v16 = v15;

    goto LABEL_5;
  }

  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast())
  {

    v16 = _swiftEmptyArrayStorage;
LABEL_5:
    result = swift_allocObject();
    *(result + 16) = v16;
    return result;
  }
}

uint64_t sub_100415D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, char **a5@<X8>)
{
  v8 = a2;
  v9 = a1;
  result = sub_10046B71C(0x2820uLL, 0xE200000000000000, 0, 0, a1, a2, a3);
  if (!v5)
  {
    v50 = a5;
    v12 = a4;
    sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1004CEAA0;
    result = sub_1004228C4(v9, v8, a3, v12);
    v48 = v12;
    *(v13 + 32) = result;
    *(v13 + 40) = v14;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
    }

    else
    {
      v15 = v13;
      v16 = a3;
      if (v8 + 1 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v31 = a3;
      }

      else
      {
        v17 = *(v9 + 8);
        v38 = *(v9 + 20);
        v39 = *(v9 + 16);
        v37 = *(v9 + 22);
        v40 = *v9;

        v46 = v8 + 2;
        v47 = v9;
        if (v8 + 2 >= a3)
        {
          sub_1003A5228();
          swift_allocError();
          *v32 = a3;
          v33 = v40;
        }

        else
        {
          v18 = v8 + 3;
          v19 = *v9;
          v20 = *(v9 + 8);
          v44 = *(v9 + 20);
          v45 = *(v9 + 16);
          v43 = *(v9 + 22);
          if (v8 + 3 < v16)
          {
            v21 = v15;
            v41 = v15;
            v42 = v8;
            do
            {
              v49 = v21;
              swift_retain_n();
              sub_100469DF8(v9);

              v22 = v9;
              v23 = v16;
              v24 = sub_1004228C4(v22, v46, v16, v48);
              v26 = v25;

              v21 = v49;
              v28 = *(v49 + 2);
              v27 = *(v49 + 3);
              if (v28 >= v27 >> 1)
              {
                v21 = sub_100085070((v27 > 1), v28 + 1, 1, v49);
              }

              *(v21 + 2) = v28 + 1;
              v29 = &v21[16 * v28];
              *(v29 + 4) = v24;
              *(v29 + 5) = v26;
              v19 = *v47;
              v20 = *(v47 + 8);
              v44 = *(v47 + 20);
              v45 = *(v47 + 16);
              v43 = *(v47 + 22);
              v16 = v23;
              v30 = v18 < v23;
              v15 = v41;
              v8 = v42;
              v9 = v47;
            }

            while (v30);
          }

          sub_1003A5228();
          swift_allocError();
          *v34 = v16;

          swift_willThrow();
          v33 = v40;
          v35 = *v9;

          *v9 = v19;
          *(v9 + 8) = v20;
          *(v9 + 16) = v45;
          *(v9 + 20) = v44;
          *(v9 + 22) = v43;
        }

        swift_willThrow();
        swift_errorRetain();
        sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
        if (swift_dynamicCast())
        {

          result = sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v47, v8, v16);
          *v50 = v15;
          return result;
        }

        v36 = *v47;

        *v47 = v33;
        *(v47 + 8) = v17;
        *(v47 + 16) = v39;
        *(v47 + 20) = v38;
        *(v47 + 22) = v37;
      }

      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1004161EC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_allocObject();
  v17 = _swiftEmptyArrayStorage;

  sub_1004733D0(a1, &v17, a2, a3, a4, a5, a6, a7);

  if (v7)
  {

    return swift_deallocUninitializedObject();
  }

  else
  {
    *(v15 + 16) = v17;
    return v15 | 4;
  }
}

uint64_t sub_1004162D8(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = __OFADD__(a2, 1);
  v10 = a2 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    if (v10 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v12 = result;
    v14 = *result;
    v15 = *(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 20);
    v18 = *(result + 22);
    sub_100469DF8(result);
    if (v7)
    {
      *v12 = v14;
      *(v12 + 8) = v15;
      *(v12 + 16) = v16;
      *(v12 + 20) = v17;
      *(v12 + 22) = v18;
      return swift_willThrow();
    }

    sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v12, a2, a3);

    v20 = sub_100470458(v12, a2, a3, a4, a5, a6, a7);

    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v12, a2, a3);
    v21 = swift_allocObject();
    v22 = _swiftEmptyArrayStorage;
    if (v20)
    {
      v22 = v20;
    }

    *(v21 + 16) = v22;
    return v21 | 0x1000000000000000;
  }

  return result;
}

uint64_t sub_10041648C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  sub_10000C9C0(&qword_1005D15B8, &unk_1005099A0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1004CEAA0;
  result = sub_100422C60(a1, a2, a3, a4, a5, a6, a7);
  if (v8)
  {
    *(v16 + 16) = 0;
  }

  v55 = a1;
  v19 = a8;
  v53 = a4;
  *(v16 + 32) = result;
  *(v16 + 40) = v18;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v35 = a3;
    }

    else
    {
      v20 = *(v55 + 8);
      v44 = *(v55 + 20);
      v45 = *(v55 + 16);
      v43 = *(v55 + 22);
      v46 = *v55;

      v52 = a2 + 2;
      if (a2 + 2 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v36 = a3;
        v37 = v46;
        v38 = v45;
      }

      else
      {
        v48 = a5;
        v21 = a2 + 3;
        v22 = *v55;
        v23 = *(v55 + 8);
        v50 = *(v55 + 20);
        v51 = *(v55 + 16);
        v49 = *(v55 + 22);
        if (a2 + 3 < a3)
        {
          v24 = v55;
          v25 = v16;
          v47 = a7;
          do
          {
            v54 = v25;
            swift_retain_n();
            sub_100469DF8(v24);

            v26 = v16;
            v27 = a3;
            v28 = a6;
            v29 = sub_100422C60(v24, v52, a3, v53, v48, a6, a7);
            v31 = v30;

            v25 = v54;
            v33 = *(v54 + 2);
            v32 = *(v54 + 3);
            if (v33 >= v32 >> 1)
            {
              v25 = sub_1004617B4((v32 > 1), v33 + 1, 1, v54);
            }

            *(v25 + 2) = v33 + 1;
            v34 = &v25[16 * v33];
            *(v34 + 4) = v29;
            *(v34 + 5) = v31;
            v24 = v55;
            v22 = *v55;
            v23 = *(v55 + 8);
            v50 = *(v55 + 20);
            v51 = *(v55 + 16);
            v49 = *(v55 + 22);
            a3 = v27;
            a7 = v47;
            a6 = v28;
            v16 = v26;
          }

          while (v21 < v27);
        }

        v39 = v22;
        sub_1003A5228();
        swift_allocError();
        *v40 = a3;

        swift_willThrow();
        v37 = v46;
        v41 = *v55;

        *v55 = v39;
        *(v55 + 8) = v23;
        *(v55 + 16) = v51;
        *(v55 + 20) = v50;
        *(v55 + 22) = v49;
        v38 = v45;
        v19 = a8;
      }

      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {

        *v19 = v16;
        return result;
      }

      v42 = *v55;

      *v55 = v37;
      *(v55 + 8) = v20;
      *(v55 + 16) = v38;
      *(v55 + 20) = v44;
      *(v55 + 22) = v43;
    }

    swift_willThrow();
  }

  return result;
}

uint64_t sub_1004168C4(uint64_t result, uint64_t a2, int64_t a3)
{
  v5 = __OFADD__(a2, 1);
  v6 = a2 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if (v6 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
      return swift_willThrow();
    }

    v8 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_100469DF8(result);
    if (v3)
    {
      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    v15 = swift_allocObject();
    *(v15 + 16) = sub_100405E9C(v8, a2, a3);
    return v15 | 0x1000000000000004;
  }

  return result;
}

uint64_t sub_1004169E8(uint64_t result, uint64_t a2, int64_t a3)
{
  v5 = __OFADD__(a2, 1);
  v6 = a2 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if (v6 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
      return swift_willThrow();
    }

    v8 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_100469DF8(result);
    if (v3)
    {
      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    v15 = swift_allocObject();
    *(v15 + 16) = sub_10041EC70(v8, a2, a3);
    return v15 | 0x2000000000000000;
  }

  return result;
}

uint64_t sub_100416B04(uint64_t result, uint64_t a2, int64_t a3)
{
  v5 = __OFADD__(a2, 1);
  v6 = a2 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if (v6 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
      return swift_willThrow();
    }

    v8 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_100469DF8(result);
    if (v3)
    {
      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    v15 = swift_allocObject();
    *(v15 + 16) = sub_10040691C(v8, a2, a3);
    return v15 | 0x2000000000000004;
  }

  return result;
}

uint64_t sub_100416C28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = __OFADD__(a2, 1);
  v10 = a2 + 1;
  if (!v9)
  {
    v11 = a3;
    if (v10 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = v11;
    }

    else
    {
      v12 = result;
      v28 = a2;
      v15 = *result;
      v16 = *(result + 8);
      v17 = *(result + 16);
      v18 = *(result + 20);
      v19 = *(result + 22);
      sub_100469DF8(result);
      if (!v7)
      {
        sub_10000C9C0(&qword_1005DC828, &qword_100504AA8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1004D1B20;
        v22 = swift_allocObject();
        v23 = a4;
        v22[2] = a4;
        v22[3] = a5;
        v22[4] = a6;
        v22[5] = a7;
        v24 = swift_allocObject();
        *(v24 + 16) = sub_10041A9B4;
        *(v24 + 24) = v22;
        *(inited + 32) = sub_10041AF58;
        *(inited + 40) = v24;
        v25 = swift_allocObject();
        v25[2] = v23;
        v25[3] = a5;
        v25[4] = a6;
        v25[5] = a7;
        v26 = swift_allocObject();
        *(v26 + 16) = sub_10041A9D4;
        *(v26 + 24) = v25;
        *(inited + 48) = sub_10041AF58;
        *(inited + 56) = v26;
        *(inited + 64) = sub_1004172CC;
        *(inited + 72) = 0;
        *(inited + 80) = sub_100417324;
        *(inited + 88) = 0;
        swift_retain_n();
        v11 = sub_1003FA900(inited, v12, v28, v11, 0xD000000000000020, 0x80000001004B03C0, 334);
        swift_setDeallocating();
        sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
        swift_arrayDestroy();
        return v11;
      }

      *v12 = v15;
      *(v12 + 8) = v16;
      *(v12 + 16) = v17;
      *(v12 + 20) = v18;
      *(v12 + 22) = v19;
    }

    swift_willThrow();
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_100416EBC(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_10046B71C(0x52544E45474E4F4CuLL, 0xEC00000020534549, 0, 0, a1, a2, a3);
  if (!v3)
  {
    v8 = sub_10046C278(a1, a2, a3, 1);
    if ((v8 & 0x8000000000000000) != 0)
    {
      sub_1003A527C();
      swift_allocError();
      *v11 = 0xD000000000000011;
      v11[1] = 0x80000001004B08A0;
      v11[2] = 0xD000000000000020;
      v11[3] = 0x80000001004B03C0;
      v11[4] = 202;
      return swift_willThrow();
    }

    else
    {
      v9 = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      return v10 | 0x6000000000000000;
    }
  }

  return result;
}

uint64_t sub_100416FDC(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_10046B71C(0x20455A495358414DuLL, 0xE800000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    v8 = sub_10046C278(a1, a2, a3, 1);
    if ((v8 & 0x8000000000000000) != 0)
    {
      sub_1003A527C();
      swift_allocError();
      *v11 = 0xD000000000000011;
      v11[1] = 0x80000001004B08A0;
      v11[2] = 0xD000000000000020;
      v11[3] = 0x80000001004B03C0;
      v11[4] = 202;
      return swift_willThrow();
    }

    else
    {
      v9 = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      return v10 | 0x6000000000000004;
    }
  }

  return result;
}

uint64_t sub_1004172CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = sub_10046B71C(0x594E414D4F4F54uLL, 0xE700000000000000, 0, 0, a1, *a2, a2[1]);
  if (!v3)
  {
    *a3 = 0x800000000000005CLL;
  }

  return result;
}

uint64_t sub_100417324@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = sub_10046B71C(0x5441564952504F4EuLL, 0xE900000000000045, 0, 0, a1, *a2, a2[1]);
  if (!v3)
  {
    *a3 = 0x8000000000000064;
  }

  return result;
}

uint64_t sub_100417380(uint64_t result, uint64_t a2, int64_t a3)
{
  v5 = __OFADD__(a2, 1);
  v6 = a2 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if (v6 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
      return swift_willThrow();
    }

    v8 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_100469DF8(result);
    if (v3)
    {
      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    sub_10046B71C(0x4C414E5245544E49uLL, 0xE800000000000000, 0, 0, v8, a2, a3);
    v17 = _swiftEmptyArrayStorage;
    sub_100471E6C(v8, &v17, a2, a3);
    v15 = v17;
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    return v16 | 0x7000000000000000;
  }

  return result;
}

uint64_t sub_1004174DC(uint64_t a1, uint64_t a2, int64_t a3)
{
  v7 = swift_allocObject();
  v8 = sub_100420598(a1, a2, a3);
  if (v3)
  {
    return swift_deallocUninitializedObject();
  }

  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  result = v7 | 0x3000000000000000;
  *(v7 + 32) = v10;
  return result;
}

unint64_t sub_1004175A0(unint64_t result, uint64_t a2, int64_t a3)
{
  v5 = __OFADD__(a2, 1);
  v6 = a2 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if (v6 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
      return swift_willThrow();
    }

    v8 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_100469DF8(result);
    if (v3)
    {
      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v8, a2, a3);
    v15 = sub_10042E9D4(v8, a2, a3);
    v17 = v16;
    v18 = v15;
    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v8, a2, a3);
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v17;
    return v19 | 0x8000000000000000;
  }

  return result;
}

unint64_t sub_100417710(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = __OFADD__(a2, 1);
  v7 = a2 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v16 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v25 = a2;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 20);
    v15 = *(result + 22);
    sub_100466470(result, v26);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    v17 = sub_10046C184(v26[0], v26[1], v27 | (v28 << 32) | (v29 << 48), 0xD000000000000020, 0x80000001004B03C0, 115);
    v18 = a4(v17);
    v20 = v19;

    v21 = sub_10046455C(v9, v25, a3);
    v23 = v22;
    v24 = swift_allocObject();
    *(v24 + 16) = v18;
    *(v24 + 24) = v20;
    *(v24 + 32) = v21;
    *(v24 + 40) = v23;
    return v24 | 0x4000000000000004;
  }

  return result;
}

uint64_t sub_1004178CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
    }

    else
    {
      v6 = result;
      v8 = *result;
      v9 = *(result + 8);
      v10 = *(result + 16);
      v11 = *(result + 20);
      v12 = *(result + 22);
      sub_100469DF8(result);
      if (!v4)
      {
        v13 = *v6;
        v14 = *(v6 + 8);
        v15 = *(v6 + 16);
        v16 = *(v6 + 20);
        v17 = *(v6 + 22);
        sub_100466BE8(v6, v22);
        v19 = sub_10046C184(v22[0], v22[1], v23 | (v24 << 32) | (v25 << 48), 0xD000000000000020, 0x80000001004B03C0, 379);
        v21 = v20;

        *a4 = v19;
        a4[1] = v21;
        return result;
      }

      *v6 = v8;
      *(v6 + 8) = v9;
      *(v6 + 16) = v10;
      *(v6 + 20) = v11;
      *(v6 + 22) = v12;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100417A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, char **a5@<X8>)
{
  v7 = a3;
  v9 = a1;
  result = sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v5)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      v39 = a4;
      v36 = a2;
      v37 = a5;
      v42 = a2 + 1;
      v12 = _swiftEmptyArrayStorage;
      v40 = v9;
      v41 = v7;
      v38 = a2 + 2;
      while (1)
      {
        if (v42 >= v7)
        {
          sub_1003A5228();
          swift_allocError();
          *v34 = v7;
          v12 = _swiftEmptyArrayStorage;
          goto LABEL_13;
        }

        v13 = *v9;
        v14 = *(v9 + 8);
        v15 = *(v9 + 16);
        v16 = *(v9 + 20);
        v17 = v9;
        v18 = *(v9 + 22);

        v19 = sub_10041AAD8(v17, v42, v7, v39);
        v21 = v20;
        v23 = v22;
        v25 = v24;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1004618DC(0, *(v12 + 2) + 1, 1, v12);
        }

        v27 = *(v12 + 2);
        v26 = *(v12 + 3);
        if (v27 >= v26 >> 1)
        {
          v12 = sub_1004618DC((v26 > 1), v27 + 1, 1, v12);
        }

        *(v12 + 2) = v27 + 1;
        v28 = &v12[32 * v27];
        *(v28 + 4) = v19;
        *(v28 + 5) = v25;
        *(v28 + 6) = v21;
        *(v28 + 7) = v23;
        v9 = v40;
        v7 = v41;
        v29 = *v40;
        v30 = *(v40 + 8);
        v31 = *(v40 + 16);
        v32 = *(v40 + 20);
        v33 = *(v40 + 22);
        if (v38 >= v41)
        {
          break;
        }

        sub_100469DF8(v40);
      }

      sub_1003A5228();
      swift_allocError();
      *v35 = v41;
      swift_willThrow();
      *v40 = v29;
      *(v40 + 8) = v30;
      *(v40 + 16) = v31;
      *(v40 + 20) = v32;
      *(v40 + 22) = v33;
LABEL_13:
      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {

        result = sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v9, v36, v7);
        *v37 = v12;
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_100417D64@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v72 = a6;
  v73 = a7;
  v68 = a8;
  v67 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v66 = *(v67 - 8);
  v13 = *(v66 + 64);
  __chkstk_darwin(v67);
  v63 = &v57[-v14];
  v15 = sub_10000C9C0(&qword_1005CDA60, &qword_1004CF7C8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v64 = &v57[-v17];
  v18 = sub_10000C9C0(&qword_1005CDA58, &qword_1004CF7C0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v62 = &v57[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v23 = &v57[-v22];
  sub_10000C9C0(&qword_1005DC840, &unk_100504AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  v65 = a2;
  v25 = v71;
  v26 = sub_100419358(a1, a2, a3, a4, a5, v72, v73);
  if (v25)
  {
    *(inited + 16) = 0;
  }

  v69 = a4;
  v70 = a5;
  v71 = a3;
  v61 = v23;
  v28 = v67;
  v29 = v68;
  v30 = v66;
  *(inited + 32) = v26;
  if (__OFADD__(v65, 1))
  {
    __break(1u);
  }

  v31 = v71;
  if (v65 + 1 >= v71)
  {
    sub_1003A5228();
    swift_allocError();
    *v44 = v31;
LABEL_14:
    swift_willThrow();
  }

  v32 = *a1;
  v33 = *(a1 + 8);
  v60 = *(a1 + 16);
  v59 = *(a1 + 20);
  v34 = v65 + 2;
  v58 = *(a1 + 22);
  v65 = v32;

  if (v34 < v31)
  {
    while (1)
    {
      v35 = v73;
      v36 = *a1;
      v37 = *(a1 + 8);
      v38 = *(a1 + 16);
      v39 = *(a1 + 20);
      v40 = *(a1 + 22);

      v41 = sub_100419918(a1, v34, v31, v69, v70, v72, v35);

      v43 = *(inited + 16);
      v42 = *(inited + 24);
      if (v43 >= v42 >> 1)
      {
        inited = sub_100461270((v42 > 1), v43 + 1, 1, inited);
      }

      *(inited + 16) = v43 + 1;
      *(inited + 8 * v43 + 32) = v41;
      v31 = v71;
    }
  }

  sub_1003A5228();
  v45 = swift_allocError();
  *v46 = v31;
  v47 = v29;
  v48 = v61;
  v49 = v64;
  swift_willThrow();
  v74 = v45;
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  v50 = swift_dynamicCast();
  v51 = v63;
  if (!v50)
  {

    v55 = *a1;

    *a1 = v65;
    *(a1 + 8) = v33;
    *(a1 + 16) = v60;
    *(a1 + 20) = v59;
    *(a1 + 22) = v58;
    goto LABEL_14;
  }

  sub_100419F2C(inited);
  v52 = v62;
  v53 = sub_10000E268(v48, v62, &qword_1005CDA58, &qword_1004CF7C0);
  if (sub_1003DAE18(v53) <= 0)
  {
    sub_100025F40(v52, &qword_1005CDA58, &qword_1004CF7C0);
    v54 = 1;
  }

  else
  {
    sub_100025FDC(v52, v51, &qword_1005CDA58, &qword_1004CF7C0);
    sub_100025FDC(v51, v49, &qword_1005CDA68, &qword_1004CF7D0);
    v54 = 0;
  }

  (*(v30 + 56))(v49, v54, 1, v28);
  if ((*(v30 + 48))(v49, 1, v28) == 1)
  {
    sub_100025F40(v49, &qword_1005CDA60, &qword_1004CF7C8);
    sub_1003A527C();
    swift_allocError();
    *v56 = 0xD000000000000016;
    v56[1] = 0x80000001004B0A90;
    v56[2] = 0xD000000000000020;
    v56[3] = 0x80000001004B03C0;
    v56[4] = 125;
    swift_willThrow();
    return sub_100025F40(v48, &qword_1005CDA58, &qword_1004CF7C0);
  }

  else
  {
    sub_100025F40(v48, &qword_1005CDA58, &qword_1004CF7C0);
    return sub_100025FDC(v49, v47, &qword_1005CDA68, &qword_1004CF7D0);
  }
}

uint64_t sub_100418408@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v72 = a6;
  v73 = a7;
  v68 = a8;
  v67 = sub_10000C9C0(&qword_1005DC5C8, &qword_10050B730);
  v66 = *(v67 - 8);
  v13 = *(v66 + 64);
  __chkstk_darwin(v67);
  v63 = &v57[-v14];
  v15 = sub_10000C9C0(&qword_1005DC830, &qword_100504AB0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v64 = &v57[-v17];
  v18 = sub_10000C9C0(&qword_1005DC5D0, &qword_10050B9D0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v62 = &v57[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v23 = &v57[-v22];
  sub_10000C9C0(&qword_1005DC838, &qword_100504AB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  v65 = a2;
  v25 = v71;
  v26 = sub_100419638(a1, a2, a3, a4, a5, v72, v73);
  if (v25)
  {
    *(inited + 16) = 0;
  }

  v69 = a4;
  v70 = a5;
  v71 = a3;
  v61 = v23;
  v28 = v67;
  v29 = v68;
  v30 = v66;
  *(inited + 32) = v26;
  if (__OFADD__(v65, 1))
  {
    __break(1u);
  }

  v31 = v71;
  if (v65 + 1 >= v71)
  {
    sub_1003A5228();
    swift_allocError();
    *v44 = v31;
LABEL_14:
    swift_willThrow();
  }

  v32 = *a1;
  v33 = *(a1 + 8);
  v60 = *(a1 + 16);
  v59 = *(a1 + 20);
  v34 = v65 + 2;
  v58 = *(a1 + 22);
  v65 = v32;

  if (v34 < v31)
  {
    while (1)
    {
      v35 = v73;
      v36 = *a1;
      v37 = *(a1 + 8);
      v38 = *(a1 + 16);
      v39 = *(a1 + 20);
      v40 = *(a1 + 22);

      v41 = sub_100419C20(a1, v34, v31, v69, v70, v72, v35);

      v43 = *(inited + 16);
      v42 = *(inited + 24);
      if (v43 >= v42 >> 1)
      {
        inited = sub_1004617A0((v42 > 1), v43 + 1, 1, inited);
      }

      *(inited + 16) = v43 + 1;
      *(inited + 8 * v43 + 32) = v41;
      v31 = v71;
    }
  }

  sub_1003A5228();
  v45 = swift_allocError();
  *v46 = v31;
  v47 = v29;
  v48 = v61;
  v49 = v64;
  swift_willThrow();
  v74 = v45;
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  v50 = swift_dynamicCast();
  v51 = v63;
  if (!v50)
  {

    v55 = *a1;

    *a1 = v65;
    *(a1 + 8) = v33;
    *(a1 + 16) = v60;
    *(a1 + 20) = v59;
    *(a1 + 22) = v58;
    goto LABEL_14;
  }

  sub_100419F2C(inited);
  v52 = v62;
  v53 = sub_10000E268(v48, v62, &qword_1005DC5D0, &qword_10050B9D0);
  if (sub_1003DAE18(v53) <= 0)
  {
    sub_100025F40(v52, &qword_1005DC5D0, &qword_10050B9D0);
    v54 = 1;
  }

  else
  {
    sub_100025FDC(v52, v51, &qword_1005DC5D0, &qword_10050B9D0);
    sub_100025FDC(v51, v49, &qword_1005DC5C8, &qword_10050B730);
    v54 = 0;
  }

  (*(v30 + 56))(v49, v54, 1, v28);
  if ((*(v30 + 48))(v49, 1, v28) == 1)
  {
    sub_100025F40(v49, &qword_1005DC830, &qword_100504AB0);
    sub_1003A527C();
    swift_allocError();
    *v56 = 0xD000000000000016;
    v56[1] = 0x80000001004B0A90;
    v56[2] = 0xD000000000000020;
    v56[3] = 0x80000001004B03C0;
    v56[4] = 125;
    swift_willThrow();
    return sub_100025F40(v48, &qword_1005DC5D0, &qword_10050B9D0);
  }

  else
  {
    sub_100025F40(v48, &qword_1005DC5D0, &qword_10050B9D0);
    return sub_100025FDC(v49, v47, &qword_1005DC5C8, &qword_10050B730);
  }
}

uint64_t sub_100418AAC(unint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  result = swift_allocObject();
  *(result + 16) = a4;
  *(result + 24) = a5;
  *(result + 32) = a6;
  *(result + 40) = a7;
  v17 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v17 >= a3)
    {
      sub_1003A5228();
      v8 = swift_allocError();
      *v23 = a3;

LABEL_6:
      swift_willThrow();
      v32 = v8;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v32 = v8;
        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
        }
      }

      if (v17 < a3)
      {
        v24 = *a1;
        v25 = *(a1 + 8);
        v26 = *(a1 + 16);
        v27 = *(a1 + 20);
        v28 = *(a1 + 22);

        sub_10041A94C(a1, v17, a3, &v31);

        return v31;
      }

      sub_1003A5228();
      swift_allocError();
      *v29 = a3;
      swift_willThrow();
    }

    v18 = *a1;
    v19 = *(a1 + 8);
    v20 = *(a1 + 16);
    v21 = *(a1 + 20);
    v30 = *(a1 + 22);

    sub_10046B71C(0x2AuLL, 0xE100000000000000, 0, 0, a1, v17, a3);
    if (v7)
    {
      v22 = *a1;

      *a1 = v18;
      *(a1 + 8) = v19;
      *(a1 + 16) = v20;
      *(a1 + 20) = v21;
      *(a1 + 22) = v30;
      goto LABEL_6;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100418D90(unint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  result = swift_allocObject();
  *(result + 16) = a4;
  *(result + 24) = a5;
  *(result + 32) = a6;
  *(result + 40) = a7;
  v17 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v17 >= a3)
    {
      sub_1003A5228();
      v8 = swift_allocError();
      *v23 = a3;

LABEL_6:
      swift_willThrow();
      v32 = v8;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v32 = v8;
        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
        }
      }

      if (v17 < a3)
      {
        v24 = *a1;
        v25 = *(a1 + 8);
        v26 = *(a1 + 16);
        v27 = *(a1 + 20);
        v28 = *(a1 + 22);

        sub_10041A94C(a1, v17, a3, &v31);

        return v31;
      }

      sub_1003A5228();
      swift_allocError();
      *v29 = a3;
      swift_willThrow();
    }

    v18 = *a1;
    v19 = *(a1 + 8);
    v20 = *(a1 + 16);
    v21 = *(a1 + 20);
    v30 = *(a1 + 22);

    sub_10046B71C(0x2AuLL, 0xE100000000000000, 0, 0, a1, v17, a3);
    if (v7)
    {
      v22 = *a1;

      *a1 = v18;
      *(a1 + 8) = v19;
      *(a1 + 16) = v20;
      *(a1 + 20) = v21;
      *(a1 + 22) = v30;
      goto LABEL_6;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100419074(unint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  result = swift_allocObject();
  *(result + 16) = a4;
  *(result + 24) = a5;
  *(result + 32) = a6;
  *(result + 40) = a7;
  v17 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v17 >= a3)
    {
      sub_1003A5228();
      v8 = swift_allocError();
      *v23 = a3;

LABEL_6:
      swift_willThrow();
      v32 = v8;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v32 = v8;
        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
        }
      }

      if (v17 < a3)
      {
        v24 = *a1;
        v25 = *(a1 + 8);
        v26 = *(a1 + 16);
        v27 = *(a1 + 20);
        v28 = *(a1 + 22);

        sub_10041AAB8(a1, v17, a3, &v31);

        return v31;
      }

      sub_1003A5228();
      swift_allocError();
      *v29 = a3;
      swift_willThrow();
    }

    v18 = *a1;
    v19 = *(a1 + 8);
    v20 = *(a1 + 16);
    v21 = *(a1 + 20);
    v30 = *(a1 + 22);

    sub_10046B71C(0x2AuLL, 0xE100000000000000, 0, 0, a1, v17, a3);
    if (v7)
    {
      v22 = *a1;

      *a1 = v18;
      *(a1 + 8) = v19;
      *(a1 + 16) = v20;
      *(a1 + 20) = v21;
      *(a1 + 22) = v30;
      goto LABEL_6;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void *sub_100419358(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  result = swift_allocObject();
  result[2] = a4;
  result[3] = a5;
  result[4] = a6;
  result[5] = a7;
  v17 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v17 >= a3)
    {
      sub_1003A5228();
      v8 = swift_allocError();
      *v23 = a3;
    }

    else
    {
      v18 = *a1;
      v19 = *(a1 + 8);
      v20 = *(a1 + 16);
      v21 = *(a1 + 20);
      v32 = *(a1 + 22);

      sub_10041AF88(a1, v17, a3, &v33);
      if (!v7)
      {

        LODWORD(v30) = v33;
        v31 = HIDWORD(v33);
        return (v30 | (v31 << 32));
      }

      v22 = *a1;

      *a1 = v18;
      *(a1 + 8) = v19;
      *(a1 + 16) = v20;
      *(a1 + 20) = v21;
      *(a1 + 22) = v32;
    }

    swift_willThrow();
    v34 = v8;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v34 = v8;
      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v17 < a3)
    {
      v24 = *a1;
      v25 = *(a1 + 8);
      v26 = *(a1 + 16);
      v27 = *(a1 + 20);
      v28 = *(a1 + 22);

      v30 = sub_10041A24C(a1, v17, a3);

      v31 = HIDWORD(v30);
      return (v30 | (v31 << 32));
    }

    sub_1003A5228();
    swift_allocError();
    *v29 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

void *sub_100419638(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  result = swift_allocObject();
  result[2] = a4;
  result[3] = a5;
  result[4] = a6;
  result[5] = a7;
  v17 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v17 >= a3)
    {
      sub_1003A5228();
      v8 = swift_allocError();
      *v23 = a3;
    }

    else
    {
      v18 = *a1;
      v19 = *(a1 + 8);
      v20 = *(a1 + 16);
      v21 = *(a1 + 20);
      v32 = *(a1 + 22);

      sub_10041AF70(a1, v17, a3, &v33);
      if (!v7)
      {

        LODWORD(v30) = v33;
        v31 = HIDWORD(v33);
        return (v30 | (v31 << 32));
      }

      v22 = *a1;

      *a1 = v18;
      *(a1 + 8) = v19;
      *(a1 + 16) = v20;
      *(a1 + 20) = v21;
      *(a1 + 22) = v32;
    }

    swift_willThrow();
    v34 = v8;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v34 = v8;
      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v17 < a3)
    {
      v24 = *a1;
      v25 = *(a1 + 8);
      v26 = *(a1 + 16);
      v27 = *(a1 + 20);
      v28 = *(a1 + 22);

      v30 = sub_10041A24C(a1, v17, a3);

      v31 = HIDWORD(v30);
      return (v30 | (v31 << 32));
    }

    sub_1003A5228();
    swift_allocError();
    *v29 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

void *sub_100419918(unint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  result = sub_10046B71C(0x2CuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    result = swift_allocObject();
    result[2] = a4;
    result[3] = a5;
    result[4] = a6;
    result[5] = a7;
    v16 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      return result;
    }

    if (v16 < v12)
    {
      v17 = *a1;
      v18 = *(a1 + 8);
      v19 = *(a1 + 16);
      v20 = *(a1 + 20);
      v30 = *(a1 + 22);

      sub_10041AE10(a1, v16, v12, &v31);

      LODWORD(v12) = v31;
      v29 = HIDWORD(v31);
      return (v12 | (v29 << 32));
    }

    sub_1003A5228();
    v21 = swift_allocError();
    *v22 = v12;

    swift_willThrow();
    v32 = v21;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v32 = v21;
      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v16 < v12)
    {
      v23 = *a1;
      v24 = *(a1 + 8);
      v25 = *(a1 + 16);
      v26 = *(a1 + 20);
      v27 = *(a1 + 22);

      v12 = sub_10041A24C(a1, v16, v12);

      v29 = HIDWORD(v12);
      return (v12 | (v29 << 32));
    }

    sub_1003A5228();
    swift_allocError();
    *v28 = v12;
    swift_willThrow();
  }

  return result;
}

void *sub_100419C20(unint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  result = sub_10046B71C(0x2CuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    result = swift_allocObject();
    result[2] = a4;
    result[3] = a5;
    result[4] = a6;
    result[5] = a7;
    v16 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      return result;
    }

    if (v16 < v12)
    {
      v17 = *a1;
      v18 = *(a1 + 8);
      v19 = *(a1 + 16);
      v20 = *(a1 + 20);
      v30 = *(a1 + 22);

      sub_10041A90C(a1, v16, v12, &v31);

      LODWORD(v12) = v31;
      v29 = HIDWORD(v31);
      return (v12 | (v29 << 32));
    }

    sub_1003A5228();
    v21 = swift_allocError();
    *v22 = v12;

    swift_willThrow();
    v32 = v21;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v32 = v21;
      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v16 < v12)
    {
      v23 = *a1;
      v24 = *(a1 + 8);
      v25 = *(a1 + 16);
      v26 = *(a1 + 20);
      v27 = *(a1 + 22);

      v12 = sub_10041A24C(a1, v16, v12);

      v29 = HIDWORD(v12);
      return (v12 | (v29 << 32));
    }

    sub_1003A5228();
    swift_allocError();
    *v28 = v12;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_100419F2C(uint64_t a1)
{
  sub_100016D2C();
  result = sub_1004A7114();
  v3 = *(a1 + 16);
  if (!v3)
  {
  }

  v4 = 0;
  v5 = (a1 + 36);
  while (v4 < *(a1 + 16))
  {
    v6 = *(v5 - 1);
    v7 = v6 != 0;
    v8 = v6 - 1;
    if (!v7)
    {
      goto LABEL_13;
    }

    if (!*v5)
    {
      goto LABEL_14;
    }

    v9 = *v5;
    if (v8 > *v5)
    {
      goto LABEL_15;
    }

    v12 = v8;
    v13 = v9;
    if (v9 != v8)
    {
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      v10 = sub_1004A70B4();
      sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
      sub_1004A7064();
      result = v10(v11, 0);
    }

    ++v4;
    v5 += 2;
    if (v3 == v4)
    {
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10041A078(uint64_t a1)
{
  v2 = type metadata accessor for ResponsePayload();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10041A0D4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

void *sub_10041A18C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  v7 = *(v4 + 40);
  return sub_1004141FC(a1, a2, a3, *(v4 + 16), a4);
}

unint64_t sub_10041A24C(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_10046C278(a1, a2, a3, 0);
  if (!v3)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      v5 = " in body structure";
      v7 = 202;
      v6 = 0xD000000000000011;
    }

    else
    {
      if (result - 0x100000000 >= 0xFFFFFFFF00000001)
      {
        result *= 0x100000001;
        return result;
      }

      v5 = "No month match for ";
      v6 = 0xD00000000000001DLL;
      v7 = 87;
    }

    v8 = v5 | 0x8000000000000000;
    sub_1003A527C();
    swift_allocError();
    *v9 = v6;
    v9[1] = v8;
    v9[2] = 0xD000000000000020;
    v9[3] = 0x80000001004B03C0;
    v9[4] = v7;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10041A3C4(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_100415934(a1, a2, a3);
}

uint64_t sub_10041A3E4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10041A41C(unint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1004175A0(a1, a2, a3);
}

uint64_t sub_10041A47C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1004174DC(a1, a2, a3);
}

uint64_t sub_10041A4DC(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1004168C4(a1, a2, a3);
}

uint64_t sub_10041A4FC(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1004169E8(a1, a2, a3);
}

uint64_t sub_10041A51C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_100416B04(a1, a2, a3);
}

uint64_t sub_10041A53C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_100417380(a1, a2, a3);
}

uint64_t sub_10041A55C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_10041A5B8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  return sub_100417710(a1, a2, a3, *(v3 + 16));
}

uint64_t sub_10041A5D8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10041A618()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10041A660()
{
  if (*(v0 + 24) != 1)
  {

    if (*(v0 + 40) != 1)
    {
    }
  }

  v1 = *(v0 + 56);

  v2 = *(v0 + 96);
  v3 = *(v0 + 144);
  if (v2 < 0xFFFFFFFE00000000 || (v3 & 0xFFFFFFFFFFFFFE00) != 0x200)
  {
    v5 = *(v0 + 264);
    sub_10041A738(*(v0 + 80), *(v0 + 88), v2, *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), v3, *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248));
  }

  return _swift_deallocObject(v0, 272, 7);
}

uint64_t sub_10041A738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned __int8 a20, uint64_t a21, uint64_t a22)
{

  if (a9 < 0)
  {

    return sub_10041A868(a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  else
  {
  }
}

uint64_t sub_10041A868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    sub_100191658(a9, a10, a11);
  }

  return result;
}

uint64_t sub_10041A8C4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10041A94C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_10046B6C4(a1, a2, a3, a4);
}

uint64_t sub_10041A96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t *a6@<X8>)
{
  result = sub_100412454(a1, a2, a3, v6[2], v6[3], v6[4], v6[5], a4, a5);
  if (!v7)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_10041A9B4(unint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_100416EBC(a1, a2, a3);
}

uint64_t sub_10041A9D4(unint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_100416FDC(a1, a2, a3);
}

uint64_t sub_10041A9F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  result = v6(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_10041AA40()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10041AA78()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10041AAB8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_10046B6F0(a1, a2, a3, a4);
}

unint64_t sub_10041AAD8(unint64_t result, uint64_t a2, int64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v6 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v13 = a3;
LABEL_10:
      swift_willThrow();
      return v5;
    }

    v8 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v19 = *(result + 22);
    v20 = *(result + 20);
    if (a2 + 2 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
    }

    else
    {

      sub_100466470(v8, v21);
      if (!v4)
      {
        v12 = sub_10046C184(v21[0], v21[1], v22 | (v23 << 32) | (v24 << 48), 0xD000000000000020, 0x80000001004B03C0, 115);
        v5 = a4(v12);

        sub_100469DF8(v8);

        if ((sub_10046C278(v8, v6, a3, 1) & 0x8000000000000000) == 0)
        {
          v18 = *v8;

          sub_100469DF8(v8);

          if ((sub_10046C278(v8, v6, a3, 1) & 0x8000000000000000) == 0)
          {

            return v5;
          }
        }

        v15 = *v8;

        sub_1003A527C();
        swift_allocError();
        *v16 = 0xD000000000000011;
        v16[1] = 0x80000001004B08A0;
        v16[2] = 0xD000000000000020;
        v16[3] = 0x80000001004B03C0;
        v16[4] = 202;
        swift_willThrow();
        goto LABEL_9;
      }
    }

    swift_willThrow();

LABEL_9:
    *v8 = v9;
    *(v8 + 8) = v10;
    *(v8 + 16) = v11;
    *(v8 + 20) = v20;
    *(v8 + 22) = v19;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_10041AFA0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = v5;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = (v12 + 16);
  *(v12 + 24) = 0;
  v14 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = v12;
    if (v14 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
LABEL_10:
      swift_willThrow();
    }

    v54 = a4;
    v6 = *(a1 + 8);
    v56 = *(a1 + 20);
    v57 = *(a1 + 16);
    v55 = *(a1 + 22);
    v58 = *a1;
    if (a2 + 2 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v16 = a3;
      goto LABEL_8;
    }

    sub_100469DF8(a1);
    if (v5)
    {

LABEL_8:
      v17 = v56;
      swift_willThrow();
      v18 = v57;
LABEL_9:
      *a1 = v58;
      *(a1 + 8) = v6;
      *(a1 + 16) = v18;
      *(a1 + 20) = v17;
      *(a1 + 22) = v55;
      goto LABEL_10;
    }

    sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, v14, a3);
    v7 = 0;
    v20 = *a1;
    v21 = *(a1 + 8);
    v22 = *(a1 + 12);
    v47 = *(a1 + 16);
    v42 = *(a1 + 20);
    v43 = *(a1 + 22);

    sub_10041D5C4(a1, v14 + 1, a3, v4);

    a4 = 0;
    v23 = *a1;
    v24 = *(a1 + 8);
    v51 = *(a1 + 16);
    v48 = *(a1 + 20);
    v44 = *(a1 + 22);
    if (v14 + 2 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v27 = a3;
      swift_willThrow();
      *a1 = v23;
      *(a1 + 8) = v24;
      *(a1 + 16) = v51;
      *(a1 + 20) = v48;
      *(a1 + 22) = v44;
      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_12;
      }

      swift_beginAccess();
      v28 = *(v4 + 24);
      if (v28)
      {
        v29 = 0;
        v41 = 0;
        v40 = 0;
        v7 = 0;
        v59 = *v13;
        v30 = 1;
        goto LABEL_18;
      }

      sub_1003A527C();
      swift_allocError();
      *v32 = 0xD000000000000020;
      v32[1] = 0x80000001004B0AB0;
      v32[2] = 0xD000000000000020;
      v32[3] = 0x80000001004B03C0;
      v33 = 105;
LABEL_22:
      v32[4] = v33;
      swift_willThrow();
      goto LABEL_12;
    }

    v39 = 1;
    v40 = 0;
    v41 = 0;
    sub_100469DF8(a1);
    v26 = *(a1 + 8);
    v25 = *(a1 + 12);
    v37 = *(a1 + 16);
    v49 = *(a1 + 20);
    v45 = *(a1 + 22);
    v52 = *a1;

    sub_10041D5C4(a1, v14 + 1, a3, v4);

    v34 = *a1;
    sub_100469DF8(a1);
    LODWORD(v34) = *(a1 + 12);
    v50 = *(a1 + 8);
    v46 = *(a1 + 16);
    v35 = *(a1 + 20);
    v38 = *(a1 + 22);
    v53 = *a1;

    sub_10041D5C4(a1, v14 + 1, a3, v4);
  }

  swift_beginAccess();
  v28 = *(v4 + 24);
  if (!v28 || !a4 || (v39 & 1) != 0)
  {
    v36 = *a1;

    sub_1003A527C();
    swift_allocError();
    *v32 = 0xD00000000000002FLL;
    v32[1] = 0x80000001004B0AE0;
    v32[2] = 0xD000000000000020;
    v32[3] = 0x80000001004B03C0;
    v33 = 100;
    goto LABEL_22;
  }

  v59 = *v13;

  v30 = 0;
  v29 = a4;
LABEL_18:

  sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, v14, a3);
  if (v7)
  {
    v31 = *a1;

LABEL_12:
    v17 = v56;
    v18 = v57;
    goto LABEL_9;
  }

  *v54 = v59;
  *(v54 + 8) = v28;
  *(v54 + 16) = v29;
  *(v54 + 24) = v41;
  *(v54 + 28) = v40;
  *(v54 + 32) = v30;
  return result;
}

void sub_10041C15C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v37 = a6;
  v38 = a7;
  v15 = type metadata accessor for ParameterValue();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v19 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v24 = a3;
LABEL_9:
      swift_willThrow();
      return;
    }

    v33 = a8;
    v20 = *a1;
    v21 = *(a1 + 8);
    v22 = *(a1 + 16);
    v35 = *(a1 + 20);
    v36 = v22;
    v34 = *(a1 + 22);
    if (v19 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v25 = a3;
      goto LABEL_8;
    }

    swift_retain_n();
    sub_10042CC90(a1, v19 + 1, a3, v39);
    if (v8)
    {
      v23 = *a1;

LABEL_8:
      swift_willThrow();
      *a1 = v20;
      *(a1 + 8) = v21;
      v26 = v35;
      *(a1 + 16) = v36;
      *(a1 + 20) = v26;
      *(a1 + 22) = v34;
      goto LABEL_9;
    }

    v32 = v39[1];
    v27 = *a1;
    v31[0] = v39[0];
    v31[1] = v27;
    sub_100469DF8(a1);
    v28 = v32;
    sub_100420E2C(a1, v19, a3, a4, a5, v37, v38, v18);

    v29 = sub_10000C9C0(&qword_1005DBC78, &unk_100502CB0);
    v30 = v33;
    sub_1002FC114(v18, v33 + *(v29 + 52));
    *v30 = v31[0];
    v30[1] = v28;
  }
}

uint64_t sub_10041C3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10041D76C;
  *(v17 + 24) = v16;
  v47 = sub_100411AC0;
  v48 = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10041D7A0;
  *(v19 + 24) = v18;
  v49 = sub_100411C00;
  v50 = v19;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10041D7D8;
  *(v21 + 24) = v20;
  v51 = sub_100411C00;
  v52 = v21;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_10041D7F8;
  *(v23 + 24) = v22;
  v53 = sub_100411C00;
  v54 = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_10041D818;
  *(v25 + 24) = v24;
  v55 = sub_100411C00;
  v56 = v25;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10041D838;
  *(v27 + 24) = v26;
  v57 = sub_100411C00;
  v58 = v27;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_10041D858;
  *(v29 + 24) = v28;
  v59 = sub_100411C00;
  v60 = v29;
  v30 = __OFADD__(a2, 1);
  v31 = a2 + 1;
  v32 = v30;
  result = swift_retain_n();
  if ((v32 & 1) == 0)
  {
    swift_retain_n();
    v34 = 32;
    v35 = a1;
    while (1)
    {
      *(swift_allocObject() + 16) = *&v46[v34];
      if (v31 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v42 = a3;
      }

      else
      {
        v45 = v34;
        v36 = *v35;
        v37 = *(v35 + 8);
        v38 = *(v35 + 16);
        v44 = *(v35 + 20);
        v39 = v31;
        v40 = *(v35 + 22);

        sub_100411BE4(v35, v39, a3);
        if (!v8)
        {

          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          return swift_arrayDestroy();
        }

        v41 = *v35;

        *v35 = v36;
        *(v35 + 8) = v37;
        *(v35 + 16) = v38;
        *(v35 + 20) = v44;
        *(v35 + 22) = v40;
        v31 = v39;
        v34 = v45;
      }

      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          swift_arrayDestroy();
        }
      }

      v8 = 0;
      v34 += 16;
      if (v34 == 144)
      {
        sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
        swift_arrayDestroy();
        sub_1003A527C();
        swift_allocError();
        *v43 = 0xD000000000000019;
        v43[1] = 0x80000001004B08C0;
        v43[2] = 0xD000000000000020;
        v43[3] = 0x80000001004B03C0;
        v43[4] = 527;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10041C9CC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, unint64_t a4@<X7>, _DWORD *a5@<X8>)
{
  result = sub_10046B71C(a4, 0xE400000000000000, 0, 0, a1, a2, a3);
  if (!v5)
  {
    *a5 = sub_10040691C(a1, a2, a3);
    type metadata accessor for SearchReturnData();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_10041CA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_10046B71C(0x204C4C41uLL, 0xE400000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    sub_1004120B4(a1, a2, a3, a4, a5, a6, a7, a8);
    type metadata accessor for SearchReturnData();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_10041CB24@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, unint64_t *a4@<X8>)
{
  result = sub_10046B71C(0x20544E554F43uLL, 0xE600000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    v10 = sub_10046C278(a1, a2, a3, 1);
    if ((v10 & 0x8000000000000000) != 0)
    {
      sub_1003A527C();
      swift_allocError();
      *v11 = 0xD000000000000011;
      v11[1] = 0x80000001004B08A0;
      v11[2] = 0xD000000000000020;
      v11[3] = 0x80000001004B03C0;
      v11[4] = 202;
      return swift_willThrow();
    }

    else
    {
      *a4 = v10;
      type metadata accessor for SearchReturnData();
      return swift_storeEnumTagMultiPayload();
    }
  }

  return result;
}

uint64_t sub_10041CC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_10046B71C(0x20514553444F4DuLL, 0xE700000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    *a4 = sub_10041D9A8(a1, a2, a3);
    type metadata accessor for SearchReturnData();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_10041CCCC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v48 = a7;
  v16 = sub_10000C9C0(&qword_1005DC5D0, &qword_10050B9D0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v40 - v18;
  result = sub_10046B71C(0x204C414954524150uLL, 0xE900000000000028, 0, 0, a1, a2, a3);
  if (!v8)
  {
    result = sub_100411D18(a1, a2, a3);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v28 = a3;
      return swift_willThrow();
    }

    else
    {
      v43 = a2;
      v47 = v19;
      v40 = a8;
      v42 = v21;
      v41 = result;
      v22 = a1;
      v46 = *a1;
      v23 = a1[1];
      v24 = a3;
      v25 = *(v22 + 16);
      v26 = *(v22 + 20);
      v27 = *(v22 + 22);
      sub_100469DF8(v22);
      v44 = a2 + 1;
      v45 = v24;
      v46 = v49;
      v29 = swift_allocObject();
      v29[2] = a4;
      v29[3] = a5;
      v30 = v48;
      v29[4] = a6;
      v29[5] = v30;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_10041D878;
      *(v31 + 24) = v29;
      v49[0] = sub_100411C00;
      v49[1] = v31;
      v32 = swift_allocObject();
      v32[2] = a4;
      v32[3] = a5;
      v32[4] = a6;
      v32[5] = v30;
      v33 = swift_allocObject();
      *(v33 + 16) = sub_10041D898;
      *(v33 + 24) = v32;
      v49[2] = sub_100411C00;
      v49[3] = v33;
      v48 = 0x80000001004B03C0;
      swift_retain_n();
      *(swift_allocObject() + 16) = *v46;
      v34 = *v22;
      v35 = *(v22 + 8);
      LODWORD(v32) = *(v22 + 16);
      v36 = *(v22 + 20);
      v37 = *(v22 + 22);

      sub_100411BE4(v22, v44, v45);

      sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
      swift_arrayDestroy();
      sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v22, v43, v45);
      v38 = *(sub_10000C9C0(&qword_1005DC5E0, &qword_100502CD0) + 48);
      v39 = v40;
      *v40 = v41;
      *(v39 + 8) = v42 & 1;
      sub_100025FDC(v47, v39 + v38, &qword_1005DC5D0, &qword_10050B9D0);
      type metadata accessor for SearchReturnData();
      return swift_storeEnumTagMultiPayload();
    }
  }

  return result;
}

uint64_t sub_10041D288@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22 = a8;
  v16 = sub_10000C9C0(&qword_1005DC5C8, &qword_10050B730);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v21 - v18;
  result = sub_100418408(a1, a2, a3, a4, a5, a6, a7, &v21 - v18);
  if (!v8)
  {
    return sub_100025FDC(v19, v22, &qword_1005DC5D0, &qword_10050B9D0);
  }

  return result;
}

uint64_t sub_10041D388(uint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    return sub_100419F28(_swiftEmptyArrayStorage);
  }

  return result;
}

void sub_10041D3E8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  sub_10041C15C(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v8)
  {
    type metadata accessor for SearchReturnData();
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_10041D430()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10041D468(uint64_t result, uint64_t a2, int64_t a3)
{
  v5 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
    }

    else
    {
      v7 = result;
      v8 = *result;
      v9 = *(result + 8);
      v10 = *(result + 16);
      v11 = *(result + 20);
      v12 = *(result + 22);

      sub_10046B71C(0x20514553444F4D28uLL, 0xE800000000000000, 0, 0, v7, v5, a3);
      if (!v3)
      {
        v4 = sub_10041D9A8(v7, v5, a3);
        sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v7, v5, a3);

        return v4;
      }

      v13 = *v7;

      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
    }

    swift_willThrow();
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_10041D5C4(unint64_t a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  result = sub_10046B71C(0x2220474154uLL, 0xE500000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
      return swift_willThrow();
    }

    else
    {
      v10 = *a1;
      v11 = *(a1 + 8);
      v12 = *(a1 + 16);
      v13 = *(a1 + 20);
      v14 = *(a1 + 22);
      sub_100465CAC(a1, v20);
      v16 = sub_10046C184(v20[0], v20[1], v21 | (v22 << 32) | (v23 << 48), 0xD000000000000020, 0x80000001004B03C0, 2610);
      v18 = v17;

      swift_beginAccess();
      v19 = *(a4 + 24);
      *(a4 + 16) = v16;
      *(a4 + 24) = v18;

      return sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_10041D76C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_10041C9CC(a1, a2, a3, 0x204E494DuLL, a4);
}

uint64_t sub_10041D7A0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_10041C9CC(a1, a2, a3, 0x2058414DuLL, a4);
}

uint64_t sub_10041D7F8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_10041CB24(a1, a2, a3, a4);
}

uint64_t sub_10041D818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_10041CC30(a1, a2, a3, a4);
}

uint64_t sub_10041D898(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_10041D388(a1, a2, a3);
}

uint64_t sub_10041D8B8(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005DC5D0, &qword_10050B9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10041D920()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10041D9A8(uint64_t result, uint64_t a2, int64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v4 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
      return swift_willThrow();
    }

    v6 = result;
    v7 = *result;
    v8 = *(result + 8);
    v9 = *(result + 16);
    v10 = *(result + 20);
    v11 = *(result + 22);

    v12 = sub_10046C278(v6, v4, a3, 1);
    if (v3)
    {
      v13 = *v6;

LABEL_5:
      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
      return swift_willThrow();
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      v16 = *v6;

      sub_1003A527C();
      swift_allocError();
      *v17 = 0xD00000000000001BLL;
      v17[1] = 0x80000001004B0980;
      v17[2] = 0xD000000000000020;
      v17[3] = 0x80000001004B03C0;
      v17[4] = 173;
      swift_willThrow();
      goto LABEL_5;
    }

    v15 = v12;

    return v15;
  }

  return result;
}

uint64_t sub_10041DB10(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v20 = *(result + 22);
    v21 = *(result + 20);

    sub_10041E8C4(v10, v8, a3, a4, a5, a6, a7, &v22);
    if (v7)
    {
      v18 = *v10;

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v21;
      *(v10 + 22) = v20;
      return swift_willThrow();
    }

    return v22;
  }

  return result;
}

uint64_t sub_10041DC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v56 = a8;
  v15 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v51 - v17;
  sub_10000C9C0(&qword_1005CEC18, &unk_1004D2690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  v20 = v60;
  v21 = sub_10041E534(a1, a2, a3, a4, a5, a6, a7);
  if (v20)
  {
    *(inited + 16) = 0;
  }

  v59 = a4;
  v60 = a5;
  *(inited + 32) = v21;
  if (__OFADD__(a2, 1))
  {
LABEL_31:
    __break(1u);
  }

  if (a2 + 1 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v36 = a3;
LABEL_23:
    swift_willThrow();
  }

  v57 = a6;
  v58 = a7;
  v23 = *a1;
  v24 = *(a1 + 8);
  v25 = *(a1 + 16);
  v26 = *(a1 + 20);
  v27 = a2 + 2;
  v54 = *(a1 + 22);
  v55 = v26;

  if (v27 < a3)
  {
    v51[1] = v25;
    v52 = v23;
    v53 = v18;
    while (1)
    {
      v28 = *a1;
      v29 = *(a1 + 8);
      v30 = *(a1 + 16);
      v31 = *(a1 + 20);
      v32 = *(a1 + 22);

      sub_10046B71C(0x2CuLL, 0xE100000000000000, 0, 0, a1, v27, a3);
      v33 = sub_10041E534(a1, v27, a3, v59, v60, v57, v58);

      v35 = *(inited + 16);
      v34 = *(inited + 24);
      if (v35 >= v34 >> 1)
      {
        inited = sub_100085898((v34 > 1), v35 + 1, 1, inited);
      }

      *(inited + 16) = v35 + 1;
      *(inited + 8 * v35 + 32) = v33;
    }
  }

  sub_1003A5228();
  v37 = swift_allocError();
  *v38 = a3;
  v39 = v18;
  swift_willThrow();
  v61 = v37;
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (!swift_dynamicCast())
  {

    v48 = *a1;

    *a1 = v23;
    *(a1 + 8) = v24;
    *(a1 + 16) = v25;
    v49 = v54;
    *(a1 + 20) = v55;
    *(a1 + 22) = v49;
    goto LABEL_23;
  }

  sub_100016D2C();
  sub_1004A7114();
  v40 = *(inited + 16);
  if (v40)
  {
    v41 = 0;
    v42 = (inited + 36);
    while (v41 < *(inited + 16))
    {
      v43 = *(v42 - 1);
      v44 = v43 != 0;
      v45 = v43 - 1;
      if (!v44)
      {
        goto LABEL_28;
      }

      if (!*v42)
      {
        goto LABEL_29;
      }

      v46 = *v42;
      if (v45 > *v42)
      {
        goto LABEL_30;
      }

      v61 = __PAIR64__(v46, v45);
      if (v46 != v45)
      {
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        v47 = sub_1004A70B4();
        sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
        sub_1004A7064();
        v47(v62, 0);
      }

      ++v41;
      v42 += 2;
      if (v40 == v41)
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
    __break(1u);
    goto LABEL_31;
  }

LABEL_24:

  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  if ((sub_1004A70C4() & 1) == 0)
  {
    return sub_100025FDC(v39, v56, &unk_1005D91B0, &unk_1004CF400);
  }

  sub_1003A527C();
  swift_allocError();
  *v50 = 0xD000000000000011;
  v50[1] = 0x80000001004B0B30;
  v50[2] = 0xD000000000000020;
  v50[3] = 0x80000001004B03C0;
  v50[4] = 56;
  swift_willThrow();
  return sub_100025F40(v39, &unk_1005D91B0, &unk_1004CF400);
}

void sub_10041E1A4(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v47 = a7;
  v45 = a5;
  v46 = a6;
  v13 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v44 = *(v13 - 8);
  v14 = *(v44 + 64);
  __chkstk_darwin(v13);
  v16 = &v41 - v15;
  v17 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v41 - v19;
  v21 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v41 - v23;
  v25 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v25 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v33 = a3;
      goto LABEL_6;
    }

    v41 = v13;
    v42 = a8;
    v26 = *a1;
    v27 = *(a1 + 8);
    v28 = *(a1 + 16);
    v29 = *(a1 + 20);
    v43 = *(a1 + 22);

    v30 = v25;
    v31 = v48;
    sub_10041DC38(a1, v30, a3, a4, v45, v46, v47, v20);
    if (v31)
    {
      v32 = *a1;

      *a1 = v26;
      *(a1 + 8) = v27;
      *(a1 + 16) = v28;
      *(a1 + 20) = v29;
      *(a1 + 22) = v43;
LABEL_6:
      swift_willThrow();
      return;
    }

    v35 = sub_1003DAE18(v34);
    v36 = v41;
    if (v35 <= 0)
    {
      sub_100025F40(v20, &unk_1005D91B0, &unk_1004CF400);
      v37 = 1;
    }

    else
    {
      sub_100025FDC(v20, v16, &unk_1005D91B0, &unk_1004CF400);
      sub_100025FDC(v16, v24, &qword_1005CD1D0, &unk_1004CF2C0);
      v37 = 0;
    }

    v38 = v42;
    v39 = v44;
    (*(v44 + 56))(v24, v37, 1, v36);
    if ((*(v39 + 48))(v24, 1, v36) == 1)
    {
      sub_100025F40(v24, &qword_1005CD518, &qword_1004CF2F0);
      sub_1003A527C();
      swift_allocError();
      *v40 = 0xD000000000000015;
      v40[1] = 0x80000001004B0B50;
      v40[2] = 0xD000000000000020;
      v40[3] = 0x80000001004B03C0;
      v40[4] = 69;
      goto LABEL_6;
    }

    sub_100025FDC(v24, v38, &qword_1005CD1D0, &unk_1004CF2C0);
  }
}