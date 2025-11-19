uint64_t sub_1ABB9F3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35[0] = a5;
  v35[1] = a6;
  sub_1ABAE28EC();
  sub_1ABA8E7B8();
  result = sub_1ABF248E4();
  v9 = result;
  v10 = 0;
  v34 = MEMORY[0x1E69E7CD0];
  v11 = *(result + 16);
  v12 = (result + 56);
  while (v11 != v10)
  {
    if (v10 >= *(v9 + 16))
    {
      __break(1u);
      return result;
    }

    ++v10;
    v13 = *(v12 - 1);
    v14 = *v12;
    v16 = *(v12 - 3);
    v15 = *(v12 - 2);

    v17 = MEMORY[0x1AC5A9330](v16, v15, v13, v14);
    sub_1ABB1840C(v35, v17, v18);

    v12 += 4;
  }

  v35[0] = v34;
  if (a1 && sub_1ABAAB7C8(a1))
  {
    sub_1ABB9FC48();
    v20 = *(v19 + 16);

    swift_isUniquelyReferenced_nonNull_native();
    *&v21 = sub_1ABA933AC();
  }

  else
  {
    swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_1ABA7C000();
  }

  sub_1ABAFB2B0(1, *&v21);
  if (a2 && sub_1ABAAB7C8(a2))
  {
    sub_1ABB9FC48();
    v23 = *(v22 + 16);

    swift_isUniquelyReferenced_nonNull_native();
    *&v24 = sub_1ABA933AC();
  }

  else
  {
    swift_isUniquelyReferenced_nonNull_native();
    v24 = sub_1ABA7C000();
  }

  sub_1ABAFB2B0(3, *&v24);
  if (a3 && sub_1ABAAB7C8(a3))
  {
    sub_1ABB9FC48();
    v26 = *(v25 + 16);

    swift_isUniquelyReferenced_nonNull_native();
    *&v27 = sub_1ABA933AC();
  }

  else
  {
    swift_isUniquelyReferenced_nonNull_native();
    v27 = sub_1ABA7C000();
  }

  sub_1ABAFB2B0(5, *&v27);
  if (a4 && sub_1ABAAB7C8(a4))
  {
    sub_1ABB9FC48();
    v29 = v28;

    v30 = *(v29 + 16);

    swift_isUniquelyReferenced_nonNull_native();
    *&v31 = sub_1ABA933AC();
  }

  else
  {

    swift_isUniquelyReferenced_nonNull_native();
    v31 = sub_1ABA7C000();
  }

  sub_1ABAFB2B0(2, *&v31);
  return v34;
}

void sub_1ABB9F674()
{
  sub_1ABA7E2A8();
  v61 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v58 = v7;
  v8 = sub_1ABF21944();
  v9 = sub_1ABA7BB64(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  v16 = v15 - v14;
  v17 = *(v2 + 16);
  v59 = *(v2 + 24);
  sub_1ABF23EC4();
  sub_1ABF21914();
  sub_1ABBA2890();
  sub_1ABF248A4();
  v18 = *(v11 + 8);
  v18(v16, v8);

  sub_1ABB9AF7C(v59, v6, v4);
  sub_1ABF21914();
  sub_1ABF248A4();
  v18(v16, v8);

  sub_1ABAE28EC();
  sub_1ABAA37DC();
  v19 = sub_1ABF24884();

  sub_1ABAA37DC();
  v20 = sub_1ABF24884();

  v21 = *(v19 + 16);
  if (v21 >= v61)
  {
    if (v61 == 0x8000000000000000)
    {
LABEL_37:
      __break(1u);
    }

    else
    {
      v22 = v21 - v61;
      if (!__OFADD__(v21, -v61))
      {
        if (v21 < v22)
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        sub_1ABDF015C(v22, v21, v19);
        v24 = v23;
        v26 = v25;

        if (v26)
        {
          v19 = sub_1ABF25094();
          swift_unknownObjectRetain_n();
          v28 = swift_dynamicCastClass();
          if (!v28)
          {
            swift_unknownObjectRelease();
            v28 = MEMORY[0x1E69E7CC0];
          }

          v29 = *(v28 + 16);

          if (__OFSUB__(v26 >> 1, v24))
          {
            goto LABEL_42;
          }

          if (v29 == (v26 >> 1) - v24)
          {
            v19 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            if (v19)
            {
              goto LABEL_14;
            }

            v19 = MEMORY[0x1E69E7CC0];
            goto LABEL_13;
          }

          swift_unknownObjectRelease_n();
        }

        sub_1ABB62CE0();
        v19 = v27;
LABEL_13:
        swift_unknownObjectRelease();
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_14:
  if (*(v20 + 16) < v61)
  {
    goto LABEL_25;
  }

  if (v61 < 0)
  {
    goto LABEL_39;
  }

  sub_1ABDF015C(0, v61, v20);
  v31 = v30;
  v33 = v32;

  if ((v33 & 1) == 0)
  {
LABEL_17:
    sub_1ABB62CE0();
    v20 = v34;
    goto LABEL_24;
  }

  sub_1ABF25094();
  swift_unknownObjectRetain_n();
  v35 = swift_dynamicCastClass();
  if (!v35)
  {
    swift_unknownObjectRelease();
    v35 = MEMORY[0x1E69E7CC0];
  }

  v36 = *(v35 + 16);

  if (__OFSUB__(v33 >> 1, v31))
  {
    goto LABEL_41;
  }

  if (v36 != (v33 >> 1) - v31)
  {
LABEL_43:
    swift_unknownObjectRelease_n();
    goto LABEL_17;
  }

  v20 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v20)
  {
    goto LABEL_25;
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_24:
  swift_unknownObjectRelease();
LABEL_25:
  v37 = sub_1ABE8AE5C(v19);
  v38 = sub_1ABE8AE5C(v20);
  sub_1ABD91F24(v38, v37);
  v40 = v39;
  v41 = 0;
  v42 = 0;
  v19 = *(v58 + 16);
  v43 = v58 + 40;
LABEL_26:
  v44 = (v43 + 16 * v41);
  while (v19 != v41)
  {
    if (v41 >= v19)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v45 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      goto LABEL_36;
    }

    v46 = *v44;
    v44 += 2;
    ++v41;
    if (v46)
    {
      v47 = *(v44 - 3);
      v62 = v43;

      sub_1ABE85170();
      sub_1ABF23C84();
      v60 = v40;

      sub_1ABBE6A60();
      v50 = sub_1ABA8E794(v48, v49);
      v52 = v51;

      sub_1ABE84B8C(v50, v52);

      v53 = sub_1ABF24884();
      v40 = v60;

      v54 = sub_1ABE8AE5C(v53);
      v55 = sub_1ABBA22D8(v60, v54);

      v56 = *(v55 + 16);

      v43 = v62;
      v41 = v45;
      v57 = __OFADD__(v42, v56);
      v42 += v56;
      if (!v57)
      {
        goto LABEL_26;
      }

      __break(1u);
      break;
    }
  }

  sub_1ABA7BC1C();
}

uint64_t sub_1ABB9FBC4(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1ABBA1AD8(a1, sub_1ABBA2844, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void sub_1ABB9FC48()
{
  sub_1ABA7E2A8();
  v80 = v0;
  v2 = v1;
  v81 = v3;
  v83[1] = *MEMORY[0x1E69E9840];

  v83[0] = sub_1ABC1E730(v2);
  sub_1ABB9AFC8(v83);
  v4 = v83[0];
  v83[0] = MEMORY[0x1E69E7CD0];
  v79 = sub_1ABAAB7C8(v4);
  if (!v79)
  {

LABEL_49:
    v71 = *MEMORY[0x1E69E9840];
    sub_1ABA7BC1C();
    return;
  }

  v5 = 0;
  v77 = 0;
  v78 = v4 & 0xC000000000000001;
  v75 = v4 + 32;
  v76 = v4;
  while (1)
  {
    if (v78)
    {
      v6 = MEMORY[0x1AC5AA170](v5, v4);
    }

    else
    {
      if (v5 >= *(v4 + 16))
      {
        goto LABEL_54;
      }

      v6 = *(v75 + 8 * v5);
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_53;
    }

    if (v80)
    {
      v8 = sub_1ABBE8AA4();
      v9 = v8;
      v10 = *v81;
      v11 = *(v8 + 16);
      if (*(*v81 + 16) <= v11 >> 3)
      {
        v82 = v8;
        if (v11)
        {
          v38 = *(v10 + 56);
          v39 = *(v10 + 32);
          sub_1ABA7F040();
          v42 = v41 & v40;
          v44 = (v43 + 63) >> 6;

          v45 = 0;
          if (v42)
          {
            while (1)
            {
LABEL_29:
              sub_1ABAA3FE8();
              v47 = *(v10 + 48);
              sub_1ABAA5FB8();
              v49 = *v48;
              v50 = v48[1];

              sub_1ABB22428();
            }
          }

          while (1)
          {
            v46 = v45 + 1;
            if (__OFADD__(v45, 1))
            {
              goto LABEL_52;
            }

            if (v46 >= v44)
            {
              break;
            }

            ++v45;
            if (*(v10 + 56 + 8 * v46))
            {
              goto LABEL_29;
            }
          }

          v9 = v82;
          v4 = v76;
        }
      }

      else
      {
        v9 = sub_1ABC13D68(*v81, v8);
      }

      v51 = *(v9 + 16);

      if (!v51)
      {
        v52 = *(v6 + 16);
        sub_1ABB18C18();
        v53 = *(v6 + 40);
        v54 = *(v53 + 56);
        v55 = *(v53 + 32);
        sub_1ABA7F040();
        v58 = v57 & v56;
        v60 = (v59 + 63) >> 6;

        v61 = 0;
        if (!v58)
        {
          goto LABEL_36;
        }

        while (1)
        {
          do
          {
            v58 &= v58 - 1;
            v63 = *(v53 + 48);
            sub_1ABAA5FB8();
            v65 = *v64;
            v66 = v64[1];

            sub_1ABB22428();
          }

          while (v58);
          do
          {
LABEL_36:
            v62 = v61 + 1;
            if (__OFADD__(v61, 1))
            {
              goto LABEL_51;
            }

            if (v62 >= v60)
            {
              goto LABEL_42;
            }

            v58 = *(v53 + 56 + 8 * v62);
            ++v61;
          }

          while (!v58);
          v61 = v62;
        }
      }

      goto LABEL_33;
    }

    sub_1ABBE8D20();
    v12 = sub_1ABBE8AA4();
    v13 = *v81;
    v14 = *(v12 + 32);
    v15 = v14 & 0x3F;
    v16 = ((1 << v14) + 63) >> 6;

    if (v15 <= 0xD)
    {
      break;
    }

    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      break;
    }

    swift_slowAlloc();

    sub_1ABAA301C();
    v23 = sub_1ABBA2248(v67, v68, v69, v70);

    v77 = v16;
    if (v16)
    {
      goto LABEL_56;
    }

    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
LABEL_14:
    if (!v23[2])
    {

LABEL_33:

      goto LABEL_43;
    }

    v24 = *(v6 + 16);
    sub_1ABB18C18();
    v25 = 0;
    v26 = v23[7];
    v27 = *(v23 + 32);
    sub_1ABA7F040();
    v30 = v29 & v28;
    v32 = (v31 + 63) >> 6;
    if ((v29 & v28) == 0)
    {
      goto LABEL_17;
    }

    do
    {
LABEL_21:
      sub_1ABAA3FE8();
      v34 = v23[6];
      sub_1ABAA5FB8();
      v36 = *v35;
      v37 = v35[1];

      sub_1ABB22428();
    }

    while (v30);
    while (1)
    {
LABEL_17:
      v33 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
      }

      if (v33 >= v32)
      {
        break;
      }

      v30 = v23[v33 + 7];
      ++v25;
      if (v30)
      {
        v25 = v33;
        goto LABEL_21;
      }
    }

LABEL_42:

    v4 = v76;
LABEL_43:
    if (v5 == v79)
    {

      goto LABEL_49;
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  sub_1ABB18078(0, v16, &v74 - ((8 * v16 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1ABAA301C();
  v22 = sub_1ABBA24A0(v18, v19, v20, v21);
  v77 = v16;
  if (!v16)
  {
    v23 = v22;

    goto LABEL_14;
  }

  v72 = v77;
  v73 = v77;
  swift_willThrow();

  __break(1u);

  __break(1u);
LABEL_56:

  sub_1ABA7BDD8();
  MEMORY[0x1AC5AB8B0]();
  __break(1u);
}

uint64_t sub_1ABBA0194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, float *a5@<X8>)
{
  v38 = a1;
  v39 = a2;
  sub_1ABAE28EC();
  result = sub_1ABF248E4();
  v7 = result;
  v8 = 0;
  v40 = MEMORY[0x1E69E7CD0];
  v9 = *(result + 16);
  v10 = (result + 56);
  while (v9 != v8)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    ++v8;
    v11 = *(v10 - 1);
    v12 = *v10;
    v14 = *(v10 - 3);
    v13 = *(v10 - 2);

    v15 = MEMORY[0x1AC5A9330](v14, v13, v11, v12);
    sub_1ABB1840C(&v38, v15, v16);

    v10 += 4;
  }

  v17 = v40;
  v38 = a3;
  v39 = a4;
  result = sub_1ABF248E4();
  v18 = result;
  v19 = 0;
  v40 = MEMORY[0x1E69E7CD0];
  v20 = *(result + 16);
  v21 = (result + 56);
  while (v20 != v19)
  {
    if (v19 >= *(v18 + 16))
    {
      goto LABEL_11;
    }

    ++v19;
    v22 = *(v21 - 1);
    v23 = *v21;
    v25 = *(v21 - 3);
    v24 = *(v21 - 2);

    v26 = MEMORY[0x1AC5A9330](v25, v24, v22, v23);
    sub_1ABB1840C(&v38, v26, v27);

    v21 += 4;
  }

  v28 = v40;

  v29 = sub_1ABBA22D8(v28, v17);

  v30 = *(v29 + 16);

  v31 = v30;

  v32 = *(sub_1ABC10A08(v28, v17) + 16);

  v33 = v32;
  v34 = sub_1ABC10A08(v17, v28);

  v35 = *(v34 + 16);

  *a5 = (((v31 / ((v31 + v33) + 0.001)) * (v31 / ((v31 + v35) + 0.001))) + ((v31 / ((v31 + v33) + 0.001)) * (v31 / ((v31 + v35) + 0.001)))) / (((v31 / ((v31 + v33) + 0.001)) + (v31 / ((v31 + v35) + 0.001))) + 0.001);
  return result;
}

unint64_t sub_1ABBA043C()
{
  result = qword_1ED86E428;
  if (!qword_1ED86E428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED86E428);
  }

  return result;
}

unint64_t sub_1ABBA0480()
{
  result = qword_1ED86DB10;
  if (!qword_1ED86DB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86DB10);
  }

  return result;
}

void sub_1ABBA04D4(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1ABF24FE4();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1ABAE8C34(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1ABBA087C(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1ABBA06A8(0, v3, 1, a1);
  }
}

char *sub_1ABBA05B4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
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
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABBA0EF0(v7, v8, a1, v4);
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
    return sub_1ABBA079C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1ABBA06A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v20 = v6;
      do
      {
        v10 = *v6;
        v11 = *(v8 + 24);
        v12 = *(v8 + 32);

        v13 = sub_1ABF23D44();
        v14 = *(v10 + 24);
        v15 = *(v10 + 32);
        v16 = sub_1ABF23D44();

        if (v16 >= v13)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return result;
        }

        v17 = *v6;
        v8 = v6[1];
        *v6 = v8;
        v6[1] = v17;
        --v6;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 = v20 + 1;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

char *sub_1ABBA079C(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 1160 * a3 - 1160;
    v8 = &result[-a3];
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        if (v10[1] >= v10[146])
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v10 + 145, sizeof(__dst));
        memcpy(v10 + 145, v10, 0x488uLL);
        result = memcpy(v10, __dst, 0x488uLL);
        v10 -= 145;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 1160;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1ABBA087C(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v119 = *a1;
    if (!*a1)
    {
      goto LABEL_136;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_97:
      v101 = (v8 + 16);
      v102 = *(v8 + 16);
      while (v102 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_133;
        }

        v103 = v8;
        v104 = (v8 + 16 * v102);
        v105 = *v104;
        v106 = &v101[2 * v102];
        v8 = *(v106 + 1);
        sub_1ABBA155C((*a3 + 8 * *v104), (*a3 + 8 * *v106), (*a3 + 8 * v8), v119);
        if (v5)
        {
          break;
        }

        if (v8 < v105)
        {
          goto LABEL_121;
        }

        if (v102 - 2 >= *v101)
        {
          goto LABEL_122;
        }

        *v104 = v105;
        v104[1] = v8;
        v107 = *v101 - v102;
        if (*v101 < v102)
        {
          goto LABEL_123;
        }

        v102 = *v101 - 1;
        sub_1ABE7A0CC(v106 + 16, v107, v106);
        *v101 = v102;
        v8 = v103;
      }

LABEL_105:

      return;
    }

LABEL_130:
    v8 = sub_1ABE7A0B4(v8);
    goto LABEL_97;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v110 = v8;
      v112 = v5;
      v8 = *(*a3 + 8 * v10);
      v11 = (*a3 + 8 * v7);
      v108 = 8 * v7;
      v13 = *v11;
      v12 = v11 + 2;
      v5 = v13;
      v14 = *(v8 + 24);
      v15 = *(v8 + 32);

      v119 = sub_1ABF23D44();
      v16 = *(v13 + 24);
      v17 = *(v13 + 32);
      v116 = sub_1ABF23D44();

      v18 = v9 + 2;
      while (1)
      {
        v19 = v18;
        v20 = v10 + 1;
        if (v20 >= v6)
        {
          break;
        }

        v5 = *(v12 - 1);
        v8 = *v12;
        v21 = *(*v12 + 24);
        v22 = *(*v12 + 32);
        v23 = v20;

        v24 = sub_1ABF23D44();
        v25 = *(v5 + 24);
        v26 = *(v5 + 32);
        v27 = sub_1ABF23D44();

        v28 = v27 < v24;
        v10 = v23;
        v29 = !v28;
        v30 = (v116 < v119) ^ v29;
        ++v12;
        v18 = v19 + 1;
        if ((v30 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v10 = v6;
LABEL_12:
      if (v116 >= v119)
      {
        v8 = v110;
        v5 = v112;
      }

      else
      {
        v31 = v9;
        if (v10 < v9)
        {
          goto LABEL_127;
        }

        if (v9 >= v10)
        {
          v8 = v110;
          v5 = v112;
        }

        else
        {
          if (v6 >= v19)
          {
            v32 = v19;
          }

          else
          {
            v32 = v6;
          }

          v33 = 8 * v32 - 8;
          v34 = v10;
          v8 = v110;
          v5 = v112;
          v35 = v108;
          do
          {
            if (v31 != --v34)
            {
              v36 = *a3;
              if (!*a3)
              {
                goto LABEL_134;
              }

              v37 = *(v36 + v35);
              *(v36 + v35) = *(v36 + v33);
              *(v36 + v33) = v37;
            }

            v31 = (v31 + 1);
            v33 -= 8;
            v35 += 8;
          }

          while (v31 < v34);
        }
      }
    }

    v38 = a3[1];
    if (v10 < v38)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_126;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_43:
    if (v10 < v9)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v98 = *(v8 + 16);
      sub_1ABAD8820();
      v8 = v99;
    }

    v56 = *(v8 + 16);
    v57 = v56 + 1;
    if (v56 >= *(v8 + 24) >> 1)
    {
      sub_1ABAD8820();
      v8 = v100;
    }

    *(v8 + 16) = v57;
    v58 = v8 + 32;
    v59 = (v8 + 32 + 16 * v56);
    *v59 = v9;
    v59[1] = v10;
    v118 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    v119 = v10;
    if (v56)
    {
      while (1)
      {
        v60 = v57 - 1;
        v61 = (v58 + 16 * (v57 - 1));
        v62 = (v8 + 16 * v57);
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v63 = *(v8 + 32);
          v64 = *(v8 + 40);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_63:
          if (v66)
          {
            goto LABEL_112;
          }

          v78 = *v62;
          v77 = v62[1];
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_115;
          }

          v82 = v61[1];
          v83 = v82 - *v61;
          if (__OFSUB__(v82, *v61))
          {
            goto LABEL_118;
          }

          if (__OFADD__(v80, v83))
          {
            goto LABEL_120;
          }

          if (v80 + v83 >= v65)
          {
            if (v65 < v83)
            {
              v60 = v57 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        if (v57 < 2)
        {
          goto LABEL_114;
        }

        v85 = *v62;
        v84 = v62[1];
        v73 = __OFSUB__(v84, v85);
        v80 = v84 - v85;
        v81 = v73;
LABEL_78:
        if (v81)
        {
          goto LABEL_117;
        }

        v87 = *v61;
        v86 = v61[1];
        v73 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v73)
        {
          goto LABEL_119;
        }

        if (v88 < v80)
        {
          goto LABEL_92;
        }

LABEL_85:
        if (v60 - 1 >= v57)
        {
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
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v92 = v8;
        v93 = (v58 + 16 * (v60 - 1));
        v94 = *v93;
        v95 = v60;
        v8 = v58 + 16 * v60;
        v96 = *(v8 + 8);
        sub_1ABBA155C((*a3 + 8 * *v93), (*a3 + 8 * *v8), (*a3 + 8 * v96), v118);
        if (v5)
        {
          goto LABEL_105;
        }

        if (v96 < v94)
        {
          goto LABEL_107;
        }

        v5 = *(v92 + 16);
        if (v95 > v5)
        {
          goto LABEL_108;
        }

        *v93 = v94;
        v93[1] = v96;
        if (v95 >= v5)
        {
          goto LABEL_109;
        }

        v97 = v95;
        v57 = v5 - 1;
        sub_1ABE7A0CC((v8 + 16), v5 - 1 - v97, v8);
        v8 = v92;
        *(v92 + 16) = v5 - 1;
        v28 = v5 > 2;
        v5 = 0;
        if (!v28)
        {
          goto LABEL_92;
        }
      }

      v67 = v58 + 16 * v57;
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_110;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_111;
      }

      v74 = v62[1];
      v75 = v74 - *v62;
      if (__OFSUB__(v74, *v62))
      {
        goto LABEL_113;
      }

      v73 = __OFADD__(v65, v75);
      v76 = v65 + v75;
      if (v73)
      {
        goto LABEL_116;
      }

      if (v76 >= v70)
      {
        v90 = *v61;
        v89 = v61[1];
        v73 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v73)
        {
          goto LABEL_124;
        }

        if (v65 < v91)
        {
          v60 = v57 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_63;
    }

LABEL_92:
    v6 = a3[1];
    v7 = v119;
    if (v119 >= v6)
    {
      goto LABEL_95;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_128;
  }

  if (v9 + a4 >= v38)
  {
    v39 = a3[1];
  }

  else
  {
    v39 = (v9 + a4);
  }

  if (v39 < v9)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v10 == v39)
  {
    goto LABEL_43;
  }

  v111 = v8;
  v113 = v5;
  v40 = v9;
  v41 = *a3;
  v42 = *a3 + 8 * v10 - 8;
  v114 = v40;
  v43 = v40 - v10;
  v117 = v39;
LABEL_36:
  v119 = v10;
  v44 = *(v41 + 8 * v10);
  v45 = v43;
  v46 = v42;
  while (1)
  {
    v47 = *v46;
    v48 = *(v44 + 24);
    v49 = *(v44 + 32);

    v50 = sub_1ABF23D44();
    v51 = *(v47 + 24);
    v52 = *(v47 + 32);
    v53 = sub_1ABF23D44();

    if (v53 >= v50)
    {
LABEL_41:
      v10 = v119 + 1;
      v42 += 8;
      --v43;
      if ((v119 + 1) == v117)
      {
        v10 = v117;
        v8 = v111;
        v5 = v113;
        v9 = v114;
        goto LABEL_43;
      }

      goto LABEL_36;
    }

    if (!v41)
    {
      break;
    }

    v54 = *v46;
    v44 = v46[1];
    *v46 = v44;
    v46[1] = v54;
    --v46;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_41;
    }
  }

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
}

void sub_1ABBA0EF0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v85 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 1160 * v9 + 8);
        v11 = 1160 * v7;
        v12 = *a3 + 1160 * v7;
        v13 = *(v12 + 8);
        v14 = (v12 + 2328);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v19 = (v13 < v10) ^ (v16 >= *v14);
          v14 += 145;
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_109;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 1160 * v6 - 1160;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v9)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_114;
                }

                memcpy(__dst, (v23 + v11), sizeof(__dst));
                memmove((v23 + v11), (v23 + v20), 0x488uLL);
                memcpy((v23 + v20), __dst, 0x488uLL);
              }

              ++v22;
              v20 -= 1160;
              v11 += 1160;
            }

            while (v22 < v9);
            v6 = a3[1];
            v9 = v21;
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_108;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_110;
          }

          if (v7 + a4 >= v6)
          {
            v24 = v6;
          }

          else
          {
            v24 = v7 + a4;
          }

          if (v24 < v7)
          {
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
            return;
          }

          if (v9 != v24)
          {
            v25 = *a3;
            v26 = *a3 + 1160 * v9 - 1160;
            v81 = v7;
            v27 = v9;
            v28 = v7 - v9;
            do
            {
              v29 = v28;
              v30 = v26;
              do
              {
                if (v30[1] >= v30[146])
                {
                  break;
                }

                if (!v25)
                {
                  goto LABEL_112;
                }

                memcpy(__dst, v30 + 145, sizeof(__dst));
                memcpy(v30 + 145, v30, 0x488uLL);
                memcpy(v30, __dst, 0x488uLL);
                v30 -= 145;
              }

              while (!__CFADD__(v29++, 1));
              v26 += 1160;
              --v28;
              ++v27;
            }

            while (v27 != v24);
            v9 = v24;
            v7 = v81;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_107;
      }

      v80 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = v8[2];
        sub_1ABA7BEF0();
        sub_1ABAD8820();
        v8 = v76;
      }

      v32 = v8[2];
      v33 = v32 + 1;
      if (v32 >= v8[3] >> 1)
      {
        sub_1ABAD8820();
        v8 = v77;
      }

      v8[2] = v33;
      v34 = v8 + 4;
      v35 = &v8[2 * v32 + 4];
      *v35 = v7;
      v35[1] = v9;
      v82 = *a1;
      if (!*a1)
      {
        goto LABEL_115;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          v37 = &v34[2 * v33 - 2];
          v38 = &v8[2 * v33];
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v39 = v8[4];
            v40 = v8[5];
            v49 = __OFSUB__(v40, v39);
            v41 = v40 - v39;
            v42 = v49;
LABEL_57:
            if (v42)
            {
              goto LABEL_97;
            }

            v54 = *v38;
            v53 = v38[1];
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_100;
            }

            v58 = v37[1];
            v59 = v58 - *v37;
            if (__OFSUB__(v58, *v37))
            {
              goto LABEL_103;
            }

            if (__OFADD__(v56, v59))
            {
              goto LABEL_105;
            }

            if (v56 + v59 >= v41)
            {
              if (v41 < v59)
              {
                v36 = v33 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          if (v33 < 2)
          {
            goto LABEL_99;
          }

          v61 = *v38;
          v60 = v38[1];
          v49 = __OFSUB__(v60, v61);
          v56 = v60 - v61;
          v57 = v49;
LABEL_72:
          if (v57)
          {
            goto LABEL_102;
          }

          v63 = *v37;
          v62 = v37[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_104;
          }

          if (v64 < v56)
          {
            goto LABEL_86;
          }

LABEL_79:
          if (v36 - 1 >= v33)
          {
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
LABEL_110:
            __break(1u);
            goto LABEL_111;
          }

          if (!*a3)
          {
            goto LABEL_113;
          }

          v68 = &v34[2 * v36 - 2];
          v69 = *v68;
          v70 = &v34[2 * v36];
          v71 = v70[1];
          sub_1ABBA1794((*a3 + 1160 * *v68), (*a3 + 1160 * *v70), (*a3 + 1160 * v71), v82);
          if (v5)
          {
            goto LABEL_90;
          }

          if (v71 < v69)
          {
            goto LABEL_92;
          }

          v72 = v8;
          v73 = v8[2];
          if (v36 > v73)
          {
            goto LABEL_93;
          }

          *v68 = v69;
          v68[1] = v71;
          if (v36 >= v73)
          {
            goto LABEL_94;
          }

          v33 = v73 - 1;
          memmove(&v34[2 * v36], v70 + 2, 16 * (v73 - 1 - v36));
          v72[2] = v73 - 1;
          v74 = v73 > 2;
          v8 = v72;
          v5 = 0;
          if (!v74)
          {
            goto LABEL_86;
          }
        }

        v43 = &v34[2 * v33];
        v44 = *(v43 - 8);
        v45 = *(v43 - 7);
        v49 = __OFSUB__(v45, v44);
        v46 = v45 - v44;
        if (v49)
        {
          goto LABEL_95;
        }

        v48 = *(v43 - 6);
        v47 = *(v43 - 5);
        v49 = __OFSUB__(v47, v48);
        v41 = v47 - v48;
        v42 = v49;
        if (v49)
        {
          goto LABEL_96;
        }

        v50 = v38[1];
        v51 = v50 - *v38;
        if (__OFSUB__(v50, *v38))
        {
          goto LABEL_98;
        }

        v49 = __OFADD__(v41, v51);
        v52 = v41 + v51;
        if (v49)
        {
          goto LABEL_101;
        }

        if (v52 >= v46)
        {
          v66 = *v37;
          v65 = v37[1];
          v49 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v49)
          {
            goto LABEL_106;
          }

          if (v41 < v67)
          {
            v36 = v33 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_57;
      }

LABEL_86:
      v6 = a3[1];
      v7 = v80;
      if (v80 >= v6)
      {
        v85 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_116;
  }

  sub_1ABBA1424(&v85, *a1, a3);
LABEL_90:
}

