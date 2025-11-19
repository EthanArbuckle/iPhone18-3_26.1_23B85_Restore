__n128 sub_1B0DA1208@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_1B043E71C(a1, a2, a3);
  if (!v4)
  {
    v13.i64[0] = v6;
    v13.i64[1] = v7;
    v14.n128_u64[0] = v8;
    sub_1B0D04568(&v13);
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

void sub_1B0DA1278(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
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
      sub_1B0439BCC();
      swift_allocError();
      *v20 = a3;
      goto LABEL_7;
    }

    v16 = *a1;
    v17 = *(a1 + 8);
    v18 = *(a1 + 16);
    v47 = *(a1 + 20);
    v48 = v18;
    v35 = *(a1 + 22);

    sub_1B0DAFDD8(a1, v9, a3, v45);
    if (v8)
    {
      v19 = *a1;

      *a1 = v16;
      *(a1 + 8) = v17;
      v23 = v47;
      *(a1 + 16) = v48;
      *(a1 + 20) = v23;
      *(a1 + 22) = v35;
LABEL_7:
      swift_willThrow();
      return;
    }

    v32 = v45[1];
    v33 = v45[0];
    v31 = v45[2];
    v21 = v45[3];
    v30 = v46;

    sub_1B0E031CC(a1, v9, a3, a4, a5, a6, a7);
    v24 = v22;

    v25 = MEMORY[0x1E69E7CC0];
    if (v24)
    {
      v25 = v24;
    }

    v36.i64[0] = v33;
    v36.i64[1] = v32;
    *&v37 = v31;
    *(&v37 + 1) = v21;
    LOBYTE(v38) = v30;
    *(&v38 + 1) = v25;
    sub_1B0D04390(&v36);
    v26 = v43;
    *(a8 + 96) = v42;
    *(a8 + 112) = v26;
    *(a8 + 128) = v44;
    v27 = v39;
    *(a8 + 32) = v38;
    *(a8 + 48) = v27;
    v28 = v41;
    *(a8 + 64) = v40;
    *(a8 + 80) = v28;
    v29 = v37;
    *a8 = v36;
    *(a8 + 16) = v29;
  }
}

uint64_t sub_1B0DA14C8(uint64_t result, uint64_t a2, int64_t a3)
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
      sub_1B0439BCC();
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

    sub_1B0DA15C0(v6, v4, a3, &v14);
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

uint64_t sub_1B0DA15C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    v10 = *(a1 + 8);
    if (*(a1 + 12) == v10)
    {
      sub_1B0D3EA30();
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
      sub_1B0E46298();

      v16 = sub_1B0E44C68();
      MEMORY[0x1B2726E80](v16);

      sub_1B0436554();
      swift_allocError();
      *v17 = 0xD00000000000001BLL;
      v17[1] = 0x80000001B0F30010;
      v17[2] = 0xD000000000000020;
      v17[3] = 0x80000001B0F2FA10;
      v17[4] = 174;
      return swift_willThrow();
    }

    sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    result = sub_1B0E44C78();
    *a4 = result;
    a4[1] = v18;
  }

  return result;
}

void sub_1B0DA17D0(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v69 = a8;

    sub_1B0E03214(a1, a2, a3, a4, a5, a6, a7);
    v18 = v17;

    if (!v18)
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1B0439BCC();
      swift_allocError();
      *v21 = a3;
      swift_willThrow();
    }

    else
    {
      v68 = v18;
      v19 = *a1;
      v20 = *(a1 + 8);
      v66 = *(a1 + 16);
      v63 = *(a1 + 20);
      v59 = *(a1 + 22);

      sub_1B0436204(a1);

      v22 = *a1;
      v64 = *(a1 + 8);
      v60 = *(a1 + 16);
      v52 = *(a1 + 20);
      v50 = *(a1 + 12);
      v51 = *(a1 + 22);

      sub_1B0DA14C8(a1, a2 + 1, a3);
      v65 = v23;

      v24 = *a1;
      v25 = *(a1 + 8);
      v61 = *(a1 + 16);
      v55 = *(a1 + 20);
      v53 = *(a1 + 22);

      sub_1B0436204(a1);

      v26 = sub_1B0DB3AC0(a1, a2, a3, a4, a5, a6, a7);
      v28 = v27;
      v56 = HIDWORD(v29);
      v62 = v26;
      v30 = v29;
      swift_beginAccess();
      v31 = v56 - v30;
      if (v56 == v30)
      {
        v32 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v54 = ((v28 >> 24) & 0xFFFF00 | BYTE6(v28)) + v30;
        v57 = *(v62 + 24);
        v33 = v31;
        v34 = sub_1B0C0C9F0(v31, 0);
        memcpy(v34 + 4, (v57 + v54), v33);
        v32 = v34;
      }

      v35 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v32);
      v58 = v36;

      sub_1B0E03240(a1, a2, a3, a4, a5, a6, a7);
      v37 = v68;
      v39 = v38;
      v41 = v40;
      v67 = v42;

      if (!v39)
      {
        v67 = sub_1B0D98EC4(MEMORY[0x1E69E7CC0]);
        v39 = v43;
        v41 = v44;
      }

      v45 = v35;
      v46 = v58;
      if (!v65)
      {
        goto LABEL_17;
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v47 = sub_1B0E447F8();

      if ((v47 & 0x100) == 0)
      {
        v48 = sub_1B0E447F8();

        v37 = v68;
        v46 = v58;
        if ((v48 & 0x100) == 0)
        {
LABEL_18:
          *v69 = v37;
          *(v69 + 8) = v45;
          *(v69 + 16) = v46;
          *(v69 + 20) = v48;
          *(v69 + 24) = v67;
          *(v69 + 32) = v39;
          *(v69 + 40) = v41;
          return;
        }

LABEL_17:
        LOBYTE(v48) = 0;
        goto LABEL_18;
      }

      sub_1B0CF9928();
      swift_allocError();
      *v49 = 0xD000000000000029;
      v49[1] = 0x80000001B0F2F3D0;
      swift_willThrow();
    }
  }
}

uint64_t sub_1B0DA1EC8(uint64_t a1, uint64_t a2, int64_t a3, uint64_t (*a4)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E75A0, &qword_1B0EF4E58);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B0EC1E70;
  result = sub_1B0DB5660(a1, a2, a3, a4);
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
      v27 = a4;
      while (1)
      {
        v12 = *a1;
        v13 = *(a1 + 8);
        v14 = *(a1 + 16);
        v15 = *(a1 + 20);
        v16 = *(a1 + 22);

        sub_1B0436204(a1);

        v17 = sub_1B0DB5660(a1, a2, a3, v27);
        v20 = *(v9 + 16);
        v19 = *(v9 + 24);
        if (v20 >= v19 >> 1)
        {
          v22 = v17;
          v23 = v18;
          v24 = sub_1B0DF5A60((v19 > 1), v20 + 1, 1, v9);
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

    sub_1B0439BCC();
    v25 = swift_allocError();
    *v26 = a3;
    swift_willThrow();

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DA20E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return result;
  }

  if (v9 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v31 = a3;
    return swift_willThrow();
  }

  v11 = result;
  v13 = *result;
  v14 = *(result + 8);
  v15 = *(result + 16);
  v16 = *(result + 20);
  v17 = *(result + 22);
  sub_1B0436204(result);
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

  sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, v11, v9, a3);

  sub_1B0E01738(v11, v9, a3, a4, a5, a6, a7);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  if (!v26)
  {
    v24 = sub_1B0D98EC4(MEMORY[0x1E69E7CC0]);
    v26 = v29;
    v28 = v30;
  }

  sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v11, v9, a3);

  *a8 = v24;
  a8[1] = v26;
  a8[2] = v28;
  return result;
}

uint64_t sub_1B0DA22E8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v52 = a6;
  v47 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v49 = &v44 - v16;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7598, &qword_1B0EF4E50);
  v17 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v19 = &v44 - v18;
  v53 = 0;
  *&v54 = MEMORY[0x1E69E7CC0];
  *(&v54 + 1) = MEMORY[0x1E69E7CC0];
  v50 = a2;
  v20 = a2;
  v21 = a7;
  v22 = a3;
  v23 = v51;
  sub_1B0DA2640(a1, v20, a3, a4, a5, v52, v21, &v44 - v18);
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
  sub_1B0D062E4(&v19[*(v48 + 52)], v49);
  v30 = type metadata accessor for ParameterValue();
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);

  result = sub_1B0D961D0(v29, v24, v25, v26 | (v27 << 32) | (v28 << 48));
  v32 = v50 + 1;
  if (__OFADD__(v50, 1))
  {
    __break(1u);
  }

  else
  {
    if (v32 >= v22)
    {
      sub_1B0439BCC();
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
    sub_1B0DFC004(v33, v39, v22, &v53, v44, a5, v52, v46);
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

      sub_1B0398EFC(v19, &qword_1EB6E7598, &qword_1B0EF4E50);
LABEL_8:
    }

    sub_1B0398EFC(v19, &qword_1EB6E7598, &qword_1B0EF4E50);

    v43 = v47;
    *v47 = v53;
    *(v43 + 1) = v54;
  }

  return result;
}

