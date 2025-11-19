void sub_1B0DB5B34(unint64_t a1, uint64_t a2, int64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, int64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = a7;
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

      sub_1B0DC0EE8(a1, v8, a3, a4);
      v17 = v7;
      if (!v7)
      {
LABEL_13:

        return;
      }

      v18 = *a1;

      *a1 = v12;
      *(a1 + 8) = v13;
      *(a1 + 16) = v14;
      *(a1 + 20) = v15;
      *(a1 + 22) = v16;
      v9 = a7;
    }

    swift_willThrow();
    v32 = v17;
    v20 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {

LABEL_10:

      if (v8 >= a3)
      {
        sub_1B0439BCC();
        swift_allocError();
        *v27 = a3;
        swift_willThrow();
        return;
      }

      v22 = *a1;
      v23 = *(a1 + 8);
      v24 = *(a1 + 16);
      v25 = *(a1 + 20);
      v26 = *(a1 + 22);

      sub_1B0DB3AC0(a1, v8, a3, a4, a5, a6, v9);
      goto LABEL_13;
    }

    v32 = v17;
    v21 = v17;
    if (swift_dynamicCast())
    {

      goto LABEL_10;
    }
  }
}

uint64_t sub_1B0DB5DD0(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6)
{
  v7 = a2 + 1;
  if (__OFADD__(a2, 1))
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
    v16 = *(result + 22);
    v17 = *(result + 20);

    sub_1B0DBCEB4(v9, v7, a3, a6, 0x7BuLL, &v18, 0xE100000000000000, 1470);
    if (v6)
    {
      v14 = *v9;

      *v9 = v10;
      *(v9 + 8) = v11;
      *(v9 + 16) = v12;
      *(v9 + 20) = v17;
      *(v9 + 22) = v16;
      return swift_willThrow();
    }

    return v18;
  }

  return result;
}

uint64_t sub_1B0DB5F1C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
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
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = *(result + 8);
    v14 = *(result + 16);
    v30 = *(result + 22);
    v31 = *(result + 20);

    sub_1B0DBBD6C(v11, v9, a3, a4, a5, a6, a7, v32);
    if (v8)
    {
      v19 = *v11;

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v31;
      *(v11 + 22) = v30;
      return swift_willThrow();
    }

    v21 = v32[13];
    a8[12] = v32[12];
    a8[13] = v21;
    v22 = v32[15];
    a8[14] = v32[14];
    a8[15] = v22;
    v23 = v32[9];
    a8[8] = v32[8];
    a8[9] = v23;
    v24 = v32[11];
    a8[10] = v32[10];
    a8[11] = v24;
    v25 = v32[5];
    a8[4] = v32[4];
    a8[5] = v25;
    v26 = v32[7];
    a8[6] = v32[6];
    a8[7] = v26;
    v27 = v32[1];
    *a8 = v32[0];
    a8[1] = v27;
    v28 = v32[3];
    a8[2] = v32[2];
    a8[3] = v28;
  }

  return result;
}

uint64_t sub_1B0DB60AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v7 = result;
    if (v5 >= a3)
    {
      sub_1B0439BCC();
      v13 = swift_allocError();
      *v15 = a3;
    }

    else
    {
      v8 = *result;
      v9 = *(result + 8);
      v10 = *(result + 16);
      v11 = *(result + 20);
      v12 = *(result + 22);
      if (a2 + 2 >= a3)
      {
        sub_1B0439BCC();
        v13 = swift_allocError();
        *v16 = a3;
      }

      else
      {

        sub_1B0441264(v7, v31);
        v13 = v4;
        if (!v4)
        {
          v14 = sub_1B0DFF2E8(v31[0], v31[1], v32 | (v33 << 32) | (v34 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 115);
          v7 = a4(v14);

          return v7;
        }
      }

      swift_willThrow();

      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
    }

    swift_willThrow();
    v35 = v13;
    v17 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v35 = v13;
      v18 = v13;
      if ((swift_dynamicCast() & 1) == 0)
      {

        return v7;
      }
    }

    if (v5 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v25 = a3;
      swift_willThrow();
    }

    else
    {
      v19 = *v7;
      v20 = *(v7 + 8);
      v21 = *(v7 + 16);
      v22 = *(v7 + 20);
      v23 = *(v7 + 22);

      v24 = sub_1B0DC10F8(v7, v5, a3, sub_1B0DBEB44);
      v27 = v26;
      v28 = v24;
      swift_beginAccess();
      v29 = *(v28 + 24) + ((v27 >> 24) & 0xFFFF00 | BYTE6(v27));
      v7 = sub_1B0E44C68();
    }

    return v7;
  }

  __break(1u);
  return result;
}

void sub_1B0DB6448(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

      sub_1B0DFE880(0x2A5CuLL, 0xE200000000000000, 0, 0, a1, v8, a3);
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

      sub_1B0DB8FBC(a1, v8, a3, a4, a5, a6, a7);
    }
  }
}

uint64_t sub_1B0DB6764@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
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
      *v26 = a3;
    }

    else
    {
      v13 = result;
      v14 = *result;
      v15 = *(result + 8);
      v40 = *(result + 20);
      v38 = *(result + 16);
      v39 = *(result + 22);

      v41 = v14;

      sub_1B0E035EC(v13, v9, a3, a4, a5, a6, a7);
      v37 = v18;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      if (!v8)
      {
        sub_1B0DBB824(v13, v9, a3, a4);
        v28 = v27;
        v35 = v29;
        sub_1B0E02F48(v13, v9, a3);
        v31 = v30;
        v33 = v32;

        v42[64] = v33 & 1;
        *&v43 = v37;
        *(&v43 + 1) = v20;
        *&v44 = v22;
        *(&v44 + 1) = v24;
        *v45 = v35;
        *&v45[8] = v28;
        *&v45[16] = v31;
        v45[24] = v33 & 1;
        v46[0] = v37;
        v46[1] = v20;
        v46[2] = v22;
        v46[3] = v24;
        v46[4] = v35;
        v46[5] = v28;
        v46[6] = v31;
        v47 = v33 & 1;
        sub_1B0DC3C80(&v43, v42);
        result = sub_1B0DC1F64(v46);
        v34 = v44;
        *a8 = v43;
        a8[1] = v34;
        a8[2] = *v45;
        *(a8 + 41) = *&v45[9];
        return result;
      }

      v25 = *v13;

      *v13 = v41;
      *(v13 + 8) = v15;
      *(v13 + 16) = v38;
      *(v13 + 20) = v40;
      *(v13 + 22) = v39;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0DB69C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
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
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = *(result + 8);
    v14 = *(result + 16);
    v24 = *(result + 22);
    v25 = *(result + 20);

    sub_1B0DBC2BC(v11, v9, a3, a4, a5, a6, a7, v26);
    if (v8)
    {
      v19 = *v11;

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v25;
      *(v11 + 22) = v24;
      return swift_willThrow();
    }

    v21 = v26[3];
    *(a8 + 32) = v26[2];
    *(a8 + 48) = v21;
    *(a8 + 64) = v27;
    v22 = v26[1];
    *a8 = v26[0];
    *(a8 + 16) = v22;
  }

  return result;
}

uint64_t sub_1B0DB6B14@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  if (!__OFADD__(a2, 1))
  {
    v83 = v17;
    v84 = v14;
    v85 = v13;
    v86 = v12;
    v87 = v11;
    v88 = v9;
    v89 = v8;
    v90 = v15;
    v91 = v16;
    if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v24 = a3;
      return swift_willThrow();
    }

    v8 = a1;
    v9 = *a1;
    LODWORD(v13) = *(a1 + 12);
    LODWORD(v14) = *(a1 + 16);
    v64 = *(a1 + 20);
    v65 = *(a1 + 8);
    v19 = a2 + 2;
    LOBYTE(v12) = *(a1 + 22);
    if (a2 + 2 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v25 = a3;
LABEL_16:
      swift_willThrow();
      *v8 = v9;
      *(v8 + 8) = v65;
      *(v8 + 12) = v13;
      *(v8 + 16) = v14;
      *(v8 + 20) = v64;
      *(v8 + 22) = v12;
      return swift_willThrow();
    }

    v21 = a2 + 3;
    v52 = a8;
    v53 = a2 + 3;
    if (a2 + 3 >= a3)
    {
      sub_1B0439BCC();
      v22 = swift_allocError();
      *v26 = a3;
      swift_retain_n();
    }

    else
    {
      swift_retain_n();

      sub_1B0DC3380(v8, v21, a3, v78);
      v22 = v10;
      if (!v10)
      {
        v45 = v78[1];
        v46 = v78[0];
        v49 = v80;
        v50 = v79;
        v48 = v81;
        v47 = v82;

        v44 = 0;
        goto LABEL_14;
      }

      v23 = *v8;

      *v8 = v9;
      *(v8 + 8) = v65;
      *(v8 + 12) = v13;
      *(v8 + 16) = v14;
      *(v8 + 20) = v64;
      *(v8 + 22) = v12;
    }

    swift_willThrow();
    v72[0] = v22;
    v27 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (!swift_dynamicCast())
    {

      goto LABEL_15;
    }

    LOBYTE(v71[0]) = 1;

    v49 = 0;
    v50 = 0;
    v48 = 0;
    v47 = 0;
    v44 = 1;
    v45 = 0u;
    v46 = 0u;
LABEL_14:
    sub_1B0DFE880(0x485455414C52553BuLL, 0xE90000000000003DLL, 0, 0, v8, v19, a3);
    v29 = sub_1B0DB832C(v8, v19, a3, a4, a5, a6, a7);
    v58 = v30;
    v62 = v31;

    v73 = v45;
    *v72 = v46;
    *&v74 = v50;
    *(&v74 + 1) = v49;
    *&v75 = v48;
    BYTE8(v75) = v47;
    BYTE9(v75) = v44;
    *&v76 = v29;
    *(&v76 + 1) = v58;
    v77 = v62;
    v32 = *v8;

    sub_1B0DFE880(0x3AuLL, 0xE100000000000000, 0, 0, v8, v19, a3);
    if (v53 < a3)
    {
      v63 = *v8;
      v33 = *(v8 + 8);
      v59 = *(v8 + 16);
      v56 = *(v8 + 20);
      v51 = *(v8 + 22);
      sub_1B0DFA19C(v8, v66);
      v11 = 0;
      v54 = sub_1B0DFF2E8(v66[0], v66[1], v67 | (v68 << 32) | (v69 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 2766);
      v60 = v36;

      sub_1B0DFE880(0x3AuLL, 0xE100000000000000, 0, 0, v8, v19, a3);
      goto LABEL_22;
    }

    sub_1B0439BCC();
    swift_allocError();
    *v34 = a3;
    swift_willThrow();
    v35 = *v8;

    sub_1B0DC20F8(v72);
LABEL_15:

    goto LABEL_16;
  }

  __break(1u);
LABEL_22:
  v37 = *v8;

  sub_1B0DB80B4(v71);
  if (v11)
  {
    sub_1B0DC20F8(v72);

    swift_willThrow();
    goto LABEL_15;
  }

  v38 = v71[0];
  v39 = v71[1];
  LOBYTE(v70) = v77;
  v40 = v73;
  v41 = *v72;
  v42 = v76;
  v43 = v74;
  *(v52 + 48) = v75;
  *(v52 + 64) = v42;
  *(v52 + 16) = v40;
  *(v52 + 32) = v43;
  *v52 = v41;
  *(v52 + 80) = v70;
  *(v52 + 88) = v54;
  *(v52 + 96) = v60;
  *(v52 + 104) = v38;
  *(v52 + 112) = v39;
  return result;
}

unint64_t sub_1B0DB70F0@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
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
      *v13 = a3;
      return swift_willThrow();
    }

    v7 = result;
    v8 = *result;
    v9 = *(result + 8);
    v10 = *(result + 16);
    v11 = *(result + 20);
    v12 = *(result + 22);
    sub_1B0436204(result);
    if (v5)
    {
      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
      return swift_willThrow();
    }

    v14 = *v7;
    v15 = *(v7 + 8);
    v16 = *(v7 + 16);
    v17 = *(v7 + 20);
    v18 = *(v7 + 22);
    sub_1B0441264(v7, v26);
    v19 = sub_1B0DFF2E8(v26[0], v26[1], v27 | (v28 << 32) | (v29 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 115);
    v20 = a4(v19);
    v22 = v21;

    result = sub_1B0441810(61, 0xE100000000000000, v20, v22);
    *a5 = v20;
    *(a5 + 8) = v22;
    *(a5 + 16) = result;
    *(a5 + 24) = v23 & 1;
  }

  return result;
}

uint64_t sub_1B0DB72C4(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  sub_1B0DFE880(0x2BuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7640, &unk_1B0EF5140);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B0EC1E50;
    v16 = swift_allocObject();
    v16[2] = a4;
    v16[3] = a5;
    v16[4] = a6;
    v16[5] = a7;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1B0DC3CDC;
    *(v17 + 24) = v16;
    *(inited + 32) = sub_1B0DC3CFC;
    *(inited + 40) = v17;
    v18 = swift_allocObject();
    v18[2] = a4;
    v18[3] = a5;
    v18[4] = a6;
    v18[5] = a7;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1B0DC3D14;
    *(v19 + 24) = v18;
    *(inited + 48) = sub_1B0DC3E50;
    *(inited + 56) = v19;
    *(inited + 64) = sub_1B0DB7818;
    *(inited + 72) = 0;
    swift_retain_n();
    v12 = sub_1B0D94304(inited, a1, a2, v12, 0xD000000000000020, 0x80000001B0F2FA10, 323);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
    swift_arrayDestroy();
  }

  return v12;
}

uint64_t sub_1B0DB751C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6 = __OFADD__(a2, 1);
  v7 = a2 + 1;
  if (!v6)
  {
    if (v7 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v14 = a3;
    }

    else
    {
      v9 = result;
      v3 = *result;
      v10 = *(result + 8);
      v11 = *(result + 16);
      v12 = *(result + 20);
      v13 = *(result + 22);
      sub_1B0436204(result);
      if (!v4)
      {
        v3 = sub_1B0DC0C0C(v9, a2, a3);
        v16 = v15;
        sub_1B0448078(v9, a2, a3);
        if (HIDWORD(v16) == v16)
        {
          sub_1B0436554();
          swift_allocError();
          *v17 = 0x6E776F6E6B6E55;
          v17[1] = 0xE700000000000000;
          v17[2] = 0xD000000000000020;
          v17[3] = 0x80000001B0F2FA10;
          v17[4] = 297;
          swift_willThrow();
        }

        return v3;
      }

      *v9 = v3;
      *(v9 + 8) = v10;
      *(v9 + 16) = v11;
      *(v9 + 20) = v12;
      *(v9 + 22) = v13;
    }

    swift_willThrow();
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DB76BC(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v10 = __OFADD__(a2, 1);
  v11 = a2 + 1;
  if (!v10)
  {
    if (v11 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
    }

    else
    {
      v13 = result;
      v15 = *result;
      v16 = *(result + 8);
      v17 = *(result + 16);
      v8 = *(result + 20);
      v18 = *(result + 22);
      sub_1B0436204(result);
      if (!v7)
      {
        v8 = sub_1B0441A0C(v13, a2, a3, a4, a5, a6, a7);
        sub_1B0448078(v13, a2, a3);
        return v8;
      }

      *v13 = v15;
      *(v13 + 8) = v16;
      *(v13 + 16) = v17;
      *(v13 + 20) = v8;
      *(v13 + 22) = v18;
    }

    swift_willThrow();
    return v8;
  }

  __break(1u);
  return result;
}

double sub_1B0DB7818@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B0448078(a1, *a2, a2[1]);
  if (!v3)
  {
    result = -3.10503618e231;
    *a3 = xmmword_1B0EF5030;
    *(a3 + 16) = 0xE000000000000000;
    *(a3 + 24) = 0;
  }

  return result;
}

uint64_t sub_1B0DB7860(uint64_t result, uint64_t a2, int64_t a3)
{
  v4 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v6 = result;
    if (v4 >= a3)
    {
      sub_1B0439BCC();
      v13 = swift_allocError();
      *v15 = a3;
    }

    else
    {
      v7 = *result;
      v8 = *(result + 8);
      v9 = *(result + 16);
      v10 = *(result + 20);
      v11 = *(result + 22);

      sub_1B0DC2934(v6, v4, a3);
      v13 = v3;
      if (!v3)
      {
        v24 = v12;

        goto LABEL_16;
      }

      v14 = *v6;

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
    }

    swift_willThrow();
    v25 = v13;
    v16 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v25 = v13;
      v17 = v13;
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v4 < a3)
    {
      v18 = *v6;
      v19 = *(v6 + 8);
      v20 = *(v6 + 16);
      v21 = *(v6 + 20);
      v22 = *(v6 + 22);
      v24 = sub_1B0DC3848(v6);
LABEL_16:

      return v24;
    }

    sub_1B0439BCC();
    swift_allocError();
    *v23 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DB7AD0(uint64_t result, uint64_t a2, int64_t a3)
{
  v4 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v6 = result;
    if (v4 >= a3)
    {
      sub_1B0439BCC();
      v13 = swift_allocError();
      *v15 = a3;
    }

    else
    {
      v7 = *result;
      v8 = *(result + 8);
      v9 = *(result + 16);
      v10 = *(result + 20);
      v11 = *(result + 22);

      v12 = sub_1B0DB7860(v6, v4, a3);
      v13 = v3;
      if (!v3)
      {
        v24 = v12;

        goto LABEL_16;
      }

      v14 = *v6;

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
    }

    swift_willThrow();
    v25 = v13;
    v16 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v25 = v13;
      v17 = v13;
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v4 < a3)
    {
      v18 = *v6;
      v19 = *(v6 + 8);
      v20 = *(v6 + 16);
      v21 = *(v6 + 20);
      v22 = *(v6 + 22);
      v24 = sub_1B0DC39F4(v6);
LABEL_16:

      return v24;
    }

    sub_1B0439BCC();
    swift_allocError();
    *v23 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DB7D70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
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
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = *(result + 8);
    v22 = *(result + 20);
    v23 = *(result + 16);
    v21 = *(result + 22);

    sub_1B0DB7EA8(v11, v9, a3, a4, a5, a6, a7, a8, &v24);
    if (v8)
    {
      v19 = *v11;

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v23;
      *(v11 + 20) = v22;
      *(v11 + 22) = v21;
      return swift_willThrow();
    }

    return v24;
  }

  return result;
}

char *sub_1B0DB7EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X7>, uint64_t *a9@<X8>)
{
  v40 = MEMORY[0x1E69E7CC0];

  a8(a1, &v40, a2, a3, a4, a5, a6, a7);
  if (v9)
  {
  }

  else
  {

    v20 = v40;
    v21 = *(v40 + 16);
    if (v21)
    {
      v22 = 0;
      v39 = v40 + 32;
      v23 = MEMORY[0x1E69E7CC0];
      while (v22 < *(v20 + 16))
      {
        v24 = a9;
        v25 = *(v39 + 8 * v22);
        v26 = *(v25 + 16);
        v27 = *(v23 + 2);
        v28 = v27 + v26;
        if (__OFADD__(v27, v26))
        {
          goto LABEL_23;
        }

        v29 = *(v39 + 8 * v22);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || v28 > *(v23 + 3) >> 1)
        {
          if (v27 <= v28)
          {
            v30 = v27 + v26;
          }

          else
          {
            v30 = v27;
          }

          result = sub_1B0C0C114(result, v30, 1, v23);
          v23 = result;
        }

        a9 = v24;
        if (*(v25 + 16))
        {
          v31 = *(v23 + 2);
          if ((*(v23 + 3) >> 1) - v31 < v26)
          {
            goto LABEL_25;
          }

          memcpy(&v23[v31 + 32], (v25 + 32), v26);

          if (v26)
          {
            v32 = *(v23 + 2);
            v33 = __OFADD__(v32, v26);
            v34 = v32 + v26;
            if (v33)
            {
              goto LABEL_26;
            }

            *(v23 + 2) = v34;
          }
        }

        else
        {

          if (v26)
          {
            goto LABEL_24;
          }
        }

        if (v21 == ++v22)
        {
          goto LABEL_21;
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
    }

    else
    {
      v23 = MEMORY[0x1E69E7CC0];
LABEL_21:

      v35 = *(v23 + 2);
      v36 = sub_1B0E44C68();
      v38 = v37;

      *a9 = v36;
      a9[1] = v38;
    }
  }

  return result;
}

uint64_t sub_1B0DB80B4@<X0>(uint64_t *a1@<X8>)
{
  result = ByteBuffer.readSlice(length:)(0x20uLL);
  if (!result)
  {
    sub_1B0D3EA30();
    swift_allocError();
    return swift_willThrow();
  }

  v5 = v3;
  v6 = HIDWORD(v3);
  v7 = v3;
  if (HIDWORD(v3) < v3)
  {
    goto LABEL_20;
  }

  v8 = (v4 >> 24) & 0xFFFF00 | BYTE6(v4);
  if (v6 <= (v4 - v8))
  {
    v9 = result;
    result = swift_beginAccess();
    if (v7 == v6)
    {
LABEL_5:
      swift_beginAccess();
      v10 = *(v9 + 24);
      v11 = sub_1B0E44C68();
      v13 = v12;

      *a1 = v11;
      a1[1] = v13;
      return result;
    }

    v14 = 0;
    while (v7 + v14 < v6)
    {
      if ((v6 - v5) <= v14)
      {
        goto LABEL_19;
      }

      if ((*(*(v9 + 24) + v8 + v7 + v14) - 58) < 0xF6u)
      {
        v15 = *(*(v9 + 24) + v8 + v7 + v14) - 65;
        v16 = v15 > 0x25;
        v17 = (1 << v15) & 0x3F0000003FLL;
        if (v16 || v17 == 0)
        {
          sub_1B0E46298();

          swift_beginAccess();
          v19 = *(v9 + 24);

          v20 = sub_1B0E44C68();
          v22 = v21;

          MEMORY[0x1B2726E80](v20, v22);

          sub_1B0436554();
          swift_allocError();
          *v23 = 0xD00000000000001BLL;
          v23[1] = 0x80000001B0F302A0;
          v23[2] = 0xD000000000000020;
          v23[3] = 0x80000001B0F2FA10;
          v23[4] = 498;
          swift_willThrow();
        }
      }

      ++v14;
      if (!(v7 - v6 + v14))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DB832C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7620, &unk_1B0EF5120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC4E20;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1B0DC37B0;
  *(v15 + 24) = v14;
  *(inited + 32) = sub_1B0DC37D0;
  *(inited + 40) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B0DC37E8;
  *(v17 + 24) = v16;
  *(inited + 48) = sub_1B0DC3E38;
  *(inited + 56) = v17;
  *(inited + 64) = sub_1B0DB86E0;
  *(inited + 72) = 0;
  *(inited + 80) = sub_1B0DB8738;
  *(inited + 88) = 0;
  swift_retain_n();
  v18 = sub_1B0D945E0(inited, a1, a2, a3, 0xD000000000000020, 0x80000001B0F2FA10, 567);
  if (v22)
  {
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
    return swift_arrayDestroy();
  }

  else
  {
    v20 = v18;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
    swift_arrayDestroy();
    return v20;
  }
}

uint64_t sub_1B0DB8564(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1B0DFE880(0x2B74696D627573uLL, 0xE700000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    return sub_1B0DB7D70(a1, a2, a3, a4, a5, a6, a7, sub_1B0E08010);
  }

  return result;
}

uint64_t sub_1B0DB8624(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1B0DFE880(0x2B72657375uLL, 0xE500000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    return sub_1B0DB7D70(a1, a2, a3, a4, a5, a6, a7, sub_1B0E08010);
  }

  return result;
}

uint64_t sub_1B0DB86E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1B0DFE880(0x7265737568747561uLL, 0xE800000000000000, 0, 0, a1, *a2, a2[1]);
  if (!v3)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
  }

  return result;
}

double sub_1B0DB8738@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B0DFE880(0x756F6D796E6F6E61uLL, 0xE900000000000073, 0, 0, a1, *a2, a2[1]);
  if (!v3)
  {
    *&result = 1;
    *a3 = xmmword_1B0ECE570;
    *(a3 + 16) = 2;
  }

  return result;
}

