char *sub_1D10912D0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, id *, uint64_t *))
{
  v3 = MEMORY[0x1E69E7CC0];
  sub_1D109AD94(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);

  if (v4)
  {
    v5 = 0;
    v6 = (a1 + 80);
    v7 = MEMORY[0x1E69E7CC0];
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      v24 = v4;
      v25 = v5;
      v8 = *(v6 - 5);
      v9 = *(v6 - 3);
      v22 = *(v6 - 4);
      v23 = *(v6 - 6);
      v21 = *(v6 - 8);
      v10 = *v6;
      v11 = *(v6 - 2);
      swift_bridgeObjectRetain_n();
      v12 = v8;
      swift_bridgeObjectRetain_n();
      v13 = v9;
      swift_bridgeObjectRetain_n();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1D10F7A54(0, *(v7 + 2) + 1, 1, v7);
      }

      v15 = *(v3 + 2);
      v14 = *(v3 + 3);
      v16 = v3;
      if (v15 >= v14 >> 1)
      {
        v16 = sub_1D10F7A54((v14 > 1), v15 + 1, 1, v3);
      }

      v6 += 7;
      *(v16 + 2) = v15 + 1;
      v17 = &v16[48 * v15];
      *(v17 + 4) = v23;
      *(v17 + 5) = v12;
      *(v17 + 6) = v22;
      *(v17 + 7) = v13;
      *(v17 + 8) = v11;
      v17[72] = v21;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5 = v25;
      sub_1D10914EC(v10, sub_1D1091954, 0, isUniquelyReferenced_nonNull_native, a2);
      v3 = v16;

      v7 = v16;
      v4 = v24 - 1;
    }

    while (v24 != 1);
  }

  return v3;
}