uint64_t sub_1ABBA1424(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4(v15);
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
    sub_1ABBA1794((*a3 + 1160 * *v4), (*a3 + 1160 * *v9), (*a3 + 1160 * v10), a2);
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

uint64_t sub_1ABBA155C(void *a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_1ABAE304C(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v5;
      v13 = *v4;
      v14 = *(*v6 + 24);
      v15 = *(*v6 + 32);

      v16 = sub_1ABF23D44();
      v17 = *(v13 + 24);
      v18 = *(v13 + 32);
      v19 = sub_1ABF23D44();

      if (v19 >= v16)
      {
        break;
      }

      v20 = v6;
      v21 = v7 == v6++;
      if (!v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      v5 = v12;
    }

    v20 = v4;
    v21 = v7 == v4++;
    if (v21)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v20;
    goto LABEL_13;
  }

  sub_1ABAE304C(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v38 = v4;
  v37 = v7;
LABEL_15:
  v22 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v24 = *(v10 - 1);
    v25 = v22;
    v26 = *v22;
    v27 = *(v24 + 24);
    v28 = *(v24 + 32);

    v29 = sub_1ABF23D44();
    v30 = *(v26 + 24);
    v31 = *(v26 + 32);
    v32 = sub_1ABF23D44();

    v33 = v5 + 1;
    if (v32 < v29)
    {
      v21 = v33 == v6;
      v6 = v25;
      v7 = v37;
      v4 = v38;
      if (!v21)
      {
        *v5 = *v25;
        v6 = v25;
      }

      goto LABEL_15;
    }

    if (v10 != v33)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
    v7 = v37;
    v4 = v38;
    v22 = v25;
  }

LABEL_28:
  v34 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v34])
  {
    memmove(v6, v4, 8 * v34);
  }

  return 1;
}

uint64_t sub_1ABBA1794(char *a1, char *a2, double *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 1160;
  v9 = (a3 - a2) / 1160;
  if (v8 < v9)
  {
    sub_1ABADD4BC(a1, (a2 - a1) / 1160, a4);
    v10 = &v4[145 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_26;
      }

      if (v4[1] >= v6[1])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 145;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 145;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 145;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    memmove(v7, v12, 0x488uLL);
    goto LABEL_13;
  }

  sub_1ABADD4BC(a2, (a3 - a2) / 1160, a4);
  v14 = &v4[145 * v9];
  while (1)
  {
    v5 -= 145;
    v14 -= 145;
    v10 = v14 + 145;
    if (v14 + 145 <= v4 || v6 <= v7)
    {
      break;
    }

    if (*(v6 - 144) < v14[1])
    {
      v16 = v6 - 145;
      v14 += 145;
      v13 = v5 + 145 == v6;
      v6 -= 145;
      if (!v13)
      {
        memmove(v5, v16, 0x488uLL);
        v6 = v16;
      }
    }

    else if (v10 != v5 + 145)
    {
      memmove(v5, v14, 0x488uLL);
    }
  }

LABEL_26:
  v17 = (v10 - v4) / 1160;
  if (v6 != v4 || v6 >= &v4[145 * v17])
  {
    memmove(v6, v4, 1160 * v17);
  }

  return 1;
}

uint64_t sub_1ABBA19EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1ABBA1A30()
{
  result = qword_1EB4CF2D0[0];
  if (!qword_1EB4CF2D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4CF2D0);
  }

  return result;
}

uint64_t sub_1ABBA1AD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1ABAB4C04(v53);
  v6 = v53[1];
  v48 = v53[0];
  v7 = v53[3];
  v8 = v53[4];
  v47 = v53[5];
  v57 = v53[6];
  v9 = (v53[2] + 64) >> 6;

  for (i = v6; ; v6 = i)
  {
    v10 = v8;
    v11 = v7;
    if (!v8)
    {
      break;
    }

LABEL_7:
    v13 = __clz(__rbit64(v10)) | (v11 << 6);
    v14 = (*(v48 + 48) + 48 * v13);
    v15 = v14[1];
    v16 = v14[2];
    v17 = v14[3];
    v18 = v14[4];
    v19 = v14[5];
    v20 = a4;
    v21 = *(*(v48 + 56) + 8 * v13);
    v49[0] = *v14;
    v49[1] = v15;
    v49[2] = v16;
    v49[3] = v17;
    v49[4] = v18;
    v49[5] = v19;
    v50 = v21;

    v22 = v21;
    v47(v51, v49);

    if (!*(&v51[0] + 1))
    {
LABEL_19:
      sub_1ABAB4C48();
    }

    v54 = v51[0];
    v55 = v51[1];
    v56 = v51[2];
    v23 = v52;
    v24 = *a5;
    v26 = sub_1ABAFF5BC(&v54);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_21;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v20 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D1FC8, &qword_1ABF4E1A0);
        sub_1ABF24C74();
      }
    }

    else
    {
      sub_1ABC04BB4(v29, v20 & 1);
      v31 = *a5;
      v32 = sub_1ABAFF5BC(&v54);
      if ((v30 & 1) != (v33 & 1))
      {
        goto LABEL_23;
      }

      v26 = v32;
    }

    v8 = (v10 - 1) & v10;
    v34 = *a5;
    if (v30)
    {
      v35 = *(v34[7] + 8 * v26);

      sub_1ABBA1A84(&v54);
      v36 = v34[7];
      v37 = *(v36 + 8 * v26);
      *(v36 + 8 * v26) = v35;
    }

    else
    {
      v34[(v26 >> 6) + 8] |= 1 << v26;
      v38 = (v34[6] + 48 * v26);
      v39 = v54;
      v40 = v56;
      v38[1] = v55;
      v38[2] = v40;
      *v38 = v39;
      *(v34[7] + 8 * v26) = v23;
      v41 = v34[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_22;
      }

      v34[2] = v43;
    }

    a4 = 1;
    v7 = v11;
  }

  v12 = v7;
  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      goto LABEL_19;
    }

    v10 = *(v6 + 8 * v11);
    ++v12;
    if (v10)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