unint64_t sub_1B0DB879C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
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
      *v15 = a3;
      return swift_willThrow();
    }

    v7 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_1B0DFACB0(result, v18);
    if (v4)
    {
      *v7 = v9;
      *(v7 + 8) = v10;
      *(v7 + 16) = v11;
      *(v7 + 20) = v12;
      *(v7 + 22) = v13;
      return swift_willThrow();
    }

    v16 = sub_1B0DFF2E8(v18[0], v18[1], v19 | (v20 << 32) | (v21 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 628);
    v17 = a4(v16);

    return v17;
  }

  return result;
}

uint64_t sub_1B0DB88F4(uint64_t a1, uint64_t a2, int64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B0DB5660(a1, a2, a3, a4);
  if (v4)
  {
    return result;
  }

  v7 = result;
  result = sub_1B0D8ADBC(result, v6);
  if (!v8)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 92 && v8 == 0xE100000000000000)
  {

    return v7;
  }

  v9 = sub_1B0E46A78();

  result = v7;
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1B0DB89A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42F8, &unk_1B0EC4E40);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B0EC1E70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7610, &qword_1B0EF5110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC3500;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1B0DC1F08;
  *(v16 + 24) = v15;
  *(inited + 32) = sub_1B0DC1F28;
  *(inited + 40) = v16;
  v17 = swift_allocObject();
  v57 = a2;
  v58 = a4;
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v56 = a5;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B0DC1F44;
  *(v18 + 24) = v17;
  *(inited + 48) = sub_1B0DC3E20;
  *(inited + 56) = v18;
  swift_retain_n();
  v19 = sub_1B0D948B8(inited, a1, a6, a8, 0xD000000000000020, 0x80000001B0F2FA10, 600);
  if (v61)
  {
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
    swift_arrayDestroy();
    *(v13 + 16) = 0;
  }

  v22 = v19;
  v23 = v20;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
  result = swift_arrayDestroy();
  *(v13 + 32) = v22;
  *(v13 + 40) = v23;
  if (__OFADD__(a6, 1))
  {
    __break(1u);
  }

  else
  {
    v24 = a8;
    if (a6 + 1 >= a8)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v46 = a8;
    }

    else
    {
      v25 = *a1;
      v26 = *(a1 + 8);
      v27 = *(a1 + 16);
      v28 = *(a1 + 20);
      v29 = a6 + 2;
      v30 = *(a1 + 22);

      if (a6 + 2 < a8)
      {
        v52 = a1;
        v53 = a3;
        v31 = v58;
        while (1)
        {
          v32 = *a1;
          v33 = *(a1 + 8);
          v34 = *(a1 + 16);
          v54 = *(a1 + 22);
          v55 = *(a1 + 20);

          sub_1B0DFE880(0x20uLL, 0xE100000000000000, 0, 0, a1, v29, v24);
          v60 = v13;
          v35 = swift_initStackObject();
          *(v35 + 16) = xmmword_1B0EC3500;
          v36 = swift_allocObject();
          v36[2] = v57;
          v36[3] = v53;
          v36[4] = v31;
          v36[5] = v56;
          v37 = swift_allocObject();
          *(v37 + 16) = sub_1B0DC3E68;
          *(v37 + 24) = v36;
          *(v35 + 32) = sub_1B0DC3E20;
          *(v35 + 40) = v37;
          v38 = swift_allocObject();
          v38[2] = v57;
          v38[3] = v53;
          v38[4] = v31;
          v38[5] = v56;
          v39 = swift_allocObject();
          *(v39 + 16) = sub_1B0DC3E80;
          *(v39 + 24) = v38;
          *(v35 + 48) = sub_1B0DC3E20;
          *(v35 + 56) = v39;
          a1 = v52;
          swift_retain_n();
          v40 = sub_1B0D948B8(v35, v52, v29, a8, 0xD000000000000020, 0x80000001B0F2FA10, 600);
          v42 = v41;
          swift_setDeallocating();
          swift_arrayDestroy();

          v13 = v60;
          v44 = *(v60 + 16);
          v43 = *(v60 + 24);
          if (v44 >= v43 >> 1)
          {
            v13 = sub_1B0AFF1F4((v43 > 1), v44 + 1, 1, v60);
          }

          v31 = v58;
          *(v13 + 16) = v44 + 1;
          v45 = v13 + 16 * v44;
          *(v45 + 32) = v40;
          *(v45 + 40) = v42;
          v24 = a8;
        }
      }

      sub_1B0439BCC();
      v47 = swift_allocError();
      *v48 = a8;
      swift_willThrow();
      v49 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {

        *a7 = v13;
        return result;
      }

      v50 = *a1;

      *a1 = v25;
      *(a1 + 8) = v26;
      *(a1 + 16) = v27;
      *(a1 + 20) = v28;
      *(a1 + 22) = v30;
    }

    swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0DB8FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7610, &qword_1B0EF5110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC3500;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1B0DC3E68;
  *(v15 + 24) = v14;
  *(inited + 32) = sub_1B0DC3E20;
  *(inited + 40) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B0DC3E80;
  *(v17 + 24) = v16;
  *(inited + 48) = sub_1B0DC3E20;
  *(inited + 56) = v17;
  swift_retain_n();
  v18 = sub_1B0D948B8(inited, a1, a2, a3, 0xD000000000000020, 0x80000001B0F2FA10, 600);
  if (v22)
  {
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
    return swift_arrayDestroy();
  }

  else
  {
    v20 = v18;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
    swift_arrayDestroy();
    return v20;
  }
}

uint64_t sub_1B0DB91C4(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
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

    sub_1B0DB92EC(v10, v8, a3, a4, a5, a6, a7, &v22);
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

uint64_t sub_1B0DB92EC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  result = sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v66 = a8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E37F8, &qword_1B0EA2E00);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1B0EC1E70;
    v19 = sub_1B0DB3AC0(a1, a2, a3, a4, a5, a6, a7);
    v21 = v20;
    v67 = a1;
    v68 = v18;
    v62 = a4;
    v63 = a5;
    v64 = a6;
    v65 = a7;
    v69 = a2;
    v22 = v19;
    swift_beginAccess();
    v23 = *(v22 + 24) + ((v21 >> 24) & 0xFFFF00 | BYTE6(v21));
    v24 = sub_1B0E44C68();
    v26 = v25;
    v27 = v68;

    *(v68 + 32) = v24;
    *(v68 + 40) = v26;
    v28 = v69;
    if (__OFADD__(v69, 1))
    {
      __break(1u);
    }

    else
    {
      v29 = a3;
      if (v69 + 1 >= a3)
      {
        sub_1B0439BCC();
        swift_allocError();
        *v50 = a3;
      }

      else
      {
        v30 = a1;
        v31 = *(a1 + 8);
        v59 = *(a1 + 20);
        v60 = *(a1 + 16);
        v58 = *(a1 + 22);
        v61 = *a1;

        if (v69 + 2 >= v29)
        {
          sub_1B0439BCC();
          v51 = swift_allocError();
          *v52 = v29;
        }

        else
        {
          v32 = *a1;
          v33 = *(a1 + 8);
          v34 = *(a1 + 16);
          v35 = *(a1 + 20);
          v36 = *(a1 + 22);
          if (v69 + 3 < v29)
          {
            v37 = v68;
            do
            {
              v38 = v29;
              v39 = v37;
              swift_retain_n();
              sub_1B0436204(v30);

              v40 = sub_1B0DB3AC0(v30, v69 + 2, v38, v62, v63, v64, v65);
              v42 = v41;
              swift_beginAccess();
              v43 = *(v40 + 24) + ((v42 >> 24) & 0xFFFF00 | BYTE6(v42));
              v44 = sub_1B0E44C68();
              v46 = v45;

              v37 = v39;
              v48 = *(v39 + 2);
              v47 = *(v39 + 3);
              if (v48 >= v47 >> 1)
              {
                v37 = sub_1B0AFF0E8((v47 > 1), v48 + 1, 1, v39);
              }

              v29 = 0;
              *(v37 + 2) = v48 + 1;
              v49 = &v37[16 * v48];
              *(v49 + 4) = v44;
              *(v49 + 5) = v46;
              v30 = v67;
              v27 = v68;
              v32 = *v67;
              v33 = *(v67 + 8);
              v34 = *(v67 + 16);
              v35 = *(v67 + 20);
              v36 = *(v67 + 22);
              v28 = v69;
            }

            while (v69 + 3 < 0);
          }

          sub_1B0439BCC();
          v53 = swift_allocError();
          *v54 = v29;

          swift_willThrow();
          v55 = *v30;

          *v30 = v32;
          *(v30 + 8) = v33;
          *(v30 + 16) = v34;
          *(v30 + 20) = v35;
          *(v30 + 22) = v36;
          v51 = v53;
        }

        swift_willThrow();
        v56 = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
        if (swift_dynamicCast())
        {

          result = sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v30, v28, v29);
          *v66 = v27;
          return result;
        }

        v57 = *v30;

        *v30 = v61;
        *(v30 + 8) = v31;
        *(v30 + 16) = v60;
        *(v30 + 20) = v59;
        *(v30 + 22) = v58;
      }

      swift_willThrow();
    }
  }

  return result;
}

void sub_1B0DB9808(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      v19 = swift_allocError();
      *v21 = a3;
    }

    else
    {
      v13 = *a1;
      v14 = *(a1 + 8);
      v15 = *(a1 + 16);
      v16 = *(a1 + 20);
      v17 = *(a1 + 22);

      sub_1B0DB9DD0(a1, v9, a3, a4, a5, a6, a7, v57);
      v19 = v8;
      if (!v8)
      {
        v71 = v57[8];
        v72 = v57[9];
        v73 = v57[10];
        v74 = v57[11];
        v67 = v57[4];
        v68 = v57[5];
        v69 = v57[6];
        v70 = v57[7];
        v63 = v57[0];
        v64 = v57[1];
        v65 = v57[2];
        v66 = v57[3];

LABEL_15:
        v34 = v72;
        a8[8] = v71;
        a8[9] = v34;
        v35 = v74;
        a8[10] = v73;
        a8[11] = v35;
        v36 = v68;
        a8[4] = v67;
        a8[5] = v36;
        v37 = v70;
        a8[6] = v69;
        a8[7] = v37;
        v38 = v64;
        *a8 = v63;
        a8[1] = v38;
        v39 = v66;
        a8[2] = v65;
        a8[3] = v39;
        return;
      }

      v20 = *a1;

      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
      *(a1 + 20) = v16;
      *(a1 + 22) = v17;
    }

    swift_willThrow();
    v56 = v19;
    v22 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v56 = v19;
      v23 = v19;
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }
    }

    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v29 = a3;
      swift_willThrow();
      return;
    }

    v24 = *a1;
    v25 = *(a1 + 8);
    v26 = *(a1 + 16);
    v27 = *(a1 + 20);
    v28 = *(a1 + 22);

    sub_1B0DB9B5C(a1, v9, a3, a4, a5, a6, a7, v58);
    v30 = v58[0];
    v31 = v58[1];
    LODWORD(v26) = v59;
    LOBYTE(v27) = v60;
    v32 = v61;
    v33 = v62;

    *&v44 = v30;
    *(&v44 + 1) = v31;
    LODWORD(v45) = v26;
    BYTE4(v45) = v27;
    *(&v45 + 1) = v32;
    *&v46 = v33;
    sub_1B0DC2068(&v44);
    v71 = v52;
    v72 = v53;
    v73 = v54;
    v74 = v55;
    v67 = v48;
    v68 = v49;
    v69 = v50;
    v70 = v51;
    v63 = v44;
    v64 = v45;
    v65 = v46;
    v66 = v47;
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_1B0DB9B5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
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
    }

    else
    {
      v11 = result;
      v12 = *(result + 8);
      v32 = *(result + 20);
      v33 = *(result + 16);
      v31 = *(result + 22);
      v34 = *result;
      if (a2 + 2 >= a3)
      {
        sub_1B0439BCC();
        swift_allocError();
        *v21 = a3;
      }

      else
      {
        swift_retain_n();
        v17 = sub_1B0DB7D70(v11, v9 + 1, a3, a4, a5, a6, a7, sub_1B0E069F4);
        if (!v8)
        {
          v28 = v17;
          v29 = v18;
          sub_1B0E03A64(v11, v9 + 1, a3);
          v27 = v22;

          sub_1B0E03894(v11, v9, a3, a4, a5, a6, a7);
          v24 = v23;
          v26 = v25;

          *a8 = v28;
          *(a8 + 8) = v29;
          *(a8 + 16) = v27;
          *(a8 + 20) = BYTE4(v27) & 1;
          *(a8 + 24) = v24;
          *(a8 + 32) = v26;
          return result;
        }

        v19 = *v11;
      }

      swift_willThrow();
      *v11 = v34;
      *(v11 + 8) = v12;
      *(v11 + 16) = v33;
      *(v11 + 20) = v32;
      *(v11 + 22) = v31;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0DB9DD0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_1B0DB69C8(a1, a2, a3, a4, a5, a6, a7, v60);
  if (!v8)
  {
    v57 = v60[2];
    v58 = v60[3];
    v59 = v61;
    v55 = v60[0];
    v56 = v60[1];
    v18 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      if (v18 >= a3)
      {
        sub_1B0439BCC();
        v21 = swift_allocError();
        *v22 = a3;

        swift_willThrow();
        v54 = v21;
        v23 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
        if (!swift_dynamicCast())
        {
          sub_1B0DC2084(v60);
        }

        v24 = 0;
        v25 = 0;
        v26 = 0;
        v31 = 0uLL;
        v32 = 0uLL;
        v30 = 0uLL;
        v29 = 0uLL;
        v28 = 0uLL;
        v27 = 0uLL;
      }

      else
      {
        v19 = *a1;
        v20 = *(a1 + 8);
        v46 = *(a1 + 16);
        v44 = *(a1 + 20);
        v42 = *(a1 + 22);

        sub_1B0DB6B14(a1, v18, a3, a4, a5, a6, a7, v62);
        v45 = v62[0];
        v47 = v62[1];
        v41 = v62[2];
        v43 = v62[3];
        v39 = v62[4];
        v40 = v62[5];
        v24 = v63;
        v25 = v64;
        v26 = v65;

        v28 = v39;
        v27 = v40;
        v30 = v41;
        v29 = v43;
        v31 = v45;
        v32 = v47;
      }

      v50 = v57;
      v51 = v58;
      *v52 = v59;
      v48 = v55;
      v49 = v56;
      *&v52[8] = v31;
      *&v52[24] = v32;
      *&v52[40] = v30;
      *&v52[56] = v29;
      *&v52[72] = v28;
      *&v52[88] = v27;
      *&v52[104] = v24;
      *&v53 = v25;
      *(&v53 + 1) = v26;
      result = sub_1B0DC20D8(&v48);
      v33 = *&v52[80];
      a8[8] = *&v52[64];
      a8[9] = v33;
      v34 = v53;
      a8[10] = *&v52[96];
      a8[11] = v34;
      v35 = *&v52[16];
      a8[4] = *v52;
      a8[5] = v35;
      v36 = *&v52[48];
      a8[6] = *&v52[32];
      a8[7] = v36;
      v37 = v49;
      *a8 = v48;
      a8[1] = v37;
      v38 = v51;
      a8[2] = v50;
      a8[3] = v38;
    }
  }

  return result;
}

uint64_t sub_1B0DBA0A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

    sub_1B0DB7EA8(v10, v8, a3, a4, a5, a6, a7, sub_1B0E07254, &v22);
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

void sub_1B0DBA1E4(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  sub_1B0DFE880(0x3D485455413BuLL, 0xE600000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v37 = a5;
    v38 = a6;
    v39 = a7;
    v36 = a8;
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
        v23 = swift_allocError();
        *v24 = a3;
        swift_willThrow();
        v40 = v23;
        v25 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
        if (swift_dynamicCast())
        {
        }

        else
        {

          v40 = v23;
          v26 = v23;
          if ((swift_dynamicCast() & 1) == 0)
          {

            return;
          }
        }

        if (v17 >= a3)
        {
          sub_1B0439BCC();
          swift_allocError();
          *v31 = a3;
          swift_willThrow();
          return;
        }

        v27 = *a1;
        v28 = *(a1 + 8);
        v29 = *(a1 + 16);
        v30 = *(a1 + 20);
        v35 = *(a1 + 22);

        v32 = sub_1B0DBA0A8(a1, v17, a3, a4, v37, v38, v39);
        v33 = v34;
      }

      else
      {
        v18 = *a1;
        v19 = *(a1 + 8);
        v20 = *(a1 + 16);
        v21 = *(a1 + 20);
        v22 = *(a1 + 22);

        sub_1B0DFE880(0x2AuLL, 0xE100000000000000, 0, 0, a1, v17, a3);

        v32 = 0;
        v33 = 0;
      }

      *v36 = v32;
      v36[1] = v33;
    }
  }
}

uint64_t sub_1B0DBA4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v16 = sub_1B0DB4268(a1, a2, a3, a4, a5, a6, a7, sub_1B0DBEB44);
  if (v7)
  {
    return v8;
  }

  result = sub_1B0DFF2E8(v16, v17, v18 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 849);
  if (!__OFADD__(a2, 1))
  {
    if (a2 + 1 >= a3)
    {

      sub_1B0439BCC();
      swift_allocError();
      *v21 = a3;
      swift_willThrow();
    }

    else
    {
      v8 = result;
      v20 = *(a1 + 8);
      v26 = *(a1 + 20);
      v27 = *(a1 + 16);
      v25 = *(a1 + 22);
      v28 = *a1;

      sub_1B0436204(a1);

      sub_1B0DB3F50(a1, a2, a3, a4, a5, a6, a7);
      if (v22)
      {
        sub_1B0DF0B3C(v22, v23, v24 & 0xFFFFFFFFFFFFFFLL);

        return v8;
      }
    }

    return v8;
  }

  __break(1u);
  return result;
}

void sub_1B0DBA738(uint64_t a1, uint64_t a2, int64_t a3)
{
  sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v3)
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
        v12 = swift_allocError();
        *v13 = a3;
      }

      else
      {
        v7 = *a1;
        v8 = *(a1 + 8);
        v9 = *(a1 + 16);
        v10 = *(a1 + 20);
        v11 = *(a1 + 22);
        if (a2 + 2 < a3)
        {
          sub_1B0436204(a1);
LABEL_10:
          sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
          sub_1B041D794(MEMORY[0x1E69E7CC0]);
          return;
        }

        sub_1B0439BCC();
        v14 = swift_allocError();
        *v15 = a3;
        swift_willThrow();
        v12 = v14;
        *a1 = v7;
        *(a1 + 8) = v8;
        *(a1 + 16) = v9;
        *(a1 + 20) = v10;
        *(a1 + 22) = v11;
      }

      v16 = v12;
      swift_willThrow();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {

        goto LABEL_10;
      }
    }
  }
}

void sub_1B0DBA91C(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (v7)
  {
    return;
  }

  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return;
  }

  v54 = a4;
  v55 = a6;
  v56 = a7;
  v57 = a5;
  v53 = a2 + 1;
  if (a2 + 1 >= a3)
  {
    sub_1B0439BCC();
    v20 = swift_allocError();
    *v21 = a3;
LABEL_8:
    swift_willThrow();
    v58[0] = v20;
    v24 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (!swift_dynamicCast())
    {

      return;
    }

    goto LABEL_10;
  }

  v15 = *a1;
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  v18 = *(a1 + 20);
  v19 = *(a1 + 22);
  if (a2 + 2 >= a3)
  {
    sub_1B0439BCC();
    v22 = swift_allocError();
    *v23 = a3;
    v20 = v22;
    swift_willThrow();
    *a1 = v15;
    *(a1 + 8) = v16;
    *(a1 + 16) = v17;
    *(a1 + 20) = v18;
    *(a1 + 22) = v19;
    goto LABEL_8;
  }

  sub_1B0436204(a1);
LABEL_10:
  v25 = sub_1B0DBA4DC(a1, a2, a3, v54, v57, v55, v56);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7630, &qword_1B0EF5130);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC1E70;
  *(inited + 32) = v25;
  v33 = inited + 32;
  *(inited + 40) = v27;
  *(inited + 48) = v29;
  *(inited + 56) = v31;
  v34 = sub_1B041D794(inited);
  v36 = v35;
  v38 = v37;
  swift_setDeallocating();
  sub_1B0398EFC(v33, &qword_1EB6E7638, &qword_1B0EF5138);
  v58[0] = v34;
  v58[1] = v36;
  v58[2] = v38;
  if (v53 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v43 = a3;

    swift_willThrow();

    return;
  }

  v39 = *a1;
  v40 = *(a1 + 8);
  v52 = *(a1 + 16);
  v41 = *(a1 + 20);
  v42 = *(a1 + 22);
  swift_retain_n();

  sub_1B0DFB4B0(a1, v53, a3, v58, v54, v57, v55, v56);

  v44 = *a1;
  v45 = *(a1 + 8);
  v46 = *(a1 + 16);
  v47 = *(a1 + 20);
  v48 = *(a1 + 22);
  if (a2 + 2 < a3)
  {
    sub_1B0436204(a1);
LABEL_18:
    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    return;
  }

  sub_1B0439BCC();
  v49 = swift_allocError();
  *v50 = a3;
  swift_willThrow();
  *a1 = v44;
  *(a1 + 8) = v45;
  *(a1 + 16) = v46;
  *(a1 + 20) = v47;
  *(a1 + 22) = v48;
  swift_willThrow();
  v51 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast())
  {

    goto LABEL_18;
  }
}

