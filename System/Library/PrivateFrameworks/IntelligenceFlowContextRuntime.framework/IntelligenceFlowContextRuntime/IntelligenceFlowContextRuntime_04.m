unint64_t sub_254F05780()
{
  result = qword_281426148;
  if (!qword_281426148)
  {
    sub_254EDEFE4(&qword_27F75F2F0, &qword_254F2C498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281426148);
  }

  return result;
}

unint64_t sub_254F057E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_254F29BC0();
  sub_254F294C0();
  v6 = sub_254F29C00();

  return sub_254F05D10(a1, a2, v6);
}

void sub_254F0585C()
{
  sub_254EB68B4();
  sub_254F29290();
  sub_254EC1B80(&qword_281426180, MEMORY[0x277D728B0]);
  sub_254EB99E8();
  sub_254EC1C10();
}

void sub_254F0590C()
{
  v1 = *(v0 + 40);
  sub_254F288E0();
  sub_254EC1B80(&unk_2814274E0, MEMORY[0x277D1D370]);
  sub_254F293F0();
  sub_254EB4524();
}

void sub_254F059E0()
{
  sub_254EB68B4();
  sub_254F28080();
  sub_254EC1B80(&qword_281427538, MEMORY[0x277D1EB58]);
  sub_254EB99E8();
  sub_254EC1C10();
}

unint64_t sub_254F05A90(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_254F298C0();

  return sub_254F05DC4(a1, v5);
}

void sub_254F05AD4()
{
  v1 = *(v0 + 40);
  sub_254F27980();
  sub_254EC1B80(&qword_27F75F448, MEMORY[0x277CC95F0]);
  sub_254F293F0();
  sub_254EB4524();
}

void sub_254F05BA8()
{
  v1 = *(v0 + 40);
  sub_254F27F50();
  sub_254EC1B80(&qword_281427558, MEMORY[0x277D74700]);
  sub_254F293F0();
  sub_254EB4524();
}

unint64_t sub_254F05C7C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_254F29450();
  sub_254F29BC0();
  sub_254F294C0();
  v4 = sub_254F29C00();

  return sub_254F05E88(a1, v4);
}

unint64_t sub_254F05D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_254F29B10() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_254F05DC4(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_254F07F40(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x259C2E040](v8, a1);
    sub_254EF79E0(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_254F05E88(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_254F29450();
    v8 = v7;
    if (v6 == sub_254F29450() && v8 == v9)
    {

      return i;
    }

    v11 = sub_254F29B10();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_254F05F80(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_254F28910();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_254F29290();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_254EC8BC0(&qword_27F75F410, &qword_254F2C698);
  v52 = a2;
  result = sub_254F29AB0();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_15:
      v29 = v26 | (v17 << 6);
      v30 = *(v13 + 48);
      v55 = *(v25 + 72);
      v31 = v30 + v55 * v29;
      if (v52)
      {
        (*v54)(v58, v31, v9);
        v32 = *(v13 + 56);
        v33 = *(v51 + 72);
        (*(v51 + 32))(v56, v32 + v33 * v29, v57);
      }

      else
      {
        (*v48)(v58, v31, v9);
        v34 = *(v13 + 56);
        v33 = *(v51 + 72);
        (*(v51 + 16))(v56, v34 + v33 * v29, v57);
      }

      v35 = *(v16 + 40);
      sub_254EC1B80(&qword_281426180, MEMORY[0x277D728B0]);
      result = sub_254F293F0();
      v36 = -1 << *(v16 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v24 + 8 * (v37 >> 6))) == 0)
      {
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
          v43 = *(v24 + 8 * v38);
          if (v43 != -1)
          {
            v39 = __clz(__rbit64(~v43)) + (v38 << 6);
            goto LABEL_27;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v39 = __clz(__rbit64((-1 << v37) & ~*(v24 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
      *(v24 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      (*v54)((*(v16 + 48) + v55 * v39), v58, v9);
      result = (*v53)(*(v16 + 56) + v33 * v39, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v17 >= v23)
      {
        break;
      }

      v28 = v19[v17];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v22 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_35;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      sub_254F09B78(0, (v44 + 63) >> 6, v19);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_35:
  *v3 = v16;
  return result;
}

uint64_t sub_254F06420(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_254F288E0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_254F064D8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_254F06520(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 32 * result);
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v9 = a8[7] + 16 * result;
  *v9 = a6;
  *(v9 + 8) = a7 & 1;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t sub_254F06578(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = a5(0);
  sub_254EB3CD0(v9);
  (*(v10 + 32))(v8 + *(v10 + 72) * a1, a2);
  v11 = a4[7];
  v12 = sub_254EB3AEC();
  v14 = sub_254EC8BC0(v12, v13);
  sub_254EB2D90(v14);
  v16 = *(v15 + 72);
  sub_254EBEDA8();
  result = sub_254F07FF4(v17, v18, v19, v20);
  v22 = a4[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v24;
  }

  return result;
}

uint64_t sub_254F0665C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v8 = *v5;
  v9 = sub_254EB2C08(a1, a2, a3, a4);
  if (v10)
  {
    v11 = v9;
    v12 = *v6;
    swift_isUniquelyReferenced_nonNull_native();
    v23 = *v6;
    v13 = *(*v6 + 24);
    sub_254EC8BC0(&qword_27F75F490, &qword_254F2C700);
    sub_254F29A50();
    v14 = *(v23 + 48) + 32 * v11;
    v15 = *(v14 + 8);
    v16 = *(v14 + 24);

    v17 = *(v23 + 56);
    v18 = sub_254F27940();
    (*(*(v18 - 8) + 32))(a5, v17 + *(*(v18 - 8) + 72) * v11, v18);
    sub_254F0803C();
    sub_254F29A70();
    *v6 = v23;
    v19 = a5;
    v20 = 0;
    v21 = v18;
  }

  else
  {
    v21 = sub_254F27940();
    v19 = a5;
    v20 = 1;
  }

  return sub_254EB2F04(v19, v20, 1, v21);
}

double sub_254F067B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v8 = *v5;
  v9 = sub_254EB2C08(a1, a2, a3, a4);
  if (v10)
  {
    v11 = v9;
    v12 = *v6;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v6;
    v13 = *(*v6 + 24);
    sub_254EC8BC0(&qword_27F75F4A8, &qword_254F2C710);
    sub_254F29A50();
    v14 = *(v20 + 48) + 32 * v11;
    v15 = *(v14 + 8);
    v16 = *(v14 + 24);

    v17 = *(v20 + 56) + 40 * v11;
    v18 = *(v17 + 16);
    *a5 = *v17;
    *(a5 + 16) = v18;
    *(a5 + 32) = *(v17 + 32);
    sub_254EC8BC0(&qword_27F75F100, &qword_254F2BDD0);
    sub_254F0803C();
    sub_254F29A70();
    *v6 = v20;
  }

  else
  {
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = -1;
  }

  return result;
}

uint64_t sub_254F068C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  sub_254F05AD4();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    v9 = *(*v2 + 24);
    sub_254EC8BC0(&qword_27F75F480, &qword_254F2C6F0);
    sub_254F29A50();
    v10 = *(v18 + 48);
    v11 = sub_254F27980();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v18 + 56);
    v13 = sub_254EC8BC0(&qword_27F75F430, &qword_254F2C6B8);
    sub_254F07FF4(v12 + *(*(v13 - 8) + 72) * v7, a1, &qword_27F75F430, &qword_254F2C6B8);
    sub_254EC1B80(&qword_27F75F448, MEMORY[0x277CC95F0]);
    sub_254F29A70();
    *v2 = v18;
    v14 = a1;
    v15 = 0;
    v16 = v13;
  }

  else
  {
    v16 = sub_254EC8BC0(&qword_27F75F430, &qword_254F2C6B8);
    v14 = a1;
    v15 = 1;
  }

  return sub_254EB2F04(v14, v15, 1, v16);
}

uint64_t sub_254F06A94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  sub_254F05BA8();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    v9 = *(*v2 + 24);
    sub_254EC8BC0(&qword_27F75F470, &qword_254F2C6E8);
    sub_254F29A50();
    v10 = *(v18 + 48);
    v11 = sub_254F27F50();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v18 + 56);
    v13 = sub_254EC8BC0(&qword_27F75F430, &qword_254F2C6B8);
    sub_254F07FF4(v12 + *(*(v13 - 8) + 72) * v7, a1, &qword_27F75F430, &qword_254F2C6B8);
    sub_254EC1B80(&qword_281427558, MEMORY[0x277D74700]);
    sub_254F29A70();
    *v2 = v18;
    v14 = a1;
    v15 = 0;
    v16 = v13;
  }

  else
  {
    v16 = sub_254EC8BC0(&qword_27F75F430, &qword_254F2C6B8);
    v14 = a1;
    v15 = 1;
  }

  return sub_254EB2F04(v14, v15, 1, v16);
}