unint64_t *sub_1ABBA1DE0(uint64_t a1, unint64_t *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      swift_slowAlloc();
      sub_1ABAA2C38();
      a2 = sub_1ABBA21C0(v13, v14, v15, v16);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      goto LABEL_5;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1ABB18078(0, v5, v17 - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1ABAA2C38();
  sub_1ABBA1F78(v6, v7, v8, v9);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v10;
  }

LABEL_5:
  v11 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t sub_1ABBA1F34(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1ABBA1F78(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = 0;
  v4 = 0;
  v30 = a4;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v32 = (v8 - 1) & v8;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 48 * v13);
    v15 = v14[1];
    v16 = v14[3];
    v17 = v14[4];
    v18 = v14[5];
    v29 = v13;
    v19 = *(*(a3 + 56) + 8 * v13);
    v20 = 3826797;
    if ((a4 & 0x80000000000000) == 0)
    {
      v20 = 3828069;
    }

    v33 = v20;

    v21 = v19;
    v22 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v22);

    if (v17 == v33 && v18 == 0xE300000000000000)
    {

      a4 = v30;
      v8 = v32;
LABEL_20:
      *(a1 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_23:
        sub_1ABD21898(a1, a2, v28, a3);
        return;
      }
    }

    else
    {
      v24 = sub_1ABF25054();

      a4 = v30;
      v8 = v32;
      if (v24)
      {
        goto LABEL_20;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_23;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v32 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_1ABBA21C0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_1ABBA1F78(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_1ABBA2248(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_1ABBA24A0(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1ABBA22D8(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v8 = v13 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1ABB18078(0, v6, v8);
    v9 = sub_1ABBA24A0(v8, v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_1ABBA2248(v12, v6, a2, a1);

    MEMORY[0x1AC5AB8B0](v12, -1, -1);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t sub_1ABBA24A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_1ABF25234();

      sub_1ABF23D34();
      v42 = sub_1ABF25294();
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

        v47 = sub_1ABF25054();
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

        return sub_1ABC13714(v54, a2, v55, v5);
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
      sub_1ABF25234();

      sub_1ABF23D34();
      v19 = sub_1ABF25294();
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

        v27 = sub_1ABF25054();
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

id sub_1ABBA2844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  result = sub_1ABDBC910(a2, v5, *(a1 + 48));
  *(a2 + 48) = result;
  return result;
}

unint64_t sub_1ABBA2890()
{
  result = qword_1ED870678;
  if (!qword_1ED870678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870678);
  }

  return result;
}

uint64_t sub_1ABBA28E4(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D3EC8, &unk_1ABF41180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABBA294C(uint64_t a1)
{
  v2 = type metadata accessor for MorphunTokenizer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for RerankerAlgorithm(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABBA2A88()
{
  result = qword_1EB4D3ED0;
  if (!qword_1EB4D3ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3ED0);
  }

  return result;
}

unint64_t sub_1ABBA2ADC()
{
  result = qword_1ED8716D0;
  if (!qword_1ED8716D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8716D0);
  }

  return result;
}

uint64_t sub_1ABBA2B30(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v49 = a2;
  v47 = sub_1ABF23744();
  v2 = sub_1ABA7BB64(v47);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v2);
  v46 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - v9;
  v11 = sub_1ABF237F4();
  v12 = sub_1ABA7BB64(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  v19 = v18 - v17;
  v45 = sub_1ABF23774();
  v20 = sub_1ABA7BB64(v45);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7BC58();
  v27 = v26 - v25;
  v44 = type metadata accessor for LogSignpost();
  v28 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1ABA7BC58();
  v31 = v30 - v29;
  if (qword_1ED871F20 != -1)
  {
    swift_once();
  }

  v32 = sub_1ABA7AA24(v11, qword_1ED871EF8);
  (*(v14 + 16))(v19, v32, v11);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v33 = sub_1ABF23764();
  v34 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v33, v34, v36, "ECR.Reranker.model", "", v35, 2u);
    MEMORY[0x1AC5AB8B0](v35, -1, -1);
  }

  v37 = v47;
  (*(v4 + 16))(v46, v10, v47);
  v38 = sub_1ABF237B4();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = sub_1ABF237A4();
  (*(v4 + 8))(v10, v37);
  *v31 = "ECR.Reranker.model";
  *(v31 + 8) = 18;
  *(v31 + 16) = 2;
  *(v31 + 24) = v41;
  (*(v22 + 32))(v31 + *(v44 + 24), v27, v45);
  if (qword_1EB4CFD98 != -1)
  {
    swift_once();
  }

  v42 = sub_1ABBA38E8();
  sub_1ABBA4284(v31);
  sub_1ABBA4F10(v31);
  return v42;
}

void sub_1ABBA2F10(void *__src@<X2>, uint64_t *a2@<X0>, uint64_t a3@<X1>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __objc2_class **a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, double a11@<D1>)
{
  v13 = v12;
  v72 = *a2;
  memcpy(__dst, __src, sizeof(__dst));
  v22 = *(a3 + 16);
  v74 = v11;
  if (v22 != v11[3])
  {
    sub_1ABBA4EBC();
    sub_1ABA7BD00();
    *v27 = 0;
    goto LABEL_6;
  }

  v69 = a4;
  v70 = a9;
  sub_1ABAD219C(&qword_1EB4D1910, &qword_1ABF33AA0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1ABF3BF80;
  sub_1ABB373C8();
  *(v23 + 32) = sub_1ABF24794();
  *(v23 + 40) = sub_1ABF24404();
  v24 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v25 = sub_1ABE0F040(v23, 65568);
  if (v12)
  {

LABEL_4:
    sub_1ABBA4EBC();
    sub_1ABA7BD00();
    *v26 = 1;
LABEL_6:
    swift_willThrow();
    return;
  }

  if (!v25)
  {
    goto LABEL_4;
  }

  v66 = a5;
  v67 = a6;
  v68 = a3;
  v65 = a7;
  v28 = v25;
  v29 = [v25 count];
  if ((v29 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v30 = v29;
  v31 = v28;
  if (!v29)
  {
    goto LABEL_14;
  }

  if (!v22)
  {
    goto LABEL_33;
  }

  if (v29 > v22)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
    goto LABEL_25;
  }

  v32 = 0;
  v33 = a3 + 32;
  a7 = &off_1E7963000;
  v31 = v28;
  do
  {
    v34 = *(v33 + 4 * v32);
    v35 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    LODWORD(v36) = v34;
    v37 = [v35 initWithFloat_];
    [v28 setObject:v37 atIndexedSubscript:v32];

    ++v32;
  }

  while (v30 != v32);
LABEL_14:
  v38 = v74[2];
  sub_1ABED49B4(v31);
  v13 = v31;

  v39 = sub_1ABED467C();

  a5 = v66;
  if (v39 && (a7 = [v39 multiArrayValue], v39, a7))
  {

    v40 = sub_1ABED467C();

    a3 = v68;
    if (v40 && (v41 = [v40 multiArrayValue], v40, (v75 = v41) != 0))
    {

      v42 = sub_1ABED467C();

      if (v42)
      {
        v43 = [v42 multiArrayValue];

        if (v43)
        {
          v44 = [v43 objectAtIndexedSubscript_];
          sub_1ABF242E4();
          v46 = v45;

          v47 = [a7 objectAtIndexedSubscript_];
          sub_1ABF242E4();
          v49 = v48;

          v50 = [v75 objectAtIndexedSubscript_];
          sub_1ABF242E4();
          v52 = v51;

          memcpy(v76, __src, 0x3C8uLL);
          sub_1ABB9AEA4(v76);
          *v70 = v72;
          *(v70 + 8) = v46;
          *(v70 + 16) = v49;
          *(v70 + 24) = v52;
          *(v70 + 32) = a10;
          *(v70 + 40) = 0u;
          *(v70 + 56) = 0u;
          *(v70 + 72) = 0u;
          *(v70 + 88) = 0u;
          *(v70 + 104) = 0;
          memcpy((v70 + 112), v76, 0x3C9uLL);
          *(v70 + 1152) = v68;
          *(v70 + 1088) = 0;
          *(v70 + 1096) = 1;
          *(v70 + 1104) = a11;
          *(v70 + 1112) = v69 & 1;
          *(v70 + 1120) = v66;
          *(v70 + 1128) = v67;
          *(v70 + 1136) = v65;
          *(v70 + 1144) = a8;

          return;
        }
      }

      sub_1ABBA4EBC();
      v63 = sub_1ABA7BD00();
      sub_1ABA7F05C(v63, v64);
    }

    else
    {
      sub_1ABBA4EBC();
      v61 = sub_1ABA7BD00();
      sub_1ABA7F05C(v61, v62);
    }

    a6 = v67;
  }

  else
  {
    sub_1ABBA4EBC();
    v53 = sub_1ABA7BD00();
    sub_1ABA7F05C(v53, v54);

    a3 = v68;
  }

  v77 = a7;
  v55 = a7;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if (!swift_dynamicCast() || v76[975] != 6)
  {

    return;
  }

  if (qword_1ED871B18 != -1)
  {
    goto LABEL_35;
  }

LABEL_25:
  v56 = sub_1ABF237F4();
  sub_1ABA7AA24(v56, qword_1ED871B20);
  v57 = sub_1ABF237D4();
  v58 = sub_1ABF24664();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_1ABA78000, v57, v58, "Model execution failed. Unable to retrieve output featureValue for field.", v59, 2u);
    MEMORY[0x1AC5AB8B0](v59, -1, -1);
  }

  memcpy(v76, __dst, 0x3C8uLL);
  sub_1ABB9AEA4(v76);
  *v70 = v72;
  *(v70 + 8) = 0;
  *(v70 + 16) = 0;
  *(v70 + 24) = 0;
  *(v70 + 32) = a10;
  *(v70 + 40) = 0u;
  *(v70 + 56) = 0u;
  *(v70 + 72) = 0u;
  *(v70 + 88) = 0u;
  *(v70 + 104) = 0;
  memcpy((v70 + 112), v76, 0x3C9uLL);
  *(v70 + 1152) = a3;
  *(v70 + 1088) = 0;
  *(v70 + 1096) = 1;
  *(v70 + 1104) = a11;
  *(v70 + 1112) = v69 & 1;
  *(v70 + 1120) = a5;
  *(v70 + 1128) = a6;
  *(v70 + 1136) = v65;
  *(v70 + 1144) = a8;
  v60 = v77;
}

id sub_1ABBA36E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x63735F7475706E69 && a2 == 0xEC0000007365726FLL;
  if (v3 || (sub_1ABF25054()) && (v4 = *(v2 + 16)) != 0)
  {
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABBA37DC()
{
  sub_1ABA7D544();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABBA3830()
{
  v1 = *(v0 + 16);

  sub_1ABA7D544();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABBA3860()
{
  type metadata accessor for EntityRerankerHandler.EntityRerankerHandlerCache.GuardedData();
  v1 = swift_allocObject();
  *(v1 + 16) = sub_1ABF239C4();
  sub_1ABAD219C(&qword_1EB4D3EE8, &qword_1ABF41388);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t sub_1ABBA38E8()
{
  v2 = v1;
  v3 = *(v0 + 16);

  os_unfair_lock_lock((v3 + 24));
  sub_1ABBA4F6C((v3 + 16), &v5);
  os_unfair_lock_unlock((v3 + 24));
  if (!v1)
  {
    v2 = v5;
  }

  return v2;
}

void sub_1ABBA396C(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  sub_1ABAD57E8(a2, a3, *(v8 + 16));
  if (v32 == 1)
  {
    sub_1ABA925A4(&v31, &qword_1EB4D3EE0, &unk_1ABF41370);
    swift_endAccess();
  }

  else
  {
    sub_1ABAFF42C(&v31, v34);
    swift_endAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      if (qword_1ED871B18 != -1)
      {
        swift_once();
      }

      v11 = sub_1ABF237F4();
      sub_1ABA7AA24(v11, qword_1ED871B20);

      v12 = sub_1ABF237D4();
      v13 = sub_1ABF24654();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v31 = v10;
        v33[0] = v29;
        *v14 = 136315394;
        type metadata accessor for EntityRerankerHandler();

        v15 = sub_1ABF23C74();
        v17 = a2;
        v18 = a4;
        v19 = sub_1ABADD6D8(v15, v16, v33);

        *(v14 + 4) = v19;
        a4 = v18;
        *(v14 + 12) = 2080;
        *(v14 + 14) = sub_1ABADD6D8(v17, a3, v33);
        _os_log_impl(&dword_1ABA78000, v12, v13, "EntityRerankerHandler: using cached handler %s for %s", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1AC5AB8B0](v29, -1, -1);
        MEMORY[0x1AC5AB8B0](v14, -1, -1);
      }

      sub_1ABBA4F88(v34);
      goto LABEL_16;
    }

    sub_1ABBA4F88(v34);
  }

  type metadata accessor for EntityRerankerHandler();
  v10 = swift_allocObject();
  sub_1ABBA3E34();
  if (v4)
  {
    return;
  }

  swift_weakInit();
  v32 = 0;
  swift_beginAccess();

  sub_1ABD25860(&v31, a2, a3);
  swift_endAccess();
  if (qword_1ED871B18 != -1)
  {
    swift_once();
  }

  v20 = sub_1ABF237F4();
  sub_1ABA7AA24(v20, qword_1ED871B20);

  v21 = sub_1ABF237D4();
  v22 = sub_1ABF24654();

  if (os_log_type_enabled(v21, v22))
  {
    v30 = a4;
    v23 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33[0] = v28;
    *v23 = 136315394;
    v31 = v10;

    v24 = sub_1ABF23C74();
    v26 = sub_1ABADD6D8(v24, v25, v33);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1ABADD6D8(a2, a3, v33);
    _os_log_impl(&dword_1ABA78000, v21, v22, "EntityRerankerModel: caching model %s for %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5AB8B0](v28, -1, -1);
    v27 = v23;
    a4 = v30;
    MEMORY[0x1AC5AB8B0](v27, -1, -1);
  }

LABEL_16:
  *a4 = v10;
}

uint64_t sub_1ABBA3DC8()
{
  v1 = *(v0 + 16);

  sub_1ABA7D544();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABBA3DF8()
{
  type metadata accessor for EntityRerankerHandler.EntityRerankerHandlerCache();
  v0 = swift_allocObject();
  result = sub_1ABBA3860();
  qword_1EB4CFDA0 = v0;
  return result;
}

unsigned __int8 *sub_1ABBA3E34()
{
  v2 = *v0;
  type metadata accessor for EntityRerankerModel();
  v3 = sub_1ABED4314([objc_allocWithZone(MEMORY[0x1E695FEB0]) initWithComputeUnits_]);
  if (v1)
  {
    goto LABEL_79;
  }

  v0[2] = v3;
  v4 = [*(v3 + 16) modelDescription];
  v5 = [v4 metadata];

  type metadata accessor for MLModelMetadataKey(0);
  sub_1ABBA4FB8();
  v6 = sub_1ABF23974();

  sub_1ABAD56C8(*MEMORY[0x1E695FDB0], v6);

  if (v36[3])
  {
    sub_1ABAD219C(&qword_1EB4D2068, &qword_1ABF41380);
    if (swift_dynamicCast())
    {
      v7 = sub_1ABA94FF4(0x75746165466D756ELL, 0xEB00000000736572, v35);
      v9 = v8;

      if (v9)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    sub_1ABA925A4(v36, &qword_1EB4D3000, &unk_1ABF3AA60);
  }

  v7 = 0;
  v9 = 0xE000000000000000;
LABEL_8:
  v11 = HIBYTE(v9) & 0xF;
  v12 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v9 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v9) & 0xF;
  }

  else
  {
    v13 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

LABEL_78:
    sub_1ABBA4EBC();
    sub_1ABA7BD00();
    *v32 = 5;
    swift_willThrow();
    v33 = v0[2];

LABEL_79:
    swift_deallocPartialClassInstance();
    return v0;
  }

  if ((v9 & 0x1000000000000000) != 0)
  {
    v15 = sub_1ABB81A68(v7, v9, 10);
    v31 = v34;
LABEL_77:

    if ((v31 & 1) == 0)
    {
      v0[3] = v15;
      return v0;
    }

    goto LABEL_78;
  }

  if ((v9 & 0x2000000000000000) == 0)
  {
    if ((v7 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1ABF24B74();
    }

    v14 = *result;
    if (v14 == 43)
    {
      if (v12 >= 1)
      {
        if (v12 != 1)
        {
          v15 = 0;
          if (result)
          {
            while (1)
            {
              sub_1ABA7D44C();
              if (!v17 & v16)
              {
                goto LABEL_75;
              }

              sub_1ABA8F22C();
              if (!v17)
              {
                goto LABEL_75;
              }

              v15 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                goto LABEL_75;
              }

              sub_1ABA7E4F0();
              if (v17)
              {
                goto LABEL_76;
              }
            }
          }

          goto LABEL_66;
        }

        goto LABEL_75;
      }

      goto LABEL_87;
    }

    if (v14 != 45)
    {
      if (v12)
      {
        v15 = 0;
        if (result)
        {
          while (1)
          {
            v27 = *result - 48;
            if (v27 > 9)
            {
              goto LABEL_75;
            }

            v28 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              goto LABEL_75;
            }

            v15 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              goto LABEL_75;
            }

            ++result;
            if (!--v12)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_66;
      }

LABEL_75:
      v15 = 0;
      v20 = 1;
      goto LABEL_76;
    }

    if (v12 >= 1)
    {
      if (v12 != 1)
      {
        v15 = 0;
        if (result)
        {
          while (1)
          {
            sub_1ABA7D44C();
            if (!v17 & v16)
            {
              goto LABEL_75;
            }

            sub_1ABA8F22C();
            if (!v17)
            {
              goto LABEL_75;
            }

            v15 = v19 - v18;
            if (__OFSUB__(v19, v18))
            {
              goto LABEL_75;
            }

            sub_1ABA7E4F0();
            if (v17)
            {
              goto LABEL_76;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_76:
        v31 = v20;
        goto LABEL_77;
      }

      goto LABEL_75;
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v36[0] = v7;
  v36[1] = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v7 != 43)
  {
    if (v7 != 45)
    {
      if (v11)
      {
        while (1)
        {
          sub_1ABA7D44C();
          if (!v17 & v16)
          {
            break;
          }

          sub_1ABA8F22C();
          if (!v17)
          {
            break;
          }

          v15 = v30 + v29;
          if (__OFADD__(v30, v29))
          {
            break;
          }

          sub_1ABA7E4F0();
          if (v17)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_75;
    }

    if (v11)
    {
      if (v11 != 1)
      {
        sub_1ABA8095C();
        while (1)
        {
          sub_1ABA7D44C();
          if (!v17 & v16)
          {
            break;
          }

          sub_1ABA8F22C();
          if (!v17)
          {
            break;
          }

          v15 = v22 - v21;
          if (__OFSUB__(v22, v21))
          {
            break;
          }

          sub_1ABA7E4F0();
          if (v17)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_75;
    }

    goto LABEL_86;
  }

  if (v11)
  {
    if (v11 != 1)
    {
      sub_1ABA8095C();
      while (1)
      {
        sub_1ABA7D44C();
        if (!v17 & v16)
        {
          break;
        }

        sub_1ABA8F22C();
        if (!v17)
        {
          break;
        }

        v15 = v26 + v25;
        if (__OFADD__(v26, v25))
        {
          break;
        }

        sub_1ABA7E4F0();
        if (v17)
        {
          goto LABEL_76;
        }
      }
    }

    goto LABEL_75;
  }

LABEL_88:
  __break(1u);
  return result;
}

uint64_t sub_1ABBA4284(uint64_t a1)
{
  v2 = sub_1ABF23784();
  v24 = *(v2 - 8);
  v3 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1ABF23744();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for LogSignpost();
  v12 = *a1;
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = a1 + *(v11 + 24);
  v16 = sub_1ABF23764();
  sub_1ABF23794();
  v23 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v7 + 8))(v10, v6);
  }

  if ((v13 & 1) == 0)
  {
    if (v12)
    {
LABEL_9:

      sub_1ABF237C4();

      v18 = v24;
      if ((*(v24 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v18 + 8))(v5, v2);
        v19 = "";
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v16, v23, v21, v12, v19, v20, 2u);
      MEMORY[0x1AC5AB8B0](v20, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v12 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v12 & 0xFFFFF800) != 0xD800)
  {
    if (v12 >> 16 <= 0x10)
    {
      v12 = &v25;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1ABBA452C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1ABBA45E0(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v105[1] = *MEMORY[0x1E69E9840];
  v105[0] = MEMORY[0x1E69E7CC8];
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (!v8)
  {
    while (1)
    {
LABEL_5:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
      }

      if (v11 >= v9)
      {
        break;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    v101 = v3;

    v21 = 0;
    v3 = v105[0];
    while (1)
    {
      v22 = byte_1F208FCA8[v21 + 32];
      v23 = sub_1ABBAE950(v22);
      if (v3[2])
      {
        sub_1ABA94FC8(v23, v24);
        v26 = v25;

        if (v26)
        {
          goto LABEL_46;
        }
      }

      else
      {
      }

      if (qword_1EB4CFFD8 != -1)
      {
        swift_once();
      }

      v27 = qword_1EB5495B0;
      v28 = sub_1ABBAE950(v22);
      v30 = v29;
      if (*(v27 + 16))
      {
        v31 = v28;
        v32 = *(v27 + 40);
        sub_1ABF25234();
        sub_1ABF23D34();
        v33 = sub_1ABF25294();
        v34 = ~(-1 << *(v27 + 32));
        do
        {
          v35 = v33 & v34;
          if (((*(v27 + 56 + (((v33 & v34) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v33 & v34)) & 1) == 0)
          {
            goto LABEL_33;
          }

          v36 = (*(v27 + 48) + 16 * v35);
          if (*v36 == v31 && v36[1] == v30)
          {
            break;
          }

          v38 = sub_1ABF25054();
          v33 = v35 + 1;
        }

        while ((v38 & 1) == 0);

        v39 = sub_1ABBAE950(v22);
        v41 = v40;
        v42 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        if (!v42)
        {
LABEL_41:
          v77 = sub_1ABA8E7C4();
          v79 = sub_1ABA94FC8(v77, v78);
          v81 = v80;

          if (v81)
          {
            swift_isUniquelyReferenced_nonNull_native();
            v103[0] = v3;
            v82 = v3[3];
            sub_1ABAD219C(&qword_1EB4D1FF8, &unk_1ABF4C460);
            sub_1ABF24C64();
            v3 = v103[0];
            v83 = *(*(v103[0] + 6) + 16 * v79 + 8);

            sub_1ABB373C8();
            sub_1ABF24C84();
          }

          goto LABEL_46;
        }

        v43 = v42;
        swift_isUniquelyReferenced_nonNull_native();
        v103[0] = v3;
        v44 = sub_1ABA8E7C4();
        v46 = sub_1ABA94FC8(v44, v45);
        sub_1ABA81720(v46, v47);
        if (v50)
        {
          goto LABEL_56;
        }

        v51 = v48;
        v52 = v49;
        sub_1ABAD219C(&qword_1EB4D1FF8, &unk_1ABF4C460);
        if (sub_1ABA8FF64())
        {
          v53 = sub_1ABA8E7C4();
          v55 = sub_1ABA94FC8(v53, v54);
          if ((v52 & 1) != (v56 & 1))
          {
            goto LABEL_58;
          }

          v51 = v55;
        }

        v3 = v103[0];
        if ((v52 & 1) == 0)
        {
          sub_1ABAFF5B0(v51, v39, v41, v43, v103[0]);
          goto LABEL_46;
        }

        v57 = *(v103[0] + 7);
        v58 = *(v57 + 8 * v51);
        *(v57 + 8 * v51) = v43;
      }

      else
      {
LABEL_33:

        v59 = sub_1ABBAE950(v22);
        v61 = v60;
        v62 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        if (!v62)
        {
          goto LABEL_41;
        }

        v63 = v62;
        swift_isUniquelyReferenced_nonNull_native();
        v103[0] = v3;
        v64 = sub_1ABA8E7C4();
        v66 = sub_1ABA94FC8(v64, v65);
        sub_1ABA81720(v66, v67);
        if (v50)
        {
          goto LABEL_55;
        }

        v70 = v68;
        v71 = v69;
        sub_1ABAD219C(&qword_1EB4D1FF8, &unk_1ABF4C460);
        if (sub_1ABA8FF64())
        {
          v72 = sub_1ABA8E7C4();
          v74 = sub_1ABA94FC8(v72, v73);
          if ((v71 & 1) != (v75 & 1))
          {
LABEL_58:
            sub_1ABF25104();
            __break(1u);
            goto LABEL_59;
          }

          v70 = v74;
        }

        v3 = v103[0];
        if ((v71 & 1) == 0)
        {
          *(v103[0] + (v70 >> 6) + 8) |= 1 << v70;
          v84 = (v3[6] + 16 * v70);
          *v84 = v59;
          v84[1] = v61;
          *(v3[7] + 8 * v70) = v63;
          v85 = v3[2];
          v50 = __OFADD__(v85, 1);
          v86 = v85 + 1;
          if (v50)
          {
            goto LABEL_57;
          }

          v3[2] = v86;
          goto LABEL_46;
        }

        v76 = *(v103[0] + 7);
        v58 = *(v76 + 8 * v70);
        *(v76 + 8 * v70) = v63;
      }

LABEL_46:
      if (++v21 == 122)
      {
        v87 = objc_opt_self();
        sub_1ABB373C8();
        v88 = sub_1ABF23954();
        v103[0] = 0;
        v89 = [v87 dataWithJSONObject:v88 options:0 error:v103];

        v90 = v103[0];
        if (v89)
        {
          v91 = sub_1ABF21DD4();
          v93 = v92;

          v94 = sub_1ABF217F4();
          v95 = *(v94 + 48);
          v96 = *(v94 + 52);
          swift_allocObject();
          sub_1ABF217E4();
          sub_1ABBA4E68();
          sub_1ABF217D4();
          v97 = v101;
          if (v101)
          {

            sub_1ABA96210(v91, v93);
            goto LABEL_51;
          }

          sub_1ABA96210(v91, v93);
        }

        else
        {
          v98 = v90;
          v97 = sub_1ABF21BE4();

          swift_willThrow();
LABEL_51:

          *a2 = v97;
        }

        v100 = *MEMORY[0x1E69E9840];
        return result;
      }
    }
  }

  while (1)
  {
    v11 = v10;
LABEL_8:
    v12 = __clz(__rbit64(v8)) | (v11 << 6);
    v13 = *(a1 + 48) + 48 * v12;
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    v16 = *(v13 + 24);
    v17 = *(v13 + 32);
    v18 = *(v13 + 40);
    v19 = *(*(a1 + 56) + 8 * v12);
    v103[0] = *v13;
    v103[1] = v14;
    v103[2] = v15;
    v103[3] = v16;
    v103[4] = v17;
    v103[5] = v18;
    v104 = v19;

    v20 = v19;
    sub_1ABBA4CD8(v105, v103);
    if (v3)
    {
      break;
    }

    v8 &= v8 - 1;

    v10 = v11;
    if (!v8)
    {
      goto LABEL_5;
    }
  }

LABEL_59:

  __break(1u);
  return result;
}

void sub_1ABBA4CD8(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[6];
  v11 = *a2;
  v13 = a2[1];

  MEMORY[0x1AC5A9410](43, 0xE100000000000000);
  MEMORY[0x1AC5A9410](v3, v4);
  if (qword_1EB4CFFD8 != -1)
  {
    swift_once();
  }

  sub_1ABB130E0();
  if (v6)
  {
    v7 = [v5 int64Value];
    if ([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_])
    {
LABEL_5:
      v8 = *a1;
      swift_isUniquelyReferenced_nonNull_native();
      v12 = *a1;
      sub_1ABAFB584();

      *a1 = v12;
      return;
    }
  }

  else
  {
    [v5 doubleValue];
    if ([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_])
    {
      goto LABEL_5;
    }
  }

  v10 = sub_1ABC25DD8(v11, v13);
}

unint64_t sub_1ABBA4E68()
{
  result = qword_1EB4CFFC8;
  if (!qword_1EB4CFFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFFC8);
  }

  return result;
}

unint64_t sub_1ABBA4EBC()
{
  result = qword_1EB4D3ED8;
  if (!qword_1EB4D3ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3ED8);
  }

  return result;
}

uint64_t sub_1ABBA4F10(uint64_t a1)
{
  v2 = type metadata accessor for LogSignpost();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1ABBA4FB8()
{
  result = qword_1ED86B968;
  if (!qword_1ED86B968)
  {
    type metadata accessor for MLModelMetadataKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B968);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ECRModelError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABBA50F0()
{
  result = qword_1EB4D3EF0;
  if (!qword_1EB4D3EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3EF0);
  }

  return result;
}

IntelligencePlatform::EntityResolutionMode_optional __swiftcall EntityResolutionMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EntityResolutionMode.rawValue.getter()
{
  result = 0x6E6574614C776F6CLL;
  switch(*v0)
  {
    case 1:
      result = 0x6465636E616C6162;
      break;
    case 2:
      result = 0x6C61755168676968;
      break;
    case 3:
      v2 = 0x786966657270;
      goto LABEL_8;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      v2 = 0x646972627968;
LABEL_8:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6553000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBA528C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1ABACFAA8();
}

uint64_t sub_1ABBA52BC@<X0>(uint64_t *a1@<X8>)
{
  result = EntityResolutionMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void static EntityResolutionConfig.fromResource(configName:)()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v39 = v4;
  v5 = sub_1ABF21CF4();
  v6 = sub_1ABA7BB64(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v6);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v37 - v14;
  if (qword_1ED871EA0 != -1)
  {
    swift_once();
  }

  v16 = qword_1ED871EA8;
  v17 = sub_1ABF23BD4();
  v18 = sub_1ABF23BD4();
  v19 = sub_1ABBA918C(v3, v1, v17, v18, v16);

  if (!v19)
  {
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C();
    }

    v30 = sub_1ABF237F4();
    sub_1ABA7AA24(v30, qword_1ED871B20);

    v31 = sub_1ABF237D4();
    v32 = sub_1ABF24664();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v41[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_1ABADD6D8(v3, v1, v41);
      _os_log_impl(&dword_1ABA78000, v31, v32, "Failed to get the correct URL for config file %s", v33, 0xCu);
      sub_1ABA84B54(v34);
      sub_1ABA7BC34();
      sub_1ABA7BC34();
    }

    sub_1ABBA91F4(v41);
    goto LABEL_15;
  }

  sub_1ABF21CA4();

  sub_1ABBA57F4(v15, v41);
  if (sub_1ABBA91FC(v41) != 1)
  {
    (*(v8 + 8))(v15, v5);
LABEL_15:
    v35 = v41;
    goto LABEL_18;
  }

  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7BE6C();
  }

  v20 = sub_1ABF237F4();
  sub_1ABA7AA24(v20, qword_1ED871B20);
  (*(v8 + 16))(v13, v15, v5);
  v21 = sub_1ABF237D4();
  v22 = sub_1ABF24664();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v37 = v23;
    v38 = swift_slowAlloc();
    v40[0] = v38;
    *v23 = 136315138;
    sub_1ABAE27F8();
    v24 = sub_1ABF24FF4();
    v26 = v25;
    v27 = *(v8 + 8);
    v27(v13, v5);
    v28 = sub_1ABADD6D8(v24, v26, v40);

    v29 = v37;
    *(v37 + 1) = v28;
    _os_log_impl(&dword_1ABA78000, v21, v22, "Failed to load config data from %s", v29, 0xCu);
    sub_1ABA84B54(v38);
    sub_1ABA7BC34();
    sub_1ABA7BC34();

    v27(v15, v5);
  }

  else
  {

    v36 = *(v8 + 8);
    v36(v13, v5);
    v36(v15, v5);
  }

  sub_1ABBA91F4(v40);
  v35 = v40;
LABEL_18:
  memcpy(v39, v35, 0x8DuLL);
  sub_1ABA7BC1C();
}

void *sub_1ABBA57F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v49 = a2;
  v3 = sub_1ABF21CF4();
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1ABF23C54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABF23BC4();
  sub_1ABF23C44();
  v46 = sub_1ABF23C14();
  v13 = v12;

  (*(v8 + 8))(v11, v7);
  if (v13 >> 60 == 15)
  {
    v51[0] = 0;
    v51[1] = 0xE000000000000000;
    sub_1ABF24AB4();

    v51[0] = 0xD00000000000001ELL;
    v51[1] = 0x80000001ABF89530;
    sub_1ABAE27F8();
    v14 = v48;
    v15 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v15);

    v16 = v51[0];
    v17 = v51[1];
    sub_1ABBAA394();
    v18 = swift_allocError();
    *v19 = v16;
    v19[1] = v17;
    swift_willThrow();
    v25 = v6;
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v26 = sub_1ABF237F4();
    sub_1ABA7AA24(v26, qword_1ED871B40);
    v27 = v47;
    (*(v47 + 16))(v25, a1, v14);
    v28 = v18;
    v29 = sub_1ABF237D4();
    v30 = sub_1ABF24674();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = v25;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v51[0] = v34;
      *v31 = 136315394;
      sub_1ABAE27F8();
      v35 = sub_1ABF24FF4();
      v36 = v27;
      v37 = v35;
      v38 = v14;
      v40 = v39;
      (*(v36 + 8))(v32, v38);
      v41 = sub_1ABADD6D8(v37, v40, v51);

      *(v31 + 4) = v41;
      *(v31 + 12) = 2112;
      v42 = v18;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v43;
      *v33 = v43;
      _os_log_impl(&dword_1ABA78000, v29, v30, "Failed to load data from %s with error %@", v31, 0x16u);
      sub_1ABB24B18(v33);
      MEMORY[0x1AC5AB8B0](v33, -1, -1);
      sub_1ABA84B54(v34);
      MEMORY[0x1AC5AB8B0](v34, -1, -1);
      MEMORY[0x1AC5AB8B0](v31, -1, -1);
    }

    else
    {

      (*(v27 + 8))(v25, v14);
    }

    sub_1ABBAA4C0(v51);
    v45 = v51;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = sub_1ABF217F4();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_1ABF217E4();
    sub_1ABAD219C(&qword_1EB4D4000, &qword_1ABF41B30);
    sub_1ABBAA4F0();
    v24 = v46;
    sub_1ABF217D4();

    objc_autoreleasePoolPop(v20);
    sub_1ABAC9310(v24, v13);
    memcpy(v50, v51, 0x8DuLL);
    nullsub_1(v50);
    v45 = v50;
  }

  return memcpy(v49, v45, 0x8DuLL);
}

void sub_1ABBA5D18()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v48 = v2;
  v49 = sub_1ABF21CF4();
  v3 = sub_1ABA7BB64(v49);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1ABF23C54();
  v11 = sub_1ABA7BB64(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABF23BC4();
  sub_1ABF23C44();
  v18 = sub_1ABF23C14();
  v20 = v19;

  (*(v13 + 8))(v17, v10);
  if (v20 >> 60 == 15)
  {
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1ABF24AB4();

    v50 = 0xD00000000000001ELL;
    v51 = 0x80000001ABF89530;
    sub_1ABAE27F8();
    v21 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v21);

    v22 = v50;
    v23 = v51;
    sub_1ABBAA394();
    v24 = swift_allocError();
    *v25 = v22;
    v25[1] = v23;
    swift_willThrow();
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v30 = sub_1ABF237F4();
    sub_1ABA7AA24(v30, qword_1ED871B40);
    v31 = v49;
    (*(v5 + 16))(v9, v1, v49);
    v32 = v24;
    v33 = sub_1ABF237D4();
    v34 = sub_1ABF24674();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v50 = v37;
      *v35 = 136315394;
      sub_1ABAE27F8();
      v38 = sub_1ABF24FF4();
      v39 = v31;
      v40 = v38;
      v42 = v41;
      (*(v5 + 8))(v9, v39);
      v43 = sub_1ABADD6D8(v40, v42, &v50);

      *(v35 + 4) = v43;
      *(v35 + 12) = 2112;
      v44 = v24;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v45;
      *v36 = v45;
      _os_log_impl(&dword_1ABA78000, v33, v34, "Failed to load data from %s with error %@", v35, 0x16u);
      sub_1ABB24B18(v36);
      sub_1ABA7BC34();
      sub_1ABA84B54(v37);
      sub_1ABA7BC34();
      sub_1ABA7BC34();
    }

    else
    {

      (*(v5 + 8))(v9, v31);
    }

    v46 = 1;
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = sub_1ABF217F4();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    sub_1ABF217E4();
    sub_1ABAD219C(&qword_1EB4D3FE8, &qword_1ABF41B28);
    sub_1ABBAA3E8();
    sub_1ABF217D4();

    objc_autoreleasePoolPop(v26);
    sub_1ABAC9310(v18, v20);
    v46 = v50;
  }

  *v48 = v46;
  sub_1ABA7BC1C();
}

void sub_1ABBA61BC()
{
  sub_1ABA7E2A8();
  v0 = sub_1ABF239C4();
  for (i = 0; ; ++i)
  {
    v2 = 0xEA00000000007963;
    v3 = 0x6E6574614C776F6CLL;
    switch(byte_1F208FF30[i + 32])
    {
      case 1:
        v2 = 0xE800000000000000;
        v3 = 0x6465636E616C6162;
        break;
      case 2:
        v3 = 0x6C61755168676968;
        v2 = 0xEB00000000797469;
        break;
      case 3:
        v4 = 0x786966657270;
        goto LABEL_9;
      case 4:
        v3 = 0xD000000000000014;
        v2 = 0x80000001ABF7F180;
        break;
      case 5:
        v3 = 0xD000000000000010;
        v2 = 0x80000001ABF7F1A0;
        break;
      case 6:
        v4 = 0x646972627968;
LABEL_9:
        v3 = v4 & 0xFFFFFFFFFFFFLL | 0x6553000000000000;
        v2 = 0xEC00000068637261;
        break;
      default:
        break;
    }

    static EntityResolutionConfig.fromResource(configName:)();
    memcpy(v23, __src, 0x8DuLL);
    if (sub_1ABBAA37C(v23) == 1)
    {

      if (qword_1ED871B18 == -1)
      {
LABEL_22:
        v16 = sub_1ABF237F4();
        sub_1ABA7AA24(v16, qword_1ED871B20);
        v17 = sub_1ABF237D4();
        v18 = sub_1ABF24664();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_1ABA78000, v17, v18, "Failed to load config from resources. Using the dynamically built config instead.", v19, 2u);
          sub_1ABA7BC34();
        }

LABEL_25:
        sub_1ABA7BC1C();
        return;
      }

LABEL_28:
      sub_1ABA7BE6C();
      goto LABEL_22;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v21 = v0;
    v5 = sub_1ABA94FC8(v3, v2);
    if (__OFADD__(v0[2], (v6 & 1) == 0))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v7 = v5;
    v8 = v6;
    sub_1ABAD219C(&qword_1EB4D3FD8, &unk_1ABF41B18);
    if ((sub_1ABF24C64() & 1) == 0)
    {
      goto LABEL_15;
    }

    v9 = sub_1ABA94FC8(v3, v2);
    if ((v8 & 1) != (v10 & 1))
    {
      break;
    }

    v7 = v9;
LABEL_15:
    if (v8)
    {
      v0 = v21;
      v11 = (v21[7] + 144 * v7);
      memcpy(__dst, v11, 0x8DuLL);
      memcpy(v11, __src, 0x8DuLL);
      sub_1ABBA954C(__dst);
    }

    else
    {
      v0 = v21;
      v21[(v7 >> 6) + 8] |= 1 << v7;
      v12 = (v0[6] + 16 * v7);
      *v12 = v3;
      v12[1] = v2;
      memcpy((v0[7] + 144 * v7), __src, 0x8DuLL);
      v13 = v0[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_27;
      }

      v0[2] = v15;
    }

    if (i == 6)
    {
      goto LABEL_25;
    }
  }

  sub_1ABF25104();
  __break(1u);
}

void *sub_1ABBA6540()
{
  v1 = v0[8];

  v2 = v0[15];

  v3 = v0[17];

  return v0;
}

uint64_t sub_1ABBA6570()
{
  sub_1ABBA6540();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABBA65A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001ABF89490 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001CLL && 0x80000001ABF894B0 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001ABF894D0 == a2;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000018 && 0x80000001ABF894F0 == a2;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x72656B6E61726572 && a2 == 0xEE006769666E6F43;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6143656C62616E65 && a2 == 0xEB00000000656863)
          {

            return 5;
          }

          else
          {
            v11 = sub_1ABF25054();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1ABBA67A4(char a1)
{
  result = 0x72656B6E61726572;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001CLL;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      return result;
    case 5:
      result = 0x6143656C62616E65;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1ABBA68A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBA65A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBA68D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABBA679C();
  *a1 = result;
  return result;
}

uint64_t sub_1ABBA68F8(uint64_t a1)
{
  v2 = sub_1ABBA9220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBA6934(uint64_t a1)
{
  v2 = sub_1ABBA9220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EntityResolutionConfig.encode(to:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D3EF8, &qword_1ABF41450);
  sub_1ABA7BB64(v5);
  v33 = v6;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7ED98();
  v10 = *v0;
  v34[0] = *(v0 + 8);
  v11 = v0[2];
  v32 = *(v0 + 24);
  v31 = v0[4];
  v30 = *(v0 + 40);
  v12 = v0[6];
  v29 = v0[7];
  v28 = *(v0 + 64);
  v27 = v0[9];
  v26 = *(v0 + 80);
  v25 = v0[11];
  v24 = *(v0 + 96);
  v23 = v0[13];
  v22 = *(v0 + 112);
  v21 = v0[15];
  v17 = v0[16];
  v20 = *(v0 + 136);
  v19 = *(v0 + 137);
  v18 = *(v0 + 138);
  v16 = *(v0 + 139);
  v15 = *(v0 + 140);
  v13 = v4[4];
  sub_1ABA93E20(v4, v4[3]);
  sub_1ABBA9220();

  sub_1ABA8E0D4();
  sub_1ABF252E4();
  sub_1ABBA9274();
  sub_1ABA933C0();
  sub_1ABF24F84();
  if (v1)
  {

    (*(v33 + 8))(v2, v5);
  }

  else
  {

    sub_1ABA933C0();
    sub_1ABA948C8();
    sub_1ABF24F84();
    sub_1ABBA92C8();
    sub_1ABA933C0();
    sub_1ABA948C8();
    sub_1ABF24F84();
    v14 = sub_1ABBA931C();

    sub_1ABA933C0();
    sub_1ABA948C8();
    sub_1ABF24F84();

    if (!v14)
    {
      sub_1ABBA9370();
      sub_1ABA933C0();
      sub_1ABA948C8();
      sub_1ABF24F84();
      sub_1ABA948C8();
      sub_1ABF24F44();
    }

    (*(v33 + 8))(v2, v5);
  }

  sub_1ABA7BC90();
}

void EntityResolutionConfig.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D3F20, &qword_1ABF41458);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  v34 = v2;
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABBA9220();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    v33 = v4;
    sub_1ABBA93C4();
    sub_1ABA8FF84();
    sub_1ABF24E64();
    v30 = v36;
    v31 = v42;
    v64 = v37;
    v63 = v39;
    v62 = v41;
    sub_1ABA7F07C();
    sub_1ABA8FF84();
    sub_1ABF24E64();
    v28 = v40;
    v29 = v38;
    v27 = v36;
    v32 = v42;
    v61 = v37;
    v60 = v39;
    v59 = v41;
    sub_1ABBA9418();
    sub_1ABA7F07C();
    sub_1ABA8FF84();
    sub_1ABF24E64();
    v25 = v40;
    v26 = v36;
    sub_1ABBA946C();
    sub_1ABA7F07C();
    sub_1ABA8FF84();
    sub_1ABF24E64();
    v24 = v38;
    v10 = v36;
    v23 = v37;
    v11 = BYTE1(v38);
    v58 = v38;
    LOBYTE(v35[0]) = 4;
    sub_1ABBA94C0();
    sub_1ABA7F07C();
    sub_1ABA8FF84();
    sub_1ABF24E64();
    v22 = BYTE2(v38);
    v12 = v36;
    sub_1ABA8FF84();
    v13 = sub_1ABF24E24();
    v14 = sub_1ABA83818();
    v15(v14);
    v35[0] = v30;
    LOBYTE(v35[1]) = v64;
    v35[2] = v29;
    v21 = v63;
    LOBYTE(v35[3]) = v63;
    v35[4] = v28;
    LOBYTE(v35[5]) = v62;
    v35[6] = v31;
    v35[7] = v27;
    v19 = v61;
    v20 = v62;
    LOBYTE(v35[8]) = v61;
    v35[9] = v24;
    v18 = v60;
    LOBYTE(v35[10]) = v60;
    v35[11] = v25;
    v16 = v59;
    LOBYTE(v35[12]) = v59;
    v35[13] = v32;
    LOBYTE(v35[14]) = v26;
    v35[15] = v10;
    v35[16] = v23;
    v17 = v58;
    LOBYTE(v35[17]) = v58;
    BYTE1(v35[17]) = v11;
    BYTE2(v35[17]) = v22;
    BYTE3(v35[17]) = v12;
    BYTE4(v35[17]) = v13 & 1;
    memcpy(v33, v35, 0x8DuLL);
    sub_1ABBA9514(v35, &v36);
    sub_1ABA84B54(v34);
    v36 = v30;
    LOBYTE(v37) = v64;
    v38 = v29;
    v39 = v21;
    v40 = v28;
    v41 = v20;
    v42 = v31;
    v43 = v27;
    v44 = v19;
    v45 = v24;
    v46 = v18;
    v47 = v25;
    v48 = v16;
    v49 = v32;
    v50 = v26;
    v51 = v10;
    v52 = v23;
    v53 = v17;
    v54 = v11;
    v55 = v22;
    v56 = v12;
    v57 = v13 & 1;
    sub_1ABBA954C(&v36);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABBA71F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797265755178616DLL && a2 == 0xEC000000657A6953;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001ABF89550 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001ABF89570 == a2;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1701080941 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

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

unint64_t sub_1ABBA7358(char a1)
{
  result = 0x797265755178616DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 1701080941;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBA73E8(void *a1)
{
  v3 = v1;
  v5 = sub_1ABAD219C(&qword_1EB4D3F48, &qword_1ABF41AC8);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22[-v11];
  v13 = a1[3];
  v14 = a1[4];
  sub_1ABA8A074(a1);
  sub_1ABBA9C80();
  sub_1ABA892E8();
  sub_1ABF252E4();
  v15 = *v3;
  v16 = *(v3 + 8);
  v26 = 0;
  sub_1ABA84030(v15, v16, &v26);
  if (!v2)
  {
    v17 = *(v3 + 16);
    v18 = *(v3 + 24);
    v25 = 1;
    sub_1ABA84030(v17, v18, &v25);
    v19 = *(v3 + 32);
    v20 = *(v3 + 40);
    v24 = 2;
    sub_1ABA84030(v19, v20, &v24);
    v23 = *(v3 + 48);
    v22[15] = 3;
    sub_1ABAD219C(&qword_1EB4D3F50, &qword_1ABF41AD0);
    sub_1ABBA9CD4();
    sub_1ABF24F84();
  }

  return (*(v7 + 8))(v12, v5);
}

void sub_1ABBA7594()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D3FB0, &qword_1ABF41AF8);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABBA9C80();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    sub_1ABA9A364();
    v10 = sub_1ABF24DE4();
    v12 = v11;
    sub_1ABA9A364();
    v13 = sub_1ABF24DE4();
    v23 = v14;
    v21 = v13;
    sub_1ABA9A364();
    v15 = sub_1ABF24DE4();
    v19 = v16;
    v20 = v15;
    sub_1ABAD219C(&qword_1EB4D3F50, &qword_1ABF41AD0);
    sub_1ABBAA07C();
    sub_1ABAA4930();
    sub_1ABF24E64();
    v17 = sub_1ABA7BFF0();
    v18(v17);
    sub_1ABA84B54(v2);
    *v4 = v10;
    *(v4 + 8) = v12 & 1;
    *(v4 + 16) = v21;
    *(v4 + 24) = v23 & 1;
    *(v4 + 32) = v20;
    *(v4 + 40) = v19 & 1;
    *(v4 + 48) = v22;
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABBA77D0(void *a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D3F68, &qword_1ABF41AD8);
  sub_1ABA7BB64(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7ED98();
  v6 = a1[3];
  v7 = a1[4];
  sub_1ABA8A074(a1);
  sub_1ABBA9DAC();
  sub_1ABA8E0D4();
  sub_1ABA892E8();
  sub_1ABF252E4();
  sub_1ABBA9E00();
  sub_1ABAA44A0();
  v8 = sub_1ABA8E7D0();
  return v9(v8);
}

uint64_t sub_1ABBA78D8(uint64_t *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D3FB8, &qword_1ABF41B00);
  sub_1ABA7BB64(v4);
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7ED98();
  v8 = a1[3];
  v9 = a1[4];
  sub_1ABA8A074(a1);
  sub_1ABBA9DAC();
  sub_1ABA8E0D4();
  sub_1ABA892E8();
  sub_1ABF252C4();
  if (v2)
  {
    sub_1ABA84B54(a1);
  }

  else
  {
    sub_1ABBAA154();
    sub_1ABA948C8();
    sub_1ABF24E64();
    v10 = sub_1ABA8E7D0();
    v11(v10);
    v1 = v13;
    sub_1ABA84B54(a1);
  }

  return v1;
}

uint64_t sub_1ABBA7A14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x687469726F676C61 && a2 == 0xEA0000000000736DLL;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F4D686372616573 && a2 == 0xEA00000000006564;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001ABF87D00 == a2;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000014 && 0x80000001ABF87D20 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

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

unint64_t sub_1ABBA7B7C(char a1)
{
  result = 0x687469726F676C61;
  switch(a1)
  {
    case 1:
      result = 0x6F4D686372616573;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1ABBA7C18()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D3F78, &qword_1ABF41AE0);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v15 - v10;
  v12 = *v0;
  v16 = v0[1];
  v19 = *(v0 + 16);
  v13 = *(v0 + 17);
  v15[0] = *(v0 + 18);
  v15[1] = v13;
  v14 = v3[4];
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABBA9E54();

  sub_1ABF252E4();
  v17 = v12;
  sub_1ABAD219C(&qword_1EB4D3F80, &qword_1ABF41AE8);
  sub_1ABBA9EA8();
  sub_1ABF24F84();

  if (!v1)
  {
    v17 = v16;
    v18 = v19;
    sub_1ABBA9F80();
    sub_1ABA8BF5C();
    sub_1ABF24F84();
    LOBYTE(v17) = 2;
    sub_1ABA8BF5C();
    sub_1ABF24F44();
    LOBYTE(v17) = 3;
    sub_1ABA8BF5C();
    sub_1ABF24F44();
  }

  (*(v6 + 8))(v11, v4);
  sub_1ABA7BC90();
}

void sub_1ABBA7E14()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D3FC0, &qword_1ABF41B08);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABBA9E54();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D3F80, &qword_1ABF41AE8);
    sub_1ABBAA1A8();
    sub_1ABAA4930();
    sub_1ABF24E64();
    sub_1ABBAA280();
    sub_1ABF24E64();
    sub_1ABA9A364();
    v13 = sub_1ABF24E24();
    sub_1ABA9A364();
    v10 = sub_1ABF24E24();
    v11 = sub_1ABA7BFF0();
    v12(v11);
    *v4 = v14;
    *(v4 + 8) = v14;
    *(v4 + 16) = v15;
    *(v4 + 17) = v13 & 1;
    *(v4 + 18) = v10 & 1;

    sub_1ABA84B54(v2);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABBA8060(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x687469726F676C61 && a2 == 0xE90000000000006DLL)
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

uint64_t sub_1ABBA80E0(void *a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D3FA0, &qword_1ABF41AF0);
  sub_1ABA7BB64(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7ED98();
  v6 = a1[3];
  v7 = a1[4];
  sub_1ABA8A074(a1);
  sub_1ABBA9FD4();
  sub_1ABA8E0D4();
  sub_1ABA892E8();
  sub_1ABF252E4();
  sub_1ABBAA028();
  sub_1ABAA44A0();
  v8 = sub_1ABA8E7D0();
  return v9(v8);
}

uint64_t sub_1ABBA81E8(uint64_t *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D3FC8, &qword_1ABF41B10);
  sub_1ABA7BB64(v4);
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7ED98();
  v8 = a1[3];
  v9 = a1[4];
  sub_1ABA8A074(a1);
  sub_1ABBA9FD4();
  sub_1ABA8E0D4();
  sub_1ABA892E8();
  sub_1ABF252C4();
  if (v2)
  {
    sub_1ABA84B54(a1);
  }

  else
  {
    sub_1ABBAA2D4();
    sub_1ABA948C8();
    sub_1ABF24E64();
    v10 = sub_1ABA8E7D0();
    v11(v10);
    v1 = v13;
    sub_1ABA84B54(a1);
  }

  return v1;
}

uint64_t sub_1ABBA835C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBA71F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBA8384(uint64_t a1)
{
  v2 = sub_1ABBA9C80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBA83C0(uint64_t a1)
{
  v2 = sub_1ABBA9C80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1ABBA83FC@<D0>(uint64_t a1@<X8>)
{
  sub_1ABBA7594();
  if (!v1)
  {
    *a1 = v4;
    *(a1 + 16) = v5;
    result = *&v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t sub_1ABBA8468(uint64_t a1)
{
  v2 = sub_1ABBA9DAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBA84A4(uint64_t a1)
{
  v2 = sub_1ABBA9DAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBA84E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABBA78D8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ABBA8528(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABBA857C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBA7A14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBA85A4(uint64_t a1)
{
  v2 = sub_1ABBA9E54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBA85E0(uint64_t a1)
{
  v2 = sub_1ABBA9E54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBA864C(uint64_t a1)
{
  v2 = sub_1ABBA9FD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBA8688(uint64_t a1)
{
  v2 = sub_1ABBA9FD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBA86C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABBA81E8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ABBA870C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a2 + 48);
  sub_1ABB49734();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  v8 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  result = *(a2 + 40);
  if ((*(a1 + 40) & 1) == 0)
  {
    return (*(a1 + 32) == *(a2 + 32)) & ~result;
  }

  return result;
}

uint64_t sub_1ABBA87C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);

  v8 = sub_1ABE8AF1C(v2);
  v9 = sub_1ABE8AF1C(v5);
  v10 = sub_1ABBA8880(v9, v8);

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  if ((v4 & 1) == 0)
  {
    if ((v7 & 1) == 0)
    {
      return *&v3 == *&v6;
    }

    return 0;
  }

  if (v3 == v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABBA8880(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v6 = ~(-1 << v4);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  if (v9 < 64)
  {
    v5 = ~(-1 << v9);
  }

  v10 = v5 & *(a1 + 56);
  v11 = (v4 + 63) >> 6;
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  v15 = 0;
  v29 = v2;
  while (v7)
  {
    v16 = v14;
LABEL_13:
    v17 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v18 = *(*(a2 + 48) + (v17 | (v16 << 6)));
    if (!v10)
    {
      goto LABEL_14;
    }

LABEL_19:
    v20 = *(*(v2 + 48) + (__clz(__rbit64(v10)) | (v15 << 6)));
    v21 = v20 > 0xF7;
    if (v18 > 0xF7)
    {
LABEL_61:

      return v21;
    }

    if (v20 > 0xF7)
    {
      goto LABEL_62;
    }

    v10 &= v10 - 1;
    if (!(v18 >> 6))
    {
      if (v20 >= 0x40)
      {
        goto LABEL_62;
      }

      v23 = 0xE800000000000000;
      v24 = 0x6E656B6F54796E61;
      v25 = 0x6E656B6F54796E61;
      switch(v18)
      {
        case 1u:
          v23 = 0xE600000000000000;
          v25 = 0x786966657270;
          break;
        case 2u:
          v23 = 0xE900000000000073;
          v25 = 0x6E656B6F546C6C61;
          break;
        case 3u:
          v25 = 0x69666572506C6C61;
          v23 = 0xEB00000000736578;
          break;
        case 4u:
          v23 = 0xE600000000000000;
          v25 = 0x657361726870;
          break;
        case 5u:
          v25 = 0x6850786966657270;
          v23 = 0xEC00000065736172;
          break;
        default:
          break;
      }

      v26 = 0xE800000000000000;
      switch(v20)
      {
        case 1u:
LABEL_47:
          v26 = 0xE600000000000000;
          v24 = 0x786966657270;
          break;
        case 2u:
LABEL_49:
          v26 = 0xE900000000000073;
          v24 = 0x6E656B6F546C6C61;
          break;
        case 3u:
LABEL_50:
          v24 = 0x69666572506C6C61;
          v26 = 0xEB00000000736578;
          break;
        case 4u:
LABEL_48:
          v26 = 0xE600000000000000;
          v24 = 0x657361726870;
          break;
        case 5u:
LABEL_51:
          v24 = 0x6850786966657270;
          v26 = 0xEC00000065736172;
          break;
        default:
          goto LABEL_52;
      }

      goto LABEL_52;
    }

    if (v18 >> 6 == 1)
    {
      if ((v20 & 0xC0) != 0x40)
      {
        goto LABEL_62;
      }

      v22 = v20 & 0x3F;
      v23 = 0xE800000000000000;
      v24 = 0x6E656B6F54796E61;
      v25 = 0x6E656B6F54796E61;
      switch(v18)
      {
        case 1u:
          v23 = 0xE600000000000000;
          v25 = 0x786966657270;
          break;
        case 2u:
          v23 = 0xE900000000000073;
          v25 = 0x6E656B6F546C6C61;
          break;
        case 3u:
          v25 = 0x69666572506C6C61;
          v23 = 0xEB00000000736578;
          break;
        case 4u:
          v23 = 0xE600000000000000;
          v25 = 0x657361726870;
          break;
        case 5u:
          v25 = 0x6850786966657270;
          v23 = 0xEC00000065736172;
          break;
        default:
          break;
      }

      v26 = 0xE800000000000000;
      switch(v22)
      {
        case 1:
          goto LABEL_47;
        case 2:
          goto LABEL_49;
        case 3:
          goto LABEL_50;
        case 4:
          goto LABEL_48;
        case 5:
          goto LABEL_51;
        default:
          break;
      }

LABEL_52:
      if (v25 == v24 && v23 == v26)
      {

        v2 = v29;
      }

      else
      {
        v28 = sub_1ABF25054();

        v2 = v29;
        if ((v28 & 1) == 0)
        {
LABEL_62:

          return 0;
        }
      }
    }

    else if (v18 == 128)
    {
      if (v20 != 128)
      {
        goto LABEL_62;
      }
    }

    else if (v18 == 129)
    {
      if (v20 != 129)
      {
        goto LABEL_62;
      }
    }

    else if (v20 != 130)
    {
      goto LABEL_62;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_65;
    }

    if (v16 >= v11)
    {
      break;
    }

    v7 = *(v3 + 8 * v16);
    ++v14;
    if (v7)
    {
      v14 = v16;
      goto LABEL_13;
    }
  }

  v7 = 0;
  v18 = 248;
  if (v10)
  {
    goto LABEL_19;
  }

LABEL_14:
  while (1)
  {
    v19 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v19 >= v12)
    {
      if (v18 <= 0xF7)
      {
        goto LABEL_62;
      }

      v21 = 1;
      goto LABEL_61;
    }

    v10 = *(v8 + 8 * v19);
    ++v15;
    if (v10)
    {
      v15 = v19;
      goto LABEL_19;
    }
  }

LABEL_65:
  __break(1u);
  return result;
}

void sub_1ABBA8D30()
{
  sub_1ABA7E2A8();
  v0 = 0;
  v2 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = v1 + 32;
  for (i = (v3 + 40); ; i += 2)
  {
    if (v0 == v2)
    {
      if (!v4)
      {
        goto LABEL_24;
      }

      v7 = 0;
      v8 = 0;
      v0 = v2;
      goto LABEL_9;
    }

    if (v0 >= v2)
    {
      break;
    }

    if (__OFADD__(v0, 1))
    {
      goto LABEL_26;
    }

    v9 = (v5 + 16 * v0);
    v8 = *v9;
    v7 = v9[1];

    if (!v4)
    {
      if (v7)
      {
LABEL_23:
      }

LABEL_24:
      sub_1ABA7BC1C();
      return;
    }

    ++v0;
LABEL_9:
    v11 = *(i - 1);
    v10 = *i;

    if (!v7)
    {
      if (v10)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    }

    if (!v10)
    {
      goto LABEL_23;
    }

    if (v8 == v11 && v7 == v10)
    {
    }

    else
    {
      v13 = sub_1ABF25054();

      if ((v13 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    --v4;
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1ABBA8E60(unsigned __int8 a1, char a2)
{
  v2 = 0x7974706D65;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7974706D65;
  switch(v4)
  {
    case 1:
      v5 = 0x636E6176656C6572;
      v3 = 0xE900000000000065;
      break;
    case 2:
      v5 = 0x75747865746E6F63;
      v3 = 0xEF6C65646F4D6C61;
      break;
    case 3:
      v5 = 0xD000000000000011;
      v3 = 0x80000001ABF7F110;
      break;
    case 4:
      v5 = 0x6553726F74636576;
      v3 = 0xEC00000068637261;
      break;
    case 5:
      v3 = 0x80000001ABF7F130;
      v5 = 0xD000000000000015;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x636E6176656C6572;
      v6 = 0xE900000000000065;
      break;
    case 2:
      v2 = 0x75747865746E6F63;
      v6 = 0xEF6C65646F4D6C61;
      break;
    case 3:
      v2 = 0xD000000000000011;
      v6 = 0x80000001ABF7F110;
      break;
    case 4:
      v2 = 0x6553726F74636576;
      v6 = 0xEC00000068637261;
      break;
    case 5:
      v6 = 0x80000001ABF7F130;
      v2 = 0xD000000000000015;
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
    v8 = sub_1ABF25054();
  }

  return v8 & 1;
}

void static EntityResolutionConfig.== infix(_:_:)()
{
  sub_1ABA7E2A8();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = *(v0 + 139);
  v7 = *(v6 + 112);
  v8 = *(v6 + 120);
  v9 = *(v6 + 128);
  v10 = *(v6 + 136);
  v11 = *(v6 + 139);
  if ((sub_1ABBA870C(v0, v6) & 1) == 0)
  {
    goto LABEL_17;
  }

  if ((sub_1ABACF934() & 1) == 0)
  {
    goto LABEL_17;
  }

  v12 = sub_1ABE8AF1C(v2);
  v13 = sub_1ABE8AF1C(v8);
  v14 = sub_1ABBA8880(v13, v12);

  if ((v14 & 1) == 0)
  {
    goto LABEL_17;
  }

  if ((v4 & 1) == 0)
  {
    if ((v10 & 1) != 0 || *&v3 != *&v9)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (v3 == v9)
  {
    v15 = v10;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
LABEL_12:
    v16 = sub_1ABB9B0FC(v5);
    v18 = v17;
    if (v16 != sub_1ABB9B0FC(v11) || v18 != v19)
    {
      sub_1ABF25054();
    }
  }

LABEL_17:
  sub_1ABA7BC1C();
}

id sub_1ABBA918C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1ABF23BD4();
  v9 = [a5 URLForResource:v8 withExtension:a3 subdirectory:a4];

  return v9;
}

uint64_t sub_1ABBA91FC(uint64_t a1)
{
  v1 = *(a1 + 48);
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

unint64_t sub_1ABBA9220()
{
  result = qword_1ED871678;
  if (!qword_1ED871678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871678);
  }

  return result;
}

unint64_t sub_1ABBA9274()
{
  result = qword_1EB4D3F00;
  if (!qword_1EB4D3F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3F00);
  }

  return result;
}

unint64_t sub_1ABBA92C8()
{
  result = qword_1EB4D3F08;
  if (!qword_1EB4D3F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3F08);
  }

  return result;
}

unint64_t sub_1ABBA931C()
{
  result = qword_1EB4D3F10;
  if (!qword_1EB4D3F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3F10);
  }

  return result;
}

unint64_t sub_1ABBA9370()
{
  result = qword_1EB4D3F18;
  if (!qword_1EB4D3F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3F18);
  }

  return result;
}

unint64_t sub_1ABBA93C4()
{
  result = qword_1ED871680;
  if (!qword_1ED871680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871680);
  }

  return result;
}

unint64_t sub_1ABBA9418()
{
  result = qword_1ED871638;
  if (!qword_1ED871638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871638);
  }

  return result;
}

unint64_t sub_1ABBA946C()
{
  result = qword_1ED871618;
  if (!qword_1ED871618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871618);
  }

  return result;
}

unint64_t sub_1ABBA94C0()
{
  result = qword_1ED871758;
  if (!qword_1ED871758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871758);
  }

  return result;
}

unint64_t sub_1ABBA9580()
{
  result = qword_1EB4D3F28;
  if (!qword_1EB4D3F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3F28);
  }

  return result;
}

unint64_t sub_1ABBA95D8()
{
  result = qword_1EB4D3F30;
  if (!qword_1EB4D3F30)
  {
    sub_1ABAE2850(&qword_1EB4D3F38, &qword_1ABF41500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3F30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EntityResolutionMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EntityResolutionMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1ABBA97A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 141))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_1ABBA97E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 140) = 0;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 141) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 141) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1ABBA9888(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_1ABBA989C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 19))
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

uint64_t sub_1ABBA98DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1ABBA992C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1ABBA9A04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_1ABBA9A44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1ABBA9A9C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABBA9B7C()
{
  result = qword_1EB4D3F40;
  if (!qword_1EB4D3F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3F40);
  }

  return result;
}

unint64_t sub_1ABBA9BD4()
{
  result = qword_1ED871668;
  if (!qword_1ED871668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871668);
  }

  return result;
}

unint64_t sub_1ABBA9C2C()
{
  result = qword_1ED871670;
  if (!qword_1ED871670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871670);
  }

  return result;
}

unint64_t sub_1ABBA9C80()
{
  result = qword_1ED871698;
  if (!qword_1ED871698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871698);
  }

  return result;
}

unint64_t sub_1ABBA9CD4()
{
  result = qword_1EB4D3F58;
  if (!qword_1EB4D3F58)
  {
    sub_1ABAE2850(&qword_1EB4D3F50, &qword_1ABF41AD0);
    sub_1ABBA9D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3F58);
  }

  return result;
}

unint64_t sub_1ABBA9D58()
{
  result = qword_1EB4D3F60;
  if (!qword_1EB4D3F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3F60);
  }

  return result;
}

unint64_t sub_1ABBA9DAC()
{
  result = qword_1ED871650;
  if (!qword_1ED871650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871650);
  }

  return result;
}

unint64_t sub_1ABBA9E00()
{
  result = qword_1EB4D3F70;
  if (!qword_1EB4D3F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3F70);
  }

  return result;
}

unint64_t sub_1ABBA9E54()
{
  result = qword_1ED871630;
  if (!qword_1ED871630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871630);
  }

  return result;
}