unint64_t sub_1B0DBADF0(unint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v16 = a3;
    }

    else
    {
      v11 = result;
      v32 = a6;
      v33 = a7;
      v12 = *result;
      v13 = *(result + 8);
      v8 = *(result + 16);
      v14 = *(result + 20);
      v34 = *(result + 22);
      v35 = v14;

      sub_1B0DFE880(0x2FuLL, 0xE100000000000000, 0, 0, v11, v9, a3);
      if (v7)
      {
        v15 = *v11;
      }

      else
      {
        v17 = *v11;
        if (v9 + 1 >= a3)
        {
          v19 = *v11;

          sub_1B0439BCC();
          swift_allocError();
          *v20 = a3;
        }

        else
        {
          v18 = *v11;

          sub_1B0DFE880(0x4C4149545241503BuLL, 0xE90000000000003DLL, 0, 0, v11, v9 + 1, a3);
          v31 = v17;
          v21 = v9 + 2;
          v22 = *v11;
          if (v21 >= a3)
          {
            v24 = *v11;

            sub_1B0439BCC();
            swift_allocError();
            *v25 = a3;
            swift_willThrow();
          }

          else
          {
            v30 = v8;

            v23 = sub_1B0DFF3DC(v11, v21, a3, 1);
            v8 = v23;
            if ((v23 & 0x8000000000000000) == 0)
            {
              v29 = &v29;
              MEMORY[0x1EEE9AC00](v23);
              sub_1B0E0303C(v11, v21, a3, sub_1B0DC3E98);

              return v8;
            }

            v27 = *v11;

            sub_1B0436554();
            swift_allocError();
            *v28 = 0xD000000000000011;
            v28[1] = 0x80000001B0F2FEE0;
            v28[2] = 0xD000000000000020;
            v28[3] = 0x80000001B0F2FA10;
            v28[4] = 202;
            swift_willThrow();

            swift_willThrow();

            v8 = v30;
          }
        }

        swift_willThrow();
      }

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v8;
      v26 = v34;
      *(v11 + 20) = v35;
      *(v11 + 22) = v26;
    }

    swift_willThrow();
    return v8;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0DBB188(unint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v16 = a3;
    }

    else
    {
      v11 = result;
      v27 = a6;
      v28 = a7;
      v12 = *result;
      v13 = *(result + 8);
      v8 = *(result + 16);
      v14 = *(result + 20);
      v29 = *(result + 22);

      sub_1B0DFE880(0x4C4149545241503BuLL, 0xE90000000000003DLL, 0, 0, v11, v9, a3);
      if (v7)
      {
        v15 = *v11;
      }

      else
      {
        v26 = v14;
        v17 = v9 + 1;
        v18 = *v11;
        if (v17 >= a3)
        {
          v20 = *v11;

          sub_1B0439BCC();
          swift_allocError();
          *v21 = a3;
          swift_willThrow();
        }

        else
        {
          v25 = v8;

          v19 = sub_1B0DFF3DC(v11, v17, a3, 1);
          v8 = v19;
          if ((v19 & 0x8000000000000000) == 0)
          {
            v24[1] = v24;
            MEMORY[0x1EEE9AC00](v19);
            sub_1B0E0303C(v11, v17, a3, sub_1B0DC3C10);

            return v8;
          }

          v22 = *v11;

          sub_1B0436554();
          swift_allocError();
          *v23 = 0xD000000000000011;
          v23[1] = 0x80000001B0F2FEE0;
          v23[2] = 0xD000000000000020;
          v23[3] = 0x80000001B0F2FA10;
          v23[4] = 202;
          swift_willThrow();

          swift_willThrow();
          v8 = v25;
        }

        LOWORD(v14) = v26;
      }

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v8;
      *(v11 + 20) = v14;
      *(v11 + 22) = v29;
    }

    swift_willThrow();
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DBB478(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

      sub_1B0DFE880(0x4F49544345533B2FuLL, 0xEA00000000003D4ELL, 0, 0, v10, v8, v9);
      if (!v7)
      {
        v9 = sub_1B0DB7D70(v10, v8, v9, a4, a5, a6, a7, sub_1B0E0793C);

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

uint64_t sub_1B0DBB5F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
      *v26 = a3;
      return swift_willThrow();
    }

    v12 = result;
    v13 = *result;
    v14 = *(result + 8);
    v31 = *(result + 16);
    v32 = v7;
    v15 = *(result + 20);
    v16 = *(result + 22);

    v30 = a6;
    v19 = a6;
    v20 = v15;
    v21 = v32;
    sub_1B0E01B68(v12, v8, a3, a4, a5, v19, a7);
    v29 = v22;
    v33 = v23;

    if (v21)
    {
LABEL_9:
      v28 = *v12;

      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v31;
      *(v12 + 20) = v20;
      *(v12 + 22) = v16;
      return swift_willThrow();
    }

    sub_1B0E01B94(v12, v8, a3, a4, a5, v30, a7);
    v25 = v24;

    if (!v33 && v25 == 1)
    {
      sub_1B0436554();
      swift_allocError();
      *v27 = 0xD000000000000021;
      v27[1] = 0x80000001B0F30370;
      v27[2] = 0xD000000000000020;
      v27[3] = 0x80000001B0F2FA10;
      v27[4] = 1398;
      swift_willThrow();
      goto LABEL_9;
    }

    return v29;
  }

  return result;
}

void sub_1B0DBB824(unint64_t a1, uint64_t a2, int64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v5 >= a3)
    {
      sub_1B0439BCC();
      v14 = swift_allocError();
      *v16 = a3;
    }

    else
    {
      v8 = *a1;
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      v11 = *(a1 + 20);
      v12 = *(a1 + 22);

      sub_1B0DC22A4(a1, v5, a3, a4);
      v14 = v4;
      if (!v4)
      {
        goto LABEL_21;
      }

      v15 = *a1;

      *a1 = v8;
      *(a1 + 8) = v9;
      *(a1 + 16) = v10;
      *(a1 + 20) = v11;
      *(a1 + 22) = v12;
    }

    swift_willThrow();
    v34 = v14;
    v17 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v34 = v14;
      v18 = v14;
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v5 < a3)
    {
      v19 = *a1;
      v20 = *(a1 + 8);
      v21 = *(a1 + 16);
      v22 = *(a1 + 20);
      v23 = *(a1 + 22);

      sub_1B0DC2C8C(a1, v5, a3);
LABEL_21:

      return;
    }

    sub_1B0439BCC();
    v24 = swift_allocError();
    *v25 = a3;
    swift_willThrow();
    v34 = v24;
    v26 = v24;
    if (swift_dynamicCast())
    {

LABEL_16:

      if (v5 >= a3)
      {
        sub_1B0439BCC();
        swift_allocError();
        *v33 = a3;
        swift_willThrow();
        return;
      }

      v28 = *a1;
      v29 = *(a1 + 8);
      v30 = *(a1 + 16);
      v31 = *(a1 + 20);
      v32 = *(a1 + 22);

      sub_1B0DC2F40(a1, v5, a3);
      goto LABEL_21;
    }

    v34 = v24;
    v27 = v24;
    if (swift_dynamicCast())
    {

      goto LABEL_16;
    }

LABEL_18:

    return;
  }

  __break(1u);
}

unint64_t sub_1B0DBBBE8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
      v11 = result;
      v12 = *result;
      v13 = *(result + 8);
      v14 = *(result + 16);
      v21 = *(result + 22);
      v22 = *(result + 20);
      v8 = a5;

      v18 = sub_1B0DB7D70(v11, v9, a3, a4, v8, a6, a7, sub_1B0E069F4);
      if (!v7)
      {
        v8 = v18;
        sub_1B0E03A64(v11, v9, a3);

        return v8;
      }

      v19 = *v11;

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v22;
      *(v11 + 22) = v21;
    }

    swift_willThrow();
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DBBD6C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_1B0DFE880(0x2F2F3A70616D69uLL, 0xE700000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    sub_1B0DB6764(a1, a2, a3, a4, a5, a6, a7, v97);
    result = sub_1B0DFE880(0x2FuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v18 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      if (v18 >= a3)
      {
        sub_1B0439BCC();
        v21 = swift_allocError();
        *v22 = a3;

        swift_willThrow();
        v36[0] = v21;
        v23 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
        if (!swift_dynamicCast())
        {
          sub_1B0DC1F64(v97);
        }

        sub_1B0D2E930(&v69);
      }

      else
      {
        v19 = *a1;
        v20 = *(a1 + 8);
        v33 = *(a1 + 20);
        v34 = *(a1 + 16);
        v32 = *(a1 + 22);

        sub_1B0DB9808(a1, v18, a3, a4, a5, a6, a7, v99);
        v77 = v99[8];
        v78 = v99[9];
        v79 = v99[10];
        v80 = v99[11];
        v73 = v99[4];
        v74 = v99[5];
        v75 = v99[6];
        v76 = v99[7];
        v69 = v99[0];
        v70 = v99[1];
        v71 = v99[2];
        v72 = v99[3];

        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v69);
      }

      v93 = v77;
      v94 = v78;
      v95 = v79;
      v96 = v80;
      v89 = v73;
      v90 = v74;
      v91 = v75;
      v92 = v76;
      v85 = v69;
      v86 = v70;
      v87 = v71;
      v88 = v72;
      sub_1B0D2E930(v51);
      *v36 = v97[0];
      v37 = v97[1];
      *v38 = v98[0];
      *&v38[9] = *(v98 + 9);
      v52[8] = v51[8];
      v52[9] = v51[9];
      v52[10] = v51[10];
      v52[11] = v51[11];
      v52[4] = v51[4];
      v52[5] = v51[5];
      v52[6] = v51[6];
      v52[7] = v51[7];
      v52[0] = v51[0];
      v52[1] = v51[1];
      v52[2] = v51[2];
      v52[3] = v51[3];
      sub_1B0398EFC(v52, &qword_1EB6E7618, &qword_1B0EF5118);
      v47 = v93;
      v48 = v94;
      v49 = v95;
      v50 = v96;
      v43 = v89;
      v44 = v90;
      v45 = v91;
      v46 = v92;
      v39 = v85;
      v40 = v86;
      v41 = v87;
      v42 = v88;
      v65 = v93;
      v66 = v94;
      v67 = v95;
      v68 = v96;
      v61 = v89;
      v62 = v90;
      v63 = v91;
      v64 = v92;
      v57 = v85;
      v58 = v86;
      v59 = v87;
      v60 = v88;
      v53 = *v36;
      v54 = v37;
      v55 = *v38;
      v56 = *&v38[16];
      v81 = v93;
      v82 = v94;
      v83 = v95;
      v84 = v96;
      v77 = v89;
      v78 = v90;
      v79 = v91;
      v80 = v92;
      v73 = v85;
      v74 = v86;
      v75 = v87;
      v76 = v88;
      v69 = *v36;
      v70 = v37;
      v71 = *v38;
      v72 = *&v38[16];
      sub_1B0DC1FB8(&v53, v35);
      result = sub_1B0DC2014(&v69);
      v24 = v66;
      a8[12] = v65;
      a8[13] = v24;
      v25 = v68;
      a8[14] = v67;
      a8[15] = v25;
      v26 = v62;
      a8[8] = v61;
      a8[9] = v26;
      v27 = v64;
      a8[10] = v63;
      a8[11] = v27;
      v28 = v58;
      a8[4] = v57;
      a8[5] = v28;
      v29 = v60;
      a8[6] = v59;
      a8[7] = v29;
      v30 = v54;
      *a8 = v53;
      a8[1] = v30;
      v31 = v56;
      a8[2] = v55;
      a8[3] = v31;
    }
  }

  return result;
}

uint64_t sub_1B0DBC2BC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_1B0DBBBE8(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    v94 = a7;
    v85 = v19;
    v86 = a8;
    if ((v19 & 0x100000000) != 0)
    {
      v87 = result;
      v91 = v18;
      v20 = sub_1B0DB3E20(result, v18);
      v22 = v21;
      v101[0] = 47;
      v23 = sub_1B0E44C78();
      if (v22)
      {
        if (v20 == v23 && v22 == v24)
        {

          goto LABEL_9;
        }

        v25 = sub_1B0E46A78();

        result = v87;
        v18 = v91;
        if (v25)
        {
LABEL_9:
          if (__OFADD__(a2, 1))
          {
            __break(1u);
            goto LABEL_36;
          }

          if (a2 + 1 >= a3)
          {
            sub_1B0439BCC();
            swift_allocError();
            *v36 = a3;
          }

          else
          {
            v26 = *(a1 + 8);
            v77 = *(a1 + 16);
            v74 = *(a1 + 20);
            v72 = *(a1 + 22);
            v92 = *a1;

            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v88 = sub_1B0D4AF5C(1);
            v79 = v28;
            v82 = v27;
            v30 = v29;

            v89 = MEMORY[0x1B2726D00](v88, v82, v79, v30);
            v83 = v31;

            v32 = v83;
            v33 = a2 + 2;
            if (a2 + 2 < a3)
            {

              sub_1B0DFE880(0x3D4449553BuLL, 0xE500000000000000, 0, 0, a1, v33, a3);
              v64 = sub_1B0D9EA70(a1, v33, a3);

              v65 = v89;
LABEL_14:

              sub_1B0E03C2C(a1, a2, a3, a4, a5, a6, v94);
              v80 = v34;
              v84 = v35;
              v78 = v64;
              v93 = v32;

              if (v84)
              {
                v90 = v65;
                v37 = sub_1B0DB3E20(v80, v84);
                v39 = v38;
                v101[0] = 47;
                v40 = sub_1B0E44C78();
                v42 = v86;
                if (v39)
                {
                  if (v37 == v40 && v39 == v41)
                  {

                    goto LABEL_31;
                  }

                  v75 = sub_1B0E46A78();

                  v65 = v90;
                  if (v75)
                  {
LABEL_31:
                    if (!__OFADD__(a2, 1))
                    {
                      if (a2 + 1 < a3)
                      {
                        v53 = *(a1 + 8);
                        v70 = *(a1 + 20);
                        v71 = *(a1 + 16);
                        v69 = *(a1 + 22);
                        v73 = a2 + 1;
                        v76 = *a1;

                        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                        v81 = sub_1B0D4AF5C(1);
                        v55 = v54;
                        v57 = v56;
                        v59 = v58;

                        v60 = MEMORY[0x1B2726D00](v81, v55, v57, v59);
                        v62 = v61;

                        sub_1B0E03E34(a1, v73, a3, a4, a5, a6, v94);
                        v80 = v60;
                        v45 = v66;
                        v47 = v67;
                        v49 = v68;

                        v50 = v62;
                        v42 = v86;
                        v65 = v90;
                        goto LABEL_29;
                      }

                      sub_1B0439BCC();
                      swift_allocError();
                      *v63 = a3;
                      swift_willThrow();
                    }

LABEL_36:
                    __break(1u);
                    return result;
                  }

LABEL_28:

                  sub_1B0E03E60(a1, a2, a3, a4, a5, a6, v94);
                  v45 = v44;
                  v47 = v46;
                  v49 = v48;

                  v50 = v84;
LABEL_29:
                  v95[68] = BYTE4(v85) & 1;
                  v95[67] = HIBYTE(v45) & 1;
                  *&v96 = v65;
                  *(&v96 + 1) = v93;
                  LODWORD(v97) = v85;
                  BYTE4(v97) = BYTE4(v85) & 1;
                  DWORD2(v97) = v78;
                  *&v98 = v80;
                  *(&v98 + 1) = v50;
                  *&v99 = v49;
                  *(&v99 + 1) = v47;
                  v100 = v45 & 0x1FF;
                  v101[0] = v65;
                  v101[1] = v93;
                  v102 = v85;
                  v103 = BYTE4(v85) & 1;
                  v104 = v78;
                  v105 = v80;
                  v106 = v50;
                  v107 = v49;
                  v108 = v47;
                  v109 = v45 & 0x1FF;
                  sub_1B0DC3BB4(&v96, v95);
                  result = sub_1B0DC2084(v101);
                  v51 = v99;
                  *(v42 + 32) = v98;
                  *(v42 + 48) = v51;
                  *(v42 + 64) = v100;
                  v52 = v97;
                  *v42 = v96;
                  *(v42 + 16) = v52;
                  return result;
                }

                v65 = v90;
              }

              else
              {
                v101[0] = 47;
                sub_1B0E44C78();
                v42 = v86;
              }

              goto LABEL_28;
            }

            sub_1B0439BCC();
            swift_allocError();
            *v43 = a3;
            swift_willThrow();
            *a1 = v92;
            *(a1 + 8) = v26;
            *(a1 + 16) = v77;
            *(a1 + 20) = v74;
            *(a1 + 22) = v72;
          }

          swift_willThrow();
        }
      }

      else
      {

        result = v87;
        v18 = v91;
      }
    }

    v65 = result;
    v32 = v18;
    v64 = sub_1B0DC31B4(a1, a2, a3);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1B0DBC97C(uint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_1B0DFE880(0x25uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (v3)
  {
    return result;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  if (v7 == v6)
  {
LABEL_5:
    sub_1B0D3EA30();
    swift_allocError();
    return swift_willThrow();
  }

  v8 = *(a1 + 22);
  v9 = *(a1 + 20);
  v10 = *a1;
  result = swift_beginAccess();
  v11 = v6 + 1;
  if (v6 == -1)
  {
    __break(1u);
    goto LABEL_28;
  }

  v12 = *(v10 + 24) + (v8 | (v9 << 8));
  v13 = *(v12 + v6);
  *(a1 + 8) = v11;
  if (v7 == v11)
  {
    goto LABEL_5;
  }

  if (v11 == -1)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v14 = *(v12 + v11);
  *(a1 + 8) = v11 + 1;
  if ((v13 - 58) <= 0xF5u && (v13 - 65 <= 0x25 ? (v15 = ((1 << (v13 - 65)) & 0x3F0000003FLL) == 0) : (v15 = 1), v15) || (v14 - 58) <= 0xF5u && (v14 - 65 <= 0x25 ? (v16 = ((1 << (v14 - 65)) & 0x3F0000003FLL) == 0) : (v16 = 1), v16))
  {
    sub_1B0E46298();

    v19 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v19);

    MEMORY[0x1B2726E80](0x20646E6120, 0xE500000000000000);
    v20 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v20);

    sub_1B0436554();
    swift_allocError();
    *v21 = 0xD00000000000001BLL;
    v21[1] = 0x80000001B0F30310;
    v21[2] = 0xD000000000000020;
    v21[3] = 0x80000001B0F2FA10;
    v21[4] = 1264;
    return swift_willThrow();
  }

  if (v13 <= 0x46u)
  {
    v17 = v13;
  }

  else
  {
    v17 = v13 - 32;
  }

  if (v14 <= 0x46u)
  {
    v18 = v14;
  }

  else
  {
    v18 = v14 - 32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
  result = swift_allocObject();
  *(result + 16) = xmmword_1B0EC1E50;
  *(result + 32) = 37;
  *(result + 33) = v17;
  *(result + 34) = v18;
  return result;
}

uint64_t sub_1B0DBCC50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

    sub_1B0DB7EA8(v10, v8, a3, a4, a5, a6, a7, sub_1B0E08010, &v22);
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

uint64_t sub_1B0DBCD8C(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

    sub_1B0DBA1E4(v10, v8, a3, a4, a5, a6, a7, &v22);
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

void sub_1B0DBCEB4(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, int64_t a4@<X5>, unint64_t a5@<X7>, uint64_t a6@<X8>, unint64_t a7, uint64_t a8)
{
  sub_1B0DFE880(a5, a7, 0, 0, a1, a2, a3);
  if (v8)
  {
    return;
  }

  v14 = sub_1B0DFF3DC(a1, a2, a3, 1);
  if (v14 < 0)
  {
    sub_1B0436554();
    swift_allocError();
    *v17 = 0xD000000000000011;
    v17[1] = 0x80000001B0F2FEE0;
    v17[2] = 0xD000000000000020;
    v17[3] = 0x80000001B0F2FA10;
    v17[4] = 202;
    goto LABEL_6;
  }

  if (v14 > a4)
  {
    v15 = v14;
    sub_1B0D98DC0();
    swift_allocError();
    *v16 = v15;
    v16[1] = a4;
LABEL_6:
    swift_willThrow();
    return;
  }

  if (__OFADD__(a2, 1))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v40 = v14;
  if (a2 + 1 >= a3)
  {
    sub_1B0439BCC();
    v23 = swift_allocError();
    *v24 = a3;
    swift_willThrow();
    v25 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (!swift_dynamicCast())
    {

      return;
    }
  }

  else
  {
    v18 = *a1;
    v19 = *(a1 + 8);
    v20 = *(a1 + 16);
    v21 = *(a1 + 20);
    v22 = *(a1 + 22);

    sub_1B0DFE880(0x2BuLL, 0xE100000000000000, 0, 0, a1, a2 + 1, a3);
  }

  sub_1B0DFE880(0x7DuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  sub_1B0448078(a1, a2, a3);
  v26 = ByteBuffer.readSlice(length:)(v40);
  if (!v26)
  {
    sub_1B0D3EA30();
    swift_allocError();
    goto LABEL_6;
  }

  v29 = v27;
  v30 = HIDWORD(v27);
  v31 = v27;
  if (HIDWORD(v27) < v27)
  {
    goto LABEL_25;
  }

  v32 = v28;
  v33 = (WORD2(v28) << 8) | BYTE6(v28);
  if ((v28 - v33) < v30)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v34 = v26;
  v41[0] = v26;
  v35 = HIWORD(v28);
  v36 = HIDWORD(v28);
  v41[1] = v27;
  v42 = v28;
  v43 = WORD2(v28);
  v44 = BYTE6(v28);
  v45 = v27;
  v46 = HIDWORD(v27);
  swift_beginAccess();
  v37 = v30 - v31;
  if (v30 == v31)
  {
LABEL_21:

    sub_1B04394F4(v41);
    *a6 = v34;
    *(a6 + 8) = v29;
    *(a6 + 12) = v30;
    *(a6 + 16) = v32;
    *(a6 + 20) = v36;
    *(a6 + 22) = v35;
  }

  else
  {
    v38 = (*(v34 + 24) + v33 + v31);
    while (*v38)
    {
      ++v38;
      if (!--v37)
      {
        goto LABEL_21;
      }
    }

    sub_1B04394F4(v41);
    sub_1B0436554();
    swift_allocError();
    *v39 = 0xD000000000000019;
    v39[1] = 0x80000001B0F30200;
    v39[2] = 0xD000000000000020;
    v39[3] = 0x80000001B0F2FA10;
    v39[4] = a8;
    swift_willThrow();
  }
}

uint64_t sub_1B0DBD2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  result = sub_1B0DB4268(a1, a2, a3, a4, a5, a6, a7, sub_1B0DBEB44);
  if (!v7)
  {
    sub_1B0DFF2E8(result, v9, v10 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 1554);
    v11 = sub_1B0E44B98();

    return v11;
  }

  return result;
}

uint64_t sub_1B0DBD38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7600, "h,\a");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC4700;
  *(inited + 32) = sub_1B0DBD68C;
  *(inited + 40) = 0;
  *(inited + 48) = sub_1B0DBD794;
  *(inited + 56) = 0;
  *(inited + 64) = sub_1B0DBD890;
  *(inited + 72) = 0;
  *(inited + 80) = sub_1B0DBD98C;
  *(inited + 88) = 0;
  *(inited + 96) = sub_1B0DBDA8C;
  *(inited + 104) = 0;
  v15 = swift_allocObject();
  v29 = a6;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1B0DC1E34;
  *(v16 + 24) = v15;
  *(inited + 112) = sub_1B0DC1E54;
  *(inited + 120) = v16;

  v17 = sub_1B0D94B8C(inited, a1, a2, a3, 0xD000000000000020, 0x80000001B0F2FA10, 1558);
  v19 = v18;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
  result = swift_arrayDestroy();
  if (!v31)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1B0439BCC();
      swift_allocError();
      *v23 = a3;
      return swift_willThrow();
    }

    else
    {
      v21 = *a1;
      v22 = *(a1 + 8);
      v26 = *(a1 + 20);
      v27 = *(a1 + 16);
      v25 = *(a1 + 22);

      sub_1B0436204(a1);

      result = sub_1B0DB4978(a1, a2, a3, a4, a5, v29, a7);
      *a8 = v17;
      a8[1] = v19;
      a8[2] = result;
      a8[3] = v24;
    }
  }

  return result;
}