void sub_254F06C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_254EB3F00(a1, a2, a3);
  sub_254EB7FD0();
  if (__OFADD__(v9, v10))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v7;
  v12 = v8;
  sub_254EC8BC0(&qword_27F75F4B0, qword_254F2C718);
  if ((sub_254EB8170() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v6;
  v14 = sub_254F057E4(v5, v3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_254F29B50();
    __break(1u);
    return;
  }

  v11 = v14;
LABEL_5:
  if (v12)
  {
    v16 = *(*v6 + 56);
    v17 = *(v16 + 8 * v11);
    *(v16 + 8 * v11) = v4;
  }

  else
  {
    v18 = sub_254EB59F0();
    sub_254F064D8(v18, v19, v20, v21, v22);
  }
}

uint64_t sub_254F06D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_254EB3F00(a1, a2, a3);
  sub_254EB7FD0();
  if (__OFADD__(v9, v10))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v7;
  v12 = v8;
  sub_254EC8BC0(&qword_27F75F488, &qword_254F2C6F8);
  if ((sub_254EB8170() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v6;
  v14 = sub_254F057E4(v5, v3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_254F29B50();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  if (v12)
  {
    v16 = *(*v6 + 56);
    v17 = *(v16 + 8 * v11);
    *(v16 + 8 * v11) = v4;
  }

  else
  {
    v19 = sub_254EB59F0();
    sub_254F064D8(v19, v20, v21, v22, v23);
  }
}

uint64_t sub_254F06E50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_254F27980();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_254F05AD4();
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v12;
  v15 = v13;
  sub_254EC8BC0(&qword_27F75F480, &qword_254F2C6F0);
  if ((sub_254F29A50() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v3;
  sub_254F05AD4();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_10:
    result = sub_254F29B50();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v3;
  if (v15)
  {
    v20 = v19[7];
    v21 = sub_254EC8BC0(&qword_27F75F430, &qword_254F2C6B8);
    return sub_254F08090(a1, v20 + *(*(v21 - 8) + 72) * v14, &qword_27F75F430, &qword_254F2C6B8);
  }

  else
  {
    (*(v7 + 16))(v10, a2, v6);
    return sub_254F06578(v14, v10, a1, v19, MEMORY[0x277CC95F0]);
  }
}

uint64_t sub_254F07034(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_254F27F50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_254F05BA8();
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v12;
  v15 = v13;
  sub_254EC8BC0(&qword_27F75F470, &qword_254F2C6E8);
  if ((sub_254F29A50() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v3;
  sub_254F05BA8();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_10:
    result = sub_254F29B50();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v3;
  if (v15)
  {
    v20 = v19[7];
    v21 = sub_254EC8BC0(&qword_27F75F430, &qword_254F2C6B8);
    return sub_254F08090(a1, v20 + *(*(v21 - 8) + 72) * v14, &qword_27F75F430, &qword_254F2C6B8);
  }

  else
  {
    (*(v7 + 16))(v10, a2, v6);
    return sub_254F06578(v14, v10, a1, v19, MEMORY[0x277D74700]);
  }
}

uint64_t sub_254F07218(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_254F288E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_254F0590C();
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  sub_254EC8BC0(&qword_27F75F3E8, &qword_254F2C670);
  if ((sub_254F29A50() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v3;
  sub_254F0590C();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    result = sub_254F29B50();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v3;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;
  }

  else
  {
    (*(v7 + 16))(v10, a2, v6);
    return sub_254F06420(v14, v10, a1, v19);
  }
}

uint64_t sub_254F073D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_254F29290();
  (*(*(v8 - 8) + 16))(a1, a3, v8);
  v9 = sub_254F28910();
  v10 = *(*(v9 - 8) + 16);

  return v10(a2, a4, v9);
}

uint64_t sub_254F07490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_254EC8BC0(&qword_27F75F3C0, &qword_254F2C648) + 48);
  v5 = a2 + *(sub_254EC8BC0(&qword_27F75F400, &qword_254F2C688) + 48);

  return sub_254F073D8(a2, v5, a1, a1 + v4);
}

uint64_t sub_254F0750C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v66 = a5;
  v57 = a4;
  v8 = sub_254F28910();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v54 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = v49 - v13;
  v58 = sub_254F29290();
  v14 = *(v58 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v58);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_254EC8BC0(&qword_27F75F408, &qword_254F2C690);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v49 - v20;
  sub_254F07AEC(a1, a2, a3, v64);
  v60 = v64[0];
  v61 = v64[1];
  v62 = v64[2];
  v56 = (v14 + 32);
  v22 = (v9 + 32);
  v63 = v65;
  v52 = v9 + 16;
  v51 = v9 + 8;
  v53 = v14;
  v50 = (v14 + 8);
  v55 = v9;
  v49[3] = v9 + 40;
  v49[1] = a1;

  v49[0] = a3;

  while (1)
  {
    sub_254F07B28(v21);
    v23 = sub_254EC8BC0(&qword_27F75F400, &qword_254F2C688);
    if (sub_254EB2F2C(v21, 1, v23) == 1)
    {
      sub_254EF7A88();
    }

    v24 = *(v23 + 48);
    v25 = *v56;
    (*v56)(v17, v21, v58);
    v26 = *v22;
    v27 = v8;
    (*v22)(v59, &v21[v24], v8);
    v28 = *v66;
    sub_254F0585C();
    v31 = v30;
    v32 = *(v28 + 16);
    v33 = (v29 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      break;
    }

    v35 = v29;
    if (*(v28 + 24) >= v34)
    {
      if ((v57 & 1) == 0)
      {
        sub_254EC8BC0(&qword_27F75F3F0, &qword_254F2C678);
        sub_254F29A60();
      }
    }

    else
    {
      v36 = v66;
      sub_254F05F80(v34, v57 & 1);
      v37 = *v36;
      sub_254F0585C();
      if ((v35 & 1) != (v39 & 1))
      {
        goto LABEL_17;
      }

      v31 = v38;
    }

    v40 = *v66;
    if (v35)
    {
      v42 = v54;
      v41 = v55;
      v43 = *(v55 + 72) * v31;
      v8 = v27;
      (*(v55 + 16))(v54, v40[7] + v43, v27);
      (*(v41 + 8))(v59, v27);
      (*v50)(v17, v58);
      (*(v41 + 40))(v40[7] + v43, v42, v27);
    }

    else
    {
      v40[(v31 >> 6) + 8] |= 1 << v31;
      v25((v40[6] + *(v53 + 72) * v31), v17, v58);
      v44 = v40[7] + *(v55 + 72) * v31;
      v8 = v27;
      v26(v44, v59, v27);
      v45 = v40[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_16;
      }

      v40[2] = v47;
    }

    v57 = 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_254F29B50();
  __break(1u);
  return result;
}

uint64_t sub_254F07A04(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_254F293C0();

  return v3;
}

uint64_t sub_254F07A70(void *a1)
{
  v1 = [a1 assistantDefinedSchemas];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_254EB48D8(0, &qword_281426058, 0x277D23768);
  v3 = sub_254F29560();

  return v3;
}

uint64_t sub_254F07AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_254F07B28@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v59 = sub_254EC8BC0(&qword_27F75F3C0, &qword_254F2C648);
  v2 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v4 = &v48 - v3;
  v54 = sub_254F28910();
  v5 = *(v54 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v54);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_254F29290();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_254EC8BC0(&qword_27F75F418, &qword_254F2C6A0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16);
  v55 = &v48 - v20;
  v56 = v1;
  v21 = *v1;
  v22 = v1[1];
  v23 = v1[2];
  v24 = v1[3];
  v25 = v1[4];
  v49 = v4;
  v57 = v23;
  if (v25)
  {
    v53 = v18;
    v26 = v24;
LABEL_8:
    v51 = v13;
    v52 = (v25 - 1) & v25;
    v28 = __clz(__rbit64(v25)) | (v26 << 6);
    v29 = v21;
    (*(v10 + 16))(v13, *(v21 + 48) + *(v10 + 72) * v28, v9);
    v30 = v54;
    (*(v5 + 16))(v8, *(v29 + 56) + *(v5 + 72) * v28, v54);
    v31 = v59;
    v50 = *(v59 + 48);
    v32 = v55;
    v33 = v9;
    v34 = v52;
    (*(v10 + 32))(v55, v51, v33);
    v35 = v32;
    (*(v5 + 32))(&v32[v50], v8, v30);
    v27 = v31;
    v36 = 0;
    v18 = v53;
LABEL_9:
    v37 = 1;
    v38 = v27;
    sub_254EB2F04(v35, v36, 1, v27);
    v40 = v56;
    v39 = v57;
    *v56 = v29;
    v40[1] = v22;
    v40[2] = v39;
    v40[3] = v24;
    v40[4] = v34;
    v41 = v40[5];
    v42 = v40[6];
    sub_254F07FF4(v35, v18, &qword_27F75F418, &qword_254F2C6A0);
    v43 = sub_254EB2F2C(v18, 1, v38);
    v44 = v58;
    if (v43 != 1)
    {
      v45 = v18;
      v46 = v49;
      sub_254F07FF4(v45, v49, &qword_27F75F3C0, &qword_254F2C648);
      v41(v46);
      sub_254EB306C(v46, &qword_27F75F3C0, &qword_254F2C648);
      v37 = 0;
    }

    v47 = sub_254EC8BC0(&qword_27F75F400, &qword_254F2C688);
    return sub_254EB2F04(v44, v37, 1, v47);
  }

  else
  {
    v27 = v59;
    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= ((v23 + 64) >> 6))
      {
        v34 = 0;
        v36 = 1;
        v35 = v55;
        v29 = v21;
        goto LABEL_9;
      }

      v25 = *(v22 + 8 * v26);
      ++v24;
      if (v25)
      {
        v53 = v18;
        v24 = v26;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_254F07FAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_254EB3C5C(a1, a2, a3, a4);
  sub_254EB3CD0(v5);
  v7 = *(v6 + 16);
  v8 = sub_254EB4B64();
  v9(v8);
  return v4;
}

uint64_t sub_254F07FF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_254EB3C5C(a1, a2, a3, a4);
  sub_254EB3CD0(v5);
  v7 = *(v6 + 32);
  v8 = sub_254EB4B64();
  v9(v8);
  return v4;
}

unint64_t sub_254F0803C()
{
  result = qword_27F75F498;
  if (!qword_27F75F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75F498);
  }

  return result;
}

uint64_t sub_254F08090(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_254EB3C5C(a1, a2, a3, a4);
  sub_254EB3CD0(v5);
  v7 = *(v6 + 40);
  v8 = sub_254EB4B64();
  v9(v8);
  return v4;
}

uint64_t sub_254F080EC()
{
  v2 = *(v0 - 96);

  return sub_254F29870();
}

uint64_t sub_254F0810C()
{
  result = sub_254F29420();
  qword_27F75F4B8 = result;
  return result;
}

uint64_t BERTBasedEntityDetector.init(entityTypes:)@<X0>(void *a1@<X8>)
{
  v2 = sub_254F291E0();
  v3 = sub_254EB2CBC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_254EC8BC0(&qword_27F75F298, &qword_254F2C3E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_254F2AE00;
  if (qword_27F75EB88 != -1)
  {
    sub_254EB7A68();
  }

  v11 = qword_27F75F4B8;
  *(v10 + 32) = qword_27F75F4B8;
  sub_254F08308();
  v12 = v11;
  v13 = sub_254F0834C();
  sub_254F284B0();
  v14 = sub_254F291D0();
  v15 = sub_254F296F0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_254EAE000, v14, v15, "No models have been set for NLTagger", v16, 2u);
    MEMORY[0x259C2EB80](v16, -1, -1);
  }

  result = (*(v5 + 8))(v9, v2);
  *a1 = v13;
  return result;
}

unint64_t sub_254F08308()
{
  result = qword_281426048;
  if (!qword_281426048)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281426048);
  }

  return result;
}

id sub_254F0834C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NLTagScheme(0);
  v1 = sub_254F29550();

  v2 = [v0 initWithTagSchemes_];

  return v2;
}

uint64_t BERTBasedEntityDetector.supportedEntities.getter()
{
  sub_254EC8BC0(&unk_27F75F4F0, &unk_254F2AF70);
  v0 = sub_254F28CA0();
  sub_254EB2CBC(v0);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_254F2BA20;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, *MEMORY[0x277D1D478], v0);
  v8(v7 + v4, *MEMORY[0x277D1D490], v0);

  return sub_254F08AB0(v6);
}

uint64_t BERTBasedEntityDetector.detectEntities(text:appBundleId:)(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D84F90];
  sub_254F08DC0(a1, a2, *v2);
  if (qword_27F75EB88 != -1)
  {
    v3 = sub_254EB7A68();
  }

  MEMORY[0x28223BE20](v3);
  sub_254F297E0();
  return v5;
}

uint64_t sub_254F085D0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_254F28750();
  v13 = sub_254EB2CBC(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v47 = a3;
    v48 = a5;
    v49 = a6;
    v20 = qword_27F75EB90;
    v21 = a1;
    if (v20 != -1)
    {
      swift_once();
    }

    sub_254F29450();
    sub_254EB40C4();
    sub_254EB7FE0();
    v23 = v23 && v6 == v22;
    if (!v23)
    {
      v24 = sub_254EB6C48();

      if (v24)
      {
        goto LABEL_32;
      }

      v25 = qword_27F75EB98;
      v46 = v21;
      if (v25 != -1)
      {
        swift_once();
      }

      sub_254F29450();
      sub_254EB40C4();
      sub_254EB7FE0();
      if (!v23 || v6 != v26)
      {
        v45 = sub_254EB6C48();
        v28 = v46;

        if ((v45 & 1) == 0)
        {
          v29 = qword_27F75EBA0;
          v21 = v28;
          if (v29 != -1)
          {
            swift_once();
          }

          sub_254F29450();
          sub_254EB40C4();
          sub_254EB7FE0();
          if (!v23 || v6 != v30)
          {
            v32 = sub_254EB6C48();

            if (v32)
            {
LABEL_36:
              v43 = sub_254F29520();
              MEMORY[0x259C2DC20](v43);

              sub_254F28730();
              v39 = MEMORY[0x277D1D2F8];
              goto LABEL_33;
            }

            v33 = qword_27F75EBA8;
            v46 = v21;
            if (v33 != -1)
            {
              swift_once();
            }

            sub_254F29450();
            sub_254EB40C4();
            sub_254EB7FE0();
            if (!v23 || v6 != v34)
            {
              v36 = sub_254EB6C48();
              v37 = v46;

              if ((v36 & 1) == 0)
              {

                return 1;
              }

              goto LABEL_36;
            }
          }

          goto LABEL_36;
        }

LABEL_32:
        v38 = sub_254F29520();
        MEMORY[0x259C2DC20](v38);

        sub_254F28730();
        v39 = MEMORY[0x277D1D310];
LABEL_33:
        (*(v15 + 104))(v19, *v39, v12);
        sub_254F16C48();
        v40 = *(*a4 + 16);
        sub_254F16CF0(v40);

        v41 = *a4;
        *(v41 + 16) = v40 + 1;
        (*(v15 + 32))(v41 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v40, v19, v12);
        return 1;
      }
    }

    goto LABEL_32;
  }

  return 1;
}

uint64_t sub_254F089F0()
{
  result = sub_254F29420();
  qword_27F7604E0 = result;
  return result;
}

uint64_t sub_254F08A20()
{
  result = sub_254F29420();
  qword_27F7604E8 = result;
  return result;
}

uint64_t sub_254F08A50()
{
  result = sub_254F29420();
  qword_27F7604F0 = result;
  return result;
}

uint64_t sub_254F08A80()
{
  result = sub_254F29420();
  qword_27F7604F8 = result;
  return result;
}