unint64_t sub_1ABBA9EA8()
{
  result = qword_1EB4D3F88;
  if (!qword_1EB4D3F88)
  {
    sub_1ABAE2850(&qword_1EB4D3F80, &qword_1ABF41AE8);
    sub_1ABBA9F2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3F88);
  }

  return result;
}

unint64_t sub_1ABBA9F2C()
{
  result = qword_1EB4D3F90;
  if (!qword_1EB4D3F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3F90);
  }

  return result;
}

unint64_t sub_1ABBA9F80()
{
  result = qword_1EB4D3F98;
  if (!qword_1EB4D3F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3F98);
  }

  return result;
}

unint64_t sub_1ABBA9FD4()
{
  result = qword_1ED871770;
  if (!qword_1ED871770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871770);
  }

  return result;
}

unint64_t sub_1ABBAA028()
{
  result = qword_1EB4D3FA8;
  if (!qword_1EB4D3FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3FA8);
  }

  return result;
}

unint64_t sub_1ABBAA07C()
{
  result = qword_1ED8713D8;
  if (!qword_1ED8713D8)
  {
    sub_1ABAE2850(&qword_1EB4D3F50, &qword_1ABF41AD0);
    sub_1ABBAA100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8713D8);
  }

  return result;
}

unint64_t sub_1ABBAA100()
{
  result = qword_1ED8716D8;
  if (!qword_1ED8716D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8716D8);
  }

  return result;
}

