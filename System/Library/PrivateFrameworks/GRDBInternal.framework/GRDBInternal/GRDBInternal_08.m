void sub_1B21A4AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B2111640();
  v11 = v10;
  v13 = v12;
  v14 = MEMORY[0x1E69E7CC0];
  v15 = sub_1B2252190();
  v16 = *(v13 + 16);
  v17 = (v13 + 40);
  v18 = &qword_1EB7A1CB8;
  v48 = v14;
  v46 = v11;
  if (v16)
  {
    while (*(v11 + 16))
    {
      v19 = *(v17 - 1);
      v20 = *v17;

      v21 = sub_1B211E590();
      if ((v22 & 1) == 0)
      {
        goto LABEL_17;
      }

      v47 = v16;
      v23 = (*(v11 + 56) + 216 * v21);
      memcpy(__dst, v23, sizeof(__dst));
      memcpy(__src, v23, sizeof(__src));
      memmove(v51, v23, 0xD8uLL);
      v52[0] = v19;
      v52[1] = v20;
      memcpy(v53, __src, sizeof(v53));

      sub_1B21A63AC(__dst, v49);
      sub_1B21A63AC(v51, v49);
      v24 = v18;
      sub_1B212AC5C(v52, v18, &qword_1B225A4C0);
      memcpy(v55, v51, sizeof(v55));
      v54[0] = v19;
      v54[1] = v20;
      memcpy(v49, v51, sizeof(v49));
      memcpy(v58, &v51[48], sizeof(v58));
      sub_1B21A63AC(v55, __src);
      sub_1B224FB7C(v57, MEMORY[0x1E69E7CC0]);
      sub_1B21A6408(v57, &v49[48]);
      memcpy(__src, v49, sizeof(__src));
      sub_1B21A63AC(__src, v49);
      swift_isUniquelyReferenced_nonNull_native();
      a10 = v15;
      sub_1B211E590();
      v25 = v15[2];
      sub_1B2118304();
      if (__OFADD__(v28, v29))
      {
        goto LABEL_18;
      }

      v18 = v26;
      v30 = v27;
      sub_1B21619D8(&qword_1EB7A1CC0, &qword_1B225A4C8);
      if (sub_1B2252E70())
      {
        v31 = sub_1B211E590();
        if ((v30 & 1) != (v32 & 1))
        {
          goto LABEL_21;
        }

        v18 = v31;
      }

      if (v30)
      {
        goto LABEL_20;
      }

      sub_1B21129C8(&v15[v18 >> 6]);
      v33 = (v15[6] + 16 * v18);
      *v33 = v19;
      v33[1] = v20;
      memcpy((v15[7] + 216 * v18), __src, 0xD8uLL);
      v34 = v15[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_19;
      }

      v15[2] = v36;
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = *(v48 + 16);
        sub_1B21150D0();
        sub_1B214400C();
        v48 = v41;
      }

      v18 = v24;
      v38 = *(v48 + 16);
      v37 = *(v48 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1B211156C(v37);
        sub_1B214400C();
        v48 = v42;
      }

      *(v48 + 16) = v38 + 1;
      v39 = v48 + 16 * v38;
      *(v39 + 32) = v19;
      *(v39 + 40) = v20;
      sub_1B21A6464(__src);
      sub_1B212AC5C(v54, v24, &qword_1B225A4C0);
      v17 += 2;
      v11 = v46;
      v16 = v47 - 1;
      if (v47 == 1)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    sub_1B2115C3C(a10);
    v45 = (v43 + v18 * v44);
    memcpy(v49, v45, sizeof(v49));
    memcpy(v45, __src, 0xD8uLL);
    sub_1B21A6464(v49);
    sub_1B2115700();
    sub_1B2117408();
    __break(1u);
LABEL_21:
    sub_1B2253390();
    __break(1u);
  }

  else
  {
LABEL_15:
    sub_1B2112FDC();
  }
}

void sub_1B21A4EA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, _BYTE *), void *a4)
{
  v6 = sub_1B21A5FDC(a2, a3, a4);
  if (!v4)
  {
    v7 = v6;
    v8 = *(a1 + 16);
    swift_retain_n();
    v9 = 0;
    v10 = a1 + 40;
    v11 = MEMORY[0x1E69E7CC0];
LABEL_3:
    for (i = (v10 + 16 * v9); ; i += 2)
    {
      if (v8 == v9)
      {

        return;
      }

      if (v9 >= v8)
      {
        break;
      }

      if (__OFADD__(v9, 1))
      {
        goto LABEL_19;
      }

      if (v7[2])
      {
        v14 = *(i - 1);
        v13 = *i;

        sub_1B211E590();
        if (v15)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = *(v11 + 16);
            sub_1B2116B10();
          }

          v17 = *(v11 + 16);
          v18 = v17 + 1;
          if (v17 >= *(v11 + 24) >> 1)
          {
            sub_1B2116B10();
            v18 = v17 + 1;
          }

          *(v11 + 16) = v18;
          v19 = v11 + 16 * v17;
          *(v19 + 32) = v14;
          *(v19 + 40) = v13;
          ++v9;
          v10 = a1 + 40;
          goto LABEL_3;
        }
      }

      ++v9;
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }
}

void sub_1B21A501C()
{
  sub_1B2111640();
  v4 = v3;
  v6 = v5;
  v7 = 0;
  v9 = *(v8 + 16);
  v72 = v1;
  v73 = v8 + 32;
  v105 = v5;
  for (i = v9; ; v9 = i)
  {
    if (v7 == v9)
    {
      sub_1B2117018(&v101);
      sub_1B2114348();
      v7 = v9;
    }

    else
    {
      if (v7 >= v9)
      {
        goto LABEL_40;
      }

      if (!*(v6 + 16))
      {
        goto LABEL_41;
      }

      v10 = v73 + 16 * v7;
      v0 = *v10;
      v2 = *(v10 + 8);

      v11 = sub_1B2122194();
      if ((v12 & 1) == 0)
      {
        goto LABEL_42;
      }

      v13 = *(v6 + 56) + 176 * v11;
      sub_1B2112028();
      memcpy(v14, v15, v16);
      sub_1B2112028();
      memcpy(v17, v18, v19);
      sub_1B2112028();
      memmove(v20, v21, v22);
      __dst[0] = v0;
      __dst[1] = v2;
      memcpy(&__dst[2], __src, 0xABuLL);

      sub_1B21818BC(v98, &v75);
      sub_1B21818BC(v99, &v75);
      sub_1B212AC5C(__dst, &qword_1EB7A1BD0, &qword_1B226C7C0);
      v23 = __OFADD__(v7++, 1);
      if (v23)
      {
        goto LABEL_43;
      }

      v101 = v0;
      v102 = v2;
      memcpy(v103, v99, sizeof(v103));
      nullsub_1(&v101);
      sub_1B2114348();
    }

    memcpy(v103, v104, sizeof(v103));
    v101 = v0;
    v102 = v2;
    if (sub_1B2117000(&v101) == 1)
    {
      sub_1B2112FDC();
      return;
    }

    memcpy(__dst, v104, 0xABuLL);
    if (*(v4[1] + 16))
    {
      sub_1B2122194();
      if (v24)
      {
        sub_1B21818BC(__dst, v99);
        v25 = v4[1];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v98[0] = v4[1];
        v27 = v98[0];
        sub_1B2122194();
        v28 = *(v27 + 16);
        sub_1B2118304();
        v33 = v31 + v32;
        if (__OFADD__(v31, v32))
        {
          goto LABEL_45;
        }

        v34 = v29;
        v35 = v30;
        sub_1B21619D8(&qword_1EB7A1BD8, &qword_1B225A4B0);
        v36 = sub_1B211D8EC();
        if (v36)
        {
          v27 = v98[0];
          v36 = sub_1B2122194();
          if ((v35 & 1) != (v37 & 1))
          {
            goto LABEL_47;
          }

          v34 = v36;
        }

        if (v35)
        {
          sub_1B2114784(v36, v37, v38, v39, v40, v41, v42, v43, v72, v73, i, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], __src[21], v98[0]);
          memcpy(v0, __dst, 0xABuLL);

          sub_1B219A920(__dst);
          sub_1B219A920(v99);
          v4[1] = v27;
LABEL_24:
          v6 = v105;
          continue;
        }

        v6 = v98[0];
        sub_1B21129C8(v98[0] + 8 * (v34 >> 6));
        sub_1B21160D4();
        v63 = *(v6 + 16);
        v23 = __OFADD__(v63, 1);
        v64 = v63 + 1;
        if (v23)
        {
          goto LABEL_46;
        }

        sub_1B212DEB4(v64);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = *(v34 + 16);
          sub_1B21150D0();
          sub_1B214400C();
          v34 = v70;
        }

        sub_1B2122534();
        if (v62)
        {
          sub_1B214400C();
          v34 = v71;
        }

        goto LABEL_36;
      }
    }

    sub_1B21818BC(__dst, v99);
    sub_1B21818BC(__dst, v99);
    v44 = v4[1];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98[0] = v4[1];
    v45 = v98[0];
    sub_1B2122194();
    v46 = *(v45 + 16);
    sub_1B2118304();
    v33 = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      break;
    }

    v34 = v47;
    v51 = v48;
    sub_1B21619D8(&qword_1EB7A1BD8, &qword_1B225A4B0);
    v52 = sub_1B211D8EC();
    if (v52)
    {
      v45 = v98[0];
      v52 = sub_1B2122194();
      if ((v51 & 1) != (v53 & 1))
      {
        goto LABEL_47;
      }

      v34 = v52;
    }

    if (v51)
    {
      sub_1B2114784(v52, v53, v54, v55, v56, v57, v58, v59, v72, v73, i, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], __src[21], v98[0]);
      memcpy(v0, __dst, 0xABuLL);
      sub_1B219A920(__dst);

      sub_1B219A920(__dst);
      v4[1] = v45;
      sub_1B219A920(v99);
      goto LABEL_24;
    }

    v6 = v98[0];
    sub_1B21129C8(v98[0] + 8 * (v34 >> 6));
    sub_1B21160D4();
    v60 = *(v6 + 16);
    v23 = __OFADD__(v60, 1);
    v61 = v60 + 1;
    if (v23)
    {
      goto LABEL_44;
    }

    sub_1B212DEB4(v61);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = *(v34 + 16);
      sub_1B21150D0();
      sub_1B214400C();
      v34 = v67;
    }

    sub_1B2122534();
    if (v62)
    {
      sub_1B214400C();
      v34 = v68;
    }

    sub_1B219A920(__dst);
LABEL_36:
    sub_1B219A920(__dst);
    *(v34 + 16) = isUniquelyReferenced_nonNull_native;
    v65 = v34 + 16 * v33;
    *(v65 + 32) = v0;
    *(v65 + 40) = v2;
    *v4 = v34;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
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
  sub_1B2253390();
  __break(1u);
}

uint64_t sub_1B21A5480(uint64_t a1)
{
  v1 = __OFADD__(a1, 1);
  result = a1 + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B21A5490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a2;
  v10 = sub_1B2252B00();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v20 - v13;
  v15 = *(a6 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B22526E0();
  (*(v15 + 16))(a1, v18, a6);
  sub_1B22521F0();
  result = sub_1B2122A98(v14, 1, a7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v15 + 8))(v18, a6);
    return (*(*(a7 - 8) + 32))(v21, v14, a7);
  }

  return result;
}

uint64_t sub_1B21A565C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 16);
  result = sub_1B21A5478();
  *a2 = result;
  return result;
}

void (*sub_1B21A5690(uint64_t **a1, uint64_t *a2, void *a3))(uint64_t *a1, uint64_t a2)
{
  v7 = sub_1B2170FB8(0x40uLL);
  *a1 = v7;
  v9 = a3[2];
  v8 = a3[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7[4] = TupleTypeMetadata2;
  v11 = *(TupleTypeMetadata2 - 8);
  v7[5] = v11;
  v12 = sub_1B2170FB8(*(v11 + 64));
  v7[6] = v12;
  v13 = a3[4];
  v14 = sub_1B21A5888(v7, *a2, *v3, v3[1], v9, v8);
  v16 = v15;
  v7[7] = v14;
  (*(*(v9 - 8) + 16))(v12);
  (*(*(v8 - 8) + 16))(&v12[*(TupleTypeMetadata2 + 48)], v16, v8);
  return sub_1B21A5810;
}

void sub_1B21A5810(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_1B21A5888(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(void *a1)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v13 = *(TupleTypeMetadata2 - 8);
  a1[1] = v13;
  v14 = sub_1B2170FB8(*(v13 + 64));
  a1[2] = v14;
  sub_1B21A5490(v14, v14 + *(TupleTypeMetadata2 + 48), a2, a3, a4, a5, a6);
  return sub_1B21A599C;
}

void sub_1B21A599C(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1B21A5A10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B21A5480(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B21A5A3C(uint64_t *a1)
{
  result = sub_1B21A5480(*a1);
  *a1 = result;
  return result;
}

__n128 sub_1B21A5A68@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_1B21A5A78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1B21A5AD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

uint64_t sub_1B21A5B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  swift_getTupleTypeMetadata2();
  v6 = sub_1B22526A0();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1B221B368(sub_1B21A5F28, v11, v6, a2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);
  v12 = a1;
  swift_getWitnessTable();
  sub_1B22521A0();
  return v9;
}

uint64_t sub_1B21A5C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = v15 - v10;
  (*(v12 + 16))(v15 - v10, a1, TupleTypeMetadata2);
  v13 = *(TupleTypeMetadata2 + 48);
  (*(*(a2 - 8) + 32))(a4, v11, a2);
  return (*(*(a3 - 8) + 8))(&v11[v13], a3);
}

uint64_t sub_1B21A5DBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B21A5B50(a1, a2[2], a2[3], a2[4]);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B21A5DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a7 + 8);
  if ((sub_1B22526B0() & 1) == 0)
  {
    return 0;
  }

  return MEMORY[0x1EEE68930](a2, a4, a5, a6, a7, a8);
}

void *sub_1B21A5F4C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, _BYTE *))
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

    sub_1B21A6160(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_1B21A5FDC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, _BYTE *), void *a3)
{
  v6 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      a3 = sub_1B21A5F4C(v13, v8, v6, a2);
      MEMORY[0x1B2743C50](v13, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v9 = v14 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1B2148CEC(0, v8, v9);
  sub_1B21A6160(v9, v8, v6, a2);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    a3 = v10;
  }

LABEL_5:
  v11 = *MEMORY[0x1E69E9840];
  return a3;
}