uint64_t sub_1B0DA2640@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v56 = a8;
  v16 = type metadata accessor for ParameterValue();
  v17 = *(*(v16 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v16);
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
      sub_1B0439BCC();
      swift_allocError();
      *v30 = a3;
    }

    else
    {
      v51 = result;
      v23 = *a1;
      v24 = *(a1 + 8);
      v25 = *(a1 + 16);
      v53 = *(a1 + 20);
      v54 = v25;
      v52 = *(a1 + 22);
      v55 = v23;

      v26 = sub_1B0DB3AC0(a1, v22, a3, a4, a5, a6, a7);
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
          sub_1B0436204(a1);
          v33 = *a1;
          v34 = *(a1 + 8);
          v35 = *(a1 + 16);
          v46[2] = *(a1 + 20);
          v46[3] = v35;
          v46[1] = *(a1 + 22);

          sub_1B0DA9710(a1, v49, a3, a4, a5, a6, a7, v20);
          v38 = v47;
          v39 = v48;
          v40 = HIDWORD(v47);
          v41 = HIWORD(v48);
          v42 = HIDWORD(v48);
          swift_storeEnumTagMultiPayload();

          v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7598, &qword_1B0EF4E50);
          v44 = v56;
          result = sub_1B0D06280(v20, v56 + *(v43 + 52));
          *v44 = v50;
          *(v44 + 8) = v38;
          *(v44 + 12) = v40;
          *(v44 + 16) = v39;
          *(v44 + 20) = v42;
          *(v44 + 22) = v41;
          return result;
        }

        v36 = *a1;

        sub_1B0439BCC();
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

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0DA2AF0(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_1B0DFE880(0x534547415353454DuLL, 0xE900000000000020, 0, 0, a1, a2, a3);
  if (!v3)
  {
    result = sub_1B0DFF3DC(a1, a2, a3, 1);
    if (result < 0)
    {
      sub_1B0436554();
      swift_allocError();
      *v8 = 0xD000000000000011;
      v8[1] = 0x80000001B0F2FEE0;
      v8[2] = 0xD000000000000020;
      v8[3] = 0x80000001B0F2FA10;
      v8[4] = 202;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B0DA2BE8(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_1B0DFE880(0x205458454E444955uLL, 0xE800000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    return sub_1B0D9EA70(a1, a2, a3);
  }

  return result;
}

uint64_t sub_1B0DA2C6C(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_1B0DFE880(0x44494C4156444955uLL, 0xEC00000020595449, 0, 0, a1, a2, a3);
  if (!v3)
  {
    return sub_1B0DB39E8(a1, a2, a3);
  }

  return result;
}

uint64_t sub_1B0DA2CF8(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_1B0DFE880(0x204E4545534E55uLL, 0xE700000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    result = sub_1B0DFF3DC(a1, a2, a3, 1);
    if (result < 0)
    {
      sub_1B0436554();
      swift_allocError();
      *v8 = 0xD000000000000011;
      v8[1] = 0x80000001B0F2FEE0;
      v8[2] = 0xD000000000000020;
      v8[3] = 0x80000001B0F2FA10;
      v8[4] = 202;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B0DA2DEC(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_1B0DFE880(0x20455A4953uLL, 0xE500000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    result = sub_1B0DFF3DC(a1, a2, a3, 1);
    if (result < 0)
    {
      sub_1B0436554();
      swift_allocError();
      *v8 = 0xD000000000000011;
      v8[1] = 0x80000001B0F2FEE0;
      v8[2] = 0xD000000000000020;
      v8[3] = 0x80000001B0F2FA10;
      v8[4] = 202;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B0DA2EDC(uint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_1B0DFE880(0x4D54534548474948uLL, 0xEE0020514553444FLL, 0, 0, a1, a2, a3);
  if (!v3)
  {
    return sub_1B0DB2720(a1, a2, a3);
  }

  return result;
}

uint64_t sub_1B0DA2F68(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_1B0DFE880(0x20544E45434552uLL, 0xE700000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    result = sub_1B0DFF3DC(a1, a2, a3, 1);
    if (result < 0)
    {
      sub_1B0436554();
      swift_allocError();
      *v8 = 0xD000000000000011;
      v8[1] = 0x80000001B0F2FEE0;
      v8[2] = 0xD000000000000020;
      v8[3] = 0x80000001B0F2FA10;
      v8[4] = 202;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B0DA305C(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  sub_1B0DFE880(0x494C444E45505041uLL, 0xEC0000002054494DLL, 0, 0, a1, a2, a3);
  if (!v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7590, &qword_1B0EF4E48);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B0EC3500;
    v16 = swift_allocObject();
    v16[2] = a4;
    v16[3] = a5;
    v16[4] = a6;
    v16[5] = a7;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1B0DA4C88;
    *(v17 + 24) = v16;
    *(inited + 32) = sub_1B0DA4E78;
    *(inited + 40) = v17;
    v18 = swift_allocObject();
    v18[2] = a4;
    v18[3] = a5;
    v18[4] = a6;
    v18[5] = a7;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1B0DA4CCC;
    *(v19 + 24) = v18;
    *(inited + 48) = sub_1B0DA4E78;
    *(inited + 56) = v19;
    swift_retain_n();
    v12 = sub_1B0D9402C(inited, a1, a2, v12, 0xD000000000000020, 0x80000001B0F2FA10, 374);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
    swift_arrayDestroy();
  }

  return v12;
}

unint64_t sub_1B0DA32AC(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_1B0DFF3DC(a1, a2, a3, 1);
  if (!v3 && (result & 0x8000000000000000) != 0)
  {
    sub_1B0436554();
    swift_allocError();
    *v5 = 0xD000000000000011;
    v5[1] = 0x80000001B0F2FEE0;
    v5[2] = 0xD000000000000020;
    v5[3] = 0x80000001B0F2FA10;
    v5[4] = 202;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1B0DA3358(uint64_t a1, uint64_t a2, int64_t a3)
{
  sub_1B0DFE880(0x49584F424C49414DuLL, 0xEB00000000282044, 0, 0, a1, a2, a3);
  if (!v3)
  {
    v4 = sub_1B0DC1D1C(a1, a2, a3);
    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  }

  return v4;
}

uint64_t sub_1B0DA3428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7590, &qword_1B0EF4E48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EF4E20;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1B0DA45B0;
  *(v15 + 24) = v14;
  *(inited + 32) = sub_1B0DA45D0;
  *(inited + 40) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B0DA45E8;
  *(v17 + 24) = v16;
  *(inited + 48) = sub_1B0DA4E78;
  *(inited + 56) = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B0DA4608;
  *(v19 + 24) = v18;
  *(inited + 64) = sub_1B0DA4E78;
  *(inited + 72) = v19;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B0DA4628;
  *(v21 + 24) = v20;
  *(inited + 80) = sub_1B0DA4E78;
  *(inited + 88) = v21;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B0DA4648;
  *(v23 + 24) = v22;
  *(inited + 96) = sub_1B0DA4E78;
  *(inited + 104) = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B0DA4668;
  *(v25 + 24) = v24;
  *(inited + 112) = sub_1B0DA4E78;
  *(inited + 120) = v25;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1B0DA4688;
  *(v27 + 24) = v26;
  *(inited + 128) = sub_1B0DA4E78;
  *(inited + 136) = v27;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1B0DA46A8;
  *(v29 + 24) = v28;
  *(inited + 144) = sub_1B0DA4E78;
  *(inited + 152) = v29;
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = a5;
  v30[4] = a6;
  v30[5] = a7;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1B0DA46C8;
  *(v31 + 24) = v30;
  *(inited + 160) = sub_1B0DA4E78;
  *(inited + 168) = v31;
  swift_retain_n();
  v32 = sub_1B0D9402C(inited, a1, a2, a3, 0xD000000000000020, 0x80000001B0F2FA10, 395);
  if (v36)
  {
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
    return swift_arrayDestroy();
  }

  else
  {
    v34 = v32;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
    swift_arrayDestroy();
    return v34;
  }
}

uint64_t sub_1B0DA38BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v144 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7588, &qword_1B0EF4E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC1E70;
  v17 = sub_1B0DA3428(a1, a2, a3, a4, a5, a6, a7);
  if (v8)
  {
    *(inited + 16) = 0;

    goto LABEL_39;
  }

  v72 = a4;
  v74 = a5;
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
    sub_1B0439BCC();
    swift_allocError();
    *v41 = a3;
LABEL_37:
    swift_willThrow();

    goto LABEL_39;
  }

  v22 = a1;
  v23 = *(a1 + 8);
  v24 = *(a1 + 16);
  v61 = *(a1 + 22);
  v62 = *(a1 + 20);
  v63 = *a1;

  v69 = v21 + 1;
  if (v21 + 1 >= a3)
  {
    sub_1B0439BCC();
    v42 = swift_allocError();
    *v43 = a3;
  }

  else
  {
    v60 = v24;
    v25 = v21 + 2;
    v26 = *a1;
    v27 = *(a1 + 8);
    v28 = *(a1 + 16);
    v66 = *(v22 + 22);
    v67 = *(v22 + 20);
    if (v25 < a3)
    {
      v29 = inited;
      v64 = a7;
      v65 = v22;
      v71 = inited;
      do
      {
        v78 = v29;
        swift_retain_n();
        sub_1B0436204(v22);

        v30 = a3;
        v31 = a3;
        v32 = a6;
        v33 = sub_1B0DA3428(v22, v69, v31, v72, v74, a6, a7);
        v35 = v34;
        v37 = v36;

        v29 = v78;
        v39 = *(v78 + 2);
        v38 = *(v78 + 3);
        if (v39 >= v38 >> 1)
        {
          v29 = sub_1B0DF5A7C((v38 > 1), v39 + 1, 1, v78);
        }

        *(v29 + 2) = v39 + 1;
        v40 = &v29[24 * v39];
        *(v40 + 4) = v33;
        *(v40 + 5) = v35;
        v40[48] = v37;
        a7 = v64;
        v22 = v65;
        v26 = *v65;
        v27 = *(v65 + 8);
        v28 = *(v65 + 16);
        v66 = *(v65 + 22);
        v67 = *(v65 + 20);
        inited = v71;
        a6 = v32;
        a3 = v30;
      }

      while (v25 < v30);
    }

    sub_1B0439BCC();
    v42 = swift_allocError();
    *v44 = a3;

    swift_willThrow();
    v45 = *v22;

    *v22 = v26;
    *(v22 + 8) = v27;
    *(v22 + 16) = v28;
    *(v22 + 20) = v67;
    *(v22 + 22) = v66;
    v24 = v60;
  }

  swift_willThrow();
  v46 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (!swift_dynamicCast())
  {

    v57 = *v22;

    *v22 = v63;
    *(v22 + 8) = v23;
    *(v22 + 16) = v24;
    *(v22 + 20) = v62;
    *(v22 + 22) = v61;
    goto LABEL_37;
  }

  v98 = 0;
  v99 = 1;
  v101 = 0;
  v102 = 1;
  v105 = 0;
  v106 = 1;
  v109 = 0;
  v110 = 1;
  v112 = 0;
  v113 = 1;
  v115 = 0;
  v116 = 1;
  v118 = 0;
  v119 = 1;
  v121 = 0;
  v122 = 1;
  v125 = 0;
  v124 = 0;
  v126 = 0;
  v127 = 1;
  v128 = 0;
  v129 = 1;
  v130 = 0;
  v131 = 1;
  v132 = 0;
  v133 = 1;
  v134 = 0;
  v135 = 1;
  v136 = 0;
  v137 = 1;
  v138 = 0;
  v139 = 1;
  v140 = 0;
  v141 = 1;
  v143 = 0;
  v142 = 0;
  sub_1B0B379C4(&v98, v97);
  sub_1B0B11B9C(&v126);
  v79 = v98;
  v97[0] = v99;
  *v96 = *v100;
  *&v96[3] = *&v100[3];
  v76 = v101;
  v86 = v102;
  v95 = v104;
  v94 = v103;
  v75 = v105;
  v85 = v106;
  v93 = v108;
  v92 = v107;
  v73 = v109;
  v84 = v110;
  *&v91[3] = *&v111[3];
  *v91 = *v111;
  v83 = v113;
  *&v90[3] = *&v114[3];
  *v90 = *v114;
  v68 = v115;
  v70 = v112;
  v82 = v116;
  *&v89[3] = *&v117[3];
  *v89 = *v117;
  v47 = v118;
  v81 = v119;
  *&v88[3] = *&v120[3];
  *v88 = *v120;
  v48 = v121;
  v80 = v122;
  *&v87[3] = *&v123[3];
  *v87 = *v123;
  v49 = v124;
  v50 = v125;
  v51 = *(inited + 16);
  if (v51)
  {
    v52 = (inited + 48);
    do
    {
      v53 = *(v52 - 2);
      v54 = *v52;
      if (v54 <= 3)
      {
        if (*v52 > 1u)
        {
          if (v54 == 2)
          {
            v84 = 0;
            v73 = *(v52 - 2);
          }

          else
          {
            v83 = 0;
            v70 = *(v52 - 2);
          }
        }

        else if (*v52)
        {
          v85 = 0;
          v75 = *(v52 - 2);
        }

        else
        {
          v97[0] = 0;
          v79 = v53;
        }
      }

      else if (*v52 <= 5u)
      {
        if (v54 == 4)
        {
          v82 = 0;
          v68 = *(v52 - 2);
        }

        else
        {
          v86 = 0;
          v76 = *(v52 - 2);
        }
      }

      else if (v54 == 6)
      {
        v81 = 0;
        v47 = *(v52 - 2);
      }

      else
      {
        v55 = *(v52 - 1);
        if (v54 == 7)
        {
          v80 = v55 & 1;
          v48 = *(v52 - 2);
        }

        else
        {
          v56 = *(v52 - 1);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

          v49 = v53;
          v50 = v55;
        }
      }

      v52 += 24;
      --v51;
    }

    while (v51);
  }

  v58 = v97[0];
  *a8 = v79;
  *(a8 + 8) = v58;
  *(a8 + 9) = *v96;
  *(a8 + 12) = *&v96[3];
  *(a8 + 16) = v76;
  *(a8 + 24) = v86;
  *(a8 + 27) = v95;
  *(a8 + 25) = v94;
  *(a8 + 28) = v75;
  *(a8 + 32) = v85;
  *(a8 + 33) = v92;
  *(a8 + 35) = v93;
  *(a8 + 36) = v73;
  *(a8 + 40) = v84;
  *(a8 + 41) = *v91;
  *(a8 + 44) = *&v91[3];
  *(a8 + 48) = v70;
  *(a8 + 56) = v83;
  *(a8 + 60) = *&v90[3];
  *(a8 + 57) = *v90;
  *(a8 + 64) = v68;
  *(a8 + 72) = v82;
  *(a8 + 76) = *&v89[3];
  *(a8 + 73) = *v89;
  *(a8 + 80) = v47;
  *(a8 + 88) = v81;
  *(a8 + 92) = *&v88[3];
  *(a8 + 89) = *v88;
  *(a8 + 96) = v48;
  *(a8 + 104) = v80;
  *(a8 + 108) = *&v87[3];
  *(a8 + 105) = *v87;
  *(a8 + 112) = v49;
  *(a8 + 120) = v50;
LABEL_39:
  v59 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0DA40AC(uint64_t a1, uint64_t a2, char a3, unsigned __int8 a4)
{
  if (a4 <= 3u)
  {
    if (a4 > 1u)
    {
      if (a4 != 2)
      {
        v7 = 3;
        goto LABEL_22;
      }

      v8 = 2;
    }

    else
    {
      if (!a4)
      {
        v7 = 0;
LABEL_22:
        MEMORY[0x1B2728D70](v7);
        return MEMORY[0x1B2728D70](a2);
      }

      v8 = 1;
    }

    MEMORY[0x1B2728D70](v8);
    return sub_1B0E46C88();
  }

  if (a4 <= 5u)
  {
    if (a4 == 4)
    {
      v7 = 4;
    }

    else
    {
      v7 = 5;
    }

    goto LABEL_22;
  }

  if (a4 == 6)
  {
    MEMORY[0x1B2728D70](6);
    return MEMORY[0x1B2728DB0](a2);
  }

  if (a4 == 7)
  {
    MEMORY[0x1B2728D70](7);
    if (a3)
    {
      return sub_1B0E46C68();
    }

    sub_1B0E46C68();
    return MEMORY[0x1B2728D70](a2);
  }

  MEMORY[0x1B2728D70](8);

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0DA41CC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1B0E46C28();
  sub_1B0DA40AC(v5, v1, v2, v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DA4234()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1B0E46C28();
  sub_1B0DA40AC(v5, v1, v2, v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DA42A8(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
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
          return sub_1B0E46A78();
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

void sub_1B0DA4480(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, int8x16_t *a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  sub_1B0DA0374(a1, a2, a3, a4);
}

double sub_1B0DA44C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  *&result = sub_1B0DA1208(a1, a2, a3, a4).n128_u64[0];
  return result;
}

__n128 sub_1B0DA4500@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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

double sub_1B0DA456C(uint64_t a1)
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

uint64_t sub_1B0DA458C(uint64_t a1)
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

uint64_t sub_1B0DA45B0(unint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1B0DA2AF0(a1, a2, a3);
}

uint64_t sub_1B0DA45E8(unint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1B0DA2BE8(a1, a2, a3);
}

uint64_t sub_1B0DA4608(unint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1B0DA2C6C(a1, a2, a3);
}

uint64_t sub_1B0DA4628(unint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1B0DA2CF8(a1, a2, a3);
}

uint64_t sub_1B0DA4648(unint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1B0DA2DEC(a1, a2, a3);
}

uint64_t sub_1B0DA4668(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1B0DA2EDC(a1, a2, a3);
}

uint64_t sub_1B0DA4688(unint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1B0DA2F68(a1, a2, a3);
}

unint64_t sub_1B0DA46C8(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1B0DA3358(a1, a2, a3);
}

void sub_1B0DA46E8(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, int8x16_t *a4@<X8>)
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
      sub_1B0439BCC();
      swift_allocError();
      *v14 = a3;
      goto LABEL_6;
    }

    v9 = *a1;
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);
    v12 = *(a1 + 20);
    v13 = *(a1 + 22);
    sub_1B0436204(a1);
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CE0, &qword_1B0EE4E80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1B0EC1E70;
    v16 = sub_1B0DFF3DC(a1, a2, a3, 0);
    if ((v16 & 0x8000000000000000) != 0)
    {
      sub_1B0436554();
      swift_allocError();
      *v30 = 0xD000000000000011;
      v30[1] = 0x80000001B0F2FEE0;
      v30[2] = 0xD000000000000020;
      v30[3] = 0x80000001B0F2FA10;
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
      v50 = *(a1 + 22);

      if (v5 + 1 >= a3)
      {
        sub_1B0439BCC();
        v31 = swift_allocError();
        *v32 = a3;
      }

      else
      {
        v47 = v20;
        v48 = v19;
        v49 = v17;
        v21 = *a1;
        v22 = *(a1 + 8);
        v52 = *(a1 + 16);
        v23 = *(a1 + 20);
        v24 = *(a1 + 22);
        if (v5 + 2 >= a3)
        {
LABEL_18:
          sub_1B0439BCC();
          v31 = swift_allocError();
          *v33 = a3;
        }

        else
        {
          v25 = v15;
          while (1)
          {
            v53 = v25;
            swift_retain_n();
            sub_1B0436204(a1);

            v51 = v24;
            v26 = v23;
            v27 = sub_1B0DFF3DC(a1, v5 + 1, a3, 0);
            if ((v27 & 0x8000000000000000) != 0)
            {
              break;
            }

            v25 = v53;
            v29 = *(v53 + 2);
            v28 = *(v53 + 3);
            if (v29 >= v28 >> 1)
            {
              v25 = sub_1B0DF5438((v28 > 1), v29 + 1, 1, v53);
            }

            *(v25 + 2) = v29 + 1;
            *&v25[8 * v29 + 32] = v27;
            v21 = *a1;
            v22 = *(a1 + 8);
            v52 = *(a1 + 16);
            v23 = *(a1 + 20);
            v24 = *(a1 + 22);
            if (v5 + 2 >= a3)
            {
              goto LABEL_18;
            }
          }

          sub_1B0436554();
          v31 = swift_allocError();
          *v46 = 0xD000000000000011;
          v46[1] = 0x80000001B0F2FEE0;
          v46[2] = 0xD000000000000020;
          v46[3] = 0x80000001B0F2FA10;
          v46[4] = 202;
          v15 = v53;
          v23 = v26;
          v24 = v51;
        }

        swift_willThrow();
        v34 = *a1;

        *a1 = v21;
        *(a1 + 8) = v22;
        *(a1 + 16) = v52;
        *(a1 + 20) = v23;
        *(a1 + 22) = v24;
        v17 = v49;
        v20 = v47;
        v19 = v48;
      }

      swift_willThrow();
      v57 = v31;
      v35 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
        v36 = v15;

        v37 = *a1;
        v38 = *(a1 + 8);
        v39 = *(a1 + 16);
        v40 = *(a1 + 20);
        v54 = *(a1 + 22);

        sub_1B0436204(a1);

        v56[0].i64[0] = v36;
        v56[0].i64[1] = sub_1B0DB2268(a1, a2, a3);
        sub_1B0DA4D2C(v56);
        v42 = v56[7];
        a4[6] = v56[6];
        a4[7] = v42;
        a4[8] = v56[8];
        v43 = v56[3];
        a4[2] = v56[2];
        a4[3] = v43;
        v44 = v56[5];
        a4[4] = v56[4];
        a4[5] = v44;
        v45 = v56[1];
        *a4 = v56[0];
        a4[1] = v45;
      }

      else
      {

        v41 = *a1;

        *a1 = v17;
        *(a1 + 8) = v18;
        *(a1 + 16) = v19;
        *(a1 + 20) = v20;
        *(a1 + 22) = v50;
        swift_willThrow();
      }
    }
  }
}

unint64_t sub_1B0DA4CCC(unint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1B0DA32AC(a1, a2, a3);
}

uint64_t sub_1B0DA4CEC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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

int8x16_t sub_1B0DA4D2C(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x9000000000000000;
  result = vandq_s8(a1[3], xmmword_1B0ED0F80);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

uint64_t sub_1B0DA4D84(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B0DA4DCC(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B0DA4E24()
{
  result = qword_1EB6E75A8;
  if (!qword_1EB6E75A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E75A8);
  }

  return result;
}

uint64_t sub_1B0DA4E90@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E75B0, &qword_1B0EF4FC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B0EF4FB0;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1B0DA8E74;
  *(v15 + 24) = v14;
  *(v13 + 32) = 0x5347414C46;
  *(v13 + 40) = 0xE500000000000000;
  *(v13 + 48) = sub_1B0442174;
  *(v13 + 56) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B0DA8E94;
  *(v17 + 24) = v16;
  *(v13 + 64) = 0x45504F4C45564E45;
  *(v13 + 72) = 0xE800000000000000;
  *(v13 + 80) = sub_1B0442378;
  *(v13 + 88) = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B0DA8EB4;
  *(v19 + 24) = v18;
  strcpy((v13 + 96), "INTERNALDATE");
  *(v13 + 109) = 0;
  *(v13 + 110) = -5120;
  *(v13 + 112) = sub_1B0442378;
  *(v13 + 120) = v19;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B0DA8ED4;
  *(v21 + 24) = v20;
  *(v13 + 128) = 0x532E323238434652;
  *(v13 + 136) = 0xEB00000000455A49;
  *(v13 + 144) = sub_1B0442378;
  *(v13 + 152) = v21;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B0DA8EF4;
  *(v23 + 24) = v22;
  *(v13 + 160) = 1497648962;
  *(v13 + 168) = 0xE400000000000000;
  *(v13 + 176) = sub_1B0442378;
  *(v13 + 184) = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B0DA8F14;
  *(v25 + 24) = v24;
  strcpy((v13 + 192), "BODYSTRUCTURE");
  *(v13 + 206) = -4864;
  *(v13 + 208) = sub_1B0442378;
  *(v13 + 216) = v25;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1B0DA8F38;
  *(v27 + 24) = v26;
  *(v13 + 224) = 4475221;
  *(v13 + 232) = 0xE300000000000000;
  *(v13 + 240) = sub_1B0442378;
  *(v13 + 248) = v27;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1B0DA8F58;
  *(v29 + 24) = v28;
  *(v13 + 256) = 0x532E5952414E4942;
  *(v13 + 264) = 0xEB00000000455A49;
  *(v13 + 272) = sub_1B0442378;
  *(v13 + 280) = v29;
  *(v13 + 288) = 0x47534D2D4D472D58;
  *(v13 + 296) = 0xEA00000000004449;
  *(v13 + 304) = sub_1B0DA65C8;
  *(v13 + 312) = 0;
  *(v13 + 320) = 0x5248542D4D472D58;
  *(v13 + 328) = 0xEA00000000004449;
  *(v13 + 336) = sub_1B0DA65F4;
  *(v13 + 344) = 0;
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = a5;
  v30[4] = a6;
  v30[5] = a7;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1B0DA8F78;
  *(v31 + 24) = v30;
  *(v13 + 352) = 0x42414C2D4D472D58;
  *(v13 + 360) = 0xEB00000000534C45;
  *(v13 + 368) = sub_1B0442378;
  *(v13 + 376) = v31;
  v32 = swift_allocObject();
  v32[2] = a4;
  v32[3] = a5;
  v32[4] = a6;
  v32[5] = a7;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1B0DA8F98;
  *(v33 + 24) = v32;
  *(v13 + 384) = 0x514553444F4DLL;
  *(v13 + 392) = 0xE600000000000000;
  *(v13 + 400) = sub_1B0442378;
  *(v13 + 408) = v33;
  v34 = swift_allocObject();
  v34[2] = a4;
  v34[3] = a5;
  v34[4] = a6;
  v34[5] = a7;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1B0DA8FB8;
  *(v35 + 24) = v34;
  *(v13 + 416) = 0x542E323238434652;
  *(v13 + 424) = 0xEB00000000545845;
  *(v13 + 432) = sub_1B0442378;
  *(v13 + 440) = v35;
  v36 = swift_allocObject();
  v36[2] = a4;
  v36[3] = a5;
  v36[4] = a6;
  v36[5] = a7;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1B0DA8FDC;
  *(v37 + 24) = v36;
  strcpy((v13 + 448), "RFC822.HEADER");
  *(v13 + 462) = -4864;
  *(v13 + 464) = sub_1B0442378;
  *(v13 + 472) = v37;
  v38 = swift_allocObject();
  v38[2] = a4;
  v38[3] = a5;
  v38[4] = a6;
  v38[5] = a7;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1B0DA9000;
  *(v39 + 24) = v38;
  *(v13 + 480) = 0x5952414E4942;
  *(v13 + 488) = 0xE600000000000000;
  *(v13 + 496) = sub_1B0442378;
  *(v13 + 504) = v39;
  v40 = swift_allocObject();
  v40[2] = a4;
  v40[3] = a5;
  v40[4] = a6;
  v40[5] = a7;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1B0DA9020;
  *(v41 + 24) = v40;
  *(v13 + 512) = 0x57454956455250;
  *(v13 + 520) = 0xE700000000000000;
  *(v13 + 528) = sub_1B0442378;
  *(v13 + 536) = v41;
  v42 = swift_allocObject();
  v42[2] = a4;
  v42[3] = a5;
  v42[4] = a6;
  v42[5] = a7;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_1B0DA9040;
  *(v43 + 24) = v42;
  *(v13 + 544) = 0x44494C49414D45;
  *(v13 + 552) = 0xE700000000000000;
  *(v13 + 560) = sub_1B0442378;
  *(v13 + 568) = v43;
  v44 = swift_allocObject();
  v44[2] = a4;
  v44[3] = a5;
  v44[4] = a6;
  v44[5] = a7;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_1B0DA9060;
  *(v45 + 24) = v44;
  *(v13 + 576) = 0x4449444145524854;
  *(v13 + 584) = 0xE800000000000000;
  *(v13 + 592) = sub_1B0442378;
  *(v13 + 600) = v45;
  swift_retain_n();
  v46 = sub_1B0DA9124(v13, &qword_1EB6E75B8, &qword_1B0EF4FC8);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7550, &qword_1B0EF4668);
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
      sub_1B0439BCC();
      swift_allocError();
      *v54 = a3;
    }

    else
    {
      v53 = *a1;

      sub_1B0440440(a1, &v79);
      if (!v75)
      {
        v76 = v51;
        sub_1B0DFF2E8(v79, v80, v81 | (v82 << 32) | (v83 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 84);
        v72 = v50;
        v73 = sub_1B0E44BB8();
        v56 = v55;

        if (*(v46 + 16))
        {
          v57 = sub_1B0441038(v73, v56);
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
        sub_1B0E46298();

        v79 = 0xD000000000000017;
        v80 = 0x80000001B0F2FF20;
        MEMORY[0x1B2726E80](v73, v56);

        v63 = v79;
        v64 = v80;
        sub_1B0436554();
        swift_allocError();
        *v65 = v63;
        v65[1] = v64;
        v65[2] = 0xD000000000000020;
        v65[3] = 0x80000001B0F2FA10;
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

uint64_t sub_1B0DA5A50@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v38 = v11;
    v39 = v9;
    v40 = v10;
    if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
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
      sub_1B0439BCC();
      swift_allocError();
      *v22 = a3;
      goto LABEL_8;
    }

    sub_1B0436204(v13);
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

    v30 = *v13;

    sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, v13, v18, a3);

    sub_1B0E00B4C(v13, v18, a3, a4, a5, a6, a7, v18, a3);
    v35 = v23;

    if (v35)
    {
      v24 = v35;
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC0];
    }

    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 1, v13, v18, a3);

    *&v36[0] = v24;
    result = sub_1B0D04848(v36);
    v25 = v36[9];
    *(a8 + 128) = v36[8];
    *(a8 + 144) = v25;
    *(a8 + 160) = v36[10];
    *(a8 + 176) = v37;
    v26 = v36[5];
    *(a8 + 64) = v36[4];
    *(a8 + 80) = v26;
    v27 = v36[7];
    *(a8 + 96) = v36[6];
    *(a8 + 112) = v27;
    v28 = v36[1];
    *a8 = v36[0];
    *(a8 + 16) = v28;
    v29 = v36[3];
    *(a8 + 32) = v36[2];
    *(a8 + 48) = v29;
  }

  return result;
}

uint64_t sub_1B0DA5CC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
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
      sub_1B0439BCC();
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
    sub_1B0436204(result);
    if (v8)
    {
      *v13 = v15;
      *(v13 + 8) = v16;
      *(v13 + 16) = v17;
      *(v13 + 20) = v18;
      *(v13 + 22) = v19;
      return swift_willThrow();
    }

    sub_1B0D9B748(v13, a2, a3, a4, a5, a6, a7, v42);
    v34 = v42[4];
    v35 = v42[5];
    v36 = v42[6];
    *&v37 = v43;
    v30 = v42[0];
    v31 = v42[1];
    v32 = v42[2];
    v33 = v42[3];
    result = sub_1B0D04858(&v30);
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

uint64_t sub_1B0DA5E4C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
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
      sub_1B0439BCC();
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
    sub_1B0436204(result);
    if (v4)
    {
      *v9 = v10;
      *(v9 + 8) = v11;
      *(v9 + 16) = v12;
      *(v9 + 20) = v13;
      *(v9 + 22) = v14;
      return swift_willThrow();
    }

    *&v22[0] = sub_1B0D99978(v9, a2, a3);
    result = sub_1B0D04820(v22);
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

uint64_t sub_1B0DA5FA8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
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
      sub_1B0439BCC();
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
    sub_1B0436204(result);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    v17 = sub_1B0DFF3DC(v9, a2, a3, 1);
    if ((v17 & 0x8000000000000000) != 0)
    {
      sub_1B0436554();
      swift_allocError();
      *v23 = 0xD000000000000011;
      v23[1] = 0x80000001B0F2FEE0;
      v23[2] = 0xD000000000000020;
      v23[3] = 0x80000001B0F2FA10;
      v23[4] = 202;
      return swift_willThrow();
    }

    *&v24[0] = v17;
    result = sub_1B0D0480C(v24);
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

uint64_t sub_1B0DA6150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B0DA92FC;
  *(v17 + 24) = v16;
  v46[0] = sub_1B0442378;
  v46[1] = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  result = swift_allocObject();
  *(result + 16) = sub_1B0DA9320;
  *(result + 24) = v18;
  v46[2] = sub_1B0442378;
  v46[3] = result;
  v20 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    swift_retain_n();
    v21 = 0;
    for (i = 0; ; i = 1)
    {
      v43 = v21;
      *(swift_allocObject() + 16) = *&v46[2 * i];
      if (v20 >= a3)
      {
        sub_1B0439BCC();
        v30 = swift_allocError();
        *v32 = a3;
      }

      else
      {
        v23 = *a1;
        v24 = *(a1 + 8);
        v25 = *(a1 + 16);
        v42 = v9;
        v26 = v20;
        v27 = *(a1 + 20);
        v28 = *(a1 + 22);

        v29 = v26;
        sub_1B0DA93A4(a1, v26, a3);
        v30 = v42;
        if (!v42)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          result = swift_arrayDestroy();
          v36 = v56;
          *(a8 + 128) = v55;
          *(a8 + 144) = v36;
          *(a8 + 160) = v57;
          *(a8 + 176) = v58;
          v37 = v52;
          *(a8 + 64) = v51;
          *(a8 + 80) = v37;
          v38 = v54;
          *(a8 + 96) = v53;
          *(a8 + 112) = v38;
          v39 = v48;
          *a8 = v47;
          *(a8 + 16) = v39;
          v40 = v50;
          *(a8 + 32) = v49;
          *(a8 + 48) = v40;
          return result;
        }

        v31 = *a1;

        *a1 = v23;
        *(a1 + 8) = v24;
        *(a1 + 16) = v25;
        *(a1 + 20) = v27;
        *(a1 + 22) = v28;
        v20 = v29;
      }

      swift_willThrow();
      v45 = v30;
      v33 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v45 = v30;
        v34 = v30;
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          swift_arrayDestroy();
        }
      }

      v9 = 0;
      v21 = 1;
      if (v43)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
        swift_arrayDestroy();
        sub_1B0436554();
        swift_allocError();
        *v35 = 0xD000000000000019;
        v35[1] = 0x80000001B0F2FF00;
        v35[2] = 0xD000000000000020;
        v35[3] = 0x80000001B0F2FA10;
        v35[4] = 137;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

double sub_1B0DA6620@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(_OWORD *)@<X2>, uint64_t a4@<X8>)
{
  sub_1B0DA722C(a1, *a2, a2[1], a3, v12);
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

void sub_1B0DA66AC(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{

  sub_1B0E02CB4(a1, a2, a3, a4, a5, a6, a7);
  v18 = v17;
  v20 = v19;
  v22 = v21;

  if (!v8)
  {
    if (!v18)
    {
      v18 = MEMORY[0x1E69E7CC0];
      v20 = 0;
      v22 = 2;
    }

    sub_1B0E08720(a1, a2, a3);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1B0ACE978(v20, v22);
      sub_1B0439BCC();
      swift_allocError();
      *v27 = a3;
      swift_willThrow();
    }

    else
    {
      v33 = v24;
      v34 = v23;
      v25 = *a1;
      v26 = *(a1 + 8);
      v36 = *(a1 + 20);
      v37 = *(a1 + 16);
      v35 = *(a1 + 22);

      sub_1B0436204(a1);

      sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, a1, a2, a3);
      *&v38 = v18;
      *(&v38 + 1) = v20;
      *&v39 = v22;
      *(&v39 + 1) = v34;
      LOBYTE(v40) = v33 & 1 | 0x40;
      sub_1B0D04698(&v38);
      v28 = v47;
      *(a8 + 128) = v46;
      *(a8 + 144) = v28;
      *(a8 + 160) = v48;
      *(a8 + 176) = v49;
      v29 = v43;
      *(a8 + 64) = v42;
      *(a8 + 80) = v29;
      v30 = v45;
      *(a8 + 96) = v44;
      *(a8 + 112) = v30;
      v31 = v39;
      *a8 = v38;
      *(a8 + 16) = v31;
      v32 = v41;
      *(a8 + 32) = v40;
      *(a8 + 48) = v32;
    }
  }
}

uint64_t sub_1B0DA6944@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
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
      sub_1B0439BCC();
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
    sub_1B0436204(result);
    if (v9)
    {
      *v15 = v16;
      *(v15 + 8) = v17;
      *(v15 + 16) = v18;
      *(v15 + 20) = v19;
      *(v15 + 22) = v20;
      return swift_willThrow();
    }

    sub_1B0D8FADC(v15, a2, a3, a4, a5, a6, a7, v56);
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
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v32);
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
    result = sub_1B0D04780(&v32);
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

uint64_t sub_1B0DA6BF4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
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
      sub_1B0439BCC();
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
    sub_1B0436204(result);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    LODWORD(v22[0]) = sub_1B0D9EA70(v9, a2, a3);
    result = sub_1B0D047F8(v22);
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

uint64_t sub_1B0DA6D34@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v21 = a3;
    }

    else
    {
      v12 = result;
      v16 = *result;
      v17 = *(result + 8);
      v38 = *(result + 20);
      v39 = *(result + 16);
      v37 = *(result + 22);

      sub_1B0DFE880(0x5BuLL, 0xE100000000000000, 0, 0, v12, v9, a3);
      if (v8)
      {
        v20 = *v12;

        *v12 = v16;
        *(v12 + 8) = v17;
        *(v12 + 16) = v39;
        *(v12 + 20) = v38;
        *(v12 + 22) = v37;
      }

      else
      {

        sub_1B0E0407C(v12, v9, a3, a4, a5, a6, a7);
        v19 = v18;

        sub_1B0DFE880(0x5DuLL, 0xE100000000000000, 0, 0, v12, v9, a3);

        if (v19)
        {
          v22 = v19;
        }

        else
        {
          v22 = MEMORY[0x1E69E7CC0];
        }

        v23 = *v12;
        v24 = *(v12 + 8);
        v25 = *(v12 + 16);
        v26 = *(v12 + 20);
        v27 = *(v12 + 22);

        sub_1B0436204(v12);

        v28 = sub_1B0DFF3DC(v12, a2, a3, 1);
        if ((v28 & 0x8000000000000000) == 0)
        {
          *&v40[0] = v22;
          *(&v40[0] + 1) = v28;
          result = sub_1B0DA92E8(v40);
          v29 = v40[9];
          *(a8 + 128) = v40[8];
          *(a8 + 144) = v29;
          *(a8 + 160) = v40[10];
          *(a8 + 176) = v41;
          v30 = v40[5];
          *(a8 + 64) = v40[4];
          *(a8 + 80) = v30;
          v31 = v40[7];
          *(a8 + 96) = v40[6];
          *(a8 + 112) = v31;
          v32 = v40[1];
          *a8 = v40[0];
          *(a8 + 16) = v32;
          v33 = v40[3];
          *(a8 + 32) = v40[2];
          *(a8 + 48) = v33;
          return result;
        }

        sub_1B0436554();
        swift_allocError();
        *v34 = 0xD000000000000011;
        v34[1] = 0x80000001B0F2FEE0;
        v34[2] = 0xD000000000000020;
        v34[3] = 0x80000001B0F2FA10;
        v34[4] = 202;
      }
    }

    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DA7028@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
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
      sub_1B0439BCC();
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
      sub_1B0439BCC();
      swift_allocError();
      *v16 = a3;
      goto LABEL_8;
    }

    v14 = *result;

    sub_1B0436204(v7);
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

    sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, v7, v5, a3);
    v22 = sub_1B0DB2720(v7, v5, a3);
    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v7, v5, a3);

    *&v23[0] = v22;
    result = sub_1B0D047E4(v23);
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