uint64_t sub_1B0DBD68C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  if (qword_1EB6DE170 != -1)
  {
    swift_once();
  }

  v9 = static Media.TopLevelType.application;
  v8 = unk_1EB737E70;
  result = sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  if (!v3)
  {
    sub_1B0DFE880(0x544143494C505041uLL, 0xEB000000004E4F49, 0, 0, a1, v6, v7);
    sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
    *a3 = v9;
    a3[1] = v8;
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0DBD794@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  if (qword_1EB6DE160 != -1)
  {
    swift_once();
  }

  v9 = static Media.TopLevelType.audio;
  v8 = unk_1EB737E50;
  result = sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  if (!v3)
  {
    sub_1B0DFE880(0x4F49445541uLL, 0xE500000000000000, 0, 0, a1, v6, v7);
    sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
    *a3 = v9;
    a3[1] = v8;
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0DBD890@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  if (qword_1EB6DE158 != -1)
  {
    swift_once();
  }

  v9 = static Media.TopLevelType.image;
  v8 = unk_1EB737E40;
  result = sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  if (!v3)
  {
    sub_1B0DFE880(0x4547414D49uLL, 0xE500000000000000, 0, 0, a1, v6, v7);
    sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
    *a3 = v9;
    a3[1] = v8;
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0DBD98C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  if (qword_1EB6DE148 != -1)
  {
    swift_once();
  }

  v9 = static Media.TopLevelType.message;
  v8 = unk_1EB737E20;
  result = sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  if (!v3)
  {
    sub_1B0DFE880(0x4547415353454DuLL, 0xE700000000000000, 0, 0, a1, v6, v7);
    sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
    *a3 = v9;
    a3[1] = v8;
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0DBDA8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  if (qword_1EB6DE150 != -1)
  {
    swift_once();
  }

  v9 = static Media.TopLevelType.video;
  v8 = unk_1EB737E30;
  result = sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  if (!v3)
  {
    sub_1B0DFE880(0x4F45444956uLL, 0xE500000000000000, 0, 0, a1, v6, v7);
    sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
    *a3 = v9;
    a3[1] = v8;
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0DBDB88(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6)
{
  v7 = a2 + 1;
  if (__OFADD__(a2, 1))
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
    v16 = *(result + 22);
    v17 = *(result + 20);

    sub_1B0DBCEB4(v9, v7, a3, a6, 0x7B7EuLL, &v18, 0xE200000000000000, 1488);
    if (v6)
    {
      v14 = *v9;

      *v9 = v10;
      *(v9 + 8) = v11;
      *(v9 + 16) = v12;
      *(v9 + 20) = v17;
      *(v9 + 22) = v16;
      return swift_willThrow();
    }

    return v18;
  }

  return result;
}

uint64_t sub_1B0DBDCD4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
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
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = *(result + 8);
    v14 = *(result + 16);
    v24 = *(result + 22);
    v25 = *(result + 20);

    sub_1B0DBDFC0(v11, v9, a3, a4, a5, a6, a7, v26);
    if (v8)
    {
      v19 = *v11;

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v25;
      *(v11 + 22) = v24;
      return swift_willThrow();
    }

    v21 = v26[1];
    *a8 = v26[0];
    a8[1] = v21;
    v22 = v26[3];
    a8[2] = v26[2];
    a8[3] = v22;
  }

  return result;
}

uint64_t sub_1B0DBDE10(uint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    v8 = *(a1 + 8);
    if (*(a1 + 12) == v8)
    {
      sub_1B0D3EA30();
      swift_allocError();
      return swift_willThrow();
    }

    v9 = *(a1 + 22);
    v10 = *(a1 + 20);
    v11 = *a1;
    result = swift_beginAccess();
    v12 = v8 + 1;
    if (v8 == -1)
    {
      __break(1u);
      return result;
    }

    v13 = *(*(v11 + 24) + (v9 | (v10 << 8)) + v8);
    *(a1 + 8) = v12;
    v14 = v13 == 10 || v13 == 13;
    if (v14 || (v13 & 0x80) != 0 || !v13 || v13 == 34 || v13 == 92)
    {
      sub_1B0436554();
      swift_allocError();
      *v15 = 0xD000000000000011;
      v15[1] = 0x80000001B0F303A0;
      v15[2] = 0xD000000000000020;
      v15[3] = 0x80000001B0F2FA10;
      v15[4] = 1761;
      return swift_willThrow();
    }

    sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    return sub_1B0E44C78();
  }

  return result;
}

void sub_1B0DBDFC0(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v17 = sub_1B0DB4268(a1, a2, a3, a4, a5, a6, a7, sub_1B0DBEB44);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      v47 = v17;
      if (a2 + 1 >= a3)
      {
        sub_1B0439BCC();
        swift_allocError();
        *v22 = a3;
        swift_willThrow();
      }

      else
      {
        v40 = v18;
        v41 = v19;
        v20 = *a1;
        v21 = *(a1 + 8);
        v46 = *(a1 + 16);
        v43 = *(a1 + 20);
        v42 = *(a1 + 22);
        sub_1B0436204(a1);
        v23 = *a1;
        v44 = *(a1 + 8);
        v36 = *(a1 + 16);
        v38 = *(a1 + 12);
        v33 = *(a1 + 22);
        v34 = *(a1 + 20);

        v24 = sub_1B0DBDE10(a1, a2 + 1, a3);
        v45 = v25;
        v35 = v24;

        v53 = 0;
        v54 = MEMORY[0x1E69E7CC0];
        v55 = MEMORY[0x1E69E7CC0];
        v26 = *a1;
        v27 = *(a1 + 8);
        LODWORD(v23) = *(a1 + 16);
        v37 = *(a1 + 22);
        v39 = *(a1 + 20);

        sub_1B0DFCF10(a1, a2 + 1, a3, &v53, a4, a5, a6, a7);

        v28 = v53;
        v29 = v54;
        v30 = v55;
        sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
        v49[0] = v47;
        v49[1] = v40;
        LODWORD(v50) = v41;
        WORD2(v50) = WORD2(v41);
        BYTE6(v50) = BYTE6(v41);
        *(&v50 + 1) = v35;
        *&v51 = v45;
        *(&v51 + 1) = v28;
        *&v52 = v29;
        *(&v52 + 1) = v30;
        v53 = v47;
        v54 = v40;
        LODWORD(v55) = v41;
        WORD2(v55) = WORD2(v41);
        BYTE6(v55) = BYTE6(v41);
        v56 = v35;
        v57 = v45;
        v58 = v28;
        v59 = v29;
        v60 = v30;
        sub_1B0D3CB18(v49, v48);
        sub_1B0CF98D4(&v53);
        v31 = v50;
        *a8 = *v49;
        a8[1] = v31;
        v32 = v52;
        a8[2] = v51;
        a8[3] = v32;
      }
    }
  }
}

uint64_t sub_1B0DBE4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v19 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    *v8 = v19;
    *(v8 + 8) = v18;
    *(v8 + 16) = v15;
    *(v8 + 20) = v14;
    *(v8 + 22) = i;
  }

  else
  {
    v9 = a3;
    if (v19 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v25 = v9;
      return swift_willThrow();
    }

    v12 = a2;
    v8 = a1;
    v68 = a8;
    v20 = *a1;
    v21 = *(a1 + 8);
    v22 = *(a1 + 16);
    v23 = *(a1 + 20);
    v24 = *(a1 + 22);
    sub_1B0436204(a1);
    if (v10)
    {
      *v8 = v20;
      *(v8 + 8) = v21;
      *(v8 + 16) = v22;
      *(v8 + 20) = v23;
      *(v8 + 22) = v24;
      return swift_willThrow();
    }

    v27 = sub_1B0DB4268(v8, v12, v9, a4, a5, a6, a7, sub_1B0DBEB44);
    v65 = v28;
    v66 = v29;
    v67 = v27;
    v30 = *v8;
    v31 = *(v8 + 8);
    v32 = *(v8 + 16);
    v33 = *(v8 + 20);
    v34 = *(v8 + 22);
    sub_1B0436204(v8);
    sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, v8, v12, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7628, &unk_1B0EFA590);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1B0EC1E70;
    *(v16 + 32) = sub_1B0DB4268(v8, v12, v9, a4, a5, a6, a7, sub_1B0DBEB44);
    *(v16 + 40) = v35;
    *(v16 + 44) = v36;
    *(v16 + 48) = v37;
    *(v16 + 52) = v38;
    *(v16 + 54) = v39;
    v40 = *v8;
    v17 = *(v8 + 8);
    v41 = *(v8 + 20);
    v62 = *(v8 + 16);
    v63 = *(v8 + 22);

    v64 = v19 + 1;
    if (v19 + 1 >= v9)
    {
      sub_1B0439BCC();
      v11 = swift_allocError();
      *v54 = v9;
      goto LABEL_17;
    }

    v59 = v16;
    v60 = v40;
    v61 = v41;
    v42 = v19 + 2;
    v19 = *v8;
    v18 = *(v8 + 8);
    v15 = *(v8 + 16);
    v14 = *(v8 + 20);
    for (i = *(v8 + 22); v42 < v9; i = *(v8 + 22))
    {
      swift_retain_n();
      sub_1B0436204(v8);

      v43 = sub_1B0DB4268(v8, v64, v9, a4, a5, a6, a7, sub_1B0DBEB44);
      v45 = v44;
      v46 = v43;
      v48 = v47;

      v50 = *(v16 + 16);
      v49 = *(v16 + 24);
      v51 = v50 + 1;
      if (v50 >= v49 >> 1)
      {
        v53 = sub_1B0DF57A0((v49 > 1), v50 + 1, 1, v16);
        v51 = v50 + 1;
        v16 = v53;
      }

      *(v16 + 16) = v51;
      v52 = v16 + 24 * v50;
      *(v52 + 32) = v46;
      *(v52 + 40) = v48;
      *(v52 + 48) = v45;
      *(v52 + 52) = WORD2(v45);
      *(v52 + 54) = BYTE6(v45);
      v19 = *v8;
      v18 = *(v8 + 8);
      v15 = *(v8 + 16);
      v14 = *(v8 + 20);
    }

    sub_1B0439BCC();
    v11 = swift_allocError();
    *v55 = v9;

    v16 = v59;
  }

  swift_willThrow();
  v56 = *v8;

  *v8 = v19;
  *(v8 + 8) = v18;
  *(v8 + 16) = v15;
  *(v8 + 20) = v14;
  *(v8 + 22) = i;
  v41 = v61;
  v40 = v60;
LABEL_17:
  swift_willThrow();
  v57 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast())
  {

    result = sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v8, v12, v9);
    *v68 = v67;
    *(v68 + 8) = v65;
    *(v68 + 16) = v66;
    *(v68 + 20) = WORD2(v66);
    *(v68 + 22) = BYTE6(v66);
    *(v68 + 24) = v16;
  }

  else
  {

    v58 = *v8;

    *v8 = v40;
    *(v8 + 8) = v17;
    *(v8 + 16) = v62;
    *(v8 + 20) = v41;
    *(v8 + 22) = v63;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0DBEA68(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_1B0DFE880(0x2EuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
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

uint64_t sub_1B0DBEB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1B0DFE880(0x22uLL, 0xE100000000000000, 1, 0, a1, a2, a3);
  if (v4)
  {
    return result;
  }

  v56 = 0;
  v10 = sub_1B0DFEFA4(a1, a2, a3, &v56, &v56 + 1);
  v12 = v11;
  v14 = v13;
  result = sub_1B0DFE880(0x22uLL, 0xE100000000000000, 1, 0, a1, a2, a3);
  if ((v56 & 0x100) == 0)
  {
    *a4 = v10;
    *(a4 + 8) = v12;
    *(a4 + 16) = v14;
    *(a4 + 20) = WORD2(v14);
    *(a4 + 22) = BYTE6(v14);
    return result;
  }

  v49 = v12;
  v50 = HIDWORD(v12);
  v15 = qword_1EB6DE5C0;

  if (v15 != -1)
  {
LABEL_48:
    swift_once();
  }

  v48 = a4;
  v16 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v17 = HIDWORD(qword_1EB737EB0);
  v18 = dword_1EB737EB8;
  v19 = word_1EB737EBC;
  v20 = byte_1EB737EBE;
  v51 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v52 = qword_1EB737EB0;
  v53 = dword_1EB737EB8;
  v54 = word_1EB737EBC;
  v55 = byte_1EB737EBE;

  swift_beginAccess();
  if (v49 == v50)
  {
LABEL_5:

    *v48 = v16;
    *(v48 + 8) = v52;
    *(v48 + 12) = v17;
    *(v48 + 16) = v18;
    *(v48 + 20) = v19;
    *(v48 + 22) = v20;
    return result;
  }

  v47 = v14;
  v21 = BYTE6(v14) | (WORD2(v14) << 8);
  LODWORD(v14) = v49;
  while (1)
  {
    a4 = v10;
    v24 = *(v10 + 24);
    v10 = v21;
    v25 = v24 + v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
    v26 = swift_allocObject();
    v27 = _swift_stdlib_malloc_size_0(v26);
    *(v26 + 16) = 1;
    *(v26 + 24) = 2 * v27 - 64;
    v28 = *(v25 + v14);
    *(v26 + 32) = v28;
    v29 = __CFADD__(v14, 1);
    v14 = (v14 + 1);
    if (v29)
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v28 == 92)
    {
      break;
    }

    v37 = v17 + 1;
    if (v17 == -1)
    {
      goto LABEL_43;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v37 >= v18)
      {
        v38 = v37 - v18;
      }

      else
      {
        v38 = 0;
      }

      v39 = sub_1B03904C0();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v38, v39 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v17);
    v16 = v51;
    v18 = v53;
    v19 = v54;
    v20 = v55;
    swift_beginAccess();
    v40 = v55 | (v54 << 8);
    v41 = v53 - v40;
    if (v53 - v40 >= v17)
    {
      v41 = v17;
    }

    if (!v17)
    {
      v41 = 0;
    }

    *(*(v51 + 24) + v40 + v41) = v28;
    v17 = HIDWORD(v52) + 1;
    if (HIDWORD(v52) == -1)
    {
      goto LABEL_44;
    }

LABEL_14:
    v21 = v10;
    HIDWORD(v52) = v17;
    v10 = a4;
    if (v14 == v50)
    {
      goto LABEL_5;
    }
  }

  if (v14 == v50)
  {
    goto LABEL_39;
  }

  v30 = *(a4 + 24) + v10;
  v31 = swift_allocObject();
  v32 = _swift_stdlib_malloc_size_0(v31);
  *(v31 + 16) = 1;
  *(v31 + 24) = 2 * v32 - 64;
  v33 = *(v30 + v14);
  *(v31 + 32) = v33;
  v29 = __CFADD__(v14, 1);
  v14 = (v14 + 1);
  if (v29)
  {
    goto LABEL_45;
  }

  if (v33 == 92 || v33 == 34)
  {
    v34 = v17 + 1;
    if (v17 == -1)
    {
      goto LABEL_46;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v34 >= v18)
      {
        v35 = v34 - v18;
      }

      else
      {
        v35 = 0;
      }

      v36 = sub_1B03904C0();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v35, v36 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v17);
    v16 = v51;
    v18 = v53;
    v19 = v54;
    v20 = v55;
    swift_beginAccess();
    v22 = v55 | (v54 << 8);
    v23 = v53 - v22;
    if (v53 - v22 >= v17)
    {
      v23 = v17;
    }

    if (!v17)
    {
      v23 = 0;
    }

    *(*(v51 + 24) + v22 + v23) = v33;
    v17 = HIDWORD(v52) + 1;
    if (HIDWORD(v52) == -1)
    {
      goto LABEL_47;
    }

    goto LABEL_14;
  }

LABEL_39:
  sub_1B0E46298();

  if (v50 < v49)
  {
    __break(1u);
  }

  else if (v50 <= (v47 - v10))
  {
    swift_beginAccess();
    v42 = *(a4 + 24);

    v43 = sub_1B0E44C68();
    v45 = v44;

    MEMORY[0x1B2726E80](v43, v45);

    MEMORY[0x1B2726E80](39, 0xE100000000000000);
    sub_1B0436554();
    swift_allocError();
    *v46 = 0xD000000000000021;
    v46[1] = 0x80000001B0F301D0;
    v46[2] = 0xD000000000000020;
    v46[3] = 0x80000001B0F2FA10;
    v46[4] = 2065;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DBF090@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1B0E04448(34, 0xE100000000000000, a1, a2, a3);
  if (v4)
  {
    return result;
  }

  v56 = 0;
  v10 = sub_1B0DFFDF4(a1, a2, a3, &v56, &v56 + 1);
  v12 = v11;
  v14 = v13;
  result = sub_1B0E04448(34, 0xE100000000000000, a1, a2, a3);
  if ((v56 & 0x100) == 0)
  {
    *a4 = v10;
    *(a4 + 8) = v12;
    *(a4 + 16) = v14;
    *(a4 + 20) = WORD2(v14);
    *(a4 + 22) = BYTE6(v14);
    return result;
  }

  v49 = v12;
  v50 = HIDWORD(v12);
  v15 = qword_1EB6DE5C0;

  if (v15 != -1)
  {
LABEL_48:
    swift_once();
  }

  v48 = a4;
  v16 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v17 = HIDWORD(qword_1EB737EB0);
  v18 = dword_1EB737EB8;
  v19 = word_1EB737EBC;
  v20 = byte_1EB737EBE;
  v51 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v52 = qword_1EB737EB0;
  v53 = dword_1EB737EB8;
  v54 = word_1EB737EBC;
  v55 = byte_1EB737EBE;

  swift_beginAccess();
  if (v49 == v50)
  {
LABEL_5:

    *v48 = v16;
    *(v48 + 8) = v52;
    *(v48 + 12) = v17;
    *(v48 + 16) = v18;
    *(v48 + 20) = v19;
    *(v48 + 22) = v20;
    return result;
  }

  v47 = v14;
  v21 = BYTE6(v14) | (WORD2(v14) << 8);
  LODWORD(v14) = v49;
  while (1)
  {
    a4 = v10;
    v24 = *(v10 + 24);
    v10 = v21;
    v25 = v24 + v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
    v26 = swift_allocObject();
    v27 = _swift_stdlib_malloc_size_0(v26);
    *(v26 + 16) = 1;
    *(v26 + 24) = 2 * v27 - 64;
    v28 = *(v25 + v14);
    *(v26 + 32) = v28;
    v29 = __CFADD__(v14, 1);
    v14 = (v14 + 1);
    if (v29)
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v28 == 92)
    {
      break;
    }

    v37 = v17 + 1;
    if (v17 == -1)
    {
      goto LABEL_43;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v37 >= v18)
      {
        v38 = v37 - v18;
      }

      else
      {
        v38 = 0;
      }

      v39 = sub_1B03904C0();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v38, v39 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v17);
    v16 = v51;
    v18 = v53;
    v19 = v54;
    v20 = v55;
    swift_beginAccess();
    v40 = v55 | (v54 << 8);
    v41 = v53 - v40;
    if (v53 - v40 >= v17)
    {
      v41 = v17;
    }

    if (!v17)
    {
      v41 = 0;
    }

    *(*(v51 + 24) + v40 + v41) = v28;
    v17 = HIDWORD(v52) + 1;
    if (HIDWORD(v52) == -1)
    {
      goto LABEL_44;
    }