void sub_1D10914EC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void (*a5)(uint64_t *__return_ptr, id *, uint64_t *))
{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v48 = v10;
  for (i = v6; ; v6 = i)
  {
    if (!v9)
    {
      v20 = v11;
      while (1)
      {
        v19 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v19 >= v10)
        {
          sub_1D102CC30();

          return;
        }

        v18 = *(v6 + 8 * v19);
        ++v20;
        if (v18)
        {
          v53 = a4;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      sub_1D13916CC();
      __break(1u);
      goto LABEL_33;
    }

    v53 = a4;
    v18 = v9;
    v19 = v11;
LABEL_15:
    v21 = (v19 << 10) | (16 * __clz(__rbit64(v18)));
    v22 = (*(a1 + 48) + v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = (*(a1 + 56) + v21);
    v26 = *v25;
    v27 = v25[1];
    v61 = v23;
    v62 = v24;
    v63 = v26;
    v64 = v27;

    a2(&v57, &v61);

    v29 = v57;
    v28 = v58;
    v31 = v59;
    v30 = v60;
    v61 = v57;
    v62 = v58;
    v57 = v59;
    v58 = v60;
    v32 = *v65;
    v34 = sub_1D11362EC(v29, v62);
    v35 = v32[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_30;
    }

    v38 = v33;
    if (v32[3] < v37)
    {
      break;
    }

    if (v53)
    {
      if (v33)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1D1180D10();
      if (v38)
      {
        goto LABEL_22;
      }
    }

LABEL_5:
    v12 = *v65;
    v12[(v34 >> 6) + 8] |= 1 << v34;
    v13 = (v12[6] + 16 * v34);
    *v13 = v29;
    v13[1] = v28;
    v14 = (v12[7] + 16 * v34);
    *v14 = v31;
    v14[1] = v30;
    v15 = v12[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      goto LABEL_31;
    }

    v12[2] = v17;
LABEL_7:
    v9 = (v18 - 1) & v18;
    a4 = 1;
    v11 = v19;
    v10 = v48;
  }

  sub_1D11797AC(v37, v53 & 1);
  v39 = sub_1D11362EC(v29, v28);
  if ((v38 & 1) != (v40 & 1))
  {
    goto LABEL_32;
  }

  v34 = v39;
  if ((v38 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_22:
  v41 = *v65;
  v42 = *(*v65 + 56) + 16 * v34;
  v43 = *(v42 + 8);
  v54[0] = *v42;
  v54[1] = v43;

  a5(&v55, v54, &v57);
  if (!v52)
  {

    v44 = (v41[7] + 16 * v34);
    v45 = v56;
    *v44 = v55;
    v44[1] = v45;

    goto LABEL_7;
  }

  v54[0] = v52;
  v46 = v52;
  sub_1D10922EC();
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1D102CC30();

    return;
  }

LABEL_33:
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_1D13911EC();
  MEMORY[0x1D3885C10](0xD00000000000001BLL, 0x80000001D13B9110);
  sub_1D139133C();
  MEMORY[0x1D3885C10](39, 0xE100000000000000);
  sub_1D13913BC();
  __break(1u);
}

uint64_t sub_1D1091948@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D1091954@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_1D109199C(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1D1092228(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v64 = &v60 - v6;
  v7 = sub_1D138D57C();
  v66 = *(v7 - 8);
  v67 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D138D75C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1092228(0, &qword_1EC60E4E0, MEMORY[0x1E6969AE8], v4);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v60 - v14;
  v16 = sub_1D138D18C();
  v68 = *(v16 - 8);
  v69 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = MEMORY[0x1EEE9AC00](v18).n128_u64[0];
  v21 = &v60 - v20;
  v22 = [a1 dateOfBirthComponents];
  sub_1D138D10C();

  v62 = _s13ConfigurationVMa();
  v23 = *(v62 + 48);
  v24 = sub_1D138D76C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 16);
  v63 = a2;
  v26(v15, a2 + v23, v24);
  (*(v25 + 56))(v15, 0, 1, v24);
  sub_1D138D17C();
  v27 = *MEMORY[0x1E6969A68];
  v28 = *(v10 + 104);
  v28(v12, v27, v9);
  v29 = sub_1D138D15C();
  LOBYTE(v25) = v30;
  v60 = v10;
  v31 = *(v10 + 8);
  v31(v12, v9);
  if ((v25 & 1) == 0 && v29 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v28(v12, *MEMORY[0x1E6969A78], v9);
    v32 = sub_1D138D15C();
    v34 = v33;
    v31(v12, v9);
    if ((v34 & 1) == 0 && v32 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v28(v12, *MEMORY[0x1E6969A48], v9);
      v35 = sub_1D138D15C();
      v37 = v36;
      v31(v12, v9);
      if ((v37 & 1) == 0 && v35 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v38 = v64;
        sub_1D138D12C();
        v40 = v66;
        v39 = v67;
        if ((*(v66 + 48))(v38, 1, v67) == 1)
        {
          sub_1D109228C(v38, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D1092228);
        }

        else
        {
          (*(v40 + 32))(v65, v38, v39);
          sub_1D1092228(0, &qword_1EC609C80, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
          v41 = (*(v60 + 80) + 32) & ~*(v60 + 80);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_1D139E700;
          v28((v42 + v41), v27, v9);
          sub_1D1265AC0(v42);
          swift_setDeallocating();
          v31((v42 + v41), v9);
          v43 = v65;
          swift_deallocClassInstance();
          v44 = v62;
          v45 = v63;
          v46 = v61;
          sub_1D138D6BC();

          v47 = sub_1D138D13C();
          LOBYTE(v42) = v48;
          v49 = v69;
          v50 = *(v68 + 1);
          v50(v46, v69);
          if ((v42 & 1) == 0)
          {
            v53 = *(v44 + 24);
            v68 = v50;
            v54 = *(v45 + v53);
            v55 = sub_1D138D4EC();
            v56 = [v54 stringFromDate_];

            v57 = sub_1D139016C();
            v59 = v58;

            v51 = sub_1D11F4B84(v57, v59, v47, v45 + *(v44 + 36));

            (*(v66 + 8))(v43, v67);
            v68(v21, v49);
            return v51;
          }

          (*(v66 + 8))(v43, v67);
        }
      }
    }
  }

  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v51 = sub_1D138D1CC();
  (*(v68 + 1))(v21, v69);
  return v51;
}

uint64_t sub_1D1092140@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = a1[1];
  sub_1D109515C(0, &qword_1EC609C70, &_s13HealthKitDataVN, _s7PDFDataVMa);
  result = sub_1D11F4E38(v5, v6, v4 + *(v7 + 28));
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t sub_1D10921C4(uint64_t a1, uint64_t a2)
{
  v4 = _s13ConfigurationVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D1092228(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D109228C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1D10922EC()
{
  result = qword_1EE06B690;
  if (!qword_1EE06B690)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE06B690);
  }

  return result;
}

uint64_t sub_1D1092358@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_1D109238C(uint64_t a1, uint64_t a2)
{
  v4 = _s13ConfigurationVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_1D1092410@<Q0>(uint64_t a1@<X8>)
{
  (*(v1 + 16))(v5);
  v3 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v6;
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  return result;
}

double sub_1D1092488@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(v5);
  v3 = v5[1];
  *a1 = v5[0];
  a1[1] = v3;
  result = *&v6;
  a1[2] = v6;
  return result;
}

double sub_1D1092500@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s13ConfigurationVMa() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  *&result = sub_1D109062C(a1, v6, a2).n128_u64[0];
  return result;
}

__n128 sub_1D1092580@<Q0>(uint64_t a1@<X8>)
{
  (*(v1 + 16))(v5);
  v3 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v5[4];
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t objectdestroy_5Tm()
{
  v1 = (_s13ConfigurationVMa() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((v3 + *(*v1 + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_1D138D76C();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = v1[7];
  v9 = sub_1D138D57C();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  v10 = v1[11];
  v11 = sub_1D138D67C();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  v7(v5 + v1[14], v6);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1D10927CC(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(_s13ConfigurationVMa() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = ((v6 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v6);
  v9 = v2 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = *(v2 + v7);
  v13 = *(v2 + v7 + 8);

  return a2(a1, v2 + v5, v8, v10, v11, v12, v13);
}

uint64_t sub_1D1092890(uint64_t a1)
{
  v2 = _s13ConfigurationVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D10928EC(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v41 = MEMORY[0x1E69E7CC8];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  v3 = &qword_1EC609D58;
  for (i = (a1 + 32); ; i = (i + 72))
  {
    v9 = i[1];
    v36 = *i;
    v37 = v9;
    v10 = i[3];
    v38 = i[2];
    v39 = v10;
    v40 = *(i + 8);
    v42 = v36;
    *&v43 = v9;
    BYTE8(v43) = BYTE8(v9);
    v44 = v38;
    sub_1D1094054(&v36, v35, v3);

    v12 = sub_1D129DE20(&v42);
    v13 = v1[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      break;
    }

    v16 = v11;
    if (v1[3] < v15)
    {
      sub_1D117B78C(v15, 1);
      v1 = v41;
      v17 = sub_1D129DE20(&v42);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_19;
      }

      v12 = v17;
    }

    if (v16)
    {
      v19 = v3;

      v20 = v1[7];
      v21 = *(v20 + 8 * v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 8 * v12) = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_1D10F7CB8(0, v21[2] + 1, 1, v21);
        *(v20 + 8 * v12) = v21;
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v21 = sub_1D10F7CB8((v23 > 1), v24 + 1, 1, v21);
        *(v20 + 8 * v12) = v21;
      }

      v3 = v19;
      v21[2] = v24 + 1;
      v5 = &v21[9 * v24];
      *(v5 + 2) = v36;
      v6 = v37;
      v7 = v38;
      v8 = v39;
      v5[12] = v40;
      *(v5 + 4) = v7;
      *(v5 + 5) = v8;
      *(v5 + 3) = v6;
    }

    else
    {
      sub_1D109347C(0, &qword_1EC609D60, v3);
      v25 = swift_allocObject();
      v26 = v36;
      v27 = v37;
      *(v25 + 16) = xmmword_1D139E700;
      *(v25 + 32) = v26;
      v28 = v39;
      *(v25 + 64) = v38;
      *(v25 + 80) = v28;
      *(v25 + 96) = v40;
      *(v25 + 48) = v27;
      v1[(v12 >> 6) + 8] |= 1 << v12;
      v29 = (v1[6] + 48 * v12);
      v30 = v44;
      v29[1] = v43;
      v29[2] = v30;
      *v29 = v42;
      *(v1[7] + 8 * v12) = v25;
      v31 = v1[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_18;
      }

      v1[2] = v33;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1D13916CC();
  __break(1u);
  return result;
}

uint64_t sub_1D1092BA8(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v33 = MEMORY[0x1E69E7CC8];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 56); ; i += 4)
  {
    v6 = *(i - 3);
    v5 = *(i - 2);
    v7 = *(i - 1);
    v8 = *i;
    swift_bridgeObjectRetain_n();

    v10 = sub_1D11362EC(v6, v5);
    v11 = v1[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (v1[3] < v13)
    {
      sub_1D117B774(v13, 1);
      v1 = v33;
      v15 = sub_1D11362EC(v6, v5);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

      v10 = v15;
    }

    if (v14)
    {
      v31 = v2;

      v17 = v1[7];
      v18 = *(v17 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v17;
      *(v17 + 8 * v10) = v18;
      v32 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_1D10F7B88(0, v18[2] + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      v21 = v18[2];
      v20 = v18[3];
      v22 = v21 + 1;
      v2 = v31;
      if (v21 >= v20 >> 1)
      {
        v23 = sub_1D10F7B88((v20 > 1), v21 + 1, 1, v18);
        v22 = v21 + 1;
        v18 = v23;
        *(v30 + 8 * v10) = v23;
      }

      v18[2] = v22;
      v4 = &v18[4 * v21];
      v4[4] = v6;
      v4[5] = v5;
      v4[6] = v32;
      v4[7] = v8;
    }

    else
    {
      sub_1D109347C(0, &qword_1EC609C98, &qword_1EC609CA0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1D139E700;
      *(v24 + 32) = v6;
      *(v24 + 40) = v5;
      *(v24 + 48) = v7;
      *(v24 + 56) = v8;
      v1[(v10 >> 6) + 8] |= 1 << v10;
      v25 = (v1[6] + 16 * v10);
      *v25 = v6;
      v25[1] = v5;
      *(v1[7] + 8 * v10) = v24;
      v26 = v1[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_18;
      }

      v1[2] = v28;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1D13916CC();
  __break(1u);
  return result;
}

uint64_t sub_1D1092DF8(void *a1, uint64_t a2)
{
  v42 = a2;
  v3 = sub_1D138F0BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D138D18C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D138D57C();
  v12 = *(v11 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 meaningfulDate];
  if (!v16)
  {
    return 0;
  }

  v35 = v4;
  v36 = v3;
  v38 = v12;
  v39 = v11;
  v40 = v8;
  v41 = v7;
  v17 = v16;
  sub_1D138D52C();

  v37 = *(_s13ConfigurationVMa() + 48);
  sub_1D1092228(0, &qword_1EC609C80, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v18 = sub_1D138D75C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D139EAB0;
  v23 = v22 + v21;
  v24 = *(v19 + 104);
  v24(v23, *MEMORY[0x1E6969A68], v18);
  v24(v23 + v20, *MEMORY[0x1E6969A78], v18);
  v24(v23 + 2 * v20, *MEMORY[0x1E6969A48], v18);
  sub_1D1265AC0(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D138D6CC();

  v25 = sub_1D138D13C();
  if (v26 & 1) != 0 || (v27 = v25, sub_1D138D14C(), (v28) || (sub_1D138D11C(), (v29))
  {
    sub_1D138F06C();
    v30 = sub_1D138F0AC();
    v31 = sub_1D13907DC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1D101F000, v30, v31, "[PDF]: Missing required date components.", v32, 2u);
      MEMORY[0x1D38882F0](v32, -1, -1);
    }

    (*(v35 + 8))(v6, v36);
    v27 = 0;
  }

  v33 = v39;
  (*(v40 + 8))(v10, v41);
  (*(v38 + 8))(v15, v33);
  return v27;
}

uint64_t sub_1D1093304(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_1D1095090(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D10933C4(uint64_t a1, unint64_t *a2)
{
  sub_1D1095090(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D1093420()
{
  if (!qword_1EC609C90)
  {
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609C90);
    }
  }
}

void sub_1D109347C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D10951AC(255, a3);
    v4 = sub_1D13915DC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D10934D8(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v54 = MEMORY[0x1E69E7CC8];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 80); ; i = (i + 120))
  {
    v11 = *(i - 3);
    v12 = *(i - 1);
    v13 = *i;
    v45 = *(i - 2);
    v46 = v12;
    v44 = v11;
    v14 = i[1];
    v15 = i[3];
    v49 = i[2];
    v50 = v15;
    v17 = *i;
    v16 = i[1];
    v47 = v13;
    v48 = v16;
    v55 = v44;
    v51 = *(i + 64);
    *&v56 = v45;
    BYTE8(v56) = BYTE8(v45);
    v57 = v46;
    v53 = *(i + 64);
    v52[0] = v17;
    v52[1] = v14;
    v18 = i[3];
    v52[2] = v49;
    v52[3] = v18;
    sub_1D1094054(&v44, v43, &qword_1EC609D28);
    sub_1D1095034(&v47, v43);
    sub_1D1095108(v52);

    v20 = sub_1D129DE20(&v55);
    v21 = v1[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      break;
    }

    v24 = v19;
    if (v1[3] < v23)
    {
      sub_1D117B7A4(v23, 1);
      v1 = v54;
      v25 = sub_1D129DE20(&v55);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_19;
      }

      v20 = v25;
    }

    if (v24)
    {

      v27 = v1[7];
      v28 = *(v27 + 8 * v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v27 + 8 * v20) = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_1D10F7E08(0, v28[2] + 1, 1, v28);
        *(v27 + 8 * v20) = v28;
      }

      v31 = v28[2];
      v30 = v28[3];
      if (v31 >= v30 >> 1)
      {
        v28 = sub_1D10F7E08((v30 > 1), v31 + 1, 1, v28);
        *(v27 + 8 * v20) = v28;
      }

      v28[2] = v31 + 1;
      v4 = &v28[15 * v31];
      v5 = v44;
      v6 = v45;
      v7 = v47;
      *(v4 + 4) = v46;
      *(v4 + 5) = v7;
      *(v4 + 2) = v5;
      *(v4 + 3) = v6;
      v8 = v48;
      v9 = v49;
      v10 = v50;
      *(v4 + 144) = v51;
      *(v4 + 7) = v9;
      *(v4 + 8) = v10;
      *(v4 + 6) = v8;
    }

    else
    {
      sub_1D109347C(0, &qword_1EC609D30, &qword_1EC609D28);
      v32 = swift_allocObject();
      v33 = v50;
      *(v32 + 112) = v49;
      *(v32 + 128) = v33;
      *(v32 + 144) = v51;
      v34 = v44;
      *(v32 + 16) = xmmword_1D139E700;
      *(v32 + 32) = v34;
      v35 = v46;
      *(v32 + 48) = v45;
      *(v32 + 64) = v35;
      v36 = v48;
      *(v32 + 80) = v47;
      *(v32 + 96) = v36;
      v1[(v20 >> 6) + 8] |= 1 << v20;
      v37 = (v1[6] + 48 * v20);
      v38 = v57;
      v37[1] = v56;
      v37[2] = v38;
      *v37 = v55;
      *(v1[7] + 8 * v20) = v32;
      v39 = v1[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_18;
      }

      v1[2] = v41;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1D13916CC();
  __break(1u);
  return result;
}

uint64_t sub_1D10937E4(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v47 = MEMORY[0x1E69E7CC8];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 32); ; i += 6)
  {
    v9 = i[1];
    v38 = *i;
    v39 = v9;
    v10 = i[3];
    v40 = i[2];
    v41 = v10;
    v11 = i[5];
    v42 = i[4];
    v43 = v11;
    v44 = v38;
    *&v45 = v9;
    BYTE8(v45) = BYTE8(v9);
    v46 = v40;
    sub_1D1094054(&v38, v37, &qword_1EC609D00);

    v13 = sub_1D129DE20(&v44);
    v14 = v1[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      break;
    }

    v17 = v12;
    if (v1[3] < v16)
    {
      sub_1D117B7BC(v16, 1);
      v1 = v47;
      v18 = sub_1D129DE20(&v44);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v13 = v18;
    }

    if (v17)
    {

      v20 = v1[7];
      v21 = *(v20 + 8 * v13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 8 * v13) = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_1D10F7F50(0, v21[2] + 1, 1, v21);
        *(v20 + 8 * v13) = v21;
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v21 = sub_1D10F7F50((v23 > 1), v24 + 1, 1, v21);
        *(v20 + 8 * v13) = v21;
      }

      v21[2] = v24 + 1;
      v4 = &v21[12 * v24];
      v5 = v39;
      v4[2] = v38;
      v4[3] = v5;
      v6 = v40;
      v7 = v41;
      v8 = v43;
      v4[6] = v42;
      v4[7] = v8;
      v4[4] = v6;
      v4[5] = v7;
    }

    else
    {
      sub_1D109347C(0, &qword_1EC609D08, &qword_1EC609D00);
      v25 = swift_allocObject();
      v26 = v40;
      v27 = v42;
      v28 = v43;
      v25[5] = v41;
      v25[6] = v27;
      v25[7] = v28;
      v29 = v38;
      v30 = v39;
      v25[1] = xmmword_1D139E700;
      v25[2] = v29;
      v25[3] = v30;
      v25[4] = v26;
      v1[(v13 >> 6) + 8] |= 1 << v13;
      v31 = (v1[6] + 48 * v13);
      v32 = v46;
      v31[1] = v45;
      v31[2] = v32;
      *v31 = v44;
      *(v1[7] + 8 * v13) = v25;
      v33 = v1[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_18;
      }

      v1[2] = v35;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1D13916CC();
  __break(1u);
  return result;
}

uint64_t sub_1D1093A88(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v42 = MEMORY[0x1E69E7CC8];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 32); ; i += 4)
  {
    v8 = i[1];
    v35 = *i;
    v36 = v8;
    v9 = i[3];
    v37 = i[2];
    v38 = v9;
    v39 = v35;
    *&v40 = v8;
    BYTE8(v40) = BYTE8(v8);
    v41 = v37;
    sub_1D1094054(&v35, v34, &qword_1EC609CE0);

    v11 = sub_1D129DE20(&v39);
    v12 = v1[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (v1[3] < v14)
    {
      sub_1D117B7D4(v14, 1);
      v1 = v42;
      v16 = sub_1D129DE20(&v39);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_19;
      }

      v11 = v16;
    }

    if (v15)
    {

      v18 = v1[7];
      v19 = *(v18 + 8 * v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v18 + 8 * v11) = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_1D10F8098(0, v19[2] + 1, 1, v19);
        *(v18 + 8 * v11) = v19;
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_1D10F8098((v21 > 1), v22 + 1, 1, v19);
        *(v18 + 8 * v11) = v19;
      }

      v19[2] = v22 + 1;
      v4 = &v19[8 * v22];
      v5 = v35;
      v6 = v36;
      v7 = v38;
      v4[4] = v37;
      v4[5] = v7;
      v4[2] = v5;
      v4[3] = v6;
    }

    else
    {
      sub_1D109347C(0, &qword_1EC609CE8, &qword_1EC609CE0);
      v23 = swift_allocObject();
      v24 = v35;
      v25 = v36;
      v23[1] = xmmword_1D139E700;
      v23[2] = v24;
      v26 = v37;
      v27 = v38;
      v23[3] = v25;
      v23[4] = v26;
      v23[5] = v27;
      v1[(v11 >> 6) + 8] |= 1 << v11;
      v28 = (v1[6] + 48 * v11);
      v29 = v41;
      v28[1] = v40;
      v28[2] = v29;
      *v28 = v39;
      *(v1[7] + 8 * v11) = v23;
      v30 = v1[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_18;
      }

      v1[2] = v32;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1D13916CC();
  __break(1u);
  return result;
}

uint64_t sub_1D1093D10(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v59 = MEMORY[0x1E69E7CC8];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  v3 = (a1 + 80);
  v4 = &qword_1EC609CC0;
  while (1)
  {
    v12 = *(v3 - 2);
    v47 = *(v3 - 3);
    v48 = v12;
    v13 = v3[2];
    v14 = *v3;
    v51 = v3[1];
    v52 = v13;
    v15 = v3[2];
    v16 = v3[4];
    v53 = v3[3];
    v54 = v16;
    v17 = *v3;
    v49 = *(v3 - 1);
    v50 = v17;
    v55[4] = v3[4];
    v56 = v47;
    v55[0] = v14;
    v55[1] = v51;
    *&v57 = v48;
    BYTE8(v57) = BYTE8(v48);
    v58 = v49;
    v55[2] = v15;
    v55[3] = v53;
    sub_1D1094054(&v47, v46, v4);
    sub_1D10932A8(&v50, v46);
    sub_1D1093370(v55);

    v19 = sub_1D129DE20(&v56);
    v20 = v1[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      break;
    }

    v23 = v18;
    if (v1[3] < v22)
    {
      sub_1D117B7EC(v22, 1);
      v1 = v59;
      v24 = sub_1D129DE20(&v56);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_19;
      }

      v19 = v24;
    }

    if (v23)
    {
      v26 = v4;

      v27 = v1[7];
      v28 = *(v27 + 8 * v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v27 + 8 * v19) = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_1D10F81CC(0, v28[2] + 1, 1, v28);
        *(v27 + 8 * v19) = v28;
      }

      v31 = v28[2];
      v30 = v28[3];
      if (v31 >= v30 >> 1)
      {
        v28 = sub_1D10F81CC((v30 > 1), v31 + 1, 1, v28);
        *(v27 + 8 * v19) = v28;
      }

      v4 = v26;
      v28[2] = v31 + 1;
      v5 = &v28[16 * v31];
      v6 = v47;
      v7 = v48;
      v8 = v50;
      v5[4] = v49;
      v5[5] = v8;
      v5[2] = v6;
      v5[3] = v7;
      v9 = v51;
      v10 = v52;
      v11 = v54;
      v5[8] = v53;
      v5[9] = v11;
      v5[6] = v9;
      v5[7] = v10;
    }

    else
    {
      sub_1D109347C(0, &qword_1EC609CC8, v4);
      v32 = swift_allocObject();
      v33 = v51;
      v34 = v53;
      v35 = v54;
      v32[7] = v52;
      v32[8] = v34;
      v32[9] = v35;
      v36 = v47;
      v37 = v48;
      v32[1] = xmmword_1D139E700;
      v32[2] = v36;
      v38 = v49;
      v39 = v50;
      v32[3] = v37;
      v32[4] = v38;
      v32[5] = v39;
      v32[6] = v33;
      v1[(v19 >> 6) + 8] |= 1 << v19;
      v40 = (v1[6] + 48 * v19);
      v41 = v58;
      v40[1] = v57;
      v40[2] = v41;
      *v40 = v56;
      *(v1[7] + 8 * v19) = v32;
      v42 = v1[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_18;
      }

      v1[2] = v44;
    }

    v3 += 8;
    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1D13916CC();
  __break(1u);
  return result;
}

unint64_t sub_1D1094000()
{
  result = qword_1EC609CB8;
  if (!qword_1EC609CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC609CB8);
  }

  return result;
}

uint64_t sub_1D1094054(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_1D10951AC(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D10940C8()
{
  result = qword_1EC60CA30;
  if (!qword_1EC60CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60CA30);
  }

  return result;
}

uint64_t sub_1D109411C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D138F0BC();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 value];
  if (v9)
  {
    v10 = v9;
    if (![v9 collectionType])
    {
      v11 = [v10 inspectableValue];
      if (v11)
      {
        v12 = v11;
        if ([v11 valueType] == 6)
        {
          v13 = [v12 codedQuantityValue];
          if (v13)
          {
            v14 = v13;
            v15 = [v13 rawValue];
            v16 = sub_1D139016C();
            v18 = v17;

LABEL_12:
            v30 = [a1 preferredDisplayName];
            v31 = sub_1D139016C();
            v33 = v32;

            v34 = [v10 unitString];
            v35 = sub_1D139016C();
            v37 = v36;

            sub_1D114F448(v31, v33, v16, v18, v35, v37, v38);
            v23 = v38[0];
            v24 = v38[1];
            v25 = v38[2];
            v26 = v38[3];
            v27 = v38[4];
            v28 = v38[5];

            goto LABEL_13;
          }
        }
      }
    }

    v12 = [v10 displayString];
    v16 = sub_1D139016C();
    v18 = v29;
    goto LABEL_12;
  }

  sub_1D138F06C();
  v19 = sub_1D138F0AC();
  v20 = sub_1D13907DC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1D101F000, v19, v20, "[PDF]: Failed to format value for a record.", v21, 2u);
    MEMORY[0x1D38882F0](v21, -1, -1);
  }

  result = (*(v5 + 8))(v8, v4);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
LABEL_13:
  *a2 = v23;
  a2[1] = v24;
  a2[2] = v25;
  a2[3] = v26;
  a2[4] = v27;
  a2[5] = v28;
  return result;
}

id sub_1D109440C(void *a1, void *a2)
{
  v4 = sub_1D138F0BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((HKChartableCodedQuantity.representsSystolicBloodPressure.getter() & 1) == 0 || !a2)
  {
LABEL_14:
    result = [a1 originalCodedQuantity];
    if (result)
    {
      v24 = result;
      v25 = [result rawValue];

      v26 = sub_1D139016C();
      return v26;
    }

    return result;
  }

  v8 = a2;
  if ((HKChartableCodedQuantity.representsDiastolicBloodPressure.getter() & 1) == 0)
  {

    goto LABEL_14;
  }

  v9 = [a1 originalCodedQuantity];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 rawValue];

    v12 = sub_1D139016C();
    v14 = v13;

    v15 = [v8 originalCodedQuantity];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 rawValue];

      v18 = sub_1D139016C();
      v20 = v19;

      v21 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v21 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v21)
      {
        v22 = HIBYTE(v20) & 0xF;
        if ((v20 & 0x2000000000000000) == 0)
        {
          v22 = v18 & 0xFFFFFFFFFFFFLL;
        }

        if (v22)
        {
          v30[0] = v12;
          v30[1] = v14;
          MEMORY[0x1D3885C10](47, 0xE100000000000000);
          MEMORY[0x1D3885C10](v18, v20);

          return v30[0];
        }
      }
    }
  }

  sub_1D138F06C();
  v27 = sub_1D138F0AC();
  v28 = sub_1D13907DC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1D101F000, v27, v28, "[PDF]: Failed to format blood pressure for a record.", v29, 2u);
    MEMORY[0x1D38882F0](v29, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return 0;
}

uint64_t sub_1D10946FC(void *a1, void *a2)
{
  v4 = [a1 rangeLow];
  if (v4)
  {
    v5 = a2;
    v6 = v4;
    v7 = [v5 stringFromNumber_];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1D139016C();
      v4 = v10;
    }

    else
    {

      v9 = 0;
      v4 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = [a1 rangeHigh];
  if (!v11)
  {
LABEL_12:
    v17 = 0;
    v19 = 0;
    if (!v4)
    {
      goto LABEL_9;
    }

LABEL_13:
    if (v19)
    {
      v20 = sub_1D11F50D8(v9, v4, v17, v19);
    }

    else
    {
      v20 = sub_1D11F5328(v9, v4);
    }

    goto LABEL_16;
  }

  v12 = v11;
  v13 = a2;
  v14 = v12;
  v15 = [v13 stringFromNumber_];
  if (!v15)
  {

    goto LABEL_12;
  }

  v16 = v15;
  v17 = sub_1D139016C();
  v19 = v18;

  if (v4)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (!v19)
  {
    return 0;
  }

  v20 = sub_1D11F5558(v17, v19);
LABEL_16:

  return v20;
}

void sub_1D10948C0(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v78 = sub_1D138F0BC();
  v5 = *(v78 - 1);
  MEMORY[0x1EEE9AC00](v78);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D138CF3C();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v77 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 quantities];
  sub_1D106F934(0, &qword_1EC6096C8);
  v13 = sub_1D139045C();

  v14 = [a1 codings];
  sub_1D106F934(0, &qword_1EC609D38);
  v15 = sub_1D139045C();

  if (v15 >> 62)
  {
    if (!sub_1D13910DC())
    {
      goto LABEL_45;
    }
  }

  else if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_45;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1D3886B70](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_44;
    }

    v16 = *(v15 + 32);
  }

  v17 = v16;

  v18 = [v17 displayString];

  if (!v18)
  {
    goto LABEL_46;
  }

  v75 = v9;
  v71 = sub_1D139016C();
  v73 = v19;

  v14 = (v13 >> 62);
  if (!(v13 >> 62))
  {
    v20 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

LABEL_44:
  v20 = sub_1D13910DC();
  if (!v20)
  {
LABEL_45:

LABEL_46:

    goto LABEL_47;
  }

LABEL_9:
  v72 = v8;
  if ((v13 & 0xC000000000000001) == 0)
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v74 = *(v13 + 32);
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v74 = MEMORY[0x1D3886B70](0, v13);
  if (v20 < 0)
  {
    goto LABEL_52;
  }

LABEL_12:
  if (v14)
  {
    if (sub_1D13910DC() >= 1)
    {
      v21 = sub_1D13910DC();
      goto LABEL_18;
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_54;
  }

LABEL_18:
  if (v21 >= v20)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {

      if (v20 != 1)
      {
        v22 = 1;
        do
        {
          v23 = v22 + 1;
          sub_1D13911FC();
          v22 = v23;
        }

        while (v20 != v23);
      }
    }

    else
    {
    }

    if (v14)
    {
      sub_1D13913FC();
      v24 = v30;
      v25 = v31;
      v33 = v32;

      v26 = v25 < (v33 >> 1);
      if (v25 != v33 >> 1)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v24 = (v13 & 0xFFFFFFFFFFFFFF8) + 32;
      v25 = 1;
      v26 = v20 > 1;
      if (v20 != 1)
      {
LABEL_27:
        v27 = v75;
        if (!v26)
        {
          goto LABEL_56;
        }

        v28 = *(v24 + 8 * v25);
        v29 = v28;
        goto LABEL_32;
      }
    }

    v28 = 0;
    v27 = v75;
LABEL_32:
    swift_unknownObjectRelease();
    v34 = v74;
    v35 = sub_1D109440C(v74, v28);
    v37 = v36;

    if (v37)
    {
      v38 = [a1 compatibleUnit];
      v39 = sub_1D136D998(v38);
      v66 = v37;
      v40 = v39;
      v42 = v41;

      if (v42)
      {
        v43 = v40;
      }

      else
      {
        v43 = 0;
      }

      v44 = 0xE000000000000000;
      if (v42)
      {
        v44 = v42;
      }

      v67 = v44;
      v68 = v43;
      v69 = sub_1D10946FC(v34, v76);
      v76 = v45;
      v70 = [v34 isInRange];
      v79 = v71;
      v80 = v73;
      v46 = v77;
      sub_1D138CF2C();
      v71 = sub_1D10940C8();
      v47 = sub_1D1390FAC();
      v74 = v34;
      v48 = v47;
      v50 = v49;
      v78 = *(v27 + 8);
      v51 = v72;
      v78(v46, v72);

      v79 = v35;
      v80 = v66;
      sub_1D138CF2C();
      v52 = sub_1D1390FAC();
      v75 = v27 + 8;
      v54 = v53;
      v78(v46, v51);

      v79 = v68;
      v80 = v67;
      sub_1D138CF2C();
      v55 = sub_1D1390FAC();
      v57 = v56;
      v78(v46, v72);

      v79 = v69;
      v80 = v76;
      sub_1D138CF2C();
      v58 = sub_1D1390FAC();
      v60 = v59;

      v78(v46, v72);

      v61 = v70;
LABEL_50:
      *a3 = v48;
      *(a3 + 8) = v50;
      *(a3 + 16) = v52;
      *(a3 + 24) = v54;
      *(a3 + 32) = v55;
      *(a3 + 40) = v57;
      *(a3 + 48) = v58;
      *(a3 + 56) = v60;
      *(a3 + 64) = v61;
      return;
    }

LABEL_47:
    sub_1D138F06C();
    v62 = sub_1D138F0AC();
    v63 = sub_1D13907DC();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_1D101F000, v62, v63, "[PDF]: Failed to format quantities for a record.", v64, 2u);
      MEMORY[0x1D38882F0](v64, -1, -1);
    }

    (*(v5 + 8))(v7, v78);
    v48 = 0;
    v50 = 0;
    v52 = 0;
    v54 = 0;
    v55 = 0;
    v57 = 0;
    v58 = 0;
    v60 = 0;
    v61 = 0;
    goto LABEL_50;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

void sub_1D1094FAC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D109515C(255, a3, a4, MEMORY[0x1E69E62F8]);
    sub_1D1094000();
    v5 = sub_1D139145C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D1095090(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata, a2);
    }
  }
}

void sub_1D109515C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D10951AC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

id ImprovementDataCollectionOptInViewController.init(modalInPresentation:userDidChooseCompletion:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC15HealthRecordsUI44ImprovementDataCollectionOptInViewController_userDidChooseCompletion];
  *v9 = a2;
  *(v9 + 1) = a3;
  v10 = qword_1EE06AD00;

  if (v10 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v11 = sub_1D139012C();

  sub_1D138D1CC();
  v12 = sub_1D139012C();

  v16.receiver = v4;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, sel_initWithTitle_detailText_icon_contentLayout_, v11, v12, 0, 2, 0xE000000000000000);

  v14 = v13;
  [v14 setModalInPresentation_];

  return v14;
}