uint64_t sub_1B0DA722C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t (*a4)(_OWORD *)@<X3>, uint64_t a5@<X8>)
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
      sub_1B0439BCC();
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
    sub_1B0436204(result);
    if (v5)
    {
      *v10 = v12;
      *(v10 + 8) = v13;
      *(v10 + 16) = v14;
      *(v10 + 20) = v15;
      *(v10 + 22) = v16;
      return swift_willThrow();
    }

    *&v24[0] = sub_1B0DFF3DC(v10, a2, a3, 0);
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

uint64_t sub_1B0DA737C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  v17 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
LABEL_27:
    v10 = sub_1B0DF5BB4((a8 > 1), v14, 1, v10);
    goto LABEL_9;
  }

  v8 = a3;
  if (v17 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v23 = v8;
    return swift_willThrow();
  }

  v12 = a2;
  v9 = a1;
  v71 = a5;
  v76 = a4;
  v72 = a6;
  v73 = a7;
  v70 = a8;
  v18 = *a1;
  v19 = *(a1 + 8);
  v20 = *(a1 + 16);
  v21 = *(a1 + 20);
  v22 = *(a1 + 22);
  sub_1B0436204(a1);
  if (v10)
  {
    *v9 = v18;
    *(v9 + 8) = v19;
    *(v9 + 16) = v20;
    *(v9 + 20) = v21;
    *(v9 + 22) = v22;
    return swift_willThrow();
  }

  sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, v9, v12, v8);
  v11 = 0;

  sub_1B0E03320(v9, v12, v8, v76, v71, v72, v73);
  v15 = v25;
  v27 = v26;
  v29 = v28;

  if (!v15)
  {
    v49 = MEMORY[0x1E69E7CC0];
LABEL_24:
    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v9, v12, v8);

    *&v74[0] = v49;
    result = sub_1B0D04834(v74);
    v55 = v74[9];
    *(v70 + 128) = v74[8];
    *(v70 + 144) = v55;
    *(v70 + 160) = v74[10];
    *(v70 + 176) = v75;
    v56 = v74[5];
    *(v70 + 64) = v74[4];
    *(v70 + 80) = v56;
    v57 = v74[7];
    *(v70 + 96) = v74[6];
    *(v70 + 112) = v57;
    v58 = v74[1];
    *v70 = v74[0];
    *(v70 + 16) = v58;
    v59 = v74[3];
    *(v70 + 32) = v74[2];
    *(v70 + 48) = v59;
    return result;
  }

  v30 = v27;
  v16 = v29;
  v68 = v30;
  v66 = HIDWORD(v30);
  swift_retain_n();
  v10 = sub_1B0DF5BB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v13 = *(v10 + 2);
  a8 = *(v10 + 3);
  v14 = v13 + 1;
  if (v13 >= a8 >> 1)
  {
    goto LABEL_27;
  }

LABEL_9:
  *(v10 + 2) = v14;
  v31 = &v10[24 * v13];
  *(v31 + 4) = v15;
  *(v31 + 10) = v68;
  *(v31 + 11) = v66;
  *(v31 + 12) = v16;
  *(v31 + 26) = WORD2(v16);
  v31[54] = BYTE6(v16);
  v32 = *(v9 + 8);
  v61 = *(v9 + 20);
  v62 = *(v9 + 16);
  v60 = *(v9 + 22);
  v63 = *v9;

  v67 = v17 + 1;
  if (v17 + 1 >= v8)
  {
    v49 = v10;
    sub_1B0439BCC();
    v11 = swift_allocError();
    *v50 = v8;
  }

  else
  {
    v33 = v17 + 2;
    v34 = *v9;
    v35 = *(v9 + 8);
    v36 = *(v9 + 16);
    v37 = *(v9 + 20);
    v38 = *(v9 + 22);
    v64 = v33;
    if (v33 >= v8)
    {
LABEL_19:
      v65 = v38;
      sub_1B0439BCC();
      v11 = swift_allocError();
      *v51 = v8;

      v69 = v10;
    }

    else
    {
      v39 = v10;
      while (1)
      {
        v69 = v39;
        swift_retain_n();
        sub_1B0436204(v9);

        v65 = v38;
        if (v11)
        {
          break;
        }

        sub_1B0DB5B34(v9, v67, v8, v76, v71, v72, v73);
        v11 = 0;
        v41 = v40;
        v43 = v42;
        v45 = v44;

        v39 = v69;
        v47 = *(v69 + 2);
        v46 = *(v69 + 3);
        if (v47 >= v46 >> 1)
        {
          v39 = sub_1B0DF5BB4((v46 > 1), v47 + 1, 1, v69);
        }

        *(v39 + 2) = v47 + 1;
        v48 = &v39[24 * v47];
        *(v48 + 4) = v45;
        *(v48 + 5) = v41;
        *(v48 + 12) = v43;
        *(v48 + 26) = WORD2(v43);
        v48[54] = BYTE6(v43);
        v34 = *v9;
        v35 = *(v9 + 8);
        v36 = *(v9 + 16);
        v37 = *(v9 + 20);
        v38 = *(v9 + 22);
        if (v64 >= v8)
        {
          goto LABEL_19;
        }
      }

      *v9 = v34;
      *(v9 + 8) = v35;
      *(v9 + 16) = v36;
      *(v9 + 20) = v37;
      *(v9 + 22) = v38;
    }

    swift_willThrow();
    v52 = *v9;

    *v9 = v34;
    *(v9 + 8) = v35;
    *(v9 + 16) = v36;
    *(v9 + 20) = v37;
    v49 = v69;
    *(v9 + 22) = v65;
  }

  swift_willThrow();
  v53 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast())
  {

    goto LABEL_24;
  }

  v54 = *v9;

  *v9 = v63;
  *(v9 + 8) = v32;
  *(v9 + 16) = v62;
  *(v9 + 20) = v61;
  *(v9 + 22) = v60;
  swift_willThrow();
}

uint64_t sub_1B0DA7910@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, unint64_t a4@<X7>, uint64_t a5@<X8>)
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
      sub_1B0439BCC();
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
    sub_1B0436204(result);
    if (v5)
    {
      *v10 = v12;
      *(v10 + 8) = v13;
      *(v10 + 16) = v14;
      *(v10 + 20) = v15;
      *(v10 + 22) = v16;
      return swift_willThrow();
    }

    sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, v10, a2, a3);
    v24 = a4;
    v25 = 0uLL;
    LOBYTE(v26) = 0x80;
    result = sub_1B0D04698(&v24);
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

uint64_t sub_1B0DA7A78@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return result;
  }

  if (v9 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v21 = a3;
    return swift_willThrow();
  }

  v12 = result;
  v16 = *result;
  v17 = *(result + 8);
  v40 = *(result + 16);
  v37 = *(result + 22);
  v38 = *(result + 20);

  sub_1B0DFE880(0x5BuLL, 0xE100000000000000, 0, 0, v12, v9, a3);
  if (v8)
  {
    v20 = *v12;

    *v12 = v16;
    *(v12 + 8) = v17;
    *(v12 + 16) = v40;
    *(v12 + 20) = v38;
    *(v12 + 22) = v37;
    return swift_willThrow();
  }

  sub_1B0E0407C(v12, v9, a3, a4, a5, a6, a7);
  v19 = v18;

  sub_1B0DFE880(0x5DuLL, 0xE100000000000000, 0, 0, v12, v9, a3);

  if (v19)
  {
    v22 = v19;
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  sub_1B0E08720(v12, a2, a3);
  v24 = v23;
  v39 = v25;
  v26 = *v12;
  v27 = *(v12 + 8);
  v28 = *(v12 + 16);
  v29 = *(v12 + 20);
  v41 = *(v12 + 22);

  sub_1B0436204(v12);

  sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, v12, a2, a3);
  *&v42 = v22;
  *(&v42 + 1) = v39;
  v43 = v24 & 1;
  LOBYTE(v44) = 0;
  result = sub_1B0D04698(&v42);
  v30 = v51;
  *(a8 + 128) = v50;
  *(a8 + 144) = v30;
  *(a8 + 160) = v52;
  *(a8 + 176) = v53;
  v31 = v47;
  *(a8 + 64) = v46;
  *(a8 + 80) = v31;
  v32 = v49;
  *(a8 + 96) = v48;
  *(a8 + 112) = v32;
  v33 = v43;
  *a8 = v42;
  *(a8 + 16) = v33;
  v34 = v45;
  *(a8 + 32) = v44;
  *(a8 + 48) = v34;
  return result;
}