LABEL_14:
    v21 = v10;
    HIDWORD(v52) = v17;
    v10 = a4;
    if (v14 == v50)
    {
      goto LABEL_5;
    }
  }

  if (v14 == v50)
  {
    goto LABEL_39;
  }

  v30 = *(a4 + 24) + v10;
  v31 = swift_allocObject();
  v32 = _swift_stdlib_malloc_size_0(v31);
  *(v31 + 16) = 1;
  *(v31 + 24) = 2 * v32 - 64;
  v33 = *(v30 + v14);
  *(v31 + 32) = v33;
  v29 = __CFADD__(v14, 1);
  v14 = (v14 + 1);
  if (v29)
  {
    goto LABEL_45;
  }

  if (v33 == 92 || v33 == 34)
  {
    v34 = v17 + 1;
    if (v17 == -1)
    {
      goto LABEL_46;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v34 >= v18)
      {
        v35 = v34 - v18;
      }

      else
      {
        v35 = 0;
      }

      v36 = sub_1B03904C0();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v35, v36 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v17);
    v16 = v51;
    v18 = v53;
    v19 = v54;
    v20 = v55;
    swift_beginAccess();
    v22 = v55 | (v54 << 8);
    v23 = v53 - v22;
    if (v53 - v22 >= v17)
    {
      v23 = v17;
    }

    if (!v17)
    {
      v23 = 0;
    }

    *(*(v51 + 24) + v22 + v23) = v33;
    v17 = HIDWORD(v52) + 1;
    if (HIDWORD(v52) == -1)
    {
      goto LABEL_47;
    }

    goto LABEL_14;
  }

LABEL_39:
  sub_1B0E46298();

  if (v50 < v49)
  {
    __break(1u);
  }

  else if (v50 <= (v47 - v10))
  {
    swift_beginAccess();
    v42 = *(a4 + 24);

    v43 = sub_1B0E44C68();
    v45 = v44;

    MEMORY[0x1B2726E80](v43, v45);

    MEMORY[0x1B2726E80](39, 0xE100000000000000);
    sub_1B0436554();
    swift_allocError();
    *v46 = 0xD000000000000021;
    v46[1] = 0x80000001B0F301D0;
    v46[2] = 0xD000000000000020;
    v46[3] = 0x80000001B0F2FA10;
    v46[4] = 2110;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

int64_t sub_1B0DBF5CC(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = a3;
  if (v4 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v13 = v5;
    goto LABEL_6;
  }

  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 20);
  v11 = *(a1 + 22);

  sub_1B0DFE880(0x5D5BuLL, 0xE200000000000000, 0, 0, a1, v4, v5);
  if (!v3)
  {
    if (qword_1EB6DE648 == -1)
    {
LABEL_9:
      v5 = static SectionSpecifier.complete;
      v15 = *algn_1EB737EC8;
      v16 = byte_1EB737ED0;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0ACE964(v15, v16);

      return v5;
    }

LABEL_11:
    swift_once();
    goto LABEL_9;
  }

  v12 = *a1;

  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 20) = v10;
  *(a1 + 22) = v11;
LABEL_6:
  swift_willThrow();
  return v5;
}

uint64_t sub_1B0DBF724(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  v11 = result;
  if (v8 >= a3)
  {
    sub_1B0439BCC();
    v18 = swift_allocError();
    *v22 = a3;
LABEL_7:
    swift_willThrow();
    v38 = v18;
    v23 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v38 = v18;
      v24 = v18;
      if ((swift_dynamicCast() & 1) == 0)
      {

        return v8;
      }
    }

    if (v8 < a3)
    {
      v25 = *v11;
      v26 = *(v11 + 8);
      v27 = *(v11 + 16);
      v28 = *(v11 + 20);
      v29 = *(v11 + 22);

      v8 = sub_1B0DBFAAC(v11, v8, a3, a4, a5, a6, a7);
LABEL_24:

      return v8;
    }

    sub_1B0439BCC();
    swift_allocError();
    *v30 = a3;
    swift_willThrow();
    return v8;
  }

  v12 = *result;
  v13 = *(result + 8);
  v14 = *(result + 16);
  v15 = *(result + 20);
  v16 = *(result + 22);

  v17 = sub_1B0DC1404(v11, v8, a3);
  v18 = v7;
  if (v7)
  {
    v21 = *v11;

    *v11 = v12;
    *(v11 + 8) = v13;
    *(v11 + 16) = v14;
    *(v11 + 20) = v15;
    *(v11 + 22) = v16;
    goto LABEL_7;
  }

  v34 = v17;

  sub_1B0E04278(v11, v8, a3, a4, a5, a6, a7);
  v31 = v19;
  v32 = v20;

  if (v32 == 255)
  {
    v31 = 0;
    v33 = 2;
  }

  else
  {
    v33 = v32;
  }

  v8 = v34;
  if (*(v34 + 16) || v33 <= 1u || v31 <= 1 || v31 == 3)
  {
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1B0DBFAAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
      *v21 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v24 = *(result + 22);
    v25 = *(result + 20);

    v18 = sub_1B0DBFC6C(v10, v8, a3, a4, a5, a6, a7);
    if (v7)
    {
      v20 = *v10;

LABEL_9:
      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v25;
      *(v10 + 22) = v24;
      return swift_willThrow();
    }

    if (v19 >= 2u && v18 == 2)
    {
      v22 = *v10;

      sub_1B0436554();
      swift_allocError();
      *v23 = 0xD00000000000002ALL;
      v23[1] = 0x80000001B0F30270;
      v23[2] = 0xD000000000000020;
      v23[3] = 0x80000001B0F2FA10;
      v23[4] = 2240;
      swift_willThrow();
      goto LABEL_9;
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1B0DBFC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7608, &qword_1B0EF5108);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC4700;
  *(inited + 32) = sub_1B0DBFF40;
  *(inited + 40) = 0;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1B0DC1E70;
  *(v15 + 24) = v14;
  *(inited + 48) = sub_1B0DC1ECC;
  *(inited + 56) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B0DC1EE8;
  *(v17 + 24) = v16;
  *(inited + 64) = sub_1B0DC3E08;
  *(inited + 72) = v17;
  *(inited + 80) = sub_1B0DBFF6C;
  *(inited + 88) = 0;
  *(inited + 96) = sub_1B0DBFF9C;
  *(inited + 104) = 0;
  *(inited + 112) = sub_1B0DBFFC8;
  *(inited + 120) = 0;
  swift_retain_n();
  v18 = sub_1B0D94E60(inited, a1, a2, a3, 0xD000000000000020, 0x80000001B0F2FA10, 2314);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
  swift_arrayDestroy();
  return v18;
}

uint64_t sub_1B0DBFE90(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  result = sub_1B0DFE880(0xD000000000000012, 0x80000001B0F30250, 0, 0, a1, a2, a3);
  if (!v7)
  {
    return sub_1B0DB91C4(a1, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_1B0DBFFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a1 + 8);
  if (*(a1 + 12) == v5)
  {
    sub_1B0D3EA30();
    swift_allocError();
    return swift_willThrow();
  }

  v10 = *(a1 + 22);
  v11 = *(a1 + 20);
  v13 = *a1;
  result = swift_beginAccess();
  if (v5 == -1)
  {
    __break(1u);
  }

  else
  {
    v14 = *(*(v13 + 24) + (v10 | (v11 << 8)) + v5);
    *(a1 + 8) = v5 + 1;
    v15 = (v14 - 45) > 0x32 || ((1 << (v14 - 45)) & 0x4000000000003) == 0;
    if (v15 && (v14 & 0xFFFFFFDF) - 91 < 0xFFFFFFE6)
    {
      sub_1B0E46298();
      v19 = sub_1B0E469C8();
      v21 = v20;

      MEMORY[0x1B2726E80](0x1000000000000018, 0x80000001B0F303C0);
      sub_1B0436554();
      swift_allocError();
      *v22 = v19;
      v22[1] = v21;
      v22[2] = 0xD000000000000020;
      v22[3] = 0x80000001B0F2FA10;
      v22[4] = 2641;
      return swift_willThrow();
    }

    result = sub_1B0DFFABC(a1, a2, a3);
    if (!v4)
    {
      v18 = sub_1B0DFF2E8(result, v16, v17 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 2647);
      v24 = v23;
      v25 = v18;
      v27 = sub_1B0E44C68();
      v28 = v26;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      MEMORY[0x1B2726E80](v25, v24);

      *a4 = v27;
      a4[1] = v28;
    }
  }

  return result;
}

void sub_1B0DC024C(char **a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int64_t a7, uint64_t a8)
{
  v15 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
LABEL_26:
    v8 = sub_1B0AFF0E8(0, *(v8 + 2) + 1, 1, v8);
LABEL_12:
    v29 = *(v8 + 2);
    v28 = *(v8 + 3);
    v30 = v45;
    if (v29 >= v28 >> 1)
    {
      v30 = v45;
      v8 = sub_1B0AFF0E8((v28 > 1), v29 + 1, 1, v8);
    }

    *(v8 + 2) = v29 + 1;
    v31 = &v8[16 * v29];
    *(v31 + 4) = v57;
    *(v31 + 5) = v53;
    *v48 = v8;
    if (v60 + 1 >= v11)
    {
      sub_1B0439BCC();
      v36 = swift_allocError();
      *v37 = v11;
    }

    else
    {
      while (1)
      {
        v32 = *v9;
        v33 = *(v9 + 8);
        v55 = *(v9 + 16);
        v34 = *(v9 + 20);
        v35 = *(v9 + 22);

        sub_1B0436204(v9);
        v36 = v30;

        if (v30)
        {
          break;
        }

        v30 = 0;
        sub_1B0DC024C(v48, v9, v60, v11, v47, v14, v13, v12);
      }

      *v9 = v32;
      *(v9 + 8) = v33;
      *(v9 + 16) = v55;
      *(v9 + 20) = v34;
      *(v9 + 22) = v35;
    }

    swift_willThrow();

    v38 = v36;
    goto LABEL_24;
  }

  v11 = a4;
  if (v15 >= a4)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v23 = v11;
LABEL_10:
    swift_willThrow();
    return;
  }

  v12 = a8;
  v13 = a7;
  v14 = a6;
  v9 = a2;
  v18 = *a2;
  v58 = *(a2 + 8);
  v54 = *(a2 + 12);
  v51 = *(a2 + 16);
  v49 = *(a2 + 22);
  v50 = *(a2 + 20);
  swift_retain_n();
  v19 = sub_1B0DB3AC0(v9, v15, v11, a5, v14, v13, v12);
  v47 = a5;
  v48 = a1;
  v60 = v15;
  if (!v10)
  {
    v45 = 0;
    v24 = sub_1B0DFF2E8(v19, v20, v21 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 2681);
    v53 = v27;
    v57 = v24;
    v8 = *a1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

  v46 = v10;
  v22 = *v9;

  *v9 = v18;
  *(v9 + 8) = v58;
  *(v9 + 12) = v54;
  *(v9 + 16) = v51;
  *(v9 + 20) = v50;
  v25 = v15 + 1;
  *(v9 + 22) = v49;
  if (v15 + 1 >= v11)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v26 = v11;
    swift_willThrow();

    *v9 = v18;
    *(v9 + 8) = v58;
    *(v9 + 12) = v54;
    *(v9 + 16) = v51;
    *(v9 + 20) = v50;
    *(v9 + 22) = v49;
    goto LABEL_10;
  }

  swift_retain_n();
  sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, v9, v25, v11);
  sub_1B0DC024C(v48, v9, v25, v11, 0, v14, v13, v12);
  sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v9, v25, v11);
  if (v15 + 2 < v11)
  {
    for (i = v11; ; sub_1B0DC024C(v48, v9, v25, i, a5, v40, v13, v12))
    {
      v40 = v14;
      v41 = *v9;
      v42 = *(v9 + 8);
      v59 = *(v9 + 16);
      v56 = *(v9 + 20);
      v52 = *(v9 + 22);

      sub_1B0436204(v9);

      v14 = v40;
    }
  }

  sub_1B0439BCC();
  v43 = swift_allocError();
  *v44 = v11;
  swift_willThrow();

  v38 = v43;
LABEL_24:
}

uint64_t sub_1B0DC07C4(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, int64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = sub_1B0DFE880(a8, a9, 0, 0, a1, a2, a3);
  if (!v10)
  {
    return a10(a1, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_1B0DC086C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  result = sub_1B0DFE880(a3, a4, 0, 0, a1, *a2, a2[1]);
  if (!v7)
  {
    *a7 = a5;
    *(a7 + 8) = a6;
  }

  return result;
}

unint64_t sub_1B0DC08C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  result = sub_1B0DFF3DC(a1, a2, a3, 1);
  if (!v5)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      sub_1B0436554();
      swift_allocError();
      *v10 = 0xD000000000000011;
      v10[1] = 0x80000001B0F2FEE0;
      v10[2] = 0xD000000000000020;
      v10[3] = 0x80000001B0F2FA10;
      v11 = 202;
    }

    else
    {
      if (v9 == a4)
      {
        *a5 = result;
        return result;
      }

      sub_1B0E46298();

      v12 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v12);

      MEMORY[0x1B2726E80](0x2C73746967696420, 0xED000020746F6720);
      v13 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v13);

      sub_1B0436554();
      swift_allocError();
      *v10 = 0x6465746365707845;
      v10[1] = 0xE900000000000020;
      v10[2] = 0xD000000000000020;
      v10[3] = 0x80000001B0F2FA10;
      v11 = 3051;
    }

    v10[4] = v11;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1B0DC0AB0(unint64_t result, uint64_t a2, int64_t a3, uint64_t a4)
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

    sub_1B0DC08C4(v7, v5, a3, a4, &v16);
    if (v4)
    {
      v14 = *v7;

      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
      return swift_willThrow();
    }

    return v16;
  }

  return result;
}

uint64_t sub_1B0DC0C0C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = a3;
  if (v4 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v15 = v5;
    goto LABEL_9;
  }

  v6 = result;
  v7 = *result;
  v8 = *(result + 8);
  v9 = *(result + 16);
  v10 = *(result + 20);
  v11 = *(result + 22);

  result = sub_1B0DFF7C4(v6, v4, v5);
  if (v3)
  {
    v14 = *v6;

    *v6 = v7;
    *(v6 + 8) = v8;
    *(v6 + 16) = v9;
    *(v6 + 20) = v10;
    *(v6 + 22) = v11;
LABEL_9:
    swift_willThrow();
    return v5;
  }

  if (HIDWORD(v12) < v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v13 - (BYTE6(v13) | (WORD2(v13) << 8)) >= HIDWORD(v12))
  {
    v17[0] = result;
    v17[1] = v12;
    v18 = v13;
    v19 = WORD2(v13);
    v20 = BYTE6(v13);
    v21 = v12;
    v22 = HIDWORD(v12);

    v16 = sub_1B0D5E39C(v17, 0);
    sub_1B04394F4(v17);
    v5 = sub_1B0D8F260(v16, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);

    return v5;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1B0DC0EE8(unint64_t a1, uint64_t a2, int64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B0DFE880(0x5CuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (v4)
  {
    return a4;
  }

  if (!__OFADD__(a2, 1))
  {
    if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
      v15 = swift_allocError();
      *v16 = a3;
      a4 = v15;
      swift_willThrow();
    }

    else
    {
      v10 = *a1;
      v11 = *(a1 + 8);
      v12 = *(a1 + 16);
      v13 = *(a1 + 20);
      v14 = *(a1 + 22);
      sub_1B0441264(a1, &v21);
      v17 = sub_1B0DFF2E8(v21, v22, v23 | (v24 << 32) | (v25 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 115);
      v18 = a4(v17);
      v20 = v19;

      v21 = 92;
      v22 = 0xE100000000000000;
      MEMORY[0x1B2726E80](v18, v20);

      a4 = ByteBufferAllocator.buffer(string:)(v21, v22, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
    }

    return a4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DC10F8(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t))
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

    v8 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);

    a4(&v16, v8, v5, a3);
    if (v4)
    {
      v14 = *v8;

      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    return v16;
  }

  return result;
}

uint64_t sub_1B0DC120C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
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
    }

    else
    {
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
        *v15 = a3;
      }

      else
      {

        sub_1B0DFA19C(v7, v25);
        if (!v4)
        {
          v22 = sub_1B0DFF2E8(v25[0], v25[1], v26 | (v27 << 32) | (v28 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 2766);
          v23 = v13;

          sub_1B0E02A4C(v7, v5, a3);
          v17 = v16;
          v19 = v18;
          v21 = v20;

          *a4 = v22;
          *(a4 + 8) = v23;
          *(a4 + 16) = v17;
          *(a4 + 24) = v21;
          *(a4 + 32) = v19;
          *(a4 + 38) = BYTE6(v19);
          *(a4 + 36) = WORD2(v19);
          return result;
        }
      }

      swift_willThrow();

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

unint64_t sub_1B0DC1404(unint64_t result, uint64_t a2, int64_t a3)
{
  v5 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v5 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v15 = a3;
      goto LABEL_8;
    }

    v7 = result;
    v8 = *result;
    v9 = *(result + 8);
    v10 = *(result + 16);
    v11 = *(result + 20);
    v12 = *(result + 22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CE0, &qword_1B0EE4E80);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1B0EC1E70;

    v13 = sub_1B0DFF3DC(v7, v5, a3, 0);
    if (v3)
    {
      v14 = *v7;
    }

    else
    {
      if ((v13 & 0x8000000000000000) == 0)
      {
        *(v4 + 32) = v13;
        if (v5 + 1 >= a3)
        {
          sub_1B0439BCC();
          swift_allocError();
          *v30 = a3;
        }

        else
        {
          v16 = *(v7 + 8);
          v44 = *(v7 + 20);
          v45 = *(v7 + 16);
          v43 = *(v7 + 22);
          v51 = *v7;

          if (v5 + 2 >= a3)
          {
            sub_1B0439BCC();
            v31 = swift_allocError();
            *v32 = a3;
            v33 = v51;
          }

          else
          {
            v17 = v5 + 3;
            v18 = *v7;
            v19 = *(v7 + 8);
            v53 = *(v7 + 20);
            v54 = *(v7 + 16);
            v52 = *(v7 + 22);
            if (v5 + 3 >= a3)
            {
LABEL_24:
              v34 = v18;
              sub_1B0439BCC();
              v31 = swift_allocError();
              *v35 = a3;

              v33 = v51;
            }

            else
            {
              v50 = v5 + 4;
              v20 = v4;
              v48 = v12;
              v49 = v11;
              v47 = v5 + 3;
              while (1)
              {
                v55 = v20;
                v56 = v18;
                swift_retain_n();
                sub_1B0DFE880(0x2EuLL, 0xE100000000000000, 0, 0, v7, v17, a3);
                if (v50 >= a3)
                {
                  sub_1B0439BCC();
                  v31 = swift_allocError();
                  *v36 = a3;
                  v33 = v51;
                  swift_willThrow();
                  v37 = *v7;

                  goto LABEL_27;
                }

                v21 = *v7;
                v22 = *(v7 + 8);
                v23 = *(v7 + 16);
                v24 = *(v7 + 20);
                v46 = *(v7 + 22);

                sub_1B043DDD8(v7, v50, a3, 0, &v57);

                v25 = v57;
                if ((v57 & 0x8000000000000000) != 0)
                {
                  break;
                }

                v20 = v55;
                v27 = *(v55 + 2);
                v26 = *(v55 + 3);
                if (v27 >= v26 >> 1)
                {
                  v20 = sub_1B0DF5438((v26 > 1), v27 + 1, 1, v55);
                }

                v17 = v47;
                *(v20 + 2) = v27 + 1;
                *&v20[8 * v27 + 32] = v25;
                v18 = *v7;
                v19 = *(v7 + 8);
                v53 = *(v7 + 20);
                v54 = *(v7 + 16);
                v52 = *(v7 + 22);
                v12 = v48;
                v11 = v49;
                if (v47 >= a3)
                {
                  goto LABEL_24;
                }
              }

              v38 = *v7;

              sub_1B0436554();
              v31 = swift_allocError();
              *v39 = 0xD000000000000011;
              v39[1] = 0x80000001B0F2FEE0;
              v39[2] = 0xD000000000000020;
              v39[3] = 0x80000001B0F2FA10;
              v39[4] = 202;
              swift_willThrow();
              v4 = v55;
              v12 = v48;
              v11 = v49;
              v33 = v51;
LABEL_27:
              v34 = v56;
            }

            swift_willThrow();

            *v7 = v34;
            *(v7 + 8) = v19;
            *(v7 + 16) = v54;
            *(v7 + 20) = v53;
            *(v7 + 22) = v52;
          }

          swift_willThrow();
          v58 = v31;
          v40 = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
          if (swift_dynamicCast())
          {

            return v4;
          }

          v41 = *v7;

          *v7 = v33;
          *(v7 + 8) = v16;
          *(v7 + 16) = v45;
          *(v7 + 20) = v44;
          *(v7 + 22) = v43;
        }

        swift_willThrow();
        v42 = *v7;

        goto LABEL_6;
      }

      v28 = *v7;

      sub_1B0436554();
      swift_allocError();
      *v29 = 0xD000000000000011;
      v29[1] = 0x80000001B0F2FEE0;
      v29[2] = 0xD000000000000020;
      v29[3] = 0x80000001B0F2FA10;
      v29[4] = 202;
      swift_willThrow();
    }

    *(v4 + 16) = 0;
LABEL_6:

    *v7 = v8;
    *(v7 + 8) = v9;
    *(v7 + 16) = v10;
    *(v7 + 20) = v11;
    *(v7 + 22) = v12;
LABEL_8:
    swift_willThrow();
    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0DC19BC(unint64_t result, uint64_t a2, int64_t a3, int64_t a4)
{
  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v6 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v15 = a3;
LABEL_18:
      swift_willThrow();
      return v5;
    }

    v8 = result;
    v9 = *result;
    v5 = *(result + 8);
    v10 = *(result + 12);
    v11 = *(result + 16);
    v25 = *(result + 20);
    v12 = *(result + 22);
    if (a2 + 2 >= a3)
    {
      sub_1B0439BCC();
      v13 = swift_allocError();
      *v16 = a3;
    }

    else
    {
      swift_retain_n();
      sub_1B0DFE880(0x7EuLL, 0xE100000000000000, 0, 0, v8, v6 + 1, a3);
      v13 = v4;
      if (!v4)
      {

        goto LABEL_12;
      }

      v14 = *v8;

      *v8 = v9;
      *(v8 + 8) = v5;
      *(v8 + 12) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v25;
      *(v8 + 22) = v12;
    }

    swift_willThrow();
    v17 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (!swift_dynamicCast())
    {

LABEL_17:
      *v8 = v9;
      *(v8 + 8) = v5;
      *(v8 + 12) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v25;
      *(v8 + 22) = v12;
      goto LABEL_18;
    }

LABEL_12:
    sub_1B0DFE880(0x7BuLL, 0xE100000000000000, 0, 0, v8, v6, a3);
    v23 = v5;
    v18 = sub_1B0DFF3DC(v8, v6, a3, 1);
    v5 = v18;
    if (v18 < 0)
    {
      v21 = *v8;

      sub_1B0436554();
      swift_allocError();
      *v22 = 0xD000000000000011;
      v22[1] = 0x80000001B0F2FEE0;
      v22[2] = 0xD000000000000020;
      v22[3] = 0x80000001B0F2FA10;
      v22[4] = 202;
    }

    else
    {
      if (v18 <= a4)
      {
        sub_1B0DFE880(0x7DuLL, 0xE100000000000000, 0, 0, v8, v6, a3);
        sub_1B0448078(v8, v6, a3);

        return v5;
      }

      v19 = *v8;

      sub_1B0D98DC0();
      swift_allocError();
      *v20 = v5;
      v20[1] = a4;
    }

    swift_willThrow();
    v5 = v23;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0DC1D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B0E0041C(a1, a2, a3);
  if (!v3)
  {
    v4 = sub_1B0DFF2E8(v5, v6, v7 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 3028);
    v9 = v8;
    if ((sub_1B0E44CF8() - 256) < 0xFFFFFFFFFFFFFF01 || (sub_1B0D7C750(v4, v9) & 1) == 0)
    {

      sub_1B0436554();
      swift_allocError();
      *v10 = 0xD000000000000012;
      v10[1] = 0x80000001B0F301B0;
      v10[2] = 0xD000000000000020;
      v10[3] = 0x80000001B0F2FA10;
      v10[4] = 3030;
      swift_willThrow();
    }
  }

  return v4;
}

unint64_t sub_1B0DC1F08(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  return sub_1B0DB879C(a1, a2, a3, *(v3 + 16));
}

uint64_t sub_1B0DC1F44(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  return sub_1B0DB88F4(a1, a2, a3, *(v3 + 16));
}

uint64_t sub_1B0DC2068(uint64_t result)
{
  v1 = *(result + 64) & 0x1FFLL;
  *(result + 16) &= 0x1FFFFFFFFuLL;
  *(result + 64) = v1;
  return result;
}

uint64_t sub_1B0DC20D8(uint64_t result)
{
  v1 = *(result + 64) & 0x1FFLL | 0x8000000000000000;
  *(result + 16) &= 0x1FFFFFFFFuLL;
  *(result + 64) = v1;
  return result;
}

unint64_t sub_1B0DC214C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
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
      *v15 = a3;
      return swift_willThrow();
    }

    v7 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_1B0441264(result, v18);
    if (v4)
    {
      *v7 = v9;
      *(v7 + 8) = v10;
      *(v7 + 16) = v11;
      *(v7 + 20) = v12;
      *(v7 + 22) = v13;
      return swift_willThrow();
    }

    v16 = sub_1B0DFF2E8(v18[0], v18[1], v19 | (v20 << 32) | (v21 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 115);
    v17 = a4(v16);

    return v17;
  }

  return result;
}