void static ImprovementDataCollectionOptInViewController.present(in:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);

  v8 = ImprovementDataCollectionOptInViewController.init(modalInPresentation:userDidChooseCompletion:)(1, a2, a3);
  v9 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  [v9 setModalInPresentation_];
  [v9 setModalPresentationStyle_];
  [a1 presentViewController:v9 animated:1 completion:0];
}

Swift::Void __swiftcall ImprovementDataCollectionOptInViewController.viewDidLoad()()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, sel_viewDidLoad);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v5 = [v4 systemBackgroundColor];
    [v3 setBackgroundColor_];

    v6 = [v1 navigationItem];
    [v6 setHidesBackButton_];

    if (qword_1EE06A170 != -1)
    {
      swift_once();
    }

    sub_1D122101C(8, 0, 0);
    v7 = [objc_opt_self() accessoryButton];
    v8 = [v4 systemBlueColor];
    [v7 setTintColor_];

    sub_1D1089A04(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D139E700;
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v10 = sub_1D138D1CC();
    v12 = v11;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1D1089930();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_1D139013C();

    v13 = sub_1D139012C();

    [v7 setTitle:v13 forState:{0, 0xE000000000000000}];

    v14 = [v7 titleLabel];
    [v14 setNumberOfLines_];

    [v7 addTarget:v1 action:sel_accessoryButtonTapped forControlEvents:64];
    v15 = v7;
    sub_1D1096694(0x74754274756F6241, 0xEB000000006E6F74);
    v16 = sub_1D139012C();

    [v15 setAccessibilityIdentifier_];

    v17 = [v1 headerView];
    [v17 addAccessoryButton_];

    sub_1D138D1CC();
    v18 = sub_1D139012C();

    sub_1D1096694(0x747542776F6C6C41, 0xEB000000006E6F74);
    v19 = sub_1D139012C();

    sub_1D138D1CC();
    v20 = sub_1D139012C();

    sub_1D1096694(0x6F6C6C41746E6F44, 0xEF6E6F7474754277);
    v21 = sub_1D139012C();

    v22 = [v1 hxui:v20 addSecondaryFooterButtonWithTitle:0 bold:v21 accessibilityIdentifier:0xE000000000000000];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ImprovementDataCollectionOptInViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidAppear_, a1);
  if (qword_1EE06A170 != -1)
  {
    swift_once();
  }

  sub_1D1223978(1, 2, 0);
}

uint64_t sub_1D1095B88(char a1)
{
  v3 = sub_1D138FECC();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D138FF0C();
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = *MEMORY[0x1E69A2D60];
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  v30 = sub_1D10967D4;
  v31 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1D112A218;
  v29 = &block_descriptor_3;
  v12 = _Block_copy(&aBlock);
  v13 = v1;

  [v9 setUserDidAccept:a1 & 1 currentAgreement:v10 completion:v12];
  _Block_release(v12);
  if (qword_1EE06A170 != -1)
  {
    swift_once();
  }

  v14 = a1 & 1;
  if (a1)
  {
    v15 = 9;
  }

  else
  {
    v15 = 10;
  }

  sub_1D122101C(v15, 0, 0);
  sub_1D1223F40();
  sub_1D108310C();
  v16 = sub_1D1390A7C();
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v14;
  v30 = sub_1D10967F4;
  v31 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1D10CBD3C;
  v29 = &block_descriptor_7;
  v18 = _Block_copy(&aBlock);
  v19 = v13;

  sub_1D138FEEC();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1D10899AC();
  sub_1D1089A04(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  v20 = v25;
  sub_1D139103C();
  MEMORY[0x1D3886400](0, v8, v5, v18);
  _Block_release(v18);

  (*(v24 + 8))(v5, v20);
  return (*(v22 + 8))(v8, v23);
}

uint64_t sub_1D109610C(char a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v6 = sub_1D138F0BC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  if (a1)
  {
    sub_1D138F06C();
    v13 = a3;
    v14 = sub_1D138F0AC();
    v15 = sub_1D139081C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30 = ObjectType;
      v31 = v17;
      *v16 = 136315138;
      swift_getMetatypeMetadata();
      v18 = sub_1D13901EC();
      v20 = sub_1D11DF718(v18, v19, &v31);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1D101F000, v14, v15, "%s: Successfully saved opt-in status", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1D38882F0](v17, -1, -1);
      MEMORY[0x1D38882F0](v16, -1, -1);
    }

    return (*(v7 + 8))(v12, v6);
  }

  else
  {
    sub_1D138F06C();
    v22 = a3;
    v23 = sub_1D138F0AC();
    v24 = sub_1D13907FC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = ObjectType;
      v31 = v26;
      *v25 = 136315138;
      swift_getMetatypeMetadata();
      v27 = sub_1D13901EC();
      v29 = sub_1D11DF718(v27, v28, &v31);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_1D101F000, v23, v24, "%s: Error saving opt-in status", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1D38882F0](v26, -1, -1);
      MEMORY[0x1D38882F0](v25, -1, -1);
    }

    return (*(v7 + 8))(v10, v6);
  }
}

id ImprovementDataCollectionOptInViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_1D139012C();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_1D139012C();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1D139012C();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id ImprovementDataCollectionOptInViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1D139012C();

  if (a4)
  {
    v12 = sub_1D139012C();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id ImprovementDataCollectionOptInViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D1096694(uint64_t a1, uint64_t a2)
{
  sub_1D1086E1C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D139EAB0;
  *(v4 + 32) = 0xD000000000000012;
  *(v4 + 40) = 0x80000001D13B9330;
  *(v4 + 48) = 0x72706D49706C6548;
  *(v4 + 56) = 0xEB0000000065766FLL;
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;

  v5 = sub_1D139044C();

  v6 = HKUIJoinStringsForAutomationIdentifier();

  if (v6)
  {
    sub_1D139016C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D1096888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v9 = *a3;
  memset(v34, 0, sizeof(v34));
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = objc_opt_self();

  v12 = [v11 defaultCenter];
  v13 = type metadata accessor for WeakNotificationObserver();
  v14 = objc_allocWithZone(v13);
  v32 = &type metadata for SyncTaskScheduler;
  v33 = &protocol witness table for SyncTaskScheduler;
  swift_unknownObjectWeakInit();
  sub_1D1072E70(v31, &v14[OBJC_IVAR____TtC15HealthRecordsUI24WeakNotificationObserver_scheduler]);
  v15 = &v14[OBJC_IVAR____TtC15HealthRecordsUI24WeakNotificationObserver_block];
  *v15 = a4;
  *(v15 + 1) = v10;
  swift_unknownObjectWeakAssign();
  v30.receiver = v14;
  v30.super_class = v13;

  v16 = objc_msgSendSuper2(&v30, sel_init);
  sub_1D1096B28(v34, v28);
  v17 = v29;
  if (v29)
  {
    v18 = __swift_project_boxed_opaque_existential_1Tm(v28, v29);
    v27 = &v27;
    v19 = v9;
    v20 = *(v17 - 8);
    MEMORY[0x1EEE9AC00](v18);
    v22 = &v28[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v22);
    v23 = v16;
    v24 = sub_1D139161C();
    (*(v20 + 8))(v22, v17);
    v9 = v19;
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  else
  {
    v25 = v16;
    v24 = 0;
  }

  [v12 addObserver:v16 selector:sel_didReceiveWithNotification_ name:v9 object:{v24, v27}];

  swift_unknownObjectRelease();
  sub_1D1096BE0(v34);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v31);
  a5[3] = v13;
  *a5 = v16;
  return result;
}

uint64_t sub_1D1096B28(uint64_t a1, uint64_t a2)
{
  sub_1D1096B8C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D1096B8C()
{
  if (!qword_1EE06A4A8)
  {
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06A4A8);
    }
  }
}

uint64_t sub_1D1096BE0(uint64_t a1)
{
  sub_1D1096B8C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D1096C68()
{
  v0 = objc_opt_self();
  v1 = [v0 systemBlueColor];
  v2 = [v1 colorWithAlphaComponent_];

  v3 = [v0 systemBlueColor];
  v4 = [v3 colorWithAlphaComponent_];

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v10[4] = sub_1D1096DDC;
  v10[5] = v5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D120E4B8;
  v10[3] = &block_descriptor_4;
  v7 = _Block_copy(v10);
  v8 = [v6 initWithDynamicProvider_];
  _Block_release(v7);

  return v8;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OnboardingTileAppearanceManager.__allocating_init(store:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = objc_allocWithZone(MEMORY[0x1E696C210]);
  v4 = a1;
  v5 = sub_1D139012C();
  v6 = [v3 initWithCategory:0 domainName:v5 healthStore:v4];

  *(v2 + 24) = v6;
  return v2;
}

uint64_t OnboardingTileAppearanceManager.init(store:)(void *a1)
{
  *(v1 + 16) = a1;
  v3 = objc_allocWithZone(MEMORY[0x1E696C210]);
  v4 = a1;
  v5 = sub_1D139012C();
  v6 = [v3 initWithCategory:0 domainName:v5 healthStore:v4];

  *(v1 + 24) = v6;
  return v1;
}

uint64_t sub_1D1096F38(int a1, uint64_t a2)
{
  LODWORD(v4) = a1;
  v5 = sub_1D138D01C();
  v79 = *(v5 - 8);
  v80 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D138D5EC();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D109F04C(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v72 = &v66 - v10;
  v75 = type metadata accessor for OnboardingViewIdentifier();
  v11 = MEMORY[0x1EEE9AC00](v75);
  v76 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v66 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v73 = &v66 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v66 - v18;
  v71 = sub_1D138F0BC();
  v20 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138F06C();
  v77 = a2;
  sub_1D109F604(a2, v19, type metadata accessor for OnboardingViewIdentifier);

  v23 = sub_1D138F0AC();
  v24 = sub_1D139081C();

  v25 = os_log_type_enabled(v23, v24);
  v74 = v15;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v70 = v4;
    v4 = v27;
    *v26 = 136446722;
    v81 = *v2;
    *&v82[0] = v27;
    sub_1D109C7B8();
    v28 = sub_1D13901EC();
    v66 = v2;
    v30 = sub_1D11DF718(v28, v29, v82);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2082;
    if (v70)
    {
      v31 = 1702195828;
    }

    else
    {
      v31 = 0x65736C6166;
    }

    if (v70)
    {
      v32 = 0xE400000000000000;
    }

    else
    {
      v32 = 0xE500000000000000;
    }

    v33 = sub_1D11DF718(v31, v32, v82);

    *(v26 + 14) = v33;
    *(v26 + 22) = 2082;
    v34 = OnboardingViewIdentifier.stringIdentifier.getter();
    v36 = v35;
    sub_1D10A06F0(v19, type metadata accessor for OnboardingViewIdentifier);
    v37 = sub_1D11DF718(v34, v36, v82);

    *(v26 + 24) = v37;
    _os_log_impl(&dword_1D101F000, v23, v24, "[%{public}s] Setting onboarding to (%{public}s) for onboarding view with identifier '%{public}s'", v26, 0x20u);
    swift_arrayDestroy();
    v38 = v4;
    LOBYTE(v4) = v70;
    MEMORY[0x1D38882F0](v38, -1, -1);
    MEMORY[0x1D38882F0](v26, -1, -1);
  }

  else
  {

    sub_1D10A06F0(v19, type metadata accessor for OnboardingViewIdentifier);
  }

  (*(v20 + 8))(v22, v71);
  v39 = v77;
  v40 = v72;
  if (v4)
  {
    sub_1D138D56C();
    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = sub_1D138D57C();
  (*(*(v42 - 8) + 56))(v40, v41, 1, v42);
  *&v82[0] = 0;
  *(&v82[0] + 1) = 0xE000000000000000;
  sub_1D13911EC();

  *&v82[0] = 0x6F626E4F2E494843;
  *(&v82[0] + 1) = 0xEF2E676E69647261;
  v43 = OnboardingViewIdentifier.stringIdentifier.getter();
  MEMORY[0x1D3885C10](v43);

  v44 = sub_1D139088C();

  sub_1D109AC18(v40);
  v45 = v73;
  sub_1D109F604(v39, v73, type metadata accessor for OnboardingViewIdentifier);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1D10A06F0(v45, type metadata accessor for OnboardingViewIdentifier);
    v46 = 0;
  }

  else
  {
    v48 = v67;
    v47 = v68;
    v49 = v69;
    (*(v68 + 32))(v67, v45, v69);
    sub_1D109AD20();
    sub_1D109D02C(0, &qword_1EC609D90, MEMORY[0x1E69695A8]);
    v51 = v50 - 8;
    v52 = (*(*(v50 - 8) + 80) + 32) & ~*(*(v50 - 8) + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1D139E700;
    v54 = (v53 + v52);
    v55 = *(v51 + 56);
    *v54 = 0xD000000000000015;
    *(v54 + 1) = 0x80000001D13B93F0;
    (*(v47 + 16))(&v54[v55], v48, v49);
    v46 = sub_1D109C528(v53);
    swift_setDeallocating();
    sub_1D109C740(v54);
    swift_deallocClassInstance();
    (*(v47 + 8))(v48, v49);
  }

  v56 = v74;
  sub_1D106F934(0, &qword_1EC609D70);
  v57 = sub_1D139089C();
  sub_1D109F604(v39, v56, type metadata accessor for OnboardingViewIdentifier);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    sub_1D10A06F0(v56, type metadata accessor for OnboardingViewIdentifier);
  }

  sub_1D139012C();

  if (v46)
  {
    sub_1D10980D4(v46);
  }

  v58 = objc_allocWithZone(sub_1D138DCDC());
  v59 = sub_1D138DCCC();
  [v57 addOperation_];

  v60 = [objc_opt_self() defaultCenter];
  v61 = v76;
  sub_1D109F604(v39, v76, type metadata accessor for OnboardingViewIdentifier);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    sub_1D10A06F0(v61, type metadata accessor for OnboardingViewIdentifier);
  }

  sub_1D139012C();

  memset(v82, 0, 32);
  v62 = v78;
  sub_1D138CFEC();
  v63 = sub_1D138CFCC();
  (*(v79 + 8))(v62, v80);
  [v60 postNotification_];

  *&v82[0] = v44;
  sub_1D109ACA4();
  sub_1D10A02CC(&qword_1EC609D80, sub_1D109ACA4);
  v64 = sub_1D138F80C();

  return v64;
}

uint64_t OnboardingViewIdentifier.stringIdentifier.getter()
{
  v1 = v0;
  v2 = 0xEF7069546D6F6F52;
  v3 = 0x79726F6765746163;
  v4 = type metadata accessor for OnboardingViewIdentifier();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v24 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = v24 - v11;
  v13 = sub_1D138D5EC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D109F604(v1, v12, type metadata accessor for OnboardingViewIdentifier);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    (*(v14 + 32))(v16, v12, v13);
    v24[0] = 0;
    v24[1] = 0xE000000000000000;
    sub_1D109F604(v1, v7, type metadata accessor for OnboardingViewIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v3 = 0x54636972656E6567;
        v2 = 0xEB00000000656C69;
      }

      else if (EnumCaseMultiPayload == 4)
      {
        v2 = 0xE800000000000000;
        v3 = 0x656C69547362616CLL;
      }

      else
      {
        v3 = 0x616470557362616CLL;
        v2 = 0xEE00656C69546574;
      }

      goto LABEL_23;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
LABEL_23:
        MEMORY[0x1D3885C10](v3, v2);

        MEMORY[0x1D3885C10](46, 0xE100000000000000);
        v20 = sub_1D138D59C();
        v22 = v21;
        (*(v14 + 8))(v16, v13);
        MEMORY[0x1D3885C10](v20, v22);

        return v24[0];
      }

      v3 = 0xD000000000000011;
      v18 = "recordsUpdateTile";
    }

    else
    {
      v3 = 0xD000000000000011;
      v18 = "dataTypeDetailTip";
    }

    v2 = (v18 - 32) | 0x8000000000000000;
    sub_1D10A06F0(v7, type metadata accessor for OnboardingViewIdentifier);
    goto LABEL_23;
  }

  sub_1D109F604(v1, v10, type metadata accessor for OnboardingViewIdentifier);
  v19 = swift_getEnumCaseMultiPayload();
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      return 0x54636972656E6567;
    }

    else if (v19 == 4)
    {
      return 0x656C69547362616CLL;
    }

    else
    {
      return 0x616470557362616CLL;
    }
  }

  else
  {
    if (!v19)
    {
      v3 = 0xD000000000000011;
      goto LABEL_19;
    }

    if (v19 == 1)
    {
      v3 = 0xD000000000000011;
LABEL_19:
      sub_1D10A06F0(v10, type metadata accessor for OnboardingViewIdentifier);
    }
  }

  return v3;
}