uint64_t sub_1B0DA7D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B0DA924C;
  *(v18 + 24) = v17;
  v44 = sub_1B0442378;
  v45 = v18;
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B0DA926C;
  *(v20 + 24) = v19;
  v46 = sub_1B0442378;
  v47 = v20;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  result = swift_allocObject();
  *(result + 16) = sub_1B0DA928C;
  *(result + 24) = v21;
  v48 = sub_1B0442378;
  v49 = result;
  v23 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    swift_retain_n();
    v24 = 32;
    while (1)
    {
      *(swift_allocObject() + 16) = *&v43[v24];
      if (v23 >= a3)
      {
        sub_1B0439BCC();
        v9 = swift_allocError();
        *v31 = a3;
      }

      else
      {
        v25 = *a1;
        v26 = *(a1 + 8);
        v41 = *(a1 + 16);
        v27 = a3;
        v28 = *(a1 + 20);
        v29 = *(a1 + 22);

        sub_1B0DA93A4(a1, v23, v27);
        if (!v9)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          result = swift_arrayDestroy();
          v35 = v59;
          *(a8 + 128) = v58;
          *(a8 + 144) = v35;
          *(a8 + 160) = v60;
          *(a8 + 176) = v61;
          v36 = v55;
          *(a8 + 64) = v54;
          *(a8 + 80) = v36;
          v37 = v57;
          *(a8 + 96) = v56;
          *(a8 + 112) = v37;
          v38 = v51;
          *a8 = v50;
          *(a8 + 16) = v38;
          v39 = v53;
          *(a8 + 32) = v52;
          *(a8 + 48) = v39;
          return result;
        }

        v30 = *a1;

        *a1 = v25;
        *(a1 + 8) = v26;
        *(a1 + 16) = v41;
        *(a1 + 20) = v28;
        *(a1 + 22) = v29;
        a3 = v27;
      }

      swift_willThrow();
      v42 = v9;
      v32 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v42 = v9;
        v33 = v9;
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          swift_arrayDestroy();
        }
      }

      v9 = 0;
      v24 += 16;
      if (v24 == 80)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
        swift_arrayDestroy();
        sub_1B0436554();
        swift_allocError();
        *v34 = 0xD000000000000019;
        v34[1] = 0x80000001B0F2FF00;
        v34[2] = 0xD000000000000020;
        v34[3] = 0x80000001B0F2FA10;
        v34[4] = 296;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DA81F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X8>)
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
      sub_1B0439BCC();
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
    sub_1B0436204(result);
    if (v7)
    {
      *v12 = v14;
      *(v12 + 8) = v15;
      *(v12 + 16) = v16;
      *(v12 + 20) = v17;
      *(v12 + 22) = v18;
      return swift_willThrow();
    }

    v20 = sub_1B0DB5DD0(v12, a2, a3, a4, a5, a6);
    v22 = v21;
    v23 = v20;
    swift_beginAccess();
    v24 = *(v23 + 24) + ((v22 >> 24) & 0xFFFF00 | BYTE6(v22));
    v25 = sub_1B0E44C68();
    v27 = v26;

    *&v37[0] = v25;
    *(&v37[0] + 1) = v27;
    result = sub_1B0D0476C(v37);
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

uint64_t sub_1B0DA83A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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
      sub_1B0439BCC();
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
    sub_1B0436204(result);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    v17 = sub_1B0DC0BE0(v9, a2, a3);
    v19 = v18;
    v20 = v17;
    swift_beginAccess();
    v21 = *(v20 + 24) + ((v19 >> 24) & 0xFFFF00 | BYTE6(v19));
    v22 = sub_1B0E44C68();
    v24 = v23;

    *&v31[0] = v22;
    *(&v31[0] + 1) = v24;
    result = sub_1B0D0476C(v31);
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

uint64_t sub_1B0DA8544@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
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
      sub_1B0439BCC();
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
    sub_1B0436204(result);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, v9, a2, a3);
    v17 = sub_1B0DC1D1C(v9, a2, a3);
    v19 = v18;
    v20 = v17;
    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v9, a2, a3);
    *&v26[0] = v20;
    *(&v26[0] + 1) = v19;
    result = sub_1B0DA9238(v26);
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

uint64_t sub_1B0DA86F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B0DA90A8;
  *(v17 + 24) = v16;
  v46[0] = sub_1B0442378;
  v46[1] = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  result = swift_allocObject();
  *(result + 16) = sub_1B0DA90C8;
  *(result + 24) = v18;
  v46[2] = sub_1B0442378;
  v46[3] = result;
  v20 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    swift_retain_n();
    v21 = 0;
    for (i = 0; ; i = 1)
    {
      v43 = v21;
      *(swift_allocObject() + 16) = *&v46[2 * i];
      if (v20 >= a3)
      {
        sub_1B0439BCC();
        v30 = swift_allocError();
        *v32 = a3;
      }

      else
      {
        v23 = *a1;
        v24 = *(a1 + 8);
        v25 = *(a1 + 16);
        v42 = v9;
        v26 = v20;
        v27 = *(a1 + 20);
        v28 = *(a1 + 22);

        v29 = v26;
        sub_1B043D890(a1, v26, a3);
        v30 = v42;
        if (!v42)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          result = swift_arrayDestroy();
          v36 = v56;
          *(a8 + 128) = v55;
          *(a8 + 144) = v36;
          *(a8 + 160) = v57;
          *(a8 + 176) = v58;
          v37 = v52;
          *(a8 + 64) = v51;
          *(a8 + 80) = v37;
          v38 = v54;
          *(a8 + 96) = v53;
          *(a8 + 112) = v38;
          v39 = v48;
          *a8 = v47;
          *(a8 + 16) = v39;
          v40 = v50;
          *(a8 + 32) = v49;
          *(a8 + 48) = v40;
          return result;
        }

        v31 = *a1;

        *a1 = v23;
        *(a1 + 8) = v24;
        *(a1 + 16) = v25;
        *(a1 + 20) = v27;
        *(a1 + 22) = v28;
        v20 = v29;
      }

      swift_willThrow();
      v45 = v30;
      v33 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v45 = v30;
        v34 = v30;
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          swift_arrayDestroy();
        }
      }

      v9 = 0;
      v21 = 1;
      if (v43)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
        swift_arrayDestroy();
        sub_1B0436554();
        swift_allocError();
        *v35 = 0xD000000000000019;
        v35[1] = 0x80000001B0F2FF00;
        v35[2] = 0xD000000000000020;
        v35[3] = 0x80000001B0F2FA10;
        v35[4] = 338;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DA8B68@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
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
      sub_1B0439BCC();
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
    sub_1B0436204(result);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, v9, a2, a3);
    v17 = sub_1B0DC1D1C(v9, a2, a3);
    v19 = v18;
    v20 = v17;
    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v9, a2, a3);
    *&v26[0] = v20;
    *(&v26[0] + 1) = v19;
    result = sub_1B0DA90FC(v26);
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

uint64_t sub_1B0DA8D14@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t (*a4)(_OWORD *)@<X7>, uint64_t a5@<X8>)
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
      sub_1B0439BCC();
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
    sub_1B0436204(result);
    if (v5)
    {
      *v10 = v12;
      *(v10 + 8) = v13;
      *(v10 + 16) = v14;
      *(v10 + 20) = v15;
      *(v10 + 22) = v16;
      return swift_willThrow();
    }

    sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, v10, a2, a3);
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

uint64_t sub_1B0DA8EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_1B0DA5E4C(a1, a2, a3, a4);
}

uint64_t sub_1B0DA8ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_1B0DA5FA8(a1, a2, a3, a4);
}

uint64_t sub_1B0DA8F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_1B0DA6BF4(a1, a2, a3, a4);
}

uint64_t sub_1B0DA8F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_1B0DA7028(a1, a2, a3, a4);
}

uint64_t sub_1B0DA8FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_1B0DA7910(a1, a2, a3, 1uLL, a4);
}

uint64_t sub_1B0DA8FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_1B0DA7910(a1, a2, a3, 2uLL, a4);
}

uint64_t sub_1B0DA9040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_1B0DA8544(a1, a2, a3, a4);
}

uint64_t sub_1B0DA90A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_1B0DA8B68(a1, a2, a3, a4);
}

uint64_t sub_1B0DA90C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_1B0DA8D14(a1, a2, a3, sub_1B0DA90FC, a4);
}

unint64_t sub_1B0DA9124(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1B0E466A8();

    for (i = (a1 + 48); ; i += 2)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v15 = *i;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      result = sub_1B0441038(v7, v8);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B0DA926C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_1B0DA83A8(a1, a2, a3, a4);
}

uint64_t sub_1B0DA928C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_1B0DA8D14(a1, a2, a3, sub_1B0D0476C, a4);
}

uint64_t sub_1B0DA9340(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, *a2, a2[1]);
}

void sub_1B0DA93BC(unint64_t a1, uint64_t a2, int64_t a3)
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
      sub_1B0439BCC();
      v12 = swift_allocError();
      *v14 = a3;
    }

    else
    {
      v7 = *a1;
      v8 = *(a1 + 8);
      v9 = *(a1 + 16);
      v10 = *(a1 + 20);
      v11 = *(a1 + 22);

      sub_1B0D9F404(a1, v4, a3);
      v12 = v3;
      if (!v3)
      {
        sub_1B0DFE880(0x3AuLL, 0xE100000000000000, 0, 0, a1, v4, a3);
        sub_1B0D9F404(a1, v4, a3);

        return;
      }

      v13 = *a1;

      *a1 = v7;
      *(a1 + 8) = v8;
      *(a1 + 16) = v9;
      *(a1 + 20) = v10;
      *(a1 + 22) = v11;
    }

    swift_willThrow();
    v23 = v12;
    v15 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v23 = v12;
      v16 = v12;
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }
    }

    if (v4 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v22 = a3;
      swift_willThrow();
    }

    else
    {
      v17 = *a1;
      v18 = *(a1 + 8);
      v19 = *(a1 + 16);
      v20 = *(a1 + 20);
      v21 = *(a1 + 22);

      sub_1B0DFE880(0x2DuLL, 0xE100000000000000, 0, 0, a1, v4, a3);
      sub_1B0D9F404(a1, v4, a3);
      sub_1B0DFE880(0x2D3AuLL, 0xE200000000000000, 0, 0, a1, v4, a3);
      sub_1B0D9F404(a1, v4, a3);
    }
  }
}

void sub_1B0DA97A0(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(uint64_t, uint64_t, int64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11)
{
  v12 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v15 = a9;
    v16 = a11;
    if (v12 >= a3)
    {
      sub_1B0439BCC();
      v24 = swift_allocError();
      *v26 = a3;
    }

    else
    {
      v18 = *(a1 + 8);
      v40 = *(a1 + 20);
      v41 = *(a1 + 16);
      v39 = *(a1 + 22);
      v42 = *a1;

      a8(a1, v12, a3, a4, a5, a6, a7);
      v24 = v11;
      if (!v11)
      {
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(a10, a11);
        (*(*(v37 - 8) + 56))(a9, 0, 1, v37);
LABEL_15:

        return;
      }

      v25 = *a1;

      *a1 = v42;
      *(a1 + 8) = v18;
      *(a1 + 16) = v41;
      *(a1 + 20) = v40;
      *(a1 + 22) = v39;
      v15 = a9;
      v16 = a11;
    }

    swift_willThrow();
    v43 = v24;
    v27 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v43 = v24;
      v28 = v24;
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }
    }

    if (v12 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v36 = a3;
      swift_willThrow();
      return;
    }

    v29 = *a1;
    v30 = *(a1 + 8);
    v31 = *(a1 + 16);
    v32 = *(a1 + 20);
    v33 = v12;
    v34 = a3;
    v35 = *(a1 + 22);

    sub_1B0DFE880(0x24uLL, 0xE100000000000000, 0, 0, a1, v33, v34);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(a10, v16);
    (*(*(v38 - 8) + 56))(v15, 1, 1, v38);
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_1B0DA9AF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return result;
  }

  if (v10 >= a3)
  {
    sub_1B0439BCC();
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

  if ((v23 & 0x100000000) != 0)
  {
    v24 = v26;
  }

  else
  {
    v24 = v24;
  }

  if ((v23 & 0x100000000) != 0)
  {
    v25 = v26;
  }

  else
  {
    v25 = v25;
  }

  return v24 | (v25 << 32);
}

uint64_t sub_1B0DA9CA8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
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
      sub_1B0439BCC();
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
        sub_1B0439BCC();
        swift_allocError();
        *v20 = a3;
      }

      else
      {

        sub_1B0DF9D90(v11, &v31);
        if (!v8)
        {
          v23 = sub_1B0DFF2E8(v31, v32, v33 | (WORD2(v33) << 32) | (BYTE6(v33) << 48), 0xD000000000000020, 0x80000001B0F2FA10, 2610);
          v18 = v17;

          sub_1B0436204(v11);

          sub_1B0441D28(v11, v9 + 1, a3, a4, a5, a6, a7, sub_1B0E31030, &v31, 130);

          v22 = v31;
          v21 = v32;
          v28 = v33;
          v30 = v34;
          sub_1B0448078(v11, v9, a3);

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

uint64_t sub_1B0DA9F98(unint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v16 = *(*(v15 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v36 - v18;
  v20 = __OFADD__(a2, 1);
  v21 = a2 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    if (v21 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v26 = a3;
      return swift_willThrow();
    }

    v37 = a6;
    v38 = a7;
    v22 = *a1;
    v23 = *(a1 + 8);
    v24 = *(a1 + 16);
    v40 = *(a1 + 20);
    v41 = v24;
    v25 = v21 + 1;
    v39 = *(a1 + 22);
    v42 = v22;
    if (v21 + 1 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v27 = a3;
      goto LABEL_8;
    }

    sub_1B0436204(a1);
    if (v7)
    {

LABEL_8:
      swift_willThrow();
      *a1 = v42;
      *(a1 + 8) = v23;
      v28 = v40;
      *(a1 + 16) = v41;
      *(a1 + 20) = v28;
      *(a1 + 22) = v39;
      return swift_willThrow();
    }

    v29 = sub_1B0DB39E8(a1, v21, a3);
    v30 = *a1;
    v31 = v29;
    sub_1B0436204(a1);

    sub_1B0DB2F1C(a1, v25, a3, a4, a5, v37, v38, v19);

    v32 = type metadata accessor for ResponseCodeAppend();
    v33 = swift_allocBox();
    v35 = v34;
    sub_1B03C60A4(v19, v34 + *(v32 + 20), &unk_1EB6E26C0, &unk_1B0E9DE10);
    *v35 = v31;
    return v33 | 0x3000000000000004;
  }

  return result;
}

uint64_t sub_1B0DAA234(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
      sub_1B0439BCC();
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
      sub_1B0439BCC();
      swift_allocError();
      *v18 = a3;
      goto LABEL_8;
    }

    sub_1B0436204(v10);
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

    v19 = sub_1B0DB39E8(v10, v8, a3);
    v20 = *v10;
    v25 = v19;
    sub_1B0436204(v10);

    sub_1B0DB363C(v10, v15, a3, a4, a5, a6, a7, &v30);

    v24 = v30;
    v21 = *v10;
    sub_1B0436204(v10);

    sub_1B0DB363C(v10, v15, a3, a4, a5, a6, a7, &v30);

    v22 = v30;
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = v24;
    *(v23 + 32) = v22;
    return v23 | 0x4000000000000000;
  }

  return result;
}

uint64_t sub_1B0DAA4C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
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
      sub_1B0439BCC();
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

      sub_1B0DFE880(0x494C494241504143uLL, 0xEA00000000005954, 0, 0, v12, v9, a3);
      if (!v8)
      {
        v24 = MEMORY[0x1E69E7CC0];

        sub_1B0E06504(v12, &v24, v9, a3, a4, a5, a6, a7);

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

unint64_t sub_1B0DAA68C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, unint64_t *a5@<X8>)
{
  result = sub_1B044262C(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    type metadata accessor for ResponsePayload();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_1B0DAA6D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
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

      sub_1B0DFE880(0x2041544F5551uLL, 0xE600000000000000, 0, 0, v15, v9, a3);
      if (v8)
      {
        v21 = *v15;
      }

      else
      {
        v18 = sub_1B0DB3AC0(v15, v9, a3, a4, a5, a6, a7);
        v29 = v18;
        v23 = v9 + 1;
        if (v23 < a3)
        {
          v27 = v20;
          v28 = *v15;
          v26 = v19;
          sub_1B0436204(v15);

          sub_1B0DACE0C(v15, v23, a3, a4, &v34);

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

        sub_1B0439BCC();
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

uint64_t sub_1B0DAA950@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
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

      sub_1B0DFE880(0x4F4F5241544F5551uLL, 0xEA00000000002054, 0, 0, v15, v9, a3);
      if (v8)
      {
        v19 = *v15;
      }

      else
      {
        v18 = sub_1B0DB3AC0(v15, v9, a3, a4, a5, a6, a7);
        v39 = HIDWORD(v21);
        v42 = v18;
        v34 = v22;
        v36 = v21;
        swift_beginAccess();
        v23 = v39 - v36;
        if (v39 == v36)
        {
          v24 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v40 = *(v42 + 24);
          v37 = ((v34 >> 24) & 0xFFFF00 | BYTE6(v34)) + v36;
          __n = v23;
          v35 = sub_1B0C0C9F0(v23, 0);
          memcpy(v35 + 4, (v40 + v37), __n);
          v24 = v35;
        }

        v41 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v24);
        v38 = v25;

        if (v9 + 1 < a3)
        {
          v43 = *v15;

          sub_1B0436204(v15);

          v28 = sub_1B0DB3AC0(v15, v9, a3, a4, a5, a6, a7);
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

        sub_1B0439BCC();
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

uint64_t sub_1B0DAAC84(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
      sub_1B0439BCC();
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
    sub_1B0436204(result);
    if (v7)
    {
      *v12 = v14;
      *(v12 + 8) = v15;
      *(v12 + 16) = v16;
      *(v12 + 20) = v17;
      *(v12 + 22) = v18;
      return swift_willThrow();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7440, &unk_1B0EF3200);
    v20 = swift_allocBox();
    sub_1B0DA97A0(v12, a2, a3, a4, a5, a6, a7, sub_1B0DAD7D8, v21, &qword_1EB6E7430, &qword_1B0EFBC90);
    return v20 | 0x5000000000000000;
  }

  return result;
}

uint64_t sub_1B0DAADF0(uint64_t result, uint64_t a2, int64_t a3)
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
      sub_1B0439BCC();
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
    sub_1B0436204(result);
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
    *(v15 + 16) = sub_1B0DB2720(v8, a2, a3);
    return v15 | 0x5000000000000004;
  }

  return result;
}

uint64_t sub_1B0DAAF14(uint64_t result, uint64_t a2, int64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
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
      sub_1B0439BCC();
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
    sub_1B0436204(result);
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
    sub_1B0DB5F1C(v12, a2, a3, a4, a5, a6, a7, v32);
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

uint64_t sub_1B0DAB0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  v15 = sub_1B0E00F90(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
    v17 = v15;

    goto LABEL_5;
  }

  v16 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast())
  {

    v17 = MEMORY[0x1E69E7CC0];
LABEL_5:
    result = swift_allocObject();
    *(result + 16) = v17;
    return result;
  }
}

uint64_t sub_1B0DAB204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, char **a5@<X8>)
{
  v8 = a2;
  v9 = a1;
  result = sub_1B0DFE880(0x2820uLL, 0xE200000000000000, 0, 0, a1, a2, a3);
  if (!v5)
  {
    v53 = a5;
    v12 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E37F8, &qword_1B0EA2E00);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B0EC1E70;
    result = sub_1B0DB60AC(v9, v8, a3, v12);
    v51 = v12;
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
        sub_1B0439BCC();
        swift_allocError();
        *v31 = a3;
      }

      else
      {
        v17 = *(v9 + 8);
        v41 = *(v9 + 20);
        v42 = *(v9 + 16);
        v40 = *(v9 + 22);
        v43 = *v9;

        v49 = v8 + 2;
        v50 = v9;
        if (v8 + 2 >= a3)
        {
          sub_1B0439BCC();
          v32 = swift_allocError();
          *v33 = a3;
          v34 = v43;
        }

        else
        {
          v18 = v8 + 3;
          v19 = *v9;
          v20 = *(v9 + 8);
          v47 = *(v9 + 20);
          v48 = *(v9 + 16);
          v46 = *(v9 + 22);
          if (v8 + 3 < v16)
          {
            v21 = v15;
            v44 = v15;
            v45 = v8;
            do
            {
              v52 = v21;
              swift_retain_n();
              sub_1B0436204(v9);

              v22 = v9;
              v23 = v16;
              v24 = sub_1B0DB60AC(v22, v49, v16, v51);
              v26 = v25;

              v21 = v52;
              v28 = *(v52 + 2);
              v27 = *(v52 + 3);
              if (v28 >= v27 >> 1)
              {
                v21 = sub_1B0AFF0E8((v27 > 1), v28 + 1, 1, v52);
              }

              *(v21 + 2) = v28 + 1;
              v29 = &v21[16 * v28];
              *(v29 + 4) = v24;
              *(v29 + 5) = v26;
              v19 = *v50;
              v20 = *(v50 + 8);
              v47 = *(v50 + 20);
              v48 = *(v50 + 16);
              v46 = *(v50 + 22);
              v16 = v23;
              v30 = v18 < v23;
              v15 = v44;
              v8 = v45;
              v9 = v50;
            }

            while (v30);
          }

          sub_1B0439BCC();
          v35 = swift_allocError();
          *v36 = v16;

          swift_willThrow();
          v34 = v43;
          v37 = *v9;

          *v9 = v19;
          *(v9 + 8) = v20;
          *(v9 + 16) = v48;
          *(v9 + 20) = v47;
          *(v9 + 22) = v46;
          v32 = v35;
        }

        swift_willThrow();
        v38 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
        if (swift_dynamicCast())
        {

          result = sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v50, v8, v16);
          *v53 = v15;
          return result;
        }

        v39 = *v50;

        *v50 = v34;
        *(v50 + 8) = v17;
        *(v50 + 16) = v42;
        *(v50 + 20) = v41;
        *(v50 + 22) = v40;
      }

      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B0DAB6A8(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
      sub_1B0439BCC();
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
    sub_1B0436204(result);
    if (v7)
    {
      *v12 = v14;
      *(v12 + 8) = v15;
      *(v12 + 16) = v16;
      *(v12 + 20) = v17;
      *(v12 + 22) = v18;
      return swift_willThrow();
    }

    sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, v12, a2, a3);

    sub_1B0E035A4(v12, a2, a3, a4, a5, a6, a7);
    v21 = v20;

    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v12, a2, a3);
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E7CC0];
    if (v21)
    {
      v23 = v21;
    }

    *(v22 + 16) = v23;
    return v22 | 0x1000000000000000;
  }

  return result;
}