void sub_1B21A6160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, _BYTE *))
{
  v5 = v4;
  v25 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v31 = v5;
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = (*(a3 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = (*(a3 + 56) + 216 * v15);
    memcpy(__dst, v19, 0xD2uLL);
    memcpy(__src, v19, 0xD2uLL);

    sub_1B2181728(__dst, v28);
    v20 = v31;
    v21 = a4(v18, v17, __src);
    v5 = v20;
    if (v20)
    {
      memcpy(v28, __src, 0xD2uLL);
      sub_1B218179C(v28);

      return;
    }

    v22 = v21;
    memcpy(v28, __src, 0xD2uLL);
    sub_1B218179C(v28);

    if (v22)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1B21E8248();
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v31 = v5;
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1B21A6348(uint64_t a1)
{
  if ((*(a1 + 72) >> 1) > 0x80000000)
  {
    return -(*(a1 + 72) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B21A64B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(qword_1EB7A1570, &qword_1B225A4D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B21A6544(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v23 = MEMORY[0x1E69E7CC0];
  sub_1B216EE6C(0, v5, 0);
  v6 = v23;
  for (i = (a3 + 56); ; i += 4)
  {
    v10 = *(i - 2);
    v11 = *(i - 1);
    v12 = *i;
    v20[0] = *(i - 3);
    v20[1] = v10;
    v20[2] = v11;
    v20[3] = v12;

    a1(&v21, v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v13 = v21;
    v14 = v22;
    v23 = v6;
    v16 = *(v6 + 16);
    v15 = *(v6 + 24);
    if (v16 >= v15 >> 1)
    {
      v19 = v21;
      sub_1B216EE6C(v15 > 1, v16 + 1, 1);
      v13 = v19;
      v6 = v23;
    }

    *(v6 + 16) = v16 + 1;
    v17 = v6 + 24 * v16;
    *(v17 + 32) = v13;
    *(v17 + 48) = v14;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21A66A4(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v28 = MEMORY[0x1E69E7CC0];
  sub_1B216EF10(0, v5, 0);
  v6 = v28;
  for (i = (a3 + 56); ; i += 4)
  {
    v9 = *(i - 2);
    v10 = *(i - 1);
    v11 = *i;
    v23[0] = *(i - 3);
    v23[1] = v9;
    v23[2] = v10;
    v23[3] = v11;

    a1(&v24, v23);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v13 = v24;
    v12 = v25;
    v15 = v26;
    v14 = v27;
    v28 = v6;
    v17 = *(v6 + 16);
    v16 = *(v6 + 24);
    if (v17 >= v16 >> 1)
    {
      v21 = v25;
      v19 = v27;
      sub_1B216EF10(v16 > 1, v17 + 1, 1);
      v14 = v19;
      v12 = v21;
      v6 = v28;
    }

    *(v6 + 16) = v17 + 1;
    v18 = (v6 + 32 * v17);
    v18[4] = v13;
    v18[5] = v12;
    v18[6] = v15;
    v18[7] = v14;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21A6804(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_1B2114114();
  v6 = v19;
  for (i = (a3 + 32); ; ++i)
  {
    v16 = *i;

    a1(&v17, &v16);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v10 = v17;
    v11 = v18;
    v19 = v6;
    v12 = *(v6 + 16);
    if (v12 >= *(v6 + 24) >> 1)
    {
      v15 = v17;
      sub_1B2114114();
      v10 = v15;
      v6 = v19;
    }

    *(v6 + 16) = v12 + 1;
    v13 = v6 + 24 * v12;
    *(v13 + 32) = v10;
    *(v13 + 48) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21A6964(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1B213CA68();
  v3 = v12;
  if (v2)
  {
    v4 = (a1 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      __dst[0] = v5;
      __dst[1] = v6;
      LOBYTE(__dst[2]) = v7;
      sub_1B2113A20(v5, v6, v7);
      swift_getAtKeyPath();
      sub_1B2113A44(v5, v6, v7);
      memcpy(__dst, __src, 0xA3uLL);
      v12 = v3;
      v8 = *(v3 + 16);
      if (v8 >= *(v3 + 24) >> 1)
      {
        sub_1B213CA68();
        v3 = v12;
      }

      v4 += 24;
      *(v3 + 16) = v8 + 1;
      memcpy((v3 + 168 * v8 + 32), __dst, 0xA3uLL);
      --v2;
    }

    while (v2);
  }

  return v3;
}

void *sub_1B21A6AA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X8>)
{
  v7 = sub_1B2116B08(a1);
  if (v7)
  {
    v8 = v7;
    sub_1B21C2A5C(0, (a1 & 0xC000000000000001) == 0, a1);
    v51 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_43;
    }

    v9 = *(a1 + 32);

    {
      v56 = v9;
      MEMORY[0x1EEE9AC00](i);
      v43 = &v56;
      v3 = 0;
      v11 = sub_1B21A6544(sub_1B21AAAC4, v42, a2);
      v12 = v11;
      v13 = v11[2];
      if (!v13)
      {

        v55[0] = xmmword_1B2259350;
        LOBYTE(v55[1]) = 0;
        sub_1B2127D7C(v55);
        return memcpy(a3, v55, 0xA3uLL);
      }

      v46 = v9;
      v47 = a3;
      a2 = v11[6];
      *(&v45 + 1) = a2;
      if (v13 != 1)
      {
        v50 = a1 & 0xFFFFFFFFFFFFFF8;

        v25 = 0;
        v26 = MEMORY[0x1E69E7CC0];
        while (v8 != v25)
        {
          if (v51)
          {
            a3 = MEMORY[0x1B27427E0](v25, a1);
          }

          else
          {
            if (v25 >= *(v50 + 16))
            {
              goto LABEL_41;
            }

            a3 = *(a1 + 8 * v25 + 32);
          }

          a2 = (v25 + 1);
          if (__OFADD__(v25, 1))
          {
            __break(1u);
            goto LABEL_40;
          }

          sub_1B21A8FF0(a3, v12, v54);

          memcpy(v55, v54, 0xA3uLL);
          if (sub_1B213EA68(v55) == 1)
          {
            memcpy(v53, v54, 0xA3uLL);
            sub_1B212ACBC(v53, &qword_1EB7A1CD0);
            ++v25;
          }

          else
          {
            memcpy(v53, v54, 0xA3uLL);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v28 = *(v26 + 16);
              sub_1B213B944();
              v26 = v29;
            }

            a3 = *(v26 + 16);
            v27 = *(v26 + 24);
            if (a3 >= v27 >> 1)
            {
              sub_1B211156C(v27);
              sub_1B213B944();
              v26 = v30;
            }

            memcpy(v52, v53, sizeof(v52));
            *(v26 + 16) = a3 + 1;
            memcpy((v26 + 168 * a3 + 32), v52, 0xA3uLL);
            ++v25;
          }
        }

        if (qword_1ED85D4E8 != -1)
        {
          sub_1B21165D8();
        }

        sub_1B212CDE4(&xmmword_1ED85D4F0);
        *&v55[0] = v31;
        *(&v55[0] + 1) = v32;
        v55[1] = *(v33 + 16);
        LOBYTE(v55[2]) = v34;
        BYTE1(v55[2]) = v35;
        BYTE2(v55[2]) = v36;
        MEMORY[0x1EEE9AC00](v37);
        v42[0] = sub_1B21619D8(&qword_1EB7A1CD8, &unk_1B225EDE0);
        v42[1] = sub_1B21202F4(&qword_1ED85D868, &qword_1EB7A1CD8);
        v43 = &protocol witness table for SQLExpression;
        swift_getKeyPath();

        sub_1B224F214();
        v39 = v38;

        sub_1B213B4BC(v55, v39, v47);
      }

      v14 = v11[5];
      v49 = v11[4];

      v15 = sub_1B2116B08(a1);
      v16 = MEMORY[0x1E69E7CC0];
      *&v45 = v14;
      if (!v15)
      {
        break;
      }

      a3 = v15;
      v50 = 0;
      v54[0] = MEMORY[0x1E69E7CC0];
      a2 = v54;
      sub_1B2114114();
      if ((a3 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_45:
        swift_unexpectedError();
        __break(1u);
        goto LABEL_46;
      }

      v17 = 0;
      v16 = v54[0];
      v48 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v3 = v50;
        if (v51)
        {
          a2 = MEMORY[0x1B27427E0](v17, a1);
        }

        else
        {
          if (v17 >= *(v48 + 16))
          {
            goto LABEL_42;
          }

          a2 = *(a1 + 8 * v17 + 32);
        }

        sub_1B222EAB8(v49, v55);
        v50 = v3;
        if (v3)
        {
          goto LABEL_45;
        }

        v19 = v55[0];
        v20 = v55[1];
        v54[0] = v16;
        v8 = *(v16 + 16);
        v21 = *(v16 + 24);
        if (v8 >= v21 >> 1)
        {
          sub_1B211156C(v21);
          a2 = v54;
          v44 = v23;
          sub_1B2114114();
          v19 = v44;
          v16 = v54[0];
        }

        *(v16 + 16) = v8 + 1;
        v22 = v16 + 24 * v8;
        *(v22 + 32) = v19;
        *(v22 + 48) = v20;
        ++v17;
        if (v18 == a3)
        {
          v3 = v50;
          goto LABEL_37;
        }
      }

LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      i = MEMORY[0x1B27427E0](0, a1);
    }

LABEL_37:
    v54[0] = sub_1B2168F10(v16);
    sub_1B2239E6C(v55, 0, 0, 4);
    sub_1B21678F0(*&v55[0], *(&v55[0] + 1), v55[1]);
    *&v55[0] = sub_1B216E8CC(v54[0]);
    v40 = sub_1B21129D8();
    sub_1B21A9BC4(v40, 0);
    if (v3)
    {
      goto LABEL_47;
    }

    v41 = *&v55[0];
    *(&v55[1] + 1) = &type metadata for Column;
    *&v55[2] = &protocol witness table for Column;
    v55[0] = v45;

    sub_1B21A8EAC(v55, v41, v47);

    sub_1B2113208(v55);
  }

  else
  {
LABEL_46:
    sub_1B2117C80();
    sub_1B2112034();
    __break(1u);
LABEL_47:

    __break(1u);
  }

  return result;
}

void *sub_1B21A70E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = *(a2 + 16);
    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v45 = a3;
      *&__dst[0] = MEMORY[0x1E69E7CC0];
      sub_1B216EE8C(0, v7, 0);
      v9 = *&__dst[0];
      v10 = (a2 + 56);
      do
      {
        v12 = *(v10 - 1);
        v11 = *v10;
        *&__dst[0] = v9;
        v14 = v9[2];
        v13 = v9[3];
        v15 = v14 + 1;

        if (v14 >= v13 >> 1)
        {
          sub_1B216EE8C(v13 > 1, v14 + 1, 1);
          v9 = *&__dst[0];
        }

        v9[2] = v15;
        v16 = &v9[2 * v14];
        v16[4] = v12;
        v16[5] = v11;
        v10 += 4;
        --v7;
      }

      while (v7);
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v15 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v15)
      {

        __dst[0] = xmmword_1B2259350;
        LOBYTE(__dst[1]) = 0;
        sub_1B2127D7C(__dst);
        return memcpy(a3, __dst, 0xA3uLL);
      }

      v45 = a3;
      v9 = MEMORY[0x1E69E7CC0];
    }

    v17 = v9[4];
    v18 = v9[5];

    if (v15 == 1)
    {

      sub_1B2114114();
      v19 = v8;
      v20 = xmmword_1B2259350;
      do
      {
        *&__dst[0] = v19;
        v22 = *(v19 + 16);
        v21 = *(v19 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1B211156C(v21);
          v44 = v24;
          sub_1B2114114();
          v20 = v44;
          v19 = *&__dst[0];
        }

        *(v19 + 16) = v22 + 1;
        v23 = v19 + 24 * v22;
        *(v23 + 32) = v20;
        *(v23 + 48) = 0;
        --v4;
      }

      while (v4);
      v48[0] = sub_1B2168F10(v19);
      sub_1B2239E6C(__dst, 0, 0, 4);
      sub_1B21678F0(*&__dst[0], *(&__dst[0] + 1), __dst[1]);
      *&__dst[0] = sub_1B216E8CC(v48[0]);
      v32 = sub_1B21129D8();
      sub_1B21A9BC4(v32, 0);

      v33 = *&__dst[0];
      *(&__dst[1] + 1) = &type metadata for Column;
      *&__dst[2] = &protocol witness table for Column;
      *&__dst[0] = v17;
      *(&__dst[0] + 1) = v18;

      sub_1B21A8EAC(__dst, v33, v45);

      return sub_1B2113208(__dst);
    }

    else
    {
      v25 = 0;
      v26 = MEMORY[0x1E69E7CC0];
      while (v4 != v25)
      {
        if (v25 >= v4)
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if (__OFADD__(v25, 1))
        {
          goto LABEL_31;
        }

        sub_1B21A9410(v9, v48);
        memcpy(__dst, v48, 0xA3uLL);
        if (sub_1B213EA68(__dst) == 1)
        {
          memcpy(v47, v48, 0xA3uLL);
          sub_1B212ACBC(v47, &qword_1EB7A1CD0);
          ++v25;
        }

        else
        {
          memcpy(v47, v48, 0xA3uLL);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = *(v26 + 16);
            sub_1B213B944();
            v26 = v30;
          }

          v28 = *(v26 + 16);
          v27 = *(v26 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_1B211156C(v27);
            sub_1B213B944();
            v26 = v31;
          }

          memcpy(v46, v47, sizeof(v46));
          *(v26 + 16) = v28 + 1;
          memcpy((v26 + 168 * v28 + 32), v46, 0xA3uLL);
          ++v25;
        }
      }

      if (qword_1ED85D4E8 == -1)
      {
        goto LABEL_28;
      }

LABEL_32:
      sub_1B21165D8();
LABEL_28:
      sub_1B212CDE4(&xmmword_1ED85D4F0);
      *&__dst[0] = v35;
      *(&__dst[0] + 1) = v36;
      __dst[1] = *(v37 + 16);
      LOBYTE(__dst[2]) = v38;
      BYTE1(__dst[2]) = v39;
      BYTE2(__dst[2]) = v40;
      MEMORY[0x1EEE9AC00](v41);
      sub_1B21619D8(&qword_1EB7A1CD8, &unk_1B225EDE0);
      sub_1B21202F4(&qword_1ED85D868, &qword_1EB7A1CD8);
      swift_getKeyPath();

      sub_1B224F214();
      v43 = v42;

      sub_1B213B4BC(__dst, v43, v45);
    }
  }

  else
  {
    sub_1B2117C80();
    sub_1B2112034();
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_1B21A75E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1[2];
  if (v4)
  {
    v8 = a1[5];
    v46[0] = a1[4];
    v46[1] = v8;
    MEMORY[0x1EEE9AC00](v46[0]);
    v36 = v46;

    v9 = sub_1B21A66A4(sub_1B21AAA44, v35, a2);
    v10 = v9;
    v11 = *(v9 + 16);
    if (v11)
    {
      v12 = *(v9 + 40);
      v13 = v10[7];
      if (v11 == 1)
      {
        v14 = v10[6];
        v15 = v10[4];
        v16 = v10[5];

        v44[0] = v15;
        v44[1] = v16;
        MEMORY[0x1EEE9AC00](v17);
        v36 = v44;
        v18 = sub_1B21A6804(sub_1B21AAAA4, v35, a1);
        v43[0] = sub_1B2168F10(v18);
        sub_1B2239E6C(v45, 0, 0, 4);
        sub_1B21678F0(*&v45[0], *(&v45[0] + 1), v45[1]);
        *&v45[0] = sub_1B216E8CC(v43[0]);
        sub_1B21A9BC4(sub_1B2172528, 0);

        v19 = *&v45[0];
        *(&v45[1] + 1) = &type metadata for Column;
        *&v45[2] = &protocol witness table for Column;
        *&v45[0] = v14;
        *(&v45[0] + 1) = v13;

        sub_1B21A8EAC(v45, v19, a3);

        sub_1B2113208(v45);
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v39 = v12;
        v40 = a3;

        v38 = v13;

        v20 = 0;
        v41 = MEMORY[0x1E69E7CC0];
        v21 = a1 + 5;
        v37 = a1 + 5;
LABEL_7:
        v22 = &v21[2 * v20];
        while (v4 != v20)
        {
          if (v20 >= v4)
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          v23 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_22;
          }

          v24 = *(v22 - 1);
          v25 = *v22;

          sub_1B21A9730(v24, v25, v10, v44);

          memcpy(v45, v44, 0xA3uLL);
          if (sub_1B213EA68(v45) != 1)
          {
            memcpy(v43, v44, 0xA3uLL);
            v26 = v41;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v28 = *(v26 + 16);
              sub_1B213B944();
              v26 = v29;
            }

            v27 = *(v26 + 16);
            if (v27 >= *(v26 + 24) >> 1)
            {
              sub_1B213B944();
              v26 = v30;
            }

            memcpy(v42, v43, sizeof(v42));
            *(v26 + 16) = v27 + 1;
            v41 = v26;
            memcpy((v26 + 168 * v27 + 32), v42, 0xA3uLL);
            v20 = v23;
            v21 = v37;
            goto LABEL_7;
          }

          memcpy(v43, v44, 0xA3uLL);
          sub_1B212ACBC(v43, &qword_1EB7A1CD0);
          ++v20;
          v22 += 2;
        }

        if (qword_1ED85D4E8 == -1)
        {
          goto LABEL_19;
        }

LABEL_23:
        v31 = swift_once();
LABEL_19:
        v45[0] = xmmword_1ED85D4F0;
        v45[1] = xmmword_1ED85D500;
        LOWORD(v45[2]) = word_1ED85D510;
        BYTE2(v45[2]) = byte_1ED85D512;
        MEMORY[0x1EEE9AC00](v31);
        v35[0] = sub_1B21619D8(&qword_1EB7A1CD8, &unk_1B225EDE0);
        v35[1] = sub_1B21202F4(&qword_1ED85D868, &qword_1EB7A1CD8);
        v36 = &protocol witness table for SQLExpression;
        swift_getKeyPath();

        sub_1B224F214();
        v33 = v32;

        sub_1B213B4BC(v45, v33, v40);
      }
    }

    else
    {

      v45[0] = xmmword_1B2259350;
      LOBYTE(v45[1]) = 0;
      sub_1B2127D7C(v45);
      memcpy(a3, v45, 0xA3uLL);
    }
  }

  else
  {
    sub_1B2252EC0();
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_1B21A7C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(_BYTE *, uint64_t, uint64_t, void *, uint64_t, uint64_t, double))
{
  v13 = *a4;
  v14 = a4[1];
  v15 = sub_1B213574C();
  v17[0] = v13;
  v17[1] = v14;
  a9(v18, a2, a3, v17, a5, a6, v15);

  return sub_1B2181698(v13);
}

uint64_t sub_1B21A7D38(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(_BYTE *, uint64_t, uint64_t, void *, uint64_t, uint64_t, double))
{
  v13 = a1[1];
  v14 = *a4;
  v15 = a4[1];
  v18[2] = *a1;
  v18[3] = v13;
  type metadata accessor for Table();
  v16 = sub_1B21518F0(v19);
  v18[0] = v14;
  v18[1] = v15;
  a8(v19, a2, a3, v18, a5, a6, v16);

  return sub_1B2181698(v14);
}

uint64_t static TableRecord.association<A>(to:on:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  type metadata accessor for CommonTableExpression();
  sub_1B21518F0(__srca);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *&v9 = sub_1B219A420;
  *(&v9 + 1) = v7;
  v10 = 0;
  v11 = 0;
  v12 = 0x80;
  sub_1B21D92BC(__srca, &v9, a4);
}

uint64_t static TableRecord.association<A>(to:)@<X0>(void *__src@<X0>, uint64_t *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  type metadata accessor for CommonTableExpression();
  sub_1B21518F0(__srca);
  *&v4 = sub_1B21C5B28;
  *(&v4 + 1) = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0x80;
  return sub_1B21D92BC(__srca, &v4, a2);
}

void *static TableRecord.hasMany<A, B>(_:through:using:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1B21119D0();
  v21 = sub_1B2114758(v13, v14, v15, v16, v17, v18, v19, v20);
  v23 = v22(v21);
  v24 = sub_1B211D618(v23, *(a10 + 16));
  v25(v24);
  sub_1B216CEF8(v42);
  v26 = *(*(*(a11 + 8) + 24) + 8);
  swift_getAssociatedTypeWitness();
  sub_1B2118008();
  result = sub_1B21E1C58(v27, v28);
  if (v11)
  {
    sub_1B212DED4();
    type metadata accessor for HasManyThroughAssociation();
    WitnessTable = swift_getWitnessTable();
    sub_1B2118310(WitnessTable, v31, v32, v33, v34, v35, v36, v37, v40, v41);
    AssociationToMany.forKey(_:)(v38, v39);
  }

  else
  {
    *v12 = v42;
  }

  return result;
}

void *static TableRecord.hasOne<A, B>(_:through:using:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1B21119D0();
  v13 = *(a11 + 8);
  v22 = sub_1B2114758(v14, v15, v16, v17, v18, v19, v20, v21);
  v24 = v23(v22);
  v25 = sub_1B211D618(v24, *(*(a10 + 8) + 16));
  v26(v25);
  sub_1B216CEF8(v43);
  v27 = *(*(*(v13 + 8) + 24) + 8);
  swift_getAssociatedTypeWitness();
  sub_1B2118008();
  result = sub_1B21E1C58(v28, v29);
  if (v11)
  {
    sub_1B212DED4();
    type metadata accessor for HasOneThroughAssociation();
    WitnessTable = swift_getWitnessTable();
    sub_1B2118310(WitnessTable, v32, v33, v34, v35, v36, v37, v38, v41, v42);
    AssociationToOne.forKey(_:)(v39, v40);
  }

  else
  {
    *v12 = v43;
  }

  return result;
}

void *TableRecord<>.request<A>(for:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X5>, void *a4@<X8>)
{
  v8 = *(a3 + 16);
  v33 = *(v8 + 8);
  v33(&v37, a2, v8);
  if (*(v37 + 16))
  {
    v31 = a1;
    v32 = a4;
    memcpy(__dst, (v37 + 32), 0xE3uLL);
    v9 = __dst[3];
    v10 = __dst[4];
    v11 = __dst[5];
    v12 = __dst[6];
    v13 = SLOBYTE(__dst[7]);
    sub_1B21819B8(__dst, __src);

    v14 = sub_1B2117434();
    sub_1B2181640(v14, v15, v16, v17, v18);
    sub_1B2181A14(__dst);
    if ((v13 & 0x80000000) == 0)
    {
      v38[0] = v9;
      v38[1] = v10;
      v38[2] = v11;
      v38[3] = v12;
      v39 = v13 & 1;
      v33(__src, a2, v8);
      v35 = __src[0];

      sub_1B21A838C(&v35, v38, v4, v31);
      v19 = sub_1B2117434();
      sub_1B21816DC(v19, v20, v21, v22, v23);

      sub_1B2209954(__src);

      v24 = *(*(*(a3 + 8) + 24) + 8);
      swift_getAssociatedTypeWitness();
      return sub_1B2135E6C(__src, v32);
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1B2117434();
  sub_1B21816DC(v26, v27, v28, v29, v30);
  sub_1B2252EC0();
  __break(1u);

  __break(1u);
  return result;
}

void sub_1B21A838C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v6 = *(a4 - 1);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v14 = *v8;
  if (*(*v8 + 16))
  {
    v25 = v8;
    v15 = v9;
    v35 = v13;
    v27 = v11;
    v28 = v12;
    v26 = v10;
    memcpy(v32, v14 + 12, 0xA2uLL);
    (*(v6 + 16))(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v4);
    v16 = (*(v6 + 80) + 89) & ~*(v6 + 80);
    v17 = swift_allocObject();
    v18 = v26;
    v19 = v27;
    *(v17 + 16) = v4;
    *(v17 + 24) = v18;
    v20 = v28;
    *(v17 + 32) = v19;
    *(v17 + 40) = v20;
    *(v17 + 48) = v35;
    v21 = *(v15 + 16);
    *(v17 + 56) = *v15;
    *(v17 + 72) = v21;
    *(v17 + 88) = *(v15 + 32);
    (*(v6 + 32))(v17 + v16, &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v4 = v32;
    sub_1B21C35B0(sub_1B21A8BB8, v17, v31);
    sub_1B21A8C14(v15, v33);

    if (v14[2])
    {
      memcpy(v33, v14 + 4, 0xE3uLL);
      memcpy(v30, v14 + 4, sizeof(v30));
      memcpy(__dst, v14 + 12, 0xA2uLL);
      sub_1B21819B8(v33, v29);
      sub_1B2137224(__dst);
      memcpy(&v30[64], v31, 0xA2uLL);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v4 = v25;
      *v25 = v14;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_8:
  sub_1B21956E4(v14);
  v14 = v23;
  *v4 = v23;
LABEL_4:
  if (v14[2])
  {
    memcpy(v29, v14 + 4, 0xE3uLL);
    memcpy(v14 + 4, v30, 0xE3uLL);
    sub_1B2181A14(v29);
    *v4 = v14;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B21A8608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v36 = a3;
  v37 = a5;
  v33 = a6;
  v35 = *(a4 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 8);
  v38 = v11;
  v14 = v12(v13, v11);
  v16 = *a2;
  v17 = *(a2 + 8);
  v18 = *(a2 + 32);
  v19 = *(a2 + 16);
  if (v18)
  {
    v20 = v14;
  }

  else
  {
    v20 = *a2;
  }

  if (*(a2 + 32))
  {
    v21 = v15;
  }

  else
  {
    v21 = *(a2 + 8);
  }

  if (*(a2 + 32))
  {
    v22 = *a2;
  }

  else
  {
    v22 = v14;
  }

  if (*(a2 + 32))
  {
    v23 = *(a2 + 8);
  }

  else
  {
    v23 = v15;
  }

  if (v19)
  {
    v24 = *(a2 + 24);
  }

  else
  {
    v24 = 0;
  }

  v39 = v20;
  v40 = v21;
  v41 = v22;
  v42 = v23;
  v43 = v19;
  v44 = v24;

  v25 = v45;
  v26 = sub_1B21D9790(a1);
  if (v25)
  {
  }

  else
  {
    v28 = v26;

    v29 = sub_1B21D9D18(v18, v28);

    sub_1B21619D8(&qword_1EB7A1CC8, &qword_1B225A4D8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B22546B0;
    v31 = v34;
    (*(v35 + 16))(v34, v36, a4);

    sub_1B2143368(v32, v31, a4, v37, v38);
    sub_1B21A75E8(inited, v29, v33);

    swift_setDeallocating();
    return sub_1B21B71B8();
  }
}

uint64_t sub_1B21A88EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1B2116104(a1, a2, a3, a4, a5, a6, a7, a8, v21);
  type metadata accessor for QueryInterfaceRequest();
  sub_1B2115698();
  v10 = sub_1B21221AC();
  v11 = v8(v10);
  sub_1B2116508(v11, v12, v13, v14, v15, v16, v17, v18, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43[0]);
  sub_1B2111808(v9);
  return (*(v19 + 8))(v43, v9);
}

uint64_t sub_1B21A89B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1B2116104(a1, a2, a3, a4, a5, a6, a7, a8, v21);
  type metadata accessor for QueryInterfaceRequest();
  sub_1B2115698();
  v10 = sub_1B21221AC();
  v11 = v8(v10);
  sub_1B2116508(v11, v12, v13, v14, v15, v16, v17, v18, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43[0]);
  sub_1B2111808(v9);
  return (*(v19 + 8))(v43, v9);
}

uint64_t sub_1B21A8A50(uint64_t a1, uint64_t a2)
{
  sub_1B212CFD8(a1, a2);
  static TableRecord.all()(v4);
  type metadata accessor for QueryInterfaceRequest();
  v5 = sub_1B211508C();
  v6 = DerivableRequest.annotated(with:)(a1, a2, v5);
  sub_1B2116508(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37[0]);
  sub_1B2111808(a2);
  return (*(v14 + 8))(v37, a2);
}

uint64_t static TableRecord.having(_:)(uint64_t a1, uint64_t a2)
{
  v7 = *a1;
  v3 = *(a1 + 16);
  sub_1B212CFD8(a1, a2);
  static TableRecord.all()(v4);
  type metadata accessor for QueryInterfaceRequest();
  sub_1B211508C();
  DerivableRequest.having(_:)();
  memcpy(__dst, __src, 0xA2uLL);
  sub_1B2111808(a2);
  return (*(v5 + 8))(__dst, a2);
}

uint64_t sub_1B21A8BB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[5];
  v5 = v2[6];
  return sub_1B21A8608(a1, (v2 + 7), v2 + ((*(*(v2[2] - 8) + 80) + 89) & ~*(*(v2[2] - 8) + 80)), v2[2], v2[4], a2);
}

uint64_t sub_1B21A8C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = a5[5];
  v12 = a5[6];
  sub_1B21139A0(a5 + 2, v11);
  v13 = (*(v12 + 88))(a1, a2, v11, v12);
  if (v14)
  {
    sub_1B2252CD0();

    MEMORY[0x1B2741EB0](a1, a2);
    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    *a6 = v13;
    a6[1] = a3;
    a6[2] = a4;
  }

  return result;
}

uint64_t sub_1B21A8D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
}

uint64_t sub_1B21A8DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = a1;
  v13 = a2;
  sub_1B219020C();
  v4 = v15;
  if (v15)
  {
    v5 = v16;
    sub_1B21139A0(v14, v15);
    (*(v5 + 24))(&v10, v4, v5);
    v9 = v10;
    v6 = v11;
    result = sub_1B2113208(v14);
    v8 = v9;
  }

  else
  {
    result = sub_1B212ACBC(v14, &qword_1EB7A0E30);
    v8 = 0uLL;
    v6 = 4;
  }

  *a3 = v8;
  *(a3 + 16) = v6;
  return result;
}

uint64_t sub_1B21A8EAC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1B21619D8(&qword_1EB7A10C0, &unk_1B2257E70);
  sub_1B21202F4(&qword_1ED85DE50, &qword_1EB7A10C0);
  swift_getKeyPath();

  v6 = sub_1B21A6964(a2);

  __src[0] = v6;
  sub_1B21513E8(__src);
  memcpy(__dst, __src, sizeof(__dst));
  v7 = a1[3];
  v8 = a1[4];
  sub_1B21139A0(a1, v7);
  (*(*(v8 + 8) + 8))(v10, v7);
  sub_1B2151410(v10, a3);
  memcpy(v13, v10, 0xA3uLL);
  sub_1B21356F8(v13);
  memcpy(v14, __dst, 0xA2uLL);
  return sub_1B2151630(v14);
}

void *sub_1B21A8FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v5 = *(a2 + 16);
  v29 = MEMORY[0x1E69E7CC0];
  v6 = (a2 + 48);
  if (v5)
  {
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = *(v6 - 2);

      if (!v8)
      {
        break;
      }

      sub_1B222EAB8(v9, v26);
      if (v4)
      {
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v10 = *v26;
      v11 = v26[16];
      if (v26[16] == 4 && *v26 == 0)
      {

        sub_1B2113A44(0, 0, 4);

        sub_1B2179418(v26);
        return memcpy(a3, v26, 0xA3uLL);
      }

      v25[0] = v7;
      v25[1] = v8;
      sub_1B2134F5C(v25);
      memcpy(v24, v25, 0xA3uLL);
      __src[0] = v10;
      LOBYTE(__src[1]) = v11;
      sub_1B2127D7C(__src);
      memcpy(v23, __src, sizeof(v23));
      memcpy(v26, v25, sizeof(v26));
      memcpy(v27, __src, sizeof(v27));
      sub_1B2113A20(v10, *(&v10 + 1), v11);

      sub_1B2113A20(v10, *(&v10 + 1), v11);

      sub_1B2113A20(v10, *(&v10 + 1), v11);
      sub_1B2113A44(0, 0, 4);
      sub_1B2113A44(v10, *(&v10 + 1), v11);
      sub_1B212ACBC(v26, &qword_1EB7A1CE0);
      sub_1B21353B0(0, v24, v22);
      sub_1B2113A44(v10, *(&v10 + 1), v11);

      v12 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = *(v29 + 16);
        sub_1B213B944();
        v29 = v16;
      }

      v13 = *(v29 + 16);
      if (v13 >= *(v29 + 24) >> 1)
      {
        sub_1B213B944();
        v29 = v17;
      }

      sub_1B2113A44(v10, *(&v10 + 1), v11);

      v14 = v29;
      *(v29 + 16) = v13 + 1;
      a1 = memcpy((v14 + 168 * v13 + 32), v22, 0xA3uLL);
      v6 += 3;
      v5 = v12 - 1;
      v4 = 0;
    }

    while (v12 != 1);
  }

  if (qword_1ED85DC80 != -1)
  {
    a1 = swift_once();
  }

  *v26 = xmmword_1ED85DC88;
  *&v26[16] = xmmword_1ED85DC98;
  *&v26[32] = word_1ED85DCA8;
  v26[34] = byte_1ED85DCAA;
  MEMORY[0x1EEE9AC00](a1);
  sub_1B21619D8(&qword_1EB7A1CD8, &unk_1B225EDE0);
  sub_1B21202F4(&qword_1ED85D868, &qword_1EB7A1CD8);
  swift_getKeyPath();

  sub_1B224F214();
  v19 = v18;

  sub_1B213B4BC(v26, v19, __src);

  memcpy(v26, __src, sizeof(v26));
  nullsub_1(v26);
  return memcpy(a3, v26, 0xA3uLL);
}

void *sub_1B21A9410@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v22 = a2;
  v2 = *(a1 + 16);
  v3 = (a1 + 40);
  for (i = MEMORY[0x1E69E7CC0]; v2; --v2)
  {
    v5 = *(v3 - 1);
    v6 = *v3;

    if (!v6)
    {
      break;
    }

    v16[0] = v5;
    v16[1] = v6;
    sub_1B2134F5C(v16);
    memcpy(v17, v16, 0xA3uLL);
    v18[0] = xmmword_1B2259350;
    LOBYTE(v18[1]) = 0;
    sub_1B2127D7C(v18);
    memcpy(v14, v18, sizeof(v14));
    memcpy(v19, v16, sizeof(v19));
    memcpy(v20, v18, sizeof(v20));

    sub_1B2127DC0(v17, __src);
    sub_1B212ACBC(v19, &qword_1EB7A1CE0);
    memcpy(v15, v17, 0xA3uLL);
    sub_1B21353B0(0, v15, __src);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = *(i + 16);
      sub_1B213B944();
      i = v9;
    }

    v7 = *(i + 16);
    if (v7 >= *(i + 24) >> 1)
    {
      sub_1B213B944();
      i = v10;
    }

    *(i + 16) = v7 + 1;
    a1 = memcpy((i + 168 * v7 + 32), __src, 0xA3uLL);
    v3 += 2;
  }

  if (qword_1ED85DC80 != -1)
  {
    a1 = swift_once();
  }

  *v19 = xmmword_1ED85DC88;
  *&v19[16] = xmmword_1ED85DC98;
  *&v19[32] = word_1ED85DCA8;
  v19[34] = byte_1ED85DCAA;
  MEMORY[0x1EEE9AC00](a1);
  sub_1B21619D8(&qword_1EB7A1CD8, &unk_1B225EDE0);
  sub_1B21202F4(&qword_1ED85D868, &qword_1EB7A1CD8);
  swift_getKeyPath();

  sub_1B224F214();
  v12 = v11;

  sub_1B213B4BC(v19, v12, __src);

  memcpy(v19, __src, sizeof(v19));
  nullsub_1(v19);
  return memcpy(v22, v19, 0xA3uLL);
}

void *sub_1B21A9730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v24 = a1;
  v4 = *(a3 + 16);
  v34 = MEMORY[0x1E69E7CC0];
  for (i = (a3 + 56); v4; --v4)
  {
    v6 = *(i - 1);
    v7 = *i;
    v8 = *(i - 3);
    v9 = *(i - 2);

    if (!v9)
    {
      break;
    }

    v26 = i;
    v30[0] = v24;
    v30[1] = a2;
    sub_1B219020C();
    v10 = *&v31[24];
    if (*&v31[24])
    {
      v11 = *&v31[32];
      sub_1B21139A0(v31, *&v31[24]);
      (*(v11 + 24))(__src, v10, v11);
      v12 = __src[0];
      v13 = __src[1];
      v14 = LOBYTE(__src[2]);
      sub_1B2113208(v31);
    }

    else
    {
      sub_1B212ACBC(v31, &qword_1EB7A0E30);
      v12 = 0;
      v13 = 0;
      v14 = 4;
    }

    if (v14 == 4 && !(v13 | v12))
    {
      sub_1B2113A44(0, 0, 4);

      sub_1B2179418(v31);
      return memcpy(a4, v31, 0xA3uLL);
    }

    v30[0] = v6;
    v30[1] = v7;
    sub_1B2134F5C(v30);
    memcpy(v29, v30, 0xA3uLL);
    __src[0] = v12;
    __src[1] = v13;
    LOBYTE(__src[2]) = v14;
    sub_1B2127D7C(__src);
    memcpy(v28, __src, sizeof(v28));
    memcpy(v31, v30, sizeof(v31));
    memcpy(v32, __src, sizeof(v32));
    sub_1B2113A20(v12, v13, v14);
    sub_1B2113A20(v12, v13, v14);
    sub_1B2113A20(v12, v13, v14);

    swift_bridgeObjectRetain_n();
    sub_1B2113A44(0, 0, 4);
    sub_1B2113A44(v12, v13, v14);
    sub_1B212ACBC(v31, &qword_1EB7A1CE0);
    sub_1B21353B0(0, v29, v27);
    sub_1B2113A44(v12, v13, v14);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = *(v34 + 16);
      sub_1B213B944();
      v34 = v18;
    }

    v15 = *(v34 + 16);
    if (v15 >= *(v34 + 24) >> 1)
    {
      sub_1B213B944();
      v34 = v19;
    }

    sub_1B2113A44(v12, v13, v14);
    v16 = v34;
    *(v34 + 16) = v15 + 1;
    memcpy((v16 + 168 * v15 + 32), v27, 0xA3uLL);

    i = v26 + 4;
  }

  if (qword_1ED85DC80 != -1)
  {
    a1 = swift_once();
  }

  *v31 = xmmword_1ED85DC88;
  *&v31[16] = xmmword_1ED85DC98;
  *&v31[32] = word_1ED85DCA8;
  v31[34] = byte_1ED85DCAA;
  MEMORY[0x1EEE9AC00](a1);
  sub_1B21619D8(&qword_1EB7A1CD8, &unk_1B225EDE0);
  sub_1B21202F4(&qword_1ED85D868, &qword_1EB7A1CD8);
  swift_getKeyPath();

  sub_1B224F214();
  v21 = v20;

  sub_1B213B4BC(v31, v21, __src);

  memcpy(v31, __src, sizeof(v31));
  nullsub_1(v31);
  return memcpy(a4, v31, 0xA3uLL);
}