unint64_t sub_1ABBAA154()
{
  result = qword_1ED871608;
  if (!qword_1ED871608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871608);
  }

  return result;
}

unint64_t sub_1ABBAA1A8()
{
  result = qword_1ED8713D0;
  if (!qword_1ED8713D0)
  {
    sub_1ABAE2850(&qword_1EB4D3F80, &qword_1ABF41AE8);
    sub_1ABBAA22C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8713D0);
  }

  return result;
}

unint64_t sub_1ABBAA22C()
{
  result = qword_1ED871548;
  if (!qword_1ED871548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871548);
  }

  return result;
}

unint64_t sub_1ABBAA280()
{
  result = qword_1ED8717F8;
  if (!qword_1ED8717F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8717F8);
  }

  return result;
}

unint64_t sub_1ABBAA2D4()
{
  result = qword_1ED8716C8;
  if (!qword_1ED8716C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8716C8);
  }

  return result;
}

unint64_t sub_1ABBAA328()
{
  result = qword_1EB4D3FD0;
  if (!qword_1EB4D3FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3FD0);
  }

  return result;
}

uint64_t sub_1ABBAA37C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1ABBAA394()
{
  result = qword_1EB4D3FE0;
  if (!qword_1EB4D3FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3FE0);
  }

  return result;
}