void sub_1B0DAB85C(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D98, &unk_1B0EF9F00);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B0EC1E70;
  sub_1B0DB6448(a1, a2, a3, a4, a5, a6, a7);
  if (v8)
  {
    *(v16 + 16) = 0;

    return;
  }

  v58 = a1;
  v19 = a8;
  v56 = a4;
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v36 = a3;
    }

    else
    {
      v20 = *(v58 + 8);
      v47 = *(v58 + 20);
      v48 = *(v58 + 16);
      v46 = *(v58 + 22);
      v49 = *v58;

      v55 = a2 + 2;
      if (a2 + 2 >= a3)
      {
        sub_1B0439BCC();
        v37 = swift_allocError();
        *v38 = a3;
        v39 = v49;
        v40 = v48;
      }

      else
      {
        v51 = a5;
        v21 = a2 + 3;
        v22 = *v58;
        v23 = *(v58 + 8);
        v53 = *(v58 + 20);
        v54 = *(v58 + 16);
        v52 = *(v58 + 22);
        if (a2 + 3 < a3)
        {
          v24 = v58;
          v25 = v16;
          v50 = a7;
          do
          {
            v57 = v25;
            swift_retain_n();
            sub_1B0436204(v24);

            v26 = v16;
            v27 = a3;
            v28 = a6;
            sub_1B0DB6448(v24, v55, a3, v56, v51, a6, a7);
            v30 = v29;
            v32 = v31;

            v25 = v57;
            v34 = *(v57 + 2);
            v33 = *(v57 + 3);
            if (v34 >= v33 >> 1)
            {
              v25 = sub_1B0DF5D00((v33 > 1), v34 + 1, 1, v57);
            }

            *(v25 + 2) = v34 + 1;
            v35 = &v25[16 * v34];
            *(v35 + 4) = v30;
            *(v35 + 5) = v32;
            v24 = v58;
            v22 = *v58;
            v23 = *(v58 + 8);
            v53 = *(v58 + 20);
            v54 = *(v58 + 16);
            v52 = *(v58 + 22);
            a3 = v27;
            a7 = v50;
            a6 = v28;
            v16 = v26;
          }

          while (v21 < v27);
        }

        v41 = v22;
        sub_1B0439BCC();
        v37 = swift_allocError();
        *v42 = a3;

        swift_willThrow();
        v39 = v49;
        v43 = *v58;

        *v58 = v41;
        *(v58 + 8) = v23;
        *(v58 + 16) = v54;
        *(v58 + 20) = v53;
        *(v58 + 22) = v52;
        v40 = v48;
        v19 = a8;
      }

      swift_willThrow();
      v44 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {

        *v19 = v16;
        return;
      }

      v45 = *v58;

      *v58 = v39;
      *(v58 + 8) = v20;
      *(v58 + 16) = v40;
      *(v58 + 20) = v47;
      *(v58 + 22) = v46;
    }

    swift_willThrow();
  }
}

uint64_t sub_1B0DABC94(uint64_t result, uint64_t a2, int64_t a3)
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
      sub_1B0439BCC();
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
    sub_1B0436204(result);
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
    *(v15 + 16) = sub_1B0D9EA70(v8, a2, a3);
    return v15 | 0x1000000000000004;
  }

  return result;
}

uint64_t sub_1B0DABDB8(uint64_t result, uint64_t a2, int64_t a3)
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
      sub_1B0439BCC();
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
    sub_1B0436204(result);
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
    *(v15 + 16) = sub_1B0DB39E8(v8, a2, a3);
    return v15 | 0x2000000000000000;
  }

  return result;
}

uint64_t sub_1B0DABED4(uint64_t result, uint64_t a2, int64_t a3)
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
      sub_1B0439BCC();
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
    sub_1B0436204(result);
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
    *(v15 + 16) = sub_1B0D9F404(v8, a2, a3);
    return v15 | 0x2000000000000004;
  }

  return result;
}

uint64_t sub_1B0DABFF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = __OFADD__(a2, 1);
  v10 = a2 + 1;
  if (!v9)
  {
    v11 = a3;
    if (v10 >= a3)
    {
      sub_1B0439BCC();
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
      sub_1B0436204(result);
      if (!v7)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E75E0, &qword_1B0EF5008);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B0EC4E20;
        v22 = swift_allocObject();
        v23 = a4;
        v22[2] = a4;
        v22[3] = a5;
        v22[4] = a6;
        v22[5] = a7;
        v24 = swift_allocObject();
        *(v24 + 16) = sub_1B0DAF9B8;
        *(v24 + 24) = v22;
        *(inited + 32) = sub_1B0DAFD90;
        *(inited + 40) = v24;
        v25 = swift_allocObject();
        v25[2] = v23;
        v25[3] = a5;
        v25[4] = a6;
        v25[5] = a7;
        v26 = swift_allocObject();
        *(v26 + 16) = sub_1B0DAF9D8;
        *(v26 + 24) = v25;
        *(inited + 48) = sub_1B0DAFD90;
        *(inited + 56) = v26;
        *(inited + 64) = sub_1B0DAC69C;
        *(inited + 72) = 0;
        *(inited + 80) = sub_1B0DAC6F4;
        *(inited + 88) = 0;
        swift_retain_n();
        v11 = sub_1B0440090(inited, v12, v28, v11, 0xD000000000000020, 0x80000001B0F2FA10, 334);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
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

uint64_t sub_1B0DAC28C(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_1B0DFE880(0x52544E45474E4F4CuLL, 0xEC00000020534549, 0, 0, a1, a2, a3);
  if (!v3)
  {
    v8 = sub_1B0DFF3DC(a1, a2, a3, 1);
    if ((v8 & 0x8000000000000000) != 0)
    {
      sub_1B0436554();
      swift_allocError();
      *v11 = 0xD000000000000011;
      v11[1] = 0x80000001B0F2FEE0;
      v11[2] = 0xD000000000000020;
      v11[3] = 0x80000001B0F2FA10;
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

uint64_t sub_1B0DAC3AC(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_1B0DFE880(0x20455A495358414DuLL, 0xE800000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    v8 = sub_1B0DFF3DC(a1, a2, a3, 1);
    if ((v8 & 0x8000000000000000) != 0)
    {
      sub_1B0436554();
      swift_allocError();
      *v11 = 0xD000000000000011;
      v11[1] = 0x80000001B0F2FEE0;
      v11[2] = 0xD000000000000020;
      v11[3] = 0x80000001B0F2FA10;
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

uint64_t sub_1B0DAC69C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = sub_1B0DFE880(0x594E414D4F4F54uLL, 0xE700000000000000, 0, 0, a1, *a2, a2[1]);
  if (!v3)
  {
    *a3 = 0x800000000000005CLL;
  }

  return result;
}

uint64_t sub_1B0DAC6F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = sub_1B0DFE880(0x5441564952504F4EuLL, 0xE900000000000045, 0, 0, a1, *a2, a2[1]);
  if (!v3)
  {
    *a3 = 0x8000000000000064;
  }

  return result;
}

uint64_t sub_1B0DAC750(uint64_t result, uint64_t a2, int64_t a3)
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
      sub_1B0439BCC();
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
    sub_1B0436204(result);
    if (v3)
    {
      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    sub_1B0DFE880(0x4C414E5245544E49uLL, 0xE800000000000000, 0, 0, v8, a2, a3);
    v17 = MEMORY[0x1E69E7CC0];
    sub_1B0E04FB8(v8, &v17, a2, a3);
    v15 = v17;
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    return v16 | 0x7000000000000000;
  }

  return result;
}

uint64_t sub_1B0DAC8AC(uint64_t a1, uint64_t a2, int64_t a3)
{
  v7 = swift_allocObject();
  v8 = sub_1B043E71C(a1, a2, a3);
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

unint64_t sub_1B0DAC970(unint64_t result, uint64_t a2, int64_t a3)
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
      sub_1B0439BCC();
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
    sub_1B0436204(result);
    if (v3)
    {
      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, v8, a2, a3);
    v15 = sub_1B0DC1D1C(v8, a2, a3);
    v17 = v16;
    v18 = v15;
    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v8, a2, a3);
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v17;
    return v19 | 0x8000000000000000;
  }

  return result;
}

unint64_t sub_1B0DACAE0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
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
      sub_1B0439BCC();
      swift_allocError();
      *v16 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v26 = a2;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 20);
    v15 = *(result + 22);
    sub_1B0441264(result, v27);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    v17 = sub_1B0DFF2E8(v27[0], v27[1], v28 | (v29 << 32) | (v30 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 115);
    v18 = a4(v17);
    v20 = v19;

    sub_1B0DF8A78(v9, v26, a3);
    v22 = v21;
    v24 = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = v18;
    *(v25 + 24) = v20;
    *(v25 + 32) = v22;
    *(v25 + 40) = v24;
    return v25 | 0x4000000000000004;
  }

  return result;
}

uint64_t sub_1B0DACC9C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
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
      sub_1B0436204(result);
      if (!v4)
      {
        v13 = *v6;
        v14 = *(v6 + 8);
        v15 = *(v6 + 16);
        v16 = *(v6 + 20);
        v17 = *(v6 + 22);
        sub_1B0DFA8F8(v6, v22);
        v19 = sub_1B0DFF2E8(v22[0], v22[1], v23 | (v24 << 32) | (v25 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 379);
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

uint64_t sub_1B0DACE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, char **a5@<X8>)
{
  v7 = a3;
  v9 = a1;
  result = sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v5)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      v42 = a4;
      v39 = a2;
      v40 = a5;
      v45 = a2 + 1;
      v12 = MEMORY[0x1E69E7CC0];
      v43 = v9;
      v44 = v7;
      v41 = a2 + 2;
      while (1)
      {
        if (v45 >= v7)
        {
          sub_1B0439BCC();
          v34 = swift_allocError();
          *v35 = v7;
          v12 = MEMORY[0x1E69E7CC0];
          goto LABEL_13;
        }

        v13 = *v9;
        v14 = *(v9 + 8);
        v15 = *(v9 + 16);
        v16 = *(v9 + 20);
        v17 = v9;
        v18 = *(v9 + 22);

        v19 = sub_1B0DAFA18(v17, v45, v7, v42);
        v21 = v20;
        v23 = v22;
        v25 = v24;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1B0DF5E28(0, *(v12 + 2) + 1, 1, v12);
        }

        v27 = *(v12 + 2);
        v26 = *(v12 + 3);
        if (v27 >= v26 >> 1)
        {
          v12 = sub_1B0DF5E28((v26 > 1), v27 + 1, 1, v12);
        }

        *(v12 + 2) = v27 + 1;
        v28 = &v12[32 * v27];
        *(v28 + 4) = v19;
        *(v28 + 5) = v25;
        *(v28 + 6) = v21;
        *(v28 + 7) = v23;
        v9 = v43;
        v7 = v44;
        v29 = *v43;
        v30 = *(v43 + 8);
        v31 = *(v43 + 16);
        v32 = *(v43 + 20);
        v33 = *(v43 + 22);
        if (v41 >= v44)
        {
          break;
        }

        sub_1B0436204(v43);
      }

      sub_1B0439BCC();
      v36 = swift_allocError();
      *v37 = v44;
      v34 = v36;
      swift_willThrow();
      *v43 = v29;
      *(v43 + 8) = v30;
      *(v43 + 16) = v31;
      *(v43 + 20) = v32;
      *(v43 + 22) = v33;
LABEL_13:
      swift_willThrow();
      v38 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {

        result = sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v9, v39, v7);
        *v40 = v12;
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1B0DAD134@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v74 = a6;
  v75 = a7;
  v70 = a8;
  v77 = *MEMORY[0x1E69E9840];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v68 = *(v69 - 8);
  v13 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v65 = &v59[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4038, &qword_1B0EC2B08);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v66 = &v59[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4030, &qword_1B0EC2B00);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v64 = &v59[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v59[-v22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E75F8, &unk_1B0EF5020);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC1E70;
  v67 = a2;
  v25 = v73;
  v26 = sub_1B0DAE728(a1, a2, a3, a4, a5, v74, v75);
  if (v25)
  {
    *(inited + 16) = 0;

    goto LABEL_15;
  }

  v71 = a4;
  v72 = a5;
  v73 = a3;
  v63 = v23;
  v28 = v69;
  v29 = v70;
  v30 = v68;
  *(inited + 32) = v26;
  if (__OFADD__(v67, 1))
  {
    __break(1u);
  }

  v31 = v73;
  if (v67 + 1 >= v73)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v44 = v31;
LABEL_14:
    swift_willThrow();

    goto LABEL_15;
  }

  v32 = *a1;
  v33 = *(a1 + 8);
  v62 = *(a1 + 16);
  v61 = *(a1 + 20);
  v34 = v67 + 2;
  v60 = *(a1 + 22);
  v67 = v32;

  if (v34 < v31)
  {
    while (1)
    {
      v35 = v75;
      v36 = *a1;
      v37 = *(a1 + 8);
      v38 = *(a1 + 16);
      v39 = *(a1 + 20);
      v40 = *(a1 + 22);

      v41 = sub_1B0DAECE8(a1, v34, v31, v71, v72, v74, v35);

      v43 = *(inited + 16);
      v42 = *(inited + 24);
      if (v43 >= v42 >> 1)
      {
        inited = sub_1B0DF57BC((v42 > 1), v43 + 1, 1, inited);
      }

      *(inited + 16) = v43 + 1;
      *(inited + 8 * v43 + 32) = v41;
      v31 = v73;
    }
  }

  sub_1B0439BCC();
  v45 = swift_allocError();
  *v46 = v31;
  v47 = v29;
  v48 = v63;
  v49 = v66;
  swift_willThrow();
  v76 = v45;
  v50 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  v51 = swift_dynamicCast();
  v52 = v65;
  if (!v51)
  {

    v56 = *a1;

    *a1 = v67;
    *(a1 + 8) = v33;
    *(a1 + 16) = v62;
    *(a1 + 20) = v61;
    *(a1 + 22) = v60;
    goto LABEL_14;
  }

  sub_1B0DAF2FC(inited);
  v53 = v64;
  v54 = sub_1B03B5C80(v48, v64, &qword_1EB6E4030, &qword_1B0EC2B00);
  if (sub_1B0D73474(v54) <= 0)
  {
    sub_1B0398EFC(v53, &qword_1EB6E4030, &qword_1B0EC2B00);
    v55 = 1;
  }

  else
  {
    sub_1B03C60A4(v53, v52, &qword_1EB6E4030, &qword_1B0EC2B00);
    sub_1B03C60A4(v52, v49, &qword_1EB6E4040, &qword_1B0EC2B10);
    v55 = 0;
  }

  (*(v30 + 56))(v49, v55, 1, v28);
  if ((*(v30 + 48))(v49, 1, v28) == 1)
  {
    sub_1B0398EFC(v49, &qword_1EB6E4038, &qword_1B0EC2B08);
    sub_1B0436554();
    swift_allocError();
    *v58 = 0xD000000000000016;
    v58[1] = 0x80000001B0F300D0;
    v58[2] = 0xD000000000000020;
    v58[3] = 0x80000001B0F2FA10;
    v58[4] = 125;
    swift_willThrow();
    result = sub_1B0398EFC(v48, &qword_1EB6E4030, &qword_1B0EC2B00);
  }

  else
  {
    sub_1B0398EFC(v48, &qword_1EB6E4030, &qword_1B0EC2B00);
    result = sub_1B03C60A4(v49, v47, &qword_1EB6E4040, &qword_1B0EC2B10);
  }