uint64_t OnboardingViewIdentifier.uniqueIdentifier.getter()
{
  sub_1D13911EC();

  v0 = OnboardingViewIdentifier.stringIdentifier.getter();
  MEMORY[0x1D3885C10](v0);

  return 0x6F626E4F2E494843;
}

uint64_t OnboardingViewIdentifier.notificationIdentifier.getter()
{
  v1 = type metadata accessor for OnboardingViewIdentifier();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D109F604(v0, v3, type metadata accessor for OnboardingViewIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      return 0x54636972656E6567;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0x656C69547362616CLL;
    }

    else
    {
      return 0x616470557362616CLL;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    return 0x79726F6765746163;
  }

  else
  {
    sub_1D10A06F0(v3, type metadata accessor for OnboardingViewIdentifier);
    return 0xD000000000000011;
  }
}

uint64_t sub_1D10980D4(uint64_t a1)
{
  v45 = sub_1D138D5EC();
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D10A07B4();
  v43 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v42 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v41 = v38 - v6;
  v47 = a1;
  if (*(a1 + 16))
  {
    sub_1D109FD18(0, &qword_1EC609F20, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0], MEMORY[0x1E69E6EC8]);
    v7 = sub_1D139144C();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC8];
  }

  v8 = v47 + 64;
  v9 = 1 << *(v47 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v47 + 64);
  v12 = (v9 + 63) >> 6;
  v38[2] = v46 + 16;
  v38[1] = v46 + 32;
  v13 = v7 + 64;

  v15 = 0;
  v40 = v7;
  v39 = v8;
  v16 = v46;
  v17 = v43;
  while (v11)
  {
LABEL_15:
    v21 = __clz(__rbit64(v11)) | (v15 << 6);
    v22 = (*(v47 + 48) + 16 * v21);
    v24 = *v22;
    v23 = v22[1];
    v25 = v41;
    v26 = v45;
    (*(v16 + 16))(&v41[*(v17 + 48)], *(v47 + 56) + *(v16 + 72) * v21, v45);
    *v25 = v24;
    v25[1] = v23;
    v27 = v25;
    v28 = v42;
    sub_1D10A0820(v27, v42, sub_1D10A07B4);
    v29 = *(v17 + 48);
    v30 = *(v28 + 1);
    *&v56 = *v28;
    *(&v56 + 1) = v30;

    swift_dynamicCast();
    (*(v16 + 32))(v44, &v28[v29], v26);
    swift_dynamicCast();
    v52 = v48;
    v53 = v49;
    v54 = v50;
    sub_1D109E39C(&v51, v55);
    v48 = v52;
    v49 = v53;
    v50 = v54;
    sub_1D109E39C(v55, &v56);
    v7 = v40;
    result = sub_1D139114C();
    v31 = -1 << *(v7 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v13 + 8 * (v32 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v31) >> 6;
      v8 = v39;
      while (++v33 != v35 || (v34 & 1) == 0)
      {
        v36 = v33 == v35;
        if (v33 == v35)
        {
          v33 = 0;
        }

        v34 |= v36;
        v37 = *(v13 + 8 * v33);
        if (v37 != -1)
        {
          v18 = __clz(__rbit64(~v37)) + (v33 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v18 = __clz(__rbit64((-1 << v32) & ~*(v13 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
    v8 = v39;
LABEL_9:
    v11 &= v11 - 1;
    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = *(v7 + 48) + 40 * v18;
    *v19 = v48;
    *(v19 + 16) = v49;
    *(v19 + 32) = v50;
    result = sub_1D109E39C(&v56, (*(v7 + 56) + 32 * v18));
    ++*(v7 + 16);
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= v12)
    {

      return v7;
    }

    v11 = *(v8 + 8 * v20);
    ++v15;
    if (v11)
    {
      v15 = v20;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D10985D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1D109FD18(0, &qword_1EC609F20, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0], MEMORY[0x1E69E6EC8]);
    v2 = sub_1D139144C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1D109F94C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1D109E39C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1D109E39C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1D109E39C(v31, v32);
    result = sub_1D139114C();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1D109E39C(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D10988B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1D109FBBC();
    v1 = sub_1D139144C();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v26 = *(*(a1 + 56) + v11);
    v13 = v26;
    sub_1D106F934(0, &qword_1EE06B6E0);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_1D109E39C((v27 + 8), v25);
    sub_1D109E39C(v25, v27);
    sub_1D139016C();
    sub_1D139177C();
    sub_1D139027C();
    v16 = sub_1D13917CC();

    v17 = -1 << *(v1 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v6 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v6 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v6 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v14;
    result = sub_1D109E39C(v27, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D1098B64(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1D109E2A8(0);
    v1 = sub_1D139144C();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v26 = *(*(a1 + 56) + v11);
    v13 = v26;
    type metadata accessor for DocumentType(0);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_1D109E39C((v27 + 8), v25);
    sub_1D109E39C(v25, v27);
    sub_1D139016C();
    sub_1D139177C();
    sub_1D139027C();
    v16 = sub_1D13917CC();

    v17 = -1 << *(v1 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v6 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v6 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v6 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v14;
    result = sub_1D109E39C(v27, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1D1098E14(unint64_t a1, unint64_t *a2)
{
  v3 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = MEMORY[0x1E69E7CC8];
    goto LABEL_6;
  }

  if (!sub_1D13910DC())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D109F4D8(0, &qword_1EC609E40, &qword_1EE06B780, 0x1E696C3D0, &qword_1EE06B778);
  v4 = sub_1D139144C();
LABEL_6:
  if (sub_1D106F934(0, &qword_1EE06B780) == MEMORY[0x1E69E6158])
  {
    if (v3)
    {
      v10 = sub_1D139135C();
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = v10 | 0x8000000000000000;
    }

    else
    {
      v39 = -1 << *(a1 + 32);
      v12 = ~v39;
      v11 = a1 + 64;
      v40 = -v39;
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      else
      {
        v41 = -1;
      }

      v13 = v41 & *(a1 + 64);
      v14 = a1;
    }

    v42 = (v12 + 64) >> 6;

    v43 = 0;
    for (i = v14; ; v14 = i)
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        v57 = sub_1D139139C();
        if (!v57)
        {
          goto LABEL_60;
        }

        v65 = v57;
        sub_1D106F934(0, a2);
        swift_dynamicCast();
        sub_1D106F934(0, &qword_1EE06B790);
        swift_dynamicCast();
        v56 = v65;
        v55 = v66;
        v50 = v43;
        v52 = v13;
        if (!v66)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v49 = v13;
        v50 = v43;
        if (!v13)
        {
          v51 = v43;
          do
          {
            v50 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              goto LABEL_63;
            }

            if (v50 >= v42)
            {
              goto LABEL_60;
            }

            v49 = *(v11 + 8 * v50);
            ++v51;
          }

          while (!v49);
          v14 = i;
        }

        v52 = (v49 - 1) & v49;
        v53 = (v50 << 9) | (8 * __clz(__rbit64(v49)));
        v54 = *(*(v14 + 56) + v53);
        v55 = *(*(v14 + 48) + v53);
        v56 = v54;
        if (!v55)
        {
LABEL_60:
          sub_1D102CC30();

          return;
        }
      }

      v58 = sub_1D129DF14(v55);
      if (v59)
      {
        v44 = *(v4 + 48);
        v45 = *(v44 + 8 * v58);
        *(v44 + 8 * v58) = v55;
        v46 = v58;

        v47 = *(v4 + 56);
        v48 = *(v47 + 8 * v46);
        *(v47 + 8 * v46) = v56;
      }

      else
      {
        v60 = *(v4 + 16);
        if (v60 >= *(v4 + 24))
        {
          goto LABEL_64;
        }

        *(v4 + 64 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
        *(*(v4 + 48) + 8 * v58) = v55;
        *(*(v4 + 56) + 8 * v58) = v56;
        *(v4 + 16) = v60 + 1;
      }

      v43 = v50;
      v13 = v52;
    }
  }

  if (v3)
  {
    v5 = sub_1D139135C();
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = v5 | 0x8000000000000000;
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v7 = ~v15;
    v6 = a1 + 64;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v8 = v17 & *(a1 + 64);
    v9 = a1;
  }

  v18 = (v7 + 64) >> 6;
  v19 = v4 + 64;

  v20 = 0;
  v62 = v9;
  while ((v9 & 0x8000000000000000) != 0)
  {
    v30 = sub_1D139139C();
    if (!v30)
    {
      goto LABEL_60;
    }

    v64 = v30;
    sub_1D106F934(0, a2);
    swift_dynamicCast();
    sub_1D106F934(0, &qword_1EE06B790);
    swift_dynamicCast();
    v29 = v64;
    v28 = v66;
    v23 = v20;
    v25 = v8;
    if (!v66)
    {
      goto LABEL_60;
    }

LABEL_29:
    v31 = sub_1D1390D7C();
    v32 = -1 << *(v4 + 32);
    v33 = v31 & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v19 + 8 * (v33 >> 6))) != 0)
    {
      v21 = __clz(__rbit64((-1 << v33) & ~*(v19 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v35 = 0;
      v36 = (63 - v32) >> 6;
      do
      {
        if (++v34 == v36 && (v35 & 1) != 0)
        {
          __break(1u);
          goto LABEL_62;
        }

        v37 = v34 == v36;
        if (v34 == v36)
        {
          v34 = 0;
        }

        v35 |= v37;
        v38 = *(v19 + 8 * v34);
      }

      while (v38 == -1);
      v21 = __clz(__rbit64(~v38)) + (v34 << 6);
    }

    *(v19 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v4 + 48) + 8 * v21) = v28;
    *(*(v4 + 56) + 8 * v21) = v29;
    ++*(v4 + 16);
    v20 = v23;
    v8 = v25;
    v9 = v62;
  }

  v22 = v8;
  v23 = v20;
  if (v8)
  {
LABEL_25:
    v25 = (v22 - 1) & v22;
    v26 = (v23 << 9) | (8 * __clz(__rbit64(v22)));
    v27 = *(*(v9 + 56) + v26);
    v28 = *(*(v9 + 48) + v26);
    v29 = v27;
    if (!v28)
    {
      goto LABEL_60;
    }

    goto LABEL_29;
  }

  v24 = v20;
  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= v18)
    {
      goto LABEL_60;
    }

    v22 = *(v6 + 8 * v23);
    ++v24;
    if (v22)
    {
      v9 = v62;
      goto LABEL_25;
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
}

unint64_t sub_1D10993A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1D109FD18(0, &qword_1EC609F28, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E6EC8]);
    v2 = sub_1D139144C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];
        sub_1D109FD18(0, &qword_1EC60D1D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E5E28]);

        swift_dynamicCast();
        sub_1D109E39C(&v22, v24);
        sub_1D109E39C(v24, v25);
        sub_1D109E39C(v25, &v23);
        result = sub_1D11362EC(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1Tm(v11);
          result = sub_1D109E39C(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_1D109E39C(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1D109964C(uint64_t a1)
{
  v2 = type metadata accessor for OnboardingViewIdentifier();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultCenter];
  sub_1D109F604(a1, v4, type metadata accessor for OnboardingViewIdentifier);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    sub_1D10A06F0(v4, type metadata accessor for OnboardingViewIdentifier);
  }

  v6 = sub_1D139012C();

  sub_1D1390B1C();
}

uint64_t sub_1D1099830()
{
  sub_1D109C820();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_1D13911EC();

  v9 = 0x6F626E4F2E494843;
  v10 = 0xEF2E676E69647261;
  v5 = OnboardingViewIdentifier.stringIdentifier.getter();
  MEMORY[0x1D3885C10](v5);

  v6 = sub_1D139087C();

  v9 = v6;
  sub_1D109C8BC();
  sub_1D10A02CC(&qword_1EE069678, sub_1D109C8BC);
  sub_1D138F84C();

  sub_1D10A02CC(&qword_1EE0696C8, sub_1D109C820);
  v7 = sub_1D138F80C();
  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t sub_1D1099A40@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = sub_1D138D57C();
  result = (*(*(v4 - 8) + 48))(a1, 1, v4);
  *a2 = result != 1;
  return result;
}

uint64_t sub_1D1099AAC()
{
  sub_1D13911EC();

  v0 = OnboardingViewIdentifier.stringIdentifier.getter();
  MEMORY[0x1D3885C10](v0);

  sub_1D139087C();

  sub_1D109C8BC();
  sub_1D10A02CC(&qword_1EE069678, sub_1D109C8BC);
  v1 = sub_1D138F80C();

  return v1;
}

uint64_t OnboardingTileAppearanceManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D1099C24()
{
  v1 = *v0;
  sub_1D139177C();
  MEMORY[0x1D38870E0](v1);
  return sub_1D13917CC();
}

uint64_t sub_1D1099C6C()
{
  v1 = *v0;
  sub_1D139177C();
  MEMORY[0x1D38870E0](v1);
  return sub_1D13917CC();
}

uint64_t sub_1D1099CB0()
{
  if (*v0)
  {
    return 0x746169636F737361;
  }

  else
  {
    return 0x65756C6156776172;
  }
}

uint64_t sub_1D1099CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6156776172 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D139162C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746169636F737361 && a2 == 0xEF65756C61566465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D139162C();

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

uint64_t sub_1D1099DE8(uint64_t a1)
{
  v2 = sub_1D109C96C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1099E24(uint64_t a1)
{
  v2 = sub_1D109C96C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _s15HealthRecordsUI26RecordAnchorPublisherErrorO9hashValueSivg_0()
{
  sub_1D139177C();
  MEMORY[0x1D38870E0](0);
  return sub_1D13917CC();
}

uint64_t sub_1D1099EAC()
{
  sub_1D139177C();
  MEMORY[0x1D38870E0](0);
  return sub_1D13917CC();
}

uint64_t OnboardingViewIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v31 = sub_1D138D5EC();
  v29 = *(v31 - 8);
  v3 = MEMORY[0x1EEE9AC00](v31);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - v5;
  sub_1D109CA14(0, &qword_1EC609DA0, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v32 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - v9;
  v11 = type metadata accessor for OnboardingViewIdentifier();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D109C96C();
  v14 = v34;
  sub_1D13917FC();
  if (!v14)
  {
    v34 = v13;
    v16 = v32;
    v15 = v33;
    v37 = 0;
    v17 = sub_1D13914EC();
    v18 = v8;
    if (v17 <= 2)
    {
      if (!v17)
      {
        goto LABEL_14;
      }

      v19 = v16;
      if (v17 == 1 || v17 == 2)
      {
        goto LABEL_14;
      }

LABEL_13:
      v24 = v18;
      sub_1D109C9C0();
      swift_allocError();
      swift_willThrow();
      (*(v19 + 8))(v10, v24);
      return __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    if (v17 == 3)
    {
      v28 = a1;
      v35 = 1;
      sub_1D10A02CC(&qword_1EC609DB8, MEMORY[0x1E69695A8]);
      v23 = v31;
      sub_1D13914FC();
      (*(v16 + 8))(v10, v8);
      v26 = v34;
      (*(v29 + 32))(v34, v6, v23);
      a1 = v28;
    }

    else
    {
      if (v17 == 4)
      {
LABEL_14:
        (*(v16 + 8))(v10, v18);
        v26 = v34;
        goto LABEL_15;
      }

      v19 = v16;
      if (v17 != 5)
      {
        goto LABEL_13;
      }

      v28 = a1;
      v20 = v18;
      v36 = 1;
      sub_1D10A02CC(&qword_1EC609DB8, MEMORY[0x1E69695A8]);
      v22 = v30;
      v21 = v31;
      sub_1D13914FC();
      (*(v19 + 8))(v10, v20);
      v26 = v34;
      (*(v29 + 32))(v34, v22, v21);
      a1 = v28;
    }

LABEL_15:
    swift_storeEnumTagMultiPayload();
    sub_1D10A0820(v26, v15, type metadata accessor for OnboardingViewIdentifier);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t OnboardingViewIdentifier.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D138D5EC();
  v5 = *(v4 - 8);
  v29 = v4;
  v30 = v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = type metadata accessor for OnboardingViewIdentifier();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D109CA14(0, &qword_1EC609DC0, MEMORY[0x1E69E6F58]);
  v14 = v13;
  v32 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D109C96C();
  sub_1D139181C();
  sub_1D109F604(v2, v12, type metadata accessor for OnboardingViewIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v34 = 0;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v35 = 0;
    }

    else
    {
      v38 = 0;
    }

    sub_1D139157C();
    return (*(v32 + 8))(v16, v14);
  }

  if (!EnumCaseMultiPayload)
  {
    v23 = v29;
    v24 = v30;
    (*(v30 + 32))(v9, v12, v29);
    v37 = 0;
    v25 = v31;
    sub_1D139157C();
    if (!v25)
    {
      v36 = 1;
      sub_1D10A02CC(&qword_1EC609DC8, MEMORY[0x1E69695A8]);
      sub_1D139158C();
    }

    (*(v24 + 8))(v9, v23);
    return (*(v32 + 8))(v16, v14);
  }

  v18 = v14;
  v19 = v30;
  if (EnumCaseMultiPayload == 1)
  {
    v21 = v28;
    v20 = v29;
    (*(v30 + 32))(v28, v12, v29);
    v40 = 0;
    v22 = v31;
    sub_1D139157C();
    if (!v22)
    {
      v39 = 1;
      sub_1D10A02CC(&qword_1EC609DC8, MEMORY[0x1E69695A8]);
      sub_1D139158C();
    }

    (*(v19 + 8))(v21, v20);
  }

  else
  {
    v33 = 0;
    sub_1D139157C();
  }

  return (*(v32 + 8))(v16, v18);
}

Swift::Void __swiftcall OnboardingDismissible.setOnboarding(dismissed:)(Swift::Bool dismissed)
{
  v3 = v2;
  v4 = v1;
  v5 = dismissed;
  v6 = type metadata accessor for OnboardingViewIdentifier();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = (*(v3 + 16))(v4, v3);
  type metadata accessor for OnboardingTileAppearanceManager();
  inited = swift_initStackObject();
  *(inited + 16) = v9;
  v11 = objc_allocWithZone(MEMORY[0x1E696C210]);
  v12 = v9;
  v13 = sub_1D139012C();
  v14 = [v11 initWithCategory:0 domainName:v13 healthStore:v12];

  *(inited + 24) = v14;
  (*(v3 + 8))(v4, v3);
  sub_1D1096F38(v5, v8);

  swift_setDeallocating();

  sub_1D10A06F0(v8, type metadata accessor for OnboardingViewIdentifier);
}

uint64_t OnboardingDismissible.isDismissed()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingViewIdentifier();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = (*(a2 + 16))(a1, a2);
  type metadata accessor for OnboardingTileAppearanceManager();
  inited = swift_initStackObject();
  v9 = objc_allocWithZone(MEMORY[0x1E696C210]);
  v10 = sub_1D139012C();
  v11 = [v9 initWithCategory:0 domainName:v10 healthStore:v7];

  *(inited + 24) = v11;
  (*(a2 + 8))(a1, a2);
  v12 = sub_1D1099830();

  sub_1D10A06F0(v6, type metadata accessor for OnboardingViewIdentifier);
  return v12;
}

uint64_t type metadata accessor for OnboardingViewIdentifier()
{
  result = qword_1EE069DD8;
  if (!qword_1EE069DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D109AC18(uint64_t a1)
{
  sub_1D109F04C(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D109ACA4()
{
  if (!qword_1EC609D78)
  {
    sub_1D1080EA4(255, &qword_1EE06B690);
    v0 = sub_1D138F72C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609D78);
    }
  }
}

void sub_1D109AD20()
{
  if (!qword_1EC609D88)
  {
    sub_1D109D02C(255, &qword_1EC609D90, MEMORY[0x1E69695A8]);
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609D88);
    }
  }
}

unint64_t sub_1D109AD94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D1093420();
    v3 = sub_1D139144C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D11362EC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
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

uint64_t _s15HealthRecordsUI24OnboardingViewIdentifierO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D138D5EC();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - v8;
  v10 = type metadata accessor for OnboardingViewIdentifier();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - v14;
  sub_1D10A068C();
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v17 + 56);
  sub_1D109F604(a1, v19, type metadata accessor for OnboardingViewIdentifier);
  sub_1D109F604(a2, &v19[v20], type metadata accessor for OnboardingViewIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v28 = swift_getEnumCaseMultiPayload();
      v27 = type metadata accessor for OnboardingViewIdentifier;
      if (v28 != 3)
      {
        goto LABEL_18;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v26 = swift_getEnumCaseMultiPayload();
      v27 = type metadata accessor for OnboardingViewIdentifier;
      if (v26 != 4)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v30 = swift_getEnumCaseMultiPayload();
      v27 = type metadata accessor for OnboardingViewIdentifier;
      if (v30 != 5)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D109F604(v19, v15, type metadata accessor for OnboardingViewIdentifier);
      if (!swift_getEnumCaseMultiPayload())
      {
        v32 = v35;
        v31 = v36;
        (*(v35 + 32))(v9, &v19[v20], v36);
        v24 = sub_1D138D5BC();
        v33 = *(v32 + 8);
        v33(v9, v31);
        v33(v15, v31);
        goto LABEL_20;
      }

      v13 = v15;
      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1D109F604(v19, v13, type metadata accessor for OnboardingViewIdentifier);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = v35;
        v22 = v36;
        (*(v35 + 32))(v7, &v19[v20], v36);
        v24 = sub_1D138D5BC();
        v25 = *(v23 + 8);
        v25(v7, v22);
        v25(v13, v22);
LABEL_20:
        v27 = type metadata accessor for OnboardingViewIdentifier;
        goto LABEL_21;
      }

LABEL_12:
      (*(v35 + 8))(v13, v36);
LABEL_18:
      v24 = 0;
      v27 = sub_1D10A068C;
      goto LABEL_21;
    }

    v29 = swift_getEnumCaseMultiPayload();
    v27 = type metadata accessor for OnboardingViewIdentifier;
    if (v29 != 2)
    {
      goto LABEL_18;
    }
  }

  v24 = 1;
LABEL_21:
  sub_1D10A06F0(v19, v27);
  return v24 & 1;
}

unint64_t sub_1D109B2FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D109F4D8(0, &qword_1EC609E40, &qword_1EE06B780, 0x1E696C3D0, &qword_1EE06B778);
    v3 = sub_1D139144C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1D129DF14(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_1D109B408(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D10A0750(0, &qword_1EC609E38, type metadata accessor for TimelineViewDataDayCollection);
    v3 = sub_1D139144C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D11362EC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_1D109B51C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1D10A0888();
  v3 = sub_1D139144C();
  v4 = *(a1 + 48);
  *v21 = *(a1 + 32);
  *&v21[16] = v4;
  v5 = *(a1 + 80);
  *&v21[32] = *(a1 + 64);
  *&v21[48] = v5;
  *&v21[64] = *(a1 + 96);
  v6 = v21[0];
  result = sub_1D12A2F78(v21[0]);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_1D109F32C(v21, v20, &qword_1EE06B4B0, &type metadata for DisplayCategory.Kind, &type metadata for DisplayCategory, sub_1D10951AC);
    return v3;
  }

  v9 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v6;
    v10 = v3[7] + 72 * result;
    *v10 = *&v21[8];
    v11 = *&v21[24];
    v12 = *&v21[40];
    v13 = *&v21[56];
    *(v10 + 64) = *&v21[72];
    *(v10 + 32) = v12;
    *(v10 + 48) = v13;
    *(v10 + 16) = v11;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_1D109F32C(v21, v20, &qword_1EE06B4B0, &type metadata for DisplayCategory.Kind, &type metadata for DisplayCategory, sub_1D10951AC);
    v17 = v9[1];
    *v21 = *v9;
    *&v21[16] = v17;
    v18 = v9[3];
    *&v21[32] = v9[2];
    *&v21[48] = v18;
    *&v21[64] = v9[4];
    v6 = v21[0];
    result = sub_1D12A2F78(v21[0]);
    v9 += 5;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D109B6E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D109D0FC();
    v3 = sub_1D139144C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1D129E04C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_1D109B7D4(uint64_t a1)
{
  sub_1D109D02C(0, &qword_1EC609DF8, MEMORY[0x1E69A3690]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1D10A0750(0, &qword_1EC609E00, MEMORY[0x1E69A3690]);
    v8 = sub_1D139144C();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1D109D090(v10, v6, &qword_1EC609DF8, MEMORY[0x1E69A3690]);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1D11362EC(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1D138E52C();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D109B9EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D10A0750(0, &qword_1EC609DF0, sub_1D109CFDC);
    v3 = sub_1D139144C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D11362EC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_1D109BB18(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    a2(0);
    v4 = sub_1D139144C();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1D11362EC(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_1D109BC14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D109F58C();
    v3 = sub_1D139144C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D109F604(v4, &v13, sub_1D109F66C);
      v5 = v13;
      v6 = v14;
      result = sub_1D11362EC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D102CC18(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_1D109BD80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D109F0B0();
    v3 = sub_1D139144C();

    for (i = (a1 + 64); ; i += 5)
    {
      v15 = *(i - 1);
      v16 = *(i - 2);
      v5 = *i;
      v6 = *(i - 3);
      v7 = *(&v15 + 1);

      v8 = v15;
      result = sub_1D129E12C(v16, v6, v15, *(&v15 + 1));
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 32 * result);
      *v11 = v16;
      v11[1] = v15;
      *(v3[7] + 8 * result) = v5;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_1D109BEB0(uint64_t a1)
{
  sub_1D10A0128(0, &qword_1EE06B058, MEMORY[0x1E69695A8], sub_1D109FF3C);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1D10A0208(0, &qword_1EC609F88, MEMORY[0x1E69695A8], sub_1D109FF3C, sub_1D109F9A8);
    v8 = sub_1D139144C();
    v9 = &v6[*(v3 + 48)];
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1D109FFA0(v10, v6, &qword_1EE06B058, MEMORY[0x1E69695A8], sub_1D109FF3C);
      result = sub_1D129E240(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D138D5EC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 72 * v14;
      *v17 = *v9;
      v18 = *(v9 + 1);
      v19 = *(v9 + 2);
      v20 = *(v9 + 3);
      *(v17 + 64) = *(v9 + 8);
      *(v17 + 32) = v19;
      *(v17 + 48) = v20;
      *(v17 + 16) = v18;
      v21 = v8[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v8[2] = v23;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D109C134(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D10A09BC();
    v3 = sub_1D139144C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D109F604(v4, &v17, sub_1D10A0A50);
      v5 = v17;
      v6 = v18;
      result = sub_1D11362EC(v17, v18);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 72 * result;
      *v10 = v19;
      v11 = v20;
      v12 = v21;
      v13 = v22;
      *(v10 + 64) = v23;
      *(v10 + 32) = v12;
      *(v10 + 48) = v13;
      *(v10 + 16) = v11;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      v4 += 88;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_1D109C2A8(double *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  v4 = *(a1 + 2);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1D10A08EC(0, a2, a3, a4, MEMORY[0x1E69E6EC8]);
  v6 = sub_1D139144C();
  v7 = a1[4];
  v8 = *(a1 + 5);
  result = sub_1D129E314(v7);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v19 = v8;
    return v6;
  }

  v11 = a1 + 7;
  while (1)
  {
    *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v6[6] + 8 * result) = v7;
    *(v6[7] + 8 * result) = v8;
    v12 = v6[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v6[2] = v14;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v15 = v11 + 2;
    v7 = *(v11 - 1);
    v16 = *v11;
    v17 = v8;
    result = sub_1D129E314(v7);
    v11 = v15;
    v8 = v16;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D109C3D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D109F4D8(0, &qword_1EC609ED0, &qword_1EC609EC8, 0x1E696C258, &qword_1EC609ED8);
    v3 = sub_1D139144C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1D129E360(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_1D109C528(uint64_t a1)
{
  sub_1D109D02C(0, &qword_1EC609D90, MEMORY[0x1E69695A8]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1D10A0750(0, &qword_1EC609FB8, MEMORY[0x1E69695A8]);
    v8 = sub_1D139144C();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1D109D090(v10, v6, &qword_1EC609D90, MEMORY[0x1E69695A8]);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1D11362EC(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1D138D5EC();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_1D109C740(uint64_t a1)
{
  sub_1D109D02C(0, &qword_1EC609D90, MEMORY[0x1E69695A8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D109C7B8()
{
  result = qword_1EC609D98;
  if (!qword_1EC609D98)
  {
    type metadata accessor for OnboardingTileAppearanceManager();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC609D98);
  }

  return result;
}

void sub_1D109C820()
{
  if (!qword_1EE0696C0)
  {
    sub_1D109C8BC();
    sub_1D10A02CC(&qword_1EE069678, sub_1D109C8BC);
    v0 = sub_1D138F54C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0696C0);
    }
  }
}

void sub_1D109C8BC()
{
  if (!qword_1EE069670)
  {
    sub_1D109F04C(255, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    sub_1D1080EA4(255, &qword_1EE06B690);
    v0 = sub_1D138F72C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE069670);
    }
  }
}

unint64_t sub_1D109C96C()
{
  result = qword_1EC609DA8;
  if (!qword_1EC609DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC609DA8);
  }

  return result;
}

unint64_t sub_1D109C9C0()
{
  result = qword_1EC609DB0;
  if (!qword_1EC609DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC609DB0);
  }

  return result;
}

void sub_1D109CA14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D109C96C();
    v7 = a3(a1, &type metadata for OnboardingViewIdentifier.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D109CB88()
{
  result = sub_1D138D5EC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnboardingViewIdentifier.CodingError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
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

_WORD *storeEnumTagSinglePayload for OnboardingViewIdentifier.CodingError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnboardingViewIdentifier.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OnboardingViewIdentifier.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D109CE80()
{
  result = qword_1EC609DD0;
  if (!qword_1EC609DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC609DD0);
  }

  return result;
}

unint64_t sub_1D109CED8()
{
  result = qword_1EC609DD8;
  if (!qword_1EC609DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC609DD8);
  }

  return result;
}

unint64_t sub_1D109CF30()
{
  result = qword_1EC609DE0;
  if (!qword_1EC609DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC609DE0);
  }

  return result;
}

unint64_t sub_1D109CF88()
{
  result = qword_1EC609DE8;
  if (!qword_1EC609DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC609DE8);
  }

  return result;
}

void sub_1D109CFDC()
{
  if (!qword_1EE06B0F0)
  {
    v0 = sub_1D139052C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06B0F0);
    }
  }
}

void sub_1D109D02C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D109D090(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D109D02C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D109D0FC()
{
  if (!qword_1EC609E08)
  {
    sub_1D106F934(255, &qword_1EC609E10);
    sub_1D109F778(255, &qword_1EC609E18, MEMORY[0x1E69E5E28]);
    sub_1D109D274(&qword_1EC609E30, &qword_1EC609E10);
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609E08);
    }
  }
}

void sub_1D109D1C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D139052C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D109D220()
{
  result = qword_1EE06BB50;
  if (!qword_1EE06BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06BB50);
  }

  return result;
}

uint64_t sub_1D109D274(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D106F934(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D109D2C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D109FD18(0, &qword_1EC609F28, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E6EC8]);
    v3 = sub_1D139144C();
    v4 = a1 + 32;

    v5 = MEMORY[0x1E69E7CA0];
    while (1)
    {
      sub_1D109F32C(v4, &v14, &qword_1EC609F30, MEMORY[0x1E69E6158], v5 + 8, sub_1D10951AC);
      v6 = v14;
      v7 = v15;
      result = sub_1D11362EC(v14, v15);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      result = sub_1D109E39C(&v16, (v3[7] + 32 * result));
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 48;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_1D109D430(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D109FE84();
    v3 = sub_1D139144C();
    for (i = (a1 + 104); ; i += 10)
    {
      v21 = v1;
      v5 = *(i - 9);
      v6 = *(i - 8);
      v7 = *(i - 7);
      v8 = *(i - 48);
      v9 = *(i - 40);
      v11 = *(i - 4);
      v10 = *(i - 3);
      v23 = *(i - 2);
      v22 = *(i - 8);
      v12 = *i;
      result = sub_1D129E444(v5, v6, v7, v8);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v3[6] + 32 * result;
      *v15 = v5;
      *(v15 + 8) = v6;
      *(v15 + 16) = v7;
      *(v15 + 24) = v8;
      v16 = v3[7] + 48 * result;
      *v16 = v9;
      *(v16 + 8) = v11;
      *(v16 + 16) = v10;
      *(v16 + 24) = v23;
      *(v16 + 32) = v22;
      *(v16 + 40) = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      v20 = v12;
      v1 = v21 - 1;
      if (v21 == 1)
      {
        return v3;
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

unint64_t sub_1D109D580(uint64_t a1)
{
  sub_1D10A0620(0, &qword_1EC609F38, MEMORY[0x1E69695A8]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v25 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1D109E2E8(0, &qword_1EC609F40, MEMORY[0x1E69695A8], sub_1D109F9A8);
    v8 = sub_1D139144C();
    v9 = &v6[*(v3 + 48)];
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1D109F32C(v10, v6, &qword_1EC609F38, MEMORY[0x1E69695A8], &type metadata for AccountIcon, sub_1D10A0620);
      result = sub_1D129E240(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D138D5EC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 48 * v14;
      v18 = *(v9 + 3);
      v19 = v9[32];
      v20 = *(v9 + 5);
      v21 = *(v9 + 8);
      *v17 = *v9;
      *(v17 + 8) = v21;
      *(v17 + 24) = v18;
      *(v17 + 32) = v19;
      *(v17 + 40) = v20;
      v22 = v8[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_10;
      }

      v8[2] = v24;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D109D7FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x1E69E69B8];
    sub_1D109FD18(0, &qword_1EC609F20, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0], MEMORY[0x1E69E6EC8]);
    v4 = sub_1D139144C();
    v5 = a1 + 32;

    v6 = MEMORY[0x1E69E7CA0];
    while (1)
    {
      sub_1D109F32C(v5, v15, &qword_1EC60A5A0, v3, v6 + 8, sub_1D10951AC);
      result = sub_1D129E400(v15);
      if (v8)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = v4[6] + 40 * result;
      v10 = v15[0];
      v11 = v15[1];
      *(v9 + 32) = v16;
      *v9 = v10;
      *(v9 + 16) = v11;
      result = sub_1D109E39C(&v17, (v4[7] + 32 * result));
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      v5 += 72;
      if (!--v1)
      {

        return v4;
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

unint64_t sub_1D109D974(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D109FC5C();
    v3 = sub_1D139144C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1D12A2F74(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_1D109DA60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1D10A0208(0, &qword_1EC609EB0, type metadata accessor for UIUserInterfaceSizeClass, sub_1D109F43C, sub_1D109F4A4);
  v3 = sub_1D139144C();
  v4 = *(a1 + 32);
  v16 = *(a1 + 40);
  v5 = *(a1 + 56);
  result = sub_1D12A2F7C(v4);
  v7 = v16;
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v3;
  }

  v9 = (a1 + 88);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v10 = v3[7] + 24 * result;
    *v10 = v7;
    *(v10 + 16) = v5;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 4;
    v4 = *(v9 - 3);
    v17 = *(v9 - 1);
    v5 = *v9;
    swift_unknownObjectRetain();
    result = sub_1D12A2F7C(v4);
    v9 = v14;
    v7 = v17;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D109DBCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D109F778(0, &qword_1EC609F00, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D139144C();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[4];
      v21 = v4[3];
      v22 = v6;
      v7 = v4[2];
      v19 = v4[1];
      v20 = v7;
      v18 = *v4;
      v8 = *(&v22 + 1);
      v27 = *(v4 + 8);
      v25 = v7;
      v26 = v21;
      v23 = v18;
      v24 = v19;
      sub_1D109F604(&v18, &v17, sub_1D109F818);
      result = sub_1D129DF64(&v23);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 72 * result;
      v12 = v26;
      *(v11 + 32) = v25;
      *(v11 + 48) = v12;
      *(v11 + 64) = v27;
      v13 = v24;
      *v11 = v23;
      *(v11 + 16) = v13;
      *(v3[7] + 8 * result) = v8;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_11;
      }

      v3[2] = v16;
      if (!i)
      {

        return v3;
      }

      v4 += 5;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D109DD38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D10A0314();
    v3 = sub_1D139144C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1D129E3B0(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_1D109DE24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D109F3A0();
    v3 = sub_1D139144C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1D12A2F74(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_1D109DF4C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v5 = *(a1 + 16);
  if (v5)
  {
    a2(0);
    v10 = sub_1D139144C();
    v11 = a1 + 32;

    v12 = MEMORY[0x1E69E7CA0];
    while (1)
    {
      sub_1D109F32C(v11, &v19, a3, a4, v12 + 8, sub_1D10A0620);
      v13 = v19;
      result = a5(v19);
      if (v15)
      {
        break;
      }

      *(v10 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v10[6] + 8 * result) = v13;
      result = sub_1D109E39C(&v20, (v10[7] + 32 * result));
      v16 = v10[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v10[2] = v18;
      v11 += 40;
      if (!--v5)
      {

        return v10;
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

unint64_t sub_1D109E0BC(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    a2(0);
    v4 = sub_1D139144C();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_1D11362EC(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
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

void sub_1D109E1B8()
{
  if (!qword_1EC609E48)
  {
    sub_1D106F934(255, &qword_1EC609680);
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609E48);
    }
  }
}

void sub_1D109E230()
{
  if (!qword_1EC609E50)
  {
    sub_1D106F934(255, &qword_1EE06B6C0);
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609E50);
    }
  }
}

void sub_1D109E2E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_1D139145C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

_OWORD *sub_1D109E39C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1D109E3AC(uint64_t a1)
{
  sub_1D10A0620(0, &qword_1EE06B4D0, type metadata accessor for BrowseCategory);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1D109E2E8(0, &qword_1EE06B0B0, type metadata accessor for BrowseCategory, sub_1D10A0298);
    v8 = sub_1D139144C();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1D109F32C(v10, v6, &qword_1EE06B4D0, type metadata accessor for BrowseCategory, MEMORY[0x1E69E6530], sub_1D10A0620);
      result = sub_1D129E5D8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for BrowseCategory();
      result = sub_1D10A0820(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for BrowseCategory);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D109E5FC(uint64_t a1)
{
  sub_1D10A04DC();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1D10A0578();
    v8 = sub_1D139144C();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1D109F604(v10, v6, sub_1D10A04DC);
      result = sub_1D129E5D8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for BrowseCategory();
      result = sub_1D10A0820(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for BrowseCategory);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

void *sub_1D109E7CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1D109F1A0();
  v3 = sub_1D139144C();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1D12A2F78(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1D12A2F78(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D109E8D0(uint64_t a1)
{
  sub_1D10A03D0();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1D10A0450();
    v8 = sub_1D139144C();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1D109F604(v10, v6, sub_1D10A03D0);
      result = sub_1D129E240(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D138D5EC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D109EAA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D10A0088();
    v3 = sub_1D139144C();
    v4 = a1 + 56;
    while (1)
    {
      v20 = v1;
      v5 = *(v4 - 24);
      v6 = *(v4 - 16);
      v7 = *(v4 - 8);
      v8 = *v4;
      v9 = *(v4 + 8);
      v10 = *(v4 + 16);
      v11 = *(v4 + 24);
      v12 = *(v4 + 32);
      v21 = *(v4 + 48);
      v22 = *(v4 + 40);
      result = sub_1D129E444(v5, v6, v7, *v4);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v3[6] + 32 * result;
      *v15 = v5;
      *(v15 + 8) = v6;
      *(v15 + 16) = v7;
      *(v15 + 24) = v8;
      v16 = (v3[7] + 48 * result);
      *v16 = v9;
      v16[1] = v10;
      v16[2] = v11;
      v16[3] = v12;
      v16[4] = v22;
      v16[5] = v21;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v4 += 80;
      v3[2] = v19;
      sub_1D10A00EC(v9, v10, v11, v12, v22, v21);
      v1 = v20 - 1;
      if (v20 == 1)
      {
        return v3;
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

unint64_t sub_1D109EBEC(uint64_t a1)
{
  sub_1D10A0128(0, qword_1EE06AF78, type metadata accessor for BrowseCategory, sub_1D10A01A4);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1D10A0208(0, &qword_1EC609F98, type metadata accessor for BrowseCategory, sub_1D10A01A4, sub_1D10A0298);
    v8 = sub_1D139144C();
    v9 = &v6[*(v3 + 48)];
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1D109FFA0(v10, v6, qword_1EE06AF78, type metadata accessor for BrowseCategory, sub_1D10A01A4);
      result = sub_1D129E5D8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for BrowseCategory();
      result = sub_1D10A0820(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for BrowseCategory);
      v17 = v8[7] + 72 * v14;
      *v17 = *v9;
      v18 = *(v9 + 1);
      v19 = *(v9 + 2);
      v20 = *(v9 + 3);
      *(v17 + 64) = *(v9 + 8);
      *(v17 + 32) = v19;
      *(v17 + 48) = v20;
      *(v17 + 16) = v18;
      v21 = v8[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v8[2] = v23;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D109EE84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D10A0208(0, &qword_1EC609E60, type metadata accessor for DocumentReadingOptionKey, type metadata accessor for DocumentType, sub_1D109E368);
    v3 = sub_1D139144C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1D12A2F74(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
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

void sub_1D109EFB4()
{
  if (!qword_1EC609E68)
  {
    sub_1D109F04C(255, &qword_1EC609E70, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem, MEMORY[0x1E69E62F8]);
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609E68);
    }
  }
}

void sub_1D109F04C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D109F0B0()
{
  if (!qword_1EC609E78)
  {
    sub_1D109F04C(255, &qword_1EC609E70, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem, MEMORY[0x1E69E62F8]);
    sub_1D109F14C();
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609E78);
    }
  }
}

unint64_t sub_1D109F14C()
{
  result = qword_1EC609E80;
  if (!qword_1EC609E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC609E80);
  }

  return result;
}

void sub_1D109F1A0()
{
  if (!qword_1EC609E88)
  {
    sub_1D109D1C4(255, &qword_1EC609E90, &qword_1EE06B0E0, 0x1E696C250, sub_1D106F934);
    sub_1D109F238();
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609E88);
    }
  }
}

unint64_t sub_1D109F238()
{
  result = qword_1EE06B4C0;
  if (!qword_1EE06B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06B4C0);
  }

  return result;
}

void sub_1D109F28C()
{
  if (!qword_1EC609E98)
  {
    type metadata accessor for AttributeName(255);
    sub_1D10A02CC(&qword_1EC6095A8, type metadata accessor for AttributeName);
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609E98);
    }
  }
}

uint64_t sub_1D109F32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1D109F3A0()
{
  if (!qword_1EC609EA8)
  {
    type metadata accessor for FeatureKey(255);
    sub_1D10A02CC(&qword_1EC609598, type metadata accessor for FeatureKey);
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609EA8);
    }
  }
}

unint64_t sub_1D109F43C()
{
  result = qword_1EC609EB8;
  if (!qword_1EC609EB8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC609EB8);
  }

  return result;
}

void sub_1D109F4D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_1D106F934(255, a3);
    sub_1D106F934(255, &qword_1EE06B790);
    sub_1D109D274(a5, a3);
    v8 = sub_1D139145C();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D109F58C()
{
  if (!qword_1EC609EE0)
  {
    sub_1D1080EA4(255, &qword_1EC609E28);
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609EE0);
    }
  }
}

uint64_t sub_1D109F604(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D109F66C()
{
  if (!qword_1EC609EE8)
  {
    sub_1D1080EA4(255, &qword_1EC609E28);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC609EE8);
    }
  }
}

void sub_1D109F6E4()
{
  if (!qword_1EC609EF0)
  {
    sub_1D109D1C4(255, &qword_1EC609EF8, &qword_1EC60F6A0, MEMORY[0x1E69A3310], sub_1D1080EA4);
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609EF0);
    }
  }
}

void sub_1D109F778(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1D109D1C4(255, &qword_1EC609E20, &unk_1EC609E28, &protocol descriptor for TimelineViewData, sub_1D1080EA4);
    v7 = v6;
    v8 = sub_1D109D220();
    v9 = a3(a1, &type metadata for DisplayCategory, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D109F818()
{
  if (!qword_1EC609F08)
  {
    sub_1D109D1C4(255, &qword_1EC609E20, &unk_1EC609E28, &protocol descriptor for TimelineViewData, sub_1D1080EA4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC609F08);
    }
  }
}

void sub_1D109F8AC()
{
  if (!qword_1EC609F10)
  {
    type metadata accessor for CIImageRepresentationOption(255);
    sub_1D10A02CC(&qword_1EC609578, type metadata accessor for CIImageRepresentationOption);
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609F10);
    }
  }
}

uint64_t sub_1D109F94C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1D109F9DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D109FB58();
    v3 = sub_1D139144C();
    v4 = (a1 + 32);

    v5 = v1 - 1;
    v6 = MEMORY[0x1E69E6530];
    while (1)
    {
      v7 = v4[3];
      v20 = v4[2];
      v21 = v7;
      v8 = v4[4];
      v9 = v4[1];
      v19[0] = *v4;
      v19[1] = v9;
      v25 = v20;
      v26 = v7;
      v27 = *(v4 + 8);
      v24 = v9;
      v22 = v8;
      v23 = v19[0];
      sub_1D109F32C(v19, &v18, &unk_1EC609F48, &type metadata for DisplayCategory, v6, sub_1D10951AC);
      result = sub_1D129DF64(&v23);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 72 * result;
      v13 = v26;
      *(v12 + 32) = v25;
      *(v12 + 48) = v13;
      *(v12 + 64) = v27;
      v14 = v24;
      *v12 = v23;
      *(v12 + 16) = v14;
      *(v3[7] + 8 * result) = *(&v22 + 1);
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_11;
      }

      v3[2] = v17;
      if (!v5)
      {

        return v3;
      }

      --v5;
      v4 += 5;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1D109FB58()
{
  if (!qword_1EE06A500)
  {
    sub_1D109D220();
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06A500);
    }
  }
}

void sub_1D109FBBC()
{
  if (!qword_1EC609F50)
  {
    type metadata accessor for Key(255);
    sub_1D10A02CC(&qword_1EC60F530, type metadata accessor for Key);
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609F50);
    }
  }
}

void sub_1D109FC5C()
{
  if (!qword_1EC609F58)
  {
    type metadata accessor for Key(255);
    sub_1D106F934(255, &qword_1EE06B6E0);
    sub_1D10A02CC(&qword_1EC60F530, type metadata accessor for Key);
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609F58);
    }
  }
}

void sub_1D109FD18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, MEMORY[0x1E69E7CA0] + 8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D109FD78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D109F4D8(0, &qword_1EC609F68, &qword_1EC609F60, 0x1E696C100, &qword_1EC609F70);
    v3 = sub_1D139144C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1D129E858(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
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

void sub_1D109FE84()
{
  if (!qword_1EC609F80)
  {
    sub_1D109FEE8();
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609F80);
    }
  }
}

unint64_t sub_1D109FEE8()
{
  result = qword_1EE06B030;
  if (!qword_1EE06B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06B030);
  }

  return result;
}

void sub_1D109FF3C()
{
  if (!qword_1EE06AED0)
  {
    sub_1D109FEE8();
    v0 = type metadata accessor for UnboundedCache();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06AED0);
    }
  }
}

uint64_t sub_1D109FFA0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  sub_1D10A0128(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1D10A0010()
{
  if (!qword_1EE06A4F8)
  {
    sub_1D106F934(255, &qword_1EE06B0C0);
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06A4F8);
    }
  }
}

void sub_1D10A0088()
{
  if (!qword_1EC609F90)
  {
    sub_1D109FEE8();
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609F90);
    }
  }
}

id sub_1D10A00EC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if ((a5 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    a6 = a1;
    v6 = vars8;
  }

  return a6;
}

void sub_1D10A0128(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D10A01A4()
{
  if (!qword_1EE06AEE0)
  {
    sub_1D109FEE8();
    v0 = type metadata accessor for UnboundedCache();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06AEE0);
    }
  }
}

void sub_1D10A0208(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    a5();
    v8 = sub_1D139145C();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D10A02CC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D10A0314()
{
  if (!qword_1EC609FA0)
  {
    sub_1D106F934(255, &qword_1EE06B6C0);
    sub_1D106F934(255, &unk_1EC60D420);
    sub_1D109D274(&qword_1EE06B0C8, &qword_1EE06B6C0);
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609FA0);
    }
  }
}

void sub_1D10A03D0()
{
  if (!qword_1EE06A400)
  {
    sub_1D138D5EC();
    sub_1D106F934(255, &unk_1EE06A5F8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE06A400);
    }
  }
}

void sub_1D10A0450()
{
  if (!qword_1EC609FA8)
  {
    sub_1D138D5EC();
    sub_1D106F934(255, &unk_1EE06A5F8);
    sub_1D109F9A8();
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609FA8);
    }
  }
}