unint64_t sub_1ABBAA3E8()
{
  result = qword_1EB4D3FF0;
  if (!qword_1EB4D3FF0)
  {
    sub_1ABAE2850(&qword_1EB4D3FE8, &qword_1ABF41B28);
    sub_1ABBAA46C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3FF0);
  }

  return result;
}

unint64_t sub_1ABBAA46C()
{
  result = qword_1EB4D3FF8;
  if (!qword_1EB4D3FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3FF8);
  }

  return result;
}

double sub_1ABBAA4C0(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 133) = 0;
  return result;
}

unint64_t sub_1ABBAA4F0()
{
  result = qword_1ED871658;
  if (!qword_1ED871658)
  {
    sub_1ABAE2850(&qword_1EB4D4000, &qword_1ABF41B30);
    sub_1ABBAA574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871658);
  }

  return result;
}

unint64_t sub_1ABBAA574()
{
  result = qword_1ED871660;
  if (!qword_1ED871660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871660);
  }

  return result;
}

_BYTE *sub_1ABBAA5E8(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1ABBAA694(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABBAA774()
{
  result = qword_1EB4D4008;
  if (!qword_1EB4D4008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4008);
  }

  return result;
}

unint64_t sub_1ABBAA7CC()
{
  result = qword_1EB4D4010;
  if (!qword_1EB4D4010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4010);
  }

  return result;
}

unint64_t sub_1ABBAA824()
{
  result = qword_1EB4D4018;
  if (!qword_1EB4D4018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4018);
  }

  return result;
}

unint64_t sub_1ABBAA87C()
{
  result = qword_1EB4D4020;
  if (!qword_1EB4D4020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4020);
  }

  return result;
}

unint64_t sub_1ABBAA8D4()
{
  result = qword_1ED871760;
  if (!qword_1ED871760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871760);
  }

  return result;
}

unint64_t sub_1ABBAA92C()
{
  result = qword_1ED871768;
  if (!qword_1ED871768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871768);
  }

  return result;
}

unint64_t sub_1ABBAA984()
{
  result = qword_1ED871620;
  if (!qword_1ED871620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871620);
  }

  return result;
}

unint64_t sub_1ABBAA9DC()
{
  result = qword_1ED871628;
  if (!qword_1ED871628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871628);
  }

  return result;
}

unint64_t sub_1ABBAAA34()
{
  result = qword_1ED871640;
  if (!qword_1ED871640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871640);
  }

  return result;
}

unint64_t sub_1ABBAAA8C()
{
  result = qword_1ED871648;
  if (!qword_1ED871648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871648);
  }

  return result;
}

unint64_t sub_1ABBAAAE4()
{
  result = qword_1ED871688;
  if (!qword_1ED871688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871688);
  }

  return result;
}

unint64_t sub_1ABBAAB3C()
{
  result = qword_1ED871690;
  if (!qword_1ED871690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871690);
  }

  return result;
}

uint64_t sub_1ABBAABA8()
{
  swift_weakInit();
  swift_weakAssign();

  return v0;
}