LABEL_15:
  v57 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0DAD7D8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v74 = a6;
  v75 = a7;
  v70 = a8;
  v77 = *MEMORY[0x1E69E9840];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7430, &qword_1B0EFBC90);
  v68 = *(v69 - 8);
  v13 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v65 = &v59[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E75E8, &qword_1B0EF5010);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v66 = &v59[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7438, &qword_1B0EFBF30);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v64 = &v59[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v59[-v22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E75F0, &qword_1B0EF5018);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC1E70;
  v67 = a2;
  v25 = v73;
  v26 = sub_1B0DAEA08(a1, a2, a3, a4, a5, v74, v75);
  if (v25)
  {
    *(inited + 16) = 0;

    goto LABEL_15;
  }

  v71 = a4;
  v72 = a5;
  v73 = a3;
  v63 = v23;
  v28 = v69;
  v29 = v70;
  v30 = v68;
  *(inited + 32) = v26;
  if (__OFADD__(v67, 1))
  {
    __break(1u);
  }

  v31 = v73;
  if (v67 + 1 >= v73)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v44 = v31;
LABEL_14:
    swift_willThrow();

    goto LABEL_15;
  }

  v32 = *a1;
  v33 = *(a1 + 8);
  v62 = *(a1 + 16);
  v61 = *(a1 + 20);
  v34 = v67 + 2;
  v60 = *(a1 + 22);
  v67 = v32;

  if (v34 < v31)
  {
    while (1)
    {
      v35 = v75;
      v36 = *a1;
      v37 = *(a1 + 8);
      v38 = *(a1 + 16);
      v39 = *(a1 + 20);
      v40 = *(a1 + 22);

      v41 = sub_1B0DAEFF0(a1, v34, v31, v71, v72, v74, v35);

      v43 = *(inited + 16);
      v42 = *(inited + 24);
      if (v43 >= v42 >> 1)
      {
        inited = sub_1B0DF5CEC((v42 > 1), v43 + 1, 1, inited);
      }

      *(inited + 16) = v43 + 1;
      *(inited + 8 * v43 + 32) = v41;
      v31 = v73;
    }
  }

  sub_1B0439BCC();
  v45 = swift_allocError();
  *v46 = v31;
  v47 = v29;
  v48 = v63;
  v49 = v66;
  swift_willThrow();
  v76 = v45;
  v50 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  v51 = swift_dynamicCast();
  v52 = v65;
  if (!v51)
  {

    v56 = *a1;

    *a1 = v67;
    *(a1 + 8) = v33;
    *(a1 + 16) = v62;
    *(a1 + 20) = v61;
    *(a1 + 22) = v60;
    goto LABEL_14;
  }

  sub_1B0DAF2FC(inited);
  v53 = v64;
  v54 = sub_1B03B5C80(v48, v64, &qword_1EB6E7438, &qword_1B0EFBF30);
  if (sub_1B0D73474(v54) <= 0)
  {
    sub_1B0398EFC(v53, &qword_1EB6E7438, &qword_1B0EFBF30);
    v55 = 1;
  }

  else
  {
    sub_1B03C60A4(v53, v52, &qword_1EB6E7438, &qword_1B0EFBF30);
    sub_1B03C60A4(v52, v49, &qword_1EB6E7430, &qword_1B0EFBC90);
    v55 = 0;
  }

  (*(v30 + 56))(v49, v55, 1, v28);
  if ((*(v30 + 48))(v49, 1, v28) == 1)
  {
    sub_1B0398EFC(v49, &qword_1EB6E75E8, &qword_1B0EF5010);
    sub_1B0436554();
    swift_allocError();
    *v58 = 0xD000000000000016;
    v58[1] = 0x80000001B0F300D0;
    v58[2] = 0xD000000000000020;
    v58[3] = 0x80000001B0F2FA10;
    v58[4] = 125;
    swift_willThrow();
    result = sub_1B0398EFC(v48, &qword_1EB6E7438, &qword_1B0EFBF30);
  }

  else
  {
    sub_1B0398EFC(v48, &qword_1EB6E7438, &qword_1B0EFBF30);
    result = sub_1B03C60A4(v49, v47, &qword_1EB6E7430, &qword_1B0EFBC90);
  }

LABEL_15:
  v57 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0DADE7C(unint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
      sub_1B0439BCC();
      v8 = swift_allocError();
      *v23 = a3;

LABEL_6:
      swift_willThrow();
      v34 = v8;
      v24 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v34 = v8;
        v25 = v8;
        if ((swift_dynamicCast() & 1) == 0)
        {
        }
      }

      if (v17 < a3)
      {
        v26 = *a1;
        v27 = *(a1 + 8);
        v28 = *(a1 + 16);
        v29 = *(a1 + 20);
        v30 = *(a1 + 22);

        sub_1B0DAF950(a1, v17, a3, &v33);

        return v33;
      }

      sub_1B0439BCC();
      swift_allocError();
      *v31 = a3;
      swift_willThrow();
    }

    v18 = *a1;
    v19 = *(a1 + 8);
    v20 = *(a1 + 16);
    v21 = *(a1 + 20);
    v32 = *(a1 + 22);

    sub_1B0DFE880(0x2AuLL, 0xE100000000000000, 0, 0, a1, v17, a3);
    if (v7)
    {
      v22 = *a1;

      *a1 = v18;
      *(a1 + 8) = v19;
      *(a1 + 16) = v20;
      *(a1 + 20) = v21;
      *(a1 + 22) = v32;
      goto LABEL_6;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1B0DAE160(unint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
      sub_1B0439BCC();
      v8 = swift_allocError();
      *v23 = a3;

LABEL_6:
      swift_willThrow();
      v34 = v8;
      v24 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v34 = v8;
        v25 = v8;
        if ((swift_dynamicCast() & 1) == 0)
        {
        }
      }

      if (v17 < a3)
      {
        v26 = *a1;
        v27 = *(a1 + 8);
        v28 = *(a1 + 16);
        v29 = *(a1 + 20);
        v30 = *(a1 + 22);

        sub_1B0DAF950(a1, v17, a3, &v33);

        return v33;
      }

      sub_1B0439BCC();
      swift_allocError();
      *v31 = a3;
      swift_willThrow();
    }

    v18 = *a1;
    v19 = *(a1 + 8);
    v20 = *(a1 + 16);
    v21 = *(a1 + 20);
    v32 = *(a1 + 22);

    sub_1B0DFE880(0x2AuLL, 0xE100000000000000, 0, 0, a1, v17, a3);
    if (v7)
    {
      v22 = *a1;

      *a1 = v18;
      *(a1 + 8) = v19;
      *(a1 + 16) = v20;
      *(a1 + 20) = v21;
      *(a1 + 22) = v32;
      goto LABEL_6;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1B0DAE444(unint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
      sub_1B0439BCC();
      v8 = swift_allocError();
      *v23 = a3;

LABEL_6:
      swift_willThrow();
      v34 = v8;
      v24 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v34 = v8;
        v25 = v8;
        if ((swift_dynamicCast() & 1) == 0)
        {
        }
      }

      if (v17 < a3)
      {
        v26 = *a1;
        v27 = *(a1 + 8);
        v28 = *(a1 + 16);
        v29 = *(a1 + 20);
        v30 = *(a1 + 22);

        sub_1B0DAF9F8(a1, v17, a3, &v33);

        return v33;
      }

      sub_1B0439BCC();
      swift_allocError();
      *v31 = a3;
      swift_willThrow();
    }

    v18 = *a1;
    v19 = *(a1 + 8);
    v20 = *(a1 + 16);
    v21 = *(a1 + 20);
    v32 = *(a1 + 22);

    sub_1B0DFE880(0x2AuLL, 0xE100000000000000, 0, 0, a1, v17, a3);
    if (v7)
    {
      v22 = *a1;

      *a1 = v18;
      *(a1 + 8) = v19;
      *(a1 + 16) = v20;
      *(a1 + 20) = v21;
      *(a1 + 22) = v32;
      goto LABEL_6;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void *sub_1B0DAE728(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
      sub_1B0439BCC();
      v8 = swift_allocError();
      *v23 = a3;
    }

    else
    {
      v18 = *a1;
      v19 = *(a1 + 8);
      v20 = *(a1 + 16);
      v21 = *(a1 + 20);
      v34 = *(a1 + 22);

      sub_1B0DAFDC0(a1, v17, a3, &v35);
      if (!v7)
      {

        LODWORD(v32) = v35;
        v33 = HIDWORD(v35);
        return (v32 | (v33 << 32));
      }

      v22 = *a1;

      *a1 = v18;
      *(a1 + 8) = v19;
      *(a1 + 16) = v20;
      *(a1 + 20) = v21;
      *(a1 + 22) = v34;
    }

    swift_willThrow();
    v36 = v8;
    v24 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v36 = v8;
      v25 = v8;
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v17 < a3)
    {
      v26 = *a1;
      v27 = *(a1 + 8);
      v28 = *(a1 + 16);
      v29 = *(a1 + 20);
      v30 = *(a1 + 22);

      v32 = sub_1B0DAF4C4(a1, v17, a3);

      v33 = HIDWORD(v32);
      return (v32 | (v33 << 32));
    }

    sub_1B0439BCC();
    swift_allocError();
    *v31 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

void *sub_1B0DAEA08(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
      sub_1B0439BCC();
      v8 = swift_allocError();
      *v23 = a3;
    }

    else
    {
      v18 = *a1;
      v19 = *(a1 + 8);
      v20 = *(a1 + 16);
      v21 = *(a1 + 20);
      v34 = *(a1 + 22);

      sub_1B0DAFDA8(a1, v17, a3, &v35);
      if (!v7)
      {

        LODWORD(v32) = v35;
        v33 = HIDWORD(v35);
        return (v32 | (v33 << 32));
      }

      v22 = *a1;

      *a1 = v18;
      *(a1 + 8) = v19;
      *(a1 + 16) = v20;
      *(a1 + 20) = v21;
      *(a1 + 22) = v34;
    }

    swift_willThrow();
    v36 = v8;
    v24 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v36 = v8;
      v25 = v8;
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v17 < a3)
    {
      v26 = *a1;
      v27 = *(a1 + 8);
      v28 = *(a1 + 16);
      v29 = *(a1 + 20);
      v30 = *(a1 + 22);

      v32 = sub_1B0DAF4C4(a1, v17, a3);

      v33 = HIDWORD(v32);
      return (v32 | (v33 << 32));
    }

    sub_1B0439BCC();
    swift_allocError();
    *v31 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

void *sub_1B0DAECE8(unint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  result = sub_1B0DFE880(0x2CuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
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
      v32 = *(a1 + 22);

      sub_1B0DAFD50(a1, v16, v12, &v33);

      LODWORD(v12) = v33;
      v31 = HIDWORD(v33);
      return (v12 | (v31 << 32));
    }

    sub_1B0439BCC();
    v21 = swift_allocError();
    *v22 = v12;

    swift_willThrow();
    v34 = v21;
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v34 = v21;
      v24 = v21;
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v16 < v12)
    {
      v25 = *a1;
      v26 = *(a1 + 8);
      v27 = *(a1 + 16);
      v28 = *(a1 + 20);
      v29 = *(a1 + 22);

      v12 = sub_1B0DAF4C4(a1, v16, v12);

      v31 = HIDWORD(v12);
      return (v12 | (v31 << 32));
    }

    sub_1B0439BCC();
    swift_allocError();
    *v30 = v12;
    swift_willThrow();
  }

  return result;
}

void *sub_1B0DAEFF0(unint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  result = sub_1B0DFE880(0x2CuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
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
      v32 = *(a1 + 22);

      sub_1B0DAF910(a1, v16, v12, &v33);

      LODWORD(v12) = v33;
      v31 = HIDWORD(v33);
      return (v12 | (v31 << 32));
    }

    sub_1B0439BCC();
    v21 = swift_allocError();
    *v22 = v12;

    swift_willThrow();
    v34 = v21;
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v34 = v21;
      v24 = v21;
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v16 < v12)
    {
      v25 = *a1;
      v26 = *(a1 + 8);
      v27 = *(a1 + 16);
      v28 = *(a1 + 20);
      v29 = *(a1 + 22);

      v12 = sub_1B0DAF4C4(a1, v16, v12);

      v31 = HIDWORD(v12);
      return (v12 | (v31 << 32));
    }

    sub_1B0439BCC();
    swift_allocError();
    *v30 = v12;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0DAF2FC(uint64_t a1)
{
  sub_1B03D06F8();
  result = sub_1B0E46EE8();
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
      v10 = sub_1B0E46E88();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
      sub_1B0E46E38();
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

uint64_t sub_1B0DAF448(uint64_t a1)
{
  v2 = type metadata accessor for ResponsePayload();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B0DAF4C4(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_1B0DFF3DC(a1, a2, a3, 0);
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
    sub_1B0436554();
    swift_allocError();
    *v9 = v6;
    v9[1] = v8;
    v9[2] = 0xD000000000000020;
    v9[3] = 0x80000001B0F2FA10;
    v9[4] = v7;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0DAF604(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1B0DAADF0(a1, a2, a3);
}

unint64_t sub_1B0DAF624(unint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1B0DAC970(a1, a2, a3);
}

uint64_t sub_1B0DAF684(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1B0DAC8AC(a1, a2, a3);
}

uint64_t sub_1B0DAF6E4(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1B0DABC94(a1, a2, a3);
}

uint64_t sub_1B0DAF704(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1B0DABDB8(a1, a2, a3);
}

uint64_t sub_1B0DAF724(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1B0DABED4(a1, a2, a3);
}

uint64_t sub_1B0DAF744(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1B0DAC750(a1, a2, a3);
}

unint64_t sub_1B0DAF764(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  return sub_1B0DACAE0(a1, a2, a3, *(v3 + 16));
}

uint64_t sub_1B0DAF784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned __int8 a20, uint64_t a21, uint64_t a22)
{

  if (a9 < 0)
  {

    return sub_1B0DAF8B4(a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  else
  {
  }
}

uint64_t sub_1B0DAF8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    sub_1B0BD1294(a9, a10, a11);
  }

  return result;
}

unint64_t sub_1B0DAF950@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_1B0DFE828(a1, a2, a3, a4);
}

uint64_t sub_1B0DAF970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t *a6@<X8>)
{
  result = sub_1B0DA9AF8(a1, a2, a3, v6[2], v6[3], v6[4], v6[5], a4, a5);
  if (!v7)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_1B0DAF9B8(unint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1B0DAC28C(a1, a2, a3);
}

uint64_t sub_1B0DAF9D8(unint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1B0DAC3AC(a1, a2, a3);
}

unint64_t sub_1B0DAF9F8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_1B0DFE854(a1, a2, a3, a4);
}

unint64_t sub_1B0DAFA18(unint64_t result, uint64_t a2, int64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v6 >= a3)
    {
      sub_1B0439BCC();
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
      sub_1B0439BCC();
      swift_allocError();
      *v14 = a3;
    }

    else
    {

      sub_1B0441264(v8, v21);
      if (!v4)
      {
        v12 = sub_1B0DFF2E8(v21[0], v21[1], v22 | (v23 << 32) | (v24 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 115);
        v5 = a4(v12);

        sub_1B0436204(v8);

        if ((sub_1B0DFF3DC(v8, v6, a3, 1) & 0x8000000000000000) == 0)
        {
          v18 = *v8;

          sub_1B0436204(v8);

          if ((sub_1B0DFF3DC(v8, v6, a3, 1) & 0x8000000000000000) == 0)
          {

            return v5;
          }
        }

        v15 = *v8;

        sub_1B0436554();
        swift_allocError();
        *v16 = 0xD000000000000011;
        v16[1] = 0x80000001B0F2FEE0;
        v16[2] = 0xD000000000000020;
        v16[3] = 0x80000001B0F2FA10;
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

uint64_t sub_1B0DAFDD8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
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
      sub_1B0439BCC();
      swift_allocError();
      *v15 = a3;
LABEL_10:
      swift_willThrow();
    }

    v56 = a4;
    v6 = *(a1 + 8);
    v58 = *(a1 + 20);
    v59 = *(a1 + 16);
    v57 = *(a1 + 22);
    v60 = *a1;
    if (a2 + 2 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v16 = a3;
      goto LABEL_8;
    }

    sub_1B0436204(a1);
    if (v5)
    {

LABEL_8:
      v17 = v58;
      swift_willThrow();
      v18 = v59;
LABEL_9:
      *a1 = v60;
      *(a1 + 8) = v6;
      *(a1 + 16) = v18;
      *(a1 + 20) = v17;
      *(a1 + 22) = v57;
      goto LABEL_10;
    }

    sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, v14, a3);
    v7 = 0;
    v20 = *a1;
    v21 = *(a1 + 8);
    v22 = *(a1 + 12);
    v49 = *(a1 + 16);
    v44 = *(a1 + 20);
    v45 = *(a1 + 22);

    sub_1B0DB23C4(a1, v14 + 1, a3, v4);

    a4 = 0;
    v23 = *a1;
    v24 = *(a1 + 8);
    v53 = *(a1 + 16);
    v50 = *(a1 + 20);
    v46 = *(a1 + 22);
    if (v14 + 2 >= a3)
    {
      sub_1B0439BCC();
      v27 = swift_allocError();
      *v28 = a3;
      swift_willThrow();
      *a1 = v23;
      *(a1 + 8) = v24;
      *(a1 + 16) = v53;
      *(a1 + 20) = v50;
      *(a1 + 22) = v46;
      swift_willThrow();
      v29 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_12;
      }

      swift_beginAccess();
      v30 = *(v4 + 24);
      if (v30)
      {
        v31 = 0;
        v43 = 0;
        v42 = 0;
        v7 = 0;
        v61 = *v13;
        v32 = 1;
        goto LABEL_18;
      }

      sub_1B0436554();
      swift_allocError();
      *v34 = 0xD000000000000020;
      v34[1] = 0x80000001B0F300F0;
      v34[2] = 0xD000000000000020;
      v34[3] = 0x80000001B0F2FA10;
      v35 = 105;
LABEL_22:
      v34[4] = v35;
      swift_willThrow();
      goto LABEL_12;
    }

    v41 = 1;
    v42 = 0;
    v43 = 0;
    sub_1B0436204(a1);
    v26 = *(a1 + 8);
    v25 = *(a1 + 12);
    v39 = *(a1 + 16);
    v51 = *(a1 + 20);
    v47 = *(a1 + 22);
    v54 = *a1;

    sub_1B0DB23C4(a1, v14 + 1, a3, v4);

    v36 = *a1;
    sub_1B0436204(a1);
    LODWORD(v36) = *(a1 + 12);
    v52 = *(a1 + 8);
    v48 = *(a1 + 16);
    v37 = *(a1 + 20);
    v40 = *(a1 + 22);
    v55 = *a1;

    sub_1B0DB23C4(a1, v14 + 1, a3, v4);
  }

  swift_beginAccess();
  v30 = *(v4 + 24);
  if (!v30 || !a4 || (v41 & 1) != 0)
  {
    v38 = *a1;

    sub_1B0436554();
    swift_allocError();
    *v34 = 0xD00000000000002FLL;
    v34[1] = 0x80000001B0F30120;
    v34[2] = 0xD000000000000020;
    v34[3] = 0x80000001B0F2FA10;
    v35 = 100;
    goto LABEL_22;
  }

  v61 = *v13;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v32 = 0;
  v31 = a4;