uint64_t sub_1B0DC22A4(unint64_t a1, uint64_t a2, int64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B0DFE880(0x5BuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (v4)
  {
    return a4;
  }

  v10 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v10 >= a3)
    {
      sub_1B0439BCC();
      v14 = swift_allocError();
      *v15 = a3;
      swift_willThrow();
      v27 = v14;
      v16 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v27 = v14;
        v17 = v14;
        if ((swift_dynamicCast() & 1) == 0)
        {

          return a4;
        }
      }

      if (v10 >= a3)
      {
        sub_1B0439BCC();
        swift_allocError();
        *v21 = a3;
        swift_willThrow();
        return a4;
      }

      v18 = *a1;
      v19 = *(a1 + 8);
      v20 = *(a1 + 16);
      v25 = *(a1 + 22);
      v26 = *(a1 + 20);

      v13 = sub_1B0DC214C(a1, v10, a3, a4);
    }

    else
    {
      v11 = *a1;
      v12 = *(a1 + 8);
      v23 = *(a1 + 20);
      v24 = *(a1 + 16);
      v22 = *(a1 + 22);

      v13 = sub_1B0DC214C(a1, a2 + 1, a3, a4);
    }

    a4 = v13;

    sub_1B0DFE880(0x5DuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    return a4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DC25B8(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 3) == v1)
  {
    sub_1B0D3EA30();
    swift_allocError();
    return swift_willThrow();
  }

  v4 = *(a1 + 22);
  v5 = *(a1 + 10);
  v6 = *a1;
  result = swift_beginAccess();
  v7 = v1 + 1;
  if (v1 == -1)
  {
    __break(1u);
  }

  else
  {
    v8 = *(*(v6 + 24) + (v4 | (v5 << 8)) + v1);
    *(a1 + 2) = v7;
    if (!isalnum(v8) && (v8 - 45) >= 2 && v8 != 95 && v8 != 126)
    {
      sub_1B0E46298();

      v9 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v9);

      sub_1B0436554();
      swift_allocError();
      *v10 = 0xD00000000000001ELL;
      v10[1] = 0x80000001B0F302C0;
      v10[2] = 0xD000000000000020;
      v10[3] = 0x80000001B0F2FA10;
      v10[4] = 1242;
      return swift_willThrow();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
    result = swift_allocObject();
    *(result + 16) = xmmword_1B0EC1E70;
    *(result + 32) = v8;
  }

  return result;
}

uint64_t sub_1B0DC277C(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 3) == v1)
  {
    sub_1B0D3EA30();
    swift_allocError();
    return swift_willThrow();
  }

  v4 = *(a1 + 22);
  v5 = *(a1 + 10);
  v6 = *a1;
  result = swift_beginAccess();
  v7 = v1 + 1;
  if (v1 == -1)
  {
    __break(1u);
  }

  else
  {
    v8 = *(*(v6 + 24) + (v4 | (v5 << 8)) + v1);
    *(a1 + 2) = v7;
    if ((v8 - 39) >= 6 && v8 != 33 && v8 != 36)
    {
      sub_1B0E46298();

      v9 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v9);

      sub_1B0436554();
      swift_allocError();
      *v10 = 0xD000000000000021;
      v10[1] = 0x80000001B0F302E0;
      v10[2] = 0xD000000000000020;
      v10[3] = 0x80000001B0F2FA10;
      v10[4] = 1250;
      return swift_willThrow();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
    result = swift_allocObject();
    *(result + 16) = xmmword_1B0EC1E70;
    *(result + 32) = v8;
  }

  return result;
}

void sub_1B0DC2934(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return;
  }

  if (v4 >= a3)
  {
    sub_1B0439BCC();
    v12 = swift_allocError();
    *v13 = a3;
  }

  else
  {
    v7 = *a1;
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    v10 = *(a1 + 20);
    v11 = *(a1 + 22);
    sub_1B0DC25B8(a1);
    v12 = v3;
    if (!v3)
    {
      return;
    }

    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 20) = v10;
    *(a1 + 22) = v11;
  }

  swift_willThrow();
  v31 = v12;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast())
  {
  }

  else
  {

    v31 = v12;
    v15 = v12;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (v4 < a3)
  {
    v16 = *a1;
    v17 = *(a1 + 8);
    v18 = *(a1 + 16);
    v19 = *(a1 + 20);
    v20 = *(a1 + 22);
    sub_1B0DC277C(a1);
    return;
  }

  sub_1B0439BCC();
  v21 = swift_allocError();
  *v22 = a3;
  swift_willThrow();
  v31 = v21;
  v23 = v21;
  if (swift_dynamicCast())
  {

    goto LABEL_16;
  }

  v31 = v21;
  v24 = v21;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:

    return;
  }

LABEL_16:

  if (v4 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v30 = a3;
    swift_willThrow();
  }

  else
  {
    v25 = *a1;
    v26 = *(a1 + 8);
    v27 = *(a1 + 16);
    v28 = *(a1 + 20);
    v29 = *(a1 + 22);

    sub_1B0DBC97C(a1, v4, a3);
  }
}

uint64_t sub_1B0DC2C8C(uint64_t a1, uint64_t a2, size_t a3)
{
  if (qword_1EB6DE5C0 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v7 = HIDWORD(qword_1EB737EB0);
    v8 = dword_1EB737EB8;
    v9 = word_1EB737EBC;
    v10 = byte_1EB737EBE;
    v25 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v26 = qword_1EB737EB0;
    v27 = dword_1EB737EB8;
    v28 = word_1EB737EBC;
    v29 = byte_1EB737EBE;

    sub_1B0DC2934(a1, a2, a3);
    v12 = a1;
    a1 = v3;
    if (v3)
    {
      break;
    }

    v13 = v11;
    v23 = v12;
    v24 = a2;
    while (1)
    {
      a2 = a3;
      a3 = *(v13 + 16);
      v14 = v7 + a3;
      if (__CFADD__(v7, a3))
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        if (v14 >= v8)
        {
          v15 = v14 - v8;
        }

        else
        {
          v15 = 0;
        }

        v16 = sub_1B03904C0();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v15, v16 & 1);
      }

      if (HIDWORD(a3))
      {
        goto LABEL_23;
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(a3, v7);
      LODWORD(v8) = v27;
      swift_beginAccess();
      v17 = v29 | (v28 << 8);
      LODWORD(v18) = v27 - v17;
      if (v27 - v17 >= v7)
      {
        LODWORD(v18) = v7;
      }

      if (v7)
      {
        v18 = v18;
      }

      else
      {
        v18 = 0;
      }

      memmove((*(v25 + 24) + v17 + v18), (v13 + 32), a3);

      LODWORD(v7) = HIDWORD(v26) + a3;
      if (__CFADD__(HIDWORD(v26), a3))
      {
        goto LABEL_24;
      }

      HIDWORD(v26) += a3;
      a3 = a2;
      v3 = 0;
      sub_1B0DC2934(v23, v24, a2);
      v13 = v19;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  v20 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast())
  {

    v8 = sub_1B0DFF2E8(v21, v26 | (v7 << 32), v8 | (v9 << 32) | (v10 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 989);
  }

  else
  {
  }

  return v8;
}

unint64_t sub_1B0DC2F40(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_1B0DFF3DC(a1, a2, a3, 1);
  if (!v3)
  {
    if ((result & 0x8000000000000000) != 0 || (sub_1B0DFE880(0x2EuLL, 0xE100000000000000, 0, 0, a1, a2, a3), (sub_1B0DFF3DC(a1, a2, a3, 1) & 0x8000000000000000) != 0) || (sub_1B0DFE880(0x2EuLL, 0xE100000000000000, 0, 0, a1, a2, a3), (sub_1B0DFF3DC(a1, a2, a3, 1) & 0x8000000000000000) != 0) || (sub_1B0DFE880(0x2EuLL, 0xE100000000000000, 0, 0, a1, a2, a3), (sub_1B0DFF3DC(a1, a2, a3, 1) & 0x8000000000000000) != 0))
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
      v12 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](46, 0xE100000000000000);
      v8 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v8);

      MEMORY[0x1B2726E80](46, 0xE100000000000000);
      v9 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v9);

      MEMORY[0x1B2726E80](46, 0xE100000000000000);
      v10 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v10);

      return v12;
    }
  }

  return result;
}

unint64_t sub_1B0DC31B4(unint64_t result, uint64_t a2, int64_t a3)
{
  v4 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v5 = a3;
    if (v4 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v13 = v5;
    }

    else
    {
      v6 = result;
      v7 = *result;
      v8 = *(result + 8);
      v9 = *(result + 16);
      v10 = *(result + 20);
      v11 = *(result + 22);

      sub_1B0DFE880(0x2FuLL, 0xE100000000000000, 0, 0, v6, v4, v5);
      if (v3)
      {
        v12 = *v6;
      }

      else
      {
        v14 = v4 + 1;
        v15 = *v6;
        if (v14 < v5)
        {
          v16 = *v6;

          sub_1B0DFE880(0x3D4449553BuLL, 0xE500000000000000, 0, 0, v6, v14, v5);
          v5 = sub_1B0D9EA70(v6, v14, v5);

          return v5;
        }

        v17 = *v6;

        sub_1B0439BCC();
        swift_allocError();
        *v18 = v5;
        swift_willThrow();
      }

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
    }

    swift_willThrow();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DC3380@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = a3;
    if (v14 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v16 = v9;
      return swift_willThrow();
    }

    v4 = a1;
    v10 = a4;
    v5 = *a1;
    v13 = *(a1 + 8);
    v12 = *(a1 + 16);
    v11 = *(a1 + 20);
    v8 = *(a1 + 22);

    sub_1B0DFE880(0x3D4552495058453BuLL, 0xE800000000000000, 0, 0, v4, v14, v9);
    if (v6)
    {
      v15 = *v4;

LABEL_13:
      *v4 = v5;
      *(v4 + 8) = v13;
      *(v4 + 16) = v12;
      *(v4 + 20) = v11;
      *(v4 + 22) = v8;
      return swift_willThrow();
    }

    v17 = v14 + 1;
    v18 = *v4;
    if (v14 + 1 >= v9)
    {

      sub_1B0439BCC();
      swift_allocError();
      *v20 = v9;
LABEL_12:
      swift_willThrow();
      goto LABEL_13;
    }

    v19 = v14 + 2;
    if (v19 >= v9)
    {
      v21 = *v4;
      sub_1B0439BCC();
      swift_allocError();
      *v22 = v9;
      swift_willThrow();
LABEL_11:

      goto LABEL_12;
    }

    v35 = v17;
    swift_retain_n();
    v34 = sub_1B0DC0AB0(v4, v19, v9, 4);
    sub_1B0DFE880(0x2DuLL, 0xE100000000000000, 0, 0, v4, v19, v9);
    v33 = sub_1B0DC0AB0(v4, v19, v9, 2);
    sub_1B0DFE880(0x2DuLL, 0xE100000000000000, 0, 0, v4, v19, v9);
    a1 = sub_1B0DC0AB0(v4, v19, v9, 2);
    v7 = 0;
  }

  v24 = a1;

  if (v33 - 13 < 0xFFFFFFFFFFFFFFF4 || v24 - 32 < 0xFFFFFFFFFFFFFFE1)
  {
    __break(1u);
  }

  else
  {
    v32 = v24;
    sub_1B0DFE880(0x54uLL, 0xE100000000000000, 0, 0, v4, v35, v9);
    if (v7)
    {
      v25 = *v4;

      goto LABEL_11;
    }

    v31 = sub_1B0DC0AB0(v4, v35, v9, 2);
    sub_1B0DFE880(0x3AuLL, 0xE100000000000000, 0, 0, v4, v35, v9);
    v26 = sub_1B0DC0AB0(v4, v35, v9, 2);
    sub_1B0DFE880(0x3AuLL, 0xE100000000000000, 0, 0, v4, v35, v9);
    v30 = sub_1B0DC0AB0(v4, v35, v9, 2);
    sub_1B0E03020(v4, v35, v9);
    v36 = v27;
    v29 = v28;

    *v10 = v34;
    *(v10 + 8) = v33;
    *(v10 + 16) = v32;
    *(v10 + 24) = v31;
    *(v10 + 32) = v26;
    *(v10 + 40) = v30;
    *(v10 + 48) = v36;
    *(v10 + 56) = v29 & 1;
  }

  return result;
}

uint64_t sub_1B0DC3808@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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

uint64_t sub_1B0DC3848(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 3) == v1)
  {
    sub_1B0D3EA30();
    swift_allocError();
    return swift_willThrow();
  }

  v3 = *(a1 + 22);
  v4 = *(a1 + 10);
  v5 = *a1;
  result = swift_beginAccess();
  v7 = v1 + 1;
  if (v1 != -1)
  {
    v8 = *(*(v5 + 24) + (v3 | (v4 << 8)) + v1);
    *(a1 + 2) = v7;
    if (v8 == 38 || v8 == 61)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
      result = swift_allocObject();
      *(result + 16) = xmmword_1B0EC1E70;
      *(result + 32) = v8;
      return result;
    }

    sub_1B0E46298();

    v9 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v9);

    sub_1B0436554();
    swift_allocError();
    *v10 = 0xD000000000000012;
    v10[1] = 0x80000001B0F30330;
    v10[2] = 0xD000000000000020;
    v10[3] = 0x80000001B0F2FA10;
    v10[4] = 1293;
    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DC39F4(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 3) == v1)
  {
    sub_1B0D3EA30();
    swift_allocError();
    return swift_willThrow();
  }

  v4 = *(a1 + 22);
  v5 = *(a1 + 10);
  v6 = *a1;
  result = swift_beginAccess();
  v7 = v1 + 1;
  if (v1 == -1)
  {
    __break(1u);
  }

  else
  {
    v8 = *(*(v6 + 24) + (v4 | (v5 << 8)) + v1);
    *(a1 + 2) = v7;
    if ((v8 - 47) > 0x11 || ((1 << (v8 - 47)) & 0x20801) == 0)
    {
      sub_1B0E46298();

      v10 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v10);

      sub_1B0436554();
      swift_allocError();
      *v11 = 0xD000000000000012;
      v11[1] = 0x80000001B0F30350;
      v11[2] = 0xD000000000000020;
      v11[3] = 0x80000001B0F2FA10;
      v11[4] = 1312;
      return swift_willThrow();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
    result = swift_allocObject();
    *(result + 16) = xmmword_1B0EC1E70;
    *(result + 32) = v8;
  }

  return result;
}

uint64_t sub_1B0DC3C10(unint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1B0DBEA68(a1, a2, a3);
}

void sub_1B0DC3C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {

    sub_1B0B36244(a3, a4);
  }
}

uint64_t sub_1B0DC3CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1B0DB751C(a1, a2, a3);
}

uint64_t sub_1B0DC3D34@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  result = v6(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
    *(a3 + 8) = v9;
    *(a3 + 16) = v10;
    *(a3 + 24) = v11 & 1;
  }

  return result;
}

uint64_t sub_1B0DC3D7C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  result = v6(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
    a3[1] = v9;
  }

  return result;
}

uint64_t sub_1B0DC3DB8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  result = v6(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
    *(a3 + 8) = v9;
  }

  return result;
}

uint64_t sub_1B0DC3EB0(void *a1)
{
  v2 = v1;
  v32 = a1;
  v4 = a1[2];
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, (v1 + 8), *(v1 + 20));
    if (v7)
    {
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = result;
    v10 = *(v1 + 20);
    v11 = __CFADD__(v10, result);
    v12 = v10 + result;
    if (v11)
    {
      goto LABEL_29;
    }

    *(v1 + 20) = v12;
  }

  else
  {
    v9 = 0;
    v12 = *(v1 + 20);
  }

  v13 = v12;
  result = sub_1B0CFC1B0(40, 0xE100000000000000, (v1 + 8), v12);
  if (v14)
  {
    v15._countAndFlagsBits = 40;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v11 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v11)
  {
    goto LABEL_24;
  }

  *(v1 + 20) = v17;
  v18 = v9 + result;
  if (__OFADD__(v9, result))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  MEMORY[0x1EEE9AC00](result);
  v31[2] = sub_1B0DC40D0;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = &v32;
  v31[6] = 32;
  v31[7] = 0xE100000000000000;
  result = sub_1B0DE5BC8(0, sub_1B0DC40FC, v31, a1);
  v19 = v18 + result;
  if (__OFADD__(v18, result))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = *(v2 + 20);
  result = sub_1B0CFC1B0(41, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v21)
  {
    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
  }

  v23 = *(v2 + 20);
  v24 = (v23 + result);
  if (__CFADD__(v23, result))
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v24;
  v25 = __OFADD__(v19, result);
  v26 = v19 + result;
  if (v25)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    return v26;
  }

  result = sub_1B0CFC1B0(0, 0xE000000000000000, (v2 + 8), v24);
  if (v27)
  {
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v28, v24);
  }

  v29 = *(v2 + 20);
  v11 = __CFADD__(v29, result);
  v30 = v29 + result;
  if (v11)
  {
    goto LABEL_30;
  }

  *(v2 + 20) = v30;
  v25 = __OFADD__(v26, result);
  result += v26;
  if (v25)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return result;
}

unint64_t sub_1B0DC4120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v66 = *(a3 + 16);
  if (!v66)
  {
    v57 = *(v3 + 5);
    result = sub_1B0CFC1B0(4999502, 0xE300000000000000, v3 + 1, *(v3 + 5));
    if (v58)
    {
      v59._countAndFlagsBits = 4999502;
      v59._object = 0xE300000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v59, v57);
    }

    v60 = *(v3 + 5);
    v17 = __CFADD__(v60, result);
    v61 = v60 + result;
    if (!v17)
    {
      *(v3 + 5) = v61;
      return result;
    }

    goto LABEL_62;
  }

  v6 = *v3;
  *v3 = 0;
  v7 = *(v3 + 5);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, v3 + 1, *(v3 + 5));
  if (v9)
  {
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = result;
  v12 = *(v3 + 5);
  v13 = (v12 + result);
  if (__CFADD__(v12, result))
  {
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
    __break(1u);
    goto LABEL_60;
  }

  *(v3 + 5) = v13;
  result = sub_1B0CFC1B0(40, 0xE100000000000000, v3 + 1, v13);
  if (v14)
  {
    v15._countAndFlagsBits = 40;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v3 + 5);
  v17 = __CFADD__(v16, result);
  v18 = v16 + result;
  if (v17)
  {
    goto LABEL_55;
  }

  *(v3 + 5) = v18;
  if (__OFADD__(v11, result))
  {
    goto LABEL_56;
  }

  v63 = v11 + result;
  v62 = v6;

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v64 = a2;
  while (v66 != v20)
  {
    if (v20 >= *(a2 + 16))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v24 = *(a2 + v19 + 32);
    v25 = *(a2 + v19 + 40);
    v26 = *(a3 + v19 + 40);
    v67 = *(a3 + v19 + 32);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v27 = sub_1B0DD55E0(v24, v25);
    v28 = *(v4 + 5);
    result = sub_1B0CFC1B0(32, 0xE100000000000000, v4 + 1, *(v4 + 5));
    if (v29)
    {
      v30._countAndFlagsBits = 32;
      v30._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v30, v28);
    }

    v31 = *(v4 + 5);
    v32 = (v31 + result);
    if (__CFADD__(v31, result))
    {
      goto LABEL_47;
    }

    *(v4 + 5) = v32;
    v23 = __OFADD__(v27, result);
    v33 = v27 + result;
    if (v23)
    {
      goto LABEL_48;
    }

    if (v26)
    {
      result = sub_1B0DD55E0(v67, v26);
      v34 = v33 + result;
      if (__OFADD__(v33, result))
      {
        goto LABEL_49;
      }
    }

    else
    {
      result = sub_1B0CFC1B0(4999502, 0xE300000000000000, v4 + 1, v32);
      if (v35)
      {
        v36._countAndFlagsBits = 4999502;
        v36._object = 0xE300000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v36, v32);
      }

      v37 = *(v4 + 5);
      v17 = __CFADD__(v37, result);
      v38 = v37 + result;
      if (v17)
      {
        goto LABEL_53;
      }

      *(v4 + 5) = v38;
      v34 = v33 + result;
      if (__OFADD__(v33, result))
      {
        goto LABEL_49;
      }
    }

    v23 = __OFADD__(v21, v34);
    v39 = v21 + v34;
    if (v23)
    {
      goto LABEL_50;
    }

    if (v20 >= v66 - 1)
    {

      v22 = 0;
      a2 = v64;
    }

    else
    {
      v40 = *(v4 + 5);
      v41 = sub_1B0CFC1B0(32, 0xE100000000000000, v4 + 1, *(v4 + 5));
      if (v42)
      {
        v43._countAndFlagsBits = 32;
        v43._object = 0xE100000000000000;
        v41 = ByteBuffer._setStringSlowpath(_:at:)(v43, v40);
      }

      v22 = v41;

      v44 = *(v4 + 5);
      v17 = __CFADD__(v44, v22);
      v45 = v44 + v22;
      a2 = v64;
      if (v17)
      {
        goto LABEL_52;
      }

      *(v4 + 5) = v45;
    }

    v19 += 16;
    ++v20;
    v23 = __OFADD__(v39, v22);
    v21 = v39 + v22;
    if (v23)
    {
      goto LABEL_51;
    }
  }

  v46 = v63 + v21;
  if (__OFADD__(v63, v21))
  {
    goto LABEL_57;
  }

  v47 = *(v4 + 5);
  result = sub_1B0CFC1B0(41, 0xE100000000000000, v4 + 1, *(v4 + 5));
  if (v48)
  {
    v49._countAndFlagsBits = 41;
    v49._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v49, v47);
  }

  v50 = *(v4 + 5);
  v51 = (v50 + result);
  if (__CFADD__(v50, result))
  {
    goto LABEL_58;
  }

  *(v4 + 5) = v51;
  v23 = __OFADD__(v46, result);
  v52 = v46 + result;
  if (v23)
  {
    goto LABEL_59;
  }

  result = sub_1B0CFC1B0(0, 0xE000000000000000, v4 + 1, v51);
  if (v53)
  {
    v54._countAndFlagsBits = 0;
    v54._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v54, v51);
  }

  v55 = *(v4 + 5);
  v17 = __CFADD__(v55, result);
  v56 = v55 + result;
  if (v17)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  *(v4 + 5) = v56;
  v23 = __OFADD__(v52, result);
  result += v52;
  if (v23)
  {
    goto LABEL_61;
  }

  *v4 = v62;
  return result;
}