void sub_1D10A04DC()
{
  if (!qword_1EE06A220)
  {
    type metadata accessor for BrowseCategory();
    sub_1D109D1C4(255, &qword_1EE0695D0, &qword_1EE06A630, 0x1E696C388, sub_1D106F934);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE06A220);
    }
  }
}

void sub_1D10A0578()
{
  if (!qword_1EE069518)
  {
    type metadata accessor for BrowseCategory();
    sub_1D109D1C4(255, &qword_1EE0695D0, &qword_1EE06A630, 0x1E696C388, sub_1D106F934);
    sub_1D10A0298();
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE069518);
    }
  }
}

void sub_1D10A0620(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D10A068C()
{
  if (!qword_1EC609FB0)
  {
    type metadata accessor for OnboardingViewIdentifier();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC609FB0);
    }
  }
}

uint64_t sub_1D10A06F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D10A0750(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D139145C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D10A07B4()
{
  if (!qword_1EC609FC0)
  {
    sub_1D138D5EC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC609FC0);
    }
  }
}

uint64_t sub_1D10A0820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D10A0888()
{
  if (!qword_1EE06B0A8)
  {
    sub_1D109F238();
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06B0A8);
    }
  }
}

void sub_1D10A08EC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D106F934(255, a3);
    v9 = sub_1D10A0968();
    v10 = a5(a1, MEMORY[0x1E69E7DE0], v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D10A0968()
{
  result = qword_1EE06B050;
  if (!qword_1EE06B050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06B050);
  }

  return result;
}