LABEL_18:
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, v14, a3);
  if (v7)
  {
    v33 = *a1;

LABEL_12:
    v17 = v58;
    v18 = v59;
    goto LABEL_9;
  }

  *v56 = v61;
  *(v56 + 8) = v30;
  *(v56 + 16) = v31;
  *(v56 + 24) = v43;
  *(v56 + 28) = v42;
  *(v56 + 32) = v32;
  return result;
}

uint64_t sub_1B0DB0F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v38 = a6;
  v39 = a7;
  v15 = type metadata accessor for ParameterValue();
  v16 = *(*(v15 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v20 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v25 = a3;
      return swift_willThrow();
    }

    v34 = a8;
    v21 = *a1;
    v22 = *(a1 + 8);
    v23 = *(a1 + 16);
    v36 = *(a1 + 20);
    v37 = v23;
    v35 = *(a1 + 22);
    if (v20 + 1 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v26 = a3;
      goto LABEL_8;
    }

    swift_retain_n();
    sub_1B0DBFFD8(a1, v20 + 1, a3, v40);
    if (v8)
    {
      v24 = *a1;

LABEL_8:
      swift_willThrow();
      *a1 = v21;
      *(a1 + 8) = v22;
      v27 = v36;
      *(a1 + 16) = v37;
      *(a1 + 20) = v27;
      *(a1 + 22) = v35;
      return swift_willThrow();
    }

    v33 = v40[1];
    v28 = *a1;
    v32[0] = v40[0];
    v32[1] = v28;
    sub_1B0436204(a1);
    v29 = v33;
    sub_1B0DB5310(a1, v20, a3, a4, a5, v38, v39, v19);

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F28, "P5\a");
    v31 = v34;
    result = sub_1B0D06280(v19, v34 + *(v30 + 52));
    *v31 = v32[0];
    v31[1] = v29;
  }

  return result;
}

uint64_t sub_1B0DB1210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B0DB256C;
  *(v17 + 24) = v16;
  v53 = sub_1B0DA9340;
  v54 = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B0DB25A0;
  *(v19 + 24) = v18;
  v55 = sub_1B0DA938C;
  v56 = v19;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B0DB25D8;
  *(v21 + 24) = v20;
  v57 = sub_1B0DA938C;
  v58 = v21;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B0DB25F8;
  *(v23 + 24) = v22;
  v59 = sub_1B0DA938C;
  v60 = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B0DB2618;
  *(v25 + 24) = v24;
  v61 = sub_1B0DA938C;
  v62 = v25;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1B0DB2638;
  *(v27 + 24) = v26;
  v63 = sub_1B0DA938C;
  v64 = v27;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1B0DB2658;
  *(v29 + 24) = v28;
  v65 = sub_1B0DA938C;
  v66 = v29;
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
      *(swift_allocObject() + 16) = *&v52[v34];
      if (v31 >= a3)
      {
        sub_1B0439BCC();
        v43 = swift_allocError();
        *v45 = a3;
      }

      else
      {
        v50 = v34;
        v36 = *v35;
        v37 = *(v35 + 8);
        v38 = *(v35 + 16);
        v49 = *(v35 + 20);
        v39 = v31;
        v40 = *(v35 + 22);

        v41 = v8;
        v42 = v39;
        sub_1B0DA9370(v35, v39, a3);
        v43 = v41;
        if (!v41)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          return swift_arrayDestroy();
        }

        v44 = *v35;

        *v35 = v36;
        *(v35 + 8) = v37;
        *(v35 + 16) = v38;
        *(v35 + 20) = v49;
        *(v35 + 22) = v40;
        v31 = v42;
        v34 = v50;
      }

      swift_willThrow();
      v51 = v43;
      v46 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v51 = v43;
        v47 = v43;
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          swift_arrayDestroy();
        }
      }

      v8 = 0;
      v34 += 16;
      if (v34 == 144)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
        swift_arrayDestroy();
        sub_1B0436554();
        swift_allocError();
        *v48 = 0xD000000000000019;
        v48[1] = 0x80000001B0F2FF00;
        v48[2] = 0xD000000000000020;
        v48[3] = 0x80000001B0F2FA10;
        v48[4] = 527;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DB1804@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, unint64_t a4@<X7>, _DWORD *a5@<X8>)
{
  result = sub_1B0DFE880(a4, 0xE400000000000000, 0, 0, a1, a2, a3);
  if (!v5)
  {
    *a5 = sub_1B0D9F404(a1, a2, a3);
    type metadata accessor for SearchReturnData();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void sub_1B0DB1898(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1B0DFE880(0x204C4C41uLL, 0xE400000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    sub_1B0DA9758(a1, a2, a3, a4, a5, a6, a7, a8);
    type metadata accessor for SearchReturnData();
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1B0DB195C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, unint64_t *a4@<X8>)
{
  result = sub_1B0DFE880(0x20544E554F43uLL, 0xE600000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    v10 = sub_1B0DFF3DC(a1, a2, a3, 1);
    if ((v10 & 0x8000000000000000) != 0)
    {
      sub_1B0436554();
      swift_allocError();
      *v11 = 0xD000000000000011;
      v11[1] = 0x80000001B0F2FEE0;
      v11[2] = 0xD000000000000020;
      v11[3] = 0x80000001B0F2FA10;
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

uint64_t sub_1B0DB1A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1B0DFE880(0x20514553444F4DuLL, 0xE700000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    *a4 = sub_1B0DB2720(a1, a2, a3);
    type metadata accessor for SearchReturnData();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void sub_1B0DB1B04(void *a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, void *a8@<X8>)
{
  v48 = a7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7438, &qword_1B0EFBF30);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v40 - v18;
  sub_1B0DFE880(0x204C414954524150uLL, 0xE900000000000028, 0, 0, a1, a2, a3);
  if (!v8)
  {
    sub_1B0DA93BC(a1, a2, a3);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v28 = a3;
      swift_willThrow();
    }

    else
    {
      v43 = a2;
      v47 = v19;
      v40 = a8;
      v42 = v21;
      v41 = v20;
      v22 = a1;
      v46 = *a1;
      v23 = a1[1];
      v24 = a3;
      v25 = *(v22 + 16);
      v26 = *(v22 + 20);
      v27 = *(v22 + 22);
      sub_1B0436204(v22);
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
      *(v31 + 16) = sub_1B0DB2678;
      *(v31 + 24) = v29;
      v49[0] = sub_1B0DA938C;
      v49[1] = v31;
      v32 = swift_allocObject();
      v32[2] = a4;
      v32[3] = a5;
      v32[4] = a6;
      v32[5] = v30;
      v33 = swift_allocObject();
      *(v33 + 16) = sub_1B0DB2698;
      *(v33 + 24) = v32;
      v49[2] = sub_1B0DA938C;
      v49[3] = v33;
      v48 = 0x80000001B0F2FA10;
      swift_retain_n();
      *(swift_allocObject() + 16) = *v46;
      v34 = *v22;
      v35 = *(v22 + 8);
      LODWORD(v32) = *(v22 + 16);
      v36 = *(v22 + 20);
      v37 = *(v22 + 22);

      sub_1B0DA9370(v22, v44, v45);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
      swift_arrayDestroy();
      sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v22, v43, v45);
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7448, &qword_1B0EF3210) + 48);
      v39 = v40;
      *v40 = v41;
      *(v39 + 8) = v42 & 1;
      sub_1B03C60A4(v47, v39 + v38, &qword_1EB6E7438, &qword_1B0EFBF30);
      type metadata accessor for SearchReturnData();
      swift_storeEnumTagMultiPayload();
    }
  }
}

uint64_t sub_1B0DB20C0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7430, &qword_1B0EFBC90);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v21 - v18;
  result = sub_1B0DAD7D8(a1, a2, a3, a4, a5, a6, a7, &v21 - v18);
  if (!v8)
  {
    return sub_1B03C60A4(v19, v22, &qword_1EB6E7438, &qword_1B0EFBF30);
  }

  return result;
}

uint64_t sub_1B0DB21C0(uint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    return sub_1B0DAF2F8(MEMORY[0x1E69E7CC0]);
  }

  return result;
}

uint64_t sub_1B0DB2220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  result = sub_1B0DB0F94(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v8)
  {
    type metadata accessor for SearchReturnData();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_1B0DB2268(uint64_t result, uint64_t a2, int64_t a3)
{
  v5 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v5 >= a3)
    {
      sub_1B0439BCC();
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

      sub_1B0DFE880(0x20514553444F4D28uLL, 0xE800000000000000, 0, 0, v7, v5, a3);
      if (!v3)
      {
        v4 = sub_1B0DB2720(v7, v5, a3);
        sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v7, v5, a3);

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

uint64_t sub_1B0DB23C4(unint64_t a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  result = sub_1B0DFE880(0x2220474154uLL, 0xE500000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
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
      sub_1B0DF9D90(a1, v20);
      v16 = sub_1B0DFF2E8(v20[0], v20[1], v21 | (v22 << 32) | (v23 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 2610);
      v18 = v17;

      swift_beginAccess();
      v19 = *(a4 + 24);
      *(a4 + 16) = v16;
      *(a4 + 24) = v18;

      return sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1B0DB256C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_1B0DB1804(a1, a2, a3, 0x204E494DuLL, a4);
}

uint64_t sub_1B0DB25A0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_1B0DB1804(a1, a2, a3, 0x2058414DuLL, a4);
}

uint64_t sub_1B0DB25F8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_1B0DB195C(a1, a2, a3, a4);
}

uint64_t sub_1B0DB2618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  return sub_1B0DB1A68(a1, a2, a3, a4);
}

uint64_t sub_1B0DB2698(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1B0DB21C0(a1, a2, a3);
}

uint64_t sub_1B0DB26B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7438, &qword_1B0EFBF30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0DB2720(uint64_t result, uint64_t a2, int64_t a3)
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
      sub_1B0439BCC();
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

    v12 = sub_1B0DFF3DC(v6, v4, a3, 1);
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

      sub_1B0436554();
      swift_allocError();
      *v17 = 0xD00000000000001BLL;
      v17[1] = 0x80000001B0F2FFC0;
      v17[2] = 0xD000000000000020;
      v17[3] = 0x80000001B0F2FA10;
      v17[4] = 173;
      swift_willThrow();
      goto LABEL_5;
    }

    v15 = v12;

    return v15;
  }

  return result;
}

uint64_t sub_1B0DB2888(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
      sub_1B0439BCC();
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

    sub_1B0DB363C(v10, v8, a3, a4, a5, a6, a7, &v22);
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

uint64_t sub_1B0DB29B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v58 = a8;
  v65 = *MEMORY[0x1E69E9840];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v53 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42D0, &unk_1B0EC5990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC1E70;
  v20 = v62;
  v21 = sub_1B0DB32AC(a1, a2, a3, a4, a5, a6, a7);
  if (v20)
  {
    *(inited + 16) = 0;

    goto LABEL_24;
  }

  v61 = a4;
  v62 = a5;
  *(inited + 32) = v21;
  if (__OFADD__(a2, 1))
  {
LABEL_32:
    __break(1u);
  }

  if (a2 + 1 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v36 = a3;
LABEL_23:
    swift_willThrow();

    goto LABEL_24;
  }

  v59 = a6;
  v60 = a7;
  v23 = *a1;
  v24 = *(a1 + 8);
  v25 = *(a1 + 16);
  v26 = *(a1 + 20);
  v27 = a2 + 2;
  v56 = *(a1 + 22);
  v57 = v26;

  if (v27 < a3)
  {
    v53[1] = v25;
    v54 = v23;
    v55 = v18;
    while (1)
    {
      v28 = *a1;
      v29 = *(a1 + 8);
      v30 = *(a1 + 16);
      v31 = *(a1 + 20);
      v32 = *(a1 + 22);

      sub_1B0DFE880(0x2CuLL, 0xE100000000000000, 0, 0, a1, v27, a3);
      v33 = sub_1B0DB32AC(a1, v27, a3, v61, v62, v59, v60);

      v35 = *(inited + 16);
      v34 = *(inited + 24);
      if (v35 >= v34 >> 1)
      {
        inited = sub_1B0AFF55C((v34 > 1), v35 + 1, 1, inited);
      }

      *(inited + 16) = v35 + 1;
      *(inited + 8 * v35 + 32) = v33;
    }
  }

  sub_1B0439BCC();
  v37 = swift_allocError();
  *v38 = a3;
  v39 = v18;
  swift_willThrow();
  v63 = v37;
  v40 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (!swift_dynamicCast())
  {

    v49 = *a1;

    *a1 = v23;
    *(a1 + 8) = v24;
    *(a1 + 16) = v25;
    v50 = v56;
    *(a1 + 20) = v57;
    *(a1 + 22) = v50;
    goto LABEL_23;
  }

  sub_1B03D06F8();
  sub_1B0E46EE8();
  v41 = *(inited + 16);
  if (v41)
  {
    v42 = 0;
    v43 = (inited + 36);
    while (v42 < *(inited + 16))
    {
      v44 = *(v43 - 1);
      v45 = v44 != 0;
      v46 = v44 - 1;
      if (!v45)
      {
        goto LABEL_29;
      }

      if (!*v43)
      {
        goto LABEL_30;
      }

      v47 = *v43;
      if (v46 > *v43)
      {
        goto LABEL_31;
      }

      v63 = __PAIR64__(v47, v46);
      if (v47 != v46)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        v48 = sub_1B0E46E88();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
        sub_1B0E46E38();
        v48(v64, 0);
      }

      ++v42;
      v43 += 2;
      if (v41 == v42)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_25:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  if (sub_1B0E46E98())
  {
    sub_1B0436554();
    swift_allocError();
    *v52 = 0xD000000000000011;
    v52[1] = 0x80000001B0F30170;
    v52[2] = 0xD000000000000020;
    v52[3] = 0x80000001B0F2FA10;
    v52[4] = 56;
    swift_willThrow();
    result = sub_1B0398EFC(v39, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  else
  {
    result = sub_1B03C60A4(v39, v58, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

LABEL_24:
  v51 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0DB2F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v48 = a7;
  v46 = a5;
  v47 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v45 = *(v13 - 8);
  v14 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v42 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v22 = *(*(v21 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v42 - v24;
  v26 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v26 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v34 = a3;
      return swift_willThrow();
    }

    v42 = v13;
    v43 = a8;
    v27 = *a1;
    v28 = *(a1 + 8);
    v29 = *(a1 + 16);
    v30 = *(a1 + 20);
    v44 = *(a1 + 22);

    v31 = v26;
    v32 = v49;
    sub_1B0DB29B0(a1, v31, a3, a4, v46, v47, v48, v20);
    if (v32)
    {
      v33 = *a1;

      *a1 = v27;
      *(a1 + 8) = v28;
      *(a1 + 16) = v29;
      *(a1 + 20) = v30;
      *(a1 + 22) = v44;
      return swift_willThrow();
    }

    v36 = sub_1B0D73474(v35);
    v37 = v42;
    if (v36 <= 0)
    {
      sub_1B0398EFC(v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v38 = 1;
    }

    else
    {
      sub_1B03C60A4(v20, v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03C60A4(v16, v25, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v38 = 0;
    }

    v39 = v43;
    v40 = v45;
    (*(v45 + 56))(v25, v38, 1, v37);
    if ((*(v40 + 48))(v25, 1, v37) == 1)
    {
      sub_1B0398EFC(v25, &unk_1EB6E3670, &unk_1B0E9B260);
      sub_1B0436554();
      swift_allocError();
      *v41 = 0xD000000000000015;
      v41[1] = 0x80000001B0F30190;
      v41[2] = 0xD000000000000020;
      v41[3] = 0x80000001B0F2FA10;
      v41[4] = 69;
      return swift_willThrow();
    }

    return sub_1B03C60A4(v25, v39, &unk_1EB6E26C0, &unk_1B0E9DE10);
  }

  return result;
}

uint64_t sub_1B0DB32AC(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!__OFADD__(a2, 1))
  {
    v10 = result;
    v40 = a2 + 1;
    if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
      v18 = swift_allocError();
      *v21 = a3;
    }

    else
    {
      v11 = *result;
      v12 = *(result + 8);
      v38 = *(result + 20);
      v39 = *(result + 16);
      v13 = a2 + 2;
      v37 = *(result + 22);
      if (a2 + 2 >= a3)
      {
        sub_1B0439BCC();
        v18 = swift_allocError();
        *v22 = a3;
      }

      else
      {
        swift_retain_n();

        v17 = sub_1B0DAE444(v10, v13, a3, a4, a5, a6, a7);
        v18 = v7;
        if (!v7)
        {
          v36 = v17;

          sub_1B0E00FBC(v10, v13, a3, a4, a5, a6, a7);
          v33 = v19;

          if (v36 >= v33)
          {
            v34 = v33;
          }

          else
          {
            v34 = v36;
          }

          if (v36 <= v33)
          {
            v35 = v33;
          }

          else
          {
            v35 = v36;
          }

          if ((v33 & 0x100000000) != 0)
          {
            LODWORD(v31) = v36;
          }

          else
          {
            LODWORD(v31) = v34;
          }

          if ((v33 & 0x100000000) != 0)
          {
            v32 = v36;
          }

          else
          {
            v32 = v35;
          }

          return v31 | (v32 << 32);
        }

        v20 = *v10;
      }

      swift_willThrow();

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v39;
      *(v10 + 20) = v38;
      *(v10 + 22) = v37;
    }

    swift_willThrow();
    v41 = v18;
    v23 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v41 = v18;
      v24 = v18;
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v40 < a3)
    {
      v25 = *v10;
      v26 = *(v10 + 8);
      v27 = *(v10 + 16);
      v28 = *(v10 + 20);
      v29 = *(v10 + 22);

      v31 = sub_1B0DAF4C4(v10, v40, a3);

      v32 = HIDWORD(v31);
      return v31 | (v32 << 32);
    }

    sub_1B0439BCC();
    swift_allocError();
    *v30 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DB363C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42D0, &unk_1B0EC5990);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B0EC1E70;
  result = sub_1B0DB32AC(a1, a2, a3, a4, a5, a6, a7);
  if (v8)
  {
    *(v16 + 16) = 0;
  }

  v42 = a4;
  *(v16 + 32) = result;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return result;
  }

  if (a2 + 1 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v31 = a3;
LABEL_14:
    swift_willThrow();
  }

  v39 = a5;
  v40 = a6;
  v41 = a7;
  v18 = *a1;
  v19 = *(a1 + 8);
  v20 = *(a1 + 16);
  v21 = *(a1 + 20);
  v22 = a2 + 2;
  v37 = *(a1 + 22);

  if (a2 + 2 < a3)
  {
    while (1)
    {
      v23 = *a1;
      v24 = *(a1 + 8);
      v25 = *(a1 + 16);
      v26 = *(a1 + 20);
      v27 = *(a1 + 22);

      sub_1B0DFE880(0x2CuLL, 0xE100000000000000, 0, 0, a1, v22, a3);
      v28 = sub_1B0DB32AC(a1, v22, a3, v42, v39, v40, v41);

      v30 = *(v16 + 16);
      v29 = *(v16 + 24);
      if (v30 >= v29 >> 1)
      {
        v16 = sub_1B0AFF55C((v29 > 1), v30 + 1, 1, v16);
      }

      *(v16 + 16) = v30 + 1;
      *(v16 + 8 * v30 + 32) = v28;
    }
  }

  sub_1B0439BCC();
  v32 = swift_allocError();
  *v33 = a3;
  swift_willThrow();
  v34 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (!swift_dynamicCast())
  {

    v35 = *a1;

    *a1 = v18;
    *(a1 + 8) = v19;
    *(a1 + 16) = v20;
    *(a1 + 20) = v21;
    *(a1 + 22) = v37;
    goto LABEL_14;
  }

  if (*(v16 + 16))
  {
    *a8 = v16;
  }

  else
  {

    sub_1B0436554();
    swift_allocError();
    *v36 = 0xD000000000000011;
    v36[1] = 0x80000001B0F30170;
    v36[2] = 0xD000000000000020;
    v36[3] = 0x80000001B0F2FA10;
    v36[4] = 97;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1B0DB39E8(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_1B0DFF3DC(a1, a2, a3, 0);
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
        return result;
      }

      v5 = "ts present for SearchCorrelator";
      v6 = 0xD000000000000015;
      v7 = 28;
    }

    v8 = v5 | 0x8000000000000000;
    sub_1B0436554();
    swift_allocError();
    *v9 = v6;
    v9[1] = v8;
    v9[2] = 0xD000000000000020;
    v9[3] = 0x80000001B0F2FA10;
    v9[4] = v7;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1B0DB3AC0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v11 = result;
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      v19 = swift_allocError();
      *v21 = a3;
    }

    else
    {
      v12 = *result;
      v13 = *(result + 8);
      v14 = *(result + 16);
      v33 = *(result + 22);
      v34 = *(result + 20);

      v18 = sub_1B0DB4268(v11, v8, a3, a4, a5, a6, a7, sub_1B0DBEB44);
      v19 = v7;
      if (!v7)
      {
        v23 = v18;

        return v23;
      }

      v20 = *v11;

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v34;
      *(v11 + 22) = v33;
    }

    swift_willThrow();
    v36 = v19;
    v22 = v19;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v36 = v19;
      v24 = v19;
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_19;
      }

      v23 = v35[3];
    }

    if (v8 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v31 = a3;
      swift_willThrow();
    }

    else
    {
      v23 = *v11;
      v25 = *(v11 + 8);
      v26 = *(v11 + 16);
      v27 = *(v11 + 20);
      v28 = v8 + 1;
      v29 = *(v11 + 22);
      if (v28 < a3)
      {
        v30 = *v11;

        sub_1B0DF99B8(v11, v35);

        return v35[0];
      }

      sub_1B0439BCC();
      swift_allocError();
      *v32 = a3;

      swift_willThrow();

      *v11 = v23;
      *(v11 + 8) = v25;
      *(v11 + 16) = v26;
      *(v11 + 20) = v27;
      *(v11 + 22) = v29;
      swift_willThrow();
    }

LABEL_19:

    return v23;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DB3E20(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1B0E44D18();
  return sub_1B0E44EA8();
}

void sub_1B0DB3EA0(uint64_t a1)
{
  v2 = *(v1 + 3);
  v3 = *(a1 + 16);
  v4 = v2 + v3;
  if (__CFADD__(v2, v3))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = *(v1 + 4);
    v8 = v4 >= v7;
    v9 = v4 - v7;
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_1B03904C0();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v10, v11 & 1);
  }

  if (HIDWORD(v3))
  {
    goto LABEL_11;
  }

  ByteBuffer._ensureAvailableCapacity(_:at:)(v3, v2);
  ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((a1 + 32), a1 + 32 + v3, v2);
  v12 = *(v1 + 3);
  v8 = __CFADD__(v12, v3);
  v13 = v12 + v3;
  if (!v8)
  {
    *(v1 + 3) = v13;
    return;
  }

LABEL_12:
  __break(1u);
}