uint64_t sub_1ABBAABEC()
{
  swift_weakDestroy();
  sub_1ABA7D028();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABBAAC20()
{
  v26[5] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  v3 = v2 & 0x3F;
  v4 = ((1 << v2) + 63) >> 6;
  v5 = (8 * v4);

  if (v3 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26[0] = v26;
    MEMORY[0x1EEE9AC00](v6);
    v5 = (v26 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1ABB18078(0, v4, v5);
    v7 = 0;
    v8 = 0;
    v9 = 1 << *(v1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v1 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v1 + 56) + 8 * v16);
      if (swift_weakLoadStrong())
      {

        *(v5 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        if (__OFADD__(v7++, 1))
        {
          __break(1u);
LABEL_16:
          sub_1ABD21AFC(v5, v4, v7, v1);
          v20 = v19;
          goto LABEL_17;
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_16;
      }

      v15 = *(v1 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  sub_1ABBAB8B0(v24, v4, v1);
  v20 = v25;
  MEMORY[0x1AC5AB8B0](v24, -1, -1);
LABEL_17:

  v21 = *(v0 + 16);
  *(v0 + 16) = v20;

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ABBAAE6C()
{
  type metadata accessor for EntityResolutionCAEventLoggerProvider();
  sub_1ABA7D028();
  swift_allocObject();
  result = sub_1ABBAAEA4();
  qword_1ED87C428 = result;
  return result;
}

uint64_t sub_1ABBAAEA4()
{
  type metadata accessor for EntityResolutionCAEventLoggerProvider.GuardedData();
  v1 = swift_allocObject();
  type metadata accessor for EntityResolutionCAEventLoggerProvider.CachedLogger();
  *(v1 + 16) = sub_1ABF239C4();
  sub_1ABAD219C(&qword_1EB4D4028, &unk_1ABF42000);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t sub_1ABBAAF2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  swift_beginAccess();
  v8 = *(v7 + 16);
  if (!sub_1ABAE305C(a2, a3))
  {
    swift_endAccess();
LABEL_5:
    type metadata accessor for EntityResolutionCAEventLogger();
    sub_1ABA7D028();
    Strong = swift_allocObject();
    sub_1ABAFF390(0, &qword_1ED871D80, 0x1E69E58C0);
    *(Strong + 16) = sub_1ABF239C4();
    type metadata accessor for EntityResolutionCAEventLoggerProvider.CachedLogger();
    sub_1ABA7D028();
    swift_allocObject();

    sub_1ABBAABA8();
    sub_1ABA8F240();
    swift_beginAccess();
    v11 = *(v7 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v7 + 16);
    sub_1ABAFB598();
    *(v7 + 16) = v12;
    swift_endAccess();
    result = sub_1ABBAAC20();
    goto LABEL_6;
  }

  swift_endAccess();
  Strong = swift_weakLoadStrong();

  if (!Strong)
  {
    goto LABEL_5;
  }

LABEL_6:
  *a4 = Strong;
  return result;
}

uint64_t sub_1ABBAB094()
{
  v1 = *(v0 + 16);

  sub_1ABA7D028();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABBAB134(uint64_t a1)
{
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1ABA8F240();
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1ABA7F090();
  sub_1ABAFB6AC();
  *(v1 + 16) = v5;
  swift_endAccess();
  sub_1ABAFF390(0, &qword_1ED86B910, 0x1E696AEC0);

  sub_1ABBAB25C();
  sub_1ABA8F240();
  swift_beginAccess();
  v3 = *(v1 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1ABA7F090();
  sub_1ABAFB6AC();
  *(v1 + 16) = v5;
  return swift_endAccess();
}

id sub_1ABBAB25C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1ABF23BD4();

  v2 = [v0 initWithString_];

  return v2;
}

uint64_t sub_1ABBAB2D0(double a1)
{
  v2 = round((CFAbsoluteTimeGetCurrent() - a1) * 100000.0) / 100.0;
  v3 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v4 = v2;
  [v3 initWithFloat_];
  sub_1ABA8F240();
  swift_beginAccess();
  v5 = *(v1 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1ABA7F090();
  sub_1ABAFB6AC();
  *(v1 + 16) = v7;

  return swift_endAccess();
}

uint64_t sub_1ABBAB478(uint64_t a1)
{
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1ABA8F240();
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 16);
  sub_1ABAFB6AC();
  *(v1 + 16) = v4;
  return swift_endAccess();
}

void sub_1ABBAB520(char a1)
{
  v2 = v1;
  v3 = *v1;
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  swift_beginAccess();
  v4 = v1[2];
  swift_isUniquelyReferenced_nonNull_native();
  v6 = v1[2];
  sub_1ABAFB6AC();
  v1[2] = v6;
  swift_endAccess();
  v5 = objc_autoreleasePoolPush();
  sub_1ABBAB61C(v2);
  objc_autoreleasePoolPop(v5);
}

void sub_1ABBAB61C(uint64_t a1)
{
  type metadata accessor for Analytics();
  swift_beginAccess();
  v2 = *(a1 + 16);

  static Analytics.sendEventForProduction(eventName:prefix:eventPayload:)(0xD000000000000024, 0x80000001ABF896F0, 0, 0, v2);

  if (qword_1ED871B18 != -1)
  {
    swift_once();
  }

  v3 = sub_1ABF237F4();
  sub_1ABA7AA24(v3, qword_1ED871B20);

  v4 = sub_1ABF237D4();
  v5 = sub_1ABF24654();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315395;
    *(v6 + 4) = sub_1ABADD6D8(0xD000000000000024, 0x80000001ABF896F0, &v13);
    *(v6 + 12) = 2081;
    v8 = *(a1 + 16);
    sub_1ABAFF390(0, &qword_1ED871D80, 0x1E69E58C0);

    v9 = sub_1ABF23984();
    v11 = v10;

    v12 = sub_1ABADD6D8(v9, v11, &v13);

    *(v6 + 14) = v12;
    _os_log_impl(&dword_1ABA78000, v4, v5, "ECR sents CA event:%s, payload:%{private}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5AB8B0](v7, -1, -1);
    MEMORY[0x1AC5AB8B0](v6, -1, -1);
  }
}

uint64_t sub_1ABBAB858()
{
  v1 = *(v0 + 16);

  sub_1ABA7D028();

  return swift_deallocClassInstance();
}

void sub_1ABBAB8B0(char *a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v6 = 0;
    v7 = 0;
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
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_14:
      v15 = v12 | (v7 << 6);
      v16 = *(*(a3 + 56) + 8 * v15);
      if (swift_weakLoadStrong())
      {

        *&a1[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
LABEL_18:
          sub_1ABD21AFC(a1, a2, v6, a3);

          return;
        }
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_18;
      }

      v14 = *(a3 + 64 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABBABA08()
{
  type metadata accessor for EntityResolutionHandlerPool.EntityRerankerHandlerStore.GuardedData();
  v1 = swift_allocObject();
  type metadata accessor for EntityRerankerHandler();
  *(v1 + 16) = sub_1ABF239C4();
  sub_1ABAD219C(&qword_1EB4D4038, &qword_1ABF42098);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t sub_1ABBABA94()
{
  v1 = v0;
  v2 = *(v0 + 16);

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  swift_beginAccess();
  sub_1ABAD219C(&qword_1EB4D4030, &qword_1ABF42090);
  sub_1ABF23A04();
  swift_endAccess();
  os_unfair_lock_unlock((v2 + 24));

  v4 = *(v1 + 16);

  return v1;
}

uint64_t sub_1ABBABB38()
{
  sub_1ABBABA94();
  sub_1ABA7D544();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABBABB64()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 6);
  v2 = sub_1ABA8F250();
  sub_1ABBAC300(v2, v3);
  os_unfair_lock_unlock(v1 + 6);

  return v5;
}

uint64_t sub_1ABBABBCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  swift_beginAccess();
  v8 = *(v7 + 16);
  if (*(v8 + 16) && (v9 = sub_1ABA94FC8(a2, a3), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
    *a4 = v11;
  }

  else
  {
    result = swift_endAccess();
    *a4 = 0;
  }

  return result;
}

uint64_t sub_1ABBABC74()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 6);
  v2 = sub_1ABA8F250();
  sub_1ABBAC2E0(v2);
  os_unfair_lock_unlock(v1 + 6);
}

void sub_1ABBABCD4(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = *a1;
  swift_beginAccess();

  v6 = *(v5 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + 16);
  sub_1ABAFB7C0();
  *(v5 + 16) = v13;
  swift_endAccess();
  if (qword_1ED871B18 != -1)
  {
    swift_once();
  }

  v7 = sub_1ABF237F4();
  sub_1ABA7AA24(v7, qword_1ED871B20);

  v8 = sub_1ABF237D4();
  v9 = sub_1ABF24654();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1ABADD6D8(a2, a3, &v12);
    _os_log_impl(&dword_1ABA78000, v8, v9, "EntityResolutionHandlerPool: cached for %s", v10, 0xCu);
    sub_1ABA84B54(v11);
    MEMORY[0x1AC5AB8B0](v11, -1, -1);
    MEMORY[0x1AC5AB8B0](v10, -1, -1);
  }
}

uint64_t sub_1ABBABE88()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 6);
  v2 = sub_1ABA8F250();
  sub_1ABBAC2C4(v2);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1ABBABEE4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = sub_1ABA94FC8(a2, a3);
  if (v8)
  {
    v9 = v7;
    v10 = *(v5 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v5 + 16);
    v11 = v15[3];
    sub_1ABAD219C(&qword_1EB4D2020, &qword_1ABF35210);
    sub_1ABF24C64();
    v12 = *(v15[6] + 16 * v9 + 8);

    v13 = *(v15[7] + 8 * v9);
    type metadata accessor for EntityRerankerHandler();
    sub_1ABF24C84();
    *(v5 + 16) = v15;
  }

  return swift_endAccess();
}

uint64_t sub_1ABBABFF0(uint64_t a1)
{
  switch(*(a1 + 139))
  {
    case 2:

      return sub_1ABBAC138(0x746C7561666564, 0xE700000000000000);
    default:
      v1 = sub_1ABF25054();

      if (v1)
      {
        return sub_1ABBAC138(0x746C7561666564, 0xE700000000000000);
      }

      return result;
  }
}

uint64_t sub_1ABBAC138(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *(v2 + 16);

  v8 = sub_1ABBABB64();

  if (v8)
  {
  }

  type metadata accessor for EntityRerankerHandler();
  result = sub_1ABBA2B30(a1, a2);
  if (!v3)
  {
    v10 = *(v4 + 16);

    sub_1ABBABC74();
  }

  return result;
}

uint64_t sub_1ABBAC200()
{
  v1 = *(v0 + 16);

  sub_1ABBABE88();
}

uint64_t sub_1ABBAC31C@<X0>(void *a1@<X8>)
{
  v4 = sub_1ABF21F04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ABBACBBC();
  if (!v2)
  {
    v10 = result;
    sub_1ABBACED0();
    v102 = v5;
    v103 = v4;
    *&v112 = v11;
    v104 = a1;
    v99 = 0;
    v12 = [v1 mode];
    if (v12 >= 7)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    v108 = v13;
    sub_1ABBAD0D4(&v113);
    v14 = v113;
    v111 = v114;
    v15 = v116;
    v109 = v115;
    v16 = v117 | (v118 << 16);
    v110 = sub_1ABBAD1F8();
    if (qword_1ED871B18 != -1)
    {
      swift_once();
    }

    v100 = v8;
    v17 = sub_1ABF237F4();
    v107 = sub_1ABA7AA24(v17, qword_1ED871B20);

    v94 = v1;

    v18 = v109;
    sub_1ABA8F260();
    sub_1ABBAE7B0(v19, v20, v21, v22, v23);

    v105 = sub_1ABF237D4();
    v24 = sub_1ABF24654();

    v25 = v14;
    v26 = v94;
    v27 = v105;
    sub_1ABA8F260();
    sub_1ABB37314(v28, v29, v30, v31, v32);

    v33 = os_log_type_enabled(v27, v24);
    LODWORD(v107) = v16;
    v106 = v15;
    v101 = v10;
    if (v33)
    {
      LODWORD(v98) = v24;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v119 = v35;
      *v34 = 136316674;
      v36 = sub_1ABBAE7C4(v26, &selRef_text);
      if (v37)
      {
        v38 = v37;
      }

      else
      {
        v36 = 4271950;
        v38 = 0xE300000000000000;
      }

      sub_1ABADD6D8(v36, v38, &v119);
      sub_1ABA7C014();
      *(v34 + 4) = v18;
      *(v34 + 12) = 2080;
      if (v10)
      {
        v39 = MEMORY[0x1AC5A9750](v10, &type metadata for EntityClass);
      }

      else
      {
        v39 = 0;
        v40 = 0;
      }

      v113 = v39;
      v114 = v40;
      v43 = sub_1ABAD219C(&qword_1EB4D33A8, &unk_1ABF627B0);
      v44 = sub_1ABF23C74();
      v46 = sub_1ABADD6D8(v44, v45, &v119);

      *(v34 + 14) = v46;
      *(v34 + 22) = 2080;
      v47 = v112;
      if (v112)
      {
        v48 = sub_1ABAD219C(&qword_1EB4D4048, &qword_1ABF420A8);
        v49 = MEMORY[0x1AC5A9750](v47, v48);
      }

      else
      {
        v49 = 0;
        v50 = 0;
      }

      v113 = v49;
      v114 = v50;
      v51 = sub_1ABF23C74();
      sub_1ABADD6D8(v51, v52, &v119);
      sub_1ABA7C014();
      *(v34 + 24) = v43;
      *(v34 + 32) = 2080;
      v53 = 0xEA00000000007963;
      v54 = 0x6E6574614C776F6CLL;
      switch(v108)
      {
        case 1:
          v53 = 0xE800000000000000;
          v54 = 0x6465636E616C6162;
          break;
        case 2:
          v53 = 0xEB00000000797469;
          v54 = 0x6C61755168676968;
          break;
        case 3:
          v55 = 0x786966657270;
          goto LABEL_25;
        case 4:
          v53 = 0x80000001ABF7F180;
          v54 = 0xD000000000000014;
          break;
        case 5:
          v54 = 0xD000000000000010;
          v53 = 0x80000001ABF7F1A0;
          break;
        case 6:
          v55 = 0x646972627968;
LABEL_25:
          v54 = v55 & 0xFFFFFFFFFFFFLL | 0x6553000000000000;
          v53 = 0xEC00000068637261;
          break;
        default:
          break;
      }

      v56 = sub_1ABADD6D8(v54, v53, &v119);

      *(v34 + 34) = v56;
      *(v34 + 42) = 2080;
      if (BYTE2(v16) == 255)
      {
        v57 = 0xE300000000000000;
        v58 = 4271950;
      }

      else if (BYTE2(v16))
      {
        if (BYTE2(v16) == 2)
        {
          v57 = 0xE600000000000000;
          v58 = 0x746573627573;
        }

        else
        {
          if (BYTE2(v16) == 1)
          {
            v58 = 0x6564756C637865;
          }

          else
          {
            v58 = 0x7463657078656E75;
          }

          if (BYTE2(v16) == 1)
          {
            v57 = 0xE700000000000000;
          }

          else
          {
            v57 = 0xEA00000000006465;
          }
        }
      }

      else
      {
        v57 = 0xEC00000065746163;
        v58 = 0x6964657250736168;
      }

      v59 = sub_1ABADD6D8(v58, v57, &v119);

      *(v34 + 44) = v59;
      *(v34 + 52) = 2080;
      if (v110)
      {
        v60 = MEMORY[0x1AC5A9750](v110, &type metadata for EntitySourceID);
        v62 = v61;
      }

      else
      {
        v60 = 4271950;
        v62 = 0xE300000000000000;
      }

      v41 = v112;
      sub_1ABADD6D8(v60, v62, &v119);
      sub_1ABA7C014();
      *(v34 + 54) = v57;
      *(v34 + 62) = 2080;
      v63 = sub_1ABBAE7C4(v26, &selRef_kgq);
      if (v64)
      {
        v65 = v64;
      }

      else
      {
        v63 = 4271950;
        v65 = 0xE300000000000000;
      }

      sub_1ABADD6D8(v63, v65, &v119);
      sub_1ABA7C014();
      *(v34 + 64) = v57;
      v66 = v105;
      _os_log_impl(&dword_1ABA78000, v105, v98, "text: %s\nentityTypeFilter: %s)\nspan: %s\nmode: %s\ncandidateConstraint: %s\nsourceIDs: %s\nkgq: %s", v34, 0x48u);
      swift_arrayDestroy();
      MEMORY[0x1AC5AB8B0](v35, -1, -1);
      MEMORY[0x1AC5AB8B0](v34, -1, -1);

      v42 = v109;
    }

    else
    {

      v41 = v112;
      v42 = v109;
    }

    v105 = sub_1ABBAE7C4(v26, &selRef_text);
    v68 = v67;
    sub_1ABA8F260();
    sub_1ABBAE7B0(v69, v70, v71, v72, v73);
    v98 = sub_1ABBAE7C4(v26, &selRef_kgq);
    v97 = v74;
    v96 = [v26 includeFeatures];
    v95 = [v26 includeInferredNames];
    LODWORD(v94) = [v26 enableBackupSearch];
    if (v41)
    {
      if (v68)
      {
        v75 = *(v41 + 16);
        if (v75)
        {
          v93 = v25;
          v113 = MEMORY[0x1E69E7CC0];

          sub_1ABADE14C(0, v75, 0);
          v76 = 32;
          v77 = v113;
          v78 = v105;
          do
          {
            v112 = *(v41 + v76);
            v113 = v77;
            v79 = *(v77 + 16);
            v80 = *(v77 + 24);

            if (v79 >= v80 >> 1)
            {
              sub_1ABADE14C((v80 > 1), v79 + 1, 1);
              v77 = v113;
            }

            *(v77 + 16) = v79 + 1;
            v81 = v77 + 32 * v79;
            *(v81 + 32) = v78;
            *(v81 + 40) = v68;
            *(v81 + 48) = v112;
            v76 += 16;
            --v75;
          }

          while (v75);

          v25 = v93;
        }

        else
        {

          v77 = MEMORY[0x1E69E7CC0];
        }

        v82 = v102;
        v42 = v109;
        goto LABEL_57;
      }
    }

    v77 = 0;
    v82 = v102;
LABEL_57:
    v83 = v100;
    sub_1ABF21EF4();
    *&v112 = sub_1ABF21EC4();
    v102 = v84;
    v85 = v42;
    v86 = v106;
    v87 = v42;
    v88 = v111;
    v89 = v107;
    sub_1ABB37314(v25, v111, v85, v106, v107);
    result = (*(v82 + 8))(v83, v103);
    v90 = v104;
    *v104 = v105;
    v90[1] = v68;
    v90[2] = v101;
    v90[3] = v77;
    v91 = v102;
    v90[4] = v112;
    v90[5] = v91;
    *(v90 + 48) = v108;
    v90[7] = v25;
    v90[8] = v88;
    v90[9] = v87;
    v90[10] = v86;
    *(v90 + 90) = BYTE2(v89);
    *(v90 + 44) = v89;
    v92 = v98;
    v90[12] = v110;
    v90[13] = v92;
    v90[14] = v97;
    *(v90 + 120) = v96;
    *(v90 + 121) = v95;
    *(v90 + 122) = v94;
  }

  return result;
}

uint64_t sub_1ABBACBBC()
{
  v2 = v1;
  v3 = sub_1ABBAE6C8(v0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v3 + 16);
  if (!v5)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v32 = MEMORY[0x1E69E7CC0];
  result = sub_1ABADE0EC(0, v5, 0);
  v7 = 0;
  v8 = v32;
  v29 = v4;
  v9 = (v4 + 40);
  v28 = v5;
  while (v7 < *(v4 + 16))
  {
    v11 = *(v9 - 1);
    v10 = *v9;

    result = sub_1ABA9B398(v11, v10);
    if (v14)
    {
      result = sub_1ABB7F054(v11, v10);
      if (v17)
      {

        sub_1ABF24AB4();

        MEMORY[0x1AC5A9410](v11, v10);
        v8 = 0x80000001ABF898E0;
        sub_1ABB32C5C();
        swift_allocError();
        *v27 = 0xD00000000000001ALL;
        *(v27 + 8) = 0x80000001ABF898E0;
        *(v27 + 16) = 2;
        swift_willThrow();

        return v8;
      }

      if (v15 >= 1844)
      {
        goto LABEL_27;
      }

      if (v16 >= 3396)
      {
        goto LABEL_28;
      }

      if (!_Records_GDEntityClass_classIds[0])
      {
        goto LABEL_31;
      }

      v18 = result;
      result = sub_1ABF23DD4();
      if (!_Records_GDEntityClass_labels)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v12 >= 1844)
      {
        goto LABEL_25;
      }

      if (v13 >= 3396)
      {
        goto LABEL_26;
      }

      if (!_Records_GDEntityClass_classIds[0])
      {
        goto LABEL_29;
      }

      v18 = result;
      result = sub_1ABF23DD4();
      if (!_Records_GDEntityClass_labels)
      {
        goto LABEL_30;
      }
    }

    v20 = result;
    v21 = v19;
    v31 = v2;
    v22 = sub_1ABF23DD4();
    v30 = v23;

    v24 = *(v32 + 16);
    v25 = *(v32 + 24);
    if (v24 >= v25 >> 1)
    {
      result = sub_1ABADE0EC((v25 > 1), v24 + 1, 1);
    }

    ++v7;
    *(v32 + 16) = v24 + 1;
    v26 = v32 + 40 * v24;
    *(v26 + 32) = v20;
    *(v26 + 40) = v21;
    *(v26 + 48) = v22;
    *(v26 + 56) = v30;
    *(v26 + 64) = v18;
    v9 += 2;
    v4 = v29;
    v2 = v31;
    if (v28 == v7)
    {

      return v8;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1ABBACED0()
{
  v2 = v1;
  v3 = sub_1ABBAE720(v0, &selRef_spans, &qword_1EB4D4040, 0x1E696B098);
  if (v3)
  {
    v4 = v3;
    sub_1ABBAE7C4(v0, &selRef_text);
    if (v5)
    {
      v6 = sub_1ABAAB7C8(v4);
      if (v6)
      {
        v7 = v6;
        v20 = MEMORY[0x1E69E7CC0];
        sub_1ABADE10C(0, v6 & ~(v6 >> 63), 0);
        if ((v7 & 0x8000000000000000) == 0)
        {
          v8 = 0;
          v9 = v20;
          while (1)
          {
            v10 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              break;
            }

            if ((v4 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x1AC5AA170](v8, v4);
            }

            else
            {
              if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_21;
              }

              v11 = *(v4 + 8 * v8 + 32);
            }

            v12 = v11;
            v18 = v11;
            sub_1ABBAD398(&v18, &v17, &v19);
            if (v2)
            {

              return;
            }

            v2 = 0;

            v13 = v19;
            v20 = v9;
            v15 = *(v9 + 16);
            v14 = *(v9 + 24);
            if (v15 >= v14 >> 1)
            {
              v16 = v19;
              sub_1ABADE10C((v14 > 1), v15 + 1, 1);
              v13 = v16;
              v9 = v20;
            }

            *(v9 + 16) = v15 + 1;
            *(v9 + 16 * v15 + 32) = v13;
            ++v8;
            if (v10 == v7)
            {

              return;
            }
          }

          __break(1u);
LABEL_21:
          __break(1u);
        }

        __break(1u);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1ABBAD0D4(uint64_t a1@<X8>)
{
  v3 = [v1 constraint];
  if (v3 == 2)
  {
    if (_Records_GDEntityPredicate_records)
    {
      v4 = *(_Records_GDEntityPredicate_records + 103);
      v5 = *(_Records_GDEntityPredicate_records + 104);
      v6 = _Records_GDEntityPredicate_records[408];
      goto LABEL_9;
    }

LABEL_15:
    __break(1u);
    return;
  }

  if (v3 == 1)
  {
    if (_Records_GDEntityPredicate_records)
    {
      v4 = *(_Records_GDEntityPredicate_records + 106);
      v5 = *(_Records_GDEntityPredicate_records + 107);
      v6 = _Records_GDEntityPredicate_records[420];
LABEL_9:
      sub_1ABA91D48(v6, v4, v5, &v10);
      v7 = v11;
      v8 = v12;
      v9 = v13;
      *a1 = v10;
      *(a1 + 16) = v7;
      *(a1 + 24) = v8;
      *(a1 + 34) = 0;
      *(a1 + 32) = v9;
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v3)
  {

    sub_1ABBAD6D0(v1, a1);
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 34) = -1;
    *(a1 + 32) = 0;
  }
}

char *sub_1ABBAD1F8()
{
  v1 = sub_1ABBAE720(v0, &selRef_sourceIDs, &qword_1EB4D4050, off_1E795FED0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1ABAAB7C8(v1);
  if (!v3)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v22 = MEMORY[0x1E69E7CC0];
  result = sub_1ABADE12C(0, v3 & ~(v3 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v22;
    v21 = v2 & 0xC000000000000001;
    v8 = v2;
    do
    {
      if (v21)
      {
        v9 = MEMORY[0x1AC5AA170](v6, v2);
      }

      else
      {
        v9 = *(v2 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = [v9 value];
      v12 = sub_1ABF23C04();
      v14 = v13;

      v15 = sub_1ABBAE7C4(v10, &selRef_source);
      v17 = v16;

      v19 = *(v22 + 16);
      v18 = *(v22 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1ABADE12C((v18 > 1), v19 + 1, 1);
      }

      ++v6;
      *(v22 + 16) = v19 + 1;
      v20 = (v22 + 32 * v19);
      v20[4] = v12;
      v20[5] = v14;
      v20[6] = v15;
      v20[7] = v17;
      v2 = v8;
    }

    while (v4 != v6);

    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1ABBAD398@<X0>(id *a1@<X0>, uint64_t *a2@<X3>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = [*a1 rangeValue];
  v7 = v6;
  result = sub_1ABF23D74();
  if (v9)
  {
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD000000000000028, 0x80000001ABF89830);
    v10 = [v4 description];
LABEL_6:
    v13 = v10;
    v14 = sub_1ABF23C04();
    v16 = v15;

    MEMORY[0x1AC5A9410](v14, v16);

    MEMORY[0x1AC5A9410](0xD000000000000016, 0x80000001ABF89860);
    sub_1ABF23D44();
    v17 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v17);

LABEL_7:
    sub_1ABB32C5C();
    v18 = swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 0xE000000000000000;
    *(v19 + 16) = 2;
    result = swift_willThrow();
    *a2 = v18;
    return result;
  }

  if (__OFADD__(v5, v7))
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    result = sub_1ABF23D74();
    if (v12)
    {
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0xD000000000000027, 0x80000001ABF89880);
      v10 = [v4 description];
      goto LABEL_6;
    }

    if (result >> 14 < v11 >> 14)
    {
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0x20732765676E6152, 0xEE00287472617473);
      sub_1ABF24C54();
      MEMORY[0x1AC5A9410](0xD000000000000025, 0x80000001ABF898B0);
      sub_1ABF24C54();
      goto LABEL_7;
    }

    *a3 = v11;
    a3[1] = result;
  }

  return result;
}

double sub_1ABBAD6D0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1ED871B18 != -1)
  {
    swift_once();
  }

  v4 = sub_1ABF237F4();
  sub_1ABA7AA24(v4, qword_1ED871B20);
  v5 = a1;
  v6 = sub_1ABF237D4();
  v7 = sub_1ABF24664();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    [v5 constraint];
    type metadata accessor for GDCandidateConstraint(0);
    v10 = sub_1ABF23C74();
    v12 = sub_1ABADD6D8(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1ABA78000, v6, v7, "Unknown constraint: %s. Ignored.", v8, 0xCu);
    sub_1ABA84B54(v9);
    MEMORY[0x1AC5AB8B0](v9, -1, -1);
    MEMORY[0x1AC5AB8B0](v8, -1, -1);
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 34) = -1;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_1ABBAD864()
{
  v1 = v0;
  sub_1ABF252A4();
  sub_1ABBAE7C4(v0, &selRef_text);
  if (v2)
  {
    sub_1ABF25254();
    sub_1ABF23D34();
  }

  else
  {
    sub_1ABF25254();
  }

  v3 = sub_1ABBAE6C8(v0);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = (v3 + 40);
      do
      {
        v6 = *(v5 - 1);
        v7 = *v5;

        sub_1ABF23D34();

        v5 += 2;
        --v4;
      }

      while (v4);
    }
  }

  v8 = sub_1ABBAE720(v0, &selRef_spans, &qword_1EB4D4040, 0x1E696B098);
  if (v8)
  {
    v9 = v8;
    result = sub_1ABAAB7C8(v8);
    if (result)
    {
      v11 = result;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      for (i = 0; i != v11; ++i)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1AC5AA170](i, v9);
        }

        else
        {
          v13 = *(v9 + 8 * i + 32);
        }

        v14 = v13;
        sub_1ABF247C4();
      }
    }
  }

  sub_1ABBAE7C4(v1, &selRef_kgq);
  if (v15)
  {
    sub_1ABF23D34();
  }

  MEMORY[0x1AC5AA8A0]([v1 mode]);
  memcpy(__dst, v16, sizeof(__dst));
  return sub_1ABF25284();
}

id sub_1ABBADA38()
{
  v32 = *(v0 + 952);
  v31 = *(v0 + 960);
  v29 = *(v0 + 912);
  v30 = *(v0 + 928);
  v27 = *(v0 + 864);
  v28 = *(v0 + 880);
  v25 = *(v0 + 832);
  v26 = *(v0 + 848);
  v23 = *(v0 + 800);
  v24 = *(v0 + 816);
  v21 = *(v0 + 768);
  v22 = *(v0 + 784);
  v19 = *(v0 + 736);
  v20 = *(v0 + 752);
  v17 = *(v0 + 704);
  v18 = *(v0 + 720);
  v15 = *(v0 + 672);
  v16 = *(v0 + 688);
  v13 = *(v0 + 640);
  v14 = *(v0 + 656);
  v11 = *(v0 + 608);
  v12 = *(v0 + 624);
  v9 = *(v0 + 576);
  v10 = *(v0 + 592);
  v7 = *(v0 + 544);
  v8 = *(v0 + 560);
  v5 = *(v0 + 512);
  v6 = *(v0 + 528);
  v3 = *(v0 + 480);
  v4 = *(v0 + 496);
  v2 = *(v0 + 464);
  return [objc_allocWithZone(GDEntityFeatures) initWithCandidateNameScore:*(v0 + 896) candidateCommunicationScore:*(v0 + 900) candidateOrganizationScore:*(v0 + 904) candidateLocationScore:*(v0 + 944) candidateEventLocationScore:*v0 candidateEventNameScore:*(v0 + 8) topicScore:*(v0 + 16) messagePopularityGivenTimeOfDay:*(v0 + 24) callPopularityGivenTimeOfDay:*(v0 + 32) facetimePopularityGivenTimeOfDay:*(v0 + 40) timeOfDayGivenMessageWithEntity:*(v0 + 48) timeOfDayGivenCallWithEntity:*(v0 + 56) timeOfDayGivenFacetimeWithEntity:*(v0 + 64) messageWithEntityGivenTimeOfDay:*(v0 + 80) callWithEntityGivenTimeOfDay:*(v0 + 96) facetimeWithEntityGivenTimeOfDay:*(v0 + 112) messagePopularityGivenCoarseTimeOfDay:*(v0 + 128) callPopularityGivenCoarseTimeOfDay:*(v0 + 144) facetimePopularityGivenCoarseTimeOfDay:*(v0 + 160) coarseTimeOfDayGivenMessageWithEntity:*(v0 + 176) coarseTimeOfDayGivenCallWithEntity:*(v0 + 192) coarseTimeOfDayGivenFacetimeWithEntity:*(v0 + 208) messageWithEntityGivenCoarseTimeOfDay:*(v0 + 224) callWithEntityGivenCoarseTimeOfDay:*(v0 + 240) facetimeWithEntityGivenCoarseTimeOfDay:*(v0 + 256) messagePopularityGivenDayOfWeek:*(v0 + 272) callPopularityGivenDayOfWeek:*(v0 + 288) facetimePopularityGivenDayOfWeek:*(v0 + 304) dayOfWeekGivenMessageWithEntity:*(v0 + 320) dayOfWeekGivenCallWithEntity:*(v0 + 336) dayOfWeekGivenFacetimeWithEntity:*(v0 + 344) messageWithEntityGivenDayOfWeek:*(v0 + 352) callWithEntityGivenDayOfWeek:*(v0 + 360) facetimeWithEntityGivenDayOfWeek:*(v0 + 368) messagePopularityGivenFocusMode:*(v0 + 376) callPopularityGivenFocusMode:*(v0 + 384) facetimePopularityGivenFocusMode:*(v0 + 392) focusModeGivenMessageWithEntity:*(v0 + 400) focusModeGivenCallWithEntity:*(v0 + 408) focusModeGivenFacetimeWithEntity:*(v0 + 416) messageWithEntityGivenFocusMode:*(v0 + 424) callWithEntityGivenFocusMode:*(v0 + 432) facetimeWithEntityGivenFocusMode:*(v0 + 440) messagePopularityGivenLOI:*(v0 + 448) callPopularityGivenLOI:? facetimePopularityGivenLOI:? LOIGivenMessageWithEntity:? LOIGivenCallWithEntity:? LOIGivenFacetimeWithEntity:? messageWithEntityGivenLOI:? callWithEntityGivenLOI:? facetimeWithEntityGivenLOI:? messagePopularityGivenSpecificGeoHash:? callPopularityGivenSpecificGeoHash:? facetimePopularityGivenSpecificGeoHash:? specificGeoHashGivenMessageWithEntity:? specificGeoHashGivenCallWithEntity:? specificGeoHashGivenFacetimeWithEntity:? messageWithEntityGivenSpecificGeoHash:? callWithEntityGivenSpecificGeoHash:? facetimeWithEntityGivenSpecificGeoHash:? messagePopularityGivenCoarseGeoHash:? callPopularityGivenCoarseGeoHash:? facetimePopularityGivenCoarseGeoHash:? coarseGeoHashGivenMessageWithEntity:? coarseGeoHashGivenCallWithEntity:? coarseGeoHashGivenFacetimeWithEntity:? messageWithEntityGivenCoarseGeoHash:? callWithEntityGivenCoarseGeoHash:? facetimeWithEntityGivenCoarseGeoHash:? messagePopularityGivenLargeGeoHash:? callPopularityGivenLargeGeoHash:? facetimePopularityGivenLargeGeoHash:? largeGeoHashGivenMessageWithEntity:? largeGeoHashGivenCallWithEntity:? largeGeoHashGivenFacetimeWithEntity:? messageWithEntityGivenLargeGeoHash:? callWithEntityGivenLargeGeoHash:? facetimeWithEntityGivenLargeGeoHash:? messagePopularityGivenMicroLocation:? callPopularityGivenMicroLocation:? facetimePopularityGivenMicroLocation:? microLocationGivenMessageWithEntity:? microLocationGivenCallWithEntity:? microLocationGivenFacetimeWithEntity:? messageWithEntityGivenMicroLocation:? callWithEntityGivenMicroLocation:? facetimeWithEntityGivenMicroLocation:? messagePopularityGivenMotionState:? callPopularityGivenMotionState:? facetimePopularityGivenMotionState:? motionStateGivenMessageWithEntity:? motionStateGivenCallWithEntity:? motionStateGivenFacetimeWithEntity:? messageWithEntityGivenMotionState:? callWithEntityGivenMotionState:? facetimeWithEntityGivenMotionState:? messagePopularityGivenWiFi:? callPopularityGivenWiFi:? facetimePopularityGivenWiFi:? wiFiGivenMessageWithEntity:? wiFiGivenCallWithEntity:? wiFiGivenFacetimeWithEntity:? messageWithEntityGivenWiFi:? callWithEntityGivenWiFi:? facetimeWithEntityGivenWiFi:? messagePopularityGivenSequence:? callPopularityGivenSequence:? facetimePopularityGivenSequence:? sequenceGivenMessageWithEntity:? sequenceGivenCallWithEntity:? sequenceGivenFacetimeWithEntity:? lastExecutionAge:? medianTimeIntervalBetweenExecution:? dailyDoseL1Error:? dailyDoseL2Error:? shortTermTrendingPopularity:? trendingPopularity:? longTermTrendingPopularity:? locationLastExecutationAge:? locationPopularityGivenSpecificGeoHash:? locationTrendingPopularity:?];
}

id sub_1ABBADD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_1ABF23BD4();

  v8 = [v6 initWithText:v7 start:a3 end:a4];

  return v8;
}

id sub_1ABBADDF0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  if (*(v0 + 8))
  {
    sub_1ABA7D554();
    sub_1ABA80970();
    sub_1ABAFF390(0, &qword_1ED86B930, off_1E7960390);

    v4 = sub_1ABA7F0A0();
  }

  else
  {
    v4 = [objc_allocWithZone(GDSpan) init];
  }

  v5 = v4;
  if (v1)
  {
    v6 = *(v1 + 16);
    v7 = MEMORY[0x1E69E7CC0];
    if (v6)
    {
      v17 = MEMORY[0x1E69E7CC0];
      sub_1ABADDBD4();
      v7 = v17;
      v8 = (v1 + 56);
      do
      {
        v10 = *(v8 - 1);
        v9 = *v8;
        v11 = *(v17 + 16);
        v12 = *(v17 + 24);

        if (v11 >= v12 >> 1)
        {
          sub_1ABADDBD4();
        }

        *(v17 + 16) = v11 + 1;
        v13 = v17 + 16 * v11;
        *(v13 + 32) = v10;
        *(v13 + 40) = v9;
        v8 += 5;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (v3)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_1ABF242F4();
  }

  v15 = objc_allocWithZone(GDMention);
  return sub_1ABBAE390(v5, v7, v14);
}

id sub_1ABBADF78()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 6);
  v8 = *(v1 + 10);
  v30 = *(v1 + 11);
  v9 = *(v1 + 12);
  v24 = *(v1 + 1096);
  v10 = v1[138];
  v29 = *(v1 + 1112);
  v27 = *(v1 + 141);
  v28 = *(v1 + 140);
  v25 = *(v1 + 136);
  v26 = *(v1 + 142);
  v11 = *(v1 + 143);
  if (v7)
  {
    v12 = *(v1 + 7);
    v13 = *(v1 + 8);
    v14 = *(v1 + 5);
    objc_allocWithZone(GDEntitySourceID);

    v15 = sub_1ABBAE2FC(v14, v7, v12, v13);
  }

  else
  {
    v15 = 0;
  }

  result = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
  if (result)
  {
    v17 = result;
    if (v8)
    {
      v18 = v9;
    }

    else
    {
      v30 = 0;
      v18 = 0;
    }

    memcpy(__dst, v1 + 14, 0x3C9uLL);
    if (sub_1ABBAE794(__dst) == 1)
    {
      v19 = 0;
    }

    else
    {
      memcpy(v31, __dst, sizeof(v31));
      v19 = sub_1ABBADA38();
    }

    v20 = sub_1ABF251C4();
    v21 = objc_allocWithZone(GDIdentifierInformation);

    v22 = sub_1ABBAE414();
    v23 = objc_allocWithZone(GDRankerItem);
    return sub_1ABBAE4F4(v17, v15, v3, v4, v5, v6, v10, v30, v18, v19, v20, v29, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1ABBAE1B4()
{
  v1 = v0[1];
  v2 = v0[7];
  v3 = v0[10];
  if (v1)
  {
    sub_1ABA7D554();
    sub_1ABA80970();
    sub_1ABAFF390(0, &qword_1ED86B930, off_1E7960390);

    v1 = sub_1ABA7F0A0();
  }

  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v6 = (v3 + 32);
    do
    {
      memcpy(v12, v6, sizeof(v12));
      sub_1ABBADF78();
      sub_1ABF24B94();
      v7 = *(v13 + 16);
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v6 += 1160;
      --v4;
    }

    while (v4);
    v5 = v13;
  }

  if (v2 && v2[2])
  {
    v8 = v2[6];
    v9 = v2[7];
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = objc_allocWithZone(GDRankerResult);
  return sub_1ABBAE608(v1, v5, v8, v9);
}

id sub_1ABBAE2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1ABF23BD4();

  if (a4)
  {
    v7 = sub_1ABF23BD4();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithValue:v6 source:v7];

  return v8;
}

id sub_1ABBAE390(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1ABF240C4();

  v7 = [v3 initWithSpan:a1 entityClasses:v6 score:a3];

  return v7;
}