uint64_t sub_1B21A9BC4(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B21A1570(v5);
    v5 = v6;
  }

  v8 = *(v5 + 16);
  result = sub_1B21A9C48(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_1B21A9C48(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_1B2252FC0();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v9 = sub_1B2252610();
        *(v9 + 16) = v8;
      }

      v10[0] = (v9 + 32);
      v10[1] = v8;
      sub_1B21A9E98(v10, v11, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1B21A9D4C(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_1B21A9D4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  if (a3 != a2)
  {
    v29 = *v4;
    v7 = (v29 + 24 * a3);
    v8 = result - a3;
LABEL_4:
    v21 = v7;
    v22 = a3;
    v20 = v8;
    v9 = v7;
    while (1)
    {
      v10 = *(v7 + 1);
      v11 = *(v7 + 16);
      v26 = *v7;
      v27 = v10;
      v12 = *(v9 - 3);
      v13 = *(v9 - 2);
      v9 = (v9 - 24);
      v28 = v11;
      v14 = *(v9 + 16);
      v23 = v12;
      v24 = v13;
      v25 = v14;
      sub_1B2113A20(v26, v10, v11);
      sub_1B2113A20(v12, v13, v14);
      v15 = a4(&v26, &v23);
      sub_1B2113A44(v23, v24, v25);
      result = sub_1B2113A44(v26, v27, v28);
      if (v5)
      {
        break;
      }

      if (v15)
      {
        if (!v29)
        {
          __break(1u);
          return result;
        }

        v16 = *(v7 + 16);
        v17 = *v7;
        *v7 = *v9;
        *(v7 + 2) = *(v9 + 2);
        *(v7 - 24) = v17;
        *(v7 - 8) = v16;
        v7 = v9;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      a3 = v22 + 1;
      v7 = (v21 + 24);
      v8 = v20 - 1;
      if (v22 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_1B21A9E98(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t *, uint64_t *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v134 = a5;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v125 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_127;
      }

      goto LABEL_96;
    }

    goto LABEL_136;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v119 = v10;
      v13 = *a3;
      v14 = v9 + 1;
      v15 = *a3 + 24 * v12;
      v16 = *(v15 + 8);
      v17 = *(v15 + 16);
      v131 = *v15;
      v132 = v16;
      v133 = v17;
      v18 = v13 + 24 * v11;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v128 = *v18;
      v19 = v128;
      v129 = v20;
      v130 = v21;
      sub_1B2113A20(v131, v16, v17);
      sub_1B2113A20(v19, v20, v21);
      LODWORD(v125) = a4(&v131, &v128);
      if (v7)
      {
LABEL_104:
        sub_1B2113A44(v128, v129, v130);
        sub_1B2113A44(v131, v132, v133);
        goto LABEL_105;
      }

      sub_1B2113A44(v128, v129, v130);
      sub_1B2113A44(v131, v132, v133);
      v122 = 24 * v11;
      v22 = (v13 + 24 * v11 + 64);
      v117 = v11;
      v23 = v11 + 2;
      v12 = v14;
      while (1)
      {
        v24 = v12;
        v25 = v23;
        if (v12 + 1 >= v8)
        {
          break;
        }

        v26 = v8;
        v27 = *(v22 - 1);
        v28 = *v22;
        v131 = *(v22 - 2);
        v132 = v27;
        v133 = v28;
        v30 = *(v22 - 4);
        v31 = *(v22 - 24);
        v128 = *(v22 - 5);
        v29 = v128;
        v129 = v30;
        v130 = v31;
        sub_1B2113A20(v131, v27, v28);
        sub_1B2113A20(v29, v30, v31);
        LODWORD(v29) = a4(&v131, &v128);
        sub_1B2113A44(v128, v129, v130);
        sub_1B2113A44(v131, v132, v133);
        v22 += 24;
        ++v12;
        v23 = v25 + 1;
        v8 = v26;
        if ((v125 ^ v29))
        {
          goto LABEL_10;
        }
      }

      v12 = v8;
LABEL_10:
      if (v125)
      {
        if (v12 < v117)
        {
          goto LABEL_130;
        }

        v32 = v117 <= v24;
        v10 = v119;
        v11 = v117;
        if (v32)
        {
          if (v8 >= v25)
          {
            v33 = v25;
          }

          else
          {
            v33 = v8;
          }

          v34 = 24 * v33;
          v35 = v12;
          v36 = v117;
          v37 = v122;
          do
          {
            if (v36 != --v35)
            {
              v38 = *a3;
              if (!*a3)
              {
                goto LABEL_134;
              }

              v39 = (v38 + v37);
              v40 = v38 + v34;
              v41 = *(v39 + 16);
              v42 = *v39;
              v43 = *(v40 - 8);
              *v39 = *(v40 - 24);
              *(v39 + 2) = v43;
              *(v40 - 24) = v42;
              *(v40 - 8) = v41;
            }

            ++v36;
            v34 -= 24;
            v37 += 24;
          }

          while (v36 < v35);
        }
      }

      else
      {
        v11 = v117;
        v10 = v119;
      }
    }

    v44 = a3[1];
    if (v12 >= v44)
    {
      goto LABEL_33;
    }

    if (__OFSUB__(v12, v11))
    {
      goto LABEL_126;
    }

    if (v12 - v11 >= a6)
    {
      goto LABEL_33;
    }

    if (__OFADD__(v11, a6))
    {
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
LABEL_136:
      __break(1u);
      return;
    }

    if (v11 + a6 >= v44)
    {
      v45 = a3[1];
    }

    else
    {
      v45 = v11 + a6;
    }

    if (v45 < v11)
    {
      goto LABEL_129;
    }

    if (v12 != v45)
    {
      v90 = v11;
      v91 = *a3;
      v92 = *a3 + 24 * v12;
      v118 = v90;
      v120 = v10;
      v93 = v90 - v12;
      v114 = v45;
      do
      {
        v124 = v12;
        v125 = v92;
        v115 = v93;
        v94 = v92;
        do
        {
          v95 = *(v92 + 8);
          v96 = *(v92 + 16);
          v131 = *v92;
          v132 = v95;
          v97 = *(v94 - 24);
          v98 = *(v94 - 16);
          v94 -= 24;
          v133 = v96;
          v99 = *(v94 + 16);
          v128 = v97;
          v129 = v98;
          v130 = v99;
          sub_1B2113A20(v131, v95, v96);
          sub_1B2113A20(v97, v98, v99);
          v100 = a4(&v131, &v128);
          if (v7)
          {
            goto LABEL_104;
          }

          v101 = v100;
          sub_1B2113A44(v128, v129, v130);
          sub_1B2113A44(v131, v132, v133);
          if ((v101 & 1) == 0)
          {
            break;
          }

          if (!v91)
          {
            goto LABEL_133;
          }

          v102 = *(v92 + 16);
          v103 = *v92;
          *v92 = *v94;
          *(v92 + 16) = *(v94 + 16);
          *(v92 - 24) = v103;
          *(v92 - 8) = v102;
          v92 = v94;
        }

        while (!__CFADD__(v93++, 1));
        ++v12;
        v92 = (v125 + 3);
        v93 = v115 - 1;
      }

      while (v124 + 1 != v114);
      v12 = v114;
      v11 = v118;
      v10 = v120;
    }

LABEL_33:
    if (v12 < v11)
    {
      goto LABEL_125;
    }

    v123 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B2161EC4(0, *(v10 + 2) + 1, 1, v10);
      v10 = v105;
    }

    v47 = *(v10 + 2);
    v46 = *(v10 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      sub_1B2161EC4(v46 > 1, v47 + 1, 1, v10);
      v10 = v106;
    }

    *(v10 + 2) = v48;
    v49 = v10 + 32;
    v50 = &v10[16 * v47 + 32];
    *v50 = v11;
    *(v50 + 1) = v123;
    v125 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    if (v47)
    {
      break;
    }

LABEL_82:
    v8 = a3[1];
    v9 = v123;
    if (v123 >= v8)
    {
      goto LABEL_94;
    }
  }

  while (1)
  {
    v51 = v48 - 1;
    v52 = &v49[16 * v48 - 16];
    v53 = &v10[16 * v48];
    if (v48 >= 4)
    {
      v58 = &v49[16 * v48];
      v59 = *(v58 - 8);
      v60 = *(v58 - 7);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_113;
      }

      v63 = *(v58 - 6);
      v62 = *(v58 - 5);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_114;
      }

      v65 = *(v53 + 1);
      v66 = v65 - *v53;
      if (__OFSUB__(v65, *v53))
      {
        goto LABEL_116;
      }

      v64 = __OFADD__(v56, v66);
      v67 = v56 + v66;
      if (v64)
      {
        goto LABEL_119;
      }

      if (v67 >= v61)
      {
        v81 = *v52;
        v80 = *(v52 + 1);
        v64 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v64)
        {
          goto LABEL_124;
        }

        if (v56 < v82)
        {
          v51 = v48 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_53;
    }

    if (v48 == 3)
    {
      v54 = *(v10 + 4);
      v55 = *(v10 + 5);
      v64 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      v57 = v64;
LABEL_53:
      if (v57)
      {
        goto LABEL_115;
      }

      v69 = *v53;
      v68 = *(v53 + 1);
      v70 = __OFSUB__(v68, v69);
      v71 = v68 - v69;
      v72 = v70;
      if (v70)
      {
        goto LABEL_118;
      }

      v73 = *(v52 + 1);
      v74 = v73 - *v52;
      if (__OFSUB__(v73, *v52))
      {
        goto LABEL_121;
      }

      if (__OFADD__(v71, v74))
      {
        goto LABEL_123;
      }

      if (v71 + v74 >= v56)
      {
        if (v56 < v74)
        {
          v51 = v48 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_68;
    }

    if (v48 < 2)
    {
      goto LABEL_117;
    }

    v76 = *v53;
    v75 = *(v53 + 1);
    v64 = __OFSUB__(v75, v76);
    v71 = v75 - v76;
    v72 = v64;
LABEL_68:
    if (v72)
    {
      goto LABEL_120;
    }

    v78 = *v52;
    v77 = *(v52 + 1);
    v64 = __OFSUB__(v77, v78);
    v79 = v77 - v78;
    if (v64)
    {
      goto LABEL_122;
    }

    if (v79 < v71)
    {
      goto LABEL_82;
    }

LABEL_75:
    if (v51 - 1 >= v48)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_131;
    }

    v83 = v10;
    v84 = &v49[16 * v51 - 16];
    v85 = *v84;
    v86 = v51;
    v10 = &v49[16 * v51];
    v87 = *(v10 + 1);
    sub_1B21AA620(*a3 + 24 * *v84, (*a3 + 24 * *v10), *a3 + 24 * v87, v125, a4);
    if (v7)
    {
      goto LABEL_105;
    }

    if (v87 < v85)
    {
      goto LABEL_107;
    }

    v7 = v49;
    v88 = *(v83 + 2);
    if (v86 > v88)
    {
      goto LABEL_108;
    }

    *v84 = v85;
    *(v84 + 1) = v87;
    if (v86 >= v88)
    {
      goto LABEL_109;
    }

    v89 = v86;
    v48 = v88 - 1;
    sub_1B21A00E4(v10 + 16, v88 - 1 - v89, v10);
    v10 = v83;
    *(v83 + 2) = v88 - 1;
    v32 = v88 > 2;
    v49 = v7;
    v7 = 0;
    if (!v32)
    {
      goto LABEL_82;
    }
  }

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
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  v10 = sub_1B21A00CC(v10);
LABEL_96:
  v107 = v10 + 16;
  v108 = *(v10 + 2);
  while (v108 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_132;
    }

    v109 = v10;
    v110 = &v10[16 * v108];
    v111 = *v110;
    v10 = &v107[2 * v108];
    v112 = *(v10 + 1);
    sub_1B21AA620(*a3 + 24 * *v110, (*a3 + 24 * *v10), *a3 + 24 * v112, v125, a4);
    if (v7)
    {
      break;
    }

    if (v112 < v111)
    {
      goto LABEL_110;
    }

    if (v108 - 2 >= *v107)
    {
      goto LABEL_111;
    }

    *v110 = v111;
    *(v110 + 1) = v112;
    v113 = *v107 - v108;
    if (*v107 < v108)
    {
      goto LABEL_112;
    }

    v108 = *v107 - 1;
    sub_1B21A00E4(v10 + 16, v113, v10);
    *v107 = v108;
    v10 = v109;
  }

LABEL_105:
}

uint64_t sub_1B21AA620(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v48 = a3;
  v6 = a4;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 24;
  v10 = (a3 - a2) / 24;
  if (v9 >= v10)
  {
    v56 = v5;
    sub_1B213CECC(a2, (a3 - a2) / 24, a4);
    v47 = &v6[3 * v10];
    __src = v6;
LABEL_15:
    v23 = 0;
    v44 = v7 - 3;
    while (1)
    {
      v12 = &v47[v23 / 8];
      if (&v47[v23 / 8] <= v6 || v7 <= a1)
      {
LABEL_29:
        v37 = 3 * ((v12 - v6) / 24);
        v38 = v7 < v6 || v7 >= &v6[v37];
        if (v38 || v7 != v6)
        {
          v39 = v7;
          goto LABEL_41;
        }

        return 1;
      }

      v25 = *(v12 - 2);
      v53 = *(v12 - 3);
      v54 = v25;
      v55 = *(v12 - 8);
      v27 = *(v7 - 2);
      v50 = *(v7 - 3);
      v26 = v50;
      v51 = v27;
      v52 = *(v7 - 8);
      v28 = v52;
      sub_1B2113A20(v53, v25, v55);
      sub_1B2113A20(v26, v27, v28);
      v29 = v56;
      v30 = a5(&v53, &v50);
      v56 = v29;
      if (v29)
      {
        break;
      }

      v31 = v30;
      v32 = v7;
      v33 = (v48 + v23);
      v34 = v48 + v23 - 24;
      sub_1B2113A44(v50, v51, v52);
      sub_1B2113A44(v53, v54, v55);
      if (v31)
      {
        v47 = (v47 + v23);
        v48 = v48 + v23 - 24;
        v6 = __src;
        v7 -= 3;
        if (v33 != v32)
        {
          v36 = *v44;
          *(v34 + 16) = v44[2];
          *v34 = v36;
          v7 = v44;
          v48 = v34;
        }

        goto LABEL_15;
      }

      if (v12 != (v48 + v23))
      {
        v35 = *(v12 - 3);
        *(v48 + v23 - 8) = *(v12 - 1);
        *v34 = v35;
      }

      v23 -= 24;
      v6 = __src;
    }

    sub_1B2113A44(v50, v51, v52);
    sub_1B2113A44(v53, v54, v55);
    v41 = __src;
    v37 = 3 * ((v47 - __src + v23) / 24);
    if (v7 < __src || v7 >= &__src[3 * ((v47 - __src + v23) / 24)])
    {
      memmove(v7, __src, v37 * 8);
      return 1;
    }

    if (v7 != __src)
    {
      v39 = v7;
      goto LABEL_42;
    }
  }

  else
  {
    v11 = a3;
    sub_1B213CECC(a1, (a2 - a1) / 24, a4);
    v12 = &v6[3 * v9];
    while (1)
    {
      if (v6 >= v12 || v7 >= v11)
      {
        v7 = v8;
        goto LABEL_29;
      }

      v14 = v7[1];
      v53 = *v7;
      v54 = v14;
      v55 = *(v7 + 16);
      v16 = v6[1];
      v50 = *v6;
      v15 = v50;
      v51 = v16;
      v52 = *(v6 + 16);
      v17 = v52;
      sub_1B2113A20(v53, v14, v55);
      sub_1B2113A20(v15, v16, v17);
      v18 = a5(&v53, &v50);
      if (v5)
      {
        break;
      }

      v19 = v18;
      sub_1B2113A44(v50, v51, v52);
      sub_1B2113A44(v53, v54, v55);
      if (v19)
      {
        v20 = v7;
        v21 = v8 == v7;
        v7 += 3;
      }

      else
      {
        v20 = v6;
        v21 = v8 == v6;
        v6 += 3;
      }

      v11 = v48;
      if (!v21)
      {
        v22 = *v20;
        v8[2] = v20[2];
        *v8 = v22;
      }

      v8 += 3;
    }

    sub_1B2113A44(v50, v51, v52);
    sub_1B2113A44(v53, v54, v55);
    v37 = 3 * ((v12 - v6) / 24);
    v40 = v8 < v6 || v8 >= &v6[v37];
    if (v40 || v8 != v6)
    {
      v39 = v8;
LABEL_41:
      v41 = v6;
LABEL_42:
      memmove(v39, v41, v37 * 8);
    }
  }

  return 1;
}

uint64_t sub_1B21AAA00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  return sub_1B21A8D9C(*a1, a1[1], a1[2], a1[3], a3);
}