void sub_1B0DB3F50(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
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
      sub_1B0439BCC();
      v17 = swift_allocError();
      *v19 = a3;
    }

    else
    {
      v12 = *a1;
      v13 = *(a1 + 8);
      v14 = *(a1 + 16);
      v15 = *(a1 + 20);
      v16 = *(a1 + 22);

      sub_1B0DFE880(0x4C494EuLL, 0xE300000000000000, 0, 0, a1, v8, a3);
      v17 = v7;
      if (!v7)
      {

        return;
      }

      v18 = *a1;

      *a1 = v12;
      *(a1 + 8) = v13;
      *(a1 + 16) = v14;
      *(a1 + 20) = v15;
      *(a1 + 22) = v16;
    }

    swift_willThrow();
    v31 = v17;
    v20 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v31 = v17;
      v21 = v17;
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }
    }

    if (v8 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v27 = a3;
      swift_willThrow();
    }

    else
    {
      v22 = *a1;
      v23 = *(a1 + 8);
      v24 = *(a1 + 16);
      v25 = *(a1 + 20);
      v26 = *(a1 + 22);

      sub_1B0DB4268(a1, v8, a3, a4, a5, a6, a7, sub_1B0DBEB44);
    }
  }
}

uint64_t sub_1B0DB4268(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7, void (*a8)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v12 = result;
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      v19 = swift_allocError();
      *v21 = a3;
      swift_retain_n();
    }

    else
    {
      v14 = *result;
      v15 = *(result + 8);
      v16 = *(result + 16);
      v17 = *(result + 20);
      v30 = *(result + 22);
      swift_retain_n();

      v18 = sub_1B0DC10F8(v12, v9, a3, a8);
      v19 = v8;
      if (!v8)
      {
LABEL_13:
        v29 = v18;

        return v29;
      }

      v20 = *v12;

      *v12 = v14;
      *(v12 + 8) = v15;
      *(v12 + 16) = v16;
      *(v12 + 20) = v17;
      *(v12 + 22) = v30;
    }

    swift_willThrow();
    v34 = v19;
    v22 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v34 = v19;
      v23 = v19;
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v9 < a3)
    {
      v24 = *v12;
      v25 = *(v12 + 8);
      v31 = *(v12 + 16);
      v26 = *(v12 + 20);
      v27 = *(v12 + 22);

      v18 = sub_1B0DB5DD0(v12, v9, a3, a4, a5, a6);
      goto LABEL_13;
    }

    sub_1B0439BCC();
    swift_allocError();
    *v28 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DB4538(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
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
      sub_1B0439BCC();
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

    sub_1B0DBD38C(v10, v8, a3, a4, a5, a6, a7, &v22);
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

unint64_t sub_1B0DB4664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v9 = sub_1B0DB4538(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    v13 = v10;
    v7 = v11;
    v14 = v12;
    if (qword_1EB6DE148 != -1)
    {
      v20 = v9;
      swift_once();
      v9 = v20;
    }

    v15 = v9 == static Media.TopLevelType.message && v13 == unk_1EB737E20;
    if (!v15 && (sub_1B0E46A78() & 1) == 0)
    {

LABEL_20:

      v7 = 0x80000001B0F30220;
      sub_1B0436554();
      swift_allocError();
      *v18 = 0xD00000000000002ALL;
      v18[1] = 0x80000001B0F30220;
      v18[2] = 0xD000000000000020;
      v18[3] = 0x80000001B0F2FA10;
      v18[4] = 1584;
      swift_willThrow();
      return v7;
    }

    if (qword_1EB6DE128 != -1)
    {
      swift_once();
    }

    if (v7 == static Media.Subtype.rfc822 && v14 == unk_1EB737DE0)
    {

      return v7;
    }

    v17 = sub_1B0E46A78();

    if ((v17 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  return v7;
}

uint64_t sub_1B0DB4810(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v9 = a3;
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v18 = v9;
    }

    else
    {
      v10 = result;
      v14 = *result;
      v15 = *(result + 8);
      v16 = *(result + 16);
      v20 = *(result + 22);
      v21 = *(result + 20);

      sub_1B0DFE880(0x20225458455422uLL, 0xE700000000000000, 0, 0, v10, v8, v9);
      if (!v7)
      {
        v9 = sub_1B0DB4978(v10, v8, v9, a4, a5, a6, a7);

        return v9;
      }

      v17 = *v10;

      *v10 = v14;
      *(v10 + 8) = v15;
      *(v10 + 16) = v16;
      *(v10 + 20) = v21;
      *(v10 + 22) = v20;
    }

    swift_willThrow();
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DB4978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v9 = sub_1B0DB4268(a1, a2, a3, a4, a5, a6, a7, sub_1B0DBEB44);
  if (!v7)
  {
    sub_1B0DFF2E8(v9, v10, v11 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 1592);
    v13 = sub_1B0E44B98();
    v15 = v14;

    v16 = v13 == 0x74616E7265746C61 && v15 == 0xEB00000000657669;
    if (v16 || (sub_1B0E46A78() & 1) != 0)
    {

      if (qword_1EB6DE138 != -1)
      {
        swift_once();
      }

      v17 = &static Media.Subtype.alternative;
    }

    else if (v13 == 0x646578696DLL && v15 == 0xE500000000000000 || (sub_1B0E46A78() & 1) != 0)
    {

      if (qword_1EB6DE130 != -1)
      {
        swift_once();
      }

      v17 = &static Media.Subtype.mixed;
    }

    else
    {
      if ((v13 != 0x646574616C6572 || v15 != 0xE700000000000000) && (sub_1B0E46A78() & 1) == 0)
      {
        v8 = sub_1B0E44B98();

        return v8;
      }

      if (qword_1EB6DE120 != -1)
      {
        swift_once();
      }

      v17 = &static Media.Subtype.related;
    }

    v8 = *v17;
    v18 = v17[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return v8;
}

uint64_t sub_1B0DB4BEC(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v12 = result;
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      v17 = swift_allocError();
      *v19 = a3;
    }

    else
    {
      v13 = *result;
      v14 = *(result + 8);
      v8 = *(result + 16);
      v15 = *(result + 20);
      v16 = *(result + 22);

      sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, v12, v9, a3);
      v17 = v7;
      if (!v7)
      {
        v32 = sub_1B041D794(MEMORY[0x1E69E7CC0]);
LABEL_20:
        v8 = v32;

        return v8;
      }

      v18 = *v12;

      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v8;
      *(v12 + 20) = v15;
      *(v12 + 22) = v16;
    }

    swift_willThrow();
    v44 = v17;
    v20 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {

      v8 = v43;
    }

    else
    {

      v44 = v17;
      v21 = v17;
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_18;
      }

      v8 = v43;
    }

    if (v9 < a3)
    {
      v22 = *v12;
      v23 = *(v12 + 8);
      v36 = *(v12 + 20);
      v37 = *(v12 + 16);
      v35 = *(v12 + 22);

      sub_1B0DBA738(v12, v9, a3);
      v8 = v34;

      return v8;
    }

    sub_1B0439BCC();
    v24 = swift_allocError();
    *v25 = a3;
    swift_willThrow();
    v44 = v24;
    v26 = v24;
    if (swift_dynamicCast())
    {

      v8 = v43;
LABEL_16:

      if (v9 >= a3)
      {
        sub_1B0439BCC();
        swift_allocError();
        *v33 = a3;
        swift_willThrow();
        return v8;
      }

      v28 = *v12;
      v29 = *(v12 + 8);
      v30 = a7;
      v31 = *(v12 + 16);
      v38 = *(v12 + 22);
      v39 = *(v12 + 20);

      sub_1B0DBA91C(v12, v9, a3, a4, a5, a6, v30);
      goto LABEL_20;
    }

    v44 = v24;
    v27 = v24;
    if (swift_dynamicCast())
    {

      v8 = v43;

      goto LABEL_16;
    }

LABEL_18:

    return v8;
  }

  __break(1u);
  return result;
}

void sub_1B0DB4FF8(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v9 = a7;
    v10 = a6;
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      v18 = swift_allocError();
      *v20 = a3;
    }

    else
    {
      v13 = *a1;
      v14 = *(a1 + 8);
      v15 = *(a1 + 16);
      v16 = *(a1 + 20);
      v17 = *(a1 + 22);

      sub_1B0DBF5CC(a1, v8, a3);
      v18 = v7;
      if (!v7)
      {
LABEL_14:

        return;
      }

      v19 = *a1;

      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
      *(a1 + 20) = v16;
      *(a1 + 22) = v17;
      v10 = a6;
      v9 = a7;
    }

    swift_willThrow();
    v33 = v18;
    v21 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v33 = v18;
      v22 = v18;
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }
    }

    if (v8 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v27 = a3;
      swift_willThrow();
      return;
    }

    v23 = *a1;
    v24 = *(a1 + 8);
    v25 = *(a1 + 16);
    v26 = *(a1 + 20);
    v30 = *(a1 + 22);

    sub_1B0DFE880(0x5BuLL, 0xE100000000000000, 0, 0, a1, v8, a3);
    sub_1B0DBF724(a1, v8, a3, a4, a5, v10, v9);
    sub_1B0DFE880(0x5DuLL, 0xE100000000000000, 0, 0, a1, v8, a3);
    goto LABEL_14;
  }

  __break(1u);
}

void sub_1B0DB5310(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      v19 = a8;
      sub_1B0439BCC();
      v20 = swift_allocError();
      *v22 = a3;
    }

    else
    {
      v13 = *a1;
      v14 = *(a1 + 8);
      v15 = *(a1 + 16);
      v16 = *(a1 + 20);
      v17 = *(a1 + 22);

      sub_1B0DA9710(a1, v9, a3, a4, a5, a6, a7, a8);
      v19 = a8;
      v20 = v8;
      if (!v8)
      {
        type metadata accessor for ParameterValue();
LABEL_17:
        swift_storeEnumTagMultiPayload();

        return;
      }

      v21 = *a1;

      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
      *(a1 + 20) = v16;
      *(a1 + 22) = v17;
    }

    swift_willThrow();
    v37 = v20;
    v23 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v37 = v20;
      v24 = v20;
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }
    }

    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v32 = a3;
      swift_willThrow();
      return;
    }

    v25 = *a1;
    v26 = *(a1 + 8);
    v27 = *(a1 + 16);
    v28 = *(a1 + 20);
    v29 = *(a1 + 22);

    sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, v9, a3);

    sub_1B0E01014(a1, v9, a3, a4, a5, a6, a7);
    v31 = v30;

    if (!v31)
    {
      v31 = MEMORY[0x1E69E7CC0];
    }

    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, v9, a3);
    *v19 = v31;
    type metadata accessor for ParameterValue();
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_1B0DB5660(uint64_t result, uint64_t a2, int64_t a3, uint64_t (*a4)(uint64_t))
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
      sub_1B0439BCC();
      swift_allocError();
      *v15 = a3;
    }

    else
    {
      v7 = result;
      v30 = a4;
      v8 = *result;
      v9 = *(result + 8);
      v10 = *(result + 16);
      v11 = *(result + 20);
      v12 = *(result + 22);

      sub_1B0DFE880(0x5CuLL, 0xE100000000000000, 0, 0, v7, v5, a3);
      if (!v4)
      {
        if (v5 + 1 < a3)
        {
          v24 = *v7;
          v13 = *(v7 + 8);
          v14 = *(v7 + 16);
          v22 = *(v7 + 22);
          v23 = *(v7 + 20);
          sub_1B0441264(v7, &v25);
          v18 = sub_1B0DFF2E8(v25, v26, v27 | (v28 << 32) | (v29 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 115);
          v19 = v30(v18);
          v21 = v20;

          v25 = 92;
          v26 = 0xE100000000000000;
          MEMORY[0x1B2726E80](v19, v21);

          return v25;
        }

        sub_1B0439BCC();
        swift_allocError();
        *v16 = a3;
        swift_willThrow();
      }

      v17 = *v7;

      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0DB58A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
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
      sub_1B0439BCC();
      swift_allocError();
      *v22 = a3;
    }

    else
    {
      v15 = result;
      v16 = *result;
      v17 = *(result + 8);
      v37 = *(result + 20);
      v38 = *(result + 16);
      v36 = *(result + 22);

      v18 = sub_1B0DB3AC0(v15, v9, a3, a4, a5, a6, a7);
      if (v8)
      {
        v21 = *v15;
      }

      else
      {
        v34 = v18;
        if (v9 + 1 < a3)
        {
          v32 = v20;
          v33 = *v15;
          v31 = v19;
          sub_1B0436204(v15);
          sub_1B0DB3F50(v15, v9, a3, a4, a5, a6, a7);
          v25 = v24;
          v27 = v26;
          v29 = v28;

          *&v40 = v34;
          *(&v40 + 1) = v31;
          *v41 = v32;
          *&v41[4] = WORD2(v32);
          v41[6] = BYTE6(v32);
          *&v41[8] = v25;
          *&v41[16] = v27;
          *&v41[24] = v29;
          v41[30] = BYTE6(v29);
          *&v41[28] = WORD2(v29);
          v42[0] = v34;
          v42[1] = v31;
          v43 = v32;
          v44 = WORD2(v32);
          v45 = BYTE6(v32);
          v46 = v25;
          v47 = v27;
          v48 = v29;
          v50 = BYTE6(v29);
          v49 = WORD2(v29);
          sub_1B0D3C908(&v40, v39);
          result = sub_1B0D3C964(v42);
          v30 = *v41;
          *a8 = v40;
          a8[1] = v30;
          *(a8 + 31) = *&v41[15];
          return result;
        }

        sub_1B0439BCC();
        swift_allocError();
        *v23 = a3;
        swift_willThrow();
      }

      *v15 = v16;
      *(v15 + 8) = v17;
      *(v15 + 16) = v38;
      *(v15 + 20) = v37;
      *(v15 + 22) = v36;
    }

    return swift_willThrow();
  }

  return result;
}