void sub_1D10A09BC()
{
  if (!qword_1EC609FD0)
  {
    sub_1D10A08EC(255, qword_1EE06AEE8, &qword_1EE06A540, 0x1E69DCAB8, type metadata accessor for UnboundedCache);
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609FD0);
    }
  }
}

void sub_1D10A0A50()
{
  if (!qword_1EC609FD8)
  {
    sub_1D10A08EC(255, qword_1EE06AEE8, &qword_1EE06A540, 0x1E69DCAB8, type metadata accessor for UnboundedCache);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC609FD8);
    }
  }
}

uint64_t sub_1D10A0B60(unint64_t a1)
{
  v31 = qword_1EC609FF0;
  v2 = *(v1 + qword_1EC609FF0);
  if (v2 >> 62)
  {
    goto LABEL_37;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v3)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1D3886B70](v4, v2);
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v6 = *(v2 + 8 * v4 + 32);

        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          v3 = sub_1D13910DC();
          goto LABEL_3;
        }
      }

      v8 = v6 + OBJC_IVAR____TtC15HealthRecordsUI16AccountLoginItem_action;
      v9 = *(v8 + *(type metadata accessor for ClinicalAccountLoginUpgradeAction() + 20));
      sub_1D10A43FC(v9);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1D10F8300(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_1D10F8300((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      *&v5[8 * v11 + 32] = v9;
      ++v4;
      if (v7 == v3)
      {
        goto LABEL_18;
      }
    }
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_18:

  v12 = a1;
  if (a1 >> 62)
  {
    v24 = sub_1D13910DC();
    v12 = a1;
    v2 = v24;
    if (v24)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_20:
      v13 = 0;
      v14 = v12 & 0xC000000000000001;
      v15 = v12 & 0xFFFFFFFFFFFFFF8;
      v16 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v14)
        {
          v17 = MEMORY[0x1D3886B70](v13);
          v18 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (v13 >= *(v15 + 16))
          {
            goto LABEL_36;
          }

          v17 = *(v12 + 8 * v13 + 32);

          v18 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_35;
          }
        }

        v19 = v17 + OBJC_IVAR____TtC15HealthRecordsUI16AccountLoginItem_action;
        v20 = *(v19 + *(type metadata accessor for ClinicalAccountLoginUpgradeAction() + 20));
        sub_1D10A43FC(v20);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D10F8300(0, *(v16 + 2) + 1, 1, v16);
        }

        v22 = *(v16 + 2);
        v21 = *(v16 + 3);
        v12 = a1;
        if (v22 >= v21 >> 1)
        {
          v23 = sub_1D10F8300((v21 > 1), v22 + 1, 1, v16);
          v12 = a1;
          v16 = v23;
        }

        *(v16 + 2) = v22 + 1;
        *&v16[8 * v22 + 32] = v20;
        ++v13;
        if (v18 == v2)
        {
          goto LABEL_40;
        }
      }
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_40:
  sub_1D13354A4(v5, v16);
  v26 = v25;

  if ((v26 & 1) == 0)
  {

    sub_1D110A350(v28);

    sub_1D138E5AC();

    v29 = *(v32 + v31);
    if (v29 >> 62)
    {
      result = sub_1D13910DC();
      if (result)
      {
        goto LABEL_43;
      }
    }

    else
    {
      result = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_43:
        if ((v29 & 0xC000000000000001) != 0)
        {

          MEMORY[0x1D3886B70](0, v29);
        }

        else
        {
          if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }
        }

        sub_1D1128E58();
        if (v30)
        {

          sub_1D138EA9C();
        }
      }
    }

    return sub_1D138EA9C();
  }

  return result;
}