uint64_t sub_1B21AAA64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  return sub_1B21A8DD4(*a1, a1[1], a3);
}

void CGFloat.databaseValue.getter(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t static CGFloat.fromDatabaseValue(_:)(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  if (v3 != 1)
  {
    if (v3)
    {
      *&result = 0.0;
    }

    else
    {
      *&result = result;
    }
  }

  return result;
}

uint64_t sub_1B21AAB38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = static CGFloat.fromDatabaseValue(_:)(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1B21AAB68(unsigned __int8 a1, char a2)
{
  v2 = 0x4B4341424C4C4F52;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x4B4341424C4C4F52;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x54524F4241;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1279869254;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x45524F4E4749;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v5 = 0x4543414C504552;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x54524F4241;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1279869254;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x45524F4E4749;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v2 = 0x4543414C504552;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B211832C();
  }

  return v8 & 1;
}

uint64_t sub_1B21AACB8(unsigned __int8 a1, char a2)
{
  v2 = 0x45444143534143;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x45444143534143;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x5443495254534552;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x4C4C554E20544553;
      break;
    case 3:
      v5 = 0x4146454420544553;
      v3 = 0xEB00000000544C55;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x5443495254534552;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x4C4C554E20544553;
      break;
    case 3:
      v2 = 0x4146454420544553;
      v6 = 0xEB00000000544C55;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B211832C();
  }

  return v8 & 1;
}

uint64_t sub_1B21AAE08(char a1, char a2)
{
  v2 = 0xE900000000000045;
  v3 = 0x4445525245464544;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x54414944454D4D49;
    }

    else
    {
      v4 = 0x564953554C435845;
    }

    v5 = 0xE900000000000045;
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x4445525245464544;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x54414944454D4D49;
    }

    else
    {
      v3 = 0x564953554C435845;
    }
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  if (v4 == v3 && v5 == v2)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B22531F0();
  }

  return v7 & 1;
}

uint64_t sub_1B21AAEFC(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000006464;
  v3 = 0x2D4D4D2D79797979;
  v4 = a1;
  v5 = "yyyy-MM-dd HH:mm:ss.SSS";
  v6 = "yyyy-MM-dd HH:mm:ss";
  v7 = 0x2D4D4D2D79797979;
  v8 = 0xEA00000000006464;
  v9 = "yyyy-MM-dd HH:mm";
  switch(v4)
  {
    case 1:
      v7 = 0xD000000000000010;
      v8 = 0x80000001B226CC90;
      break;
    case 2:
      v8 = 0x80000001B226CCB0;
      v7 = 0xD000000000000013;
      break;
    case 3:
      v8 = 0x80000001B226CCD0;
      v7 = 0xD000000000000017;
      break;
    case 4:
      v8 = 0xE500000000000000;
      v7 = 0x6D6D3A4848;
      break;
    case 5:
      v8 = 0xE800000000000000;
      v7 = sub_1B212CFE4();
      break;
    case 6:
      v7 = sub_1B212CFE4();
      v8 = 0xEC0000005353532ELL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000010;
      v2 = (v9 - 32) | 0x8000000000000000;
      break;
    case 2:
      v2 = (v6 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000013;
      break;
    case 3:
      v2 = (v5 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000017;
      break;
    case 4:
      v2 = 0xE500000000000000;
      v3 = 0x6D6D3A4848;
      break;
    case 5:
      v2 = 0xE800000000000000;
      sub_1B212CDF8();
      break;
    case 6:
      sub_1B212CDF8();
      v2 = 0xEC0000005353532ELL;
      break;
    default:
      break;
  }

  if (v7 == v3 && v8 == v2)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B22531F0();
  }

  return v11 & 1;
}

uint64_t sub_1B21AB0C8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1313427274;
  }

  else
  {
    v3 = 0x494F4A205446454CLL;
  }

  if (v2)
  {
    v4 = 0xE90000000000004ELL;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1313427274;
  }

  else
  {
    v5 = 0x494F4A205446454CLL;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE90000000000004ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B211832C();
  }

  return v8 & 1;
}

uint64_t sub_1B21AB158(char a1, char a2)
{
  v3 = 0xE100000000000000;
  v4 = 61;
  switch(a1)
  {
    case 1:
      v3 = 0xE200000000000000;
      v4 = 15932;
      break;
    case 2:
      v3 = 0xE200000000000000;
      v4 = 21321;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v4 = 0x544F4E205349;
      break;
    default:
      break;
  }

  v5 = 0xE100000000000000;
  v6 = 61;
  switch(a2)
  {
    case 1:
      v5 = 0xE200000000000000;
      v6 = 15932;
      break;
    case 2:
      v5 = 0xE200000000000000;
      v6 = 21321;
      break;
    case 3:
      v5 = 0xE600000000000000;
      v6 = 0x544F4E205349;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B211832C();
  }

  return v8 & 1;
}

BOOL static ResultCode.~= infix(_:_:)(_DWORD *a1, int *a2)
{
  v2 = *a2;
  if (*a1 < 0x100u)
  {
    v2 = *a2;
  }

  return *a1 == v2;
}

uint64_t sub_1B21AB604@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = ResultCode.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1B21AB644@<X0>(_DWORD *a1@<X8>)
{
  result = ResultCode.rawValue.getter();
  *a1 = result;
  return result;
}

const char *ResultCode.description.getter()
{
  result = sqlite3_errstr(*v0);
  if (result)
  {
    v2 = sub_1B22523F0();
    v4 = v3;
    v5 = sub_1B2252FD0();
    MEMORY[0x1B2741EB0](10272, 0xE200000000000000);
    MEMORY[0x1B2741EB0](v2, v4);

    MEMORY[0x1B2741EB0](41, 0xE100000000000000);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static ResultCode.~= infix(_:_:)(unsigned int *a1, id a2)
{
  v2 = *a1;
  v3 = a2;
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  result = swift_dynamicCast();
  if (result)
  {

    sub_1B211A378(v6);
    if (v2 <= 0xFF)
    {
      return v2 == v5;
    }

    else
    {
      return v2 == v5;
    }
  }

  return result;
}

uint64_t DatabaseError.message.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t DatabaseError.sql.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t DatabaseError.arguments.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  a1[1] = v3;
  return sub_1B211CF8C(v2);
}

void DatabaseError.init(resultCode:message:sql:arguments:publicStatementArguments:)()
{
  sub_1B212DEE8();
  v4 = *v3;
  if (v2)
  {
    goto LABEL_4;
  }

  v5 = *v3;
  if (sqlite3_errstr(*v0))
  {
    v0 = sub_1B22523F0();
    v2 = v1;
    v4 = v5;
LABEL_4:
    sub_1B21147B0(v4, v0, v1, v2);
    return;
  }

  __break(1u);
}

{
  sub_1B212DEE8();
  v4 = *v3;
  if (v2)
  {
    goto LABEL_4;
  }

  v5 = *v3;
  if (sqlite3_errstr(v0))
  {
    v0 = sub_1B22523F0();
    v2 = v1;
    v4 = v5;
LABEL_4:
    sub_1B21147B0(v4, v0, v1, v2);
    return;
  }

  __break(1u);
}

uint64_t DatabaseError.init(resultCode:message:sql:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = result;
  if (a3)
  {
    goto LABEL_4;
  }

  result = sqlite3_errstr(result);
  if (result)
  {
    result = sub_1B22523F0();
    a2 = result;
    a3 = v11;
LABEL_4:
    *a6 = v9;
    *(a6 + 8) = a2;
    *(a6 + 16) = a3;
    *(a6 + 24) = a4;
    *(a6 + 32) = a5;
    *(a6 + 40) = 0;
    *(a6 + 48) = 0;
    *(a6 + 56) = 0;
    return result;
  }

  __break(1u);
  return result;
}

double sub_1B21AB9A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B2252CD0();

  MEMORY[0x1B2741EB0](a1, a2);
  *a3 = 1;
  *(a3 + 8) = 0x2068637573206F6ELL;
  *(a3 + 16) = 0xEF203A656C626174;
  result = 0.0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0;
  return result;
}

