size_t sub_1D5D5A84C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D5BFBCE4(a1, a2, a3, *v3, &qword_1EDF19B20, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B38]);
  *v3 = result;
  return result;
}

void sub_1D5D5A8E4(void **a1)
{
  v2 = *(sub_1D725BD1C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D5D5A9C0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D5D5A9D4(v5);
  *a1 = v3;
}

void sub_1D5D5A9D4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D726449C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D725BD1C();
        v6 = sub_1D726276C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1D725BD1C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D6E7709C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D5D5AB00(0, v2, 1, a1);
  }
}

void sub_1D5D5AB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1D725BD1C();
  MEMORY[0x1EEE9AC00](v8, v9);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v48 = &v34 - v13;
  v17 = MEMORY[0x1EEE9AC00](v14, v15);
  v47 = &v34 - v18;
  v36 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v45 = *(v16 + 16);
    v46 = v16 + 16;
    v20 = *(v16 + 72);
    v21 = (v16 + 8);
    v42 = (v16 + 32);
    v43 = v19;
    v22 = (v19 + v20 * (a3 - 1));
    v41 = -v20;
    v23 = a1 - a3;
    v35 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v39 = v22;
    v40 = a3;
    v37 = v24;
    v38 = v23;
    v25 = v22;
    while (1)
    {
      v26 = v47;
      v27 = v45;
      (v45)(v47, v24, v8, v17);
      v28 = v48;
      v27(v48, v25, v8);
      sub_1D5B4B9F8(&qword_1EDF43A50, MEMORY[0x1E69D6B38]);
      v29 = sub_1D7261F4C();
      v30 = *v21;
      (*v21)(v28, v8);
      v30(v26, v8);
      if ((v29 & 1) == 0)
      {
LABEL_4:
        a3 = v40 + 1;
        v22 = &v39[v35];
        v23 = v38 - 1;
        v24 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v25, v32, v8);
      v25 += v41;
      v24 += v41;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

char *sub_1D5D5ADC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D5B5A7F0(0, &unk_1EDF19790, &type metadata for FormatGroupCollection, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D5D5AEFC(char *a1, int64_t a2, char a3)
{
  result = sub_1D5D5ADC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D5D5AF1C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  sub_1D5C8F9E0();
  v100 = v5;
  v94 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v91 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v104 = (&v82 - v10);
  v11 = *v2;
  v12 = v2[1];
  v13 = v2[2];
  v87 = *(a1 + 16);
  if (!v87)
  {
LABEL_64:
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
  }

  v86 = a2;
  v88 = a1 + 32;
  v14 = v11;

  v97 = v13;

  v15 = 0;
  v16 = 0;
  v98 = xmmword_1D7273AE0;
  v17 = v12;
  v13 = v12;
  while (1)
  {
    v18 = (v88 + 24 * v16);
    v19 = *v18;
    v20 = *(*v18 + 16);
    v21 = v14[2];
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      goto LABEL_72;
    }

    v89 = v16;
    v95 = v19;
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v22 > v14[3] >> 1)
    {
      if (v21 <= v22)
      {
        v24 = v21 + v20;
      }

      else
      {
        v24 = v21;
      }

      v14 = sub_1D5C5DD04(isUniquelyReferenced_nonNull_native, v24, 1, v14);
    }

    v25 = v95;
    v26 = *(v95 + 16);
    v90 = v14;
    if (v26)
    {
      if ((v14[3] >> 1) - v14[2] < v20)
      {
        goto LABEL_74;
      }

      swift_arrayInitWithCopy();

      if (v20)
      {
        v27 = v90[2];
        v28 = __OFADD__(v27, v20);
        v29 = v27 + v20;
        if (v28)
        {
          goto LABEL_75;
        }

        v90[2] = v29;
      }
    }

    else
    {

      if (v20)
      {
        goto LABEL_73;
      }
    }

    v93 = *(v25 + 16);
    if (v93)
    {
      break;
    }

LABEL_3:

    v14 = v90;
    v16 = v89 + 1;
    if (v89 + 1 == v87)
    {
LABEL_69:
      result = sub_1D5B74328(v15);
      v80 = v86;
      v81 = v97;
      v86[1] = v17;
      v80[2] = v81;
      *v80 = v14;
      return result;
    }
  }

  v30 = 0;
  v99 = *(v94 + 80);
  v105 = (v99 + 32) & ~v99;
  v92 = v25 + v105;
LABEL_20:
  if (v30 < *(v25 + 16))
  {
    v31 = *(v94 + 72);
    v96 = v30 + 1;
    v32 = v104;
    sub_1D5C5DC00(v92 + v31 * v30, v104);
    v33 = *v32;
    v34 = v32[1];
    v35 = v91;
    sub_1D5C5DC00(v32, v91);
    v36 = v13;
    v37 = v97;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v106 = v37;
    sub_1D5C5E038(v35, v33, v34, v38);
    v13 = v36;
    v97 = v106;
    v39 = v32[7];
    v41 = *(v39 + 56);
    v12 = v39 + 56;
    v40 = v41;
    v42 = 1 << *(v32[7] + 32);
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    a2 = v43 & v40;
    v44 = (v42 + 63) >> 6;
    v103 = v32[7];

    v45 = 0;
    v101 = v44;
    v102 = v31;
    if (a2)
    {
      while (1)
      {
        v46 = v45;
LABEL_29:
        v47 = *(*(v103 + 48) + ((v46 << 9) | (8 * __clz(__rbit64(a2)))));
        sub_1D5C509A4(0, &qword_1EDF19940, MEMORY[0x1E69E6F90]);
        v48 = v105;
        v49 = swift_allocObject();
        *(v49 + 16) = v98;
        sub_1D5C5DC00(v104, v49 + v48);
        sub_1D5B74328(v15);
        v17 = swift_isUniquelyReferenced_nonNull_native();
        v106 = v13;
        v14 = v47;
        v50 = v13;
        v15 = sub_1D5C5E034(v47);
        v52 = v13[2];
        v53 = (v51 & 1) == 0;
        v54 = v52 + v53;
        if (__OFADD__(v52, v53))
        {
          __break(1u);
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

        v55 = v51;
        if (v13[3] < v54)
        {
          break;
        }

        if (v17)
        {
          v17 = v13;
          if (v51)
          {
            goto LABEL_38;
          }

LABEL_36:
          *(v17 + 8 * (v15 >> 6) + 64) |= 1 << v15;
          *(*(v17 + 48) + 8 * v15) = v14;
          *(*(v17 + 56) + 8 * v15) = MEMORY[0x1E69E7CC0];
          v58 = *(v17 + 16);
          v28 = __OFADD__(v58, 1);
          v59 = v58 + 1;
          if (v28)
          {
            __break(1u);
            goto LABEL_71;
          }

          *(v17 + 16) = v59;
          goto LABEL_38;
        }

        sub_1D5C5DB0C(0, &qword_1EDF03E90, MEMORY[0x1E69E6EC8]);
        v83 = v13;
        v65 = sub_1D72640FC();
        v17 = v65;
        if (v83[2])
        {
          v66 = (v65 + 64);
          v67 = (v13 + 8);
          v68 = ((1 << *(v17 + 32)) + 63) >> 6;
          v82 = v13 + 8;
          if (v17 != v13 || v66 >= &v67[8 * v68])
          {
            memmove(v66, v67, 8 * v68);
          }

          v69 = 0;
          *(v17 + 16) = v50[2];
          v70 = 1 << *(v50 + 32);
          if (v70 < 64)
          {
            v71 = ~(-1 << v70);
          }

          else
          {
            v71 = -1;
          }

          v72 = v71 & v50[8];
          v73 = (v70 + 63) >> 6;
          v84 = v73;
          if (v72)
          {
            do
            {
              v74 = __clz(__rbit64(v72));
              v85 = (v72 - 1) & v72;
LABEL_58:
              v77 = v74 | (v69 << 6);
              v78 = *(v50[7] + 8 * v77);
              *(*(v17 + 48) + 8 * v77) = *(v50[6] + 8 * v77);
              *(*(v17 + 56) + 8 * v77) = v78;

              v73 = v84;
              v72 = v85;
            }

            while (v85);
          }

          v75 = v69;
          while (1)
          {
            v69 = v75 + 1;
            if (__OFADD__(v75, 1))
            {
              goto LABEL_76;
            }

            if (v69 >= v73)
            {
              break;
            }

            v76 = v82[v69];
            ++v75;
            if (v76)
            {
              v74 = __clz(__rbit64(v76));
              v85 = (v76 - 1) & v76;
              goto LABEL_58;
            }
          }
        }

        if ((v55 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_38:
        v60 = *(v17 + 56);
        v61 = *(v60 + 8 * v15);
        v62 = v61[2];
        v63 = swift_isUniquelyReferenced_nonNull_native();
        *(v60 + 8 * v15) = v61;
        if (!v63 || (v64 = v61[3] >> 1, v64 <= v62))
        {
          v61 = sub_1D5C5DD04(v63, v62 + 1, 1, v61);
          *(v60 + 8 * v15) = v61;
          v64 = v61[3] >> 1;
        }

        if (v64 <= v61[2])
        {
          goto LABEL_68;
        }

        a2 &= a2 - 1;
        swift_arrayInitWithCopy();

        ++v61[2];
        *(v60 + 8 * v15) = v61;
        v15 = sub_1D6031980;
        v13 = v17;
        v45 = v46;
        v44 = v101;
        if (!a2)
        {
          goto LABEL_26;
        }
      }

      sub_1D6D670C0(v54, v17);
      v17 = v106;
      v56 = sub_1D5C5E034(v14);
      if ((v55 & 1) != (v57 & 1))
      {
        goto LABEL_77;
      }

      v15 = v56;
      if (v55)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

LABEL_26:
    while (1)
    {
      v46 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v46 >= v44)
      {

        sub_1D5C5E444(v104);
        v25 = v95;
        v30 = v96;
        if (v96 == v93)
        {
          goto LABEL_3;
        }

        goto LABEL_20;
      }

      a2 = *(v12 + 8 * v46);
      ++v45;
      if (a2)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_64;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

char *sub_1D5D5B70C(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1D5B5A7F0(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1D5D5B830(char *a1, int64_t a2, char a3)
{
  result = sub_1D5D5B70C(a1, a2, a3, *v3, &qword_1EDF19808, &type metadata for FormatItemCollection);
  *v3 = result;
  return result;
}

uint64_t sub_1D5D5B860@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1D5CBB26C();
  v45[1] = v5;
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (v45 - v11);
  v14 = *v2;
  v13 = *(v2 + 8);
  v48 = *(a1 + 16);
  if (v48)
  {
    v47 = a1 + 32;

    v15 = 0;
    v46 = a2;
    while (1)
    {
      v18 = (v47 + 16 * v15);
      v19 = *(*v18 + 16);
      v20 = v14[2];
      v21 = v20 + v19;
      if (__OFADD__(v20, v19))
      {
        break;
      }

      v54 = *v18;
      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v21 > v14[3] >> 1)
      {
        if (v20 <= v21)
        {
          v23 = v20 + v19;
        }

        else
        {
          v23 = v20;
        }

        v14 = sub_1D5D5BC6C(isUniquelyReferenced_nonNull_native, v23, 1, v14);
      }

      v24 = v54;
      if (*(v54 + 16))
      {
        if ((v14[3] >> 1) - v14[2] < v19)
        {
          goto LABEL_40;
        }

        swift_arrayInitWithCopy();

        if (v19)
        {
          v25 = v14[2];
          v26 = __OFADD__(v25, v19);
          v27 = v25 + v19;
          if (v26)
          {
            goto LABEL_41;
          }

          v14[2] = v27;
        }
      }

      else
      {

        if (v19)
        {
          goto LABEL_39;
        }
      }

      v49 = v15;
      v50 = v14;

      v52 = *(v24 + 16);
      if (v52)
      {
        v28 = 0;
        v51 = v24 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
        while (v28 < *(v24 + 16))
        {
          v29 = *(v53 + 72);
          sub_1D5CCD174(v51 + v29 * v28, v12);
          v31 = *v12;
          v30 = v12[1];
          v32 = v8;
          sub_1D5CCD174(v12, v8);
          v33 = swift_isUniquelyReferenced_nonNull_native();
          v55 = v13;
          v35 = sub_1D5B69D90(v31, v30);
          v36 = v13[2];
          v37 = (v34 & 1) == 0;
          v38 = v36 + v37;
          if (__OFADD__(v36, v37))
          {
            goto LABEL_36;
          }

          v39 = v34;
          if (v13[3] >= v38)
          {
            if ((v33 & 1) == 0)
            {
              sub_1D6D7E3E4();
            }
          }

          else
          {
            sub_1D6D670D8(v38, v33);
            v40 = sub_1D5B69D90(v31, v30);
            if ((v39 & 1) != (v41 & 1))
            {
              goto LABEL_42;
            }

            v35 = v40;
          }

          v8 = v32;
          v13 = v55;
          if (v39)
          {
            sub_1D5F8A378(v32, v55[7] + v35 * v29);
          }

          else
          {
            v55[(v35 >> 6) + 8] |= 1 << v35;
            v42 = (v13[6] + 16 * v35);
            *v42 = v31;
            v42[1] = v30;
            sub_1D5CCD1D8(v32, v13[7] + v35 * v29);
            v43 = v13[2];
            v26 = __OFADD__(v43, 1);
            v44 = v43 + 1;
            if (v26)
            {
              goto LABEL_37;
            }

            v13[2] = v44;
          }

          ++v28;
          sub_1D5CCD23C(v12);
          v24 = v54;
          if (v52 == v28)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        break;
      }

LABEL_3:
      v15 = v49 + 1;

      v17 = v46;
      v14 = v50;
      if (v15 == v48)
      {
        *v46 = v50;
        v17[1] = v13;
        return result;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    result = sub_1D726493C();
    __break(1u);
  }

  else
  {
    *a2 = v14;
    a2[1] = v13;
  }

  return result;
}

size_t sub_1D5D5BC6C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1D5D6162C();
  sub_1D5C28DE4(0, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_1D5C28DE4(0, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1D5D5BEA8(char *a1, int64_t a2, char a3)
{
  result = sub_1D5D5B70C(a1, a2, a3, *v3, &unk_1EDF19740, &type metadata for FormatSnippetCollection);
  *v3 = result;
  return result;
}

uint64_t sub_1D5D5BED8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1D5C2C40C(0);
  v45 = v5;
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v45 - v11);
  v14 = *v2;
  v13 = *(v2 + 8);
  v48 = *(a1 + 16);
  if (!v48)
  {
    *a2 = v14;
    a2[1] = v13;
  }

  v47 = a1 + 32;

  v15 = 0;
  v46 = a2;
  while (1)
  {
    v18 = (v47 + 16 * v15);
    v19 = *(*v18 + 16);
    v20 = v14[2];
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      goto LABEL_40;
    }

    v54 = *v18;
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v21 > v14[3] >> 1)
    {
      if (v20 <= v21)
      {
        v23 = v20 + v19;
      }

      else
      {
        v23 = v20;
      }

      v14 = sub_1D5D5C308(isUniquelyReferenced_nonNull_native, v23, 1, v14);
    }

    v24 = v54;
    if (*(v54 + 16))
    {
      if ((v14[3] >> 1) - v14[2] < v19)
      {
        goto LABEL_42;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v25 = v14[2];
        v26 = __OFADD__(v25, v19);
        v27 = v25 + v19;
        if (v26)
        {
          goto LABEL_43;
        }

        v14[2] = v27;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_41;
      }
    }

    v49 = v15;
    v50 = v14;

    v52 = *(v24 + 16);
    if (v52)
    {
      break;
    }

LABEL_3:
    v15 = v49 + 1;

    v17 = v46;
    v14 = v50;
    if (v15 == v48)
    {
      *v46 = v50;
      v17[1] = v13;
      return result;
    }
  }

  v28 = 0;
  v51 = v24 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
  while (v28 < *(v24 + 16))
  {
    v29 = *(v53 + 72);
    sub_1D5CA443C(v51 + v29 * v28, v12);
    v30 = *v12;
    swift_beginAccess();
    v32 = *(v30 + 16);
    v31 = *(v30 + 24);
    sub_1D5CA443C(v12, v8);

    v33 = swift_isUniquelyReferenced_nonNull_native();
    v55 = v13;
    v35 = sub_1D5B69D90(v32, v31);
    v36 = v13[2];
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_38;
    }

    v39 = v34;
    if (v13[3] >= v38)
    {
      if (v33)
      {
        if (v34)
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_1D6D7E420();
        if (v39)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      sub_1D6D67114(v38, v33);
      v40 = sub_1D5B69D90(v32, v31);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_44;
      }

      v35 = v40;
      if (v39)
      {
LABEL_19:

        v13 = v55;
        sub_1D695A740(v8, v55[7] + v35 * v29);
        goto LABEL_20;
      }
    }

    v13 = v55;
    v55[(v35 >> 6) + 8] |= 1 << v35;
    v42 = (v13[6] + 16 * v35);
    *v42 = v32;
    v42[1] = v31;
    sub_1D5CA44FC(v8, v13[7] + v35 * v29);
    v43 = v13[2];
    v26 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v26)
    {
      goto LABEL_39;
    }

    v13[2] = v44;
LABEL_20:
    ++v28;
    sub_1D5CA44A0(v12);
    v24 = v54;
    if (v52 == v28)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
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
  result = sub_1D726493C();
  __break(1u);
  return result;
}

char *sub_1D5D5C33C(char *a1, int64_t a2, char a3)
{
  result = sub_1D5D5B70C(a1, a2, a3, *v3, &unk_1EDF196E8, &type metadata for FormatNodeStyleCollection);
  *v3 = result;
  return result;
}

void sub_1D5D5C36C()
{
  if (!qword_1EDF19930)
  {
    sub_1D5C28DE4(255, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19930);
    }
  }
}

size_t sub_1D5D5C3FC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1D5D5C36C();
  sub_1D5C28DE4(0, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_1D5C28DE4(0, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1D5D5C638(char *a1, int64_t a2, char a3)
{
  result = sub_1D5D5B70C(a1, a2, a3, *v3, &qword_1EDF19630, &type metadata for FormatSlotDefinitionCollection);
  *v3 = result;
  return result;
}

uint64_t sub_1D5D5C668@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v45 = type metadata accessor for FormatSlotDefinition();
  v53 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v44 - v10);
  v13 = *v2;
  v12 = *(v2 + 8);
  v48 = *(a1 + 16);
  if (!v48)
  {
    *a2 = v13;
    a2[1] = v12;
  }

  v47 = a1 + 32;

  v14 = 0;
  v46 = a2;
  while (1)
  {
    v17 = (v47 + 16 * v14);
    v18 = *(*v17 + 16);
    v19 = v13[2];
    v20 = v19 + v18;
    if (__OFADD__(v19, v18))
    {
      goto LABEL_40;
    }

    v54 = *v17;
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v20 > v13[3] >> 1)
    {
      if (v19 <= v20)
      {
        v22 = v19 + v18;
      }

      else
      {
        v22 = v19;
      }

      v13 = sub_1D5D5CA88(isUniquelyReferenced_nonNull_native, v22, 1, v13);
    }

    v23 = v54;
    if (*(v54 + 16))
    {
      if ((v13[3] >> 1) - v13[2] < v18)
      {
        goto LABEL_42;
      }

      swift_arrayInitWithCopy();

      if (v18)
      {
        v24 = v13[2];
        v25 = __OFADD__(v24, v18);
        v26 = v24 + v18;
        if (v25)
        {
          goto LABEL_43;
        }

        v13[2] = v26;
      }
    }

    else
    {

      if (v18)
      {
        goto LABEL_41;
      }
    }

    v49 = v14;
    v50 = v13;

    v52 = *(v23 + 16);
    if (v52)
    {
      break;
    }

LABEL_3:
    v14 = v49 + 1;

    v16 = v46;
    v13 = v50;
    if (v14 == v48)
    {
      *v46 = v50;
      v16[1] = v12;
      return result;
    }
  }

  v27 = 0;
  v51 = v23 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
  while (v27 < *(v23 + 16))
  {
    v28 = *(v53 + 72);
    sub_1D5CAF694(v51 + v28 * v27, v11);
    v30 = *v11;
    v29 = v11[1];
    v31 = v7;
    sub_1D5CAF754(v11, v7);

    v32 = swift_isUniquelyReferenced_nonNull_native();
    v55 = v12;
    v34 = sub_1D5B69D90(v30, v29);
    v35 = v12[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_38;
    }

    v38 = v33;
    if (v12[3] >= v37)
    {
      if (v32)
      {
        v7 = v31;
        if (v33)
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_1D6D7E6CC();
        v7 = v31;
        if (v38)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      sub_1D6D67168(v37, v32);
      v39 = sub_1D5B69D90(v30, v29);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_44;
      }

      v34 = v39;
      v7 = v31;
      if (v38)
      {
LABEL_19:

        v12 = v55;
        sub_1D618846C(v7, v55[7] + v34 * v28);
        goto LABEL_20;
      }
    }

    v12 = v55;
    v55[(v34 >> 6) + 8] |= 1 << v34;
    v41 = (v12[6] + 16 * v34);
    *v41 = v30;
    v41[1] = v29;
    sub_1D5CAF754(v7, v12[7] + v34 * v28);
    v42 = v12[2];
    v25 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v25)
    {
      goto LABEL_39;
    }

    v12[2] = v43;
LABEL_20:
    ++v27;
    v23 = v54;
    if (v52 == v27)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
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
  result = sub_1D726493C();
  __break(1u);
  return result;
}

char *sub_1D5D5CABC(char *a1, int64_t a2, char a3)
{
  result = sub_1D5D5B70C(a1, a2, a3, *v3, &qword_1EDF19638, &type metadata for FormatSupplementaryCollection);
  *v3 = result;
  return result;
}

uint64_t sub_1D5D5CAEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1D5CA4820();
  v45[1] = v5;
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (v45 - v11);
  v14 = *v2;
  v13 = *(v2 + 8);
  v48 = *(a1 + 16);
  if (v48)
  {
    v47 = a1 + 32;

    v15 = 0;
    v46 = a2;
    while (1)
    {
      v18 = (v47 + 16 * v15);
      v19 = *(*v18 + 16);
      v20 = v14[2];
      v21 = v20 + v19;
      if (__OFADD__(v20, v19))
      {
        break;
      }

      v54 = *v18;
      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v21 > v14[3] >> 1)
      {
        if (v20 <= v21)
        {
          v23 = v20 + v19;
        }

        else
        {
          v23 = v20;
        }

        v14 = sub_1D5D5CEF8(isUniquelyReferenced_nonNull_native, v23, 1, v14);
      }

      v24 = v54;
      if (*(v54 + 16))
      {
        if ((v14[3] >> 1) - v14[2] < v19)
        {
          goto LABEL_40;
        }

        swift_arrayInitWithCopy();

        if (v19)
        {
          v25 = v14[2];
          v26 = __OFADD__(v25, v19);
          v27 = v25 + v19;
          if (v26)
          {
            goto LABEL_41;
          }

          v14[2] = v27;
        }
      }

      else
      {

        if (v19)
        {
          goto LABEL_39;
        }
      }

      v49 = v15;
      v50 = v14;

      v52 = *(v24 + 16);
      if (v52)
      {
        v28 = 0;
        v51 = v24 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
        while (v28 < *(v24 + 16))
        {
          v29 = *(v53 + 72);
          sub_1D5CA8A00(v51 + v29 * v28, v12);
          v31 = *v12;
          v30 = v12[1];
          v32 = v8;
          sub_1D5CA8A00(v12, v8);
          v33 = swift_isUniquelyReferenced_nonNull_native();
          v55 = v13;
          v35 = sub_1D5B69D90(v31, v30);
          v36 = v13[2];
          v37 = (v34 & 1) == 0;
          v38 = v36 + v37;
          if (__OFADD__(v36, v37))
          {
            goto LABEL_36;
          }

          v39 = v34;
          if (v13[3] >= v38)
          {
            if ((v33 & 1) == 0)
            {
              sub_1D6D7E720();
            }
          }

          else
          {
            sub_1D6D671BC(v38, v33);
            v40 = sub_1D5B69D90(v31, v30);
            if ((v39 & 1) != (v41 & 1))
            {
              goto LABEL_42;
            }

            v35 = v40;
          }

          v8 = v32;
          v13 = v55;
          if (v39)
          {
            sub_1D6A56B4C(v32, v55[7] + v35 * v29);
          }

          else
          {
            v55[(v35 >> 6) + 8] |= 1 << v35;
            v42 = (v13[6] + 16 * v35);
            *v42 = v31;
            v42[1] = v30;
            sub_1D5CA8A64(v32, v13[7] + v35 * v29);
            v43 = v13[2];
            v26 = __OFADD__(v43, 1);
            v44 = v43 + 1;
            if (v26)
            {
              goto LABEL_37;
            }

            v13[2] = v44;
          }

          ++v28;
          sub_1D5CA8AC8(v12);
          v24 = v54;
          if (v52 == v28)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        break;
      }

LABEL_3:
      v15 = v49 + 1;

      v17 = v46;
      v14 = v50;
      if (v15 == v48)
      {
        *v46 = v50;
        v17[1] = v13;
        return result;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    result = sub_1D726493C();
    __break(1u);
  }

  else
  {
    *a2 = v14;
    a2[1] = v13;
  }

  return result;
}

size_t sub_1D5D5CEF8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1D5D5D134();
  sub_1D5C28DE4(0, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_1D5C28DE4(0, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1D5D5D134()
{
  if (!qword_1EDF19970)
  {
    sub_1D5C28DE4(255, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19970);
    }
  }
}

char *sub_1D5D5D1C4(char *a1, int64_t a2, char a3)
{
  result = sub_1D5D5B70C(a1, a2, a3, *v3, &qword_1EDF197F0, &type metadata for FormatTypeCollection);
  *v3 = result;
  return result;
}

uint64_t sub_1D5D5D1F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1D5CDEAB8(0, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
  v45[1] = v5;
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (v45 - v11);
  v14 = *v2;
  v13 = *(v2 + 8);
  v48 = *(a1 + 16);
  if (v48)
  {
    v47 = a1 + 32;

    v15 = 0;
    v46 = a2;
    while (1)
    {
      v18 = (v47 + 16 * v15);
      v19 = *(*v18 + 16);
      v20 = v14[2];
      v21 = v20 + v19;
      if (__OFADD__(v20, v19))
      {
        break;
      }

      v54 = *v18;
      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v21 > v14[3] >> 1)
      {
        if (v20 <= v21)
        {
          v23 = v20 + v19;
        }

        else
        {
          v23 = v20;
        }

        v14 = sub_1D5D5D638(isUniquelyReferenced_nonNull_native, v23, 1, v14);
      }

      v24 = v54;
      if (*(v54 + 16))
      {
        if ((v14[3] >> 1) - v14[2] < v19)
        {
          goto LABEL_40;
        }

        swift_arrayInitWithCopy();

        if (v19)
        {
          v25 = v14[2];
          v26 = __OFADD__(v25, v19);
          v27 = v25 + v19;
          if (v26)
          {
            goto LABEL_41;
          }

          v14[2] = v27;
        }
      }

      else
      {

        if (v19)
        {
          goto LABEL_39;
        }
      }

      v49 = v15;
      v50 = v14;

      v52 = *(v24 + 16);
      if (v52)
      {
        v28 = 0;
        v51 = v24 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
        while (v28 < *(v24 + 16))
        {
          v29 = *(v53 + 72);
          sub_1D6E18DC8(v51 + v29 * v28, v12);
          v31 = *v12;
          v30 = v12[1];
          v32 = v8;
          sub_1D6E18DC8(v12, v8);
          v33 = swift_isUniquelyReferenced_nonNull_native();
          v55 = v13;
          v35 = sub_1D5B69D90(v31, v30);
          v36 = v13[2];
          v37 = (v34 & 1) == 0;
          v38 = v36 + v37;
          if (__OFADD__(v36, v37))
          {
            goto LABEL_36;
          }

          v39 = v34;
          if (v13[3] >= v38)
          {
            if ((v33 & 1) == 0)
            {
              sub_1D6D7E9E4();
            }
          }

          else
          {
            sub_1D6D67564(v38, v33);
            v40 = sub_1D5B69D90(v31, v30);
            if ((v39 & 1) != (v41 & 1))
            {
              goto LABEL_42;
            }

            v35 = v40;
          }

          v8 = v32;
          v13 = v55;
          if (v39)
          {
            sub_1D6F1D264(v32, v55[7] + v35 * v29);
          }

          else
          {
            v55[(v35 >> 6) + 8] |= 1 << v35;
            v42 = (v13[6] + 16 * v35);
            *v42 = v31;
            v42[1] = v30;
            sub_1D6F1D1C8(v32, v13[7] + v35 * v29);
            v43 = v13[2];
            v26 = __OFADD__(v43, 1);
            v44 = v43 + 1;
            if (v26)
            {
              goto LABEL_37;
            }

            v13[2] = v44;
          }

          ++v28;
          sub_1D6E18E2C(v12);
          v24 = v54;
          if (v52 == v28)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        break;
      }

LABEL_3:
      v15 = v49 + 1;

      v17 = v46;
      v14 = v50;
      if (v15 == v48)
      {
        *v46 = v50;
        v17[1] = v13;
        return result;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    result = sub_1D726493C();
    __break(1u);
  }

  else
  {
    *a2 = v14;
    a2[1] = v13;
  }

  return result;
}

size_t sub_1D5D5D638(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1D5D616BC();
  sub_1D5C28DE4(0, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_1D5C28DE4(0, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1D5D5D874(char *a1, int64_t a2, char a3)
{
  result = sub_1D5BDF58C(a1, a2, a3, *v3, &qword_1EDF196D8, &type metadata for FormatDecorationCollection);
  *v3 = result;
  return result;
}

void sub_1D5D5D8A4()
{
  if (!qword_1EDF19990)
  {
    sub_1D5C28DE4(255, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19990);
    }
  }
}

size_t sub_1D5D5D934(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1D5D5D8A4();
  sub_1D5C28DE4(0, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_1D5C28DE4(0, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1D5D5DB70(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for FormatOption();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v41 - v10);
  v44 = a2;

  sub_1D5D505F0(v12);
  v13 = v44;
  v43 = v44[2];
  if (!v43)
  {
    goto LABEL_18;
  }

  v14 = 0;
  v42 = v44 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v15 = MEMORY[0x1E69E7CC8];
  v41 = v44;
  do
  {
    if (v14 >= v13[2])
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      result = sub_1D726493C();
      __break(1u);
      return result;
    }

    v16 = v4;
    v17 = *(v4 + 72);
    sub_1D5D2477C(&v42[v17 * v14], v11);
    v19 = *v11;
    v18 = v11[1];
    v20 = v11;
    v21 = v11;
    v22 = v7;
    sub_1D5D2477C(v21, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v15;
    v24 = sub_1D5B69D90(v19, v18);
    v26 = v15[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_22;
    }

    v30 = v25;
    if (v15[3] >= v29)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = v24;
        sub_1D6D7FD78();
        v24 = v35;
      }
    }

    else
    {
      sub_1D5D5DEC4(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_1D5B69D90(v19, v18);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_24;
      }
    }

    v7 = v22;
    v15 = v44;
    if (v30)
    {
      sub_1D5D5E74C(v22, v44[7] + v24 * v17);
    }

    else
    {
      v44[(v24 >> 6) + 8] |= 1 << v24;
      v32 = (v15[6] + 16 * v24);
      *v32 = v19;
      v32[1] = v18;
      sub_1D5D5E474(v22, v15[7] + v24 * v17, type metadata accessor for FormatOption);
      v33 = v15[2];
      v28 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v28)
      {
        goto LABEL_23;
      }

      v15[2] = v34;
    }

    ++v14;
    v11 = v20;
    sub_1D5D289E4(v20, type metadata accessor for FormatOption);
    v4 = v16;
    v13 = v41;
  }

  while (v43 != v14);

  v36 = v15[2];
  if (v36)
  {
    while (1)
    {
      v37 = sub_1D5D5E8B0(v36, 0);
      sub_1D5D5EB18(&v44, v37 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v36, v15);
      v39 = v38;
      sub_1D5B87E38();
      if (v39 == v36)
      {
        break;
      }

      __break(1u);
LABEL_18:

      v15 = MEMORY[0x1E69E7CC8];
      v36 = *(MEMORY[0x1E69E7CC8] + 16);
      if (!v36)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:

    return MEMORY[0x1E69E7CC0];
  }

  return v37;
}

uint64_t sub_1D5D5DF18(uint64_t a1, int a2, uint64_t (*a3)(void), void (*a4)(void, __n128), void (*a5)(uint64_t, char *), void (*a6)(uint64_t, char *))
{
  v45 = a6;
  v49 = a5;
  v8 = v6;
  v10 = a3(0);
  v47 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v50 = &v44 - v13;
  v14 = *v6;
  a4(0, v12);
  v48 = a2;
  result = sub_1D726410C();
  v16 = result;
  if (*(v14 + 16))
  {
    v44 = v6;
    v17 = 0;
    v18 = (v14 + 64);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = result + 64;
    v46 = v14;
    while (v21)
    {
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v29 = v26 | (v17 << 6);
      v30 = *(v14 + 56);
      v31 = (*(v14 + 48) + 16 * v29);
      v33 = *v31;
      v32 = v31[1];
      v34 = *(v47 + 72);
      v35 = v30 + v34 * v29;
      if (v48)
      {
        v49(v35, v50);
      }

      else
      {
        v45(v35, v50);
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      result = sub_1D7264A5C();
      v36 = -1 << *(v16 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v23 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v23 + 8 * v38);
          if (v42 != -1)
          {
            v24 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v37) & ~*(v23 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v25 = (*(v16 + 48) + 16 * v24);
      *v25 = v33;
      v25[1] = v32;
      result = (v49)(v50, *(v16 + 56) + v34 * v24);
      ++*(v16 + 16);
      v14 = v46;
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v22)
      {
        break;
      }

      v28 = v18[v17];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v21 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v8 = v44;
      goto LABEL_34;
    }

    v43 = 1 << *(v14 + 32);
    v8 = v44;
    if (v43 >= 64)
    {
      bzero(v18, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v43;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v8 = v16;
  return result;
}

void sub_1D5D5E26C()
{
  if (!qword_1EDF1A488)
  {
    type metadata accessor for FormatOption();
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A488);
    }
  }
}

uint64_t sub_1D5D5E2D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D5E33C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D5E3A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D5E40C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D5E474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D5E4DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D5E544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D5E5AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D5E614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D5E67C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D5E6E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D5E74C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatOption();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

size_t sub_1D5D5E7B0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D5E2A594(0, a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D5D5E8E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  v37 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v33 - v17;
  v38 = a4;
  v21 = *(a4 + 64);
  v20 = a4 + 64;
  v19 = v21;
  v22 = -1 << *(v20 - 32);
  if (-v22 < 64)
  {
    v23 = ~(-1 << -v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v19;
  if (!a2)
  {
LABEL_18:
    v25 = 0;
LABEL_25:
    *a1 = v38;
    a1[1] = v20;
    a1[2] = ~v22;
    a1[3] = v25;
    a1[4] = v24;
    return;
  }

  if (!a3)
  {
    v25 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = a1;
    v36 = a3;
    v25 = 0;
    v34 = v22;
    v26 = (63 - v22) >> 6;
    v27 = 1;
    while (v24)
    {
LABEL_14:
      v30 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      a1 = *(v37 + 72);
      sub_1D5E2A7E4(*(v38 + 56) + a1 * (v30 | (v25 << 6)), v14, a6);
      sub_1D5E2A84C(v14, v18, a6);
      sub_1D5E2A84C(v18, a2, a6);
      if (v27 == v36)
      {
        a1 = v35;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v28 = v25;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v29 >= v26)
      {
        break;
      }

      v24 = *(v20 + 8 * v29);
      ++v28;
      if (v24)
      {
        v25 = v29;
        goto LABEL_14;
      }
    }

    v24 = 0;
    if (v26 <= v25 + 1)
    {
      v32 = v25 + 1;
    }

    else
    {
      v32 = v26;
    }

    v25 = v32 - 1;
    a1 = v35;
LABEL_23:
    v22 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_1D5D5EB44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D5EBAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_1D5D5EC14(char *a1, int64_t a2, char a3)
{
  result = sub_1D5D5B70C(a1, a2, a3, *v3, &qword_1EDF196A0, &type metadata for FormatLocalizationCollection);
  *v3 = result;
  return result;
}

uint64_t sub_1D5D5EC44@<X0>(uint64_t a1@<X0>, size_t *a2@<X8>)
{
  sub_1D5CAFA78();
  v77 = v5;
  v86 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v83 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  v9 = v2[1];
  v78 = *(a1 + 16);
  if (!v78)
  {
    *a2 = v8;
    a2[1] = v9;
  }

  v79 = a1 + 32;
  v10 = v8;

  v11 = 0;
  v76 = a2;
  while (1)
  {
    v14 = (v79 + 16 * v11);
    v15 = *v14;
    v16 = *(*v14 + 16);
    v17 = *(v10 + 16);
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      goto LABEL_64;
    }

    v80 = v11;
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v18 > *(v10 + 24) >> 1)
    {
      if (v17 <= v18)
      {
        v20 = v17 + v16;
      }

      else
      {
        v20 = v17;
      }

      v10 = sub_1D5D5F2B8(isUniquelyReferenced_nonNull_native, v20, 1, v10);
    }

    v21 = *(v15 + 16);
    v81 = v10;
    if (v21)
    {
      if ((*(v10 + 24) >> 1) - *(v10 + 16) < v16)
      {
        goto LABEL_66;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v22 = *(v81 + 16);
        v23 = __OFADD__(v22, v16);
        v24 = v22 + v16;
        if (v23)
        {
          goto LABEL_67;
        }

        *(v81 + 16) = v24;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_65;
      }
    }

    v85 = *(v15 + 16);
    if (v85)
    {
      break;
    }

LABEL_3:

    v10 = v81;
    v11 = v80 + 1;
    v13 = v76;
    if (v80 + 1 == v78)
    {
LABEL_61:
      *v13 = v10;
      v13[1] = v9;
      return result;
    }
  }

  v25 = 0;
  v84 = v15 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
  v82 = v15;
  while (1)
  {
    if (v25 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_63;
    }

    v26 = v83;
    sub_1D5CB1820(v84 + *(v86 + 72) * v25, v83);
    v27 = *(v26 + 48);

    result = sub_1D5CB1884(v26);
    v90 = *(v27 + 16);
    if (v90)
    {
      break;
    }

LABEL_20:
    if (++v25 == v85)
    {
      goto LABEL_3;
    }
  }

  v87 = v25;
  v88 = v27;
  v28 = 0;
  v89 = v27 + 32;
  while (1)
  {
    if (v28 >= *(v27 + 16))
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v30 = (v89 + 40 * v28);
    v32 = *v30;
    v31 = v30[1];
    v33 = v30[3];
    v91 = v30[2];
    v34 = v30[4];
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v9;
    v36 = sub_1D5B69D90(v32, v31);
    v37 = *(v9 + 16);
    v13 = ((v35 & 1) == 0);
    result = v13 + v37;
    if (__OFADD__(v37, v13))
    {
      goto LABEL_59;
    }

    v38 = v35;
    if (*(v9 + 24) >= result)
    {
      break;
    }

    sub_1D5CB18E0(result, v10);
    v9 = v92;
    v39 = sub_1D5B69D90(v32, v31);
    if ((v38 & 1) != (v40 & 1))
    {
      goto LABEL_68;
    }

    v36 = v39;
    v41 = v91;
    if (v38)
    {
LABEL_24:
      v29 = (*(v9 + 56) + 40 * v36);
      v10 = v29[4];
      *v29 = v32;
      v29[1] = v31;
      v29[2] = v41;
      v29[3] = v33;
      v29[4] = v34;

      goto LABEL_25;
    }

LABEL_34:
    *(v9 + 8 * (v36 >> 6) + 64) |= 1 << v36;
    v42 = (*(v9 + 48) + 16 * v36);
    *v42 = v32;
    v42[1] = v31;
    v43 = (*(v9 + 56) + 40 * v36);
    *v43 = v32;
    v43[1] = v31;
    v43[2] = v41;
    v43[3] = v33;
    v43[4] = v34;

    v44 = *(v9 + 16);
    v23 = __OFADD__(v44, 1);
    v45 = v44 + 1;
    if (v23)
    {
      goto LABEL_60;
    }

    *(v9 + 16) = v45;
LABEL_25:
    ++v28;
    v27 = v88;
    if (v28 == v90)
    {

      v15 = v82;
      v25 = v87;
      goto LABEL_20;
    }
  }

  if (v10)
  {
    v41 = v91;
    if (v35)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

  sub_1D5CB1BCC();
  v75 = sub_1D72640FC();
  if (!*(v9 + 16))
  {
LABEL_52:

    v9 = v75;
    v41 = v91;
    if (v38)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

  v46 = (v75 + 64);
  v47 = (v9 + 64);
  v48 = ((1 << *(v75 + 32)) + 63) >> 6;
  v70 = v9 + 64;
  if (v75 != v9 || v46 >= &v47[8 * v48])
  {
    memmove(v46, v47, 8 * v48);
  }

  v49 = 0;
  *(v75 + 16) = *(v9 + 16);
  v50 = 1 << *(v9 + 32);
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  else
  {
    v51 = -1;
  }

  v52 = v51 & *(v9 + 64);
  v53 = (v50 + 63) >> 6;
  v71 = v53;
  if (v52)
  {
    do
    {
      v54 = __clz(__rbit64(v52));
      v74 = (v52 - 1) & v52;
LABEL_50:
      v57 = v54 | (v49 << 6);
      v58 = 16 * v57;
      v59 = (*(v9 + 48) + 16 * v57);
      v60 = *v59;
      v61 = v59[1];
      v57 *= 40;
      v62 = (*(v9 + 56) + v57);
      v63 = *v62;
      v72 = v62[1];
      v64 = v72;
      v73 = v61;
      v66 = v62[2];
      v65 = v62[3];
      v10 = v62[4];
      v67 = v75;
      v68 = (*(v75 + 48) + v58);
      *v68 = v60;
      v68[1] = v61;
      v69 = (*(v67 + 56) + v57);
      *v69 = v63;
      v69[1] = v64;
      v69[2] = v66;
      v69[3] = v65;
      v69[4] = v10;

      v53 = v71;
      v52 = v74;
    }

    while (v74);
  }

  v55 = v49;
  while (1)
  {
    v49 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    if (v49 >= v53)
    {
      goto LABEL_52;
    }

    v56 = *(v70 + 8 * v49);
    ++v55;
    if (v56)
    {
      v54 = __clz(__rbit64(v56));
      v74 = (v56 - 1) & v56;
      goto LABEL_50;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

size_t sub_1D5D5F2B8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1D5D5F4F4();
  sub_1D5C28DE4(0, &qword_1EDF338D0, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatObject);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_1D5C28DE4(0, &qword_1EDF338D0, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatObject);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1D5D5F4F4()
{
  if (!qword_1EDF19980)
  {
    sub_1D5C28DE4(255, &qword_1EDF338D0, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatObject);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19980);
    }
  }
}

uint64_t sub_1D5D5F584(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

size_t sub_1D5D5F614(size_t a1, int64_t a2, char a3)
{
  result = sub_1D5BFBCE4(a1, a2, a3, *v3, &qword_1EDF197D8, type metadata accessor for FormatCompilerOptions, type metadata accessor for FormatCompilerOptions);
  *v3 = result;
  return result;
}

uint64_t sub_1D5D5F6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v36 = a3;
  sub_1D5B4BDE4(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v33 - v11;
  sub_1D5D5FB44();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 56);
  sub_1D5D5FBC4(a1, v16);
  sub_1D5D5FBC4(a2, &v16[v18]);
  v19 = sub_1D725B76C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v16, 1, v19) == 1)
  {
    if (v21(&v16[v18], 1, v19) != 1)
    {
      sub_1D5D5FBC4(a2, v36);
LABEL_6:
      sub_1D5FC6B34(&v16[v18]);
      return sub_1D5FC6B34(v16);
    }
  }

  else
  {
    sub_1D5D5FBC4(v16, v12);
    if (v21(&v16[v18], 1, v19) == 1)
    {
      sub_1D5D5FBC4(a1, v36);
      (*(v20 + 8))(v12, v19);
      goto LABEL_6;
    }

    sub_1D5D5FBC4(&v16[v18], v8);
    v23 = *(v20 + 88);
    v24 = v23(v12, v19);
    if (v24 == *MEMORY[0x1E69D6A48])
    {
      v25 = *(v20 + 96);
      v35 = v24;
      v33 = v25;
      v25(v12, v19);
      v34 = *(*v12 + 16);
      v26 = v23(v8, v19);
      if (v26 == v35)
      {
        v33(v8, v19);
        v27 = *(*v8 + 16);

        v28 = v34;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v28;
        sub_1D5FC6BAC(v27, sub_1D5FC5A1C, 0, isUniquelyReferenced_nonNull_native, &v37);
        v30 = swift_allocObject();

        *(v30 + 16) = v37;
        v31 = v36;
        *v36 = v30;
        (*(v20 + 104))(v31, v35, v19);
        (*(v20 + 56))(v31, 0, 1, v19);

        goto LABEL_6;
      }

      (*(v20 + 8))(v8, v19);
    }

    else
    {
      v32 = *(v20 + 8);
      v32(v8, v19);
      v32(v12, v19);
    }
  }

  sub_1D5D5FBC4(a1, v36);
  return sub_1D5D5FC44(v16);
}

uint64_t sub_1D5D5FB0C()
{

  return swift_deallocObject();
}

void sub_1D5D5FB44()
{
  if (!qword_1EDF3BA98)
  {
    sub_1D5B4BDE4(255, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF3BA98);
    }
  }
}

uint64_t sub_1D5D5FBC4(uint64_t a1, uint64_t a2)
{
  sub_1D5B4BDE4(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5D5FC44(uint64_t a1)
{
  sub_1D5D5FB44();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5D5FCB8(uint64_t result, uint64_t a2, uint64_t (*a3)(char *, void))
{
  v4 = result;
  v5 = 0;
  v14 = a2;
  v6 = result + 56;
  v7 = 1 << *(result + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(result + 56);
  for (i = (v7 + 63) >> 6; v9; result = a3(&v13, *(*(v4 + 48) + (v12 | (v11 << 6)))))
  {
    v11 = v5;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= i)
    {

      return v14;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5D5FDA4(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1D62B5D30(a1, a2);
  }

  return a1;
}

uint64_t sub_1D5D5FDB4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (v3 == 5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D5B58150(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7273AE0;
  v8 = 0x74756F79616CLL;
  v9 = 0x6C6C6177796170;
  v10 = 0xE500000000000000;
  v11 = 0x656D656874;
  if (v3 != 4)
  {
    v11 = 0x756F72676B636162;
    v10 = 0xEA0000000000646ELL;
  }

  if (v3 == 3)
  {
    v10 = 0xE700000000000000;
  }

  else
  {
    v9 = v11;
  }

  v12 = 0x726564616568;
  if (v3 != 1)
  {
    v12 = 0x7265746F6F66;
  }

  if (v3)
  {
    v8 = v12;
  }

  if (v3 <= 2)
  {
    v13 = v8;
  }

  else
  {
    v13 = v9;
  }

  if (v3 <= 2)
  {
    v14 = 0xE600000000000000;
  }

  else
  {
    v14 = v10;
  }

  MEMORY[0x1DA6F9910](v13, v14);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  MEMORY[0x1DA6F9910](a1, a2);
  result = v7;
  *(v7 + 32) = 0x2D6567616B636170;
  *(v7 + 40) = 0xE800000000000000;
  return result;
}

uint64_t sub_1D5D5FF50()
{
  v1 = sub_1D72585BC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](*(v6 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v10 = *(v2 + 16);
    v8 = v2 + 16;
    v9 = v10;
    v11 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v5, v11, v1);
      sub_1D5B6CDCC(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
      sub_1D7261E8C();
      (*(v8 - 8))(v5, v1);
      v11 += v12;
      --v7;
    }

    while (v7);
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D5D600E0(uint64_t a1)
{
  v2 = type metadata accessor for FormatContent.Resolved();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D5D60170()
{
  result = qword_1EDF38320[0];
  if (!qword_1EDF38320[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDF38320);
  }

  return result;
}

uint64_t sub_1D5D6021C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1D5B860D0(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5D603F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = v17;
  v59 = a8;
  v56 = a4;
  v45[4] = *v17;
  v20 = *a7;
  v54 = a7[1];
  v55 = v20;
  v53 = *(a7 + 4);
  v52 = *(a7 + 5);
  v51 = *(a7 + 6);
  v21 = a11[1];
  v66 = *a11;
  v67 = v21;
  *v68 = a11[2];
  *&v68[10] = *(a11 + 42);
  *(v17 + 208) = 0u;
  v22 = (v17 + 208);
  v50 = *a9;
  v69 = 1;
  *(v17 + 224) = 0u;
  *(v17 + 240) = 0u;
  *(v17 + 249) = 0u;
  *(v17 + 265) = 1;
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v57 = a5;
  v63 = a5;
  v64 = a6;
  v58 = a6;

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  v65 = a1;
  v61 = a16;
  v62 = a17;
  v49 = a17;
  v48 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  v46 = 0;
  v45[5] = a15;
  v65 = sub_1D5B874E4(sub_1D5D61998, v60, v48, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v23);
  sub_1D5BBE0A8();
  sub_1D5D60824(&qword_1EDF3C840, 255, sub_1D5BBE0A8);
  v24 = sub_1D7261F3C();
  v26 = v25;

  MEMORY[0x1DA6F9910](v24, v26);

  v27 = v64;
  *(v17 + 32) = v63;
  *(v17 + 40) = v27;
  v28 = v49;
  v29 = sub_1D5D6086C(a1, a13, a14);
  v31 = v30;

  *(v18 + 136) = v29;
  *(v18 + 144) = v31;
  v63 = a1;
  MEMORY[0x1EEE9AC00](v32, v33);
  v45[2] = a16;
  v45[3] = v28;
  v34 = type metadata accessor for FeedItem(0);
  v35 = v46;
  v37 = sub_1D5B874E4(sub_1D5D63738, v45, v48, v34, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v36);
  if (v35)
  {

    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {
    v38 = v56;
    *(v18 + 64) = v37;
    *(v18 + 72) = v38;
    v39 = v58;
    *(v18 + 48) = v57;
    *(v18 + 56) = v39;
    v40 = v54;
    *(v18 + 80) = v55;
    *(v18 + 96) = v40;
    v41 = v52;
    *(v18 + 112) = v53;
    *(v18 + 120) = v41;
    *(v18 + 128) = v51;
    *(v18 + 152) = v59;
    *(v18 + 160) = v50;
    v42 = *(a10 + 16);
    *(v18 + 168) = *a10;
    *(v18 + 184) = v42;
    *(v18 + 200) = *(a10 + 32);
    swift_beginAccess();
    v43 = v67;
    *v22 = v66;
    v22[1] = v43;
    v22[2] = *v68;
    *(v22 + 42) = *&v68[10];
    *(v18 + 272) = a12;
    return v18;
  }

  return result;
}

uint64_t sub_1D5D60824(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D5D6086C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D72627FC();
  swift_getWitnessTable();
  sub_1D726242C();
  sub_1D5BBE0A8();
  sub_1D5D60824(&qword_1EDF3C840, 255, sub_1D5BBE0A8);
  v5 = sub_1D7261F3C();
  v7 = v6;

  if (a3)
  {
    sub_1D7263D4C();

    v8 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v8);

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v5, v7);

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](a2, a3);
  }

  else
  {
    v9 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v9);

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v5, v7);
  }

  return 0x6E6F697369766572;
}

void sub_1D5D60AB4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D5D60B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, id a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v69 = a9;
  v68 = a4;
  v21 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = (&v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5CEB7B8(a1, v24, type metadata accessor for FormatContentSlotItemObject.Resolved);
  if (swift_getEnumCaseMultiPayload() >= 9)
  {
    *&v67 = a13;
    v27 = *v24;
    v26 = v24[1];
    v28 = MEMORY[0x1E69E6158];
    sub_1D5D56DE0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1D7270C10;
    *(v29 + 32) = a2;
    *(v29 + 40) = a3;
    *(v29 + 48) = v27;
    *(v29 + 56) = v26;
    v70 = v29;
    sub_1D5D56DE0(0, &qword_1EDF43BA0, v28, MEMORY[0x1E69E62F8]);
    sub_1D5D56E30(&qword_1EDF3C840, &qword_1EDF43BA0, v28);

    v30 = sub_1D7261F3C();
    v32 = v31;

    v70 = v68;
    MEMORY[0x1EEE9AC00](v33, v34);
    v35 = v67;
    *(&v67 - 6) = a12;
    *(&v67 - 5) = v35;
    *(&v67 - 4) = a14;
    *(&v67 - 3) = v30;
    *(&v67 - 2) = v32;
    sub_1D725CE8C();
    sub_1D72627FC();
    swift_getWitnessTable();
    v36 = sub_1D726242C();

    goto LABEL_26;
  }

  v68 = a2;
  sub_1D5BCA74C(v24, type metadata accessor for FormatContentSlotItemObject.Resolved);
  if (a6)
  {
    if (FormatContentSlotItemObject.Resolved.identifier.getter() == a5 && v25 == a6)
    {
    }

    else
    {
      v38 = sub_1D72646CC();

      if ((v38 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    if (sub_1D5BE240C(a7, a8, a10))
    {
      sub_1D5D56DE0(0, &unk_1EDF198E0, &type metadata for SlotReference, MEMORY[0x1E69E6F90]);
      result = swift_allocObject();
      v36 = result;
      *(result + 16) = xmmword_1D7273AE0;
      *(result + 32) = a7;
      *(result + 40) = a8;
      v39 = MEMORY[0x1E69E7CC0];
      *(result + 48) = MEMORY[0x1E69E7CD0];
      *(result + 56) = v39;
      *(result + 64) = 0;
      *(result + 72) = 0;
      goto LABEL_26;
    }
  }

LABEL_11:
  v40 = MEMORY[0x1E69E6F90];
  sub_1D5D56DE0(0, &unk_1EDF198E0, &type metadata for SlotReference, MEMORY[0x1E69E6F90]);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1D7273AE0;
  v41 = MEMORY[0x1E69E6158];
  sub_1D5D56DE0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], v40);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1D7270C10;
  *(v42 + 32) = v68;
  *(v42 + 40) = a3;

  *(v42 + 48) = FormatContentSlotItemObject.Resolved.identifier.getter();
  *(v42 + 56) = v43;
  v70 = v42;
  sub_1D5D56DE0(0, &qword_1EDF43BA0, v41, MEMORY[0x1E69E62F8]);
  sub_1D5D56E30(&qword_1EDF3C840, &qword_1EDF43BA0, v41);
  v68 = sub_1D7261F3C();
  v45 = v44;

  v46 = a11[5];
  v47 = FormatContentSlotItemObject.Resolved.identifier.getter();
  if (*(v46 + 16))
  {
    v49 = sub_1D5B69D90(v47, v48);
    v51 = v50;

    if (v51)
    {
      v52 = *(*(v46 + 56) + 8 * v49);

      goto LABEL_16;
    }
  }

  else
  {
  }

  v52 = MEMORY[0x1E69E7CD0];
LABEL_16:
  v53 = a11[6];
  v54 = FormatContentSlotItemObject.Resolved.identifier.getter();
  if (!*(v53 + 16))
  {

    goto LABEL_20;
  }

  v56 = sub_1D5B69D90(v54, v55);
  v58 = v57;

  if ((v58 & 1) == 0)
  {
LABEL_20:
    v59 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  v59 = *(*(v53 + 56) + 8 * v56);

LABEL_21:
  v60 = a11[7];
  v61 = FormatContentSlotItemObject.Resolved.identifier.getter();
  if (*(v60 + 16))
  {
    v63 = sub_1D5B69D90(v61, v62);
    v65 = v64;

    v66 = 0uLL;
    if (v65)
    {
      v67 = *(*(v60 + 56) + 16 * v63);

      v66 = v67;
    }
  }

  else
  {

    v66 = 0uLL;
  }

  *(v36 + 32) = v68;
  *(v36 + 40) = v45;
  *(v36 + 48) = v52;
  *(v36 + 56) = v59;
  *(v36 + 64) = v66;
LABEL_26:
  *v69 = v36;
  return result;
}

id FormatContentSlotItemObject.Resolved.identifier.getter()
{
  v1 = type metadata accessor for FormatCustomItem.Resolved();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PuzzleStatistic();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatWebEmbed.Resolved();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5CEC870(v0, v16, type metadata accessor for FormatContentSlotItemObject.Resolved);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1D5CE4A7C(v16, v12, type metadata accessor for FormatWebEmbed.Resolved);
        v18 = *v12;

        v19 = type metadata accessor for FormatWebEmbed.Resolved;
        v20 = v12;
LABEL_19:
        sub_1D5CE5C1C(v20, v19);
        return v18;
      }

      goto LABEL_15;
    }

    if (!EnumCaseMultiPayload)
    {
LABEL_15:
      v21 = [*v16 identifier];
      v18 = sub_1D726207C();
      swift_unknownObjectRelease();

      return v18;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload != 5)
    {
      sub_1D5CE4A7C(v16, v8, type metadata accessor for PuzzleStatistic);
      v18 = PuzzleStatistic.identifier.getter();
      v19 = type metadata accessor for PuzzleStatistic;
      v20 = v8;
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 7)
  {
LABEL_17:
    v22 = *v16;
    v23 = [*v16 identifier];
    v18 = sub_1D726207C();

    return v18;
  }

  if (EnumCaseMultiPayload == 8)
  {
    sub_1D5CE4A7C(v16, v4, type metadata accessor for FormatCustomItem.Resolved);
    v18 = *v4;

    v19 = type metadata accessor for FormatCustomItem.Resolved;
    v20 = v4;
    goto LABEL_19;
  }

  return *v16;
}

char *sub_1D5D6149C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D5B5A7F0(0, &unk_1EDF198E0, &type metadata for SlotReference, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed30FormatContentSlotItemAuxiliaryV8ResolvedVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D5D615EC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1D5D6162C()
{
  if (!qword_1EDF19960)
  {
    sub_1D5C28DE4(255, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19960);
    }
  }
}

void sub_1D5D616BC()
{
  if (!qword_1EDF19950)
  {
    sub_1D5C28DE4(255, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19950);
    }
  }
}

uint64_t sub_1D5D6174C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v34 = a5;
  v35 = a6;
  v33 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v30 - v15;
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    v27 = 0;
    return v27 & 1;
  }

  if (!v17 || a1 == a2)
  {
    v27 = 1;
    return v27 & 1;
  }

  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v22 = *(v9 + 16);
  v21 = v9 + 16;
  v23 = (v21 - 8);
  v31 = *(v21 + 56);
  v32 = v22;
  while (1)
  {
    v24 = v32;
    result = (v32)(v16, v19, v8);
    if (!v17)
    {
      break;
    }

    v26 = v21;
    v24(v13, v20, v8);
    sub_1D5B58B84(v33, v34);
    v27 = sub_1D7261FBC();
    v28 = *v23;
    (*v23)(v13, v8);
    v28(v16, v8);
    if (v27)
    {
      v20 += v31;
      v19 += v31;
      v29 = v17-- == 1;
      v21 = v26;
      if (!v29)
      {
        continue;
      }
    }

    return v27 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5D619B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for FeedItem(0);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2, v8);
  v11 = FeedItem.identifier.getter();
  v13 = v12;
  result = sub_1D5BDDCA8(v10);
  *a3 = v11;
  a3[1] = v13;
  return result;
}

uint64_t sub_1D5D61A80@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 24) + 16))(*(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t BlueprintItem<>.feedContextIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725CE7C();
  v7 = (*(a2 + 16))(v3, a2);
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t FeedItem.externalContentCacheIdentifier.getter()
{
  v1 = v0;
  v51 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v51, v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5A614(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v6 = v5;
  v7 = swift_allocObject();
  v50 = xmmword_1D7270C10;
  *(v7 + 16) = xmmword_1D7270C10;
  *(v7 + 32) = FeedItem.identifier.getter();
  *(v7 + 40) = v8;
  FeedItem.visibility.getter(&v70);
  v9 = v70;
  v52 = v6;
  if (v70 == 2)
  {
    v10 = 0xE700000000000000;
    v11 = 0x656C6269736976;
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v50;
    *(v12 + 32) = 0x6E6564646968;
    *(v12 + 40) = 0xE600000000000000;
    *&v62 = v9;
    *(v12 + 48) = FeedItemHiddenReason.description.getter();
    *(v12 + 56) = v13;
    *&v62 = v12;
    sub_1D5B5A614(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D5BB0AB8();
    v11 = sub_1D7261F3C();
    v10 = v14;
  }

  *(v7 + 48) = v11;
  *(v7 + 56) = v10;
  sub_1D5D62440(v9);
  *&v62 = v7;
  sub_1D5B5A614(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v16 = v15;
  v17 = sub_1D5BB0AB8();
  v18 = sub_1D7261F3C();
  v47 = v19;
  v48 = v18;

  v20 = sub_1D5D62450();
  v45 = v21;
  FeedItem.feedIssue.getter(v60);
  v68 = v60[6];
  v69[0] = v61[0];
  *(v69 + 9) = *(v61 + 9);
  v64 = v60[2];
  v65 = v60[3];
  v66 = v60[4];
  v67 = v60[5];
  v62 = v60[0];
  v63 = v60[1];
  enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0 = get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(&v62);
  v49 = v17;
  *&v50 = v16;
  v46 = v20;
  if (enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0 == 1)
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    goto LABEL_17;
  }

  v25 = v66;
  v58 = *(&v62 + 1);
  v59 = v63;

  MEMORY[0x1DA6F9910](36, 0xE100000000000000);
  if (v25 == 1)
  {
    FCIssue.issueCoverModel.getter(&v55);
    if (v57)
    {
      if (v57 != 1)
      {
        v26 = 0;
        goto LABEL_16;
      }

      v26 = 16448;
    }

    else
    {
      v26 = 64;
    }
  }

  else
  {
    FCIssue.issueCoverModel.getter(&v55);
    if (v57)
    {
      if (v57 != 1)
      {
        v26 = 4096;
        goto LABEL_16;
      }

      v26 = 20544;
    }

    else
    {
      v26 = 4160;
    }
  }

  sub_1D619CBDC(&v55);
LABEL_16:
  v55 = 91;
  v56 = 0xE100000000000000;
  v54 = v26;
  v53 = sub_1D713AFE4();
  v27 = sub_1D7261F3C();
  v29 = v28;

  MEMORY[0x1DA6F9910](v27, v29);

  MEMORY[0x1DA6F9910](93, 0xE100000000000000);
  MEMORY[0x1DA6F9910](v55, v56);

  sub_1D5D206DC(v60, &qword_1EDF34E30, &type metadata for FeedIssue, MEMORY[0x1E69E6720], sub_1D5B5A614);
  v23 = v58;
  v24 = v59;
LABEL_17:
  v30 = sub_1D5D6286C();
  v32 = v31;
  v33 = sub_1D5D62E34();
  v35 = v34;
  sub_1D5BC88C4(v1, v4, type metadata accessor for FeedItem);
  if (swift_getEnumCaseMultiPayload() == 11)
  {
    v55 = sub_1D725CC0C();
    sub_1D5E4049C();
    v36 = sub_1D7263ADC();
    v38 = v37;
  }

  else
  {
    sub_1D5BDDBE8(v4, type metadata accessor for FeedItem);
    v36 = 0;
    v38 = 0xE000000000000000;
  }

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1D7284F00;
  v40 = v47;
  *(v39 + 32) = v48;
  *(v39 + 40) = v40;
  v41 = v45;
  *(v39 + 48) = v46;
  *(v39 + 56) = v41;
  *(v39 + 64) = v23;
  *(v39 + 72) = v24;
  *(v39 + 80) = v30;
  *(v39 + 88) = v32;
  *(v39 + 96) = v33;
  *(v39 + 104) = v35;
  *(v39 + 112) = v36;
  *(v39 + 120) = v38;
  v55 = v39;
  v42 = sub_1D7261F3C();

  return v42;
}

uint64_t FeedItem.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BC88C4(v2, v15, type metadata accessor for FeedItem);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 3:
      sub_1D5BDDB20(v15, v11, type metadata accessor for FeedHeadline);
      v17 = *&v11[*(v8 + 52)];
      sub_1D5C00308(v17);
      v18 = type metadata accessor for FeedHeadline;
      v19 = v11;
      goto LABEL_8;
    case 5:
      v20 = *(v15 + 7);
      v37 = *(v15 + 6);
      v38[0] = v20;
      *(v38 + 9) = *(v15 + 121);
      v21 = *(v15 + 3);
      v33 = *(v15 + 2);
      v34 = v21;
      v22 = *(v15 + 5);
      v35 = *(v15 + 4);
      v36 = v22;
      v23 = *(v15 + 1);
      v31 = *v15;
      v32 = v23;
      result = sub_1D5ECF320(&v31);
      break;
    case 11:

      break;
    case 12:
      sub_1D5BDDB20(v15, v7, type metadata accessor for FeedRecipe);
      v17 = *(v7 + 6);
      sub_1D5C00308(v17);
      v18 = type metadata accessor for FeedRecipe;
      v19 = v7;
LABEL_8:
      result = sub_1D5BDDBE8(v19, v18);
      *a1 = v17;
      return result;
    case 13:
      goto LABEL_10;
    case 15:
      sub_1D5BF6680(*(v15 + 3), *(v15 + 4));
LABEL_10:
      swift_unknownObjectRelease();

      break;
    case 17:
      v24 = *(v15 + 13);
      v38[5] = *(v15 + 12);
      v38[6] = v24;
      v38[7] = *(v15 + 14);
      v39 = *(v15 + 30);
      v25 = *(v15 + 9);
      v38[1] = *(v15 + 8);
      v38[2] = v25;
      v26 = *(v15 + 11);
      v38[3] = *(v15 + 10);
      v38[4] = v26;
      v27 = *(v15 + 5);
      v35 = *(v15 + 4);
      v36 = v27;
      v28 = *(v15 + 7);
      v37 = *(v15 + 6);
      v38[0] = v28;
      v29 = *(v15 + 1);
      v31 = *v15;
      v32 = v29;
      v30 = *(v15 + 3);
      v33 = *(v15 + 2);
      v34 = v30;
      result = sub_1D5F2DFAC(&v31);
      break;
    case 18:
      break;
    default:
      result = sub_1D5BDDBE8(v15, type metadata accessor for FeedItem);
      break;
  }

  *a1 = 2;
  return result;
}

unint64_t sub_1D5D62440(unint64_t result)
{
  if (result != 2)
  {
    return sub_1D681BA6C(result);
  }

  return result;
}

uint64_t sub_1D5D62450()
{
  sub_1D5C1F744(0, &qword_1EDF343E0, type metadata accessor for SharedItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = v16 - v2;
  v4 = FeedItem.headline.getter();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (qword_1EDF2EB38 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDF2EB40;
  v7 = [v5 articleID];
  v8 = sub_1D726207C();
  v10 = v9;

  v16[1] = *(v6 + OBJC_IVAR____TtC8NewsFeed17SharedItemManager_lock);
  MEMORY[0x1EEE9AC00](v11, v12);
  v16[-4] = v6;
  v16[-3] = v8;
  v16[-2] = v10;
  sub_1D725A7BC();

  sub_1D725B7CC();

  v13 = type metadata accessor for SharedItem();
  if ((*(*(v13 - 8) + 48))(v3, 1, v13) == 1)
  {
    sub_1D5D206DC(v3, &qword_1EDF343E0, type metadata accessor for SharedItem, MEMORY[0x1E69E6720], sub_1D5C1F744);
    v14 = 0;
  }

  else
  {
    v14 = sub_1D72583DC();
    sub_1D5BDDBE8(v3, type metadata accessor for SharedItem);
  }

  swift_unknownObjectRelease();
  return v14;
}

__n128 FeedItem.feedIssue.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (v17.n128_u64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5BC88C4(v2, v7, type metadata accessor for FeedItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (((1 << EnumCaseMultiPayload) & 0x3FFDF) != 0)
  {
    sub_1D5BDDBE8(v7, type metadata accessor for FeedItem);
  }

  else if (EnumCaseMultiPayload == 5)
  {
    v13 = v7[7];
    v23 = v7[6];
    v24[0] = v13;
    *(v24 + 9) = *(v7 + 121);
    v14 = v7[3];
    v19 = v7[2];
    v20 = v14;
    v15 = v7[5];
    v21 = v7[4];
    v22 = v15;
    v16 = *(v7 + 1);
    v17 = *v7;
    v18 = v16;
    nullsub_1(&v17);
    goto LABEL_4;
  }

  sub_1D5D62850(&v17);
LABEL_4:
  v9 = v24[0];
  *(a1 + 96) = v23;
  *(a1 + 112) = v9;
  *(a1 + 121) = *(v24 + 9);
  v10 = v20;
  *(a1 + 32) = v19;
  *(a1 + 48) = v10;
  v11 = v22;
  *(a1 + 64) = v21;
  *(a1 + 80) = v11;
  result = v18;
  *a1 = v17;
  *(a1 + 16) = result;
  return result;
}

double sub_1D5D62850(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 121) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1D5D6286C()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1D5C1F744(0, &qword_1EDF43990, MEMORY[0x1E69B3E58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v18 - v3;
  sub_1D5C1F744(0, qword_1EDF42030, type metadata accessor for FeedHeadline, v0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for FeedHeadline(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  FeedItem.feedHeadline.getter(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D5D206DC(v8, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720], sub_1D5C1F744);
    return 0;
  }

  else
  {
    sub_1D5BDDB20(v8, v13, type metadata accessor for FeedHeadline);
    v15 = MEMORY[0x1E69B3E58];
    sub_1D5D62DB4(&v13[*(v9 + 44)], v4, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
    v16 = sub_1D726045C();
    v17 = (*(*(v16 - 8) + 48))(v4, 1, v16);
    sub_1D5D206DC(v4, &qword_1EDF43990, v15, MEMORY[0x1E69E6720], sub_1D5C1F744);
    sub_1D5BDDBE8(v13, type metadata accessor for FeedHeadline);
    if (v17 == 1)
    {
      return 0;
    }

    else
    {
      return 0x644165766974616ELL;
    }
  }
}

uint64_t FeedItem.feedHeadline.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BC88C4(v2, v11, type metadata accessor for FeedItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 5) < 0xD || EnumCaseMultiPayload <= 2)
  {
    sub_1D5BDDBE8(v11, type metadata accessor for FeedItem);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D5BDDB20(v11, a1, type metadata accessor for FeedHeadline);
      v16 = type metadata accessor for FeedHeadline(0);
      return (*(*(v16 - 8) + 56))(a1, 0, 1, v16);
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_1D5BDDB20(v11, v7, type metadata accessor for FeedWebEmbed);
      sub_1D5D62DB4(&v7[*(v4 + 48)], a1, qword_1EDF42030, type metadata accessor for FeedHeadline);
      return sub_1D5BDDBE8(v7, type metadata accessor for FeedWebEmbed);
    }
  }

  v14 = type metadata accessor for FeedHeadline(0);
  return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
}

uint64_t sub_1D5D62DB4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5C1F744(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5D62E34()
{
  v0 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v45 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1D5C1F744(0, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult, MEMORY[0x1E69E6720]);
  v46 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for PuzzleStatistic();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C1F744(0, qword_1EDF37F78, type metadata accessor for FeedPuzzleStatistic, v6);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v43 - v17;
  v19 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v43 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v43 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v43 - v33;
  FeedItem.feedPuzzleStatistic.getter(v18);
  v35 = type metadata accessor for FeedPuzzleStatistic();
  if ((*(*(v35 - 8) + 48))(v18, 1, v35) == 1)
  {
    sub_1D5D206DC(v18, qword_1EDF37F78, type metadata accessor for FeedPuzzleStatistic, MEMORY[0x1E69E6720], sub_1D5C1F744);
    return 0;
  }

  else
  {
    sub_1D5BC88C4(&v18[*(v35 + 32)], v14, type metadata accessor for PuzzleStatistic);
    sub_1D5BDDBE8(v18, type metadata accessor for FeedPuzzleStatistic);
    sub_1D5BC88C4(&v14[*(v11 + 20)], v30, type metadata accessor for PuzzleStatisticCategory);
    sub_1D5BDDBE8(v14, type metadata accessor for PuzzleStatistic);
    sub_1D5BDDB20(v30, v34, type metadata accessor for PuzzleStatisticCategory);
    sub_1D5BC88C4(v34, v26, type metadata accessor for PuzzleStatisticCategory);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1D67B7068(v26, v10);
      sub_1D681BB2C(&qword_1EC88C668, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      v47 = sub_1D726394C();
      v36 = sub_1D72644BC();
      sub_1D5D206DC(v10, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult, MEMORY[0x1E69E6720], sub_1D5C1F744);
      v37 = v34;
    }

    else
    {
      v47 = 0;
      v48 = 0xE000000000000000;
      sub_1D5BC88C4(v34, v22, type metadata accessor for PuzzleStatisticCategory);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 2) >= 2)
      {
        if (EnumCaseMultiPayload)
        {
          v39 = v45;
          sub_1D5BDDB20(v22, v45, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
          PuzzleStatisticValue.primaryValue.getter();
          v40 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
        }

        else
        {
          v39 = v44;
          sub_1D5BDDB20(v22, v44, type metadata accessor for PuzzleStatisticValue);
          PuzzleStatisticValue.primaryValue.getter();
          v40 = type metadata accessor for PuzzleStatisticValue;
        }

        sub_1D5BDDBE8(v39, v40);
      }

      else
      {
        sub_1D5BDDBE8(v22, type metadata accessor for PuzzleStatisticCategory);
      }

      v41 = sub_1D7262A9C();
      MEMORY[0x1DA6F9910](v41);

      v36 = v47;
      sub_1D5BDDBE8(v34, type metadata accessor for PuzzleStatisticCategory);
      v37 = v26;
    }

    sub_1D5BDDBE8(v37, type metadata accessor for PuzzleStatisticCategory);
  }

  return v36;
}

uint64_t FeedItem.feedPuzzleStatistic.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BC88C4(v2, v7, type metadata accessor for FeedItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 0x10)
  {
    goto LABEL_2;
  }

  if (EnumCaseMultiPayload == 16)
  {
    sub_1D5BDDB20(v7, a1, type metadata accessor for FeedPuzzleStatistic);
    v9 = 0;
    goto LABEL_4;
  }

  if (EnumCaseMultiPayload == 17)
  {
LABEL_2:
    sub_1D5BDDBE8(v7, type metadata accessor for FeedItem);
  }

  v9 = 1;
LABEL_4:
  v10 = type metadata accessor for FeedPuzzleStatistic();
  return (*(*(v10 - 8) + 56))(a1, v9, 1, v10);
}

uint64_t sub_1D5D635D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PuzzleStatistic();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5D63694(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PuzzleStatistic();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1D5D6377C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void), void (*a5)(char *, char *))
{
  v28 = a4;
  v29 = a5;
  v7 = a2(0);
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v26 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v26 - v17;
  v19 = 0;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a1 + 56);
  v23 = (v20 + 63) >> 6;
  while (v22)
  {
    v24 = v19;
LABEL_9:
    v25 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    sub_1D5BE8DD8(*(a1 + 48) + *(v27 + 72) * (v25 | (v24 << 6)), v18, a3);
    sub_1D5BF4A2C(v18, v10, v28);
    v29(v14, v10);
    sub_1D5BEA7D0(v14, a3);
  }

  while (1)
  {
    v24 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return;
    }

    v22 = *(a1 + 56 + 8 * v24);
    ++v19;
    if (v22)
    {
      v19 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t FormatDecorationProviderFactory.create(content:regions:options:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v13 = MEMORY[0x1E69E7CD0];
  if (a2 >> 62)
  {
LABEL_14:
    v6 = sub_1D7263BFC();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA6FB460](v7, a2);
          v8 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_11:
            __break(1u);
LABEL_12:
            v10 = v13;
            goto LABEL_16;
          }
        }

        else
        {
          if (v7 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_14;
          }

          v8 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_11;
          }
        }

        sub_1D5D63A8C(v9);

        ++v7;
        if (v8 == v6)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v10 = MEMORY[0x1E69E7CD0];
LABEL_16:
  v11 = FormatDecorationProviderFactory.create(content:groupItems:options:)(a1, v10, a3);

  return v11;
}

uint64_t FormatDecorationProviderFactory.create(content:groupItems:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FormatContent.Resolved();
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D63D9C(a1, v11);
  v57 = *(v3 + 112);
  v12 = *(v3 + 96);
  v55 = *(v3 + 80);
  v56 = v12;
  v13 = *(v3 + 64);
  v53 = *(v3 + 48);
  v54 = v13;
  v52 = *(v3 + 32);
  v15 = *(v3 + 16);
  v14 = *(v3 + 24);
  v16 = *(v8 + 40);
  v17 = *&v11[v16];
  v18 = *&v11[*(v8 + 44)];
  v19 = *(v18 + 16);
  if (v19)
  {
    v38 = *&v11[v16];
    v41 = v11;
    v42 = a3;
    v43 = a2;
    v51 = MEMORY[0x1E69E7CC0];
    v39 = v15;
    v20 = v15;
    sub_1D5CF6A5C(&v52, &v46);
    v40 = v14;
    v21 = v14;
    sub_1D7263ECC();
    v22 = (v18 + 32);
    v44 = v19 - 1;
    while (1)
    {
      v46 = *v22;
      v24 = v22[3];
      v23 = v22[4];
      v25 = v22[2];
      v47 = v22[1];
      v48 = v25;
      v49 = v24;
      v50 = v23;
      sub_1D5CE9930(&v46, &v45);

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      if (!v44)
      {
        break;
      }

      --v44;
      v22 += 5;
    }

    v26 = v51;
    a3 = v42;
    a2 = v43;
    v14 = v40;
    v11 = v41;
    v17 = v38;
    v15 = v39;
  }

  else
  {
    v27 = v15;
    sub_1D5CF6A5C(&v52, &v46);
    v28 = v14;
    v26 = MEMORY[0x1E69E7CC0];
  }

  *&v46 = v17;

  sub_1D5D63E00(v26);
  v29 = v46;
  v30 = type metadata accessor for FormatLogger();
  inited = swift_initStaticObject();
  *(&v47 + 1) = v30;
  *&v48 = &protocol witness table for FormatLogger;
  *&v46 = inited;
  type metadata accessor for FormatDecorationProvider();
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  *(v32 + 24) = v15;
  v33 = v55;
  *(v32 + 64) = v54;
  *(v32 + 80) = v33;
  *(v32 + 96) = v56;
  v34 = v57;
  v35 = v53;
  *(v32 + 32) = v52;
  *(v32 + 48) = v35;
  *(v32 + 112) = v34;
  *(v32 + 120) = a3;
  *(v32 + 128) = a2;
  *(v32 + 136) = v14;
  sub_1D5B7DDE8(&v46, v32 + 144);
  *(v32 + 184) = 0;

  sub_1D5D600E0(v11);
  return v32;
}

uint64_t sub_1D5D63D9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatContent.Resolved();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5D63E2C(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_1D7263BFC();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_1D7263BFC();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D5D63F2C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7263BFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7263BFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D5B59538(0, &unk_1EDF3C8B0, type metadata accessor for FormatPackageInventory, MEMORY[0x1E69E62F8]);
          sub_1D609C86C(&qword_1EC8832B8, &unk_1EDF3C8B0, type metadata accessor for FormatPackageInventory);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D6D876E0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for FormatPackageInventory();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5D6413C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, void (*a5)(uint64_t *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v107 = a6;
  v108 = a5;
  v105 = a4;
  v97 = a3;
  v99 = a2;
  v98 = a1;
  v106 = a7;
  v103 = *v7;
  v9 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v104 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BFCA6C(0, &qword_1EDF42AD0, type metadata accessor for FeedLayoutSolverOptions.PluginOptions);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v94 = v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v113 = v84 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v93 = v84 - v20;
  v21 = type metadata accessor for FeedLayoutSolverOptions(0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v84 - v27;
  v111 = sub_1D7259F5C();
  v29 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v30);
  v32 = v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1D7259CFC();
  v33 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110, v34);
  v36 = v84 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37, v38);
  v41 = *(v40 + 16);
  v100 = v84 - v42;
  v41(v39);
  sub_1D5B68374(v8 + *(*v8 + 104), &v118);
  v43 = *(*v8 + 200);
  swift_beginAccess();
  v84[1] = v43;
  v112 = *(v8 + v43);
  v44 = *v8;
  v85 = *(*v8 + 208);
  v96 = *(v8 + v85);
  v45 = *(v33 + 16);
  v46 = v8 + *(v44 + 112);
  v101 = v36;
  v45(v36, v46, v110);
  v47 = *(v29 + 16);
  v48 = v8 + *(*v8 + 120);
  v102 = v32;
  v47(v32, v48, v111);
  sub_1D5BE6528(v8 + *(*v8 + 128), v24, type metadata accessor for FeedLayoutSolverOptions);
  v49 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  v50 = *(v49 - 8);
  v51 = *(v50 + 56);
  v52 = v93;
  v51(v93, 1, 1, v49);
  v95 = v21;
  v110 = *&v24[*(v21 + 44)];
  v92 = v24[17];
  v91 = v24[18];
  v90 = v24[19];
  v89 = v24[20];
  v88 = v24[21];
  v87 = v24[22];
  v86 = v24[23];
  v111 = *(v24 + 3);
  v53 = v94;
  sub_1D5D4BD04(v52, v94);
  v54 = *(v50 + 48);
  if (v54(v53, 1, v49) == 1)
  {
    v55 = v95;
    sub_1D5D4C27C(&v24[v95[9]], v113, &qword_1EDF42AD0, type metadata accessor for FeedLayoutSolverOptions.PluginOptions);
    v56 = v54(v53, 1, v49);

    sub_1D5C07390(v111);
    if (v56 != 1)
    {
      sub_1D5BF00B8(v53, &qword_1EDF42AD0, type metadata accessor for FeedLayoutSolverOptions.PluginOptions);
    }
  }

  else
  {
    v57 = v113;
    sub_1D5BE66EC(v53, v113, type metadata accessor for FeedLayoutSolverOptions.PluginOptions);
    v51(v57, 0, 1, v49);

    sub_1D5C07390(v111);
    v55 = v95;
  }

  if (v97)
  {
    v58 = 0;
  }

  else
  {
    v58 = v98;
  }

  if (v97)
  {
    v59 = 0;
  }

  else
  {
    v59 = v99;
  }

  v60 = &v24[v55[10]];
  v61 = *v60;
  v62 = v60[1];
  v63 = v55[12];
  v64 = v55;
  v65 = *&v24[v55[13]];
  v99 = *&v24[v63];
  LODWORD(v98) = v24[v63 + 8];
  sub_1D5D64C6C(v61, v62);
  sub_1D5BE67B4(v24, type metadata accessor for FeedLayoutSolverOptions);
  *&v28[v64[11]] = v110;
  *v28 = v58;
  *(v28 + 1) = v59;
  v28[16] = 0;
  v28[17] = v92;
  v28[18] = v91;
  v28[19] = v90;
  v28[20] = v89;
  v28[21] = v88;
  v28[22] = v87;
  v28[23] = v86;
  *(v28 + 3) = v111;
  sub_1D5D4BD04(v113, &v28[v64[9]]);
  v66 = &v28[v64[10]];
  *v66 = v61;
  v66[1] = v62;
  *&v28[v64[13]] = v65;
  v67 = &v28[v64[12]];
  *v67 = v99;
  v67[8] = v98;
  v68 = *(v8 + *(*v8 + 136));
  sub_1D5B68374(v8 + *(*v8 + 144), &v117);
  v69 = *(v8 + *(*v8 + 168));
  v70 = *(*v8 + 160);
  swift_beginAccess();
  v71 = *(v8 + v70);
  v72 = *v8;
  v116 = *(v8 + *(*v8 + 176));
  v73 = v104;
  sub_1D5BE6528(v8 + *(v72 + 184), v104, type metadata accessor for FeedContext);
  sub_1D5B68374(v8 + *(*v8 + 192), &v115);
  sub_1D5B68374(v8 + *(*v8 + 224), v114);
  v74 = swift_allocObject();

  v75 = v69;

  sub_1D5BF7590(v100, &v118, v112, v96, 0, v101, v102, v28, v68, &v117, v75, v71, &v116, v73, &v115, v114, v105 & 1);
  v119 = v74;
  v76 = v109;
  v108(&v119);
  v77 = v119;
  if (v76)
  {
  }

  v78 = *(*v119 + 160);
  swift_beginAccess();
  *(v8 + v70) = *(v77 + v78);

  swift_beginAccess();
  swift_beginAccess();

  sub_1D6E465A0(v79);
  result = swift_endAccess();
  v81 = *(v8 + v85);
  v82 = __OFADD__(v81, 1);
  v83 = v81 + 1;
  if (!v82)
  {
    *(v8 + v85) = v83;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5D64C6C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1D5D64C80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5D64CC8(uint64_t a1, uint64_t a2)
{
  result = sub_1D5D60824(qword_1EDF39748, a2, type metadata accessor for FeedGroupRegion);
  *(a1 + 8) = result;
  return result;
}

void sub_1D5D64D20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5D64D70(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D5D64DD0(uint64_t a1, uint64_t a2)
{
  sub_1D5D64E64(0, &unk_1EDF38310, sub_1D5D60170, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D5D64E64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5D64EC8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 16))(v1, v2);
}

unint64_t sub_1D5D64F20@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 112);
  v7 = *(*v1 + 120);
  v8 = *(*v1 + 128);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1D5D64F48(v2);
}

unint64_t sub_1D5D64F48(unint64_t result)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_1D5D64FDC()
{
  result = sub_1D725891C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D5D65058(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D605F9B0();
    v3 = sub_1D726412C();
    v4 = (a1 + 32);

    while (1)
    {
      v5 = *v4;

      result = sub_1D6D88EB4();
      if (v7)
      {
        break;
      }

      *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v3 + 56) + 8 * result) = v5;
      v8 = *(v3 + 16);
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      *(v3 + 16) = v10;
      ++v4;
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

uint64_t sub_1D5D65128(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v23 = a2;
  v5 = sub_1D725C38C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1D725C34C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1D725C36C();
  sub_1D725C39C();
  v22 = sub_1D726314C();
  result = sub_1D72638EC();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v14, v10);
  }

  if ((a4 & 1) == 0)
  {
    v17 = v23;
    if (v23)
    {
LABEL_9:

      sub_1D725C3CC();

      if ((*(v6 + 88))(v9, v5) == *MEMORY[0x1E69E93E8])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1D725C33C();
      _os_signpost_emit_with_name_impl(&dword_1D5B42000, v15, v22, v20, v17, v18, v19, 2u);
      MEMORY[0x1DA6FD500](v19, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v23 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v23 & 0xFFFFF800) != 0xD800)
  {
    if (v23 >> 16 <= 0x10)
    {
      v17 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D5D653D0()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_1D5D65404()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t sub_1D5D65438()
{
  v1 = *(*v0 + 136);

  return v1;
}

uint64_t sub_1D5D65494(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D654FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D65564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D655CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D5D65634()
{
  if (!qword_1EDF1A4B8)
  {
    sub_1D5B49474(255, qword_1EDF431A0);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A4B8);
    }
  }
}

uint64_t sub_1D5D656AC(uint64_t a1, char a2, void (*a3)(void), void (*a4)(uint64_t, _BYTE *))
{
  v5 = v4;
  v7 = *v4;
  a3(0);
  v35 = a2;
  result = sub_1D726410C();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v7 + 56) + 40 * v22;
      if (v35)
      {
        a4(v26, v37);
      }

      else
      {
        sub_1D5B68374(v26, v37);
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      result = sub_1D7264A5C();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      result = (a4)(v37, *(v9 + 56) + 40 * v17);
      ++*(v9 + 16);
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v5 = v9;
  return result;
}

__n128 sub_1D5D659A8@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 224);
  *a1 = *(v3 + 208);
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v3 + 240);
  result = *(v3 + 250);
  *(a1 + 42) = result;
  return result;
}

uint64_t FormatGroupCollection.subscript.getter(uint64_t a1)
{
  sub_1D5C8F9E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + 8);
  if (!*(v8 + 16))
  {
    return 0;
  }

  v9 = sub_1D5C5E034(a1);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v41 = MEMORY[0x1E69E7CC0];

    sub_1D5D65D3C(0, v12, 0);
    v13 = v41;
    v14 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v15 = *(v4 + 72);
    for (i = v12 - 1; ; --i)
    {
      sub_1D5C5DC00(v14, v7);
      v17 = v7[7];
      v38 = v7[6];
      v39 = v17;
      v40 = v7[8];
      v18 = v7[3];
      v34 = v7[2];
      v35 = v18;
      v19 = v7[5];
      v36 = v7[4];
      v37 = v19;
      v20 = v7[1];
      v32 = *v7;
      v33 = v20;
      sub_1D5D65D5C(&v32, v31);
      sub_1D5C5E444(v7);
      v41 = v13;
      v22 = *(v13 + 16);
      v21 = *(v13 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1D5D65D3C((v21 > 1), v22 + 1, 1);
        v13 = v41;
      }

      *(v13 + 16) = v22 + 1;
      v23 = (v13 + 144 * v22);
      v23[2] = v32;
      v24 = v33;
      v25 = v34;
      v26 = v36;
      v23[5] = v35;
      v23[6] = v26;
      v23[3] = v24;
      v23[4] = v25;
      v27 = v37;
      v28 = v38;
      v29 = v40;
      v23[9] = v39;
      v23[10] = v29;
      v23[7] = v27;
      v23[8] = v28;
      if (!i)
      {
        break;
      }

      v14 += v15;
    }
  }

  return v13;
}

char *sub_1D5D65BFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D5B5A7F0(0, &qword_1EDF199C0, &type metadata for FormatGroup, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D5D65D3C(char *a1, int64_t a2, char a3)
{
  result = sub_1D5D65BFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D5D65DDC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = MEMORY[0x1E69E6720];
  sub_1D5D66C28(0, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v130 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v127 - v12;
  sub_1D5D66C28(0, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet, v6);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v138 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v127 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v137 = (&v127 - v23);
  v136 = type metadata accessor for FormatCompilerSlotDefinition(0);
  v24 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136, v25);
  v144 = &v127 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154[3] = type metadata accessor for FormatLogger();
  v154[4] = &protocol witness table for FormatLogger;
  v154[0] = a2;
  a3[2] = a1;
  sub_1D5B68374(v154, (a3 + 3));
  v27 = a1 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions;
  v153 = *(a1 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions);
  sub_1D5D66C28(0, &qword_1EDF1B098, type metadata accessor for FormatCompilerProperty, MEMORY[0x1E69E62F8]);
  v29 = v28;
  v30 = sub_1D5D66C8C();
  v31 = sub_1D5D66D14(&qword_1EDF28988, type metadata accessor for FormatCompilerProperty);

  v141 = v31;
  v32 = sub_1D72623AC();
  v128 = a3;
  a3[8] = v32;
  v33 = *(v27 + 8);
  v132 = *(v33 + 16);
  if (!v132)
  {

    v125 = MEMORY[0x1E69E7CC8];
    v37 = MEMORY[0x1E69E7CC8];
    v36 = MEMORY[0x1E69E7CC8];
    v35 = MEMORY[0x1E69E7CC8];
LABEL_69:
    __swift_destroy_boxed_opaque_existential_1(v154);
    result = v128;
    v128[9] = v35;
    result[10] = v36;
    result[11] = v37;
    result[12] = v125;
    return result;
  }

  v139 = v30;
  v140 = v29;
  v135 = v20;
  v129 = v13;
  v127 = a1;
  v134 = v24;
  v133 = v33 + ((*(v24 + 80) + 32) & ~*(v24 + 80));

  v34 = 0;
  v143 = 0;
  v35 = MEMORY[0x1E69E7CC8];
  v36 = MEMORY[0x1E69E7CC8];
  v37 = MEMORY[0x1E69E7CC8];
  v38 = MEMORY[0x1E69E7CC8];
  v39 = v144;
  v131 = v33;
  while (1)
  {
    if (v34 >= *(v33 + 16))
    {
      goto LABEL_79;
    }

    v148 = v38;
    v40 = *(v134 + 72);
    v142 = v34;
    sub_1D5D66D5C(v133 + v40 * v34, v39);
    v153 = *(v39 + 48);
    v152 = sub_1D72623AC();
    v149 = *(v136 + 40);
    v41 = v137;
    sub_1D5D677C0(v39 + v149, v137, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
    v42 = type metadata accessor for FormatCompilerSlotDefinitionItemSet();
    v43 = *(*(v42 - 8) + 48);
    v44 = v43(v41, 1, v42);
    v147 = v37;
    if (v44 == 1)
    {
      sub_1D5D678AC(v41, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
      v151 = MEMORY[0x1E69E7CC8];
    }

    else
    {
      v45 = *v41;

      sub_1D5D67C90(v41, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
      v153 = v45;
      v151 = sub_1D72623AC();
    }

    v46 = v149;
    v47 = v135;
    sub_1D5D677C0(v144 + v149, v135, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
    if (v43(v47, 1, v42) == 1)
    {
      v48 = type metadata accessor for FormatCompilerSlotDefinitionItemSet;
      v49 = v47;
      v50 = qword_1EDF43EE0;
LABEL_12:
      sub_1D5D678AC(v49, v50, v48);
      v150 = MEMORY[0x1E69E7CC8];
      goto LABEL_14;
    }

    v51 = v129;
    sub_1D5D677C0(v47 + *(v42 + 20), v129, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
    sub_1D5D67C90(v47, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
    v52 = type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary();
    if ((*(*(v52 - 8) + 48))(v51, 1, v52) == 1)
    {
      v48 = type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary;
      v49 = v51;
      v50 = qword_1EDF43D48;
      goto LABEL_12;
    }

    v53 = *v51;

    sub_1D5D67C90(v51, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
    v153 = v53;
    v150 = sub_1D72623AC();

LABEL_14:
    v37 = v147;
    v54 = v138;
    sub_1D5D677C0(v144 + v46, v138, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
    if (v43(v54, 1, v42) == 1)
    {
      v55 = sub_1D5D678AC(v54, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
      v149 = MEMORY[0x1E69E7CC8];
      v57 = v144;
    }

    else
    {
      v58 = v130;
      sub_1D5D677C0(v54 + *(v42 + 20), v130, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
      sub_1D5D67C90(v54, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
      v59 = type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary();
      if ((*(*(v59 - 8) + 48))(v58, 1, v59) == 1)
      {
        v55 = sub_1D5D678AC(v58, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
        v149 = MEMORY[0x1E69E7CC8];
        v57 = v144;
      }

      else
      {
        v60 = *(v58 + 8);

        v55 = sub_1D5D67C90(v58, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
        v57 = v144;
        if (v60)
        {
          v153 = v60;
          v149 = sub_1D72623AC();
        }

        else
        {
          v149 = MEMORY[0x1E69E7CC8];
        }
      }

      v37 = v147;
    }

    if ((*(v57 + 64) & 0x8000000000000000) != 0)
    {
      goto LABEL_80;
    }

    MEMORY[0x1EEE9AC00](v55, v56);
    *(&v127 - 2) = v57;
    v61 = v143;
    v63 = sub_1D5D6791C(sub_1D5D67AA0, (&v127 - 4), 0, v62);
    v64 = v63;
    v146 = *(v63 + 16);
    v143 = v61;
    if (v146)
    {
      break;
    }

LABEL_3:
    v34 = v142 + 1;

    v39 = v144;
    sub_1D5D67C90(v144, type metadata accessor for FormatCompilerSlotDefinition);
    v33 = v131;
    v38 = v148;
    if (v34 == v132)
    {
      v125 = v148;

      goto LABEL_69;
    }
  }

  v65 = 0;
  v66 = (v63 + 40);
  v145 = v63;
  while (v65 < *(v64 + 16))
  {
    v68 = *(v66 - 1);
    v67 = *v66;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v153 = v35;
    v70 = sub_1D5B69D90(v68, v67);
    v72 = v35[2];
    v73 = (v71 & 1) == 0;
    v74 = __OFADD__(v72, v73);
    v75 = v72 + v73;
    if (v74)
    {
      goto LABEL_71;
    }

    v76 = v71;
    if (v35[3] < v75)
    {
      sub_1D5D67BA8(v75, isUniquelyReferenced_nonNull_native);
      v70 = sub_1D5B69D90(v68, v67);
      if ((v76 & 1) != (v77 & 1))
      {
        goto LABEL_81;
      }

LABEL_33:
      v78 = v153;
      if (v76)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_33;
    }

    v79 = v70;
    sub_1D6D7FBBC();
    v70 = v79;
    v78 = v153;
    if (v76)
    {
LABEL_34:
      *(v78[7] + 8 * v70) = v152;

      goto LABEL_38;
    }

LABEL_36:
    v78[(v70 >> 6) + 8] |= 1 << v70;
    v80 = (v78[6] + 16 * v70);
    *v80 = v68;
    v80[1] = v67;
    *(v78[7] + 8 * v70) = v152;
    v81 = v78[2];
    v74 = __OFADD__(v81, 1);
    v82 = v81 + 1;
    if (v74)
    {
      goto LABEL_75;
    }

    v78[2] = v82;

LABEL_38:

    v83 = swift_isUniquelyReferenced_nonNull_native();
    v153 = v36;
    v84 = sub_1D5B69D90(v68, v67);
    v86 = v36[2];
    v87 = (v85 & 1) == 0;
    v74 = __OFADD__(v86, v87);
    v88 = v86 + v87;
    if (v74)
    {
      goto LABEL_72;
    }

    v89 = v85;
    if (v36[3] < v88)
    {
      sub_1D5D67BA8(v88, v83);
      v84 = sub_1D5B69D90(v68, v67);
      if ((v89 & 1) != (v90 & 1))
      {
        goto LABEL_81;
      }

LABEL_43:
      v91 = v153;
      if (v89)
      {
        goto LABEL_44;
      }

      goto LABEL_46;
    }

    if (v83)
    {
      goto LABEL_43;
    }

    v92 = v84;
    sub_1D6D7FBBC();
    v84 = v92;
    v91 = v153;
    if (v89)
    {
LABEL_44:
      *(v91[7] + 8 * v84) = v151;

      goto LABEL_48;
    }

LABEL_46:
    v91[(v84 >> 6) + 8] |= 1 << v84;
    v93 = (v91[6] + 16 * v84);
    *v93 = v68;
    v93[1] = v67;
    *(v91[7] + 8 * v84) = v151;
    v94 = v91[2];
    v74 = __OFADD__(v94, 1);
    v95 = v94 + 1;
    if (v74)
    {
      goto LABEL_76;
    }

    v91[2] = v95;

LABEL_48:

    v96 = swift_isUniquelyReferenced_nonNull_native();
    v153 = v37;
    v97 = sub_1D5B69D90(v68, v67);
    v99 = v37[2];
    v100 = (v98 & 1) == 0;
    v74 = __OFADD__(v99, v100);
    v101 = v99 + v100;
    if (v74)
    {
      goto LABEL_73;
    }

    v102 = v98;
    if (v37[3] >= v101)
    {
      if ((v96 & 1) == 0)
      {
        v124 = v97;
        sub_1D6D7FBBC();
        v97 = v124;
      }
    }

    else
    {
      sub_1D5D67BA8(v101, v96);
      v97 = sub_1D5B69D90(v68, v67);
      if ((v102 & 1) != (v103 & 1))
      {
        goto LABEL_81;
      }
    }

    v104 = v153;
    v147 = v78;
    if (v102)
    {
      v105 = v91;
      v106 = v153;
      *(v153[7] + 8 * v97) = v150;
    }

    else
    {
      v153[(v97 >> 6) + 8] |= 1 << v97;
      v107 = (v104[6] + 16 * v97);
      *v107 = v68;
      v107[1] = v67;
      *(v104[7] + 8 * v97) = v150;
      v108 = v104[2];
      v74 = __OFADD__(v108, 1);
      v109 = v108 + 1;
      if (v74)
      {
        goto LABEL_77;
      }

      v105 = v91;
      v106 = v104;
      v104[2] = v109;
    }

    v110 = v148;
    v111 = swift_isUniquelyReferenced_nonNull_native();
    v153 = v110;
    v113 = sub_1D5B69D90(v68, v67);
    v114 = v110[2];
    v115 = (v112 & 1) == 0;
    v116 = v114 + v115;
    if (__OFADD__(v114, v115))
    {
      goto LABEL_74;
    }

    v117 = v112;
    if (v110[3] >= v116)
    {
      if ((v111 & 1) == 0)
      {
        sub_1D6D7FBBC();
      }
    }

    else
    {
      sub_1D5D67BA8(v116, v111);
      v118 = sub_1D5B69D90(v68, v67);
      if ((v117 & 1) != (v119 & 1))
      {
        goto LABEL_81;
      }

      v113 = v118;
    }

    v37 = v106;
    v36 = v105;
    if (v117)
    {

      v148 = v153;
      *(v153[7] + 8 * v113) = v149;

      v35 = v147;
    }

    else
    {
      v120 = v153;
      v153[(v113 >> 6) + 8] |= 1 << v113;
      v121 = (v120[6] + 16 * v113);
      *v121 = v68;
      v121[1] = v67;
      *(v120[7] + 8 * v113) = v149;
      v122 = v120[2];
      v74 = __OFADD__(v122, 1);
      v123 = v122 + 1;
      v35 = v147;
      if (v74)
      {
        goto LABEL_78;
      }

      v148 = v120;
      v120[2] = v123;
    }

    ++v65;
    v66 += 2;
    v64 = v145;
    if (v146 == v65)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

void sub_1D5D66C28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D5D66C8C()
{
  result = qword_1EDF1B090;
  if (!qword_1EDF1B090)
  {
    sub_1D5D66C28(255, &qword_1EDF1B098, type metadata accessor for FormatCompilerProperty, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B090);
  }

  return result;
}

uint64_t sub_1D5D66D14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5D66D5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatCompilerSlotDefinition(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FormatCompilerProperty.identifier.getter()
{
  sub_1D5B568D8(0, &qword_1EDF44038, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v57 = &v55 - v2;
  sub_1D5B568D8(0, &qword_1EDF44030, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v56 = &v55 - v5;
  sub_1D5B58DD8(0, qword_1EDF44050, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (&v55 - v8);
  sub_1D5B5681C(0, &qword_1EDF44020, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = (&v55 - v12);
  sub_1D5B5681C(0, &qword_1EDF44010, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = (&v55 - v16);
  sub_1D5B568D8(0, &qword_1EDF44040, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = (&v55 - v20);
  v22 = type metadata accessor for FormatCompilerEnumProperty(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = (&v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B58AF0();
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = (&v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B568D8(0, &qword_1EDF44028, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = (&v55 - v32);
  sub_1D5B5681C(0, &qword_1EDF44018, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = (&v55 - v36);
  v38 = type metadata accessor for FormatCompilerProperty(0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v55 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D675D0(v58, v41, type metadata accessor for FormatCompilerProperty);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1D5CB55A8(v41, v37);
        v43 = *v37;

        sub_1D5D676C0(v37);
        return v43;
      }

      sub_1D7077B70(v41, v33, &qword_1EDF44028, sub_1D5B5706C, &type metadata for FormatColor);
      v43 = *v33;

      v50 = v33;
      v51 = &qword_1EDF44028;
      v52 = sub_1D5B5706C;
      v53 = &type metadata for FormatColor;
LABEL_21:
      sub_1D7077BF4(v50, v51, v52, v53, type metadata accessor for FormatCompilerPrimitiveProperty);
      return v43;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_1D7077C50(v41, v29, sub_1D5B58AF0);
      v43 = *v29;

      sub_1D7077CB8(v29, sub_1D5B58AF0);
      return v43;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_1D7077C50(v41, v25, type metadata accessor for FormatCompilerEnumProperty);
      v43 = *v25;

      sub_1D7077CB8(v25, type metadata accessor for FormatCompilerEnumProperty);
      return v43;
    }

    v44 = &qword_1EDF44040;
    v45 = MEMORY[0x1E69E7DE0];
    v47 = sub_1D5B577E4;
    sub_1D7077B70(v41, v21, &qword_1EDF44040, sub_1D5B577E4, MEMORY[0x1E69E7DE0]);
    v43 = *v21;

    v50 = v21;
LABEL_19:
    v51 = v44;
    v52 = v47;
    v53 = v45;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      sub_1D5C4EA2C(v41, v9, qword_1EDF44050, type metadata accessor for FormatCompilerPrimitiveProperty, sub_1D5B58DD8);
      v43 = *v9;

      sub_1D5D67748(v9);
      return v43;
    }

    if (EnumCaseMultiPayload == 8)
    {
      v44 = &qword_1EDF44030;
      v45 = &type metadata for FormatFont;
      v46 = sub_1D5B55668;
      v47 = sub_1D5B55668;
      v48 = v41;
      v49 = v56;
    }

    else
    {
      v44 = &qword_1EDF44038;
      v45 = &type metadata for FormatAsyncImageContent;
      v46 = sub_1D5B57A00;
      v47 = sub_1D5B57A00;
      v48 = v41;
      v49 = v57;
    }

    sub_1D7077B70(v48, v49, v44, v46, v45);
    v43 = *v49;

    v50 = v49;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 5)
  {
    sub_1D6680CD4(v41, v17);
    v43 = *v17;

    sub_1D66810E4(v17);
  }

  else
  {
    sub_1D5CB5494(v41, v13);
    v43 = *v13;

    sub_1D5D67638(v13);
  }

  return v43;
}

uint64_t sub_1D5D67568(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D675D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D67638(uint64_t a1)
{
  sub_1D5C34074(0, &qword_1EDF44020, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatCompilerPrimitiveProperty);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5D676C0(uint64_t a1)
{
  sub_1D5C34074(0, &qword_1EDF44018, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatCompilerPrimitiveProperty);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5D67748(uint64_t a1)
{
  sub_1D5B58DD8(0, qword_1EDF44050, type metadata accessor for FormatCompilerPrimitiveProperty);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5D677C0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5D66C28(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5D67840(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D5B58F2C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5D678AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5D66C28(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5D6791C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v7 = a3;
  v25 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v25;
    v9 = a4;
    if (a4 <= v7)
    {
      v9 = v7;
    }

    v19 = v9 - v7 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v11 = v7;
      v22 = v7 + v8;
      a1(&v23, &v22);
      if (v4)
      {
        goto LABEL_22;
      }

      v13 = v23;
      v12 = v24;
      v25 = v6;
      v15 = *(v6 + 16);
      v14 = *(v6 + 24);
      if (v15 >= v14 >> 1)
      {
        v17 = v24;
        sub_1D5BFC364((v14 > 1), v15 + 1, 1);
        v12 = v17;
        v6 = v25;
      }

      *(v6 + 16) = v15 + 1;
      v16 = v6 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      if (a4 < v11)
      {
        goto LABEL_18;
      }

      if (v19 == ++v8)
      {
        goto LABEL_19;
      }

      v7 = v11;
      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_1D5D67AC0@<X0>(uint64_t *a1@<X8>)
{

  sub_1D72644BC();
  sub_1D5BF4D9C();
  v2 = sub_1D7263A6C();
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
  return result;
}

void sub_1D5D67BC0()
{
  if (!qword_1EDF1B908)
  {
    type metadata accessor for FormatCompilerProperty(255);
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B908);
    }
  }
}

void sub_1D5D67C28()
{
  if (!qword_1EDF1A3C0)
  {
    sub_1D5D67BC0();
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A3C0);
    }
  }
}

uint64_t sub_1D5D67C90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D67CF0(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v49 = MEMORY[0x1E69E7CC0];
  sub_1D5D67EC4(0, v5, 0);
  v6 = v49;
  v9 = (a3 + 32);
  for (i = v5 - 1; ; --i)
  {
    v11 = v9[5];
    v12 = v9[7];
    v46 = v9[6];
    v47 = v12;
    v13 = v9[7];
    v48 = v9[8];
    v14 = v9[1];
    v15 = v9[3];
    v42 = v9[2];
    v43 = v15;
    v16 = v9[3];
    v17 = v9[5];
    v44 = v9[4];
    v45 = v17;
    v18 = v9[1];
    v41[0] = *v9;
    v41[1] = v18;
    v37 = v46;
    v38 = v13;
    v39 = v9[8];
    v33 = v42;
    v34 = v16;
    v35 = v44;
    v36 = v11;
    v31 = v41[0];
    v32 = v14;
    sub_1D5D65D5C(v41, &v22);
    a1(v40, &v31);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v28 = v37;
    v29 = v38;
    v30 = v39;
    v24 = v33;
    v25 = v34;
    v26 = v35;
    v27 = v36;
    v22 = v31;
    v23 = v32;
    sub_1D5D68304(&v22);
    v49 = v6;
    v20 = *(v6 + 16);
    v19 = *(v6 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1D5D67EC4((v19 > 1), v20 + 1, 1);
      v6 = v49;
    }

    *(v6 + 16) = v20 + 1;
    sub_1D5B63F14(v40, v6 + 40 * v20 + 32);
    if (!i)
    {
      return v6;
    }

    v9 += 9;
  }

  v28 = v37;
  v29 = v38;
  v30 = v39;
  v24 = v33;
  v25 = v34;
  v26 = v35;
  v27 = v36;
  v22 = v31;
  v23 = v32;
  sub_1D5D68304(&v22);

  __break(1u);
  return result;
}

void *sub_1D5D67EC4(void *a1, int64_t a2, char a3)
{
  result = sub_1D5B85CC4(a1, a2, a3, *v3, sub_1D5BDA78C, &qword_1EDF3FA20);
  *v3 = result;
  return result;
}

uint64_t sub_1D5D67F08@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[7];
  v35 = a1[6];
  v36 = v9;
  v37 = a1[8];
  v10 = a1[3];
  v31 = a1[2];
  v32 = v10;
  v11 = a1[5];
  v33 = a1[4];
  v34 = v11;
  v12 = a1[1];
  v29 = *a1;
  v30 = v12;
  v13 = type metadata accessor for FormatLogger();
  inited = swift_initStaticObject();
  a5[3] = &type metadata for FormatGroupLayoutFactory;
  a5[4] = sub_1D5D6817C();
  v15 = swift_allocObject();
  *a5 = v15;
  *(v15 + 248) = v13;
  *(v15 + 256) = &protocol witness table for FormatLogger;
  *(v15 + 224) = inited;
  v16 = *(a3 + 8);
  sub_1D5B68374(a3 + 16, v15 + 272);
  v17 = v36;
  *(v15 + 112) = v35;
  *(v15 + 128) = v17;
  v18 = v37;
  v19 = v32;
  *(v15 + 48) = v31;
  *(v15 + 64) = v19;
  v20 = v34;
  *(v15 + 80) = v33;
  *(v15 + 96) = v20;
  v21 = v30;
  *(v15 + 16) = v29;
  *(v15 + 32) = v21;
  v22 = *a2;
  v23 = *(a2 + 16);
  *(v15 + 144) = v18;
  *(v15 + 160) = v22;
  v24 = *(a2 + 32);
  *(v15 + 176) = v23;
  *(v15 + 192) = v24;
  v25 = MEMORY[0x1E69E7CD0];
  *(v15 + 208) = *(a2 + 48);
  *(v15 + 216) = v25;
  *(v15 + 264) = v16;
  *(v15 + 312) = a4;
  *(v15 + 320) = 0;
  sub_1D5D65D5C(&v29, v28);
  v26 = v16;
  sub_1D5D682A8(a2, v28);
}

uint64_t sub_1D5D68068()
{

  if (*(v0 + 88) >= 3uLL)
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 224);

  __swift_destroy_boxed_opaque_existential_1(v0 + 272);

  return swift_deallocObject();
}

unint64_t sub_1D5D6817C()
{
  result = qword_1EDF26020;
  if (!qword_1EDF26020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26020);
  }

  return result;
}

unint64_t sub_1D5D681D0(uint64_t a1)
{
  *(a1 + 8) = sub_1D5D68200();
  result = sub_1D5D68254();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D5D68200()
{
  result = qword_1EDF26028;
  if (!qword_1EDF26028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26028);
  }

  return result;
}

unint64_t sub_1D5D68254()
{
  result = qword_1EDF26030[0];
  if (!qword_1EDF26030[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF26030);
  }

  return result;
}

uint64_t sub_1D5D6836C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FeedLayoutCacheKey();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D5D6843C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FeedLayoutCacheKey();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D5D68510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for FeedLayoutCacheDynamicKey();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5D685BC@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v73 = a2;
  v72 = a1;
  v78 = a5;
  v85 = *MEMORY[0x1E69E9840];
  v77 = sub_1D72583CC();
  v80 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D72585BC();
  v81 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v79 = &v62 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v71 = &v62 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v62 - v23;
  v25 = *a4;
  v26 = a4[1];
  v70 = v25;
  v74 = objc_opt_self();
  v27 = [v74 defaultManager];
  v28 = [v27 URLsForDirectory:13 inDomains:1];

  v29 = sub_1D726267C();
  if (*(v29 + 16))
  {
    v63 = v26;
    v64 = a3;
    v65 = v5;
    v30 = v10;
    v31 = v81;
    (*(v81 + 16))(v14, v29 + ((*(v81 + 80) + 32) & ~*(v81 + 80)), v11);

    *&v82[0] = 0x6361636C2D66666ELL;
    *(&v82[0] + 1) = 0xEA00000000006568;
    v68 = *MEMORY[0x1E6968F58];
    v69 = v24;
    v32 = v80;
    v67 = v11;
    v33 = v80 + 104;
    v76 = *(v80 + 104);
    v34 = v77;
    v76(v30);
    v75 = sub_1D5BF4D9C();
    sub_1D725859C();
    v35 = *(v32 + 8);
    v35(v30, v34);
    v66 = *(v31 + 8);
    v66(v14, v11);
    sub_1D5C3C480();
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1D7273AE0;
    v37 = v73;
    *(v36 + 32) = v72;
    *(v36 + 40) = v37;
    v72 = v33;
    (v76)(v30, v68, v34);

    v38 = v71;
    v39 = v79;
    sub_1D725857C();

    v40 = v30;
    v80 = v32 + 8;
    v73 = v35;
    v35(v30, v34);
    v41 = v66;
    v42 = v67;
    v79 = (v31 + 8);
    v66(v39, v67);
    v43 = v69;
    v44 = v42;
    (*(v81 + 32))(v69, v38, v42);
    v45 = v74;
    v46 = [v74 defaultManager];
    v47 = v43;
    sub_1D72583DC();
    v48 = sub_1D726203C();

    LOBYTE(v43) = [v46 fileExistsAtPath:v48 isDirectory:0];

    v49 = v78;
    if (v43)
    {
LABEL_5:
      v54 = *(v64 + 128);
      v82[2] = *(v64 + 112);
      v82[3] = v54;
      v83 = *(v64 + 144);
      v55 = *(v64 + 96);
      v82[0] = *(v64 + 80);
      v82[1] = v55;
      *&v84 = sub_1D5D68D10();
      *(&v84 + 1) = v56;
      MEMORY[0x1DA6F9910](45, 0xE100000000000000);
      *&v82[0] = v70;
      v57 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v57);

      MEMORY[0x1DA6F9910](45, 0xE100000000000000);
      *&v82[0] = v63;
      v58 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v58);

      v82[0] = v84;
      v59 = v77;
      (v76)(v40, *MEMORY[0x1E6968F68], v77);
      sub_1D725859C();
      v73(v40, v59);
      v41(v47, v44);

      return (*(v81 + 56))(v49, 0, 1, v44);
    }

    v50 = [v45 defaultManager];
    v51 = sub_1D725844C();
    *&v82[0] = 0;
    v52 = [v50 createDirectoryAtURL:v51 withIntermediateDirectories:1 attributes:0 error:v82];

    if (v52)
    {
      v53 = *&v82[0];
      v49 = v78;
      goto LABEL_5;
    }

    v61 = *&v82[0];
    sub_1D725829C();

    swift_willThrow();
    return (v41)(v47, v44);
  }

  else
  {

    return (*(v81 + 56))(v78, 1, 1, v11);
  }
}

uint64_t sub_1D5D68D10()
{
  v2 = v0[3];
  v1 = v0[4];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[7];
  v5 = v0[8];
  result = sub_1D7263D4C();
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = sub_1D72644BC();

  result = MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v9);

  result = MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v10 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v10);

  result = MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v11);

  result = MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v12 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v12);

  result = MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v5 < 9.22337204e18)
  {
    v13 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v13);

    return v8;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for FormatPoint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void *sub_1D5D693DC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1D5D69408@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1D5D6950C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D726207C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D5D69538@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1D5DF20D0(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1D5D69584()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D695BC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D695F4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6965C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5D69694()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5D696DC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6971C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6977C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D697B4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6980C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D72585BC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5D69878(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D72585BC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5D698EC()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D69930(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

uint64_t sub_1D5D69974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  return sub_1D5C75A4C(v3, v2, v4);
}

uint64_t sub_1D5D6999C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 40) = v3;
  return result;
}

uint64_t sub_1D5D699EC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 48) = v3;
  return result;
}

uint64_t sub_1D5D6A5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FeedItem(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D5D6A68C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FeedItem(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D5D6A744()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D6A77C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5D6A7BC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6A80C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5D6A844(uint64_t a1, uint64_t a2)
{
  sub_1D5B542A8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 7)
  {
    return v5 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5D6A8CC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 6);
  }

  else
  {
    v5 = 0;
  }

  sub_1D5B542A8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D5D6A974()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6A9B4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6A9F0()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D6AA58()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D6AAA0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5D6AAD8()
{

  sub_1D5E443C8(*(v0 + 32));

  return swift_deallocObject();
}

BOOL sub_1D5D6AB24(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

uint64_t sub_1D5D6AB54()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5D6AB8C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6ABEC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6AC48()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6AC80()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6ACC8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6AD08()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6AD40()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6ADB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8NewsFeed21VideoLogoBackdropView_gradientDescriptor;
  swift_beginAccess();
  return sub_1D5E48A38(v3 + v4, a2);
}

uint64_t sub_1D5D6AE24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1D5D6AE74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_1D5D6AEC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_1D5D6AF14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

uint64_t sub_1D5D6AF64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t sub_1D5D6AFB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_1D5D6B03C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6B0C4()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for FormatContent(0);
  v41 = *(*(v6 - 8) + 80);
  v7 = (v4 + v5 + v41) & ~v41;
  v8 = *(*(v6 - 8) + 64);
  v38 = type metadata accessor for FormatContentPool();
  v39 = *(*(v38 - 8) + 80);
  v9 = (v7 + v8 + v39) & ~v39;
  v10 = *(*(v38 - 8) + 64);
  v40 = type metadata accessor for FormatServiceOptions();
  v11 = *(*(v40 - 1) + 80);
  v12 = v9 + v10 + v11;
  (*(v3 + 8))(v1 + v4, v2);
  v13 = v1 + v7;

  v14 = *(v6 + 20);
  v15 = sub_1D725891C();
  v35 = *(*(v15 - 8) + 8);
  v36 = v15;
  v35(v13 + v14);

  v16 = *(v6 + 44);
  v17 = sub_1D72608BC();
  v18 = *(v17 - 8);
  v37 = *(v18 + 48);
  if (!v37(v13 + v16, 1, v17))
  {
    (*(v18 + 8))(v13 + v16, v17);
  }

  v19 = v12 & ~v11;

  v20 = *(v38 + 108);
  if (!v37(v1 + v9 + v20, 1, v17))
  {
    (*(v18 + 8))(v1 + v9 + v20, v17);
  }

  v21 = v1 + v19;
  if (*(v1 + v19 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  v22 = (v21 + v40[10]);
  v23 = type metadata accessor for FormatTransformKnobs();
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {

    v24 = type metadata accessor for FeedContext();
    v25 = v22 + v24[5];
    v26 = type metadata accessor for BundleSession();
    if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
    {
      (v35)(&v25[*(v26 + 20)], v36);
    }

    if (*(v22 + v24[12] + 8) - 1 >= 3)
    {
    }

    __swift_destroy_boxed_opaque_existential_1(v22 + *(v23 + 20));
  }

  v27 = type metadata accessor for FormatTransformData();

  v28 = v22 + *(v27 + 44);
  v29 = type metadata accessor for FeedPersonalizationClusteringRules();
  if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
  {
    v30 = &v28[*(v29 + 24)];
    v31 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
    {

      v32 = *(v31 + 24);
      v33 = sub_1D72593CC();
      (*(*(v33 - 8) + 8))(&v30[v32], v33);
    }

    if (*&v28[*(v29 + 44) + 32] != 1)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D6B820@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  v2 = *(*a1 + 24);
  *a2 = v3;
  a2[1] = v2;
}

void sub_1D5D6B844()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1D5CEFE04(0, &unk_1EC8800D0, sub_1D5B81B04, MEMORY[0x1E69E8300]);
  }
}

uint64_t sub_1D5D6B8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatFile();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D5D6B96C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FormatFile();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D5D6BA28()
{
  v1 = v0;
  v2 = (type metadata accessor for FormatContentPool() - 8);
  v3 = (*(*v2 + 80) + 24) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = type metadata accessor for FormatServiceOptions();
  v37 = *(*(v5 - 1) + 80);
  v6 = (v3 + v4 + v37) & ~v37;
  v7 = *(*(v5 - 1) + 64);
  v8 = type metadata accessor for FormatContent(0);
  v9 = *(*(v8 - 8) + 80);

  v10 = v2[29];
  v38 = sub_1D72608BC();
  v35 = *(v38 - 8);
  v36 = *(v35 + 48);
  if (!v36(v1 + v3 + v10, 1))
  {
    (*(v35 + 8))(v1 + v3 + v10, v38);
  }

  v11 = v7 + v9;
  v12 = v1 + v6;
  if (*(v1 + v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v1 + v6);
  }

  v13 = v6 + v11;
  v14 = (v12 + v5[10]);
  v15 = type metadata accessor for FormatTransformKnobs();
  v39 = v9;
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v33 = v1;

    v16 = type metadata accessor for FeedContext();
    v17 = v14 + v16[5];
    v18 = type metadata accessor for BundleSession();
    if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
    {
      v32 = *(v18 + 20);
      v19 = sub_1D725891C();
      (*(*(v19 - 8) + 8))(&v17[v32], v19);
    }

    if (*(v14 + v16[12] + 8) - 1 >= 3)
    {
    }

    __swift_destroy_boxed_opaque_existential_1(v14 + *(v15 + 20));
    v1 = v33;
    v9 = v39;
  }

  v20 = v13 & ~v9;
  v21 = type metadata accessor for FormatTransformData();

  v22 = v14 + *(v21 + 44);
  v23 = type metadata accessor for FeedPersonalizationClusteringRules();
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    v24 = v1;
    v25 = &v22[*(v23 + 24)];
    v26 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
    {

      v34 = *(v26 + 24);
      v27 = sub_1D72593CC();
      (*(*(v27 - 8) + 8))(&v25[v34], v27);
    }

    v1 = v24;
    if (*&v22[*(v23 + 44) + 32] != 1)
    {
    }
  }

  v28 = *(v8 + 20);
  v29 = sub_1D725891C();
  (*(*(v29 - 8) + 8))(v1 + v20 + v28, v29);

  v30 = *(v8 + 44);
  if (!(v36)(v1 + v20 + v30, 1, v38))
  {
    (*(v35 + 8))(v1 + v20 + v30, v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D6C154()
{
  v1 = sub_1D72607EC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1D72608EC();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1D5D6C2A0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6C2D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5D6C310()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5D6C364()
{
  sub_1D5E9EB74(0);
  v76 = v1;
  v78 = *(*(v1 - 8) + 80);
  v2 = (v78 + 16) & ~v78;
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);
  v80 = type metadata accessor for FormatServiceOptions();
  v7 = *(*(v80 - 8) + 80);
  v75 = *(*(v80 - 8) + 64);
  sub_1D5C2AB28(0);
  v83 = *(*(v8 - 8) + 80);
  v82 = v0;
  v9 = v0 + v2;

  if (*(v9 + 168) >= 3uLL)
  {
  }

  v10 = (v3 + v5 + 8) & ~v5;
  v11 = v6 + v7;
  v79 = type metadata accessor for FormatPackage();
  v12 = v9 + v79[23];

  v13 = type metadata accessor for FormatCompilerOptions(0);
  v14 = v12 + *(v13 + 24);
  if (*(v14 + 8) != 1)
  {
  }

  v15 = v10 + v11;
  v66 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  v16 = *(v66 + 20);
  v17 = sub_1D725B76C();
  v81 = *(v17 - 8);
  v18 = *(v81 + 48);
  if (!v18(v14 + v16, 1, v17))
  {
    (*(v81 + 8))(v14 + v16, v17);
  }

  v19 = v15 & ~v7;
  v20 = *(v13 + 28);
  v21 = v18;
  if (!v18(v12 + v20, 1, v17))
  {
    (*(v81 + 8))(v12 + v20, v17);
  }

  v71 = v19;
  v22 = v75 + v19;
  v69 = v13;

  v23 = v79[24];
  v24 = sub_1D725BD1C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 8);
  v26(v9 + v23, v24);
  v27 = v79[25];
  v70 = v17;
  v67 = v21;
  if (!v21(v9 + v27, 1, v17))
  {
    (*(v81 + 8))(v9 + v27, v17);
  }

  v28 = v22 + 7;

  v29 = v9 + *(v76 + 36);

  v30 = type metadata accessor for FormatMetadata();
  v26(v29 + v30[5], v24);
  v26(v29 + v30[6], v24);
  v31 = v30[7];
  v68 = *(v25 + 48);
  v32 = v80;
  if (!v68(v29 + v31, 1, v24))
  {
    v26(v29 + v31, v24);
  }

  v77 = v26;
  v33 = v28 & 0xFFFFFFFFFFFFFFF8;

  v34 = sub_1D72585BC();
  v35 = *(v34 - 8);
  if (!(*(v35 + 48))(v82 + v10, 1, v34))
  {
    (*(v35 + 8))(v82 + v10, v34);
  }

  v73 = v35;
  v74 = v34;
  v36 = v82 + v71;
  if (*(v82 + v71 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v82 + v71);
  }

  v37 = (v36 + *(v80 + 40));
  v38 = type metadata accessor for FormatTransformKnobs();
  if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
  {

    v39 = type metadata accessor for FeedContext();
    v40 = v37 + v39[5];
    v41 = type metadata accessor for BundleSession();
    if (!(*(*(v41 - 8) + 48))(v40, 1, v41))
    {
      v72 = *(v41 + 20);
      v42 = sub_1D725891C();
      (*(*(v42 - 8) + 8))(&v40[v72], v42);
    }

    if (*(v37 + v39[12] + 8) - 1 >= 3)
    {
    }

    __swift_destroy_boxed_opaque_existential_1(v37 + *(v38 + 20));
    v32 = v80;
  }

  v43 = (v33 + v83 + 8) & ~v83;
  v44 = type metadata accessor for FormatTransformData();

  v45 = v37 + *(v44 + 44);
  v46 = type metadata accessor for FeedPersonalizationClusteringRules();
  if (!(*(*(v46 - 8) + 48))(v45, 1, v46))
  {
    v47 = &v45[*(v46 + 24)];
    v48 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (!(*(*(v48 - 8) + 48))(v47, 1, v48))
    {

      v49 = *(v48 + 24);
      v50 = sub_1D72593CC();
      v51 = &v47[v49];
      v43 = (v33 + v83 + 8) & ~v83;
      (*(*(v50 - 8) + 8))(v51, v50);
    }

    if (*&v45[*(v46 + 44) + 32] != 1)
    {
    }
  }

  v52 = v82 + v43;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    if (*(v52 + 168) >= 3uLL)
    {
    }

    v58 = v52 + v79[23];

    v59 = v58 + *(v69 + 24);
    if (*(v59 + 8) != 1)
    {
    }

    v60 = *(v66 + 20);
    if (!v67(v59 + v60, 1, v70))
    {
      (*(v81 + 8))(v59 + v60, v70);
    }

    v61 = *(v69 + 28);
    if (!v67(v58 + v61, 1, v70))
    {
      (*(v81 + 8))(v58 + v61, v70);
    }

    v54 = v77;
    v77(v52 + v79[24], v24);
    v62 = v79[25];
    if (!v67(v52 + v62, 1, v70))
    {
      (*(v81 + 8))(v52 + v62, v70);
    }

    sub_1D5E9D830(0, &unk_1EC88B470, type metadata accessor for FormatPackage, type metadata accessor for FormatMetadata);
    v64 = v52 + *(v63 + 48);

    v77(v64 + v30[5], v24);
    v77(v64 + v30[6], v24);
    v57 = v64 + v30[7];
    if (v68(v57, 1, v24))
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v54 = v77;
  if (EnumCaseMultiPayload)
  {
    goto LABEL_45;
  }

  (*(v73 + 8))(v82 + v43, v74);
  sub_1D5E9D830(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
  v56 = v52 + *(v55 + 48);

  v77(v56 + v30[5], v24);
  v77(v56 + v30[6], v24);
  v57 = v56 + v30[7];
  if (!v68(v57, 1, v24))
  {
LABEL_43:
    v54(v57, v24);
  }

LABEL_44:

LABEL_45:

  return swift_deallocObject();
}

uint64_t sub_1D5D6D05C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6D094()
{
  v1 = v0;
  sub_1D5C2AB28(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(*(v2 - 8) + 64);
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v66 = *(*(v6 - 8) + 80);
  v7 = (v5 + v66) & ~v66;
  v8 = *(*(v6 - 8) + 64);
  v9 = type metadata accessor for FormatServiceOptions();
  v10 = *(*(v9 - 1) + 80);
  v11 = v7 + v8 + v10;

  v12 = v1 + v4;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v67 = v9;
  if (EnumCaseMultiPayload == 1)
  {
    v64 = v7 + v8 + v10;
    v65 = v7;
    v62 = v10;

    if (*(v12 + 168) >= 3uLL)
    {
    }

    v63 = v1;
    v23 = type metadata accessor for FormatPackage();
    v24 = v12 + *(v23 + 92);

    v25 = type metadata accessor for FormatCompilerOptions(0);
    v26 = v24 + *(v25 + 24);
    if (*(v26 + 8) != 1)
    {
    }

    v27 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
    v28 = sub_1D725B76C();
    v29 = *(v28 - 8);
    v30 = *(v29 + 48);
    if (!v30(v26 + v27, 1, v28))
    {
      (*(v29 + 8))(v26 + v27, v28);
    }

    v31 = *(v25 + 28);
    if (!v30(v24 + v31, 1, v28))
    {
      (*(v29 + 8))(v24 + v31, v28);
    }

    v61 = v29;

    v32 = v23;
    v33 = *(v23 + 96);
    v34 = sub_1D725BD1C();
    v35 = *(v34 - 8);
    v36 = *(v35 + 8);
    v36(v12 + v33, v34);
    v37 = *(v32 + 100);
    if (!v30(v12 + v37, 1, v28))
    {
      (*(v61 + 8))(v12 + v37, v28);
    }

    sub_1D5E9D830(0, &unk_1EC88B470, type metadata accessor for FormatPackage, type metadata accessor for FormatMetadata);
    v39 = v12 + *(v38 + 48);

    v40 = type metadata accessor for FormatMetadata();
    v36(v39 + v40[5], v34);
    v36(v39 + v40[6], v34);
    v41 = v40[7];
    if (!(*(v35 + 48))(v39 + v41, 1, v34))
    {
      v36(v39 + v41, v34);
    }

    v10 = v62;
    v1 = v63;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_19;
    }

    v64 = v7 + v8 + v10;
    v65 = v7;
    v14 = sub_1D72585BC();
    (*(*(v14 - 8) + 8))(v1 + v4, v14);
    sub_1D5E9D830(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
    v16 = v12 + *(v15 + 48);

    v17 = type metadata accessor for FormatMetadata();
    v18 = v17[5];
    v19 = sub_1D725BD1C();
    v20 = *(v19 - 8);
    v21 = *(v20 + 8);
    v21(v16 + v18, v19);
    v21(v16 + v17[6], v19);
    v22 = v17[7];
    if (!(*(v20 + 48))(v16 + v22, 1, v19))
    {
      v21(v16 + v22, v19);
    }
  }

  v11 = v64;

  v9 = v67;
  v7 = v65;
LABEL_19:
  v42 = v11 & ~v10;
  v43 = sub_1D72585BC();
  v44 = *(v43 - 8);
  if (!(*(v44 + 48))(v1 + v7, 1, v43))
  {
    (*(v44 + 8))(v1 + v7, v43);
  }

  v45 = v1 + v42;
  if (*(v1 + v42 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v1 + v42);
  }

  v46 = (v45 + v9[10]);
  v47 = type metadata accessor for FormatTransformKnobs();
  if (!(*(*(v47 - 8) + 48))(v46, 1, v47))
  {

    v48 = type metadata accessor for FeedContext();
    v49 = v46 + v48[5];
    v50 = type metadata accessor for BundleSession();
    if (!(*(*(v50 - 8) + 48))(v49, 1, v50))
    {
      v51 = *(v50 + 20);
      v52 = sub_1D725891C();
      (*(*(v52 - 8) + 8))(&v49[v51], v52);
    }

    if (*(v46 + v48[12] + 8) - 1 >= 3)
    {
    }

    __swift_destroy_boxed_opaque_existential_1(v46 + *(v47 + 20));
    v9 = v67;
  }

  v53 = type metadata accessor for FormatTransformData();

  v54 = v46 + *(v53 + 44);
  v55 = type metadata accessor for FeedPersonalizationClusteringRules();
  if (!(*(*(v55 - 8) + 48))(v54, 1, v55))
  {
    v56 = &v54[*(v55 + 24)];
    v57 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (!(*(*(v57 - 8) + 48))(v56, 1, v57))
    {

      v58 = *(v57 + 24);
      v59 = sub_1D72593CC();
      (*(*(v59 - 8) + 8))(&v56[v58], v59);
    }

    v9 = v67;
    if (*&v54[*(v55 + 44) + 32] != 1)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D6DAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5C2AB28(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_1D5D6DB60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D5C2AB28(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_1D5D6DCB0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for FormatDerivedDataOptionReferenceResolution(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5D6DD5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FormatDerivedDataOptionReferenceResolution(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D6DE00(uint64_t a1, uint64_t a2)
{
  sub_1D5EA24BC();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5D6DE6C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  sub_1D5EA24BC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D5D6DEEC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6DF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D72585BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5D6DFD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D72585BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D6E088@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5D6E0D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1D5D6E128@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_1D5D6E178@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

unint64_t sub_1D5D6E1C8@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = v4;
  return sub_1D5C82CD8(v4);
}

uint64_t sub_1D5D6E218@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5D6E268@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_1D5D6E2B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 56) = v2;
  return result;
}

unint64_t sub_1D5D6E2F4@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = v4;
  return sub_1D5EB1500(v4);
}

uint64_t sub_1D5D6E344@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_1D5D6E38C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 72) = v2;
  return result;
}

uint64_t sub_1D5D6E3D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t sub_1D5D6E420@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_1D5D6E470@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 152);
}

uint64_t sub_1D5D6E4C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 176);
}

uint64_t sub_1D5D6E510@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 184);
}

uint64_t sub_1D5D6E564()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6E600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D725FC7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1D725CE0C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D5D6E6F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D725FC7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1D725CE0C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D5D6E7EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5D6E83C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_1D5D6E88C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6E8CC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6E94C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6E9DC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6EA38()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6EAB0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5D6EB5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D6EC10()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5D6EC48()
{
  v1 = (type metadata accessor for FormatMicaData() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v1[7];
  v5 = sub_1D725D4AC();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v0 + v2 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D6EDA0()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D6EDE4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5D6EE90(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D6EF6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5D6EFBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_1D5D6F03C()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D6F078(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5D6F124(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D6F1D8()
{

  if (*(v0 + 96) != 1)
  {
  }

  if (*(v0 + 144) >= 0x12uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D6F250()
{

  swift_unknownObjectRelease();

  if (*(v0 + 104) != 1)
  {

    if (*(v0 + 136))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 112);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D6F2C0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5D6F314()
{

  swift_unknownObjectRelease();

  if (*(v0 + 104) != 1)
  {

    if (*(v0 + 136))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 112);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D6F384()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6F3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for FeedBannerAd();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D5D6F4F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for FeedBannerAd();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D5D6F61C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6F664(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5D6F710(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D6F7B4()
{

  if (*(v0 + 104) != 1)
  {
  }

  if (*(v0 + 152) >= 0x12uLL)
  {
  }

  v1 = *(v0 + 168);
  if (v1)
  {

    if (*(v0 + 248) != 1)
    {
    }

    if (*(v0 + 296) >= 0x12uLL)
    {
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 312);

  return swift_deallocObject();
}

uint64_t sub_1D5D6F8D8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6F93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FeedItem.SharedState(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D5D6F9F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FeedItem.SharedState(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D5D6FAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}