NIOIMAPCore2::IMAPCalendarDay_optional __swiftcall IMAPCalendarDay.init(year:month:day:)(Swift::Int year, Swift::Int month, Swift::Int day)
{
  v5 = (day - 32) < 0xFFFFFFFFFFFFFFE1 || (month - 13) < 0xFFFFFFFFFFFFFFF4 || (year - 2501) < 0xFFFFFFFFFFFFFDA7;
  if (v5)
  {
    year = 0;
    month = 0;
    day = 0;
  }

  result.value.day = day;
  result.value.month = month;
  result.value.year = year;
  result.is_nil = v5;
  return result;
}

uint64_t IMAPCalendarDay.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1B2728D70](a2);
  MEMORY[0x1B2728D70](a3);
  return MEMORY[0x1B2728D70](a4);
}

uint64_t IMAPCalendarDay.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  MEMORY[0x1B2728D70](a2);
  MEMORY[0x1B2728D70](a3);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0DC4654()
{
  result = qword_1EB6E7648;
  if (!qword_1EB6E7648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7648);
  }

  return result;
}

uint64_t sub_1B0DC46B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v17._countAndFlagsBits = sub_1B0E469C8();
  v17._object = v5;
  v6 = MEMORY[0x1B2726E80](45, 0xE100000000000000);
  v7 = sub_1B0DC47E0(v6, a2);
  MEMORY[0x1B2726E80](v7, 0xE300000000000000);

  MEMORY[0x1B2726E80](45, 0xE100000000000000);
  v8 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v8);

  v9 = *(v2 + 20);
  v10 = sub_1B0CFC1B0(v17._countAndFlagsBits, v17._object, (v3 + 8), *(v3 + 20));
  if (v11)
  {
    v10 = ByteBuffer._setStringSlowpath(_:at:)(v17, v9);
  }

  v12 = v10;

  v14 = *(v3 + 20);
  v15 = __CFADD__(v14, v12);
  v16 = v14 + v12;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 20) = v16;
    return v12;
  }

  return result;
}

uint64_t sub_1B0DC47E0(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) <= 0xB)
  {
    return *&aJan[8 * a2 - 8];
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DC4804()
{
  v1 = sub_1B0E44B98();
  v2 = v0;
  if (v1 == 7233898 && v0 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (v1 == 6448486 && v2 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (v1 == 7496045 && v2 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (v1 == 7499873 && v2 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 4;
  }

  else if (v1 == 7954797 && v2 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 5;
  }

  else if (v1 == 7239018 && v2 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 6;
  }

  else if (v1 == 7107946 && v2 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 7;
  }

  else if (v1 == 6780257 && v2 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 8;
  }

  else if (v1 == 7366003 && v2 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 9;
  }

  else if (v1 == 7627631 && v2 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 10;
  }

  else if (v1 == 7761774 && v2 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 11;
  }

  else if (v1 == 6514020 && v2 == 0xE300000000000000)
  {

    return 12;
  }

  else
  {
    v4 = sub_1B0E46A78();

    if (v4)
    {
      return 12;
    }

    else
    {
      return 0;
    }
  }
}

double IMAPServer.init(userAuthenticationMechanism:host:port:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, _OWORD *a9@<X8>)
{
  v12[64] = a8 & 1;
  *&v13 = a1;
  *(&v13 + 1) = a2;
  *&v14 = a3;
  *(&v14 + 1) = a4;
  *v15 = a5;
  *&v15[8] = a6;
  *&v15[16] = a7;
  v15[24] = a8 & 1;
  v16[0] = a1;
  v16[1] = a2;
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v16[6] = a7;
  v17 = a8 & 1;
  sub_1B0DC3C80(&v13, v12);
  sub_1B0DC1F64(v16);
  v10 = v14;
  *a9 = v13;
  a9[1] = v10;
  a9[2] = *v15;
  result = *&v15[9];
  *(a9 + 41) = *&v15[9];
  return result;
}

uint64_t IMAPServer.userAuthenticationMechanism.getter()
{
  v1 = *v0;
  sub_1B0DC4CD8(*v0, v0[1], v0[2], v0[3]);
  return v1;
}

void sub_1B0DC4CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    sub_1B0DC4D28(a3, a4);
  }
}

uint64_t sub_1B0DC4D28(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

void IMAPServer.userAuthenticationMechanism.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B0DC3C30(*v4, v4[1], v4[2], v4[3]);
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t IMAPServer.host.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t IMAPServer.host.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t IMAPServer.port.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t IMAPServer.port.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t IMAPServer.hash(into:)()
{
  v1 = v0[1];
  if (v1 == 1)
  {
    goto LABEL_4;
  }

  v2 = *v0;
  v3 = v0[2];
  v4 = v0[3];
  sub_1B0E46C68();
  if (!v1)
  {
    sub_1B0E46C68();
    if (v4 == 1)
    {
      goto LABEL_4;
    }

LABEL_9:
    sub_1B0E46C68();
    if (v4)
    {
      MEMORY[0x1B2728D70](1);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1B2728D70](0);
    }

    goto LABEL_5;
  }

  sub_1B0E46C68();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v4 != 1)
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_1B0E46C68();
LABEL_5:
  v5 = v0[4];
  v6 = v0[5];
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v0[7])
  {
    return sub_1B0E46C68();
  }

  v8 = v0[6];
  sub_1B0E46C68();
  return MEMORY[0x1B2728D70](v8);
}

uint64_t IMAPServer.hashValue.getter()
{
  sub_1B0E46C28();
  IMAPServer.hash(into:)();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC4FA8()
{
  sub_1B0E46C28();
  IMAPServer.hash(into:)();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC4FEC()
{
  sub_1B0E46C28();
  IMAPServer.hash(into:)();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC5028(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return _s12NIOIMAPCore210IMAPServerV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t sub_1B0DC5084(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 8);
  if (v4 == 1)
  {
    v5 = 0;
    v6 = *(v1 + 20);
  }

  else
  {
    v7 = sub_1B0E35474(*a1, v4, *(a1 + 16), *(a1 + 24));
    v8 = *(v1 + 20);
    result = sub_1B0CFC1B0(64, 0xE100000000000000, (v1 + 8), *(v1 + 20));
    if (v10)
    {
      v11._countAndFlagsBits = 64;
      v11._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
    }

    v12 = *(v1 + 20);
    v13 = __CFADD__(v12, result);
    v6 = v12 + result;
    if (v13)
    {
      goto LABEL_22;
    }

    *(v1 + 20) = v6;
    v5 = v7 + result;
    if (__OFADD__(v7, result))
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }
  }

  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  v16 = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = sub_1B0CFC1B0(v15, v14, (v1 + 8), v16);
  if (v18)
  {
    v19._countAndFlagsBits = v15;
    v19._object = v14;
    v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, v16);
  }

  v20 = v17;

  v21 = *(v2 + 20);
  v22 = (v21 + v20);
  if (__CFADD__(v21, v20))
  {
    __break(1u);
    goto LABEL_20;
  }

  *(v2 + 20) = v22;
  v23 = v5 + v20;
  if (__OFADD__(v5, v20))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (*(a1 + 56))
  {
    v24 = 0;
  }

  else
  {
    v31 = *(a1 + 48);
    v25 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v25);

    v26 = sub_1B0CFC1B0(58, 0xE100000000000000, (v2 + 8), v22);
    if (v27)
    {
      v28._countAndFlagsBits = 58;
      v28._object = 0xE100000000000000;
      v26 = ByteBuffer._setStringSlowpath(_:at:)(v28, v22);
    }

    v24 = v26;

    v29 = *(v2 + 20);
    v13 = __CFADD__(v29, v24);
    v30 = v29 + v24;
    if (v13)
    {
      goto LABEL_24;
    }

    *(v2 + 20) = v30;
  }

  result = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t _s12NIOIMAPCore210IMAPServerV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (v2 == 1)
  {
    if (v6 == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (v6 == 1)
  {
LABEL_10:
    sub_1B0DC4CD8(*a2, *(a2 + 8), v9, v8);
    sub_1B0DC4CD8(v3, v2, v5, v4);
    sub_1B0DC3C30(v3, v2, v5, v4);
    v17 = v7;
    v18 = v6;
    v19 = v9;
    v20 = v8;
LABEL_35:
    sub_1B0DC3C30(v17, v18, v19, v20);
    return 0;
  }

  if (v2)
  {
    if (!v6)
    {
      sub_1B0DC4CD8(*a2, 0, v9, v8);
      sub_1B0DC4CD8(v3, v2, v5, v4);
LABEL_34:
      sub_1B0B36244(v9, v8);
      v17 = v3;
      v18 = v2;
      v19 = v5;
      v20 = v4;
      goto LABEL_35;
    }

    if (v3 != v7 || v2 != v6)
    {
      v21 = a1;
      v22 = *a1;
      v23 = a2;
      v24 = sub_1B0E46A78();
      a2 = v23;
      v25 = v24;
      a1 = v21;
      if ((v25 & 1) == 0)
      {
        v26 = v7;
        v27 = v6;
        v28 = v9;
        v29 = v8;
LABEL_31:
        sub_1B0DC4CD8(v26, v27, v28, v29);
        v30 = v3;
        v31 = v2;
        goto LABEL_32;
      }
    }
  }

  else if (v6)
  {
    sub_1B0DC4CD8(*a2, *(a2 + 8), v9, v8);
    v30 = v3;
    v31 = 0;
LABEL_32:
    v38 = v5;
    v39 = v4;
LABEL_33:
    sub_1B0DC4CD8(v30, v31, v38, v39);

    goto LABEL_34;
  }

  if (v4 == 1)
  {
    if (v8 != 1)
    {
      sub_1B0DC4CD8(v7, v6, v9, v8);
      v30 = v3;
      v31 = v2;
      v38 = v5;
      v39 = 1;
      goto LABEL_33;
    }

    v32 = a2;
    v33 = a1;
    sub_1B0DC4CD8(v7, v6, v9, 1);
    v34 = v3;
    v35 = v2;
    v36 = v5;
    v37 = 1;
    goto LABEL_26;
  }

  if (v8 == 1)
  {
    v26 = v7;
    v27 = v6;
    v28 = v9;
    v29 = 1;
    goto LABEL_31;
  }

  if (!v4)
  {
    if (v8)
    {
      sub_1B0DC4CD8(v7, v6, v9, v8);
      v30 = v3;
      v31 = v2;
      v38 = v5;
      v39 = 0;
      goto LABEL_33;
    }

    v32 = a2;
    v33 = a1;
    sub_1B0DC4CD8(v7, v6, v9, 0);
    v34 = v3;
    v35 = v2;
    v36 = v5;
    v37 = 0;
    goto LABEL_26;
  }

  if (!v8)
  {
    v26 = v7;
    v27 = v6;
    v28 = v9;
    v29 = 0;
    goto LABEL_31;
  }

  v32 = a2;
  v33 = a1;
  if (v5 == v9 && v4 == v8)
  {
    sub_1B0DC4CD8(v7, v6, v5, v4);
    v34 = v3;
    v35 = v2;
    v36 = v5;
    v37 = v4;
LABEL_26:
    sub_1B0DC4CD8(v34, v35, v36, v37);

    goto LABEL_27;
  }

  v41 = sub_1B0E46A78();
  sub_1B0DC4CD8(v7, v6, v9, v8);
  sub_1B0DC4CD8(v3, v2, v5, v4);

  if ((v41 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_27:
  sub_1B0B36244(v9, v8);
  sub_1B0DC3C30(v3, v2, v5, v4);
  a1 = v33;
  a2 = v32;
LABEL_3:
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    goto LABEL_6;
  }

  v10 = a1;
  v11 = *(a1 + 32);
  v12 = a2;
  v13 = sub_1B0E46A78();
  a2 = v12;
  v14 = v13;
  a1 = v10;
  v15 = 0;
  if (v14)
  {
LABEL_6:
    v16 = *(a2 + 56);
    if (*(a1 + 56))
    {
      if ((*(a2 + 56) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 48) != *(a2 + 48))
      {
        v16 = 1;
      }

      if (v16)
      {
        return 0;
      }
    }

    return 1;
  }

  return v15;
}

unint64_t sub_1B0DC5648()
{
  result = qword_1EB6E7650;
  if (!qword_1EB6E7650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7650);
  }

  return result;
}

uint64_t sub_1B0DC569C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0DC56E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double IMAPURL.init(server:query:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1B0D2E930(v33);
  v30 = v33[9];
  v31 = v33[10];
  v32 = v33[11];
  v26 = v33[5];
  v27 = v33[6];
  v28 = v33[7];
  v29 = v33[8];
  v22 = v33[1];
  v23 = v33[2];
  v24 = v33[3];
  v25 = v33[4];
  v6 = a1[1];
  v18 = *a1;
  v19 = v6;
  v7 = a1[2];
  v21 = v33[0];
  *v20 = v7;
  *&v20[9] = *(a1 + 41);
  sub_1B0DC58E0(a2, &v21);
  v46 = v29;
  v47 = v30;
  v48 = v31;
  v49 = v32;
  v42 = v25;
  v43 = v26;
  v44 = v27;
  v45 = v28;
  v38 = v21;
  v39 = v22;
  v40 = v23;
  v41 = v24;
  v34 = v18;
  v35 = v19;
  v36 = *v20;
  v37 = *&v20[16];
  v50[12] = v29;
  v50[13] = v30;
  v50[14] = v31;
  v50[15] = v32;
  v50[8] = v25;
  v50[9] = v26;
  v50[10] = v27;
  v50[11] = v28;
  v50[3] = *&v20[16];
  v50[4] = v21;
  v50[5] = v22;
  v50[6] = v23;
  v50[7] = v24;
  v50[0] = v18;
  v50[1] = v19;
  v50[2] = *v20;
  sub_1B0DC1FB8(&v34, &v17);
  sub_1B0DC2014(v50);
  v8 = v47;
  a3[12] = v46;
  a3[13] = v8;
  v9 = v49;
  a3[14] = v48;
  a3[15] = v9;
  v10 = v43;
  a3[8] = v42;
  a3[9] = v10;
  v11 = v45;
  a3[10] = v44;
  a3[11] = v11;
  v12 = v39;
  a3[4] = v38;
  a3[5] = v12;
  v13 = v41;
  a3[6] = v40;
  a3[7] = v13;
  v14 = v35;
  *a3 = v34;
  a3[1] = v14;
  result = *&v36;
  v16 = v37;
  a3[2] = v36;
  a3[3] = v16;
  return result;
}

uint64_t sub_1B0DC58E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7618, &qword_1B0EF5118);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0DC59EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7618, &qword_1B0EF5118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t IMAPURL.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(v0 + 56);
  if (v1 == 1)
  {
    goto LABEL_4;
  }

  v6 = *v0;
  v7 = v0[3];
  v21 = v0[2];
  sub_1B0E46C68();
  if (v1)
  {
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v7 == 1)
    {
LABEL_4:
      sub_1B0E46C68();
      goto LABEL_5;
    }
  }

  else
  {
    sub_1B0E46C68();
    if (v7 == 1)
    {
      goto LABEL_4;
    }
  }

  sub_1B0E46C68();
  if (v7)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

LABEL_5:
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1B0E46C68();
  if ((v5 & 1) == 0)
  {
    MEMORY[0x1B2728D70](v4);
  }

  v8 = *(v0 + 13);
  v22[8] = *(v0 + 12);
  v22[9] = v8;
  v9 = *(v0 + 15);
  v22[10] = *(v0 + 14);
  v22[11] = v9;
  v10 = *(v0 + 9);
  v22[4] = *(v0 + 8);
  v22[5] = v10;
  v11 = *(v0 + 11);
  v22[6] = *(v0 + 10);
  v22[7] = v11;
  v12 = *(v0 + 5);
  v22[0] = *(v0 + 4);
  v22[1] = v12;
  v13 = *(v0 + 7);
  v22[2] = *(v0 + 6);
  v22[3] = v13;
  if (sub_1B0DC63D0(v22) == 1)
  {
    return sub_1B0E46C68();
  }

  v15 = *(v0 + 13);
  v22[20] = *(v0 + 12);
  v22[21] = v15;
  v16 = *(v0 + 15);
  v22[22] = *(v0 + 14);
  v22[23] = v16;
  v17 = *(v0 + 9);
  v22[16] = *(v0 + 8);
  v22[17] = v17;
  v18 = *(v0 + 11);
  v22[18] = *(v0 + 10);
  v22[19] = v18;
  v19 = *(v0 + 5);
  v22[12] = *(v0 + 4);
  v22[13] = v19;
  v20 = *(v0 + 7);
  v22[14] = *(v0 + 6);
  v22[15] = v20;
  sub_1B0E46C68();
  return URLCommand.hash(into:)();
}

uint64_t IMAPURL.hashValue.getter()
{
  sub_1B0E46C28();
  IMAPURL.hash(into:)();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC5C9C()
{
  sub_1B0E46C28();
  IMAPURL.hash(into:)();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC5CE0()
{
  sub_1B0E46C28();
  IMAPURL.hash(into:)();
  return sub_1B0E46CB8();
}

BOOL sub_1B0DC5D1C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[13];
  v19[12] = a1[12];
  v19[13] = v2;
  v3 = a1[15];
  v19[14] = a1[14];
  v19[15] = v3;
  v4 = a1[9];
  v19[8] = a1[8];
  v19[9] = v4;
  v5 = a1[11];
  v19[10] = a1[10];
  v19[11] = v5;
  v6 = a1[5];
  v19[4] = a1[4];
  v19[5] = v6;
  v7 = a1[7];
  v19[6] = a1[6];
  v19[7] = v7;
  v8 = a1[1];
  v19[0] = *a1;
  v19[1] = v8;
  v9 = a1[3];
  v19[2] = a1[2];
  v19[3] = v9;
  v10 = a2[13];
  v20[12] = a2[12];
  v20[13] = v10;
  v11 = a2[15];
  v20[14] = a2[14];
  v20[15] = v11;
  v12 = a2[9];
  v20[8] = a2[8];
  v20[9] = v12;
  v13 = a2[11];
  v20[10] = a2[10];
  v20[11] = v13;
  v14 = a2[5];
  v20[4] = a2[4];
  v20[5] = v14;
  v15 = a2[7];
  v20[6] = a2[6];
  v20[7] = v15;
  v16 = a2[1];
  v20[0] = *a2;
  v20[1] = v16;
  v17 = a2[3];
  v20[2] = a2[2];
  v20[3] = v17;
  return _s12NIOIMAPCore27IMAPURLV23__derived_struct_equalsySbAC_ACtFZ_0(v19, v20);
}

uint64_t sub_1B0DC5DD0(_OWORD *a1)
{
  v3 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x2F2F3A70616D69, 0xE700000000000000, (v1 + 8), *(v1 + 20));
  if (v5)
  {
    v6._countAndFlagsBits = 0x2F2F3A70616D69;
    v6._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v6, v3);
  }

  v7 = result;
  v8 = *(v1 + 20);
  v9 = __CFADD__(v8, result);
  v10 = v8 + result;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v1 + 20) = v10;
  v11 = a1[1];
  v34[0] = *a1;
  v34[1] = v11;
  v35[0] = a1[2];
  *(v35 + 9) = *(a1 + 41);
  result = sub_1B0DC5084(v34);
  v12 = v7 + result;
  if (__OFADD__(v7, result))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = *(v1 + 20);
  result = sub_1B0CFC1B0(47, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v14)
  {
    v15._countAndFlagsBits = 47;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v9 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v9)
  {
    goto LABEL_16;
  }

  *(v1 + 20) = v17;
  v18 = v12 + result;
  if (__OFADD__(v12, result))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v19 = a1[13];
  v33[8] = a1[12];
  v33[9] = v19;
  v20 = a1[15];
  v33[10] = a1[14];
  v33[11] = v20;
  v21 = a1[9];
  v33[4] = a1[8];
  v33[5] = v21;
  v22 = a1[11];
  v33[6] = a1[10];
  v33[7] = v22;
  v23 = a1[5];
  v33[0] = a1[4];
  v33[1] = v23;
  v24 = a1[7];
  v33[2] = a1[6];
  v33[3] = v24;
  if (sub_1B0DC63D0(v33) == 1)
  {
    v25 = 0;
  }

  else
  {
    v26 = a1[13];
    v36[8] = a1[12];
    v36[9] = v26;
    v27 = a1[15];
    v36[10] = a1[14];
    v36[11] = v27;
    v28 = a1[9];
    v36[4] = a1[8];
    v36[5] = v28;
    v29 = a1[11];
    v36[6] = a1[10];
    v36[7] = v29;
    v30 = a1[5];
    v36[0] = a1[4];
    v36[1] = v30;
    v31 = a1[7];
    v36[2] = a1[6];
    v36[3] = v31;
    v25 = sub_1B0E33864(v36);
  }

  v32 = __OFADD__(v18, v25);
  result = v18 + v25;
  if (v32)
  {
    goto LABEL_18;
  }

  return result;
}