uint64_t sub_1B21ABA4C(uint64_t a1)
{
  v2 = sub_1B21AC434();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B21ABA88(uint64_t a1)
{
  v2 = sub_1B21AC434();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t DatabaseError.description.getter()
{
  sub_1B211D90C();
  v5 = *(v0 + 56);
  sub_1B2115714();
  v6 = sub_1B2252FD0();
  MEMORY[0x1B2741EB0](v6);

  if (v2)
  {
    sub_1B2117C98();
    MEMORY[0x1B2741EB0]();
  }

  if (v1)
  {
    sub_1B2116138();
    sub_1B2252CD0();

    sub_1B2112060();
    MEMORY[0x1B2741EB0](96, 0xE100000000000000);
    sub_1B21221C4();
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (v7 == 1 && (*(v3 + 16) || *(v4 + 16)))
  {
    sub_1B2116138();
    sub_1B2252CD0();

    v8 = sub_1B2115C54();
    MEMORY[0x1B2741EB0](v8);

    sub_1B21221C4();
  }

  return v10;
}

unint64_t DatabaseError.errorUserInfo.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v15 = *(v0 + 3);
  v16 = *(v0 + 5);
  v17 = *(v0 + 56);
  sub_1B21619D8(&qword_1EB7A1120, &qword_1B2254948);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  v5 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1B22522A0();
  *(inited + 40) = v6;
  *(inited + 48) = DatabaseError.description.getter();
  *(inited + 56) = v7;
  v8 = sub_1B2252190();
  if (v3)
  {
    v9 = *MEMORY[0x1E696A588];
    v10 = sub_1B22522A0();
    v12 = v11;

    swift_isUniquelyReferenced_nonNull_native();
    sub_1B21AC17C(v1, v3, v10, v12);
  }

  v13 = sub_1B2225608(v8);

  return v13;
}

double sub_1B21ABD9C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 21;
  *(a1 + 8) = 0xD000000000000014;
  *(a1 + 16) = 0x80000001B226DEC0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

uint64_t DatabaseError.expandedDescription.getter()
{
  sub_1B211D90C();
  sub_1B2115714();
  v4 = sub_1B2252FD0();
  MEMORY[0x1B2741EB0](v4);

  if (v1)
  {
    sub_1B2117C98();
    MEMORY[0x1B2741EB0]();
  }

  if (v0)
  {
    sub_1B2116138();
    sub_1B2252CD0();

    sub_1B2112060();
    MEMORY[0x1B2741EB0](96, 0xE100000000000000);
    sub_1B21221C4();
  }

  if (v2 && (*(v2 + 16) || *(v3 + 16)))
  {
    sub_1B2116138();
    sub_1B2252CD0();

    v5 = sub_1B2115C54();
    MEMORY[0x1B2741EB0](v5);

    sub_1B21221C4();
  }

  return v7;
}

uint64_t sub_1B21ABF20()
{
  sub_1B2122548();
  v3 = v2;
  v5 = v4;
  sub_1B211436C(v6, v4, v2);
  v7 = sub_1B2190C9C();
  sub_1B211744C(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for TableAlias();
    result = sub_1B2253390();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  sub_1B21619D8(&qword_1EB7A1CF0, &qword_1B225A758);
  if (sub_1B21165F8())
  {
    v14 = *v1;
    sub_1B2190C9C();
    sub_1B21150FC();
    if (!v16)
    {
      goto LABEL_14;
    }

    v12 = v15;
  }

  v17 = *v1;
  if (v13)
  {
    v18 = (*(v17 + 56) + 16 * v12);
    v19 = v18[1];
    *v18 = v0;
    v18[1] = v5;
    sub_1B2115ED4();
  }

  else
  {
    sub_1B21CBF44(v12, v3, v0, v5, v17);
    sub_1B2115ED4();
  }
}

uint64_t sub_1B21AC070()
{
  sub_1B2122548();
  v3 = v2;
  v5 = v4;
  sub_1B211436C(v6, v4, v2);
  v7 = sub_1B2190CF8();
  sub_1B211744C(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_12:
    result = sub_1B2253390();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  sub_1B21619D8(&qword_1EB7A1D00, &qword_1B225A768);
  if (sub_1B21165F8())
  {
    v14 = *v1;
    sub_1B2190CF8();
    sub_1B21150FC();
    if (!v16)
    {
      goto LABEL_12;
    }

    v12 = v15;
  }

  v17 = *v1;
  if (v13)
  {
    v18 = (*(v17 + 56) + 16 * v12);
    v19 = v18[1];
    *v18 = v0;
    v18[1] = v5;
  }

  else
  {
    sub_1B21CC018(v12, v3, v0, v5, v17);
    return sub_1B21AC488(v3, v21);
  }
}

uint64_t sub_1B21AC17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  sub_1B211436C(a1, a2, a3);
  v10 = sub_1B211E590();
  sub_1B211744C(v10, v11);
  if (v14)
  {
    __break(1u);
LABEL_14:
    result = sub_1B2253390();
    __break(1u);
    return result;
  }

  v15 = v12;
  v16 = v13;
  sub_1B21619D8(&qword_1EB7A1D30, &qword_1B225A790);
  if (sub_1B2121FA4())
  {
    v17 = *v4;
    sub_1B211E590();
    sub_1B21150FC();
    if (!v19)
    {
      goto LABEL_14;
    }

    v15 = v18;
  }

  v20 = *v6;
  if (v16)
  {
    v21 = (*(v20 + 56) + 16 * v15);
    v22 = v21[1];
    *v21 = v5;
    v21[1] = a2;
    sub_1B2111588();
  }

  else
  {
    sub_1B21CC104(v15, a3, a4, v5, a2, v20);
    sub_1B2111588();
  }
}

unint64_t sub_1B21AC298()
{
  result = qword_1ED85D4B8;
  if (!qword_1ED85D4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85D4B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResultCode(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ResultCode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 sub_1B21AC350(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B21AC36C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1B21AC3C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1B21AC434()
{
  result = qword_1EB7A0C98[0];
  if (!qword_1EB7A0C98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB7A0C98);
  }

  return result;
}

uint64_t sub_1B21AC4E4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1B21424A0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1B21AC6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(v6 + 16);
  v21 = *(v6 + 8);
  v22 = *(v6 + 24);
  v11 = *(v6 + 32);
  v10 = *(v6 + 40);
  v13 = *(v6 + 48);
  v12 = *(v6 + 56);
  v14 = *(v6 + 72);
  v23 = *(v6 + 64);
  v26 = *(v6 + 80);
  v15 = *(v6 + 96);
  v24 = *(v6 + 88);
  v25 = *v6;
  v28 = *(v6 + 104);
  v16 = swift_allocObject();
  v17 = *(a3 + 24);
  v16[2] = *(a3 + 16);
  v16[3] = a4;
  v16[4] = v17;
  v16[5] = a5;
  v16[6] = a1;
  v16[7] = a2;
  v16[8] = v15;
  v16[9] = v28;
  *a6 = v25;
  *(a6 + 8) = v21;
  *(a6 + 16) = v9;
  *(a6 + 24) = v22;
  *(a6 + 32) = v11;
  *(a6 + 40) = v10;
  *(a6 + 48) = v13;
  *(a6 + 56) = v12;
  *(a6 + 64) = v23;
  *(a6 + 72) = v14;
  *(a6 + 80) = v26;
  *(a6 + 88) = v24;
  *(a6 + 96) = sub_1B21B2738;
  *(a6 + 104) = v16;
  sub_1B2112328(v25);
  sub_1B2112328(v9);
  sub_1B2112328(v11);
  sub_1B2112328(v13);
  sub_1B2112328(v23);
  sub_1B2167008(v24);
}

uint64_t sub_1B21AC838(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00]();
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12(v9);
  a1(v11);
  return (*(v7 + 8))(v11, a5);
}

uint64_t ValueObservation.start(in:scheduling:onError:onChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memcpy(__dst, v8, sizeof(__dst));
  v13 = *(a8 + 16);
  v12 = *(a8 + 24);
  v14 = sub_1B2135E94(sub_1B21ACBB4, a8, __src);
  if (__src[0])
  {
    (__src[0])(v14);
  }

  ObjectType = swift_getObjectType();
  memcpy(__dst, __src, sizeof(__dst));
  (*(a2 + 72))(__dst, a3, a6, a7, v13, v12, ObjectType, a2);
  sub_1B2111808(a8);
  return (*(v16 + 8))(__src, a8);
}

uint64_t sub_1B21ACA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(a1 + 56);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;
    v10 = swift_allocObject();
    v10[2] = sub_1B21B277C;
    v10[3] = v8;
    v10[4] = sub_1B21B277C;
    v10[5] = v9;
    v11 = sub_1B21B2750;
  }

  else
  {
    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = a3;
    v11 = sub_1B21B277C;
  }

  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v10;
  *(a1 + 48) = sub_1B21B274C;
  *(a1 + 56) = v13;
}

uint64_t sub_1B21ACBB4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1B21ACA70(a1, v1[4], v1[5]);
}

uint64_t ValueObservation.handleEvents(willStart:willFetch:willTrackRegion:databaseDidChange:didReceiveValue:didFail:didCancel:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B2118030();
  v12 = swift_allocObject();
  v13 = *(a10 + 24);
  v12[2] = *(a10 + 16);
  v12[3] = v13;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a4;
  v12[7] = a5;
  sub_1B2112328(a1);
  v14 = sub_1B2111F44();
  sub_1B2112328(v14);
  v15 = type metadata accessor for ValueReducers.Trace();
  WitnessTable = swift_getWitnessTable();
  sub_1B21AC6AC(sub_1B21ACFD4, v12, a10, v15, WitnessTable, __src);

  sub_1B211510C();
  v17 = type metadata accessor for ValueObservation();
  sub_1B2135E94(sub_1B21AD2F0, v17, a3);
  memcpy(__dst, __src, 0x70uLL);
  sub_1B2111808(v17);
  return (*(v18 + 8))(__dst, v17);
}

uint64_t sub_1B21ACDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v27 = a8;
  v14 = *(*(a6 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  if (a2)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    v19 = sub_1B212D718;
  }

  else
  {
    v19 = nullsub_1;
    v18 = 0;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  v21 = swift_allocObject();
  v21[2] = a6;
  v21[3] = a7;
  if (a4)
  {
    v21[4] = a4;
    v21[5] = a5;
    v22 = sub_1B21B272C;
  }

  else
  {
    v22 = nullsub_1;
  }

  v23 = v22;
  v24 = swift_allocObject();
  v24[2] = a6;
  v24[3] = a7;
  v24[4] = v23;
  v24[5] = v21;
  sub_1B21E1E64(v16, sub_1B212E030, v20, sub_1B21B2720, v24, a6, v27);
  sub_1B2112328(a2);
  return sub_1B2112328(a4);
}

uint64_t sub_1B21ACFE4(uint64_t (**a1)(), uint64_t a2, uint64_t (*a3)(), uint64_t a4, uint64_t (*a5)(), uint64_t a6, uint64_t (*a7)(), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)())
{
  v18 = *a1;
  v17 = a1[1];
  if (a2)
  {
    v19 = a2;
    v20 = a3;
    if (v18)
    {
      v20 = swift_allocObject();
      *(v20 + 2) = v18;
      *(v20 + 3) = v17;
      *(v20 + 4) = a2;
      *(v20 + 5) = a3;
      v19 = sub_1B21B269C;
    }
  }

  else
  {
    v19 = *a1;
    v20 = a1[1];
  }

  *a1 = v19;
  a1[1] = v20;
  v21 = a1[2];
  v22 = a1[3];
  if (a4)
  {
    v23 = a4;
    v24 = a5;
    if (v21)
    {
      v24 = swift_allocObject();
      *(v24 + 2) = v21;
      *(v24 + 3) = v22;
      *(v24 + 4) = a4;
      *(v24 + 5) = a5;
      v23 = sub_1B21B2714;
    }

    goto LABEL_9;
  }

  v23 = a1[2];
  v24 = a1[3];
  if (v21)
  {
LABEL_9:
    sub_1B2112328(a4);
    goto LABEL_10;
  }

  v24 = 0;
LABEL_10:
  a1[2] = v23;
  a1[3] = v24;
  v26 = a1[4];
  v25 = a1[5];
  if (a6)
  {
    v27 = a6;
    v28 = a7;
    if (v26)
    {
      v28 = swift_allocObject();
      *(v28 + 2) = v26;
      *(v28 + 3) = v25;
      *(v28 + 4) = a6;
      *(v28 + 5) = a7;
      v27 = sub_1B21B2778;
    }
  }

  else
  {
    v27 = a1[4];
    v28 = a1[5];
  }

  a1[4] = v27;
  a1[5] = v28;
  v29 = a1[6];
  if (v29)
  {
    v30 = a1[7];
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    *(v31 + 24) = v30;
    v32 = sub_1B21B277C;
    if (!a8)
    {
LABEL_21:
      v36 = swift_allocObject();
      *(v36 + 16) = v32;
      *(v36 + 24) = v31;
      v37 = sub_1B21B26A8;
      goto LABEL_22;
    }

LABEL_18:
    v33 = swift_allocObject();
    *(v33 + 16) = a8;
    *(v33 + 24) = a9;
    v34 = sub_1B21B26E0;
    if (v29)
    {
      v35 = swift_allocObject();
      v35[2] = v32;
      v35[3] = v31;
      v35[4] = sub_1B21B26E0;
      v35[5] = v33;
      v34 = sub_1B21B2714;
      v33 = v35;
    }

    v32 = v34;
    sub_1B2112328(a8);
    v31 = v33;
    goto LABEL_21;
  }

  v31 = 0;
  v32 = 0;
  if (a8)
  {
    goto LABEL_18;
  }

  v37 = 0;
  v36 = 0;
LABEL_22:
  a1[6] = v37;
  a1[7] = v36;
  v39 = a1[8];
  v38 = a1[9];
  if (a10)
  {
    v40 = a10;
    v41 = a11;
    if (v39)
    {
      v41 = swift_allocObject();
      *(v41 + 2) = v39;
      *(v41 + 3) = v38;
      *(v41 + 4) = a10;
      *(v41 + 5) = a11;
      v40 = sub_1B21B2778;
    }
  }

  else
  {
    v40 = a1[8];
    v41 = a1[9];
  }

  a1[8] = v40;
  a1[9] = v41;
  sub_1B2112328(a2);
  sub_1B2112328(a6);
  return sub_1B2112328(a10);
}

uint64_t sub_1B21AD2F0(uint64_t (**a1)())
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  return sub_1B21ACFE4(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104));
}

void ValueObservation.print(_:to:)(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  sub_1B2111A0C();
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v7 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    *&v21 = v4;
    *(&v21 + 1) = v3;

    MEMORY[0x1B2741EB0](8250, 0xE200000000000000);
    v8 = v4;
  }

  else
  {
    v8 = 0;
    v3 = 0xE000000000000000;
  }

  v9 = swift_allocObject();
  sub_1B21B23CC(v2, &v21, &qword_1EB7A1D40, &unk_1B225A7B0);
  if (v22)
  {
    sub_1B21217FC(&v21, v9 + 16);
  }

  else
  {
    *(v9 + 40) = &type metadata for PrintOutputStream;
    *(v9 + 48) = sub_1B21AD640();
  }

  sub_1B2113B74();
  v19 = swift_allocObject();
  sub_1B2118348(v19);
  sub_1B2113B74();
  v10 = swift_allocObject();
  sub_1B2118348(v10);
  sub_1B2113B74();
  v11 = swift_allocObject();
  sub_1B2118348(v11);
  sub_1B2113B74();
  v12 = swift_allocObject();
  sub_1B2118348(v12);
  sub_1B2118030();
  v13 = swift_allocObject();
  *(v13 + 16) = *(a1 + 16);
  *(v13 + 32) = v6;
  *(v13 + 40) = v9;
  *(v13 + 48) = v8;
  *(v13 + 56) = v3;
  sub_1B2113B74();
  v14 = swift_allocObject();
  sub_1B2118348(v14);
  sub_1B2113B74();
  v18 = a1;
  v15 = swift_allocObject();
  sub_1B2118348(v15);
  v16 = v6;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v17 = v16;
  ValueObservation.handleEvents(willStart:willFetch:willTrackRegion:databaseDidChange:didReceiveValue:didFail:didCancel:)(sub_1B21AD6C4, v10, a2, sub_1B21ADA64, v13, sub_1B21ADBA0, v14, sub_1B21ADCC4, v15, v18);
}

unint64_t sub_1B21AD640()
{
  result = qword_1EB7A1D48[0];
  if (!qword_1EB7A1D48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB7A1D48);
  }

  return result;
}

id sub_1B21AD694()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_1B21ADBAC(*(v0 + 16), *(v0 + 24));
}

id sub_1B21AD6C4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_1B21ADBAC(*(v0 + 16), *(v0 + 24));
}

id sub_1B21AD6F4(uint64_t *a1, id a2, uint64_t a3)
{
  v5 = *a1;
  [a2 lock];
  sub_1B2252CD0();

  MEMORY[0x1B2741EB0](0xD000000000000010, 0x80000001B226DFD0);
  v6 = DatabaseRegion.description.getter();
  MEMORY[0x1B2741EB0](v6);

  swift_beginAccess();
  v7 = *(a3 + 48);
  sub_1B21A1628(a3 + 16, *(a3 + 40));
  sub_1B2252E20();
  swift_endAccess();

  return [a2 unlock];
}

id sub_1B21AD81C(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_1B21AD6F4(a1, *(v1 + 16), *(v1 + 24));
}

id sub_1B21AD828(void *a1, uint64_t a2)
{
  [a1 lock];
  sub_1B2252CD0();

  MEMORY[0x1B2741EB0](0xD000000000000013, 0x80000001B226DFB0);
  swift_beginAccess();
  v4 = *(a2 + 48);
  sub_1B21A1628(a2 + 16, *(a2 + 40));
  sub_1B2252E20();
  swift_endAccess();

  return [a1 unlock];
}

id sub_1B21AD928()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_1B21AD828(*(v0 + 16), *(v0 + 24));
}

id sub_1B21AD934(int a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  [a2 lock];
  MEMORY[0x1B2741EB0](a4, a5);
  MEMORY[0x1B2741EB0](0x203A65756C6176, 0xE700000000000000);
  v12 = *(a7 + 8);
  swift_getAssociatedTypeWitness();
  sub_1B22531C0();
  swift_beginAccess();
  v13 = *(a3 + 48);
  sub_1B21A1628(a3 + 16, *(a3 + 40));
  sub_1B2252E20();
  swift_endAccess();

  return [a2 unlock];
}

id sub_1B21ADA74(int a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [a2 lock];
  MEMORY[0x1B2741EB0](a4, a5);
  MEMORY[0x1B2741EB0](0x3A6572756C696166, 0xE900000000000020);
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  sub_1B2252E10();
  swift_beginAccess();
  v9 = *(a3 + 48);
  sub_1B21A1628(a3 + 16, *(a3 + 40));
  sub_1B2252E20();
  swift_endAccess();

  return [a2 unlock];
}

id sub_1B21ADBAC(void *a1, uint64_t a2)
{
  [a1 lock];

  v4 = sub_1B2111F44();
  MEMORY[0x1B2741EB0](v4);
  swift_beginAccess();
  v5 = *(a2 + 48);
  sub_1B21A1628(a2 + 16, *(a2 + 40));
  sub_1B2252E20();
  swift_endAccess();

  return [a1 unlock];
}

uint64_t sub_1B21ADC80()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_1B2113B74();

  return swift_deallocObject();
}

id sub_1B21ADCC4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_1B21ADBAC(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_1B21ADCF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1B211280C(AssociatedTypeWitness);
  v37 = v9;
  v38 = v8;
  v11 = *(v10 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  v36 = swift_getAssociatedTypeWitness();
  v15 = sub_1B2252B00();
  sub_1B211280C(v15);
  v35 = v16;
  v18 = *(v17 + 64);
  sub_1B21117FC();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v34 - v21;
  v23 = *(v5 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v20);
  v27 = &v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v3 + 96);
  v29 = *(v3 + 104);
  v28(v25);
  v30 = v40;
  (*(v6 + 24))(a1, v5, v6);
  if (v30)
  {
    return (*(v23 + 8))(v27, v5);
  }

  (*(v6 + 32))(v14, v5, v6);
  (*(v37 + 8))(v14, v38);
  v32 = v36;
  if (sub_1B2122A98(v22, 1, v36) == 1)
  {
    (*(v35 + 8))(v22, v15);
    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    (*(v23 + 8))(v27, v5);
    sub_1B2111808(v32);
    return (*(v33 + 32))(v39, v22, v32);
  }

  return result;
}