uint64_t sub_254F08AB0(uint64_t a1)
{
  v2 = sub_254F28CA0();
  v3 = sub_254EB2CBC(v2);
  v40 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_254EB2E04();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v44 = &v35 - v11;
  if (!*(a1 + 16))
  {
    v13 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  sub_254EC8BC0(&qword_27F75F5D0, &qword_254F2C798);
  result = sub_254F29920();
  v13 = result;
  v39 = *(a1 + 16);
  if (!v39)
  {
LABEL_15:

    return v13;
  }

  v14 = 0;
  v43 = result + 56;
  v15 = *(v40 + 80);
  v37 = a1;
  v38 = a1 + ((v15 + 32) & ~v15);
  v42 = v40 + 16;
  v16 = (v40 + 8);
  v36 = (v40 + 32);
  while (v14 < *(a1 + 16))
  {
    v17 = *(v40 + 72);
    v41 = v14 + 1;
    v18 = *(v40 + 16);
    v18(v44, v38 + v17 * v14, v2);
    v19 = *(v13 + 40);
    sub_254EB6B00();
    sub_254EBBAD0(&qword_2814274A8, v20);
    v21 = sub_254F293F0();
    v22 = ~(-1 << *(v13 + 32));
    while (1)
    {
      v23 = v21 & v22;
      v24 = (v21 & v22) >> 6;
      v25 = *(v43 + 8 * v24);
      v26 = 1 << (v21 & v22);
      if ((v26 & v25) == 0)
      {
        break;
      }

      v27 = v13;
      v18(v9, *(v13 + 48) + v23 * v17, v2);
      sub_254EB6B00();
      sub_254EBBAD0(&qword_2814274A0, v28);
      v29 = sub_254F29410();
      v30 = *v16;
      (*v16)(v9, v2);
      if (v29)
      {
        result = (v30)(v44, v2);
        v13 = v27;
        goto LABEL_12;
      }

      v21 = v23 + 1;
      v13 = v27;
    }

    v31 = v44;
    *(v43 + 8 * v24) = v26 | v25;
    result = (*v36)(*(v13 + 48) + v23 * v17, v31, v2);
    v32 = *(v13 + 16);
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_17;
    }

    *(v13 + 16) = v34;
LABEL_12:
    v14 = v41;
    a1 = v37;
    if (v41 == v39)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_254F08DC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_254F29420();
  [a3 setString_];
}

uint64_t sub_254F08E18(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_254F08E58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t NLTaggerBasedEntityDetector.supportedEntities.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t NLTaggerBasedEntityDetector.init(entityTypes:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_254F291E0();
  sub_254EC8BC0(&unk_27F75F4F0, &unk_254F2AF70);
  v4 = sub_254F28CA0();
  sub_254EB2CBC(v4);
  v6 = v5;
  v8 = *(v7 + 72);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_254F2BA20;
  v11 = v10 + v9;
  v12 = *(v6 + 104);
  v12(v11, *MEMORY[0x277D1D478], v4);
  v12(v11 + v8, *MEMORY[0x277D1D490], v4);
  v13 = sub_254F08AB0(v10);
  sub_254F09090(a1);
  sub_254F08308();
  v14 = sub_254F0834C();

  v15 = sub_254F09CDC(a1, v13, sub_254F0A948, sub_254F0A948);

  *a2 = v14;
  a2[1] = v15;
  a2[2] = v13;
  return result;
}

void sub_254F09090(uint64_t a1)
{
  v2 = sub_254F28CA0();
  v3 = sub_254EB2CBC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v34 = MEMORY[0x277D84FA0];
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = (v13 + 63) >> 6;
  v32 = v5 + 32;
  v31 = v5 + 88;
  v30 = *MEMORY[0x277D1D498];
  v17 = *MEMORY[0x277D1D490];
  v28 = *MEMORY[0x277D1D478];
  v29 = v17;
  v26 = (v5 + 8);
  v25 = *MEMORY[0x277CD8968];

  v18 = 0;
  v27 = v5;
  while (v15)
  {
    v19 = v18;
LABEL_9:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    (*(v5 + 16))(v12, *(a1 + 48) + *(v5 + 72) * (v20 | (v19 << 6)), v2);
    (*(v5 + 32))(v10, v12, v2);
    v21 = (*(v5 + 88))(v10, v2);
    if (v21 == v30 || v21 == v29 || v21 == v28)
    {
      sub_254F10058(&v33, v25);
      v5 = v27;
    }

    else
    {
      (*v26)(v10, v2);
    }

    v18 = v19;
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      sub_254EF36A0(v34);
      return;
    }

    v15 = *(a1 + 56 + 8 * v19);
    ++v18;
    if (v15)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t NLTaggerBasedEntityDetector.detectEntities(text:appBundleId:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 2);
  v7 = MEMORY[0x277D84F90];
  v6 = *v2;
  sub_254F08DC0(a1, a2, *v2);
  v4 = *MEMORY[0x277CD8968];
  sub_254F297E0();
  return v7;
}

uint64_t sub_254F09430(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v58 = a3;
  v59 = a8;
  v57 = a2;
  v12 = sub_254F28750();
  v13 = sub_254EB2CBC(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_254EC8BC0(&qword_27F75F4D0, &unk_254F2C850);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v54 - v22;
  v24 = sub_254F28CA0();
  v25 = sub_254EB2CBC(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  v31 = &v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v56 = a7;
    v32 = a1;
    sub_254F09834(v23);
    if (sub_254EB2F2C(v23, 1, v24) == 1)
    {

      sub_254F0B8B0(v23);
      return 1;
    }

    (*(v27 + 32))(v31, v23, v24);
    if (!sub_254EBB8C0(v31, a5))
    {
LABEL_20:
      (*(v27 + 8))(v31, v24);

      return 1;
    }

    v54 = a9;
    v55 = v15;
    v33 = *MEMORY[0x277CD8920];
    sub_254F29450();
    if (v15 == sub_254EB7A88() && v23 == v34)
    {
    }

    else
    {
      v36 = sub_254EB6C6C();

      if ((v36 & 1) == 0)
      {
        v37 = *MEMORY[0x277CD8928];
        sub_254F29450();
        if (v36 == sub_254EB7A88() && v23 == v38)
        {
        }

        else
        {
          v40 = sub_254EB6C6C();

          if ((v40 & 1) == 0)
          {
            v41 = *MEMORY[0x277CD8908];
            sub_254F29450();
            if (v40 == sub_254EB7A88() && v23 == v42)
            {
            }

            else
            {
              v44 = sub_254EB6C6C();

              if ((v44 & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            v53 = sub_254EB3D5C();
            MEMORY[0x259C2DC20](v53);
            sub_254EB40E0();
            sub_254EB6B18();
            sub_254F28730();
            v46 = MEMORY[0x277D1D2F8];
LABEL_23:
            v47 = v55;
            (*(v55 + 104))(v19, *v46, v12);
            v48 = v56;
            sub_254F16C48();
            v49 = *(*v48 + 16);
            sub_254F16CF0(v49);

            (*(v27 + 8))(v31, v24);
            v50 = *v48;
            *(v50 + 16) = v49 + 1;
            (*(v47 + 32))(v50 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v49, v19, v12);
            return 1;
          }
        }

        v52 = sub_254EB3D5C();
        MEMORY[0x259C2DC20](v52);
        sub_254EB40E0();
        sub_254EB6B18();
        sub_254F28730();
        v46 = MEMORY[0x277D1D310];
        goto LABEL_23;
      }
    }

    v45 = sub_254EB3D5C();
    MEMORY[0x259C2DC20](v45);
    sub_254EB40E0();
    sub_254EB6B18();
    sub_254F28780();
    v46 = MEMORY[0x277D1D318];
    goto LABEL_23;
  }

  return 1;
}

uint64_t sub_254F09834@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CD8920];
  v3 = sub_254F29450();
  v5 = v4;
  if (v3 == sub_254F29450() && v5 == v6)
  {

    goto LABEL_18;
  }

  v8 = sub_254F29B10();

  if (v8)
  {
LABEL_18:
    v26 = MEMORY[0x277D1D498];
    goto LABEL_19;
  }

  v9 = *MEMORY[0x277CD8928];
  v10 = sub_254F29450();
  v12 = v11;
  if (v10 == sub_254F29450() && v12 == v13)
  {

    goto LABEL_24;
  }

  v15 = sub_254F29B10();

  if (v15)
  {
LABEL_24:
    v26 = MEMORY[0x277D1D490];
    goto LABEL_19;
  }

  v16 = *MEMORY[0x277CD8908];
  v17 = sub_254F29450();
  v19 = v18;
  if (v17 == sub_254F29450() && v19 == v20)
  {
  }

  else
  {
    v22 = sub_254F29B10();

    if ((v22 & 1) == 0)
    {
      v23 = sub_254F28CA0();
      v24 = a1;
      v25 = 1;
      goto LABEL_20;
    }
  }

  v26 = MEMORY[0x277D1D478];
LABEL_19:
  v27 = *v26;
  v28 = sub_254F28CA0();
  (*(*(v28 - 8) + 104))(a1, v27, v28);
  v24 = a1;
  v25 = 0;
  v23 = v28;
LABEL_20:

  return sub_254EB2F04(v24, v25, 1, v23);
}

char *sub_254F09A84(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_254EC8BC0(&qword_27F75F4D8, &unk_254F2C860);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_254F09B78(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_254F2AED0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_254F09BDC(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_254F09CDC(a1, a2, sub_254F09F3C, sub_254F09F3C);
}

uint64_t sub_254F09C5C(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_254F09CDC(a1, a2, sub_254F0A5A4, sub_254F0A5A4);
}

uint64_t sub_254F09CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    sub_254F09B78(0, v8, v19 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_254EB6DBC();
    v11 = a3();
    if (!v8)
    {
      v12 = v11;

LABEL_4:
      v13 = *MEMORY[0x277D85DE8];
      return v12;
    }

    swift_willThrow();

    __break(1u);
  }

  else
  {
    v9 = swift_slowAlloc();

    sub_254EB6DBC();
    v12 = sub_254F09EA4(v15, v16, v17, v18, a4);

    if (!v8)
    {

      MEMORY[0x259C2EB80](v9, -1, -1);
      goto LABEL_4;
    }
  }

  result = MEMORY[0x259C2EB80](v9, -1, -1);
  __break(1u);
  return result;
}

void *sub_254F09EA4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);

    return v10;
  }

  return result;
}

uint64_t sub_254F09F3C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a2;
  v66 = a1;
  v6 = sub_254F286E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v74 = (&v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v60 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v73 = &v60 - v15;
  result = MEMORY[0x28223BE20](v14);
  v65 = &v60 - v17;
  v18 = *(a3 + 16);
  v19 = *(a4 + 16);
  v77 = v7 + 16;
  v75 = a4;
  v76 = a3;
  v68 = v7;
  if (v19 >= v18)
  {
    v69 = 0;
    v41 = 0;
    v42 = *(a3 + 56);
    v65 = (a3 + 56);
    v43 = 1 << *(a3 + 32);
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    else
    {
      v44 = -1;
    }

    v45 = v44 & v42;
    v46 = (v43 + 63) >> 6;
    v72 = a4 + 56;
    v73 = (v7 + 8);
    v67 = v46;
LABEL_24:
    while (v45)
    {
      v47 = __clz(__rbit64(v45));
      v71 = ((v45 - 1) & v45);
LABEL_31:
      v50 = v47 | (v41 << 6);
      v51 = *(a3 + 48);
      v52 = *(v7 + 72);
      v70 = v50;
      v53 = *(v7 + 16);
      v53(v74, v51 + v52 * v50, v6);
      v54 = *(a4 + 40);
      sub_254EBEC70(&qword_281427500, MEMORY[0x277D85578]);
      v55 = sub_254F293F0();
      v56 = ~(-1 << *(a4 + 32));
      do
      {
        v57 = v55 & v56;
        if (((*(v72 + (((v55 & v56) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v55 & v56)) & 1) == 0)
        {
          result = (*v73)(v74, v6);
          a4 = v75;
          a3 = v76;
          v46 = v67;
          v7 = v68;
          v45 = v71;
          goto LABEL_24;
        }

        v53(v13, *(v75 + 48) + v57 * v52, v6);
        sub_254EBEC70(&qword_2814274F8, MEMORY[0x277D85578]);
        v58 = sub_254F29410();
        v59 = *v73;
        (*v73)(v13, v6);
        v55 = v57 + 1;
      }

      while ((v58 & 1) == 0);
      result = v59(v74, v6);
      *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
      v7 = v68;
      v40 = __OFADD__(v69++, 1);
      a4 = v75;
      a3 = v76;
      v46 = v67;
      v45 = v71;
      if (v40)
      {
        goto LABEL_42;
      }
    }

    v48 = v41;
    while (1)
    {
      v41 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v41 >= v46)
      {
LABEL_38:

        return sub_254F0AFB0(v66, v62, v69, a3);
      }

      v49 = *&v65[8 * v41];
      ++v48;
      if (v49)
      {
        v47 = __clz(__rbit64(v49));
        v71 = ((v49 - 1) & v49);
        goto LABEL_31;
      }
    }
  }

  else
  {
    v20 = 0;
    v21 = *(a4 + 56);
    v61 = a4 + 56;
    v22 = 1 << *(a4 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & v21;
    v25 = (v22 + 63) >> 6;
    v63 = v25;
    v64 = v7 + 32;
    v69 = 0;
    v70 = a3 + 56;
    v74 = (v7 + 8);
LABEL_6:
    while (v24)
    {
      v26 = __clz(__rbit64(v24));
      v67 = (v24 - 1) & v24;
LABEL_13:
      v29 = *(v7 + 72);
      v30 = *(a4 + 48) + v29 * (v26 | (v20 << 6));
      v31 = v65;
      v71 = *(v7 + 16);
      v72 = v29;
      v71(v65, v30, v6);
      (*(v7 + 32))(v73, v31, v6);
      v32 = *(a3 + 40);
      sub_254EBEC70(&qword_281427500, MEMORY[0x277D85578]);
      v33 = sub_254F293F0();
      v34 = ~(-1 << *(a3 + 32));
      do
      {
        v35 = v33 & v34;
        v36 = (v33 & v34) >> 6;
        v37 = 1 << (v33 & v34);
        if ((v37 & *(v70 + 8 * v36)) == 0)
        {
          result = (*v74)(v73, v6);
          a4 = v75;
          a3 = v76;
          v24 = v67;
          v7 = v68;
          v25 = v63;
          goto LABEL_6;
        }

        v71(v13, *(v76 + 48) + v35 * v72, v6);
        sub_254EBEC70(&qword_2814274F8, MEMORY[0x277D85578]);
        v38 = sub_254F29410();
        v39 = *v74;
        (*v74)(v13, v6);
        v33 = v35 + 1;
      }

      while ((v38 & 1) == 0);
      result = v39(v73, v6);
      v24 = v67;
      v66[v36] |= v37;
      v7 = v68;
      v40 = __OFADD__(v69++, 1);
      a4 = v75;
      a3 = v76;
      v25 = v63;
      if (v40)
      {
        goto LABEL_41;
      }
    }

    v27 = v20;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v20 >= v25)
      {
        goto LABEL_38;
      }

      v28 = *(v61 + 8 * v20);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v67 = (v28 - 1) & v28;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_254F0A5A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v54 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v29 = 0;
    v30 = 1 << *(a3 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(a3 + 56);
    v33 = (v30 + 63) >> 6;
    v34 = a4 + 56;
LABEL_28:
    while (v32)
    {
      v35 = __clz(__rbit64(v32));
      v53 = (v32 - 1) & v32;
LABEL_35:
      v51 = v35 | (v29 << 6);
      v38 = (*(v5 + 48) + 16 * v51);
      v40 = *v38;
      v39 = v38[1];
      v41 = *(v4 + 40);
      sub_254F29BC0();

      sub_254F294C0();
      v42 = sub_254F29C00();
      v43 = ~(-1 << *(v4 + 32));
      do
      {
        v44 = v42 & v43;
        if (((*(v34 + (((v42 & v43) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v42 & v43)) & 1) == 0)
        {

          v4 = a4;
          v32 = v53;
          goto LABEL_28;
        }

        v45 = (*(a4 + 48) + 16 * v44);
        if (*v45 == v40 && v45[1] == v39)
        {
          break;
        }

        v47 = sub_254F29B10();
        v42 = v44 + 1;
      }

      while ((v47 & 1) == 0);

      *(v54 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v28 = __OFADD__(v55++, 1);
      v4 = a4;
      v32 = v53;
      if (v28)
      {
        goto LABEL_50;
      }
    }

    v36 = v29;
    while (1)
    {
      v29 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
LABEL_46:

        return sub_254F0B2D0(v54, a2, v55, v5);
      }

      v37 = *(v5 + 56 + 8 * v29);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v53 = (v37 - 1) & v37;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v48 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v50 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v52 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v5 + 40);
      sub_254F29BC0();

      sub_254F294C0();
      v19 = sub_254F29C00();
      v20 = v5;
      v21 = ~(-1 << *(v5 + 32));
      do
      {
        v22 = v19 & v21;
        v23 = (v19 & v21) >> 6;
        v24 = 1 << (v19 & v21);
        if ((v24 & *(v11 + 8 * v23)) == 0)
        {

          v5 = v20;
          v4 = a4;
          v10 = v50;
          v9 = v52;
          goto LABEL_6;
        }

        v25 = (*(v20 + 48) + 16 * v22);
        if (*v25 == v17 && v25[1] == v16)
        {
          break;
        }

        v27 = sub_254F29B10();
        v19 = v22 + 1;
      }

      while ((v27 & 1) == 0);

      v9 = v52;
      v54[v23] |= v24;
      v28 = __OFADD__(v55++, 1);
      v5 = v20;
      v4 = a4;
      v10 = v50;
      if (v28)
      {
        goto LABEL_49;
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

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v48 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v52 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_254F0A948(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a2;
  v66 = a1;
  v6 = sub_254F28CA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v74 = (&v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v60 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v73 = &v60 - v15;
  result = MEMORY[0x28223BE20](v14);
  v65 = &v60 - v17;
  v18 = *(a3 + 16);
  v19 = *(a4 + 16);
  v77 = v7 + 16;
  v75 = a4;
  v76 = a3;
  v68 = v7;
  if (v19 >= v18)
  {
    v69 = 0;
    v41 = 0;
    v42 = *(a3 + 56);
    v65 = (a3 + 56);
    v43 = 1 << *(a3 + 32);
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    else
    {
      v44 = -1;
    }

    v45 = v44 & v42;
    v46 = (v43 + 63) >> 6;
    v72 = a4 + 56;
    v73 = (v7 + 8);
    v67 = v46;
LABEL_24:
    while (v45)
    {
      v47 = __clz(__rbit64(v45));
      v71 = ((v45 - 1) & v45);
LABEL_31:
      v50 = v47 | (v41 << 6);
      v51 = *(a3 + 48);
      v52 = *(v7 + 72);
      v70 = v50;
      v53 = *(v7 + 16);
      v53(v74, v51 + v52 * v50, v6);
      v54 = *(a4 + 40);
      sub_254EBEC70(&qword_2814274A8, MEMORY[0x277D1D4B0]);
      v55 = sub_254F293F0();
      v56 = ~(-1 << *(a4 + 32));
      do
      {
        v57 = v55 & v56;
        if (((*(v72 + (((v55 & v56) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v55 & v56)) & 1) == 0)
        {
          result = (*v73)(v74, v6);
          a4 = v75;
          a3 = v76;
          v46 = v67;
          v7 = v68;
          v45 = v71;
          goto LABEL_24;
        }

        v53(v13, *(v75 + 48) + v57 * v52, v6);
        sub_254EBEC70(&qword_2814274A0, MEMORY[0x277D1D4B0]);
        v58 = sub_254F29410();
        v59 = *v73;
        (*v73)(v13, v6);
        v55 = v57 + 1;
      }

      while ((v58 & 1) == 0);
      result = v59(v74, v6);
      *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
      v7 = v68;
      v40 = __OFADD__(v69++, 1);
      a4 = v75;
      a3 = v76;
      v46 = v67;
      v45 = v71;
      if (v40)
      {
        goto LABEL_42;
      }
    }

    v48 = v41;
    while (1)
    {
      v41 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v41 >= v46)
      {
LABEL_38:

        return sub_254F0B4EC(v66, v62, v69, a3);
      }

      v49 = *&v65[8 * v41];
      ++v48;
      if (v49)
      {
        v47 = __clz(__rbit64(v49));
        v71 = ((v49 - 1) & v49);
        goto LABEL_31;
      }
    }
  }

  else
  {
    v20 = 0;
    v21 = *(a4 + 56);
    v61 = a4 + 56;
    v22 = 1 << *(a4 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & v21;
    v25 = (v22 + 63) >> 6;
    v63 = v25;
    v64 = v7 + 32;
    v69 = 0;
    v70 = a3 + 56;
    v74 = (v7 + 8);
LABEL_6:
    while (v24)
    {
      v26 = __clz(__rbit64(v24));
      v67 = (v24 - 1) & v24;
LABEL_13:
      v29 = *(v7 + 72);
      v30 = *(a4 + 48) + v29 * (v26 | (v20 << 6));
      v31 = v65;
      v71 = *(v7 + 16);
      v72 = v29;
      v71(v65, v30, v6);
      (*(v7 + 32))(v73, v31, v6);
      v32 = *(a3 + 40);
      sub_254EBEC70(&qword_2814274A8, MEMORY[0x277D1D4B0]);
      v33 = sub_254F293F0();
      v34 = ~(-1 << *(a3 + 32));
      do
      {
        v35 = v33 & v34;
        v36 = (v33 & v34) >> 6;
        v37 = 1 << (v33 & v34);
        if ((v37 & *(v70 + 8 * v36)) == 0)
        {
          result = (*v74)(v73, v6);
          a4 = v75;
          a3 = v76;
          v24 = v67;
          v7 = v68;
          v25 = v63;
          goto LABEL_6;
        }

        v71(v13, *(v76 + 48) + v35 * v72, v6);
        sub_254EBEC70(&qword_2814274A0, MEMORY[0x277D1D4B0]);
        v38 = sub_254F29410();
        v39 = *v74;
        (*v74)(v13, v6);
        v33 = v35 + 1;
      }

      while ((v38 & 1) == 0);
      result = v39(v73, v6);
      v24 = v67;
      v66[v36] |= v37;
      v7 = v68;
      v40 = __OFADD__(v69++, 1);
      a4 = v75;
      a3 = v76;
      v25 = v63;
      if (v40)
      {
        goto LABEL_41;
      }
    }

    v27 = v20;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v20 >= v25)
      {
        goto LABEL_38;
      }

      v28 = *(v61 + 8 * v20);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v67 = (v28 - 1) & v28;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_254F0AFB0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_254F286E0();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_254EC8BC0(&unk_27F75F580, &unk_254F2C840);
  result = sub_254F29920();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_254EBEC70(&qword_281427500, MEMORY[0x277D85578]);
    result = sub_254F293F0();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_27:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_27;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_254F0B2D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_254EC8BC0(&qword_27F75F4C8, &qword_254F2C790);
  result = sub_254F29920();
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
    sub_254F29BC0();

    sub_254F294C0();
    result = sub_254F29C00();
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

uint64_t sub_254F0B4EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_254F28CA0();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_254EC8BC0(&qword_27F75F5D0, &qword_254F2C798);
  result = sub_254F29920();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_254EBEC70(&qword_2814274A8, MEMORY[0x277D1D4B0]);
    result = sub_254F293F0();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_27:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_27;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

__n128 sub_254F0B80C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_254F0B820(uint64_t *a1, int a2)
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

uint64_t sub_254F0B860(uint64_t result, int a2, int a3)
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

uint64_t sub_254F0B8B0(uint64_t a1)
{
  v2 = sub_254EC8BC0(&qword_27F75F4D0, &unk_254F2C850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254F0B918(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_254F059E0();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_254F0B968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_254F057E4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

double sub_254F0B9C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_254F05A90(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_254EC31F0(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_254F0BA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_254F057E4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

void *sub_254F0BA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_254F057E4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

double sub_254F0BABC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_254F057E4(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_254EC31F0(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_254F0BB20(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_254F05C7C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = (*(a2 + 56) + 16 * v3);
  v6 = *v5;
  v7 = v5[1];

  return v6;
}

uint64_t sub_254F0BB78()
{
  v0 = sub_254F29450();
  v2 = v1;
  if (v0 == sub_254F29450() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_254F29B10();
  }

  return v5 & 1;
}

id NSDataDetectorBasedEntityDetector.init(entityTypes:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_254F291E0();
  v5 = sub_254EB2CBC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_254EB2E04();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = sub_254F0BF08(a1);
  if (!v16)
  {
    sub_254F284B0();

    v23 = sub_254F291D0();
    v24 = sub_254F296E0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v34 = a2;
      v26 = v25;
      v27 = swift_slowAlloc();
      v35 = v27;
      *v26 = 136315138;
      sub_254F28CA0();
      sub_254EBECB8(&qword_2814274A8, MEMORY[0x277D1D4B0]);
      v28 = sub_254F29680();
      v30 = v29;

      v31 = sub_254EC2D74(v28, v30, &v35);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_254EAE000, v23, v24, "NSDataDetectorBasedEntityDetector does not support %s", v26, 0xCu);
      sub_254EB2BBC(v27);
      MEMORY[0x259C2EB80](v27, -1, -1);
      v32 = v26;
      a2 = v34;
      MEMORY[0x259C2EB80](v32, -1, -1);
    }

    else
    {
    }

    (*(v7 + 8))(v12, v4);
LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  v17 = v16;

  v18 = objc_allocWithZone(MEMORY[0x277CCA948]);
  result = sub_254F0C940(v17);
  if (!result)
  {
    sub_254F284B0();
    v20 = sub_254F291D0();
    v21 = sub_254F29700();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_254EAE000, v20, v21, "Failed to create NSDataDetector", v22, 2u);
      MEMORY[0x259C2EB80](v22, -1, -1);
    }

    (*(v7 + 8))(v15, v4);
    goto LABEL_12;
  }

LABEL_13:
  *a2 = result;
  return result;
}

uint64_t sub_254F0BF08(uint64_t a1)
{
  v2 = sub_254F28CA0();
  v3 = sub_254EB2CBC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_254EB2E04();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  v17 = (v14 + 63) >> 6;
  v30 = v5 + 32;
  v31 = v5 + 16;
  v29 = v5 + 88;
  v28 = *MEMORY[0x277D1D480];
  v18 = *MEMORY[0x277D1D470];
  v26 = *MEMORY[0x277D1D488];
  v27 = v18;
  v25 = *MEMORY[0x277D1D4A0];

  v24 = 0;
  v20 = 0;
  while (1)
  {
    v21 = v20;
    if (!v16)
    {
      break;
    }

LABEL_8:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    (*(v5 + 16))(v13, *(a1 + 48) + *(v5 + 72) * (v22 | (v20 << 6)), v2);
    (*(v5 + 32))(v10, v13, v2);
    result = (*(v5 + 88))(v10, v2);
    if (result == v28)
    {
      v23 = 8;
      goto LABEL_17;
    }

    if (result == v27)
    {
      v23 = 2048;
      goto LABEL_17;
    }

    if (result == v26)
    {
      v23 = 32;
      goto LABEL_17;
    }

    if (result == v25)
    {
      v23 = 16;
LABEL_17:
      v24 |= v23;
    }

    else
    {
      result = (*(v5 + 8))(v10, v2);
    }
  }

  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v17)
    {

      return v24;
    }

    v16 = *(a1 + 56 + 8 * v20);
    ++v21;
    if (v16)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t NSDataDetectorBasedEntityDetector.supportedEntities.getter()
{
  sub_254EC8BC0(&unk_27F75F4F0, &unk_254F2AF70);
  v0 = sub_254F28CA0();
  sub_254EB2CBC(v0);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_254F2C870;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, *MEMORY[0x277D1D480], v0);
  v8(v7 + v4, *MEMORY[0x277D1D470], v0);
  v8(v7 + 2 * v4, *MEMORY[0x277D1D488], v0);
  v8(v7 + 3 * v4, *MEMORY[0x277D1D4A0], v0);

  return sub_254F08AB0(v6);
}

uint64_t NSDataDetectorBasedEntityDetector.detectEntities(text:appBundleId:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v8 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x259C2E460]();
  sub_254EC0160(v5, a1, a2, &v8);
  objc_autoreleasePoolPop(v6);
  return v8;
}

uint64_t sub_254F0C35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_254EC8BC0(&qword_27F75F4E8, "4:");
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = sub_254F277B0();
  v36 = *(v13 - 8);
  v14 = *(v36 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  v20 = objc_opt_self();
  v21 = sub_254F29420();
  v22 = [v20 processDateMatch:a1 originalString:v21];

  if (v22)
  {
    v23 = sub_254F293C0();

    v24 = sub_254F29450();
    sub_254F0BABC(v24, v25, v23, &v38);

    if (!v39)
    {

      sub_254EB306C(&v38, &qword_27F75EE68, &qword_254F2B4C0);
      sub_254EB2F04(v12, 1, 1, v13);
      goto LABEL_9;
    }

    v26 = swift_dynamicCast();
    sub_254EB2F04(v12, v26 ^ 1u, 1, v13);
    if (sub_254EB2F2C(v12, 1, v13) == 1)
    {

LABEL_9:
      sub_254EB306C(v12, &qword_27F75F4E8, "4:");
      v29 = sub_254F28710();
      return sub_254EB2F04(a2, 1, 1, v29);
    }

    v30 = v36;
    (*(v36 + 32))(v19, v12, v13);
    v31 = sub_254F29450();
    sub_254F0BABC(v31, v32, v23, &v38);

    if (v39)
    {
      v33 = swift_dynamicCast() ^ 1;
      v34 = v10;
    }

    else
    {
      sub_254EB306C(&v38, &qword_27F75EE68, &qword_254F2B4C0);
      v34 = v10;
      v33 = 1;
    }

    sub_254EB2F04(v34, v33, 1, v13);
    (*(v30 + 16))(v17, v19, v13);
    sub_254ED7AC0(v10, v37, &qword_27F75F4E8, "4:");
    sub_254F28700();
    (*(v30 + 8))(v19, v13);
    v35 = sub_254F28710();
    sub_254EB2F04(a2, 0, 1, v35);
    return sub_254EB306C(v10, &qword_27F75F4E8, "4:");
  }

  else
  {
    v27 = sub_254F28710();

    return sub_254EB2F04(a2, 1, 1, v27);
  }
}

uint64_t NSDataDetectorBasedEntityDetector.extractAddressComponents(from:)(void *a1)
{
  sub_254EB7FEC();
  sub_254F28B80();
  result = sub_254F0C9F4(a1);
  if (result)
  {
    v3 = result;
    sub_254F0BB20(*MEMORY[0x277CCA6D0], result);
    sub_254F28B90();
    sub_254F0BB20(*MEMORY[0x277CCA6C8], v3);
    sub_254F28BE0();
    sub_254F0BB20(*MEMORY[0x277CCA6D8], v3);
    sub_254F28B60();
    sub_254F0BB20(*MEMORY[0x277CCA6E8], v3);
    sub_254F28BB0();
    sub_254F0BB20(*MEMORY[0x277CCA6B0], v3);
    sub_254F28B70();
    sub_254F0BB20(*MEMORY[0x277CCA6E0], v3);
    sub_254F28BA0();
    sub_254F0BB20(*MEMORY[0x277CCA6F0], v3);
    sub_254F28BD0();
    sub_254F0BB20(*MEMORY[0x277CCA6B8], v3);

    return sub_254F28BC0();
  }

  return result;
}

id sub_254F0C940(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v2 = [v1 initWithTypes:a1 error:v7];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_254F27870();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_254F0C9F4(void *a1)
{
  v1 = [a1 components];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSTextCheckingKey(0);
  sub_254EBECB8(&qword_27F75ECC0, type metadata accessor for NSTextCheckingKey);
  v3 = sub_254F293C0();

  return v3;
}

unint64_t sub_254F0CAA8()
{
  result = qword_281426070;
  if (!qword_281426070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281426070);
  }

  return result;
}

uint64_t sub_254F0CAEC(void *a1)
{
  v1 = [a1 phoneNumber];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_254F29450();

  return v3;
}

uint64_t sub_254F0CB58(uint64_t a1)
{
  result = MEMORY[0x259C2DE00](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_254F0F3CC(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void sub_254F0CC18()
{
  sub_254EC1A1C();
  sub_254EB7D88();
  v3 = sub_254F28050();
  v4 = sub_254EB2E7C(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_254EB8010();
  MEMORY[0x28223BE20](v7);
  sub_254EB3F30();
  sub_254EBED00(&qword_281427550, MEMORY[0x277D1EA20]);
  v8 = sub_254EC1FC4();
  v9 = MEMORY[0x259C2DE00](v8, v0);
  sub_254EC1B18(v9);
  if (v1)
  {
    sub_254EB40FC();
    do
    {
      v10 = sub_254EC38FC();
      v2(v10);
      v11 = sub_254EC0D8C();
      sub_254F0F518(v11, v12);
      v13 = sub_254EB5758();
      v14(v13);
      sub_254EB9A04();
    }

    while (!v15);
  }

  else
  {
    sub_254EB4AA4();
  }

  sub_254F15B6C();
  sub_254EB4078();
}

void sub_254F0CD4C()
{
  sub_254EC1A1C();
  sub_254EB7D88();
  v3 = sub_254F28080();
  v4 = sub_254EB2E7C(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_254EB8010();
  MEMORY[0x28223BE20](v7);
  sub_254EB3F30();
  sub_254EC00C0();
  sub_254EBED00(v8, v9);
  v10 = sub_254EC1FC4();
  v11 = MEMORY[0x259C2DE00](v10, v0);
  sub_254EC1B18(v11);
  if (v1)
  {
    sub_254EB40FC();
    do
    {
      v12 = sub_254EC38FC();
      v2(v12);
      sub_254EC0D8C();
      sub_254F0F7E0();
      v13 = sub_254EB5758();
      v14(v13);
      sub_254EB9A04();
    }

    while (!v15);
  }

  else
  {
    sub_254EB4AA4();
  }

  sub_254F15B6C();
  sub_254EB4078();
}

void sub_254F0CE70()
{
  sub_254EC1A1C();
  sub_254EB7D88();
  v3 = sub_254F286E0();
  v4 = sub_254EB2E7C(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_254EB8010();
  MEMORY[0x28223BE20](v7);
  sub_254EB3F30();
  sub_254EBED00(&qword_281427500, MEMORY[0x277D85578]);
  v8 = sub_254EC1FC4();
  v9 = MEMORY[0x259C2DE00](v8, v0);
  sub_254EC1B18(v9);
  if (v1)
  {
    sub_254EB40FC();
    do
    {
      v10 = sub_254EC38FC();
      v2(v10);
      v11 = sub_254EC0D8C();
      sub_254F0FD90(v11, v12);
      v13 = sub_254EB5758();
      v14(v13);
      sub_254EB9A04();
    }

    while (!v15);
  }

  else
  {
    sub_254EB4AA4();
  }

  sub_254F15B6C();
  sub_254EB4078();
}

uint64_t SiriEntityMatcherEntityDetector.supportedEntities.getter()
{
  sub_254EC8BC0(&unk_27F75F4F0, &unk_254F2AF70);
  sub_254EB7D88();
  v0 = sub_254F28CA0();
  sub_254EB2CBC(v0);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_254F2BA20;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, *MEMORY[0x277D1D4A0], v0);
  v8(v7 + v4, *MEMORY[0x277D1D498], v0);

  return sub_254F08AB0(v6);
}

Swift::Void __swiftcall SiriEntityMatcherEntityDetector.prewarm()()
{
  v1 = *(v0 + *(type metadata accessor for SiriEntityMatcherEntityDetector() + 20));

  [v1 prewarmIndex];
}

uint64_t SiriEntityMatcherEntityDetector.detectEntities(text:appBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v40[3] = *MEMORY[0x277D85DE8];
  v40[0] = MEMORY[0x277D84F90];
  v9 = type metadata accessor for SiriEntityMatcherEntityDetector();
  v10 = *(v4 + *(v9 + 24));
  v11 = sub_254F29420();
  v12 = [v10 queryFromText_];

  sub_254EC8BC0(&qword_27F75F508, qword_254F2C920);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_254F2C910;
  v14 = objc_allocWithZone(MEMORY[0x277D55D18]);
  v15 = sub_254F0F318(0x4CDFu);
  if (v5)
  {

    *(v13 + 16) = 0;
  }

  else
  {
    *(v13 + 32) = v15;
    v16 = objc_allocWithZone(MEMORY[0x277D55D18]);
    *(v13 + 40) = sub_254F0F318(0x4CE1u);
    v17 = objc_allocWithZone(MEMORY[0x277D55D18]);
    *(v13 + 48) = sub_254F0F318(0x4CE0u);
    v18 = objc_allocWithZone(MEMORY[0x277D55D18]);
    *(v13 + 56) = sub_254F0F318(0x4CE3u);
    v39 = v13;
    if (sub_254F0D624(a3, a4))
    {
      v21 = MEMORY[0x277D84F90];
    }

    else
    {
      v22 = objc_allocWithZone(MEMORY[0x277D55D18]);
      sub_254F0F318(0x3D98u);
      MEMORY[0x259C2DCB0]();
      v21 = MEMORY[0x277D84F90];
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_254F29580();
      }

      sub_254F295B0();
      v13 = v39;
    }

    if (v13 >> 62)
    {
      goto LABEL_34;
    }

    sub_254F29B20();
    sub_254EC8BC0(&unk_27F75F570, &qword_254F2C938);
    if (swift_dynamicCastMetatype() || (v23 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
    }

    else
    {
      v24 = ((v13 & 0xFFFFFFFFFFFFFF8) + 32);
      while (1)
      {
        v25 = *v24;
        v40[1] = &unk_286729A00;
        v40[2] = &unk_28672B9B0;
        if (!swift_dynamicCastObjCProtocolConditional())
        {
          break;
        }

        ++v24;
        if (!--v23)
        {

          goto LABEL_20;
        }
      }

      v13 = v13 & 0xFFFFFFFFFFFFFF8 | 1;
LABEL_20:
      v21 = MEMORY[0x277D84F90];
    }

    while (1)
    {
      sub_254F157A0(v13, v12);
      v37 = 0;
      v38 = v21;
      v26 = [*(v6 + *(v9 + 20)) matchSpans:v12 error:&v37];
      v27 = v37;
      if (!v26)
      {
        break;
      }

      v28 = v26;
      sub_254EB48D8(0, &unk_281426078, 0x277D55D30);
      v29 = sub_254F29560();
      v30 = v27;

      v9 = sub_254EC5594(v29);
      for (i = 0; ; ++i)
      {
        if (v9 == i)
        {

          sub_254F0E21C();
          sub_254EEDA64(v35);

          result = v40[0];
          goto LABEL_5;
        }

        if ((v29 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x259C2E0D0](i, v29);
        }

        else
        {
          if (i >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v32 = *(v29 + 8 * i + 32);
        }

        v33 = v32;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v21 = MEMORY[0x259C2E460]();
        sub_254F0D6EC(v33, v6, v40, &v38, &v37);
        objc_autoreleasePoolPop(v21);
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:

      sub_254EC8BC0(&unk_27F75F570, &qword_254F2C938);
      v36 = sub_254F29A90();
      swift_bridgeObjectRelease_n();
      v13 = v36;
    }

    v34 = v37;
    sub_254F27870();

    swift_willThrow();
  }

LABEL_5:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_254F0D624(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a1 == 0xD00000000000001BLL && 0x8000000254F2E460 == a2;
  if (v4 || (sub_254F29B10() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0xD000000000000015 && 0x8000000254F2E440 == a2)
  {
    return 1;
  }

  return sub_254F29B10();
}

uint64_t sub_254F0D6EC(void *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v118 = a5;
  v101 = a4;
  v112 = a3;
  v8 = type metadata accessor for SiriEntityMatcherEntityDetector();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v102 = &v101 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v113 = &v101 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v101 - v17;
  v19 = sub_254F291E0();
  v114 = *(v19 - 8);
  v115 = v19;
  v20 = *(v114 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v104 = &v101 - v25;
  MEMORY[0x28223BE20](v24);
  v103 = &v101 - v26;
  v27 = sub_254F28750();
  v110 = *(v27 - 8);
  v111 = v27;
  v28 = *(v110 + 64);
  MEMORY[0x28223BE20](v27);
  v109 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_254F28BF0();
  v107 = *(v30 - 8);
  v108 = v30;
  v31 = *(v107 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v105 = &v101 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v106 = &v101 - v34;
  v35 = [a1 entityInfo];
  objc_opt_self();
  v36 = swift_dynamicCastObjCClass();
  if (!v36)
  {
    swift_unknownObjectRelease();
    v44 = sub_254F28280();
    sub_254EBED00(&qword_27F75F608, MEMORY[0x277D1EEE0]);
    v45 = swift_allocError();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D1EED8], v44);
    result = swift_willThrow();
    *v118 = v45;
    return result;
  }

  v37 = v36;
  v116 = v35;
  v118 = v5;
  v38 = [v36 itemType];
  if ((sub_254EF3548(v38, *(a2 + *(v8 + 32))) & 1) == 0)
  {
    return swift_unknownObjectRelease();
  }

  if (v38 == 19668)
  {
    v48 = [v37 content];
    objc_opt_self();
    v49 = swift_dynamicCastObjCClass();

    if (!v49)
    {
      v72 = v104;
      sub_254F284B0();
      v73 = a2;
      v74 = v102;
      sub_254EB849C(v73, v102);
      v75 = sub_254F291D0();
      v76 = sub_254F296F0();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v117[0] = v78;
        *v77 = 136315138;
        sub_254EB849C(v74, v113);
        v79 = sub_254F29480();
        v81 = v80;
        sub_254EB78B8(v74);
        v82 = sub_254EC2D74(v79, v81, v117);

        *(v77 + 4) = v82;
        _os_log_impl(&dword_254EAE000, v75, v76, "%s SEMSpanMatchResult is a Contact match, but is unable to be casted to CCContactContent", v77, 0xCu);
        sub_254EB2BBC(v78);
        MEMORY[0x259C2EB80](v78, -1, -1);
        MEMORY[0x259C2EB80](v77, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();

        sub_254EB78B8(v74);
      }

      return (*(v114 + 8))(v72, v115);
    }

    v50 = [a1 spanInfo];
    v51 = [v50 isApproximateMatch];

    if (!v51)
    {
      v52 = a1;
      v53 = v101;
      MEMORY[0x259C2DCB0]();
      sub_254F16D08(*((*v53 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_254F295B0();
    }

    return swift_unknownObjectRelease();
  }

  if (v38 == 15757)
  {
    v39 = a2;
    v40 = [v37 content];
    objc_opt_self();
    v41 = swift_dynamicCastObjCClass();
    if (v41)
    {
      v42 = v41;
      sub_254F159D0(v41);
      v43 = [v42 address];
      if (v43)
      {
        sub_254EDD5A0(v43, &selRef_locality);
      }

      v83 = v106;
      v84 = [v42 address];
      if (v84)
      {
        sub_254EDD5A0(v84, &selRef_country);
      }

      sub_254F28B80();
      v85 = [v42 address];
      if (v85)
      {
        v86 = sub_254EDD5A0(v85, &selRef_thoroughfare);
        if (v87)
        {
          v88 = v86;
          v89 = v87;
          v90 = [v42 address];
          if (v90)
          {
            v91 = sub_254EDD5A0(v90, &selRef_subThoroughfare);
            if (v92)
            {
              v117[0] = v91;
              v117[1] = v92;
              MEMORY[0x259C2DC50](32, 0xE100000000000000);
              MEMORY[0x259C2DC50](v88, v89);
            }
          }

          sub_254F28BB0();
        }
      }

      v94 = v107;
      v93 = v108;
      (*(v107 + 16))(v105, v83, v108);
      v95 = v109;
      sub_254F287F0();
      v97 = v110;
      v96 = v111;
      (*(v110 + 104))(v95, *MEMORY[0x277D1D320], v111);
      v98 = v112;
      sub_254F16C48();
      v99 = *(*v98 + 16);
      sub_254F16CF0(v99);
      swift_unknownObjectRelease();

      (*(v94 + 8))(v83, v93);
      v100 = *v98;
      *(v100 + 16) = v99 + 1;
      return (*(v97 + 32))(v100 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v99, v95, v96);
    }

    else
    {

      v63 = v103;
      sub_254F284B0();
      sub_254EB849C(v39, v18);
      v64 = sub_254F291D0();
      v65 = sub_254F296F0();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v117[0] = v67;
        *v66 = 136315138;
        sub_254EB849C(v18, v113);
        v68 = sub_254F29480();
        v70 = v69;
        sub_254EB78B8(v18);
        v71 = sub_254EC2D74(v68, v70, v117);

        *(v66 + 4) = v71;
        _os_log_impl(&dword_254EAE000, v64, v65, "%s SEMSpanMatchResult is a SignificantLocation match, but is unable to be casted to CCSignificantLocationContent", v66, 0xCu);
        sub_254EB2BBC(v67);
        MEMORY[0x259C2EB80](v67, -1, -1);
        MEMORY[0x259C2EB80](v66, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();

        sub_254EB78B8(v18);
      }

      return (*(v114 + 8))(v63, v115);
    }
  }

  else
  {
    sub_254F284B0();
    sub_254EB849C(a2, v12);
    swift_unknownObjectRetain_n();
    v54 = sub_254F291D0();
    v55 = sub_254F296F0();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v117[0] = v57;
      *v56 = 136315394;
      sub_254EB849C(v12, v113);
      v58 = sub_254F29480();
      v60 = v59;
      sub_254EB78B8(v12);
      v61 = sub_254EC2D74(v58, v60, v117);

      *(v56 + 4) = v61;
      *(v56 + 12) = 512;
      v62 = [v37 itemType];
      swift_unknownObjectRelease();
      *(v56 + 14) = v62;
      swift_unknownObjectRelease();
      _os_log_impl(&dword_254EAE000, v54, v55, "%s SEMSpanMatchResult has an item type %hu that cannot be converted. Skipping", v56, 0x10u);
      sub_254EB2BBC(v57);
      MEMORY[0x259C2EB80](v57, -1, -1);
      MEMORY[0x259C2EB80](v56, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease_n();
      sub_254EB78B8(v12);
    }

    return (*(v114 + 8))(v23, v115);
  }
}

void sub_254F0E21C()
{
  sub_254EC1A1C();
  v3 = v2;
  v49 = MEMORY[0x277D84F90];
  v4 = sub_254EC5594(v2);
  v5 = 0;
  v6 = 0;
  v7 = v3 & 0xC000000000000001;
  v8 = v3 + 32;
  while (v4 != v5)
  {
    sub_254EB862C(v5, v7 == 0);
    if (v7)
    {
      v9 = MEMORY[0x259C2E0D0](v5, v3);
    }

    else
    {
      v9 = *(v3 + 8 * v5 + 32);
    }

    v1 = v9;
    if (__OFADD__(v5, 1))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);

      __break(1u);
      return;
    }

    v48 = v9;
    sub_254F0E620(&v49, &v48);

    ++v5;
  }

  v39 = 0;
  v40 = v0;
  v6 = 0;
  v38 = v3;
  v10 = v49;
  v46 = v3 & 0xFFFFFFFFFFFFFF8;
  v47 = v49 + 32;
  v49 = MEMORY[0x277D84F90];
  v41 = v3 & 0xC000000000000001;
  v42 = v4;
  v43 = v3 + 32;
  while (v6 != v4)
  {
    if (v7)
    {
      v11 = MEMORY[0x259C2E0D0](v6, v38);
    }

    else
    {
      if (v6 >= *(v46 + 16))
      {
        goto LABEL_43;
      }

      v11 = *(v8 + 8 * v6);
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_42;
    }

    v1 = v11;
    v13 = [v11 spanInfo];
    v14 = [v13 isPartialMatch];

    if (v14)
    {
    }

    else
    {
      v44 = v1;
      v15 = [v1 fieldMatches];
      sub_254EB48D8(0, &qword_27F75F5D8, 0x277D55D28);
      v16 = sub_254F29560();

      v17 = sub_254EC5594(v16);
      v45 = v6;
      if (v17)
      {
        v18 = v17;
        v48 = MEMORY[0x277D84F90];
        sub_254ECA804(0, v17 & ~(v17 >> 63), 0);
        if (v18 < 0)
        {
          goto LABEL_44;
        }

        v19 = 0;
        v20 = v48;
        do
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x259C2E0D0](v19, v16);
          }

          else
          {
            v21 = *(v16 + 8 * v19 + 32);
          }

          v22 = v21;
          v23 = [v21 fieldSpanValue];
          v24 = sub_254F29450();
          v1 = v25;

          v48 = v20;
          v27 = v20[2];
          v26 = v20[3];
          if (v27 >= v26 >> 1)
          {
            sub_254ECA804(v26 > 1, v27 + 1, 1);
            v20 = v48;
          }

          ++v19;
          v20[2] = v27 + 1;
          v28 = &v20[2 * v27];
          v28[4] = v24;
          v28[5] = v1;
        }

        while (v18 != v19);

        v7 = v41;
        v4 = v42;
      }

      else
      {

        v20 = MEMORY[0x277D84F90];
      }

      v29 = sub_254F0CB58(v20);
      v30 = 0;
      v31 = *(v10 + 16);
      v6 = 1;
      v8 = v43;
      while (v31 != v30)
      {
        if (v30 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_41;
        }

        if (*(v29 + 16) < *(*(v47 + 8 * v30) + 16))
        {
          v32 = *(v47 + 8 * v30);

          v1 = sub_254F155E0(v33, v29);

          if (v1)
          {
            v6 = 0;
          }
        }

        ++v30;
      }

      if (v6)
      {
        sub_254F299B0();
        v34 = *(v49 + 16);
        sub_254F299E0();
        sub_254F299F0();
        sub_254F299C0();
      }

      else
      {
      }

      v6 = v45;
    }
  }

  v36 = v49;
  MEMORY[0x28223BE20](v35);
  v37[2] = v40;
  sub_254EF8210(sub_254F159B4, v37, v36);
  sub_254EB4AA4();

  sub_254F15B6C();
  sub_254EB4078();
}

void sub_254F0E620(uint64_t *a1, id *a2)
{
  v38 = *a2;
  v2 = [*a2 fieldMatches];
  sub_254EB48D8(0, &qword_27F75F5D8, 0x277D55D28);
  v3 = sub_254F29560();

  v4 = sub_254EC5594(v3);
  v5 = 0;
  v39 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v4 == v5)
    {

      sub_254EC8BC0(&qword_27F75F5F0, &qword_254F2C3D8);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_254F2BA20;
      *(v17 + 32) = 1289833695;
      sub_254EC8BC0(&qword_27F75F5F8, &qword_254F2C9E0);
      sub_254F15B08();
      v18 = sub_254F296B0();

      if ((v18 & 1) == 0)
      {
        return;
      }

      v19 = [v38 fieldMatches];
      v20 = sub_254F29560();

      v21 = sub_254EC5594(v20);
      if (v21)
      {
        v22 = v21;
        v40 = MEMORY[0x277D84F90];
        sub_254ECA804(0, v21 & ~(v21 >> 63), 0);
        if (v22 < 0)
        {
          goto LABEL_31;
        }

        v23 = 0;
        v24 = v40;
        do
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v25 = MEMORY[0x259C2E0D0](v23, v20);
          }

          else
          {
            v25 = *(v20 + 8 * v23 + 32);
          }

          v26 = v25;
          v27 = [v25 fieldSpanValue];
          v28 = sub_254F29450();
          v30 = v29;

          v32 = *(v40 + 16);
          v31 = *(v40 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_254ECA804(v31 > 1, v32 + 1, 1);
          }

          ++v23;
          *(v40 + 16) = v32 + 1;
          v33 = v40 + 16 * v32;
          *(v33 + 32) = v28;
          *(v33 + 40) = v30;
        }

        while (v22 != v23);
      }

      else
      {

        v24 = MEMORY[0x277D84F90];
      }

      v34 = sub_254F0CB58(v24);
      sub_254F16C60();
      v35 = *(*a1 + 16);
      sub_254F16D34(v35);
      v36 = *a1;
      *(v36 + 16) = v35 + 1;
      *(v36 + 8 * v35 + 32) = v34;
      *a1 = v36;
      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x259C2E0D0](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v9 = [v6 entityFieldInfo];
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      swift_unknownObjectRetain();
      v12 = [v11 fieldType];
      swift_unknownObjectRelease_n();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = *(v39 + 16);
        sub_254EB8310();
        v39 = v15;
      }

      v13 = *(v39 + 16);
      if (v13 >= *(v39 + 24) >> 1)
      {
        sub_254EB8310();
        v39 = v16;
      }

      *(v39 + 16) = v13 + 1;
      *(v39 + 2 * v13 + 32) = v12;
      v5 = v8;
    }

    else
    {

      swift_unknownObjectRelease();
      ++v5;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

id sub_254F0EA2C@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a3;
  v69 = type metadata accessor for SiriEntityMatcherEntityDetector();
  v5 = *(*(v69 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v69);
  v70 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v68 = &v65 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v65 - v10;
  v12 = sub_254F291E0();
  v73 = *(v12 - 8);
  v74 = v12;
  v13 = *(v73 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v71 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v65 - v16;
  v18 = sub_254EC8BC0(&qword_27F75F5E0, &unk_254F2C9C0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v65 - v20;
  v79 = sub_254F287A0();
  v22 = *(v79 - 1);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v79);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [*a1 entityInfo];
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (!v27)
  {
    swift_unknownObjectRelease();
LABEL_22:
    v53 = v71;
    sub_254F284B0();
    v54 = v70;
    sub_254EB849C(a2, v70);
    v55 = sub_254F291D0();
    v56 = sub_254F296F0();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v80 = v58;
      *v57 = 136315138;
      sub_254EB849C(v54, v68);
      v59 = sub_254F29480();
      v60 = v54;
      v62 = v61;
      sub_254EB78B8(v60);
      v63 = sub_254EC2D74(v59, v62, &v80);

      *(v57 + 4) = v63;
      _os_log_impl(&dword_254EAE000, v55, v56, "%s unable to get entityInfo and/or content from contact match.", v57, 0xCu);
      sub_254EB2BBC(v58);
      MEMORY[0x259C2EB80](v58, -1, -1);
      MEMORY[0x259C2EB80](v57, -1, -1);
    }

    else
    {

      sub_254EB78B8(v54);
    }

    (*(v73 + 8))(v53, v74);
    v64 = sub_254F28750();
    return sub_254EB2F04(v72, 1, 1, v64);
  }

  v28 = v27;
  v78 = v21;
  v65 = v25;
  v66 = v22;
  v67 = a2;
  v29 = [v27 content];
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();

LABEL_21:
    a2 = v67;
    goto LABEL_22;
  }

  v30 = sub_254F15A34(v28);
  if (!v30)
  {
    sub_254F284B0();
    sub_254EB849C(v67, v11);
    v38 = sub_254F291D0();
    v39 = sub_254F296F0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v79 = v26;
      v42 = v41;
      v80 = v41;
      *v40 = 136315138;
      sub_254EB849C(v11, v68);
      v43 = sub_254F29480();
      v78 = v29;
      v45 = v44;
      sub_254EB78B8(v11);
      v46 = sub_254EC2D74(v43, v45, &v80);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_254EAE000, v38, v39, "%s SEMSpanMatchResult is a Contact match, but could not fetch meta contents", v40, 0xCu);
      sub_254EB2BBC(v42);
      MEMORY[0x259C2EB80](v42, -1, -1);
      MEMORY[0x259C2EB80](v40, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      sub_254EB78B8(v11);
    }

    (*(v73 + 8))(v17, v74);
    goto LABEL_21;
  }

  v31 = v30;
  result = sub_254EC5594(v30);
  v33 = 0;
  v76 = v31 & 0xC000000000000001;
  v77 = result;
  v75 = v31 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v77 == v33)
    {

      swift_unknownObjectRelease();

      goto LABEL_21;
    }

    if (v76)
    {
      result = MEMORY[0x259C2E0D0](v33, v31);
    }

    else
    {
      if (v33 >= *(v75 + 16))
      {
        goto LABEL_27;
      }

      result = *(v31 + 8 * v33 + 32);
    }

    v34 = result;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    v35 = v26;
    v36 = [result sourceItemIdentifier];
    sub_254F29450();

    sub_254F29730();

    v37 = v78;
    sub_254F28760();

    if (sub_254EB2F2C(v37, 1, v79) != 1)
    {

      swift_unknownObjectRelease();

      v47 = v65;
      v48 = *(v66 + 32);
      v49 = v79;
      v48(v65, v37, v79);
      v50 = v72;
      v48(v72, v47, v49);
      v51 = *MEMORY[0x277D1D318];
      v52 = sub_254F28750();
      (*(*(v52 - 8) + 104))(v50, v51, v52);
      return sub_254EB2F04(v50, 0, 1, v52);
    }

    result = sub_254F15AA0(v37);
    ++v33;
    v26 = v35;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

id sub_254F0F1CC(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_254F279A0();
  v14[0] = 0;
  v5 = [v2 initWithTokenizerLocale:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_254F279C0();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_254F27870();

    swift_willThrow();
    v11 = sub_254F279C0();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

id sub_254F0F318(unsigned __int16 a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v2 = [v1 initWithFieldType:a1 error:v7];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_254F27870();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL sub_254F0F3CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_254F29BC0();
  sub_254F294C0();
  v9 = sub_254F29C00();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_254F29B10() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_254F12060(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

BOOL sub_254F0F518(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_254F28050();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_254EBED00(&qword_281427550, MEMORY[0x277D1EA20]);
  v30 = a2;
  v11 = sub_254F293F0();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_254F121C8(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_254EBED00(&qword_281427548, MEMORY[0x277D1EA20]);
    v17 = sub_254F29410();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

void sub_254F0F7E0()
{
  sub_254EC1A1C();
  sub_254EB5B48(v4);
  v5 = sub_254F28080();
  v6 = sub_254EB2E7C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_254EB6DD0();
  sub_254EC00C0();
  sub_254EBED00(v9, v10);
  sub_254EB4B70();
  sub_254EB6C90();
  while (1)
  {
    sub_254EB3D9C(v11);
    if (v12)
    {
      sub_254EB80E8();
      v16 = sub_254EB51F0();
      v17(v16);
      v18 = sub_254EB6968();
      sub_254F12478(v18, v19, v20);
      v21 = sub_254EB642C();
      v22(v21);
      goto LABEL_7;
    }

    v13 = sub_254EB7AC4();
    v3(v13);
    sub_254EC00C0();
    sub_254EBED00(&qword_281427530, v14);
    sub_254EB9990();
    v15 = sub_254EB49B4();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  v23 = sub_254EB5C14();
  v1(v23);
  v24 = sub_254EB7E8C();
  v3(v24);
LABEL_7:
  sub_254EB4078();
}

void sub_254F0F94C()
{
  sub_254EC1A1C();
  sub_254EB5B48(v4);
  v5 = sub_254F28750();
  v6 = sub_254EB2E7C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_254EB6DD0();
  sub_254EB3B08();
  sub_254EBED00(v9, v10);
  sub_254EB4B70();
  sub_254EB6C90();
  while (1)
  {
    sub_254EB3D9C(v11);
    if (v12)
    {
      sub_254EB80E8();
      v16 = sub_254EB51F0();
      v17(v16);
      v18 = sub_254EB6968();
      sub_254F12728(v18, v19, v20);
      v21 = sub_254EB642C();
      v22(v21);
      goto LABEL_7;
    }

    v13 = sub_254EB7AC4();
    v3(v13);
    sub_254EB3B08();
    sub_254EBED00(&qword_27F75F358, v14);
    sub_254EB9990();
    v15 = sub_254EB49B4();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  v23 = sub_254EB5C14();
  v1(v23);
  v24 = sub_254EB7E8C();
  v3(v24);
LABEL_7:
  sub_254EB4078();
}

void sub_254F0FAB8()
{
  sub_254EC1A1C();
  sub_254EB5B48(v4);
  v5 = sub_254F28CE0();
  v6 = sub_254EB2E7C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_254EB6DD0();
  sub_254EB814C();
  sub_254EBED00(v9, v10);
  sub_254EB4B70();
  sub_254EB6C90();
  while (1)
  {
    sub_254EB3D9C(v11);
    if (v12)
    {
      sub_254EB80E8();
      v16 = sub_254EB51F0();
      v17(v16);
      v18 = sub_254EB6968();
      sub_254F129D8(v18, v19, v20);
      v21 = sub_254EB642C();
      v22(v21);
      goto LABEL_7;
    }

    v13 = sub_254EB7AC4();
    v3(v13);
    sub_254EB814C();
    sub_254EBED00(&qword_281427490, v14);
    sub_254EB9990();
    v15 = sub_254EB49B4();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  v23 = sub_254EB5C14();
  v1(v23);
  v24 = sub_254EB7E8C();
  v3(v24);
LABEL_7:
  sub_254EB4078();
}

void sub_254F0FC24()
{
  sub_254EC1A1C();
  sub_254EB5B48(v4);
  v5 = sub_254F27C10();
  v6 = sub_254EB2E7C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_254EB6DD0();
  sub_254EC0124();
  sub_254EBED00(v9, v10);
  sub_254EB4B70();
  sub_254EB6C90();
  while (1)
  {
    sub_254EB3D9C(v11);
    if (v12)
    {
      sub_254EB80E8();
      v16 = sub_254EB51F0();
      v17(v16);
      v18 = sub_254EB6968();
      sub_254F12C88(v18, v19, v20);
      v21 = sub_254EB642C();
      v22(v21);
      goto LABEL_7;
    }

    v13 = sub_254EB7AC4();
    v3(v13);
    sub_254EC0124();
    sub_254EBED00(&qword_27F75F598, v14);
    sub_254EB9990();
    v15 = sub_254EB49B4();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  v23 = sub_254EB5C14();
  v1(v23);
  v24 = sub_254EB7E8C();
  v3(v24);
LABEL_7:
  sub_254EB4078();
}

BOOL sub_254F0FD90(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_254F286E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_254EBED00(&qword_281427500, MEMORY[0x277D85578]);
  v30 = a2;
  v11 = sub_254F293F0();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_254F12F38(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_254EBED00(&qword_2814274F8, MEMORY[0x277D85578]);
    v17 = sub_254F29410();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

BOOL sub_254F10058(void *a1, void *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_254F29450();
  sub_254F29BC0();
  sub_254F294C0();
  v6 = sub_254F29C00();

  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      v17 = *v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *v23;
      v19 = a2;
      sub_254F131E8(v19, v8, isUniquelyReferenced_nonNull_native);
      *v23 = v25;
      *a1 = v19;
      return v9 == 0;
    }

    v10 = *(*(v4 + 48) + 8 * v8);
    v11 = sub_254F29450();
    v13 = v12;
    if (v11 == sub_254F29450() && v13 == v14)
    {

      goto LABEL_12;
    }

    v16 = sub_254F29B10();

    if (v16)
    {
      break;
    }

    v6 = v8 + 1;
  }

LABEL_12:
  v20 = *(*(v4 + 48) + 8 * v8);
  *a1 = v20;
  v21 = v20;
  return v9 == 0;
}

uint64_t sub_254F101FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_254EC8BC0(&qword_27F75F4C8, &qword_254F2C790);
  result = sub_254F29910();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_254F09B78(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_254F29BC0();
    sub_254F294C0();
    result = sub_254F29C00();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_254F10458(uint64_t a1)
{
  v2 = v1;
  v41 = sub_254F28CA0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_254EC8BC0(&qword_27F75F5D0, &qword_254F2C798);
  result = sub_254F29910();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_254F09B78(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_254EBED00(&qword_2814274A8, MEMORY[0x277D1D4B0]);
    result = sub_254F293F0();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_254F107B0(uint64_t a1)
{
  v2 = v1;
  v41 = sub_254F28050();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_254EC8BC0(&unk_27F75F5C0, &unk_254F2C9B0);
  result = sub_254F29910();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_254F09B78(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_254EBED00(&qword_281427550, MEMORY[0x277D1EA20]);
    result = sub_254F293F0();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_254F10B08(uint64_t a1)
{
  v2 = v1;
  v41 = sub_254F28080();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_254EC8BC0(&qword_27F75F5B8, &qword_254F2C9A8);
  result = sub_254F29910();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_254F09B78(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_254EBED00(&qword_281427538, MEMORY[0x277D1EB58]);
    result = sub_254F293F0();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_254F10E60(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_254EC8BC0(&qword_27F75F610, &qword_254F2C9E8);
  result = sub_254F29910();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v9 = (v3 + 56);
  v8 = *(v3 + 56);
  v10 = 1 << *(v3 + 32);
  v26 = v2;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = result + 56;
  if ((v11 & v8) == 0)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    if (v10 >= 64)
    {
      sub_254F09B78(0, (v10 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v2 = v26;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 2 * (v14 | (v7 << 6)));
    result = MEMORY[0x259C2E320](*(v6 + 40), v17, 2);
    v18 = -1 << *(v6 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v6 + 48) + 2 * v21) = v17;
    ++*(v6 + 16);
    if (!v12)
    {
      goto LABEL_9;
    }
  }

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
    v25 = *(v13 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_254F11088(uint64_t a1)
{
  v2 = v1;
  v41 = sub_254F28750();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_254EC8BC0(&qword_27F75F5B0, &qword_254F2C9A0);
  result = sub_254F29910();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_254F09B78(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_254EBED00(&qword_2814274F0, MEMORY[0x277D1D330]);
    result = sub_254F293F0();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_254F113E0(uint64_t a1)
{
  v2 = v1;
  v41 = sub_254F28CE0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_254EC8BC0(&qword_27F75F5A8, &qword_254F2C998);
  result = sub_254F29910();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_254F09B78(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_254EBED00(&qword_281427498, MEMORY[0x277D1D4C8]);
    result = sub_254F293F0();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_254F11738(uint64_t a1)
{
  v2 = v1;
  v41 = sub_254F27C10();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_254EC8BC0(&qword_27F75F5A0, "4:");
  result = sub_254F29910();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_254F09B78(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_254EBED00(&qword_27F75F590, MEMORY[0x277D744F8]);
    result = sub_254F293F0();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_254F11A90(uint64_t a1)
{
  v2 = v1;
  v41 = sub_254F286E0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_254EC8BC0(&unk_27F75F580, &unk_254F2C840);
  result = sub_254F29910();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_254F09B78(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_254EBED00(&qword_281427500, MEMORY[0x277D85578]);
    result = sub_254F293F0();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_254F11DE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_254EC8BC0(&qword_27F75F618, qword_254F2C9F0);
  result = sub_254F29910();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v29 = v2;
  v30 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_254F09B78(0, (v28 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_254F29450();
    sub_254F29BC0();
    sub_254F294C0();
    v19 = sub_254F29C00();

    v20 = -1 << *(v6 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v6 + 48) + 8 * v23) = v17;
    ++*(v6 + 16);
    v3 = v30;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

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
    v27 = *(v13 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_254F12060(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_254F101FC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_254F139AC(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_254F29BC0();
      sub_254F294C0();
      result = sub_254F29C00();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_254F29B10() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_254F133B8();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_254F29B40();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_254F121C8(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_254F28050();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_254F107B0(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_254F13EF8(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_254EBED00(&qword_281427550, MEMORY[0x277D1EA20]);
      v15 = sub_254F293F0();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_254EBED00(&qword_281427548, MEMORY[0x277D1EA20]);
        v17 = sub_254F29410();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_254F13650();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_254F29B40();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_254F12478(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_254F28080();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_254F10B08(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_254F14210(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_254EBED00(&qword_281427538, MEMORY[0x277D1EB58]);
      v15 = sub_254F293F0();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_254EBED00(&qword_281427530, MEMORY[0x277D1EB58]);
        v17 = sub_254F29410();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_254F13650();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_254F29B40();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_254F12728(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_254F28750();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_254F11088(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_254F14718(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_254EBED00(&qword_2814274F0, MEMORY[0x277D1D330]);
      v15 = sub_254F293F0();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_254EBED00(&qword_27F75F358, MEMORY[0x277D1D330]);
        v17 = sub_254F29410();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_254F13650();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_254F29B40();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_254F129D8(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_254F28CE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_254F113E0(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_254F14A30(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_254EBED00(&qword_281427498, MEMORY[0x277D1D4C8]);
      v15 = sub_254F293F0();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_254EBED00(&qword_281427490, MEMORY[0x277D1D4C8]);
        v17 = sub_254F29410();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_254F13650();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_254F29B40();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_254F12C88(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_254F27C10();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_254F11738(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_254F14D48(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_254EBED00(&qword_27F75F590, MEMORY[0x277D744F8]);
      v15 = sub_254F293F0();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_254EBED00(&qword_27F75F598, MEMORY[0x277D744F8]);
        v17 = sub_254F29410();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_254F13650();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_254F29B40();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_254F12F38(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_254F286E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_254F11A90(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_254F15060(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_254EBED00(&qword_281427500, MEMORY[0x277D85578]);
      v15 = sub_254F293F0();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_254EBED00(&qword_2814274F8, MEMORY[0x277D85578]);
        v17 = sub_254F29410();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_254F13650();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_254F29B40();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_254F131E8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_254F11DE8(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_254F15378(v7 + 1);
LABEL_10:
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_254F29450();
      sub_254F29BC0();
      sub_254F294C0();
      v15 = sub_254F29C00();

      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for NLTagScheme(0);
        v17 = *(*(v13 + 48) + 8 * a2);
        v18 = sub_254F29450();
        v20 = v19;
        if (v18 == sub_254F29450() && v20 == v21)
        {
          goto LABEL_19;
        }

        v23 = sub_254F29B10();

        if (v23)
        {
          goto LABEL_20;
        }

        v15 = a2 + 1;
      }
    }

    result = sub_254F1385C();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v9 + 48) + 8 * a2) = v6;
  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_19:

LABEL_20:
    result = sub_254F29B40();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v12;
  }

  return result;
}

void *sub_254F133B8()
{
  v1 = v0;
  sub_254EC8BC0(&qword_27F75F4C8, &qword_254F2C790);
  v2 = *v0;
  v3 = sub_254F29900();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_254F13510()
{
  v1 = v0;
  sub_254EC8BC0(&qword_27F75F610, &qword_254F2C9E8);
  v2 = *v0;
  v3 = sub_254F29900();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_254F13650()
{
  sub_254EC1A1C();
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v8 = v7(0);
  v9 = sub_254EB2E7C(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v31 - v14;
  sub_254EC8BC0(v5, v3);
  v16 = *v0;
  v17 = sub_254F29900();
  v18 = v17;
  if (*(v16 + 16))
  {
    v32 = v6;
    v19 = (v17 + 56);
    v20 = ((1 << *(v18 + 32)) + 63) >> 6;
    if (v18 != v16 || v19 >= v16 + 56 + 8 * v20)
    {
      memmove(v19, (v16 + 56), 8 * v20);
    }

    v22 = 0;
    *(v18 + 16) = *(v16 + 16);
    v23 = 1 << *(v16 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v16 + 56);
    v26 = (v23 + 63) >> 6;
    v33 = v11 + 32;
    v34 = v11 + 16;
    while (v25)
    {
      sub_254EB82E4();
LABEL_17:
      v30 = *(v11 + 72) * (v27 | (v22 << 6));
      (*(v11 + 16))(v15, *(v16 + 48) + v30, v1);
      (*(v11 + 32))(*(v18 + 48) + v30, v15, v1);
    }

    v28 = v22;
    while (1)
    {
      v22 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v22 >= v26)
      {

        v6 = v32;
        goto LABEL_21;
      }

      v29 = *(v16 + 56 + 8 * v22);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v25 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v18;
    sub_254EB4078();
  }
}

id sub_254F1385C()
{
  v1 = v0;
  sub_254EC8BC0(&qword_27F75F618, qword_254F2C9F0);
  v2 = *v0;
  v3 = sub_254F29900();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_254F139AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_254EC8BC0(&qword_27F75F4C8, &qword_254F2C790);
  result = sub_254F29910();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_254F29BC0();

        sub_254F294C0();
        result = sub_254F29C00();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

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
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_254F13BE0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_254F28CA0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_254EC8BC0(&qword_27F75F5D0, &qword_254F2C798);
  v10 = sub_254F29910();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_254EBED00(&qword_2814274A8, MEMORY[0x277D1D4B0]);
        result = sub_254F293F0();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_254F13EF8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_254F28050();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_254EC8BC0(&unk_27F75F5C0, &unk_254F2C9B0);
  v10 = sub_254F29910();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_254EBED00(&qword_281427550, MEMORY[0x277D1EA20]);
        result = sub_254F293F0();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_254F14210(uint64_t a1)
{
  v2 = v1;
  v37 = sub_254F28080();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_254EC8BC0(&qword_27F75F5B8, &qword_254F2C9A8);
  v10 = sub_254F29910();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_254EBED00(&qword_281427538, MEMORY[0x277D1EB58]);
        result = sub_254F293F0();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_254F14528(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_254EC8BC0(&qword_27F75F610, &qword_254F2C9E8);
  result = sub_254F29910();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 2 * (v13 | (v7 << 6)));
        result = MEMORY[0x259C2E320](*(v6 + 40), v16, 2);
        v17 = -1 << *(v6 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v6 + 48) + 2 * v20) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_25;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_254F14718(uint64_t a1)
{
  v2 = v1;
  v37 = sub_254F28750();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_254EC8BC0(&qword_27F75F5B0, &qword_254F2C9A0);
  v10 = sub_254F29910();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_254EBED00(&qword_2814274F0, MEMORY[0x277D1D330]);
        result = sub_254F293F0();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_254F14A30(uint64_t a1)
{
  v2 = v1;
  v37 = sub_254F28CE0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_254EC8BC0(&qword_27F75F5A8, &qword_254F2C998);
  v10 = sub_254F29910();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_254EBED00(&qword_281427498, MEMORY[0x277D1D4C8]);
        result = sub_254F293F0();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_254F14D48(uint64_t a1)
{
  v2 = v1;
  v37 = sub_254F27C10();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_254EC8BC0(&qword_27F75F5A0, "4:");
  v10 = sub_254F29910();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_254EBED00(&qword_27F75F590, MEMORY[0x277D744F8]);
        result = sub_254F293F0();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_254F15060(uint64_t a1)
{
  v2 = v1;
  v37 = sub_254F286E0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_254EC8BC0(&unk_27F75F580, &unk_254F2C840);
  v10 = sub_254F29910();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_254EBED00(&qword_281427500, MEMORY[0x277D85578]);
        result = sub_254F293F0();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_254F15378(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_254EC8BC0(&qword_27F75F618, qword_254F2C9F0);
  result = sub_254F29910();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
        v18 = *(v6 + 40);
        sub_254F29450();
        sub_254F29BC0();
        v19 = v17;
        sub_254F294C0();
        v20 = sub_254F29C00();

        v21 = -1 << *(v6 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        *(*(v6 + 48) + 8 * v24) = v19;
        ++*(v6 + 16);
        v3 = v30;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v13 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_254F155C8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 - 1 <= 1)
  {
  }

  return result;
}

uint64_t sub_254F155E0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
  v24 = v2;
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_10:
      while (2)
      {
        if (!*(a1 + 16))
        {

          return 0;
        }

        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = (*(v2 + 48) + ((v11 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];
        v17 = *(a1 + 40);
        sub_254F29BC0();

        sub_254F294C0();
        v18 = sub_254F29C00();
        v19 = ~(-1 << *(a1 + 32));
        do
        {
          v20 = v18 & v19;
          if (((*(v9 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
          {

            return 0;
          }

          v21 = (*(a1 + 48) + 16 * v20);
          if (*v21 == v16 && v21[1] == v15)
          {
            break;
          }

          v23 = sub_254F29B10();
          v18 = v20 + 1;
        }

        while ((v23 & 1) == 0);

        v2 = v24;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_254F157A0(uint64_t a1, void *a2)
{
  sub_254EC8BC0(&unk_27F75F570, &qword_254F2C938);
  v3 = sub_254F29550();

  [a2 setEntityFilters_];
}

void sub_254F15820()
{
  sub_254F28270();
  if (v0 <= 0x3F)
  {
    sub_254EB48D8(319, &qword_2814260D8, 0x277D55D38);
    if (v1 <= 0x3F)
    {
      sub_254EB48D8(319, &qword_2814260F0, 0x277D55D40);
      if (v2 <= 0x3F)
      {
        sub_254F1590C();
        if (v3 <= 0x3F)
        {
          sub_254F1595C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_254F1590C()
{
  if (!qword_281426118)
  {
    v0 = sub_254F29810();
    if (!v1)
    {
      atomic_store(v0, &qword_281426118);
    }
  }
}

void sub_254F1595C()
{
  if (!qword_281426120)
  {
    v0 = sub_254F296A0();
    if (!v1)
    {
      atomic_store(v0, &qword_281426120);
    }
  }
}

uint64_t sub_254F159D0(void *a1)
{
  v1 = [a1 preferredName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_254F29450();

  return v3;
}

uint64_t sub_254F15A34(void *a1)
{
  v1 = [a1 allMetaContent];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_254EC8BC0(&qword_27F75F5E8, &unk_254F2C9D0);
  v3 = sub_254F29560();

  return v3;
}

uint64_t sub_254F15AA0(uint64_t a1)
{
  v2 = sub_254EC8BC0(&qword_27F75F5E0, &unk_254F2C9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_254F15B08()
{
  result = qword_27F75F600;
  if (!qword_27F75F600)
  {
    sub_254EDEFE4(&qword_27F75F5F8, &qword_254F2C9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75F600);
  }

  return result;
}

uint64_t TextEntityDetectorProtocol.detectEntitiesWithLogging(text:appBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = a6;
  v64 = a5;
  v61 = a3;
  v62 = a4;
  v66 = a1;
  v67 = a2;
  v72 = sub_254F29A20();
  v6 = sub_254EB2CBC(v72);
  v71 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_254EB3AB8();
  v68 = v11 - v10;
  v12 = sub_254F29A40();
  v13 = sub_254EB2CBC(v12);
  v69 = v14;
  v70 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_254EB3AB8();
  v65 = v18 - v17;
  v19 = sub_254F29140();
  v20 = sub_254EB2CBC(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v20);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v58 - v28;
  v30 = sub_254F29170();
  v31 = sub_254EB2CBC(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v31);
  v38 = &v58 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v58 - v39;
  sub_254F280C0();
  sub_254F280C0();
  sub_254F29160();
  sub_254F29120();
  v59 = *(v33 + 8);
  v60 = v30;
  v59(v38, v30);
  v41 = sub_254F29160();
  v42 = sub_254F297A0();
  if (sub_254F29800())
  {
    v43 = swift_slowAlloc();
    v58 = v19;
    v44 = v43;
    *v43 = 0;
    v45 = sub_254F29130();
    _os_signpost_emit_with_name_impl(&dword_254EAE000, v41, v42, v45, "UIContext.TextEntityDetector", "", v44, 2u);
    v46 = v44;
    v19 = v58;
    MEMORY[0x259C2EB80](v46, -1, -1);
  }

  (*(v22 + 16))(v27, v29, v19);
  v47 = sub_254F291B0();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v50 = sub_254F291A0();
  (*(v22 + 8))(v29, v19);
  v59(v40, v60);
  v51 = v65;
  sub_254F29A30();
  v52 = v68;
  sub_254F29A00();
  v54 = v66;
  v53 = v67;
  v55 = v64;
  v56 = (*(v63 + 16))(v66, v67, v61, v62, v64, v63);
  sub_254F15FF0("UIContext.TextEntityDetector", 28, 2, v50, v54, v53, v52, v51, v55);

  (*(v71 + 8))(v52, v72);
  (*(v69 + 8))(v51, v70);
  return v56;
}

void sub_254F15FD0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_254EF5130();
}

uint64_t sub_254F15FF0(const char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v72 = sub_254F29A20();
  v9 = sub_254EB2CBC(v72);
  v71 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_254EB3AB8();
  v70 = v14 - v13;
  v66 = sub_254F29180();
  v15 = sub_254EB2CBC(v66);
  v65 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_254EB3AB8();
  v21 = v20 - v19;
  v22 = sub_254F29140();
  v23 = sub_254EB2CBC(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  sub_254EB3AB8();
  v30 = v29 - v28;
  v31 = sub_254F29170();
  v32 = sub_254EB2CBC(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  sub_254EB3AB8();
  v39 = v38 - v37;
  sub_254F280C0();
  v40 = sub_254F29160();
  sub_254F29190();
  v67 = sub_254F29790();
  result = sub_254F29800();
  if ((result & 1) == 0)
  {

    (*(v25 + 8))(v30, v22);
    (*(v34 + 8))(v39, v31);
    v44 = a9;
LABEL_14:
    type metadata accessor for Analytics();
    sub_254EC8BC0(&qword_27F75EFA8, &qword_254F2BA60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_254F2B4D0;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x8000000254F2E2F0;
    *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    *(inited + 56) = 0xD000000000000013;
    *(inited + 64) = 0x8000000254F2E310;
    sub_254EB48D8(0, &qword_281426030, 0x277CCACA8);
    v75 = v44;
    swift_getMetatypeMetadata();
    sub_254F29480();
    *(inited + 72) = sub_254EF3180();
    *(inited + 80) = 0x79636E6574616CLL;
    *(inited + 88) = 0xE700000000000000;
    sub_254F29A00();
    sub_254F29A10();
    (*(v71 + 8))(v70, v72);
    v57 = sub_254F29C10();
    v59 = v57 * 1000.0 + v58 * 1.0e-15;
    v60 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    *&v61 = v59;
    *(inited + 96) = [v60 initWithFloat_];
    sub_254EB48D8(0, &qword_281426038, 0x277D82BB8);
    v62 = sub_254F293D0();
    static Analytics.sendEventForProduction(eventName:prefix:eventPayload:)(0x6544797469746E45, 0xEF6E6F6974636574, 0, 0, v62);
  }

  v63 = v31;
  v64 = v22;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      v42 = v25;
      v43 = v34;
LABEL_10:

      sub_254F291C0();

      v45 = v40;
      if ((*(v65 + 88))(v21, v66) == *MEMORY[0x277D85B00])
      {
        v46 = 0;
        v69 = "[Error] Interval already ended";
      }

      else
      {
        (*(v65 + 8))(v21, v66);
        v69 = "EntityDetector=%{signpost.telemetry:string1,public}s %s";
        v46 = 2;
      }

      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v75 = v48;
      *v47 = v46;
      *(v47 + 1) = v46;
      *(v47 + 2) = 2082;
      v44 = a9;
      swift_getMetatypeMetadata();
      v49 = sub_254F29480();
      v51 = sub_254EC2D74(v49, v50, &v75);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2080;
      sub_254F280B0();
      v52 = sub_254F29950();
      v54 = sub_254EC2D74(v52, v53, &v75);

      *(v47 + 14) = v54;
      v55 = sub_254F29130();
      _os_signpost_emit_with_name_impl(&dword_254EAE000, v45, v67, v55, a1, v69, v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C2EB80](v48, -1, -1);
      MEMORY[0x259C2EB80](v47, -1, -1);

      (*(v42 + 8))(v30, v64);
      (*(v43 + 8))(v39, v63);
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (a1 >> 32)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      v42 = v25;
      v43 = v34;
      a1 = &v74;
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_254F16790(uint64_t a1)
{
  v2 = sub_254F28CE0();
  v3 = sub_254EB2CBC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_254EB2E04();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v17 = *(v5 + 16);
    v15 = v5 + 16;
    v16 = v17;
    v18 = (*(v15 + 64) + 32) & ~*(v15 + 64);
    v22[1] = a1;
    v19 = a1 + v18;
    v20 = *(v15 + 56);
    do
    {
      v16(v10, v19, v2);
      sub_254F0FAB8();
      (*(v15 - 8))(v13, v2);
      v19 += v20;
      --v14;
    }

    while (v14);

    sub_254EB4078();
  }

  else
  {
    sub_254EB4078();
  }
}

uint64_t UIEntityDetector.__allocating_init(entityTypes:)()
{
  v0 = swift_allocObject();
  UIEntityDetector.init(entityTypes:)();
  return v0;
}

uint64_t sub_254F16938()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_254F16970()
{
  v1 = MEMORY[0x277D84FA0];
  v13 = MEMORY[0x277D84FA0];
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    v5 = *(v0 + 16);

    do
    {
      sub_254EB5C9C(v4, v10);
      v6 = v11;
      v7 = v12;
      sub_254EB5A9C(v10, v11);
      v8 = (*(v7 + 8))(v6, v7);
      sub_254EB2BBC(v10);
      sub_254EBEFEC(v8, MEMORY[0x277D1D4B0], sub_254EC3930);
      v4 += 40;
      --v3;
    }

    while (v3);

    return v13;
  }

  return v1;
}

uint64_t UIEntityDetector.UIEntityDetectorError.hashValue.getter()
{
  v1 = *v0;
  sub_254F29BC0();
  MEMORY[0x259C2E340](v1);
  return sub_254F29C00();
}

uint64_t UIEntityDetector.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t UIEntityDetector.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_254F16D08(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_254F29580();
  }

  return result;
}

uint64_t sub_254F16DAC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_254F29AA0();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_254F29970();
  *v1 = result;
  return result;
}