BOOL _s12NIOIMAPCore27IMAPURLV23__derived_struct_equalsySbAC_ACtFZ_0(_OWORD *a1, _OWORD *a2)
{
  v4 = a1[1];
  v123[0] = *a1;
  v123[1] = v4;
  v124[0] = a1[2];
  *(v124 + 9) = *(a1 + 41);
  v5 = a2[1];
  v121[0] = *a2;
  v121[1] = v5;
  v122[0] = a2[2];
  *(v122 + 9) = *(a2 + 41);
  if ((_s12NIOIMAPCore210IMAPServerV23__derived_struct_equalsySbAC_ACtFZ_0(v123, v121) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[13];
  v7 = a1[11];
  v117 = a1[12];
  v118 = v6;
  v8 = a1[13];
  v9 = a1[15];
  v119 = a1[14];
  v120 = v9;
  v10 = a1[9];
  v11 = a1[7];
  v113 = a1[8];
  v114 = v10;
  v12 = a1[9];
  v13 = a1[11];
  v115 = a1[10];
  v116 = v13;
  v14 = a1[5];
  v110[0] = a1[4];
  v110[1] = v14;
  v15 = a1[7];
  v16 = a1[4];
  v17 = a1[5];
  v111 = a1[6];
  v112 = v15;
  v18 = a2[13];
  v19 = a2[11];
  v106 = a2[12];
  v107 = v18;
  v20 = a2[13];
  v21 = a2[15];
  v108 = a2[14];
  v109 = v21;
  v22 = a2[9];
  v23 = a2[7];
  v102 = a2[8];
  v103 = v22;
  v24 = a2[9];
  v25 = a2[11];
  v104 = a2[10];
  v105 = v25;
  v26 = a2[5];
  v99[0] = a2[4];
  v99[1] = v26;
  v27 = a2[7];
  v29 = a2[4];
  v28 = a2[5];
  v100 = a2[6];
  v101 = v27;
  v30 = a1[13];
  __src[8] = a1[12];
  __src[9] = v30;
  v31 = a1[15];
  __src[10] = a1[14];
  __src[11] = v31;
  v32 = a1[9];
  __src[4] = a1[8];
  __src[5] = v32;
  v33 = a1[11];
  __src[6] = a1[10];
  __src[7] = v33;
  v34 = a1[5];
  __src[0] = a1[4];
  __src[1] = v34;
  v35 = a1[7];
  __src[2] = a1[6];
  __src[3] = v35;
  __src[20] = v106;
  __src[21] = v20;
  v36 = a2[15];
  __src[22] = v108;
  __src[23] = v36;
  __src[16] = v102;
  __src[17] = v24;
  __src[18] = v104;
  __src[19] = v19;
  __src[12] = v29;
  __src[13] = v28;
  __src[14] = v100;
  __src[15] = v23;
  v98[8] = v117;
  v98[9] = v8;
  v37 = a1[15];
  v98[10] = v119;
  v98[11] = v37;
  v98[4] = v113;
  v98[5] = v12;
  v98[6] = v115;
  v98[7] = v7;
  v98[0] = v16;
  v98[1] = v17;
  v98[2] = v111;
  v98[3] = v11;
  if (sub_1B0DC63D0(v98) != 1)
  {
    v50 = a2[13];
    v95[8] = a2[12];
    v95[9] = v50;
    v51 = a2[15];
    v95[10] = a2[14];
    v95[11] = v51;
    v52 = a2[9];
    v95[4] = a2[8];
    v95[5] = v52;
    v53 = a2[11];
    v95[6] = a2[10];
    v95[7] = v53;
    v54 = a2[5];
    v95[0] = a2[4];
    v95[1] = v54;
    v55 = a2[7];
    v95[2] = a2[6];
    v95[3] = v55;
    if (sub_1B0DC63D0(v95) != 1)
    {
      v57 = a2[13];
      v58 = a2[11];
      v90 = a2[12];
      v91 = v57;
      v59 = a2[13];
      v60 = a2[15];
      v92 = a2[14];
      v93 = v60;
      v61 = a2[9];
      v62 = a2[7];
      v86 = a2[8];
      v87 = v61;
      v63 = a2[9];
      v64 = a2[11];
      v88 = a2[10];
      v89 = v64;
      v65 = a2[5];
      v83[0] = a2[4];
      v83[1] = v65;
      v66 = a2[7];
      v68 = a2[4];
      v67 = a2[5];
      v84 = a2[6];
      v85 = v66;
      __dst[8] = v90;
      __dst[9] = v59;
      v69 = a2[15];
      __dst[10] = v92;
      __dst[11] = v69;
      __dst[4] = v86;
      __dst[5] = v63;
      __dst[6] = v88;
      __dst[7] = v58;
      __dst[0] = v68;
      __dst[1] = v67;
      __dst[2] = v84;
      __dst[3] = v62;
      v70 = a1[13];
      v133 = a1[12];
      v134 = v70;
      v71 = a1[15];
      v135 = a1[14];
      v136 = v71;
      v72 = a1[9];
      v129 = a1[8];
      v130 = v72;
      v73 = a1[11];
      v131 = a1[10];
      v132 = v73;
      v74 = a1[5];
      v125 = a1[4];
      v126 = v74;
      v75 = a1[7];
      v127 = a1[6];
      v128 = v75;
      sub_1B0DC59EC(v110, v94);
      sub_1B0DC59EC(v99, v94);
      v76 = _s12NIOIMAPCore210URLCommandO21__derived_enum_equalsySbAC_ACtFZ_0(&v125, __dst);
      sub_1B0398EFC(v83, &qword_1EB6E7618, &qword_1B0EF5118);
      v77 = a1[13];
      v94[8] = a1[12];
      v94[9] = v77;
      v78 = a1[15];
      v94[10] = a1[14];
      v94[11] = v78;
      v79 = a1[9];
      v94[4] = a1[8];
      v94[5] = v79;
      v80 = a1[11];
      v94[6] = a1[10];
      v94[7] = v80;
      v81 = a1[5];
      v94[0] = a1[4];
      v94[1] = v81;
      v82 = a1[7];
      v94[2] = a1[6];
      v94[3] = v82;
      sub_1B0398EFC(v94, &qword_1EB6E7618, &qword_1B0EF5118);
      return (v76 & 1) != 0;
    }

LABEL_6:
    memcpy(__dst, __src, sizeof(__dst));
    sub_1B0DC59EC(v110, &v125);
    sub_1B0DC59EC(v99, &v125);
    sub_1B0398EFC(__dst, &qword_1EB6E7660, "*\a");
    return 0;
  }

  v38 = a2[13];
  __dst[8] = a2[12];
  __dst[9] = v38;
  v39 = a2[15];
  __dst[10] = a2[14];
  __dst[11] = v39;
  v40 = a2[9];
  __dst[4] = a2[8];
  __dst[5] = v40;
  v41 = a2[11];
  __dst[6] = a2[10];
  __dst[7] = v41;
  v42 = a2[5];
  __dst[0] = a2[4];
  __dst[1] = v42;
  v43 = a2[7];
  __dst[2] = a2[6];
  __dst[3] = v43;
  if (sub_1B0DC63D0(__dst) != 1)
  {
    goto LABEL_6;
  }

  v44 = a1[13];
  v133 = a1[12];
  v134 = v44;
  v45 = a1[15];
  v135 = a1[14];
  v136 = v45;
  v46 = a1[9];
  v129 = a1[8];
  v130 = v46;
  v47 = a1[11];
  v131 = a1[10];
  v132 = v47;
  v48 = a1[5];
  v125 = a1[4];
  v126 = v48;
  v49 = a1[7];
  v127 = a1[6];
  v128 = v49;
  sub_1B0DC59EC(v110, v95);
  sub_1B0DC59EC(v99, v95);
  sub_1B0398EFC(&v125, &qword_1EB6E7618, &qword_1B0EF5118);
  return 1;
}

uint64_t sub_1B0DC63D0(uint64_t a1)
{
  v1 = (*(a1 + 16) >> 33) & 0x7FFFFFFF | ((*(a1 + 64) >> 9) << 31);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1B0DC63F8()
{
  result = qword_1EB6E7658;
  if (!qword_1EB6E7658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7658);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore216AuthenticatedURLVSg(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore210URLCommandOSg(uint64_t a1)
{
  v1 = (*(a1 + 16) >> 33) & 0x7FFFFFFF | ((*(a1 + 64) >> 9) << 31);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy256_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_1B0DC64D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0DC6520(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static IMAPURLAuthenticationMechanism.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return sub_1B0E46A78();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

uint64_t IMAPURLAuthenticationMechanism.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return MEMORY[0x1B2728D70](0);
  }

  MEMORY[0x1B2728D70](1);

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t IMAPURLAuthenticationMechanism.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  if (a2)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC66C8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B0E46C28();
  if (v2)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC6738()
{
  if (!v0[1])
  {
    return MEMORY[0x1B2728D70](0);
  }

  v1 = *v0;
  MEMORY[0x1B2728D70](1);

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0DC67B0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B0E46C28();
  if (v2)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  return sub_1B0E46CB8();
}

unint64_t sub_1B0DC6820()
{
  result = qword_1EB6E7668;
  if (!qword_1EB6E7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7668);
  }

  return result;
}

uint64_t sub_1B0DC6874(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_1B0E46A78();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

uint64_t sub_1B0DC68B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0DC6908(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t *InitialResponse.empty.unsafeMutableAddressor()
{
  if (qword_1EB6E6E88 != -1)
  {
    swift_once();
  }

  return &static InitialResponse.empty;
}

uint64_t sub_1B0DC69C4()
{
  if (qword_1EB6DE5C0 != -1)
  {
    swift_once();
  }

  static InitialResponse.empty = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  qword_1EB7387C0 = qword_1EB737EB0;
  dword_1EB7387C8 = dword_1EB737EB8;
  word_1EB7387CC = word_1EB737EBC;
  byte_1EB7387CE = byte_1EB737EBE;
}

uint64_t static InitialResponse.empty.getter()
{
  if (qword_1EB6E6E88 != -1)
  {
    swift_once();
  }
}

uint64_t InitialResponse.data.setter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v7 = HIDWORD(a2);
  v8 = HIDWORD(a3);
  v9 = HIWORD(a3);
  v10 = *v3;

  *v3 = a1;
  *(v3 + 2) = v5;
  *(v3 + 3) = v7;
  *(v3 + 4) = v4;
  *(v3 + 10) = v8;
  *(v3 + 22) = v9;
  return result;
}

uint64_t InitialResponse.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  v6 = *(a2 + 24) + ((a4 >> 24) & 0xFFFF00 | BYTE6(a4));
  return sub_1B0E46C38();
}

uint64_t InitialResponse.hashValue.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1B0E46C28();
  swift_beginAccess();
  v5 = *(a1 + 24) + ((a3 >> 24) & 0xFFFF00 | BYTE6(a3));
  sub_1B0E46C38();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC6CBC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  v5 = *(v0 + 22);
  sub_1B0E46C28();
  InitialResponse.hash(into:)(v7, v1, v2, v3 | (v4 << 32) | (v5 << 48));
  return sub_1B0E46CB8();
}

unint64_t sub_1B0DC6D2C()
{
  result = qword_1EB6E7670;
  if (!qword_1EB6E7670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7670);
  }

  return result;
}

uint64_t _UInt24._backing.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 2) = a2;
  return result;
}

uint64_t sub_1B0DC6EA0()
{
  v2 = *(v0 + 2) | (*v0 << 8);
  sub_1B07467B8();
  return sub_1B0E45FC8();
}

uint64_t __swift_memcpy3_2(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for _UInt24(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 0x1FFFFFF) >> 24)
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 0xFFFFFF;
}

uint64_t storeEnumTagSinglePayload for _UInt24(uint64_t result, int a2, int a3)
{
  if ((a3 + 0x1FFFFFF) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!a3)
  {
    v3 = 0;
  }

  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = (a2 - 1) >> 16;
    if (v3)
    {
      v4 = ((a2 - 1) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else if (v3)
  {
    if (v3 == 2)
    {
      *(result + 3) = 0;
    }

    else
    {
      *(result + 3) = 0;
    }
  }

  return result;
}

uint64_t sub_1B0DC7004()
{
  v2 = *v0 | (*(v0 + 2) << 32) | (*(v0 + 6) << 48);
  sub_1B0A44710();
  return sub_1B0E45FC8();
}

unint64_t sub_1B0DC7068(unint64_t a1)
{
  result = ServerMessageDate.components.getter(a1, &v32);
  if ((v33 - 1) > 0xB)
  {
    goto LABEL_23;
  }

  v3 = v34;
  v4 = v35;
  v5 = v36;
  v31 = v37;
  v6 = *&aJan_0[8 * v33 - 8];
  v7 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v7);

  MEMORY[0x1B2726E80](45, 0xE100000000000000);
  MEMORY[0x1B2726E80](v6, 0xE300000000000000);

  MEMORY[0x1B2726E80](45, 0xE100000000000000);
  v8 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v8);

  MEMORY[0x1B2726E80](32, 0xE100000000000000);
  v9 = *(v1 + 20);
  v10 = sub_1B0CFC1B0(34, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v11)
  {
    v12._countAndFlagsBits = 34;
    v12._object = 0xE100000000000000;
    v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = v10;

  v14 = *(v1 + 20);
  v15 = __CFADD__(v14, v13);
  v16 = v14 + v13;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v1 + 20) = v16;
  result = sub_1B0DC7580(v3, v4, v5);
  v17 = v13 + result;
  if (__OFADD__(v13, result))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = *(v1 + 20);
  result = sub_1B0CFC1B0(32, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v19)
  {
    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
  }

  v21 = *(v1 + 20);
  v15 = __CFADD__(v21, result);
  v22 = v21 + result;
  if (v15)
  {
    goto LABEL_18;
  }

  *(v1 + 20) = v22;
  v23 = __OFADD__(v17, result);
  v24 = v17 + result;
  if (v23)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = sub_1B0DC77D0(v31);
  v25 = v24 + result;
  if (__OFADD__(v24, result))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v26 = *(v1 + 20);
  result = sub_1B0CFC1B0(34, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v27)
  {
    v28._countAndFlagsBits = 34;
    v28._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v28, v26);
  }

  v29 = *(v1 + 20);
  v15 = __CFADD__(v29, result);
  v30 = v29 + result;
  if (v15)
  {
    goto LABEL_21;
  }

  *(v1 + 20) = v30;
  v23 = __OFADD__(v25, result);
  result += v25;
  if (v23)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  return result;
}

void __swiftcall ServerMessageDate.Components.init(year:month:day:hour:minute:second:timeZoneMinutes:)(NIOIMAPCore2::ServerMessageDate::Components_optional *__return_ptr retstr, Swift::Int year, Swift::Int month, Swift::Int day, Swift::Int hour, Swift::Int minute, Swift::Int second, Swift::Int timeZoneMinutes)
{
  if ((day - 32) < 0xFFFFFFFFFFFFFFE1 || (month - 13) < 0xFFFFFFFFFFFFFFF4 || hour > 0x17 || minute > 0x3B || second > 0x3C || (timeZoneMinutes - 1441) < 0xFFFFFFFFFFFFF4BFLL || (year - 0x10000) < 0xFFFFFFFFFFFF0001)
  {
    year = 0;
    month = 0;
    day = 0;
    hour = 0;
    minute = 0;
    second = 0;
    timeZoneMinutes = 0;
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  retstr->value.year = year;
  retstr->value.month = month;
  retstr->value.day = day;
  retstr->value.hour = hour;
  retstr->value.minute = minute;
  retstr->value.second = second;
  retstr->value.zoneMinutes = timeZoneMinutes;
  retstr->is_nil = v8;
}

unint64_t ServerMessageDate.components.getter@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  v2 = result >> 5;
  if (result / 0x5F0A570060 == 0xFFFF * (((67109889 * (result / 0x5F0A570060)) >> 32) >> 10) || ((v3 = result & 0x1F, v4 = v2 - 13 * ((v2 * 0x13B13B13B13B13B2uLL) >> 64), v5 = result / 0x1A0 - 61 * ((result / 0x1A0 * 0x4325C53EF368EB1uLL) >> 64), v6 = result / 0x6320 - 61 * ((result / 0x6320 * 0x4325C53EF368EB1uLL) >> 64), v6 <= 0x3B) ? (v7 = v5 > 0x17) : (v7 = 1), !v7 ? (v8 = v3 == 0) : (v8 = 1), !v8 ? (v9 = v2 == 13 * ((v2 * 0x13B13B13B13B13B2uLL) >> 64)) : (v9 = 1), v9))
  {
    __break(1u);
  }

  else
  {
    if (-1431655765 * (result / 0x1FAE1D0020) < 0x55555556)
    {
      v10 = result / 0x5A0CC20 - 1441 * ((result / 0x5A0CC20 * 0x2D7AC25A9A8F31uLL) >> 64);
    }

    else
    {
      v10 = 1441 * ((result / 0x5A0CC20 * 0x2D7AC25A9A8F31uLL) >> 64) - result / 0x5A0CC20;
    }

    *a2 = result / 0x5F0A570060 - 0xFFFF * (((67109889 * (result / 0x5F0A570060)) >> 32) >> 10);
    a2[1] = v4;
    a2[2] = v3;
    a2[3] = v5;
    a2[4] = v6;
    a2[5] = result / 0x179EA0 - 61 * ((result / 0x179EA0 * 0x4325C53EF368EB1uLL) >> 64);
    a2[6] = v10;
  }

  return result;
}

uint64_t ServerMessageDate.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728DB0](a1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC7580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1 <= 9)
  {
    v7 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v7);

    v8 = 48;
    v9 = 0xE100000000000000;
    if (a2 > 9)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v17);

    v10 = 48;
    v12 = 0xE100000000000000;
    if (a3 > 9)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v8 = sub_1B0E469C8();
  v9 = v16;
  if (a2 <= 9)
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = sub_1B0E469C8();
  v12 = v11;
  if (a3 > 9)
  {
LABEL_4:
    v13 = sub_1B0E469C8();
    v15 = v14;
    goto LABEL_8;
  }

LABEL_7:
  v18 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v18);

  v13 = 48;
  v15 = 0xE100000000000000;
LABEL_8:
  MEMORY[0x1B2726E80](58, 0xE100000000000000);
  MEMORY[0x1B2726E80](v10, v12);

  MEMORY[0x1B2726E80](58, 0xE100000000000000);
  MEMORY[0x1B2726E80](v13, v15);

  v19 = *(v3 + 20);
  v20 = sub_1B0CFC1B0(v8, v9, (v3 + 8), *(v3 + 20));
  if (v21)
  {
    v22._countAndFlagsBits = v8;
    v22._object = v9;
    v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v19);
  }

  v23 = v20;

  v25 = *(v4 + 20);
  v26 = __CFADD__(v25, v23);
  v27 = v25 + v23;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 20) = v27;
    return v23;
  }

  return result;
}

uint64_t sub_1B0DC77D0(uint64_t result)
{
  v2 = v1;
  v3 = result;
  v4 = result;
  if (result < 0)
  {
    v4 = -result;
    if (__OFSUB__(0, result))
    {
      goto LABEL_20;
    }
  }

  v5 = v4 % 60;
  v6 = __OFSUB__(v4, v4 % 60);
  v7 = v4 - v4 % 60;
  if (v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7 / 60;
  v9 = 100 * (v7 / 60);
  if ((v8 * 100) >> 64 != v9 >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (__OFADD__(v9, v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = sub_1B0E469C8();
  v12 = v11;
  if (sub_1B0E44CF8() > 3)
  {
    goto LABEL_9;
  }

  MEMORY[0x1B2726D20](4);
  result = sub_1B0E44CF8();
  if (!__OFSUB__(4, result))
  {
    v13 = sub_1B0E44E88();
    MEMORY[0x1B2726E60](v13);

    MEMORY[0x1B2726E80](v10, v12);

    v10 = 0;
    v12 = 0xE000000000000000;
LABEL_9:
    v14 = 43;
    if (v3 < 0)
    {
      v14 = 45;
    }

    v23 = v14;
    MEMORY[0x1B2726E80](v10, v12);

    v15 = *(v1 + 20);
    v16 = sub_1B0CFC1B0(v23, 0xE100000000000000, (v1 + 8), *(v1 + 20));
    if (v17)
    {
      v18._countAndFlagsBits = v23;
      v18._object = 0xE100000000000000;
      v16 = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
    }

    v19 = v16;

    v20 = *(v2 + 20);
    v21 = __CFADD__(v20, v19);
    v22 = v20 + v19;
    if (!v21)
    {
      *(v2 + 20) = v22;
      return v19;
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t *_s12NIOIMAPCore217ServerMessageDateVyA2C10ComponentsVcfC_0(unint64_t *result)
{
  v1 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v1 >> 16)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = result[6];
  v3 = v2;
  if ((v2 & 0x8000000000000000) != 0)
  {
    v3 = -v2;
    if (__OFSUB__(0, v2))
    {
      goto LABEL_22;
    }
  }

  if (v3 >= 0x10000)
  {
    goto LABEL_15;
  }

  v4 = result[5];
  if (v4 > 255)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = result[4];
  if (v5 > 255)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = result[3];
  if (v6 > 255)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result[1];
  if (v7 > 255)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = result[2];
  if (((v4 | v3 | v5 | v6 | v7 | v8) & 0x8000000000000000) == 0)
  {
    if (v8 <= 255)
    {
      return (32 * (13 * (61 * (61 * (61 * (1441 * (3 * v1 + (v2 >> 63)) + v3) + v4) + v5) + v6) + v7) + v8);
    }

    goto LABEL_21;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}