uint64_t ValueObservation.values(in:scheduling:bufferingPolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v27 = a3;
  v26 = a2;
  v28 = a6;
  v12 = *(a5 + 16);
  v11 = *(a5 + 24);
  v13 = *(v11 + 8);
  swift_getAssociatedTypeWitness();
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v14 = sub_1B2252730();
  sub_1B211280C(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v26 - v20;
  memcpy(__dst, v7, 0x70uLL);
  (*(v16 + 16))(v21, a4, v14);
  v22 = swift_allocObject();
  v22[2] = v12;
  v22[3] = v11;
  memcpy(v22 + 4, __dst, 0x70uLL);
  v23 = v26;
  v22[18] = a1;
  v22[19] = v23;
  v22[20] = v27;
  swift_checkMetadataState();
  sub_1B21AE23C();
  sub_1B2111808(a5);
  (*(v24 + 16))(v29, __dst, a5);
  swift_unknownObjectRetain();
}

uint64_t sub_1B21AE23C()
{
  sub_1B211437C();
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  sub_1B211510C();
  v4 = sub_1B2252730();
  sub_1B21118A0(v4);
  (*(v5 + 32))(v3, v2);
  sub_1B211510C();
  result = type metadata accessor for AsyncValueObservation();
  v7 = (v3 + *(result + 28));
  *v7 = v1;
  v7[1] = v0;
  return result;
}

uint64_t AsyncValueObservation.makeAsyncIterator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  sub_1B211510C();
  v3 = *(*(sub_1B2252790() - 8) + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v4);
  sub_1B211510C();
  v5 = sub_1B2252730();
  sub_1B211280C(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23[-v11];
  sub_1B211510C();
  v13 = sub_1B22527A0();
  sub_1B211280C(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v23[-v19];
  v27 = 0;
  (*(v7 + 16))(v12, v1, v5);
  v24 = v2;
  v25 = &v27;
  v26 = v1;
  sub_1B22527B0();
  sub_1B2252770();
  if (v27)
  {
    v21 = *(v15 + 8);

    v21(v20, v13);
    sub_1B21AEC48();
  }

  else
  {
    result = sub_1B2252EC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B21AE55C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v7 = sub_1B2252760();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v45 = type metadata accessor for AnyDatabaseCancellable();
  v13 = a4;
  v39 = a4;
  v14 = (a3 + *(type metadata accessor for AsyncValueObservation() + 28));
  v15 = *v14;
  v42 = v14[1];
  v43 = v15;
  v40 = *(v8 + 16);
  v16 = a1;
  v44 = a1;
  v40(v12, a1, v7);
  v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  v38 = *(v8 + 32);
  v38(v18 + v17, v12, v7);
  v19 = swift_allocObject();
  v20 = *v46;
  swift_weakInit();
  v21 = v41;
  v40(v41, v16, v7);
  v22 = (v17 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = v38;
  v25 = v39;
  *(v23 + 16) = v39;
  v24(v23 + v17, v21, v7);
  *(v23 + v22) = v19;

  v43(v47, sub_1B21B24D0, v18, sub_1B21B2574, v23);

  v26 = v48;
  v27 = v49;
  v28 = sub_1B21A1628(v47, v48);
  v29 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v38 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v31);
  v33 = sub_1B21E9F54(v31, v45, v26, v27);
  sub_1B2113208(v47);
  v34 = *v46;
  *v46 = v33;

  v35 = swift_allocObject();
  swift_weakInit();

  v36 = swift_allocObject();
  *(v36 + 16) = v25;
  *(v36 + 24) = v35;
  return sub_1B2252720();
}

uint64_t sub_1B21AE94C(void *a1)
{
  v1 = a1;
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  sub_1B2252760();
  return sub_1B2252750();
}

uint64_t sub_1B21AE9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a3;
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v10 = sub_1B2252710();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  (*(v6 + 16))(v9, a1, a4);
  sub_1B2252760();
  sub_1B2252740();
  if ((*(v11 + 88))(v14, v10) != *MEMORY[0x1E69E8768])
  {
    return (*(v11 + 8))(v14, v10);
  }

  (*(v11 + 8))(v14, v10);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B21E9EB8();
  }

  return result;
}

uint64_t sub_1B21AEBF0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B21E9EB8();
  }

  return result;
}

uint64_t sub_1B21AEC48()
{
  sub_1B2111A0C();
  v2 = v1;
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  sub_1B211510C();
  v3 = sub_1B2252790();
  sub_1B21118A0(v3);
  v5 = *(v4 + 32);
  v6 = sub_1B2111F44();
  v7(v6);
  sub_1B211510C();
  result = type metadata accessor for AsyncValueObservation.Iterator();
  *(v2 + *(result + 28)) = v0;
  return result;
}

uint64_t AsyncValueObservation.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x1E69E87B0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = *(a2 + 16);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  sub_1B211510C();
  v8 = sub_1B2252790();
  *v6 = v2;
  v6[1] = sub_1B21AEDAC;

  return MEMORY[0x1EEE6DB98](a1, v8);
}

uint64_t sub_1B21AEDAC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B21AEEA0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B21B2754;

  return AsyncValueObservation.Iterator.next()(a1, a2);
}

uint64_t sub_1B21AEF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_1B21AF01C;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1B21AF01C()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_1B21AF12C(uint64_t a1)
{
  AsyncValueObservation.makeAsyncIterator()(a1);
  v3 = *(*(a1 - 8) + 8);

  return v3(v1, a1);
}

uint64_t ValueObservation.publisher(in:scheduling:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  memcpy(__dst, v5, sizeof(__dst));
  v11 = swift_allocObject();
  *(v11 + 16) = *(a4 + 16);
  memcpy((v11 + 32), v5, 0x70uLL);
  *(v11 + 144) = a1;
  *(v11 + 152) = a2;
  *(v11 + 160) = a3;
  *a5 = sub_1B21B2758;
  a5[1] = v11;
  sub_1B2111808(a4);
  (*(v12 + 16))(&v14, __dst, a4);
  swift_unknownObjectRetain();
}

uint64_t sub_1B21AF278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *__src, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  memcpy(v19, __src, sizeof(v19));
  type metadata accessor for ValueObservation();
  v15 = sub_1B2111F44();
  return ValueObservation.start(in:scheduling:onError:onChange:)(v15, v16, a8, a1, a2, a3, a4, v17);
}

uint64_t sub_1B21AF328()
{
  if (v0[4])
  {
    v1 = v0[5];
  }

  if (v0[6])
  {
    v2 = v0[7];
  }

  if (v0[8])
  {
    v3 = v0[9];
  }

  if (v0[10])
  {
    v4 = v0[11];
  }

  if (v0[12])
  {
    v5 = v0[13];
  }

  if (v0[15] >= 2uLL)
  {
  }

  v6 = v0[17];

  v7 = v0[18];
  swift_unknownObjectRelease();
  v8 = v0[20];

  return swift_deallocObject();
}

uint64_t sub_1B21AF404@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t DatabasePublishers.Value.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v10 = v3[1];
  v12 = _s17ValueSubscriptionCMa();
  (*(v6 + 16))(v9, a1, a3);

  v13 = sub_1B21AF570(v11, v10, v9);
  v16[3] = v12;
  v16[4] = swift_getWitnessTable();
  v16[0] = v13;
  sub_1B2251FD0();
  return sub_1B2113208(v16);
}

uint64_t *sub_1B21AF570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return sub_1B21AF6DC(a1, a2, a3);
}

uint64_t sub_1B21AF5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = _s17ValueSubscriptionC16WaitingForDemandVMa();
  v9 = (a5 + *(result + 36));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t sub_1B21AF654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = _s17ValueSubscriptionC9ObservingVMa();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t *sub_1B21AF6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 80);
  v9 = *(*v3 + 88);
  v10 = _s17ValueSubscriptionC5StateOMa();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  v3[6] = 0;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  v15 = *(v7 + 112);
  *(v3 + v15) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  sub_1B21AF5C4(a3, a1, a2, v8, v14);
  swift_storeEnumTagMultiPayload();
  (*(v11 + 32))(v3 + *(*v3 + 104), v14, v10);
  return v3;
}

void sub_1B21AF86C()
{
  v1 = *(v0 + *(*v0 + 112));
  sub_1B21E8980(sub_1B2193480, 0, sub_1B21B249C);
}

uint64_t sub_1B21AF8F8(char *a1, void (*a2)(char *, char *, uint64_t))
{
  v71 = a2;
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v69 = _s17ValueSubscriptionC9ObservingVMa();
  v68 = *(v69 - 8);
  v6 = *(v68 + 64);
  v7 = MEMORY[0x1EEE9AC00](v69);
  v70 = &v66 - v8;
  v67 = *(v4 - 8);
  v9 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v66 - v10;
  v73 = _s17ValueSubscriptionC16WaitingForDemandVMa();
  v74 = *(v73 - 8);
  v11 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v13 = &v66 - v12;
  v14 = _s17ValueSubscriptionC5StateOMa();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v72 = &v66 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v66 - v22;
  v24 = *(v3 + 104);
  swift_beginAccess();
  v75 = v15;
  v76 = a1;
  v26 = *(v15 + 16);
  v25 = v15 + 16;
  v77 = v24;
  v27 = &a1[v24];
  v28 = v26;
  v26(v23, v27, v14);
  v78 = v14;
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    v69 = v25;
    v70 = v19;
    v41 = v74;
    v42 = v73;
    (*(v74 + 32))(v13, v23, v73);
    sub_1B2252030();
    v43 = v71;
    result = sub_1B2252010();
    v44 = v76;
    v45 = v66;
    if ((result & 1) == 0)
    {
      if (v43 < 0)
      {
        __break(1u);
        goto LABEL_24;
      }

      if (!v43)
      {
        return (*(v41 + 8))(v13, v42);
      }
    }

    (*(v67 + 16))(v66, v13, v4);
    v46 = v72;
    sub_1B21AF654(v45, v43, v4, v72);
    v47 = v78;
    swift_storeEnumTagMultiPayload();
    v48 = v77;
    swift_beginAccess();
    v71 = v28;
    v49 = v75;
    (*(v75 + 40))(&v44[v48], v46, v47);
    swift_endAccess();
    v50 = &v13[*(v42 + 36)];
    v51 = *(v50 + 1);
    v68 = *v50;
    v72 = v13;
    v52 = swift_allocObject();
    swift_weakInit();
    v53 = swift_allocObject();
    v53[2] = v4;
    v53[3] = v5;
    v53[4] = v52;
    v54 = swift_allocObject();
    swift_weakInit();
    v55 = swift_allocObject();
    v55[2] = v4;
    v55[3] = v5;
    v55[4] = v54;

    (v68)(v80, sub_1B21B24B8, v53, sub_1B21B24C4, v55);
    v56 = v78;

    v57 = v70;
    v71(v70, &v44[v77], v56);
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      sub_1B211EE68(v80, v79);
      swift_beginAccess();
      sub_1B21B2294(v79, (v44 + 16));
      swift_endAccess();
      (*(v74 + 8))(v72, v73);
      (*(v49 + 8))(v57, v56);
    }

    else
    {
      v58 = v72;
      v59 = v73;
      v60 = v74;
      if (result != 2)
      {
LABEL_26:
        __break(1u);
        return result;
      }

      v61 = v81;
      v62 = v82;
      sub_1B21139A0(v80, v81);
      (*(v62 + 8))(v61, v62);
      (*(v60 + 8))(v58, v59);
    }

    return sub_1B2113208(v80);
  }

  if (result != 1)
  {
    return result;
  }

  v30 = *(v68 + 32);
  v31 = v70;
  v32 = v69;
  v30(v70, v23, v69);
  v33 = *(v32 + 36);
  v34 = *&v31[v33];
  sub_1B2252030();
  v35 = sub_1B2252010();
  v37 = v75;
  v36 = v76;
  if ((v35 & 1) == 0)
  {
    sub_1B2252030();
    v38 = sub_1B2252010();
    v39 = sub_1B2252030();
    if (v38)
    {
LABEL_20:
      *&v31[v33] = v39;
      goto LABEL_21;
    }

    v40 = v71;
    result = sub_1B2252010();
    if (result)
    {
LABEL_9:
      v39 = sub_1B2252030();
      v31 = v70;
      goto LABEL_20;
    }

    if (((v34 | v40) & 0x8000000000000000) == 0)
    {
      v39 = v34 + v40;
      if (!__OFADD__(v34, v40))
      {
        v31 = v70;
        if ((v39 & 0x8000000000000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }

      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_21:
  v63 = v72;
  v30(v72, v31, v32);
  v64 = v78;
  swift_storeEnumTagMultiPayload();
  v65 = v77;
  swift_beginAccess();
  (*(v37 + 40))(&v36[v65], v63, v64);
  return swift_endAccess();
}

uint64_t sub_1B21B00E4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B21B0A80();
  }

  return result;
}

uint64_t sub_1B21B0144()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B21B04A8();
  }

  return result;
}

void sub_1B21B01A4()
{
  v1 = *(v0 + *(*v0 + 112));
  sub_1B22189C4(sub_1B2193D34, 0);
}

double sub_1B21B0238(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 80);
  v6 = *(v4 + 88);
  v7 = _s17ValueSubscriptionC5StateOMa();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v18 - v10 + 16;
  v12 = a1[1];
  sub_1B2112F4C(*a1);
  swift_beginAccess();
  sub_1B21B23CC((a2 + 2), v20, &qword_1EB7A2150, &unk_1B225AD60);
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  swift_beginAccess();
  sub_1B21B2294(v18, (a2 + 2));
  swift_endAccess();
  swift_storeEnumTagMultiPayload();
  v13 = *(*a2 + 104);
  swift_beginAccess();
  (*(v8 + 40))(a2 + v13, v11, v7);
  swift_endAccess();
  v14 = swift_allocObject();
  result = *v20;
  v16 = v20[1];
  *(v14 + 16) = v20[0];
  *(v14 + 32) = v16;
  *(v14 + 48) = v21;
  *a1 = sub_1B21B242C;
  a1[1] = v14;
  return result;
}

uint64_t sub_1B21B0418(uint64_t a1)
{
  sub_1B21B23CC(a1, v4, &qword_1EB7A2150, &unk_1B225AD60);
  v1 = v5;
  if (!v5)
  {
    return sub_1B21B2434(v4);
  }

  v2 = v6;
  sub_1B21139A0(v4, v5);
  (*(v2 + 8))(v1, v2);
  return sub_1B2113208(v4);
}

void sub_1B21B04A8()
{
  v1 = *(v0 + *(*v0 + 112));
  sub_1B21E8980(sub_1B2193F34, 0, sub_1B21B23A8);
}

uint64_t sub_1B21B0534(uint64_t *a1, char *a2)
{
  v56 = a2;
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v6 = _s17ValueSubscriptionC5StateOMa();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v52 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v57 = &v46 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - v13;
  v54 = v5;
  v55 = v4;
  v15 = _s17ValueSubscriptionC9ObservingVMa();
  v60 = *(v15 - 8);
  v16 = *(v60 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v53 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v46 - v19;
  v21 = v3;
  v22 = v7;
  v23 = *(v21 + 104);
  swift_beginAccess();
  v24 = *(v7 + 16);
  v58 = a1;
  v59 = v23;
  v24(v14, a1 + v23, v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(v22 + 8))(v14, v6);
  }

  v49 = v22;
  v50 = v6;
  v25 = v60;
  v26 = v60 + 32;
  v27 = *(v60 + 32);
  v27(v20, v14, v15);
  v51 = v15;
  v28 = *&v20[*(v15 + 36)];
  v29 = sub_1B2252020();
  sub_1B2252030();
  if (sub_1B2252010())
  {
    sub_1B2252030();
    if (sub_1B2252010())
    {
      return (*(v25 + 8))(v20, v51);
    }
  }

  sub_1B2252030();
  if ((sub_1B2252010() & 1) == 0)
  {
    sub_1B2252030();
    if ((sub_1B2252010() & 1) != 0 || v29 >= v28)
    {
      return (*(v25 + 8))(v20, v51);
    }
  }

  v47 = v27;
  v48 = v26;
  v30 = v20;
  v31 = sub_1B2251FE0();
  v32 = v58;
  v33 = v57;
  v34 = v50;
  v24(v57, v58 + v59, v50);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v25 + 8))(v30, v51);
    return (*(v49 + 8))(v33, v34);
  }

  v56 = v30;
  v35 = v53;
  v36 = v51;
  v47(v53, v33, v51);
  v37 = *(v36 + 36);
  v38 = *&v35[v37];
  sub_1B2252030();
  if ((sub_1B2252010() & 1) == 0)
  {
    sub_1B2252030();
    v39 = sub_1B2252010();
    v40 = sub_1B2252030();
    if ((v39 & 1) == 0)
    {
      result = sub_1B2252010();
      if (result)
      {
        goto LABEL_14;
      }

      if ((v38 | v31) < 0)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v40 = v38 + v31;
      if (__OFADD__(v38, v31))
      {
LABEL_14:
        v40 = sub_1B2252030();
      }

      else if (v40 < 0)
      {
LABEL_33:
        __break(1u);
        return result;
      }
    }

    *&v35[v37] = v40;
    v38 = v40;
  }

  v42 = v49;
  sub_1B2252030();
  if ((sub_1B2252010() & 1) == 0)
  {
    sub_1B2252030();
    if (sub_1B2252010())
    {
      v43 = sub_1B2252030();
      (*(v60 + 8))(v56, v36);
LABEL_27:
      *&v35[v37] = v43;
      goto LABEL_28;
    }

    result = (*(v60 + 8))(v56, v36);
    if (v38 < 0)
    {
      __break(1u);
    }

    else if (v38)
    {
      v43 = v38 - 1;
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_32;
  }

  (*(v60 + 8))(v56, v36);
LABEL_28:
  v44 = v52;
  v47(v52, v35, v36);
  swift_storeEnumTagMultiPayload();
  v45 = v59;
  swift_beginAccess();
  (*(v42 + 40))(v32 + v45, v44, v34);
  return swift_endAccess();
}

void sub_1B21B0A80()
{
  v1 = *(v0 + *(*v0 + 112));
  sub_1B22189C4(sub_1B21B0B00, 0);
}