uint64_t sub_1D10A0FE0()
{
  v0 = sub_1D138E6BC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  sub_1D138E65C();
  sub_1D138E5FC();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v8 = sub_1D138E6AC();
  v7(v6, v0);
  return v8;
}

uint64_t sub_1D10A10FC(void *a1, uint64_t a2)
{
  sub_1D10A3FB0(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  *(v2 + qword_1EC609FF0) = MEMORY[0x1E69E7CC0];
  *(v2 + qword_1EC609FE8) = a2;

  v8 = sub_1D138EA8C();
  v9 = sub_1D13905DC();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_1D13905AC();
  swift_retain_n();
  v10 = a1;
  v11 = sub_1D139059C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v8;
  v12[5] = v10;
  sub_1D107877C(0, 0, v7, &unk_1D139F1F0, v12);

  return v8;
}

uint64_t sub_1D10A12C4()
{
  v0 = sub_1D138E6BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138E65C();
  v4 = sub_1D138E6AC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1D10A1398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = sub_1D13905AC();
  v5[4] = sub_1D139059C();
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_1D10A1458;

  return sub_1D10A1614(a5);
}

uint64_t sub_1D10A1458(uint64_t a1)
{
  *(*v1 + 48) = a1;

  v3 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D10A159C, v3, v2);
}

uint64_t sub_1D10A159C()
{
  v1 = *(v0 + 48);

  sub_1D10A21A0(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D10A1614(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1D138D5EC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1D138F0BC();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  sub_1D10A3FB0(0, &qword_1EC60A080, type metadata accessor for ClinicalAccountLoginUpgradeAction, MEMORY[0x1E69E6720]);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for ClinicalAccountLoginUpgradeAction();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  sub_1D13905AC();
  v2[20] = sub_1D139059C();
  v7 = sub_1D139055C();
  v2[21] = v7;
  v2[22] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D10A1864, v7, v6);
}

uint64_t sub_1D10A1864()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  sub_1D11292FC(*(v0 + 16), 0, 0, 0, v3);
  v4 = *(v2 + 48);
  *(v0 + 184) = v4;
  *(v0 + 192) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 96);

    sub_1D10A440C(v5, &qword_1EC60A080, type metadata accessor for ClinicalAccountLoginUpgradeAction);
    v21 = 0;
LABEL_5:

    v14 = *(v0 + 8);

    return v14(v21);
  }

  v6 = *(v0 + 152);
  v7 = *(v0 + 104);
  sub_1D10A447C(*(v0 + 96), v6);
  v8 = *(v6 + *(v7 + 20));
  *(v0 + 200) = v8;
  if (v8 < 4)
  {
    v9 = *(v0 + 152);
    v10 = *(v0 + 128);
    v11 = *(v0 + 24);

    sub_1D10A3EF0(v9, v10);
    v12 = *(v11 + qword_1EC609FE8);
    type metadata accessor for AccountLoginItem(0);
    v13 = swift_allocObject();

    v21 = v13;
    sub_1D10A2BD0(v10, v12);
    sub_1D10A3F54(v9);
    goto LABEL_5;
  }

  *(v0 + 208) = *(*(v0 + 24) + qword_1EC609FE8);
  v16 = [v8 gatewayID];
  v17 = sub_1D139016C();
  v19 = v18;

  *(v0 + 216) = v19;
  v20 = swift_task_alloc();
  *(v0 + 224) = v20;
  *v20 = v0;
  v20[1] = sub_1D10A1B14;

  return sub_1D1315C70(v17, v19);
}

uint64_t sub_1D10A1B14(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 232) = a1;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1D10A1C60, v4, v3);
}

uint64_t sub_1D10A1C60()
{
  v60 = v0;
  v1 = *(v0 + 232);

  if (v1)
  {
    v2 = *(v0 + 232);
    v3 = *(v0 + 144);
    v4 = *(v0 + 152);
    sub_1D138F06C();
    sub_1D10A3EF0(v4, v3);
    v5 = v2;
    v6 = sub_1D138F0AC();
    v7 = sub_1D13907EC();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 144);
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v12 = *(v0 + 56);
    v56 = v5;
    if (v8)
    {
      v52 = *(v0 + 48);
      v53 = *(v0 + 40);
      v57 = *(v0 + 72);
      v13 = *(v0 + 32);
      v14 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v59 = v54;
      *v14 = 136315394;
      sub_1D10A3EA8(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
      v55 = v12;
      v51 = v7;
      v15 = sub_1D13915CC();
      v17 = v16;
      sub_1D10A3F54(v9);
      v18 = sub_1D11DF718(v15, v17, &v59);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v19 = [v5 identifier];
      sub_1D138D5CC();

      v20 = sub_1D13915CC();
      v22 = v21;
      (*(v53 + 8))(v52, v13);
      v23 = sub_1D11DF718(v20, v22, &v59);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_1D101F000, v6, v51, "AccountLoginDataSource for account %s will ignore gateway upgrade because account %s for the upgradeable gateway is already connected", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v54, -1, -1);
      MEMORY[0x1D38882F0](v14, -1, -1);

      (*(v11 + 8))(v57, v55);
    }

    else
    {

      sub_1D10A3F54(v9);
      (*(v11 + 8))(v10, v12);
    }

    v30 = *(v0 + 200);
    v31 = *(v0 + 184);
    v32 = *(v0 + 104);
    v34 = *(v0 + 80);
    v33 = *(v0 + 88);
    v35 = *(v0 + 16);
    v36 = [v30 gatewayID];
    v37 = sub_1D139016C();
    v39 = v38;

    sub_1D11292FC(v35, 0, v37, v39, v33);
    sub_1D10A44F0(v33, v34, &qword_1EC60A080, type metadata accessor for ClinicalAccountLoginUpgradeAction);
    if (v31(v34, 1, v32) == 1)
    {
      v40 = *(v0 + 200);
      v41 = *(v0 + 152);
      v42 = *(v0 + 80);
      sub_1D10A440C(*(v0 + 88), &qword_1EC60A080, type metadata accessor for ClinicalAccountLoginUpgradeAction);
      sub_1D10A44E0(v40);

      sub_1D10A3F54(v41);
      sub_1D10A440C(v42, &qword_1EC60A080, type metadata accessor for ClinicalAccountLoginUpgradeAction);
      v58 = 0;
      goto LABEL_10;
    }

    v44 = *(v0 + 200);
    v43 = *(v0 + 208);
    v24 = *(v0 + 152);
    v46 = *(v0 + 128);
    v45 = *(v0 + 136);
    v47 = *(v0 + 88);
    sub_1D10A447C(*(v0 + 80), v45);
    sub_1D10A3EF0(v45, v46);
    type metadata accessor for AccountLoginItem(0);
    v48 = swift_allocObject();

    v58 = v48;
    sub_1D10A2BD0(v46, v43);
    sub_1D10A44E0(v44);

    sub_1D10A3F54(v45);
    sub_1D10A440C(v47, &qword_1EC60A080, type metadata accessor for ClinicalAccountLoginUpgradeAction);
  }

  else
  {
    v24 = *(v0 + 152);
    v26 = *(v0 + 120);
    v25 = *(v0 + 128);
    v27 = *(v0 + 24);
    sub_1D10A44E0(*(v0 + 200));
    sub_1D10A3EF0(v24, v25);
    v28 = *(v27 + qword_1EC609FE8);
    type metadata accessor for AccountUpgradeItem(0);
    v29 = swift_allocObject();
    sub_1D10A3EF0(v25, v26);

    v58 = v29;
    sub_1D10A2BD0(v26, v28);
    sub_1D10A3F54(v25);
  }

  sub_1D10A3F54(v24);
LABEL_10:

  v49 = *(v0 + 8);

  return v49(v58);
}

uint64_t sub_1D10A21A0(uint64_t a1)
{
  v7 = a1;
  v2 = MEMORY[0x1E69E7CC0];
  v6 = MEMORY[0x1E69E7CC0];
  if ()
  {

    MEMORY[0x1D3885D90](v3);
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();
    v2 = v6;
  }

  sub_1D10A440C(&v7, &qword_1EC60A078, type metadata accessor for AccountLoginItem);
  v4 = *(v1 + qword_1EC609FF0);
  *(v1 + qword_1EC609FF0) = v2;
  sub_1D10A0B60(v4);
}

uint64_t sub_1D10A22FC()
{
}

uint64_t sub_1D10A233C()
{
  sub_1D138EABC();

  return swift_deallocClassInstance();
}

unint64_t sub_1D10A23B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1D138D5EC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ClinicalAccountLoginUpgradeAction();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D139016C() == a1 && v14 == a2)
  {
  }

  else
  {
    v16 = sub_1D139162C();

    if ((v16 & 1) == 0)
    {
      a3[3] = sub_1D138DF7C();
      a3[4] = sub_1D10A3EA8(&qword_1EC60C2A0, MEMORY[0x1E69A35B8]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_1D138DF6C();
    }
  }

  result = sub_1D138D81C();
  v18 = *(v3 + qword_1EC609FF0);
  if ((v18 & 0xC000000000000001) != 0)
  {
    v24 = result;

    v19 = MEMORY[0x1D3886B70](v24, v18);

    goto LABEL_12;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (result >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v19 = *(v18 + 8 * result + 32);

LABEL_12:
  sub_1D10A3EF0(v19 + OBJC_IVAR____TtC15HealthRecordsUI16AccountLoginItem_action, v13);

  sub_1D1128E58();
  if (v20)
  {
    v25[0] = 0x74497265746F6F46;
    v25[1] = 0xEB000000005F6D65;
    sub_1D138D5DC();
    v21 = sub_1D138D59C();
    v23 = v22;
    (*(v8 + 8))(v10, v7);
    MEMORY[0x1D3885C10](v21, v23);

    a3[3] = sub_1D138EA2C();
    a3[4] = sub_1D10A3EA8(&qword_1EC60A048, MEMORY[0x1E69A3798]);
    __swift_allocate_boxed_opaque_existential_1(a3);
    sub_1D138EA1C();
  }

  else
  {
    a3[3] = sub_1D138DF7C();
    a3[4] = sub_1D10A3EA8(&qword_1EC60C2A0, MEMORY[0x1E69A35B8]);
    __swift_allocate_boxed_opaque_existential_1(a3);
    sub_1D138DF6C();
  }

  return sub_1D10A3F54(v13);
}

id sub_1D10A2764()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI16AccountLoginItem____lazy_storage___spinner;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI16AccountLoginItem____lazy_storage___spinner);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI16AccountLoginItem____lazy_storage___spinner);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1D10A27DC@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = MEMORY[0x1E69E6720];
  sub_1D10A3FB0(0, &qword_1EC60A060, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v26 - v4;
  v27 = sub_1D138F16C();
  v6 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69DBF40];
  sub_1D10A3FB0(0, &qword_1EC60A028, MEMORY[0x1E69DBF40], v2);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v26 - v14;
  v16 = OBJC_IVAR____TtC15HealthRecordsUI16AccountLoginItem____lazy_storage___customAccessory;
  swift_beginAccess();
  sub_1D10A44F0(v1 + v16, v15, &qword_1EC60A028, v9);
  v17 = sub_1D138F13C();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) != 1)
  {
    return (*(v18 + 32))(v28, v15, v17);
  }

  sub_1D10A440C(v15, &qword_1EC60A028, MEMORY[0x1E69DBF40]);
  v26[1] = sub_1D10A2764();
  sub_1D10A42A4();
  v20 = &v8[*(v19 + 48)];
  v21 = *MEMORY[0x1E69DBF28];
  v22 = sub_1D138F0FC();
  (*(*(v22 - 8) + 104))(v8, v21, v22);
  *v20 = sub_1D10A69C4;
  v20[1] = 0;
  (*(v6 + 104))(v8, *MEMORY[0x1E69DBF60], v27);
  v23 = sub_1D138F10C();
  (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  v24 = v28;
  sub_1D138F12C();
  (*(v18 + 16))(v13, v24, v17);
  (*(v18 + 56))(v13, 0, 1, v17);
  swift_beginAccess();
  sub_1D10A4368(v13, v1 + v16);
  return swift_endAccess();
}

uint64_t sub_1D10A2BD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D138D5EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC15HealthRecordsUI16AccountLoginItem____lazy_storage___spinner) = 0;
  v10 = OBJC_IVAR____TtC15HealthRecordsUI16AccountLoginItem____lazy_storage___customAccessory;
  v11 = sub_1D138F13C();
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  sub_1D10A3EF0(a1, v3 + OBJC_IVAR____TtC15HealthRecordsUI16AccountLoginItem_action);
  (*(v7 + 16))(v9, a1, v6);
  v12 = sub_1D1129980();
  v14 = v13;
  v15 = [objc_opt_self() hk_appKeyColor];
  v16 = [objc_opt_self() preferredFontForTextStyle_];
  sub_1D10A3F54(a1);
  *(v3 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  (*(v7 + 32))(v3 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_accountID, v9, v6);
  *(v3 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_manager) = a2;
  v17 = (v3 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_labelText);
  *v17 = v12;
  v17[1] = v14;
  *(v3 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_labelColor) = v15;
  *(v3 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_labelFont) = v16;
  *(v3 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_shouldAlignWithImageInsetText) = 0;
  return v3;
}

void sub_1D10A2E20(void *a1, void *a2)
{
  v3 = v2;
  sub_1D10A3FB0(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_1D138F13C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    sub_1D10A3FB0(0, &qword_1EC60A058, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
    sub_1D138F17C();
    v29 = a2;
    *(swift_allocObject() + 16) = xmmword_1D139E700;
    v15 = a1;
    sub_1D10A27DC(v12);
    sub_1D138F0EC();
    (*(v10 + 8))(v12, v9);
    sub_1D1390B8C();
    v16 = sub_1D10A2764();
    [v16 startAnimating];

    v17 = sub_1D13905DC();
    (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
    sub_1D13905AC();
    v18 = v15;

    v19 = v29;
    v20 = sub_1D139059C();
    v21 = swift_allocObject();
    v22 = MEMORY[0x1E69E85E0];
    v21[2] = v20;
    v21[3] = v22;
    v21[4] = v3;
    v21[5] = v19;
    v21[6] = v14;
    sub_1D107877C(0, 0, v8, &unk_1D139F210, v21);
  }

  else
  {
    v23 = sub_1D13905DC();
    (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
    sub_1D13905AC();

    v24 = a2;
    v25 = sub_1D139059C();
    v26 = swift_allocObject();
    v27 = MEMORY[0x1E69E85E0];
    v26[2] = v25;
    v26[3] = v27;
    v26[4] = v3;
    v26[5] = v24;
    sub_1D107877C(0, 0, v8, &unk_1D139F200, v26);
  }
}

uint64_t sub_1D10A3208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = sub_1D13905AC();
  v6[6] = sub_1D139059C();
  v8 = sub_1D139055C();
  v6[7] = v8;
  v6[8] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D10A32A8, v8, v7);
}

uint64_t sub_1D10A32A8()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC15HealthRecordsUI16AccountLoginItem_action;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1D10A3364;
  v4 = v0[3];

  return sub_1D1316330(v1 + v2, v4);
}

uint64_t sub_1D10A3364()
{

  return MEMORY[0x1EEE6DFA0](sub_1D10A3460, 0, 0);
}