id sub_1B21B0B1C(uint64_t *a1, uint64_t *a2, void *a3)
{
  v37 = a1;
  v38 = a3;
  v4 = *a2;
  v5 = *(*a2 + 80);
  v6 = *(*a2 + 88);
  v7 = _s17ValueSubscriptionC5StateOMa();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v34 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v36 = v6;
  v14 = _s17ValueSubscriptionC9ObservingVMa();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v35 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v20 = *(v4 + 104);
  swift_beginAccess();
  (*(v8 + 16))(v13, a2 + v20, v7);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(v8 + 8))(v13, v7);
  }

  v33 = v5;
  v21 = v37;
  v22 = v37[1];
  sub_1B2112F4C(*v37);
  v32 = v14;
  v23 = *(v15 + 32);
  v23(v19, v13, v14);
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  swift_beginAccess();
  sub_1B21B2294(v39, (a2 + 2));
  swift_endAccess();
  v24 = v34;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  (*(v8 + 40))(a2 + v20, v24, v7);
  swift_endAccess();
  v25 = v35;
  v26 = v32;
  v23(v35, v19, v32);
  v27 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v28 = swift_allocObject();
  v29 = v36;
  *(v28 + 16) = v33;
  *(v28 + 24) = v29;
  v23((v28 + v27), v25, v26);
  v30 = v38;
  *(v28 + ((v16 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v38;
  *v21 = sub_1B21B2304;
  v21[1] = v28;
  return v30;
}

uint64_t *sub_1B21B0ED8()
{
  v1 = *v0;
  sub_1B21B2434((v0 + 2));
  v2 = *(*v0 + 104);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = _s17ValueSubscriptionC5StateOMa();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);

  return v0;
}

uint64_t sub_1B21B0F9C()
{
  v0 = sub_1B21B0ED8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t static ValueObservation<>.trackingConstantRegion<A>(_:)()
{
  sub_1B2111A0C();
  v4 = v3;
  sub_1B2117C44();
  v5 = swift_allocObject();
  v5[2] = v0;
  v5[3] = v2;
  v5[4] = v1;
  sub_1B211510C();
  type metadata accessor for ValueReducers.Fetch();
  sub_1B2117460();
  sub_1B21221E0();
  v4[11] = 0;
  v4[12] = sub_1B21B10C4;
  v4[13] = v5;
}

uint64_t static ValueObservation<>.tracking<A>(regions:fetch:)()
{
  sub_1B211437C();
  sub_1B2117C44();
  v5 = swift_allocObject();
  v5[2] = v0;
  v5[3] = v2;
  v5[4] = v1;
  sub_1B211510C();
  type metadata accessor for ValueReducers.Fetch();
  sub_1B2117460();
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0;
  *(v4 + 88) = v3;
  *(v4 + 96) = sub_1B21B275C;
  *(v4 + 104) = v5;
}

uint64_t static ValueObservation<>.tracking<A>(_:)()
{
  sub_1B2111A0C();
  v4 = v3;
  sub_1B2117C44();
  v5 = swift_allocObject();
  v5[2] = v0;
  v5[3] = v2;
  v5[4] = v1;
  sub_1B211510C();
  type metadata accessor for ValueReducers.Fetch();
  sub_1B2117460();
  sub_1B21221E0();
  v4[11] = 1;
  v4[12] = sub_1B21B275C;
  v4[13] = v5;
}

uint64_t sub_1B21B1224()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B21B1268(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 96);
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

uint64_t sub_1B21B12A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B21B139C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void), uint64_t (*a5)(uint64_t))
{
  v7 = *(a1 + 16);
  v8 = sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  result = a4(319, v7, v8, MEMORY[0x1E69E7288]);
  if (v10 <= 0x3F)
  {
    result = a5(319);
    if (v11 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B21B1474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, void))
{
  v8 = *(a3 + 16);
  v9 = sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v10 = a4(0, v8, v9, MEMORY[0x1E69E7288]);
  if (*(*(v10 - 8) + 84) == a2)
  {

    return sub_1B2122A98(a1, a2, v10);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1B21B1570(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, void))
{
  v10 = *(a4 + 16);
  v11 = sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  result = a5(0, v10, v11, MEMORY[0x1E69E7288]);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1B21117B4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B21B166C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B21B16C0(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = _s17ValueSubscriptionC5StateOMa();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B21B1784(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = _s17ValueSubscriptionC16WaitingForDemandVMa();
  if (v4 <= 0x3F)
  {
    result = _s17ValueSubscriptionC9ObservingVMa();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unsigned __int8 *sub_1B21B1814(unsigned __int8 *result, unsigned int a2, uint64_t a3)
{
  v3 = (*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 16;
  v5 = v3 + 8;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_25:
    v13 = result[v5];
    if (v13 >= 3)
    {
      return ((v13 ^ 0xFF) + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = v5 | 1;
    if ((v5 | 1) <= 3)
    {
      v7 = ((a2 + 2) >> 8) + 1;
    }

    else
    {
      v7 = 2;
    }

    if (v7 >= 0x10000)
    {
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    if (v7 < 0x100)
    {
      v8 = 1;
    }

    if (v7 >= 2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    switch(v9)
    {
      case 1:
        v10 = result[v6];
        if (!result[v6])
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 2:
        v10 = *&result[v6];
        if (!*&result[v6])
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 3:
        __break(1u);
        return result;
      case 4:
        v10 = *&result[v6];
        if (!v10)
        {
          goto LABEL_25;
        }

LABEL_21:
        v11 = (v10 - 1) << (8 * v6);
        if (v6 <= 3)
        {
          v12 = *result;
        }

        else
        {
          v11 = 0;
          v12 = *result;
        }

        result = ((v12 | v11) + 254);
        break;
      default:
        goto LABEL_25;
    }
  }

  return result;
}

void sub_1B21B1910(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = (*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 16;
  v7 = v5 + 8;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  v8 = v7 | 1;
  if (a3 < 0xFE)
  {
    v11 = 0;
  }

  else
  {
    if (v8 <= 3)
    {
      v9 = ((a3 + 2) >> 8) + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 > 0xFD)
  {
    v12 = a2 - 254;
    v13 = (a2 - 254) >> 8;
    bzero(a1, v7 | 1);
    if (v8 <= 3)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 1;
    }

    if (v8 > 3)
    {
      *a1 = v12;
    }

    else
    {
      *a1 = v12;
    }

    switch(v11)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
LABEL_36:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v11)
    {
      case 1:
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      case 2:
        *&a1[v8] = 0;
        goto LABEL_29;
      case 3:
        goto LABEL_36;
      case 4:
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          a1[v7] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1B21B1AA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *sub_1B21B1B20(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFF8;
    if ((v6 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(result + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *result;
        }

        return (v5 + (v8 | v13) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return sub_1B2122A98(result, v5, v4);
        }

        return 0;
    }
  }

  return sub_1B2122A98(result, v5, v4);
}

void sub_1B21B1C24(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 <= v7)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          sub_1B21117B4(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        break;
      case 2:
        *&a1[v8] = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1B21B1DBC(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1B2122A98(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1B21B1EF8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1B21117B4(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1B21B20C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B21B211C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B21B2188(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1B21B21DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B21B2294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(&qword_1EB7A2150, &unk_1B225AD60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B21B2304()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1B211510C();
  v3 = _s17ValueSubscriptionC9ObservingVMa();
  sub_1B211208C(v3);
  v6 = *(v0 + ((*(v5 + 64) + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B21B0E9C();
}

uint64_t sub_1B21B23CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1B21619D8(a3, a4);
  sub_1B21118A0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1B21B2434(uint64_t a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A2150, &unk_1B225AD60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B21B24B8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B21B00E4();
}

uint64_t sub_1B21B24C4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B21B0144();
}

uint64_t sub_1B21B24D0(void *a1)
{
  v3 = *(v1 + 16);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v4 = *(*(sub_1B2252760() - 8) + 80);

  return sub_1B21AE94C(a1);
}

uint64_t sub_1B21B2574(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v4 = sub_1B2252760();
  sub_1B211208C(v4);
  v6 = v5;
  v8 = v7;
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B21AE9B8(a1, v1 + v9, v10, v3);
}

uint64_t sub_1B21B263C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v6 = a1;
  a2(&v6);
  return a4(&v6);
}

uint64_t sub_1B21B2694()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return sub_1B21AEBF0();
}

uint64_t sub_1B21B26A8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1B21B26E0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1B21B2720(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1B220AA6C(a1, *(v1 + 32));
}

uint64_t sub_1B21B272C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1B220AA44(a1, *(v1 + 32));
}

uint64_t sub_1B21B2738()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return sub_1B21AC838(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 16));
}

uint64_t sub_1B21B2780(void *a1)
{
  v1 = a1[3];
  v2 = a1[4] >> 1;
  v3 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v31 = a1[4] >> 1;
  v32 = a1[3];
  v4 = *a1;
  v5 = a1[1];
  v29 = *(*a1 + 16);
  v30 = a1[2];
  if (v3 >= v29)
  {
    v6 = *(*a1 + 16);
  }

  else
  {
    v6 = v2 - v1;
  }

  v34 = MEMORY[0x1E69E7CC0];
  sub_1B216EF50(0, v6 & ~(v6 >> 63), 0);
  if (v3 < 0)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    result = sub_1B2252EC0();
    __break(1u);
    return result;
  }

  v7 = v6;
  v33 = v4;
  if (v6)
  {
    v8 = (v4 + 32);

    swift_unknownObjectRetain();
    v10 = v29;
    v9 = v30;
    v11 = v29;
    v12 = v6;
    v14 = v31;
    v13 = v32;
    v15 = v32;
    while (v11)
    {
      if (v14 == v15)
      {
        goto LABEL_35;
      }

      if (v15 >= v14)
      {
        goto LABEL_36;
      }

      v16 = *v8;
      v17 = *(v9 + 8 * v15);
      if (v17 < *v8)
      {
        goto LABEL_37;
      }

      if (v16 < 0)
      {
        goto LABEL_44;
      }

      v19 = *(v34 + 16);
      v18 = *(v34 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1B216EF50(v18 > 1, v19 + 1, 1);
        v10 = v29;
        v9 = v30;
        v14 = v31;
        v13 = v32;
      }

      *(v34 + 16) = v19 + 1;
      v20 = v34 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      ++v8;
      --v11;
      ++v15;
      if (!--v12)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  swift_unknownObjectRetain();
  v14 = v31;
  v13 = v32;
  v15 = v32;
  v10 = v29;
  v9 = v30;
LABEL_18:
  for (i = v15; v10 != v7; ++i)
  {
    if (v7 >= v10)
    {
      goto LABEL_38;
    }

    if (__OFADD__(v7, 1))
    {
      goto LABEL_39;
    }

    if (v14 == i)
    {
      break;
    }

    if (v15 < v13 || i >= v14)
    {
      goto LABEL_40;
    }

    v23 = *(v33 + 32 + 8 * v7);
    v24 = *(v9 + 8 * i);
    if (v24 < v23)
    {
      goto LABEL_41;
    }

    if (v23 < 0)
    {
      goto LABEL_44;
    }

    v26 = *(v34 + 16);
    v25 = *(v34 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1B216EF50(v25 > 1, v26 + 1, 1);
      v10 = v29;
      v9 = v30;
      v14 = v31;
      v13 = v32;
    }

    *(v34 + 16) = v26 + 1;
    v27 = v34 + 16 * v26;
    *(v27 + 32) = v23;
    *(v27 + 40) = v24;
    ++v7;
  }

  swift_unknownObjectRelease();

  return v34;
}

uint64_t sub_1B21B2A34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 24 * v1);
    v3 = v2[1];
    v4 = v2[2];
    v5 = v2[3];
  }

  return sub_1B2112FD0();
}

double sub_1B21B2A90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1B214D38C(a1 + 40 * v2 - 8, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

unint64_t sub_1B21B2AD0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1B21B2B3C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a4 + 8) + 8))(v13, a2, a3);
  if (v5)
  {
    return v4;
  }

  v7 = v13[4];
  sub_1B21139A0(v13, v13[3]);
  v8 = *(v7 + 8);
  v9 = sub_1B211209C();
  result = v10(v9);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v12 + 16) > a1)
  {
    v4 = *(v12 + 24 * a1 + 32);

    sub_1B2113208(v13);
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t splittingRowAdapters(columnCounts:)(uint64_t a1)
{
  v21[19] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  if (!v1)
  {
    sub_1B21619D8(&qword_1EB7A0F38, &unk_1B2254650);
    result = swift_allocObject();
    *(result + 16) = xmmword_1B22546B0;
    *(result + 56) = &type metadata for SuffixRowAdapter;
    *(result + 64) = &protocol witness table for SuffixRowAdapter;
    *(result + 32) = 0;
    goto LABEL_12;
  }

  sub_1B21619D8(&qword_1EB7A0F48, &unk_1B2254660);
  inited = swift_initStackObject();
  v4 = 0;
  *(inited + 16) = xmmword_1B22546B0;
  *(inited + 32) = 0;
  while (1)
  {
    v5 = v4 + 1;
    if (v1 == v4)
    {
      break;
    }

    v6 = *(a1 + 32 + 8 * v4);
    v7 = *(inited + 8 * v4 + 32);
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      __break(1u);
    }

    v9 = *(inited + 24);
    if (v5 >= v9 >> 1)
    {
      sub_1B21628F8(v9 > 1, v4 + 2, 1, inited);
      inited = v10;
    }

    *(inited + 16) = v4 + 2;
    *(inited + 8 * v4++ + 40) = v8;
  }

  v21[0] = inited;
  v21[1] = sub_1B21B2AD0(1uLL, v5, inited);
  v21[2] = v11;
  v21[3] = v12;
  v21[4] = v13;

  v14 = sub_1B21B2780(v21);
  swift_unknownObjectRelease();

  v15 = *(inited + 16);
  if (v15)
  {
    v16 = *(inited + 8 * v15 + 24);

    if ((v16 & 0x8000000000000000) == 0)
    {
      v17 = sub_1B21B317C(v14);

      sub_1B21619D8(&qword_1EB7A0F38, &unk_1B2254650);
      v18 = swift_initStackObject();
      *(v18 + 16) = xmmword_1B22546B0;
      *(v18 + 56) = &type metadata for SuffixRowAdapter;
      *(v18 + 64) = &protocol witness table for SuffixRowAdapter;
      *(v18 + 32) = v16;
      sub_1B216CF8C(v18);
      result = v17;
LABEL_12:
      v20 = *MEMORY[0x1E69E9840];
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1B2111608();
  result = sub_1B2117488();
  __break(1u);
  return result;
}

GRDBInternal::SuffixRowAdapter __swiftcall SuffixRowAdapter.init(fromIndex:)(GRDBInternal::SuffixRowAdapter fromIndex)
{
  if (fromIndex.index < 0)
  {
    sub_1B2111608();
    fromIndex.index = sub_1B2117488();
    __break(1u);
  }

  else
  {
    v1->index = fromIndex.index;
  }

  return fromIndex;
}

uint64_t RangeRowAdapter.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (result < 0)
  {
    sub_1B2111608();
    result = sub_1B2117488();
    __break(1u);
  }

  else
  {
    *a3 = result;
    a3[1] = a2;
  }

  return result;
}

{
  if ((result & 0x8000000000000000) == 0)
  {
    v3 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (v3 >= result)
    {
      *a3 = result;
      a3[1] = v3;
      return result;
    }

    __break(1u);
  }

  sub_1B2111608();
  result = sub_1B2117488();
  __break(1u);
  return result;
}

uint64_t sub_1B21B2EFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1B216EC58();
    v2 = v13;
    v4 = (a1 + 48);
    do
    {
      v9 = *(v4 - 1);
      v10 = *v4;

      sub_1B21619D8(&qword_1EB7A2178, &qword_1B225B0C8);
      sub_1B21619D8(&qword_1EB7A11B0, &qword_1B22549C0);
      swift_dynamicCast();
      v5 = v11;
      v6 = *(v13 + 16);
      if (v6 >= *(v13 + 24) >> 1)
      {
        sub_1B216EC58();
        v5 = v11;
      }

      *(v13 + 16) = v6 + 1;
      v7 = v13 + 24 * v6;
      *(v7 + 32) = v5;
      *(v7 + 48) = v12;
      v4 += 3;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B21B3044(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1B216EEF0(0, v1, 0);
    v2 = v15;
    v4 = (a1 + 48);
    do
    {
      v9 = *(v4 - 2);
      v10 = *(v4 - 1);
      v11 = *v4;

      sub_1B21619D8(&qword_1EB7A0F60, &qword_1B2254678);
      sub_1B21619D8(&qword_1EB7A11E0, qword_1B225B0E0);
      swift_dynamicCast();
      v6 = *(v15 + 16);
      v5 = *(v15 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B216EEF0((v5 > 1), v6 + 1, 1);
      }

      v4 += 6;
      *(v15 + 16) = v6 + 1;
      v7 = v15 + 24 * v6;
      *(v7 + 32) = v12;
      *(v7 + 40) = v13;
      *(v7 + 48) = v14;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B21B317C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1B216EF30(0, v1, 0);
    v2 = v13;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v13 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        v9 = v5;
        sub_1B216EF30(v6 > 1, v7 + 1, 1);
        v5 = v9;
        v2 = v13;
      }

      v11 = &type metadata for RangeRowAdapter;
      v12 = &protocol witness table for RangeRowAdapter;
      v10 = v5;
      *(v2 + 16) = v7 + 1;
      sub_1B21217FC(&v10, v2 + 40 * v7 + 32);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B21B3278@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v16 = MEMORY[0x1E69E7CC0];

  result = sub_1B211E89C(0, 0, 0);
  v4 = 0;
  v5 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v5 == v4)
    {

      result = sub_1B211E40C(v16);
      *a2 = a1;
      a2[1] = result;
      return result;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 1);
    v8 = *i;
    result = sub_1B2252220();
    v9 = result;
    v11 = v10;
    v13 = *(v16 + 16);
    v12 = *(v16 + 24);
    if (v13 >= v12 >> 1)
    {
      result = sub_1B211E89C(v12 > 1, v13 + 1, 1);
    }

    *(v16 + 16) = v13 + 1;
    v14 = (v16 + 24 * v13);
    v14[4] = v9;
    v14[5] = v11;
    v14[6] = v4++;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21B3390@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  if ((a3 & 1) == 0)
  {
    v7 = a3 >> 1;
LABEL_3:
    sub_1B216E5EC();
    goto LABEL_9;
  }

  sub_1B2253280();
  swift_unknownObjectRetain_n();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);

  v7 = a3 >> 1;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v10 != (a3 >> 1) - a2)
  {
LABEL_22:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

LABEL_9:
  v23 = v8;
LABEL_10:
  v25 = MEMORY[0x1E69E7CC0];
  sub_1B211E89C(0, 0, 0);
  v11 = 0;
  v12 = (a1 + 24 * a2 + 16);
  v13 = a2 - v7;
  while (v13 + v11)
  {
    if (a2 + v11 >= v7)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (__OFADD__(v11, 1))
    {
      goto LABEL_20;
    }

    v14 = a2;
    v15 = *(v12 - 1);
    v16 = *v12;
    a1 = sub_1B2252220();
    v18 = v17;
    v20 = *(v25 + 16);
    v19 = *(v25 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1B211E89C(v19 > 1, v20 + 1, 1);
    }

    *(v25 + 16) = v20 + 1;
    v21 = (v25 + 24 * v20);
    v21[4] = a1;
    v21[5] = v18;
    v21[6] = v11++;
    v12 += 3;
    a2 = v14;
  }

  swift_unknownObjectRelease();
  result = sub_1B211E40C(v25);
  *a4 = v23;
  a4[1] = result;
  return result;
}

uint64_t _LayoutedColumnMapping._mapping.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t _LayoutedColumnMapping._scopes.getter()
{
  sub_1B21619D8(&qword_1EB7A2158, &qword_1B225AD70);

  return sub_1B2252190();
}

Swift::Int_optional __swiftcall _LayoutedColumnMapping._layoutIndex(ofColumn:)(Swift::String ofColumn)
{
  v2 = *(v1 + 8);
  if (*(v2 + 16) && (sub_1B2115C78(), v3 = sub_1B211E590(), (v4 & 1) != 0))
  {
    v5 = 0;
    v6 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    sub_1B2115C78();
    v7 = sub_1B2252220();
    v6 = sub_1B212F2CC(v7, v8, v2);
    v5 = v9;
  }

  v10 = v5 & 1;
  v11 = v6;
  result.value = v11;
  result.is_nil = v10;
  return result;
}

uint64_t Statement._layoutColumns.getter()
{
  v0 = Statement.columnNames.getter();
  v1 = sub_1B21B5F04(v0);

  v2 = sub_1B21B2EFC(v1);

  return v2;
}

Swift::Int_optional __swiftcall Statement._layoutIndex(ofColumn:)(Swift::String ofColumn)
{
  sub_1B2252220();
  v1 = sub_1B222F74C();
  v2 = sub_1B211187C();
  v4 = sub_1B212F2CC(v2, v3, v1);
  v6 = v5;

  v7 = v6 & 1;
  v8 = v4;
  result.value = v8;
  result.is_nil = v7;
  return result;
}

uint64_t RowAdapter.addingScopes(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a1 + 16))
  {
    a4[3] = &type metadata for ScopeAdapter;
    a4[4] = &protocol witness table for ScopeAdapter;
    v8 = swift_allocObject();
    *a4 = v8;
    v8[5] = a2;
    v8[6] = a3;
    sub_1B212FF14(v8 + 2);
    sub_1B2111808(a2);
    (*(v9 + 16))();
    v8[7] = a1;
  }

  else
  {
    a4[3] = a2;
    a4[4] = a3;
    sub_1B212FF14(a4);
    sub_1B2111808(a2);
    v12 = *(v11 + 16);

    return v12();
  }
}

uint64_t ScopeAdapter.init(base:scopes:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1B21217FC(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t EmptyRowAdapter._layoutedAdapter(from:)@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for _LayoutedColumnMapping;
  a1[4] = &protocol witness table for _LayoutedColumnMapping;
  return sub_1B21B3278(MEMORY[0x1E69E7CC0], a1);
}

uint64_t ColumnMapping._layoutedAdapter(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = v3;
  v5 = a2;
  v6 = *v2;
  v7 = *(*v2 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v47 = MEMORY[0x1E69E7CC0];
    sub_1B216EC58();
    v8 = v47;
    v10 = sub_1B2131DCC(v6);
    v11 = 0;
    v12 = v6 + 64;
    v40 = v6 + 72;
    v41 = v7;
    v43 = v6 + 64;
    v44 = v6;
    v42 = v9;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v6 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v12 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v6 + 36) != v9)
      {
        goto LABEL_26;
      }

      v46 = v11;
      v14 = (*(v6 + 48) + 16 * v10);
      v15 = *v14;
      v16 = v14[1];
      v17 = (*(v6 + 56) + 16 * v10);
      v18 = *v17;
      v19 = v17[1];

      v20 = sub_1B21B3C60(v15, v16, v18, v19, a1);
      if (v4)
      {
      }

      v23 = v20;
      v24 = v21;
      v25 = v22;

      v47 = v8;
      v26 = *(v8 + 16);
      if (v26 >= *(v8 + 24) >> 1)
      {
        sub_1B216EC58();
        v8 = v47;
      }

      *(v8 + 16) = v26 + 1;
      v27 = (v8 + 24 * v26);
      v27[4] = v23;
      v27[5] = v24;
      v27[6] = v25;
      v6 = v44;
      v28 = 1 << *(v44 + 32);
      if (v10 >= v28)
      {
        goto LABEL_27;
      }

      v12 = v43;
      v29 = *(v43 + 8 * v13);
      if ((v29 & (1 << v10)) == 0)
      {
        goto LABEL_28;
      }

      v9 = v42;
      if (*(v44 + 36) != v42)
      {
        goto LABEL_29;
      }

      v30 = v29 & (-2 << (v10 & 0x3F));
      if (v30)
      {
        v28 = __clz(__rbit64(v30)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v4 = 0;
        v31 = v41;
      }

      else
      {
        v32 = v13 << 6;
        v33 = v13 + 1;
        v31 = v41;
        v34 = (v40 + 8 * v13);
        v4 = 0;
        while (v33 < (v28 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            v28 = __clz(__rbit64(v35)) + v32;
            break;
          }
        }
      }

      v11 = v46 + 1;
      v10 = v28;
      if (v46 + 1 == v31)
      {
        v5 = a2;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_22:
    v47 = v8;

    sub_1B21B5520(&v47);
    v6 = v4;
    if (!v4)
    {

      v38 = v47;
      v5[3] = &type metadata for _LayoutedColumnMapping;
      v5[4] = &protocol witness table for _LayoutedColumnMapping;
      return sub_1B21B3278(v38, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21B3C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5[3];
  v9 = a5[4];
  sub_1B21139A0(a5, v8);
  v28 = a3;
  v29 = a4;
  v10 = (*(v9 + 16))(a3, a4, v8, v9);
  LOBYTE(v9) = v11;
  v12 = a5[3];
  v13 = a5[4];
  sub_1B21139A0(a5, v12);
  result = (*(v13 + 8))(v12, v13);
  v15 = result;
  if (v9)
  {
    v16 = *(result + 16);
    if (v16)
    {
      v30 = MEMORY[0x1E69E7CC0];
      sub_1B2116B10();
      v17 = (v15 + 48);
      do
      {
        v18 = *(v17 - 1);
        v19 = *v17;
        v21 = *(v30 + 16);
        v20 = *(v30 + 24);

        if (v21 >= v20 >> 1)
        {
          sub_1B2116B10();
        }

        *(v30 + 16) = v21 + 1;
        v22 = v30 + 16 * v21;
        *(v22 + 32) = v18;
        *(v22 + 40) = v19;
        v17 += 3;
        --v16;
      }

      while (v16);
    }

    sub_1B2252CD0();
    MEMORY[0x1B2741EB0](0xD000000000000022, 0x80000001B226E070);
    MEMORY[0x1B2741EB0](v28, v29);
    MEMORY[0x1B2741EB0](0xD00000000000001ALL, 0x80000001B226E0A0);
    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    v24 = sub_1B2252250();
    v26 = v25;

    MEMORY[0x1B2741EB0](v24, v26);

    MEMORY[0x1B2741EB0](46, 0xE100000000000000);
    v23 = 0;
    sub_1B21AC298();
    swift_allocError();
    *v27 = 21;
    *(v27 + 8) = 0;
    *(v27 + 16) = 0xE000000000000000;
    *(v27 + 24) = 0u;
    *(v27 + 40) = 0u;
    *(v27 + 56) = 0;
    swift_willThrow();
    return v23;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v10 < *(result + 16))
  {
    v23 = *(result + 24 * v10 + 32);

    return v23;
  }

  __break(1u);
  return result;
}

uint64_t SuffixRowAdapter._layoutedAdapter(from:)(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  sub_1B21139A0(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  v6 = *(result + 16);
  if (v6 < v2)
  {
    __break(1u);
  }

  else
  {
    sub_1B21B2AD0(v2, v6, result);
    sub_1B211803C();
    return sub_1B21221F8(&type metadata for _LayoutedColumnMapping);
  }

  return result;
}

uint64_t RangeRowAdapter._layoutedAdapter(from:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[3];
  v5 = a1[4];
  v6 = sub_1B21139A0(a1, v4);
  (*(v5 + 8))(v4, v5);
  v7 = sub_1B211209C();
  sub_1B21B2AD0(v7, v8, v6);
  sub_1B211803C();
  return sub_1B21221F8(&type metadata for _LayoutedColumnMapping);
}

uint64_t ScopeAdapter.init(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[3] = &type metadata for SuffixRowAdapter;
  a2[4] = &protocol witness table for SuffixRowAdapter;
  *a2 = 0;
  a2[5] = result;
  return result;
}

uint64_t ScopeAdapter._layoutedAdapter(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = sub_1B212CE0C(v2);
  sub_1B2111A1C(v8, v9, *(v7 + 8));
  sub_1B2117CC0();
  result = v10();
  v12 = v3;
  if (v3)
  {
    return result;
  }

  v57 = a1;
  v53 = a2;
  v13 = v69;
  sub_1B21139A0(v67, v68);
  v14 = *(v13 + 16);
  v15 = sub_1B211209C();
  v17 = v16(v15);
  v18 = v2[5];
  v21 = *(v18 + 64);
  v20 = v18 + 64;
  v19 = v21;
  v22 = 1 << *(v2[5] + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v54 = v2[5];

  v26 = 0;
  v55 = v25;
  v56 = v20;
  if (!v24)
  {
LABEL_6:
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v25)
      {
        v24 = 0;
        v63 = 0;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        goto LABEL_11;
      }

      v24 = *(v20 + 8 * v27);
      ++v26;
      if (v24)
      {
        v26 = v27;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_1B2253390();
    __break(1u);
    return result;
  }

  while (1)
  {
    v27 = v26;
LABEL_10:
    v28 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v29 = v28 | (v27 << 6);
    v30 = (*(v54 + 48) + 16 * v29);
    v32 = *v30;
    v31 = v30[1];
    sub_1B214D38C(*(v54 + 56) + 40 * v29, v59);
    *&v60 = v32;
    *(&v60 + 1) = v31;
    sub_1B21217FC(v59, &v61);

LABEL_11:
    v64 = v60;
    v65[0] = v61;
    v65[1] = v62;
    v66 = v63;
    v33 = *(&v60 + 1);
    if (!*(&v60 + 1))
    {

      v51 = v68;
      v52 = v69;
      sub_1B21139A0(v67, v68);
      (*(v52 + 8))(&v64, v51, v52);
      *v53 = v64;
      *(v53 + 24) = &unk_1F296EDA0;
      *(v53 + 32) = &off_1F296EE48;
      *(v53 + 16) = v17;
      return sub_1B2113208(v67);
    }

    v34 = v64;
    sub_1B21217FC(v65, &v60);
    v35 = *(&v61 + 1);
    v36 = v62;
    v37 = sub_1B212CE0C(&v60);
    sub_1B2111A1C(v37, v38, *(v36 + 8));
    v39(v59, v57, v35);
    if (v12)
    {
      break;
    }

    v70 = 0;
    sub_1B21217FC(v59, v58);
    swift_isUniquelyReferenced_nonNull_native();
    v40 = sub_1B211E590();
    if (__OFADD__(v17[2], (v41 & 1) == 0))
    {
      goto LABEL_29;
    }

    v42 = v40;
    v43 = v41;
    sub_1B21619D8(&qword_1EB7A2160, &qword_1B225AD78);
    if (sub_1B2252E70())
    {
      v44 = sub_1B211E590();
      v20 = v56;
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_31;
      }

      v42 = v44;
      if (v43)
      {
LABEL_20:

        v50 = (v17[7] + 40 * v42);
        sub_1B2113208(v50);
        sub_1B21217FC(v58, v50);
        goto LABEL_21;
      }
    }

    else
    {
      v20 = v56;
      if (v43)
      {
        goto LABEL_20;
      }
    }

    v17[(v42 >> 6) + 8] |= 1 << v42;
    v46 = (v17[6] + 16 * v42);
    *v46 = v34;
    v46[1] = v33;
    sub_1B21217FC(v58, v17[7] + 40 * v42);
    v47 = v17[2];
    v48 = __OFADD__(v47, 1);
    v49 = v47 + 1;
    if (v48)
    {
      goto LABEL_30;
    }

    v17[2] = v49;
LABEL_21:
    sub_1B2113208(&v60);
    v12 = v70;
    v25 = v55;
    if (!v24)
    {
      goto LABEL_6;
    }
  }

  sub_1B2113208(&v60);
  return sub_1B2113208(v67);
}

uint64_t sub_1B21B455C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1B21B4598(uint64_t a1)
{
  sub_1B214D38C((v1 + 5), v21);
  v4 = v21[4];
  sub_1B21139A0(v21, v21[3]);
  v5 = v1[3];
  v6 = v1[4];
  v7 = sub_1B21139A0(v1, v5);
  sub_1B2111A1C(v7, v8, *(v6 + 8));
  v9(v17, a1, v5);
  if (!v2)
  {
    v10 = v18;
    v11 = v19;
    sub_1B21139A0(v17, v18);
    v12 = *(v11 + 8);
    v20[3] = &type metadata for _LayoutedColumnMapping;
    v20[4] = &protocol witness table for _LayoutedColumnMapping;
    v13 = v12(v20, v10, v11);
    sub_1B2111A1C(v13, v14, *(v4 + 8));
    sub_1B2117CC0();
    v15();
    sub_1B2113208(v20);
    sub_1B2113208(v17);
  }

  return sub_1B2113208(v21);
}

uint64_t RenameColumnAdapter.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void RenameColumnAdapter._layoutedAdapter(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v24 = *v2;
  v23 = *(v2 + 8);
  v4 = a1[3];
  v5 = a1[4];
  sub_1B21139A0(a1, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v20 = a2;
    v25 = MEMORY[0x1E69E7CC0];
    sub_1B216EC58();
    v8 = 0;
    v9 = v25;
    v10 = (v6 + 48);
    v21 = v7;
    v22 = v6;
    while (v8 < *(v6 + 16))
    {
      v12 = *(v10 - 2);
      v11 = *(v10 - 1);
      v13 = *v10;

      v14 = sub_1B2115C78();
      v15 = v24(v14);
      v17 = v16;

      v18 = *(v25 + 16);
      if (v18 >= *(v25 + 24) >> 1)
      {
        sub_1B216EC58();
      }

      ++v8;
      *(v25 + 16) = v18 + 1;
      v19 = (v25 + 24 * v18);
      v19[4] = v12;
      v19[5] = v15;
      v19[6] = v17;
      v10 += 3;
      v6 = v22;
      if (v21 == v8)
      {

        a2 = v20;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
LABEL_9:
    a2[3] = &type metadata for _LayoutedColumnMapping;
    a2[4] = &protocol witness table for _LayoutedColumnMapping;
    sub_1B21B3278(v9, a2);
  }
}

uint64_t sub_1B21B48C0()
{
  v1 = *(*v0 + 48);
  sub_1B21139A0((*v0 + 16), *(*v0 + 40));
  v2 = *(v1 + 16);
  v3 = sub_1B211187C();
  return v4(v3) & 1;
}

uint64_t sub_1B21B4918@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  v7 = v2[4];
  v8 = v2[5];
  sub_1B21139A0(v2 + 1, v7);
  v9 = *(v8 + 16);

  v10 = v9(v7, v8);
  *a2 = v6;
  a2[1] = v10;
  a2[2] = v4;
  a2[3] = v5;
}

void sub_1B21B49BC(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B21129F8();
    if (!v2 & v1)
    {
      sub_1B211D640();
      v4 = *(v3 + 32);
      v5 = sub_1B2115740();
      sub_1B214D38C(v5, v6);
      v7 = v11[4];
      sub_1B21139A0(v11, v11[3]);
      v8 = *(v7 + 40);
      v9 = sub_1B211187C();
      v10(v9);
      sub_1B2113208(v11);
      return;
    }
  }

  __break(1u);
}

void sub_1B21B4A4C(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B21129F8();
    if (!v2 & v1)
    {
      sub_1B211D640();
      v4 = *(v3 + 32);
      v5 = sub_1B2115740();
      sub_1B214D38C(v5, v6);
      v7 = v10;
      v8 = v11;
      sub_1B21139A0(v9, v10);
      (*(v8 + 48))(v4, v7, v8);
      sub_1B2113208(v9);
      return;
    }
  }

  __break(1u);
}

void sub_1B21B4AE8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v28 = a4;
  v11 = sub_1B2252B00();
  sub_1B21115E0();
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = *(v5 + 48);
  if (*(v17 + 16) <= a1)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v27 = a5;
  sub_1B2114394(v17);
  if (!v6)
  {
    sub_1B2122554();
    Row.fastDecode<A>(_:atUncheckedIndex:)();
    return;
  }

  if (a1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_14;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v25 = v19;
  v26 = a3;
  MEMORY[0x1EEE9AC00](v18);
  *(&v24 - 2) = v5;
  *(&v24 - 1) = a1;
  v20 = sqlite3_column_type(v6, a1);
  if (v20 == 5)
  {
LABEL_9:
    MEMORY[0x1EEE9AC00](v20);
    *(&v24 - 2) = sub_1B21B6634;
    *(&v24 - 1) = (&v24 - 4);
    static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v6, a1, sub_1B21B663C, (&v24 - 4), a2);
    return;
  }

  v21 = sub_1B2116148();
  v22(v21);
  if (sub_1B2122A98(v16, 1, a2) == 1)
  {
    v20 = (*(v25 + 8))(v16, v11);
    goto LABEL_9;
  }

  sub_1B2111808(a2);
  (*(v23 + 32))(v27, v16, a2);
}

void sub_1B21B4D4C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v10 = sub_1B2252B00();
  sub_1B21115E0();
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = *(v4 + 48);
  if (*(v16 + 16) <= a1)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v30 = v5;
  sub_1B2114394(v16);
  if (!v5)
  {
    sub_1B2122554();
    Row.fastDecodeIfPresent<A>(_:atUncheckedIndex:)();
    return;
  }

  if (a1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_16;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v28 = v18;
  v29 = a3;
  MEMORY[0x1EEE9AC00](v17);
  v27 = &v26 - 4;
  *(&v26 - 2) = v4;
  *(&v26 - 1) = a1;
  if (sqlite3_column_type(v5, a1) == 5)
  {
    v19 = a4;
    v20 = 1;
  }

  else
  {
    v26 = &v26;
    v21 = sub_1B2116148();
    v22(v21);
    if (sub_1B2122A98(v15, 1, a2) == 1)
    {
      v23 = (*(v28 + 8))(v15, v10);
      MEMORY[0x1EEE9AC00](v23);
      v24 = v27;
      *(&v26 - 2) = sub_1B21B6634;
      *(&v26 - 1) = v24;
      static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v5, a1, sub_1B21B663C, (&v26 - 4), a2);
      return;
    }

    sub_1B2111808(a2);
    (*(v25 + 32))(a4, v15, a2);
    v19 = a4;
    v20 = 0;
  }

  sub_1B21117B4(v19, v20, 1, a2);
}

void sub_1B21B4FE8(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B21129F8();
    if (!v2 & v1)
    {
      sub_1B211D640();
      v4 = *(v3 + 32);
      v5 = sub_1B2115740();
      sub_1B214D38C(v5, v6);
      v7 = v10[4];
      sub_1B212CE0C(v10);
      v8 = *(v7 + 72);
      sub_1B2117CC0();
      v9();
      sub_1B2113208(v10);
      sub_1B2112FD0();
      return;
    }
  }

  __break(1u);
}

void sub_1B21B508C(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B21129F8();
    if (!v2 & v1)
    {
      sub_1B211D640();
      v4 = *(v3 + 32);
      v5 = sub_1B2115740();
      sub_1B214D38C(v5, v6);
      v7 = v10[4];
      sub_1B212CE0C(v10);
      v8 = *(v7 + 80);
      sub_1B2117CC0();
      v9();
      sub_1B2113208(v10);
      sub_1B2112FD0();
      return;
    }
  }

  __break(1u);
}

void sub_1B21B5130(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B21129F8();
    if (!v2 & v1)
    {
      sub_1B211D640();
      v4 = *(v3 + 40);
      v5 = *(v3 + 48);

      sub_1B2112FD0();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1B21B5174()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v2 + 16);

  if (v3 && (v4 = sub_1B211E590(), (v5 & 1) != 0))
  {
    v6 = *(*(v2 + 56) + 8 * v4);
  }

  else
  {
    v7 = sub_1B2252220();
    v6 = sub_1B212F2CC(v7, v8, v2);
  }

  return v6;
}

uint64_t sub_1B21B5234()
{
  v1 = v0;
  v2 = type metadata accessor for Row();
  v3 = *v0;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 48);
  sub_1B21139A0((*v1 + 16), v4);
  v6 = (*(v5 + 112))(v3, v4, v5);
  sub_1B214D38C((v1 + 1), v18);
  v7 = v19;
  v8 = v20;
  sub_1B21A1628(v18, v19);
  sub_1B21115E0();
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = sub_1B21B64A0(v6, v13, v2, v7, v8);
  sub_1B2113208(v18);
  return v15;
}

uint64_t sub_1B21B537C()
{
  v1 = *v0;
  v2 = v0[4];
  v3 = v0[5];
  sub_1B21139A0(v0 + 1, v2);
  v4 = *(v3 + 8);

  v4(v10, v2, v3);
  v5 = v10[1];

  v6 = sub_1B2112FD0();
  v8 = sub_1B21B63E4(v6, v7, v5);

  return v8;
}

uint64_t sub_1B21B5428()
{
  v1 = *(*v0 + 48);
  sub_1B21139A0((*v0 + 16), *(*v0 + 40));
  v2 = *(v1 + 104);
  v3 = sub_1B211187C();
  return v4(v3);
}

uint64_t sub_1B21B5520(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B21A1544(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1B21B558C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1B21B558C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B2252FC0();
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
        sub_1B21619D8(&qword_1EB7A11B0, &qword_1B22549C0);
        v6 = sub_1B2252610();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1B21B5714(v7, v8, a1, v4);
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
    return sub_1B21B5690(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B21B5690(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 32);
        v11 = *(v9 + 40);
        *(v9 + 24) = *v9;
        result = *(v9 + 16);
        *(v9 + 40) = result;
        *v9 = v7;
        *(v9 + 8) = v10;
        *(v9 + 16) = v11;
        v9 -= 24;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1B21B5714(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v90 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v85 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9);
        v11 = (*a3 + 24 * v7);
        v12 = 24 * v7;
        v15 = *v11;
        v14 = v11 + 6;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 3;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 24 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *(v25 + 2);
                v28 = *v25;
                v29 = *(v26 - 8);
                *v25 = *(v26 - 24);
                *(v25 + 2) = v29;
                *(v26 - 24) = v28;
                *(v26 - 8) = v27;
              }

              ++v23;
              v21 -= 24;
              v12 += 24;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9 - 24;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9);
              v34 = v32;
              v35 = v31;
              do
              {
                if (v33 >= *v35)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *(v35 + 32);
                v37 = *(v35 + 40);
                *(v35 + 24) = *v35;
                *(v35 + 40) = *(v35 + 16);
                *v35 = v33;
                *(v35 + 8) = v36;
                *(v35 + 16) = v37;
                v35 -= 24;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v87 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B2161EC4(0, v8[2] + 1, 1, v8);
        v8 = v83;
      }

      v40 = v8[2];
      v39 = v8[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_1B2161EC4(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v7;
      v43[1] = v87;
      v88 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_56:
            if (v50)
            {
              goto LABEL_96;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_99;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_104;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v41 < 2)
          {
            goto LABEL_98;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_71:
          if (v65)
          {
            goto LABEL_101;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_103;
          }

          if (v72 < v64)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v44 - 1 >= v41)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          sub_1B21B5D5C((*a3 + 24 * *v76), (*a3 + 24 * *v78), *a3 + 24 * v79, v88);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v79 < v77)
          {
            goto LABEL_91;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_92;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_93;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          v5 = 0;
          if (!v82)
          {
            goto LABEL_85;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_94;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_95;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_97;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_100;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_105;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v87;
      a4 = v85;
      if (v87 >= v6)
      {
        v90 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1B21B5C24(&v90, *a1, a3);
LABEL_89:
}

uint64_t sub_1B21B5C24(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1B21A00CC(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1B21B5D5C((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1B21B5D5C(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1B2160924(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_13;
  }

  sub_1B2160924(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_15:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v10 - 3) < *v15)
    {
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v18 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v18;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v17 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v17;
    }

    v10 -= 24;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}