uint64_t sub_1D10A3460()
{
  *(v0 + 80) = sub_1D139059C();
  v2 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D10A34EC, v2, v1);
}

uint64_t sub_1D10A34EC()
{

  v1 = sub_1D10A2764();
  [v1 stopAnimating];

  sub_1D1390B8C();
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1D10A3580, v2, v3);
}

uint64_t sub_1D10A3580()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D10A35E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D13905AC();
  v5[4] = sub_1D139059C();
  v7 = sub_1D139055C();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D10A3678, v7, v6);
}

uint64_t sub_1D10A3678()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC15HealthRecordsUI16AccountLoginItem_action;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1D10A3734;
  v4 = v0[3];

  return sub_1D1316330(v1 + v2, v4);
}

uint64_t sub_1D10A3734()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1D10A3854, v3, v2);
}

uint64_t sub_1D10A3854()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D10A38B4()
{
  sub_1D10A3F54(v0 + OBJC_IVAR____TtC15HealthRecordsUI16AccountLoginItem_action);

  return sub_1D10A440C(v0 + OBJC_IVAR____TtC15HealthRecordsUI16AccountLoginItem____lazy_storage___customAccessory, &qword_1EC60A028, MEMORY[0x1E69DBF40]);
}

uint64_t sub_1D10A3914()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_accountID;
  v2 = sub_1D138D5EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1D102CC38(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_delegate);
  sub_1D10A3F54(v0 + OBJC_IVAR____TtC15HealthRecordsUI16AccountLoginItem_action);

  sub_1D10A440C(v0 + OBJC_IVAR____TtC15HealthRecordsUI16AccountLoginItem____lazy_storage___customAccessory, &qword_1EC60A028, MEMORY[0x1E69DBF40]);
  return v0;
}

void sub_1D10A3A58()
{
  type metadata accessor for ClinicalAccountLoginUpgradeAction();
  if (v0 <= 0x3F)
  {
    sub_1D10A3FB0(319, &qword_1EC60A028, MEMORY[0x1E69DBF40], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D10A3BA8()
{
  type metadata accessor for AccountUpgradeCell();
  sub_1D10A3EA8(&qword_1EC60A050, type metadata accessor for AccountUpgradeCell);
  return sub_1D138DECC();
}

uint64_t sub_1D10A3C10()
{
  sub_1D10A3914();

  return swift_deallocClassInstance();
}

uint64_t sub_1D10A3CC8()
{
  sub_1D139177C();
  sub_1D135A7AC();
  sub_1D139027C();

  return sub_1D13917CC();
}

uint64_t sub_1D10A3D28()
{
  sub_1D135A7AC();
  sub_1D139027C();
}

uint64_t sub_1D10A3D7C()
{
  sub_1D139177C();
  sub_1D135A7AC();
  sub_1D139027C();

  return sub_1D13917CC();
}

uint64_t sub_1D10A3DD8()
{
  v0 = sub_1D135A7AC();
  v2 = v1;
  if (v0 == sub_1D135A7AC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D139162C();
  }

  return v5 & 1;
}

uint64_t sub_1D10A3EA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D10A3EF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalAccountLoginUpgradeAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D10A3F54(uint64_t a1)
{
  v2 = type metadata accessor for ClinicalAccountLoginUpgradeAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D10A3FB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D10A4014(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D10819BC;

  return sub_1D10A1398(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D10A411C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D108077C;

  return sub_1D10A35E0(a1, v4, v5, v7, v6);
}

uint64_t sub_1D10A41DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D10819BC;

  return sub_1D10A3208(a1, v4, v5, v6, v7, v8);
}

void sub_1D10A42A4()
{
  if (!qword_1EC60A068)
  {
    sub_1D138F0FC();
    sub_1D10A4318();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60A068);
    }
  }
}

unint64_t sub_1D10A4318()
{
  result = qword_1EC60A070;
  if (!qword_1EC60A070)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EC60A070);
  }

  return result;
}

uint64_t sub_1D10A4368(uint64_t a1, uint64_t a2)
{
  sub_1D10A3FB0(0, &qword_1EC60A028, MEMORY[0x1E69DBF40], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1D10A43FC(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

uint64_t sub_1D10A440C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D10A3FB0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D10A447C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalAccountLoginUpgradeAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D10A44E0(id a1)
{
  if (a1 >= 4)
  {
  }
}

uint64_t sub_1D10A44F0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D10A3FB0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id UIImageView.applyImage(_:style:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  [v2 setImage_];
  v6 = v3;
  v7 = v4;
  return UIImageView.applyStyle(_:)(&v6);
}

id UIImageView.applyStyle(_:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = [objc_opt_self() isMainThread];
  if (!result)
  {
    __break(1u);
    return result;
  }

  if (!v3)
  {
    v5 = v2;
    [v1 setContentMode_];
    v6 = objc_opt_self();
    v7 = [v6 whiteColor];
    [v1 setBackgroundColor_];

    v8 = [v1 layer];
    v9 = [v6 separatorColor];
    v10 = [v9 CGColor];

    [v8 setBorderColor_];
    v11 = [v1 layer];
    v12 = [v1 traitCollection];
    [v12 displayPixel];
    v14 = v13;

    [v11 setBorderWidth_];
    v15 = [v1 layer];
    [v15 setCornerRadius_];

    v16 = [v1 layer];
    [v16 setCornerCurve_];

    v17 = [v1 layer];
    [v17 setMasksToBounds_];
LABEL_7:

    v2 = 0.0;
    goto LABEL_8;
  }

  if (v3 != 1)
  {
    [v1 setContentMode_];
    v18 = [objc_opt_self() clearColor];
    [v1 setBackgroundColor_];

    v19 = [v1 layer];
    [v19 setBorderColor_];

    v20 = [v1 layer];
    [v20 setBorderWidth_];

    v21 = [v1 layer];
    [v21 setCornerRadius_];

    v17 = [v1 layer];
    [v17 setCornerContentsMasksEdges_];
    goto LABEL_7;
  }

  v22 = 0;
  v23 = 2;
  UIImageView.applyStyle(_:)(&v22);
LABEL_8:

  return [v1 setTintColor_];
}

Swift::Void __swiftcall UIImageView.applyAccountLogoStyle(isMonogram:imageViewSize:)(Swift::Bool isMonogram, CGSize imageViewSize)
{
  if (isMonogram)
  {
    v7 = 0;
    v8 = 2;
    UIImageView.applyStyle(_:)(&v7);
  }

  else
  {
    if (imageViewSize.width > 28.0 || imageViewSize.height > 28.0)
    {
      v3 = imageViewSize.height > 48.0 || imageViewSize.width > 48.0;
      v4 = 0x4032000000000000;
      if (!v3)
      {
        v4 = 0x4028000000000000;
      }

      if (imageViewSize.width > 40.0 || imageViewSize.height > 40.0)
      {
        v6 = v4;
      }

      else
      {
        v6 = 0x4024000000000000;
      }
    }

    else
    {
      v6 = 0x401C000000000000;
    }

    v7 = v6;
    v8 = 0;
    UIImageView.applyStyle(_:)(&v7);
    sub_1D10A4C44(v6, 0);
  }
}

void sub_1D10A49E0(void *a1, double a2, double a3, uint64_t a4, Swift::Bool a5)
{
  v8 = a1;
  UIImageView.applyAccountLogoStyle(isMonogram:imageViewSize:)(a5, __PAIR128__(*&a3, *&a2));
}

double static UIImageView.logoDimension(for:)(double a1, double a2)
{
  v2 = 28.0;
  v3 = 5.0;
  if (a1 > 28.0 || a2 > 28.0)
  {
    if (a1 <= 40.0 && a2 <= 40.0)
    {
      return 40.0 - 6.0;
    }

    v2 = 48.0;
    v6 = a1 <= 48.0;
    v7 = a2 <= 48.0;
    if (v6 && v7)
    {
      v3 = 8.0;
    }

    else
    {
      v3 = 12.0;
    }

    if (!v6 || !v7)
    {
      v2 = 82.0;
    }
  }

  return v2 - v3;
}

double sub_1D10A4AC4(double a1, double a2)
{
  static AccountIcon.Size.smallerOrEqual(to:)(&v9, a1, a2);
  if (v11 == 1)
  {
    if (*(&v10 + 1) | v10 | *&v9)
    {
      v2 = v10 == 0;
      v3 = *&v9 == 2;
      v4 = 12.0;
      if (v3 && v2)
      {
        v4 = 8.0;
      }

      v5 = 82.0;
      if (v3 && v2)
      {
        v5 = 48.0;
      }

      if (*&v9 == 1 && v10 == 0)
      {
        v4 = 6.0;
        v7 = 40.0;
      }

      else
      {
        v7 = v5;
      }
    }

    else
    {
      v7 = 28.0;
      v4 = 5.0;
    }
  }

  else
  {
    v7 = v9;
    v4 = *&v10;
  }

  return v7 - v4;
}

double static UIImageView.logoInset(for:)(double a1, double a2)
{
  v2 = 5.0;
  if (a1 > 28.0 || a2 > 28.0)
  {
    v2 = 6.0;
    if (a1 > 40.0 || a2 > 40.0)
    {
      if (a2 > 48.0 || a1 > 48.0)
      {
        return 12.0;
      }

      else
      {
        return 8.0;
      }
    }
  }

  return v2;
}

double sub_1D10A4BC8(double a1, double a2)
{
  static AccountIcon.Size.smallerOrEqual(to:)(&v6, a1, a2);
  if (v8 != 1)
  {
    return *&v7;
  }

  if (!(*(&v7 + 1) | v7 | v6))
  {
    return 5.0;
  }

  result = 6.0;
  v3 = v7 == 0 && v6 == 2;
  v4 = 12.0;
  if (v3)
  {
    v4 = 8.0;
  }

  if (v6 != 1 || v7 != 0)
  {
    return v4;
  }

  return result;
}

void sub_1D10A4C44(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

void UIImageView.applyIcon(_:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >> 1 == 0xFFFFFFFF)
  {
    [v1 setImage_];
LABEL_3:
    v13 = 0;
    v14 = 2;
    UIImageView.applyStyle(_:)(&v13);
    return;
  }

  v3 = *a1;
  v4 = *(a1 + 8);
  if ((v2 & 0x8000000000000000) != 0)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    v8 = *(a1 + 40);
    if (v3)
    {
      v9 = 0;
      v10 = 2;
    }

    else if (v2)
    {
      v11 = v7 | v6;
      if (v7 | v6 | v4)
      {
        if (v4 != 1 || v11)
        {
          v10 = 0;
          if (v11)
          {
            v12 = 0;
          }

          else
          {
            v12 = v4 == 2;
          }

          if (v12)
          {
            v9 = 0x4028000000000000;
          }

          else
          {
            v9 = 0x4032000000000000;
          }
        }

        else
        {
          v10 = 0;
          v9 = 0x4024000000000000;
        }
      }

      else
      {
        v10 = 0;
        v9 = 0x401C000000000000;
      }
    }

    else
    {
      v10 = 0;
      v9 = *(a1 + 24);
    }

    sub_1D10A00EC(*a1, v4, v6, v7, v2, v8);
    [v1 setImage_];
    v13 = v9;
    v14 = v10;
    UIImageView.applyStyle(_:)(&v13);
    sub_1D10A4C44(v9, v10);
    sub_1D10A4F58(v3, v4, v6, v7, v2);
  }

  else
  {
    if (!v4)
    {
      [v1 setImage_];
      goto LABEL_3;
    }

    v5 = v4;
    [v1 setImage_];
    v13 = v4;
    v14 = 1;
    UIImageView.applyStyle(_:)(&v13);
  }
}

{
  v2 = *(a1 + 40);
  if (v2 && (*a1 & 1) == 0)
  {
    v3 = *(a1 + 24);
    if (*(a1 + 32))
    {
      v6 = *(a1 + 8);
      v7 = v3 | *(a1 + 16);
      if (v7 | v6)
      {
        if (v6 != 1 || v7)
        {
          v4 = 0;
          if (v7)
          {
            v8 = 0;
          }

          else
          {
            v8 = v6 == 2;
          }

          if (v8)
          {
            v3 = 0x4028000000000000;
          }

          else
          {
            v3 = 0x4032000000000000;
          }
        }

        else
        {
          v4 = 0;
          v3 = 0x4024000000000000;
        }
      }

      else
      {
        v4 = 0;
        v3 = 0x401C000000000000;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v3 = 0;
    v4 = 2;
  }

  v5 = v2;
  [v1 setImage_];
  v9 = v3;
  v10 = v4;
  UIImageView.applyStyle(_:)(&v9);

  sub_1D10A4C44(v3, v4);
}

void *sub_1D10A4F58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 >> 1 != 0xFFFFFFFF)
  {
    return sub_1D10A4F6C(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_1D10A4F6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a5 & 0x8000000000000000) == 0)
  {

    v5 = vars8;
  }

  return MEMORY[0x1EEE66C40]();
}

uint64_t get_enum_tag_for_layout_string_So11UIImageViewC15HealthRecordsUIE9IconStyleO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1D10A4FD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D10A5020(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1D10A5064(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

id sub_1D10A508C()
{
  v0 = [objc_opt_self() preferredFontForTextStyle_];
  v1 = [objc_opt_self() configurationWithFont:v0 scale:3];

  v2 = sub_1D139012C();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

  v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v5 = [objc_opt_self() systemBlueColor];
  [v4 setTintColor_];

  return v4;
}

id sub_1D10A51C8()
{
  v0 = [objc_opt_self() preferredFontForTextStyle_];
  v1 = [objc_opt_self() configurationWithFont:v0 scale:3];

  v2 = sub_1D139012C();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

  v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v5 = [objc_opt_self() tertiaryLabelColor];
  [v4 setTintColor_];

  return v4;
}

uint64_t type metadata accessor for InternalAllFeedForProfileViewController()
{
  result = qword_1EC60A088;
  if (!qword_1EC60A088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D10A5388@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + qword_1EC60AAB8) healthStore];
  v4 = [v3 profileIdentifier];

  sub_1D139092C();
  v5 = type metadata accessor for AllFeedForProfileDataSourceProvider();
  v6 = swift_allocObject();
  sub_1D102CC18(&v9, v6 + 16);
  *(v6 + 56) = v4;
  a1[3] = v5;
  result = sub_1D10A5D80(&qword_1EC60A0C8, v7, type metadata accessor for AllFeedForProfileDataSourceProvider);
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_1D10A546C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69A3558];
  v3 = sub_1D138DEBC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

id sub_1D10A54E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalAllFeedForProfileViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D10A5520()
{
  v1 = v0;
  v39 = sub_1D138E35C();
  v2 = *(v39 - 8);
  v3 = MEMORY[0x1EEE9AC00](v39);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - v5;
  sub_1D138DB9C();
  v7 = MEMORY[0x1D38834C0]();
  sub_1D10A5C9C(0, &qword_1EE06A4C0);
  v8 = swift_allocObject();
  v37 = xmmword_1D139E810;
  *(v8 + 16) = xmmword_1D139E810;
  sub_1D10A5C9C(0, &qword_1EC60A0A8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D139E700;
  v10 = *(v0 + 56);
  *(v9 + 32) = v10;
  v11 = v10;
  v12 = MEMORY[0x1D38834E0](v9);

  *(v8 + 32) = v12;
  sub_1D106F934(0, &qword_1EE06B790);
  v13 = sub_1D139044C();

  v14 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v7 setPredicate_];
  v15 = swift_allocObject();
  *(v15 + 16) = v37;
  v16 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v17 = sub_1D139012C();
  v18 = [v16 initWithKey:v17 ascending:1 selector:sel_localizedStandardCompare_];

  *(v15 + 32) = v18;
  sub_1D106F934(0, &qword_1EE06B578);
  v19 = sub_1D139044C();

  [v7 setSortDescriptors_];

  v20 = *(v1 + 40);
  v21 = __swift_project_boxed_opaque_existential_1Tm((v1 + 16), v20);
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v24);
  v25 = v7;
  v26 = sub_1D138D8BC();
  (*(v22 + 8))(v24, v20);
  [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v25 managedObjectContext:v26 sectionNameKeyPath:0 cacheName:0];

  sub_1D138E31C();
  v27 = sub_1D138E33C();
  v29 = v28;
  v30 = sub_1D138E2BC();
  v31 = *(*(v30 - 8) + 48);
  if (!v31(v29, 1, v30))
  {
    swift_getKeyPath();
    v40 = [objc_opt_self() absoluteDimension_];
    sub_1D138E2AC();
  }

  v27(v41, 0);
  v32 = sub_1D138E33C();
  if (!v31(v33, 1, v30))
  {
    swift_getKeyPath();
    v40 = [objc_opt_self() absoluteDimension_];
    sub_1D138E2AC();
  }

  v32(v41, 0);
  sub_1D10A5CE8();
  v34 = v39;
  (*(v2 + 16))(v38, v6, v39);
  v35 = sub_1D138E0DC();

  (*(v2 + 8))(v6, v34);
  sub_1D10A5D80(&qword_1EC60A0C0, 255, sub_1D10A5CE8);
  return v35;
}

uint64_t sub_1D10A5B18()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D10A5B7C()
{
  sub_1D10A5BE4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D139E700;
  *(v0 + 32) = sub_1D10A5520();
  *(v0 + 40) = v1;
  return v0;
}

void sub_1D10A5BE4()
{
  if (!qword_1EC60A098)
  {
    sub_1D10A5C3C();
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A098);
    }
  }
}

unint64_t sub_1D10A5C3C()
{
  result = qword_1EC60A0A0;
  if (!qword_1EC60A0A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC60A0A0);
  }

  return result;
}

void sub_1D10A5C9C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D13915DC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}