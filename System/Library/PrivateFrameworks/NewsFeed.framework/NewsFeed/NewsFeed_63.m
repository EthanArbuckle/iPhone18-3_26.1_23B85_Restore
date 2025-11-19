void sub_1D60F7EE0()
{
  if (!qword_1EDF17F38)
  {
    sub_1D725A90C();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17F38);
    }
  }
}

uint64_t sub_1D60F7F38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D60F7F98(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D62FF9B4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D60F8920(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D60F8004(uint64_t a1)
{
  result = sub_1D60F805C(&qword_1EC883C00, type metadata accessor for FormatDerivedDataWarningError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D60F805C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D60F80A4()
{
  sub_1D60F81B0(319, &qword_1EC883C18, sub_1D5BBE0A8);
  if (v0 <= 0x3F)
  {
    sub_1D60F81B0(319, &qword_1EC883C20, sub_1D5BBE0A8);
    if (v1 <= 0x3F)
    {
      sub_1D60F8220();
      if (v2 <= 0x3F)
      {
        sub_1D60F81B0(319, &qword_1EC883BB8, type metadata accessor for FormatDeprecationWarning);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1D60F81B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1D60F8220()
{
  if (!qword_1EC883C28)
  {
    sub_1D5BBE0A8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC883C28);
    }
  }
}

unint64_t sub_1D60F82F4()
{
  result = qword_1EC883C30;
  if (!qword_1EC883C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C30);
  }

  return result;
}

unint64_t sub_1D60F834C()
{
  result = qword_1EC883C38;
  if (!qword_1EC883C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C38);
  }

  return result;
}

unint64_t sub_1D60F83A4()
{
  result = qword_1EC883C40;
  if (!qword_1EC883C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C40);
  }

  return result;
}

unint64_t sub_1D60F83FC()
{
  result = qword_1EC883C48;
  if (!qword_1EC883C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C48);
  }

  return result;
}

unint64_t sub_1D60F8454()
{
  result = qword_1EC883C50;
  if (!qword_1EC883C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C50);
  }

  return result;
}

unint64_t sub_1D60F84AC()
{
  result = qword_1EC883C58;
  if (!qword_1EC883C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C58);
  }

  return result;
}

unint64_t sub_1D60F8504()
{
  result = qword_1EC883C60;
  if (!qword_1EC883C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C60);
  }

  return result;
}

unint64_t sub_1D60F855C()
{
  result = qword_1EC883C68;
  if (!qword_1EC883C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C68);
  }

  return result;
}

unint64_t sub_1D60F85B4()
{
  result = qword_1EC883C70;
  if (!qword_1EC883C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C70);
  }

  return result;
}

unint64_t sub_1D60F860C()
{
  result = qword_1EC883C78;
  if (!qword_1EC883C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C78);
  }

  return result;
}

unint64_t sub_1D60F8664()
{
  result = qword_1EC883C80;
  if (!qword_1EC883C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C80);
  }

  return result;
}

unint64_t sub_1D60F86BC()
{
  result = qword_1EC883C88;
  if (!qword_1EC883C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C88);
  }

  return result;
}

unint64_t sub_1D60F8714()
{
  result = qword_1EC883C90;
  if (!qword_1EC883C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C90);
  }

  return result;
}

unint64_t sub_1D60F876C()
{
  result = qword_1EC883C98;
  if (!qword_1EC883C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883C98);
  }

  return result;
}

unint64_t sub_1D60F87C4()
{
  result = qword_1EC883CA0;
  if (!qword_1EC883CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883CA0);
  }

  return result;
}

unint64_t sub_1D60F881C()
{
  result = qword_1EC883CA8;
  if (!qword_1EC883CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883CA8);
  }

  return result;
}

unint64_t sub_1D60F8874()
{
  result = qword_1EC883CB0;
  if (!qword_1EC883CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883CB0);
  }

  return result;
}

unint64_t sub_1D60F88CC()
{
  result = qword_1EC883CB8;
  if (!qword_1EC883CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883CB8);
  }

  return result;
}

uint64_t sub_1D60F8920(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D726449C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D726276C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D60F8AE8(v7, v8, a1, v4);
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
    return sub_1D60F8A18(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D60F8A18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    v10 = *v9;
    v11 = v9[1];
    v12 = v8;
    v13 = v7;
    while (1)
    {
      result = *(v13 - 2);
      v14 = result == v10 && *(v13 - 1) == v11;
      if (v14 || (result = sub_1D72646CC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v10 = *v13;
      v11 = v13[1];
      *v13 = *(v13 - 1);
      *(v13 - 1) = v11;
      *(v13 - 2) = v10;
      v13 -= 2;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D60F8AE8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1D62FF50C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1D60F90C4((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      result = *v11;
      if (*v11 == *v10 && v11[1] == v10[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1D72646CC();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          result = *(v14 - 1);
          if (result == v14[1] && *v14 == v16)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1D72646CC();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D698BA94(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1D698BA94((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1D60F90C4((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D62FF50C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1D62FF480(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = *(v36 - 2) == v33 && *(v36 - 1) == v34;
    if (v37 || (result = sub_1D72646CC(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1D60F90C4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
      if (!v16 && (sub_1D72646CC() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = *(v6 - 2) == v19 && *(v6 - 1) == v20;
      if (!v21 && (sub_1D72646CC() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1D60F92EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000025 && 0x80000001D73C9B00 == a2;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000028 && 0x80000001D73C9B30 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000030 && 0x80000001D73C9B60 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000027 && 0x80000001D73C9BA0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D73C9BD0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D60F949C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C9AE0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D60F95B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static CoverChannelViewLayout.make18ColumnCatalogLayout(context:factories:options:)(uint64_t a1)
{
  v2 = sub_1D725A36C();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v9 = a1;
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D7378], v4);
  sub_1D60FB214(0, &qword_1EC883CC0, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  return sub_1D725A4CC();
}

uint64_t sub_1D60F9758(uint64_t a1, void *a2)
{
  sub_1D60FB390(0, &qword_1EC883CD8, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v23[-v8];
  v10 = a2[23];
  v11 = a2[24];
  __swift_project_boxed_opaque_existential_1(a2 + 20, v10);
  v12 = (*(v11 + 48))(v10, v11);
  v13 = a2[23];
  v14 = a2[24];
  __swift_project_boxed_opaque_existential_1(a2 + 20, v13);
  v15 = (*(v14 + 56))(v13, v14);
  v16 = v12 + v15 + v15;
  v17 = sub_1D60FB040(a2);
  if (a2[9])
  {
    v18 = 0.0;
  }

  else
  {
    v18 = 20.0;
  }

  v19 = v17;
  sub_1D726334C();
  [v19 boundingRectWithSize:35 options:0 context:?];
  v20 = v18 + v16 + 20.0 + CGRectGetWidth(v30) + 10.0;
  v29 = a1;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D74A8], v5);
  v24 = v20;
  v25 = a2;
  v26 = 0x4024000000000000;
  v27 = v19;
  v28 = v18;
  v21 = MEMORY[0x1E69D7150];
  sub_1D60FB214(0, &qword_1EC883CE0, MEMORY[0x1E69D7150]);
  sub_1D60FB298(&qword_1EC883CE8, &qword_1EC883CE0, v21);
  sub_1D7259A2C();

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D60F9A08()
{
  result = qword_1EC883CC8;
  if (!qword_1EC883CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883CC8);
  }

  return result;
}

unint64_t sub_1D60F9A5C()
{
  result = qword_1EC883CD0;
  if (!qword_1EC883CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883CD0);
  }

  return result;
}

uint64_t sub_1D60F9AB0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v44 = a2;
  v45 = a3;
  sub_1D60FB390(0, &qword_1EC883CD8, MEMORY[0x1E69D74B0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = (v38 - v14);
  v52 = a1;
  v16 = swift_allocObject();
  *(v16 + 16) = 0x4024000000000000;
  *v15 = v16;
  v46 = *MEMORY[0x1E69D7488];
  v17 = *(v12 + 104);
  v17(v15);
  v18 = MEMORY[0x1E69D6F38];
  sub_1D60FB214(0, &qword_1EC883CF0, MEMORY[0x1E69D6F38]);
  v20 = v19;
  v21 = sub_1D60FB298(&qword_1EC883CF8, &qword_1EC883CF0, v18);
  sub_1D7259A9C();
  v22 = *(v12 + 8);
  v22(v15, v11);
  v52 = a1;
  v23 = *MEMORY[0x1E69D74A8];
  v39 = v17;
  (v17)(v15, v23, v11);
  v38[1] = v21;
  v43 = v20;
  sub_1D7259A2C();
  v40 = v22;
  v41 = v12 + 8;
  v22(v15, v11);
  v52 = a1;
  v42 = a1;
  v24 = swift_allocObject();
  *(v24 + 16) = 0x4030000000000000;
  *v15 = v24;
  (v17)(v15, v46, v11);
  sub_1D7259A9C();
  v22(v15, v11);
  v52 = a1;
  sub_1D5EF9444();
  v26 = v25;
  v27 = swift_allocBox();
  v29 = v28;
  v30 = *(v26 + 48);
  v31 = *MEMORY[0x1E69D71E8];
  v32 = sub_1D725A09C();
  v33 = *(*(v32 - 8) + 104);
  v33(v29, v31, v32);
  v33(v29 + v30, *MEMORY[0x1E69D7208], v32);
  *v15 = v27;
  v34 = v39;
  (v39)(v15, *MEMORY[0x1E69D7468], v11);
  v47 = a4;
  v48 = v44;
  v49 = a5;
  v50 = v45;
  v51 = a6;
  sub_1D72599EC();
  v35 = v40;
  v40(v15, v11);
  v52 = v42;
  v36 = swift_allocObject();
  *(v36 + 16) = 0x404C000000000000;
  *v15 = v36;
  (v34)(v15, v46, v11);
  sub_1D7259A9C();
  return v35(v15, v11);
}

uint64_t sub_1D60F9F28(uint64_t a1)
{
  sub_1D60FB390(0, &qword_1EC883CD8, MEMORY[0x1E69D74B0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (v15 - v6);
  v15[1] = a1;
  swift_getKeyPath();
  v8 = sub_1D725A35C();
  v9 = swift_allocBox();
  v11 = v10;
  v12 = *MEMORY[0x1E69D7340];
  v13 = sub_1D725A34C();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  (*(*(v8 - 8) + 104))(v11, *MEMORY[0x1E69D7360], v8);
  *v7 = v9;
  (*(v4 + 104))(v7, *MEMORY[0x1E69D7478], v3);
  sub_1D60FB298(&qword_1EC883CF8, &qword_1EC883CF0, MEMORY[0x1E69D6F38]);
  sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4);
  sub_1D7259A7C();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D60FA1C4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v52 = a1;
  v53 = a3;
  sub_1D60FB390(0, &qword_1EC883CD8, MEMORY[0x1E69D74B0]);
  v51 = v11;
  v54 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v47 - v13);
  v58 = a1;
  sub_1D5EF9444();
  v16 = v15;
  v17 = swift_allocBox();
  v19 = v18;
  v49 = *(v16 + 48);
  v50 = v17;
  v20 = sub_1D725A09C();
  v21 = swift_allocBox();
  v23 = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *v23 = v24;
  v25 = *MEMORY[0x1E69D71F0];
  v26 = *(*(v20 - 8) + 104);
  v26(v23, v25, v20);
  *v19 = v21;
  v26(v19, *MEMORY[0x1E69D71F8], v20);
  v27 = swift_allocObject();
  v28 = a2;
  v48 = a2;
  v29 = *(a2 + 184);
  v30 = *(v28 + 192);
  __swift_project_boxed_opaque_existential_1((v28 + 160), v29);
  *(v27 + 16) = (*(v30 + 32))(v29, v30);
  v31 = v49;
  *(v19 + v49) = v27;
  v26((v19 + v31), v25, v20);
  v32 = v51;
  *v14 = v50;
  v33 = v54;
  v34 = *(v54 + 104);
  v34(v14, *MEMORY[0x1E69D7468], v32);
  v57 = v48;
  v35 = MEMORY[0x1E69D6F38];
  sub_1D60FB214(0, &qword_1EC883CF0, MEMORY[0x1E69D6F38]);
  sub_1D60FB298(&qword_1EC883CF8, &qword_1EC883CF0, v35);
  sub_1D72599EC();
  v36 = *(v33 + 8);
  v36(v14, v32);
  v54 = v33 + 8;
  v37 = v52;
  v58 = v52;
  v38 = swift_allocObject();
  *(v38 + 16) = a5;
  *v14 = v38;
  v34(v14, *MEMORY[0x1E69D7480], v32);
  sub_1D7259A9C();
  v36(v14, v32);
  v58 = v37;
  v34(v14, *MEMORY[0x1E69D74A8], v32);
  sub_1D60FB31C();
  sub_1D60FB390(0, &qword_1EC883D08, MEMORY[0x1E69D70D8]);
  v40 = v39;
  v41 = *(v39 - 8);
  v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1D7273AE0;
  v44 = *MEMORY[0x1E69D7070];
  sub_1D60FB390(0, &qword_1EC883D10, MEMORY[0x1E69D7078]);
  (*(*(v45 - 8) + 104))(v43 + v42, v44, v45);
  (*(v41 + 104))(v43 + v42, *MEMORY[0x1E69D7080], v40);
  v55 = v53;
  v56 = a6;
  sub_1D72599EC();

  return (v36)(v14, v32);
}

uint64_t sub_1D60FA730(uint64_t a1, uint64_t a2)
{
  sub_1D60FB390(0, &qword_1EC883CD8, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (v29 - v8);
  v10 = sub_1D7261B9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29[1] = a1;
  swift_getKeyPath();
  v15 = *(a2 + 200);
  if (*(v15 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), *v14 = sub_1D726308C(), (*(v11 + 104))(v14, *MEMORY[0x1E69E8018], v10), v16 = sub_1D7261BBC(), result = (*(v11 + 8))(v14, v10), (v16))
  {
    v18 = swift_allocObject();
    v19 = *(v15 + *(*v15 + 136));
    *(v18 + 16) = v19;
    *v9 = v18;
    (*(v6 + 104))(v9, *MEMORY[0x1E69D7440], v5);
    sub_1D60FB31C();
    sub_1D60FB390(0, &qword_1EC883D08, MEMORY[0x1E69D70D8]);
    v21 = v20;
    v22 = *(v20 - 8);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D7273AE0;
    v25 = *MEMORY[0x1E69D7068];
    sub_1D60FB390(0, &qword_1EC883D10, MEMORY[0x1E69D7078]);
    (*(*(v26 - 8) + 104))(v24 + v23, v25, v26);
    (*(v22 + 104))(v24 + v23, *MEMORY[0x1E69D7080], v21);
    v27 = MEMORY[0x1E69D6F38];
    sub_1D60FB214(0, &qword_1EC883CF0, MEMORY[0x1E69D6F38]);
    sub_1D60FB298(&qword_1EC883CF8, &qword_1EC883CF0, v27);
    sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4);
    v28 = v19;
    sub_1D7259A7C();

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D60FAB84(uint64_t a1, void *a2, double a3)
{
  v40 = a2;
  v47 = a1;
  sub_1D60FB390(0, &qword_1EC883CD8, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  v42 = v6;
  v43 = v8;
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = (&v35 - v10);
  v48 = a1;
  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  v41 = v11;
  *v11 = v12;
  v13 = *MEMORY[0x1E69D73E8];
  v14 = *(v8 + 104);
  v45 = v8 + 104;
  v46 = v14;
  v14(v11, v13, v7);
  sub_1D60FB31C();
  sub_1D60FB390(0, &qword_1EC883D08, MEMORY[0x1E69D70D8]);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v39 = v20;
  *(v20 + 16) = xmmword_1D7270C10;
  v21 = v20 + v19;
  *(v20 + v19) = a3;
  v37 = *MEMORY[0x1E69D7240];
  v22 = v37;
  v23 = sub_1D725A13C();
  v24 = *(v23 - 8);
  v36 = *(v24 + 104);
  v38 = v24 + 104;
  v36(v21, v22, v23);
  v25 = *MEMORY[0x1E69D72D8];
  v26 = sub_1D725A29C();
  v27 = *(*(v26 - 8) + 104);
  v27(v21, v25, v26);
  v28 = *(v17 + 104);
  v28(v21, *MEMORY[0x1E69D6FC0], v16);
  *(v21 + v18) = 0x4008000000000000;
  v36(v21 + v18, v37, v23);
  v27(v21 + v18, v25, v26);
  v28(v21 + v18, *MEMORY[0x1E69D6FD0], v16);
  v29 = MEMORY[0x1E69D6F38];
  sub_1D60FB214(0, &qword_1EC883CF0, MEMORY[0x1E69D6F38]);
  sub_1D60FB298(&qword_1EC883CF8, &qword_1EC883CF0, v29);
  sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4);
  v30 = v40;
  v31 = v41;
  sub_1D7259A7C();

  v32 = v42;
  v33 = *(v43 + 8);
  v33(v31, v42);
  v48 = v47;
  swift_getKeyPath();
  v46(v31, *MEMORY[0x1E69D7470], v32);
  sub_1D7259A7C();

  return (v33)(v31, v32);
}

uint64_t sub_1D60FB040(uint64_t a1)
{
  v2 = sub_1D7261B9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = qword_1EDF347F8;
  if ((*(a1 + 72) & 1) == 0)
  {
    v8 = *(a1 + 224);
    if (*(v8 + qword_1EDF347F8))
    {
      return *(v8 + *(*v8 + 136));
    }

    sub_1D5B5DA7C();
    *v6 = sub_1D726308C();
    (*(v3 + 104))(v6, *MEMORY[0x1E69E8018], v2);
    a1 = sub_1D7261BBC();
    v9 = *(v3 + 8);
    v3 += 8;
    v9(v6, v2);
    if (a1)
    {
      return *(v8 + *(*v8 + 136));
    }

    __break(1u);
  }

  v8 = *(a1 + 232);
  if (*(v8 + v7))
  {
    return *(v8 + *(*v8 + 136));
  }

  sub_1D5B5DA7C();
  *v6 = sub_1D726308C();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8018], v2);
  v10 = sub_1D7261BBC();
  result = (*(v3 + 8))(v6, v2);
  if (v10)
  {
    return *(v8 + *(*v8 + 136));
  }

  __break(1u);
  return result;
}

void sub_1D60FB214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for CoverChannelViewLayout;
    v8[1] = &type metadata for CoverChannelViewLayout.Attributes;
    v8[2] = sub_1D60F9A08();
    v8[3] = sub_1D60F9A5C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D60FB298(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D60FB214(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D60FB31C()
{
  if (!qword_1EC883D00)
  {
    sub_1D60FB390(255, &qword_1EC883D08, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC883D00);
    }
  }
}

void sub_1D60FB390(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D60F9A08();
    v7 = a3(a1, &type metadata for CoverChannelViewLayout, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t FormatSplitBackground.xInsets.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1D60FB43C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];

  *a2 = v3;
  a2[1] = v4;
  return result;
}

__n128 FormatSplitBackground.xInsets.setter(__n128 *a1)
{

  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t FormatSplitBackground.leftSide.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v9 = *(v1 + 64);
  v10 = v2;
  v11 = *(v1 + 96);
  v3 = v11;
  v4 = *(v1 + 48);
  v8[0] = *(v1 + 32);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1D60FB55C(v8, v7);
}

uint64_t FormatSplitBackground.rightSide.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 152);
  v9 = *(v1 + 136);
  v10 = v3;
  v11 = *(v1 + 168);
  v4 = v11;
  v8[0] = *(v1 + 104);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_1D60FB55C(v8, v7);
}

__n128 sub_1D60FB644@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 5);
  v32 = *(v1 + 4);
  v33 = v7;
  v34 = *(v1 + 96);
  v8 = *(v1 + 3);
  v30 = *(v1 + 2);
  v31 = v8;
  v9 = *(v1 + 13);
  v10 = *(v1 + 15);
  v11 = *(v1 + 17);
  v12 = *(v1 + 19);
  v39 = *(v1 + 168);
  v37 = v11;
  v38 = v12;
  v35 = v9;
  v36 = v10;
  v13 = v30;
  v26 = v32;
  v27 = v31;
  v14 = v33;
  v28 = v3;
  v24 = v33;
  v25 = *(&v30 + 1);
  v23 = *(&v33 + 1);

  if (v34)
  {
    sub_1D60FB55C(&v30, v29);

    sub_1D5D615EC(v14);
    v15 = sub_1D600A03C(v13);
    sub_1D60FBD38(&v30);
    v16 = 1;
    LOBYTE(v29[0]) = 1;
  }

  else
  {
    sub_1D6E0CAE0(v29);
    v16 = 0;
    v15 = v29[0];
  }

  v17 = v35;
  v21 = v37;
  v22 = v36;
  v18 = v38;
  if (v39)
  {
    sub_1D60FB55C(&v35, v29);

    sub_1D5D615EC(v18);
    sub_1D600A03C(v17);
    sub_1D60FBD38(&v35);
    v19 = 1;
    LOBYTE(v29[0]) = 1;
  }

  else
  {
    sub_1D6E0CAE0(v29);
    v19 = 0;
  }

  *a1 = v28;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v15;
  *(a1 + 40) = v25;
  *(a1 + 48) = v27;
  *(a1 + 64) = v26;
  *(a1 + 80) = v24;
  *(a1 + 88) = v23;
  *(a1 + 96) = v16;
  *(a1 + 104) = v17;
  result = v21;
  *(a1 + 120) = v22;
  *(a1 + 136) = v21;
  *(a1 + 152) = v18;
  *(a1 + 168) = v19;
  return result;
}

uint64_t _s8NewsFeed21FormatSplitBackgroundV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 80);
  v54[2] = *(a1 + 64);
  v54[3] = v8;
  v55 = *(a1 + 96);
  v9 = *(a1 + 48);
  v54[0] = *(a1 + 32);
  v54[1] = v9;
  v10 = *(a1 + 104);
  v11 = *(a1 + 120);
  v12 = *(a1 + 136);
  v13 = *(a1 + 152);
  v60 = *(a1 + 168);
  v58 = v12;
  v59 = v13;
  v56 = v10;
  v57 = v11;
  v14 = *a2;
  v16 = *(a2 + 8);
  v15 = *(a2 + 16);
  v17 = *(a2 + 24);
  v18 = *(a2 + 80);
  v61[2] = *(a2 + 64);
  v61[3] = v18;
  v62 = *(a2 + 96);
  v19 = *(a2 + 48);
  v61[0] = *(a2 + 32);
  v61[1] = v19;
  v20 = *(a2 + 104);
  v67 = *(a2 + 168);
  v21 = *(a2 + 152);
  v65 = *(a2 + 136);
  v66 = v21;
  v22 = *(a2 + 120);
  v63 = v20;
  v64 = v22;
  if (sub_1D633A310(v4, v14) & 1) != 0 && (sub_1D633A310(v6, v16) & 1) != 0 && (sub_1D633A310(v5, v15) & 1) != 0 && (sub_1D633A310(v7, v17) & 1) != 0 && (v23 = *(a1 + 80), v47 = *(a1 + 64), v48 = v23, v49 = *(a1 + 96), v24 = *(a1 + 48), v45 = *(a1 + 32), v46 = v24, v25 = *(a2 + 80), v42 = *(a2 + 64), v43 = v25, v44 = *(a2 + 96), v26 = *(a2 + 48), v40 = *(a2 + 32), v41 = v26, sub_1D60FB55C(v54, &v35), sub_1D60FB55C(v61, &v35), v27 = _s8NewsFeed25FormatSplitBackgroundSideO2eeoiySbAC_ACtFZ_0(&v45, &v40), v50[2] = v42, v50[3] = v43, v51 = v44, v50[0] = v40, v50[1] = v41, sub_1D60FBD38(v50), v52[2] = v47, v52[3] = v48, v53 = v49, v52[0] = v45, v52[1] = v46, sub_1D60FBD38(v52), (v27))
  {
    v37 = v58;
    v38 = v59;
    v39 = v60;
    v35 = v56;
    v36 = v57;
    v32 = v65;
    v33 = v66;
    v34 = v67;
    v30 = v63;
    v31 = v64;
    sub_1D60FB55C(&v56, &v45);
    sub_1D60FB55C(&v63, &v45);
    v28 = _s8NewsFeed25FormatSplitBackgroundSideO2eeoiySbAC_ACtFZ_0(&v35, &v30);
    v42 = v32;
    v43 = v33;
    v44 = v34;
    v40 = v30;
    v41 = v31;
    sub_1D60FBD38(&v40);
    v47 = v37;
    v48 = v38;
    v49 = v39;
    v45 = v35;
    v46 = v36;
    sub_1D60FBD38(&v45);
  }

  else
  {
    v28 = 0;
  }

  return v28 & 1;
}

unint64_t sub_1D60FBA7C(uint64_t a1)
{
  result = sub_1D60FBAA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D60FBAA4()
{
  result = qword_1EC883D18;
  if (!qword_1EC883D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883D18);
  }

  return result;
}

unint64_t sub_1D60FBAF8(void *a1)
{
  a1[1] = sub_1D60FBB30();
  a1[2] = sub_1D60FBB84();
  result = sub_1D60FBBD8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D60FBB30()
{
  result = qword_1EDF0DEF8;
  if (!qword_1EDF0DEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DEF8);
  }

  return result;
}

unint64_t sub_1D60FBB84()
{
  result = qword_1EDF0DF00;
  if (!qword_1EDF0DF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DF00);
  }

  return result;
}

unint64_t sub_1D60FBBD8()
{
  result = qword_1EC883D20;
  if (!qword_1EC883D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883D20);
  }

  return result;
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1D60FBC74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 169))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D60FBCBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 169) = 1;
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

    *(result + 169) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1D60FBD8C(uint64_t a1, __int128 *a2)
{
  v3 = a2[9];
  v98 = a2[8];
  v99[0] = v3;
  *(v99 + 9) = *(a2 + 153);
  v4 = a2[5];
  v94 = a2[4];
  v95 = v4;
  v5 = a2[6];
  v97 = a2[7];
  v96 = v5;
  v6 = a2[1];
  v90 = *a2;
  v91 = v6;
  v7 = a2[2];
  v93 = a2[3];
  v92 = v7;
  v8 = MEMORY[0x1E69E6F90];
  sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D7273AE0;
  sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v8);
  sub_1D5EA74B8();
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7284F00;
  v14 = (v13 + v12);
  v15 = a2[9];
  v108 = a2[8];
  v109[0] = v15;
  *(v109 + 9) = *(a2 + 153);
  v16 = a2[5];
  v104 = a2[4];
  v105 = v16;
  v17 = a2[6];
  v107 = a2[7];
  v106 = v17;
  v18 = a2[1];
  v100 = *a2;
  v101 = v18;
  v19 = a2[2];
  v103 = a2[3];
  v102 = v19;
  enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0 = get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(&v100);
  v21 = 0;
  v22 = 0;
  if (enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0 != 1)
  {
    v21 = sub_1D6936F98(v101);
    v22 = v23;
  }

  sub_1D711F844(0x726F68636E412058, 0xE800000000000000, v21, v22, v14);
  v24 = type metadata accessor for FormatInspectionItem(0);
  v25 = *(*(v24 - 8) + 56);
  v25(v14, 0, 1, v24);
  v82[8] = v98;
  v83[0] = v99[0];
  *(v83 + 9) = *(v99 + 9);
  v82[4] = v94;
  v82[5] = v95;
  v82[6] = v96;
  v82[7] = v97;
  v82[0] = v90;
  v82[1] = v91;
  v82[2] = v92;
  v82[3] = v93;
  v26 = 0;
  v27 = 0;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(v82) != 1)
  {

    v26 = sub_1D6936F98(v28);
    v27 = v29;
  }

  sub_1D711F844(0x737465736E492058, 0xEF297466654C2820, v26, v27, (v14 + v11));
  v25((v14 + v11), 0, 1, v24);
  v80[8] = v98;
  v81[0] = v99[0];
  *(v81 + 9) = *(v99 + 9);
  v80[4] = v94;
  v80[5] = v95;
  v80[6] = v96;
  v80[7] = v97;
  v80[0] = v90;
  v80[1] = v91;
  v80[2] = v92;
  v80[3] = v93;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(v80) == 1)
  {
    v30 = 0;
    v31 = 0;
  }

  else
  {

    v30 = sub_1D6936F98(v32);
    v31 = v33;
  }

  sub_1D711F844(0xD000000000000010, 0x80000001D73C9BF0, v30, v31, (v14 + 2 * v11));
  v25((v14 + 2 * v11), 0, 1, v24);
  v78 = v98;
  v79[0] = v99[0];
  *(v79 + 9) = *(v99 + 9);
  v74 = v94;
  v75 = v95;
  v76 = v96;
  v77 = v97;
  v70 = v90;
  v71 = v91;
  v72 = v92;
  v73 = v93;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(&v70) == 1)
  {
    v34 = 0;
    v35 = 0;
  }

  else
  {
    v34 = sub_1D6936F98(*(&v71 + 1));
    v35 = v36;
  }

  sub_1D711F844(0x73656572676544, 0xE700000000000000, v34, v35, (v14 + 3 * v11));
  v25((v14 + 3 * v11), 0, 1, v24);
  v68 = v98;
  v69[0] = v99[0];
  *(v69 + 9) = *(v99 + 9);
  v64 = v94;
  v65 = v95;
  v66 = v96;
  v67 = v97;
  v61[0] = v90;
  v61[1] = v91;
  v62 = v92;
  v63 = v93;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(v61) == 1)
  {
    v37 = -1;
    v38 = 0uLL;
    v39 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
  }

  else
  {
    v55 = v63;
    v57 = v62;
    v51 = v65;
    v53 = v64;
    v37 = v66;
    sub_1D60FB55C(&v62, v59);
    v41 = v51;
    v40 = v53;
    v39 = v55;
    v38 = v57;
  }

  v88[0] = v38;
  v88[1] = v39;
  v88[2] = v40;
  v88[3] = v41;
  v89 = v37;
  sub_1D7123DE0(0x646953207466654CLL, 0xE900000000000065, v88, v14 + 4 * v11);
  v25((v14 + 4 * v11), 0, 1, v24);
  *&v60[32] = v98;
  *&v60[48] = v99[0];
  *&v60[57] = *(v99 + 9);
  v59[4] = v94;
  v59[5] = v95;
  *v60 = v96;
  *&v60[16] = v97;
  v59[0] = v90;
  v59[1] = v91;
  v59[2] = v92;
  v59[3] = v93;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(v59) == 1)
  {
    v42 = -1;
    v43 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
  }

  else
  {
    v56 = *&v60[24];
    v58 = *&v60[8];
    v52 = *&v60[56];
    v54 = *&v60[40];
    v42 = v60[72];
    sub_1D60FB55C(&v60[8], v86);
    v43 = v56;
    v46 = v58;
    v45 = v52;
    v44 = v54;
  }

  v86[0] = v46;
  v86[1] = v43;
  v86[2] = v44;
  v86[3] = v45;
  v87 = v42;
  sub_1D7123DE0(0x6953207468676952, 0xEA00000000006564, v86, v14 + 5 * v11);
  v25((v14 + 5 * v11), 0, 1, v24);
  sub_1D6795150(0x69562074696C7053, 0xEA00000000007765, 0, 0, v13, v84);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v9 + 56) = &type metadata for FormatInspectionGroup;
  *(v9 + 64) = &off_1F518B2C0;
  v47 = swift_allocObject();
  *(v9 + 32) = v47;
  v48 = v84[1];
  *(v47 + 16) = v84[0];
  *(v47 + 32) = v48;
  *(v47 + 48) = v85;
  v49 = sub_1D7073500(v9);
  swift_setDeallocating();
  sub_1D5F10AA0(v9 + 32);
  swift_deallocClassInstance();
  return v49;
}

uint64_t sub_1D60FC500(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x1E69E7CC0];
  sub_1D6998C58(0, v1, 0);
  v2 = v27;
  v3 = a1 + 64;
  result = sub_1D7263B7C();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v8 = *(a1 + 36);
  v25 = v1;
  v26 = v8;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v11 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v6 + 36))
    {
      goto LABEL_23;
    }

    v12 = *(*(v6 + 56) + 8 * v5);
    v14 = *(v27 + 16);
    v13 = *(v27 + 24);
    v15 = v6;

    if (v14 >= v13 >> 1)
    {
      result = sub_1D6998C58((v13 > 1), v14 + 1, 1);
    }

    *(v27 + 16) = v14 + 1;
    *(v27 + 8 * v14 + 32) = v12;
    v9 = 1 << *(v15 + 32);
    if (v5 >= v9)
    {
      goto LABEL_24;
    }

    v3 = a1 + 64;
    v16 = *(a1 + 64 + 8 * v11);
    if ((v16 & (1 << v5)) == 0)
    {
      goto LABEL_25;
    }

    v6 = v15;
    v17 = *(v15 + 36);
    v8 = v26;
    if (v26 != v17)
    {
      goto LABEL_26;
    }

    v18 = v16 & (-2 << (v5 & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v10 = v25;
    }

    else
    {
      v19 = v11 << 6;
      v20 = v11 + 1;
      v21 = (a1 + 72 + 8 * v11);
      v10 = v25;
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_1D5C25E1C(v5, v26, 0);
          v6 = a1;
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_1D5C25E1C(v5, v26, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v9;
    if (v7 == v10)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D60FC754(uint64_t a1, void *a2)
{
  v22 = type metadata accessor for FormatDerivedDataWarningError();
  v5 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v19 = v2;
    v23 = MEMORY[0x1E69E7CC0];
    sub_1D6998D98(0, v9, 0);
    v10 = v23;
    v11 = *(type metadata accessor for FormatDeprecationWarning(0) - 8);
    v12 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v21 = *(v11 + 72);
    sub_1D610AE40();
    v20 = v13;
    do
    {
      v14 = &v8[*(v20 + 48)];
      sub_1D610B210(v12, v8, type metadata accessor for FormatDeprecationWarning);
      v15 = a2[1];
      *v14 = *a2;
      *(v14 + 1) = v15;
      swift_storeEnumTagMultiPayload();
      v23 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);

      if (v17 >= v16 >> 1)
      {
        sub_1D6998D98(v16 > 1, v17 + 1, 1);
        v10 = v23;
      }

      *(v10 + 16) = v17 + 1;
      sub_1D610B500(v8, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, type metadata accessor for FormatDerivedDataWarningError);
      v12 += v21;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_1D60FC98C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v423 = a2;
  v419 = a3;
  v401 = a4;
  v400 = type metadata accessor for FormatFile();
  MEMORY[0x1EEE9AC00](v400, v8);
  v402 = &v390 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v403 = &v390 - v12;
  v13 = type metadata accessor for FormatPackage();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v404 = (&v390 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for FormatDerivedDataResultOptionReference(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v414 = &v390 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6107408();
  v399 = v19;
  v410 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v409 = &v390 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FormatSlotDefinitionItemSet();
  v395 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v396 = &v390 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v397 = &v390 - v27;
  v408 = type metadata accessor for FormatSlotDefinition();
  v413 = *(v408 - 8);
  MEMORY[0x1EEE9AC00](v408, v28);
  v398 = (&v390 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30, v31);
  v411 = &v390 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v407 = &v390 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v412 = (&v390 - v38);
  MEMORY[0x1EEE9AC00](v39, v40);
  v406 = &v390 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v405 = &v390 - v44;
  sub_1D5C4BC40(0, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
  v420 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v417 = (&v390 - v47);
  sub_1D5C4BC40(0, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
  v416 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v418 = (&v390 - v50);
  v427 = type metadata accessor for FormatDerivedDataOption();
  MEMORY[0x1EEE9AC00](v427, v51);
  v421 = &v390 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v430 = type metadata accessor for FormatCompilingSlotDefinition(0);
  v434 = *(v430 - 1);
  MEMORY[0x1EEE9AC00](v430, v53);
  v415 = (&v390 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v55, v56);
  v429 = (&v390 - v57);
  v58 = type metadata accessor for FormatCompilerProperty(0);
  v433 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58 - 8, v59);
  v431 = &v390 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v426 = type metadata accessor for FormatPropertyDefinition(0);
  v432 = *(v426 - 1);
  MEMORY[0x1EEE9AC00](v426, v61);
  v394 = &v390 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63, v64);
  v393 = &v390 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v392 = &v390 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v391 = &v390 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v425 = &v390 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v424 = &v390 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v437 = (&v390 - v80);
  v81 = type metadata accessor for FormatCompilerSlotDefinition(0);
  v436 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81 - 8, v82);
  v85 = &v390 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v438 = a1;
  v428 = (a1 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions);
  v86 = *(a1 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions + 8);
  v435 = *(v86 + 16);
  if (v435)
  {
    v87 = 0;
    v88 = MEMORY[0x1E69E7CC0];
    while (v87 < *(v86 + 16))
    {
      v89 = sub_1D610B210(v86 + ((v436[80] + 32) & ~v436[80]) + *(v436 + 9) * v87, v85, type metadata accessor for FormatCompilerSlotDefinition);
      if ((*(v85 + 8) & 0x8000000000000000) != 0)
      {
        goto LABEL_64;
      }

      MEMORY[0x1EEE9AC00](v89, v90);
      *(&v390 - 2) = v85;
      v92 = sub_1D5D6791C(sub_1D5D67AA0, (&v390 - 4), 0, v91);
      MEMORY[0x1EEE9AC00](v92, v93);
      v94 = v438;
      *(&v390 - 2) = v85;
      *(&v390 - 1) = v94;
      v95 = sub_1D5ECAE04(sub_1D6107470, (&v390 - 4), v92);
      v440 = v6;
      if (v6)
      {

        return sub_1D610B0A8(v85, type metadata accessor for FormatCompilerSlotDefinition);
      }

      v5 = v95;
      v439 = v87;

      v87 = v85;
      sub_1D610B0A8(v85, type metadata accessor for FormatCompilerSlotDefinition);
      v96 = *(v5 + 2);
      v6 = *(v88 + 2);
      v97 = (v6 + v96);
      if (__OFADD__(v6, v96))
      {
        goto LABEL_65;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v97 > *(v88 + 3) >> 1)
      {
        if (v6 <= v97)
        {
          v99 = v6 + v96;
        }

        else
        {
          v99 = v6;
        }

        v88 = sub_1D6992E5C(isUniquelyReferenced_nonNull_native, v99, 1, v88);
      }

      v6 = v440;
      if (*(v5 + 2))
      {
        v87 = v439;
        if ((*(v88 + 3) >> 1) - *(v88 + 2) < v96)
        {
          goto LABEL_70;
        }

        swift_arrayInitWithCopy();

        if (v96)
        {
          v100 = *(v88 + 2);
          v101 = __OFADD__(v100, v96);
          v102 = v100 + v96;
          if (v101)
          {
            goto LABEL_71;
          }

          *(v88 + 2) = v102;
        }
      }

      else
      {

        v87 = v439;
        if (v96)
        {
          goto LABEL_66;
        }
      }

      if (v435 == ++v87)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v433 = v88;

    sub_1D6C4FB24(&unk_1F5111958, &v456);
    if (v6)
    {

      v525 = v451.i64[0];
      sub_1D610B0A8(&v525, sub_1D5B81B04);
      v524 = v451.i64[1];
      sub_1D610B0A8(&v524, sub_1D5B81B04);
      v523 = v452;
      sub_1D6107490(&v523);
      v522 = v453;
      sub_1D6107524(&v522, &qword_1EC883D68, &type metadata for FormatDerivedDataResultBlockReference);
      v521 = v454;
      sub_1D610B0A8(&v521, sub_1D6107594);
      v520 = v455;
      sub_1D6107524(&v520, &qword_1EC883D78, &type metadata for FormatDerivedDataResultItemReference);
      goto LABEL_74;
    }

LABEL_72:
    v519 = v451.i64[0];
    sub_1D610B0A8(&v519, sub_1D5B81B04);
    v518 = v451.i64[1];
    sub_1D610B0A8(&v518, sub_1D5B81B04);
    v517 = v452;
    sub_1D6107490(&v517);
    v516 = v453;
    sub_1D6107524(&v516, &qword_1EC883D68, &type metadata for FormatDerivedDataResultBlockReference);
    v515 = v454;
    sub_1D610B0A8(&v515, sub_1D6107594);
    v514 = v455;
    sub_1D6107524(&v514, &qword_1EC883D78, &type metadata for FormatDerivedDataResultItemReference);
    v512 = v457;
    v513 = v459;
    v511 = v456;
    v103 = v5;
    sub_1D6C9B6D4(v456, v457, v459);
    if (!v6)
    {
      v430 = v85;
      sub_1D610B0A8(&v511, sub_1D5B81B04);
      v507 = *(&v456 + 1);
      sub_1D610B0A8(&v507, sub_1D5B81B04);
      sub_1D6107490(&v512);
      v506 = v458;
      sub_1D6107524(&v506, &qword_1EC883D68, &type metadata for FormatDerivedDataResultBlockReference);
      sub_1D610B0A8(&v513, sub_1D6107594);
      v505 = v460;
      sub_1D6107524(&v505, &qword_1EC883D78, &type metadata for FormatDerivedDataResultItemReference);
      v446 = MEMORY[0x1E69E7CD0];
      v445 = MEMORY[0x1E69E7CD0];
      v159 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups;
      v85 = v87;
      v160 = swift_beginAccess();
      v161 = *(v87 + v159);
      MEMORY[0x1EEE9AC00](v160, v162);
      *(&v390 - 6) = v419;
      *(&v390 - 5) = &v446;
      v163 = v439;
      *(&v390 - 4) = v423;
      *(&v390 - 3) = v163;
      *(&v390 - 2) = v103;
      *(&v390 - 1) = &v445;

      v83 = sub_1D5ECC230(sub_1D6107628, (&v390 - 8), v161);
      goto LABEL_79;
    }

    sub_1D610B0A8(&v511, sub_1D5B81B04);
    v510 = *(&v456 + 1);
    sub_1D610B0A8(&v510, sub_1D5B81B04);
    sub_1D6107490(&v512);
    v509 = v458;
    sub_1D6107524(&v509, &qword_1EC883D68, &type metadata for FormatDerivedDataResultBlockReference);
    sub_1D610B0A8(&v513, sub_1D6107594);
    v508 = v460;
    sub_1D6107524(&v508, &qword_1EC883D78, &type metadata for FormatDerivedDataResultItemReference);

LABEL_74:
  }

  v88 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v5 = *v428;
  v87 = *(*v428 + 2);
  v103 = MEMORY[0x1E69E7CC0];
  if (!v87)
  {
    goto LABEL_33;
  }

  v440 = v88;
  v447 = MEMORY[0x1E69E7CC0];
  sub_1D6998644(0, v87, 0);
  v104 = 0;
  v105 = &v5[(v433[80] + 32) & ~v433[80]];
  do
  {
    if (v104 >= *(v5 + 2))
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v106 = v431;
    sub_1D610B210(&v105[*(v433 + 9) * v104], v431, type metadata accessor for FormatCompilerProperty);
    sub_1D7075A68(v438, v437);
    if (v6)
    {
      sub_1D610B0A8(v106, type metadata accessor for FormatCompilerProperty);
    }

    sub_1D610B0A8(v106, type metadata accessor for FormatCompilerProperty);
    v103 = v447;
    v85 = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D6998644(0, *(v103 + 2) + 1, 1);
      v103 = v447;
    }

    v108 = *(v103 + 2);
    v107 = *(v103 + 3);
    if (v108 >= v107 >> 1)
    {
      sub_1D6998644(v107 > 1, v108 + 1, 1);
      v103 = v447;
    }

    ++v104;
    *(v103 + 2) = v108 + 1;
    v83 = sub_1D610B500(v437, &v103[((*(v432 + 80) + 32) & ~*(v432 + 80)) + *(v432 + 72) * v108], type metadata accessor for FormatPropertyDefinition);
    v6 = 0;
  }

  while (v87 != v104);
  v88 = v440;
LABEL_33:
  v437 = v103;
  v450 = MEMORY[0x1E69E7CD0];
  v436 = *(v88 + 2);
  v110 = v429;
  if (!v436)
  {
LABEL_48:
    type metadata accessor for FormatDerivedDataState();
    v126 = swift_allocObject();
    v127 = MEMORY[0x1E69E7CC8];
    *(v126 + 5) = MEMORY[0x1E69E7CC8];
    *(v126 + 6) = v127;
    *(v126 + 7) = v127;
    v128 = v423;
    *(v126 + 2) = v438;
    *(v126 + 3) = v128;
    v447 = v88;
    sub_1D610A360(0, &qword_1EC883D48, type metadata accessor for FormatCompilingSlotDefinition, MEMORY[0x1E69E62F8]);
    v130 = v129;
    v131 = sub_1D610AFE0(&qword_1EC883D50, &qword_1EC883D48, type metadata accessor for FormatCompilingSlotDefinition);
    v132 = sub_1D610AEAC(&qword_1EC883D58, type metadata accessor for FormatCompilingSlotDefinition);

    v133 = v130;
    v134 = v131;
    *(v126 + 4) = sub_1D72623BC();

    sub_1D6E02B2C();
    sub_1D69AA6B8(v135);
    if (v6)
    {
    }

    v433 = v133;
    v431 = v132;

    v136 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__options;
    swift_beginAccess();

    sub_1D69AA6B8(v137);
    v429 = v136;
    v430 = v131;
    v439 = v126;
    v440 = v88;

    v138 = v437;
    v139 = v437[2];
    if (!v139)
    {
LABEL_56:
      v146 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles;
      v147 = v438;
      swift_beginAccess();
      v435 = v146;
      v6 = *(v147 + v146);
      v148 = *(v6 + 16);

      if (!v148)
      {
        v151 = v439;
LABEL_62:

        type metadata accessor for FormatDerivedDataBinder();
        v153 = swift_allocObject();
        v154 = v440;
        v5 = v153;
        v153[3] = MEMORY[0x1E69E7CC8];
        v155 = MEMORY[0x1E69E7CC0];
        v153[4] = MEMORY[0x1E69E7CC0];
        v428 = (v153 + 4);
        v153[5] = v155;
        v156 = MEMORY[0x1E69E7CD0];
        v153[6] = MEMORY[0x1E69E7CD0];
        v88 = (v153 + 6);
        v153[7] = v156;
        v85 = (v153 + 7);
        v447 = v154;

        v157 = v151;
        *(v5 + 2) = sub_1D72623BC();

        v87 = v438;
        v158 = *(&v429->Kind + v438);

        sub_1D70E2A84(v157, v158, &v451);
        v6 = 0;
        goto LABEL_67;
      }

      v134 = 0;
      v151 = v439;
      while (v134 < *(v6 + 16))
      {

        sub_1D69AA6B8(v152);

        v134 = (v134 + 1);
        if (v148 == v134)
        {
          goto LABEL_62;
        }
      }

      __break(1u);
      goto LABEL_104;
    }

    v6 = 0;
    v435 = v437 + ((*(v432 + 80) + 32) & ~*(v432 + 80));
    v140 = v421;
    while (v6 < v138[2])
    {
      v141 = v424;
      sub_1D610B210(&v435[*(v432 + 72) * v6], v424, type metadata accessor for FormatPropertyDefinition);
      *v140 = FormatPropertyDefinition.identifier.getter();
      *(v140 + 8) = v142;
      v134 = v425;
      sub_1D610B210(v141, v425, type metadata accessor for FormatPropertyDefinition);
      v143 = qword_1D729C598[swift_getEnumCaseMultiPayload()];
      sub_1D610B0A8(v134, type metadata accessor for FormatPropertyDefinition);
      *(v140 + 24) = 0;
      *(v140 + 32) = 0;
      *(v140 + 16) = v143;
      *(v140 + 40) = 0;
      sub_1D610B0A8(v141, type metadata accessor for FormatPropertyDefinition);
      *(v140 + 48) = MEMORY[0x1E69E7CC0];
      v144 = *(v427 + 7);
      v145 = type metadata accessor for FormatVersionRequirement(0);
      (*(*(v145 - 8) + 56))(v140 + v144, 1, 1, v145);
      sub_1D69AA824(v140);
      ++v6;
      sub_1D610B0A8(v140, type metadata accessor for FormatDerivedDataOption);
      v138 = v437;
      if (v139 == v6)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_101:
    v150 = sub_1D62DCBF4(&unk_1F5111980);
    v149 = v446;
    if (*(v446 + 16) > *(v150 + 16) >> 3)
    {
      v180 = sub_1D6E154E0(v446, v150);
      goto LABEL_105;
    }

LABEL_104:
    v447 = v150;
    sub_1D68365A4(v149);
    v180 = v447;
LABEL_105:
    if (*(v180 + 2))
    {

      type metadata accessor for FormatDerivedDataError();
      sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
      swift_allocError();
      v182 = v181;
      v447 = sub_1D5E1E2D8(v180);

      sub_1D5E239F4(&v447);
      if (v6)
      {
        v389 = v6;
        goto LABEL_314;
      }

      v183 = v447;
      v184 = sub_1D62DCBF4(&unk_1F51119B8);
      v447 = sub_1D5E1E2D8(v184);

      sub_1D5E239F4(&v447);

      v185 = v447;

      *v182 = v183;
      v182[1] = v185;
      swift_storeEnumTagMultiPayload();
    }

    else
    {

      v186 = v450;
      v187 = v445;
      if (*(v445 + 16) <= *(v450 + 16) >> 3)
      {
        v447 = v450;

        sub_1D6836478(v187);
        v188 = v447;
      }

      else
      {

        v188 = sub_1D6E14F70(v187, v186);
      }

      if (!*(v188 + 2))
      {

        v85 = v438;
        goto LABEL_80;
      }

      type metadata accessor for FormatDerivedDataError();
      sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
      swift_allocError();
      v194 = v193;
      v447 = sub_1D5E1E408(v188);

      v195 = v6;
      sub_1D5F81CCC(&v447);
      if (v6)
      {
        goto LABEL_312;
      }

      v196 = v447;

      *v194 = v196;
      swift_storeEnumTagMultiPayload();
    }

    swift_willThrow();

    goto LABEL_77;
  }

  v111 = 0;
  v439 = &v88[(*(v434 + 80) + 32) & ~*(v434 + 80)];
  while (v111 < *(v88 + 2))
  {
    v85 = v88;
    v440 = v6;
    sub_1D610B210(&v439[*(v434 + 9) * v111], v110, type metadata accessor for FormatCompilingSlotDefinition);
    v114 = v450;
    if (*(v450 + 16))
    {
      Kind = v110->Kind;
      Description = v110->Description;
      sub_1D7264A0C();
      sub_1D72621EC();
      v117 = sub_1D7264A5C();
      v118 = -1 << *(v114 + 32);
      v119 = v117 & ~v118;
      if ((*(v114 + 56 + ((v119 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v119))
      {
        v120 = ~v118;
        do
        {
          v121 = (*(v114 + 48) + 16 * v119);
          v122 = *v121 == Kind && v121[1] == Description;
          if (v122 || (sub_1D72646CC() & 1) != 0)
          {

            type metadata accessor for FormatDerivedDataError();
            sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
            swift_allocError();
            v123 = v429;
            v124 = v429->Description;
            *v125 = v429->Kind;
            v125[1] = v124;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            return sub_1D610B0A8(v123, type metadata accessor for FormatCompilingSlotDefinition);
          }

          v119 = (v119 + 1) & v120;
        }

        while (((*(v114 + 56 + ((v119 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v119) & 1) != 0);
      }
    }

    ++v111;
    v110 = v429;
    v112 = v429->Kind;
    v113 = v429->Description;

    v103 = &v450;
    sub_1D5B860D0(&v447, v112, v113);

    v83 = sub_1D610B0A8(v110, type metadata accessor for FormatCompilingSlotDefinition);
    v6 = v440;
    v88 = v85;
    if (v111 == v436)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_79:
  v134 = v83;
  v431 = v103;

  if ((v85[OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role] & 0xFE) != 4)
  {
    goto LABEL_101;
  }

LABEL_80:
  v426 = v134;
  v164 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__decorations;
  swift_beginAccess();
  v165 = *(*&v85[v164] + 16);

  v427 = v165;
  if (v165)
  {
    v167 = 0;
    v168 = &type metadata for FormatDerivedDataResultBlockReference;
    v169 = &type metadata for FormatDerivedDataResultItemReference;
    v429 = v166;
    while (v167 < *(v166 + 16))
    {
      sub_1D5CF82C4(v166 + ((v416[80] + 32) & ~v416[80]) + *(v416 + 9) * v167, v418, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
      __swift_project_boxed_opaque_existential_1(v419, v419[3]);
      if (sub_1D725B2DC())
      {

        type metadata accessor for FormatDerivedDataError();
        sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v201 = v418;
LABEL_123:
        sub_1D6107650(v201);
        goto LABEL_76;
      }

      v170 = v423;
      v171 = v418;
      if (!v423[2] || (v172 = sub_1D6D62FB0(*v418, v418[1], 6u), (v173 & 1) == 0))
      {

        type metadata accessor for FormatDerivedDataError();
        sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
        swift_allocError();
        v189 = v171;
        v190 = *v171;
        v191 = v171[1];
        *v192 = v190;
        *(v192 + 8) = v191;
        *(v192 + 16) = 6;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_1D6107650(v189);
        goto LABEL_77;
      }

      v134 = *(v170[7] + 8 * v172);

      sub_1D70E2F38(v439, v134, &v461);
      if (v6)
      {

        v201 = v171;
        goto LABEL_123;
      }

      sub_1D6C4FB24(&unk_1F51119F0, &v466);
      v6 = 0;
      v504[0] = v461.i64[0];
      sub_1D610B0A8(v504, sub_1D5B81B04);
      v503 = v461.i64[1];
      sub_1D610B0A8(&v503, sub_1D5B81B04);
      v502 = v462;
      sub_1D6107490(&v502);
      v501 = v463;
      sub_1D6107524(&v501, &qword_1EC883D68, &type metadata for FormatDerivedDataResultBlockReference);
      v500 = v464;
      sub_1D610B0A8(&v500, sub_1D6107594);
      v499 = v465;
      sub_1D6107524(&v499, &qword_1EC883D78, &type metadata for FormatDerivedDataResultItemReference);
      v498 = v469;
      v497 = v467;
      v496 = v466;
      sub_1D6C9B6D4(v466, v467, v469);
      ++v167;
      sub_1D6107650(v418);
      sub_1D610B0A8(&v496, sub_1D5B81B04);
      v495[0] = *(&v466 + 1);
      sub_1D610B0A8(v495, sub_1D5B81B04);
      sub_1D6107490(&v497);
      v494 = v468;
      sub_1D6107524(&v494, &qword_1EC883D68, &type metadata for FormatDerivedDataResultBlockReference);
      sub_1D610B0A8(&v498, sub_1D6107594);
      v493 = v470;
      sub_1D6107524(&v493, &qword_1EC883D78, &type metadata for FormatDerivedDataResultItemReference);

      v166 = v429;
      if (v427 == v167)
      {
        goto LABEL_88;
      }
    }

    __break(1u);
LABEL_133:
    v176 = v166;

    __swift_project_boxed_opaque_existential_1(v419, v419[3]);
    if (sub_1D725B2DC())
    {

LABEL_99:

      type metadata accessor for FormatDerivedDataError();
      sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

LABEL_119:

      goto LABEL_76;
    }
  }

  else
  {
LABEL_88:

    v174 = *(*&v435[v438] + 16);
    v435 = *&v435[v438];

    v429 = v174;
    if (!v174)
    {
LABEL_96:

      __swift_project_boxed_opaque_existential_1(v419, v419[3]);
      if (sub_1D725B2DC())
      {
      }

      else
      {
        v197 = sub_1D61016BC(v426, sub_1D61016A8, 0);
        if (v6)
        {

          goto LABEL_119;
        }

        v168 = v197;
        __swift_project_boxed_opaque_existential_1(v419, v419[3]);
        if (sub_1D725B2DC())
        {
        }

        else
        {
          v134 = sub_1D61016BC(v426, sub_1D6101B30, 0);
          __swift_project_boxed_opaque_existential_1(v419, v419[3]);
          if ((sub_1D725B2DC() & 1) == 0)
          {
            v166 = sub_1D61016BC(v426, sub_1D6101B44, 0);
            v169 = 0;
            goto LABEL_133;
          }
        }
      }

      goto LABEL_99;
    }

    v175 = 0;
    v176 = &qword_1EC883D68;
    v169 = &type metadata for FormatDerivedDataResultItemReference;
    v168 = &qword_1EC883D78;
    while (v175 < *(v435 + 2))
    {
      sub_1D5CF82C4(&v435[((v420[80] + 32) & ~v420[80]) + *(v420 + 9) * v175], v417, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
      __swift_project_boxed_opaque_existential_1(v419, v419[3]);
      if (sub_1D725B2DC())
      {

        type metadata accessor for FormatDerivedDataError();
        sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

LABEL_128:
        sub_1D5C8C86C(v417);
        goto LABEL_76;
      }

      v177 = v423;
      if (!v423[2] || (v178 = sub_1D6D62FB0(*v417, v417[1], 3u), (v179 & 1) == 0))
      {

        type metadata accessor for FormatDerivedDataError();
        sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
        swift_allocError();
        v198 = v417;
        v199 = v417[1];
        *v200 = *v417;
        *(v200 + 8) = v199;
        *(v200 + 16) = 3;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_1D5C8C86C(v198);
        goto LABEL_77;
      }

      v134 = *(v177[7] + 8 * v178);

      sub_1D70E2F38(v439, v134, &v471);
      if (v6)
      {

        goto LABEL_128;
      }

      sub_1D6C4FB24(&unk_1F5111A18, &v476);
      v6 = 0;
      v492[0] = v471.i64[0];
      sub_1D610B0A8(v492, sub_1D5B81B04);
      v491 = v471.i64[1];
      sub_1D610B0A8(&v491, sub_1D5B81B04);
      v490 = v472;
      sub_1D6107490(&v490);
      v489 = v473;
      sub_1D6107524(&v489, &qword_1EC883D68, &type metadata for FormatDerivedDataResultBlockReference);
      v488 = v474;
      sub_1D610B0A8(&v488, sub_1D6107594);
      v487 = v475;
      sub_1D6107524(&v487, &qword_1EC883D78, &type metadata for FormatDerivedDataResultItemReference);
      v486 = v479;
      v485 = v477;
      v484 = v476;
      sub_1D6C9B6D4(v476, v477, v479);
      ++v175;
      sub_1D5C8C86C(v417);
      sub_1D610B0A8(&v484, sub_1D5B81B04);
      v483[0] = *(&v476 + 1);
      sub_1D610B0A8(v483, sub_1D5B81B04);
      sub_1D6107490(&v485);
      v482 = v478;
      sub_1D6107524(&v482, &qword_1EC883D68, &type metadata for FormatDerivedDataResultBlockReference);
      sub_1D610B0A8(&v486, sub_1D6107594);
      v481 = v480;
      sub_1D6107524(&v481, &qword_1EC883D78, &type metadata for FormatDerivedDataResultItemReference);

      if (v429 == v175)
      {
        goto LABEL_96;
      }
    }

    __break(1u);
  }

  v447 = v168;
  sub_1D69859BC(v134);
  sub_1D69859BC(v176);
  v195 = v169;
  v202 = sub_1D61091B4(v447, MEMORY[0x1E69E7CD0]);
  v429 = v169;
  if (v169)
  {

LABEL_138:
  }

  v203 = v202;

  v447 = v203;
  sub_1D610A360(0, &qword_1EDF43BD0, type metadata accessor for FormatSlotDefinition, MEMORY[0x1E69E62F8]);
  sub_1D610AFE0(&qword_1EC883D80, &qword_1EDF43BD0, type metadata accessor for FormatSlotDefinition);
  sub_1D610AEAC(&qword_1EC883D88, type metadata accessor for FormatSlotDefinition);
  v435 = sub_1D72623BC();

  if (v436)
  {
    v204 = 0;
    v426 = (v440 + ((*(v434 + 80) + 32) & ~*(v434 + 80)));
    v427 = MEMORY[0x1E69E7CC0];
    while (v204 < *(v440 + 16))
    {
      sub_1D610B210(v426 + *(v434 + 9) * v204, v415, type metadata accessor for FormatCompilingSlotDefinition);
      if (*(v435 + 2) && (v205 = sub_1D5B69D90(*v415, v415[1]), (v206 & 1) != 0))
      {
        v207 = *(v435 + 7);
        v424 = *(v413 + 72);
        v208 = v407;
        sub_1D610B210(v207 + v424 * v205, v407, type metadata accessor for FormatSlotDefinition);
        v209 = v412;
        v210 = sub_1D610B500(v208, v412, type metadata accessor for FormatSlotDefinition);
        v211 = v209[1];
        v423 = *v209;
        v212 = v209[2];
        v213 = v209[3];
        v214 = v209[5];
        v420 = v209[4];
        v421 = v212;
        v215 = v209[6];
        MEMORY[0x1EEE9AC00](v210, v216);
        v217 = v438;
        *(&v390 - 2) = v415;
        *(&v390 - 1) = v217;

        v218 = v213;

        v425 = v214;

        v219 = v215;
        v195 = v429;
        v220 = sub_1D5ECAFC8(sub_1D610AE20, (&v390 - 4), v219);
        v429 = v195;
        if (v195)
        {

          sub_1D610B0A8(v412, type metadata accessor for FormatSlotDefinition);
          sub_1D610B0A8(v415, type metadata accessor for FormatCompilingSlotDefinition);

          goto LABEL_138;
        }

        v221 = v220;
        v222 = v412;
        v224 = v412[7];
        v223 = v412[8];
        v225 = v406;
        sub_1D5CDE26C(v412 + *(v408 + 40), &v406[*(v408 + 40)], &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
        *v225 = v423;
        *(v225 + 1) = v211;
        v226 = v420;
        *(v225 + 2) = v421;
        *(v225 + 3) = v218;
        v227 = v425;
        *(v225 + 4) = v226;
        *(v225 + 5) = v227;
        *(v225 + 6) = v221;
        *(v225 + 7) = v224;
        *(v225 + 8) = v223;

        sub_1D610B0A8(v222, type metadata accessor for FormatSlotDefinition);
        sub_1D610B0A8(v415, type metadata accessor for FormatCompilingSlotDefinition);
        v228 = v405;
        sub_1D610B500(v225, v405, type metadata accessor for FormatSlotDefinition);
        sub_1D610B500(v228, v411, type metadata accessor for FormatSlotDefinition);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v427 = sub_1D5D5CA88(0, v427[2] + 1, 1, v427);
        }

        v230 = v427[2];
        v229 = v427[3];
        if (v230 >= v229 >> 1)
        {
          v427 = sub_1D5D5CA88(v229 > 1, v230 + 1, 1, v427);
        }

        v231 = v427;
        v427[2] = v230 + 1;
        sub_1D610B500(v411, v231 + ((*(v413 + 80) + 32) & ~*(v413 + 80)) + v230 * v424, type metadata accessor for FormatSlotDefinition);
      }

      else
      {
        sub_1D610B0A8(v415, type metadata accessor for FormatCompilingSlotDefinition);
      }

      if (v436 == ++v204)
      {

        goto LABEL_154;
      }
    }

    __break(1u);
LABEL_301:

    sub_1D610B500(v403, v401, type metadata accessor for FormatFile);
    goto LABEL_293;
  }

  v427 = MEMORY[0x1E69E7CC0];
LABEL_154:
  v444 = MEMORY[0x1E69E7CC8];
  v418 = v427[2];
  if (!v418)
  {
LABEL_261:
    v341 = OBJC_IVAR____TtC8NewsFeed25FormatDerivedDataCompiler_settings;
    v195 = v429;
    sub_1D6102FDC(v438, v431);
    v440 = v195;
    if (v195)
    {
      v342 = *(v422 + v341);
      if (!*(v342 + 16) || (sub_1D7264A0C(), sub_1D72621EC(), v343 = sub_1D7264A5C(), v344 = -1 << *(v342 + 32), v345 = v343 & ~v344, ((*(v342 + 56 + ((v345 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v345) & 1) == 0))
      {
LABEL_269:

        swift_willThrow();

        goto LABEL_76;
      }

      v346 = ~v344;
      v436 = "unusedProperties";
      v434 = 0;
      v435 = "duplicateNewsroomIdentifiers";
      while (1)
      {
        v347 = *(*(v342 + 48) + v345);
        if (v347 != 1 && v347 != 2)
        {
          break;
        }

        v348 = sub_1D72646CC();

        if (v348)
        {
          goto LABEL_279;
        }

        v345 = (v345 + 1) & v346;
        if (((*(v342 + 56 + ((v345 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v345) & 1) == 0)
        {
          goto LABEL_269;
        }
      }

LABEL_279:
    }

    else
    {
      v434 = 0;
    }

    v354 = v428;
    swift_beginAccess();
    v355 = *v354;
    v356 = *(*v354 + 2);
    if (v356)
    {
      v357 = v409 + *(v399 + 48);
      v358 = &v355[(*(v410 + 80) + 32) & ~*(v410 + 80)];

      v359 = 0;
      while (v359 < *(v355 + 2))
      {
        v360 = v409;
        sub_1D610B210(&v358[*(v410 + 72) * v359], v409, sub_1D6107408);
        sub_1D6007718(*v357, *(v357 + 8), *(v357 + 16));
        v361 = v360;
        v362 = v414;
        sub_1D610B500(v361, v414, type metadata accessor for FormatDerivedDataResultOptionReference);
        v364 = *(v362 + 8);
        v363 = *(v362 + 16);
        swift_beginAccess();
        if (v444[2] && (sub_1D5B69D90(v364, v363), (v365 & 1) != 0))
        {
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
          if ((*(v414 + 32) & 1) == 0)
          {

            type metadata accessor for FormatDerivedDataError();
            sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
            v440 = swift_allocError();
            v373 = v414;
            v374 = *(v414 + 40);
            v375 = *(v414 + 48);
            v376 = *(v414 + 56);
            *v377 = v364;
            *(v377 + 8) = v363;
            *(v377 + 16) = v374;
            *(v377 + 24) = v375;
            *(v377 + 32) = v376;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            sub_1D5DEA210(v374, v375, v376);

            sub_1D610B0A8(v373, type metadata accessor for FormatDerivedDataResultOptionReference);
            goto LABEL_76;
          }
        }

        ++v359;
        sub_1D610B0A8(v414, type metadata accessor for FormatDerivedDataResultOptionReference);
        if (v356 == v359)
        {

          goto LABEL_289;
        }
      }

      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
      goto LABEL_311;
    }

LABEL_289:
    v366 = v433;
    swift_beginAccess();
    v367 = *v366;
    v368 = v430;
    swift_beginAccess();
    v369 = *v368;
    v370 = v438;

    sub_1D6878C04(v370, v427, v437, v367, v369, v404);
    __swift_project_boxed_opaque_existential_1(v419, v419[3]);
    if ((sub_1D725B2DC() & 1) == 0)
    {
      v371 = v434;
      sub_1D6103428(v404, v431);
      if (v371)
      {
        goto LABEL_292;
      }

      v378 = v372;
      __swift_project_boxed_opaque_existential_1(v419, v419[3]);
      if ((sub_1D725B2DC() & 1) == 0)
      {
        v379 = v404;
        sub_1D610B210(v404, v403, type metadata accessor for FormatPackage);
        swift_storeEnumTagMultiPayload();
        v441 = MEMORY[0x1E69E7CC0];
        v380 = sub_1D60FC754(v378, v379);

        sub_1D69870D0(v380);
        v381 = *v430;

        v382 = sub_1D6105564(v438, v381, v379);

        sub_1D69870D0(v382);
        v383 = sub_1D610A6C8(v379);
        sub_1D69870D0(v383);
        v384 = v441;
        if (!*(v441 + 16))
        {
          goto LABEL_301;
        }

        v386 = v402;
        v385 = v403;
        sub_1D610B210(v403, v402, type metadata accessor for FormatFile);
        type metadata accessor for FormatDerivedDataWarning();
        v387 = swift_allocObject();
        sub_1D610B500(v386, v387 + OBJC_IVAR____TtC8NewsFeed24FormatDerivedDataWarning_file, type metadata accessor for FormatFile);
        *(v387 + OBJC_IVAR____TtC8NewsFeed24FormatDerivedDataWarning_errors) = v384;
        sub_1D610AEAC(&qword_1EC883D90, type metadata accessor for FormatDerivedDataWarning);
        swift_allocError();
        *v388 = v387;
        swift_willThrow();

        sub_1D610B0A8(v385, type metadata accessor for FormatFile);
LABEL_293:
        v352 = type metadata accessor for FormatPackage;
        v353 = v404;
        goto LABEL_277;
      }
    }

    type metadata accessor for FormatDerivedDataError();
    sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_292:

    goto LABEL_293;
  }

  v424 = OBJC_IVAR____TtC8NewsFeed25FormatDerivedDataCompiler_settings;
  v425 = 0;
  v420 = v427 + ((*(v413 + 80) + 32) & ~*(v413 + 80));
  v435 = "unusedProperties";
  v436 = "bility-news-plus-via-hardware";
  v434 = "duplicateNewsroomIdentifiers";
  while (1)
  {
    if (v425 >= v427[2])
    {
      goto LABEL_304;
    }

    v232 = v398;
    sub_1D610B210(&v420[*(v413 + 72) * v425], v398, type metadata accessor for FormatSlotDefinition);
    v426 = v232[8];
    v421 = v426[2];
    if (v421)
    {
      v233 = 0;
      v423 = (v426 + ((*(v432 + 80) + 32) & ~*(v432 + 80)));
      do
      {
        if (v233 >= v426[2])
        {
          goto LABEL_303;
        }

        v241 = v391;
        sub_1D610B210(v423 + *(v432 + 72) * v233, v391, type metadata accessor for FormatPropertyDefinition);
        v195 = v429;
        sub_1D6101B60(v431, v241, v398);
        v440 = v195;
        if (v195)
        {
          v242 = *(v422 + v424);
          if (!*(v242 + 16) || (sub_1D7264A0C(), sub_1D72621EC(), v243 = sub_1D7264A5C(), v244 = -1 << *(v242 + 32), v245 = v243 & ~v244, ((*(v242 + 56 + ((v245 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v245) & 1) == 0))
          {
LABEL_270:

            swift_willThrow();

            v349 = type metadata accessor for FormatPropertyDefinition;
            v350 = v391;
LABEL_276:
            sub_1D610B0A8(v350, v349);

            v352 = type metadata accessor for FormatSlotDefinition;
            v353 = v398;
LABEL_277:
            sub_1D610B0A8(v353, v352);
LABEL_76:

LABEL_77:
          }

          v429 = 0;
          v246 = ~v244;
          while (1)
          {
            v247 = *(*(v242 + 48) + v245);
            if (v247 != 1 && v247 != 2)
            {
              break;
            }

            v248 = sub_1D72646CC();

            if (v248)
            {
              goto LABEL_173;
            }

            v245 = (v245 + 1) & v246;
            if (((*(v242 + 56 + ((v245 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v245) & 1) == 0)
            {
              goto LABEL_270;
            }
          }

LABEL_173:
        }

        else
        {
          v429 = 0;
        }

        v249 = *v398;
        v250 = v398[1];
        v251 = FormatPropertyDefinition.identifier.getter();
        v253 = v252;
        swift_beginAccess();
        if (v444[2])
        {
          sub_1D5B69D90(v251, v253);
          v255 = v254;

          v234 = MEMORY[0x1E69E7CD0];
          if (v255)
          {
          }
        }

        else
        {

          v234 = MEMORY[0x1E69E7CD0];
        }

        ++v233;
        v443 = v234;
        swift_endAccess();

        sub_1D5FEE050(&v447, v249, v250, 0);
        sub_1D6007718(v447, v448, v449);
        v235 = v391;
        v236 = FormatPropertyDefinition.identifier.getter();
        v238 = v237;
        v239 = v443;
        swift_beginAccess();
        v240 = swift_isUniquelyReferenced_nonNull_native();
        v442 = v444;
        sub_1D6D79E00(v239, v236, v238, v240);

        v444 = v442;
        swift_endAccess();
        sub_1D610B0A8(v235, type metadata accessor for FormatPropertyDefinition);
      }

      while (v233 != v421);
    }

    v421 = v398[6];
    v412 = *(v421 + 2);
    if (v412)
    {
      break;
    }

LABEL_260:
    v340 = v425 + 1;
    sub_1D610B0A8(v398, type metadata accessor for FormatSlotDefinition);
    v425 = v340;
    if (v340 == v418)
    {
      goto LABEL_261;
    }
  }

  v423 = 0;
  v408 = (*(v395 + 80) + 32) & ~*(v395 + 80);
  v415 = &v421[v408];
  while (2)
  {
    if (v423 >= *(v421 + 2))
    {
      goto LABEL_307;
    }

    v411 = *(v395 + 72);
    v256 = v397;
    sub_1D610B210(v415 + v411 * v423, v397, type metadata accessor for FormatSlotDefinitionItemSet);
    v426 = *(v256 + 16);
    v416 = v426[2];
    if (v416)
    {
      v440 = 0;
      v417 = (v426 + ((*(v432 + 80) + 32) & ~*(v432 + 80)));
      do
      {
        if (v440 >= v426[2])
        {
          goto LABEL_305;
        }

        v259 = v392;
        sub_1D610B210(v417 + *(v432 + 72) * v440, v392, type metadata accessor for FormatPropertyDefinition);
        v195 = v429;
        sub_1D6102204(v431, v259, v398);
        if (v195)
        {
          v260 = *(v422 + v424);
          if (!*(v260 + 16) || (sub_1D7264A0C(), sub_1D72621EC(), v261 = sub_1D7264A5C(), v262 = -1 << *(v260 + 32), v263 = v261 & ~v262, ((*(v260 + 56 + ((v263 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v263) & 1) == 0))
          {
LABEL_273:

            swift_willThrow();

            v351 = v392;
LABEL_275:
            sub_1D610B0A8(v351, type metadata accessor for FormatPropertyDefinition);
            v349 = type metadata accessor for FormatSlotDefinitionItemSet;
            v350 = v397;
            goto LABEL_276;
          }

          v429 = 0;
          v264 = ~v262;
          while (1)
          {
            v265 = *(*(v260 + 48) + v263);
            if (v265 != 1 && v265 != 2)
            {
              break;
            }

            v266 = sub_1D72646CC();

            if (v266)
            {
              goto LABEL_196;
            }

            v263 = (v263 + 1) & v264;
            if (((*(v260 + 56 + ((v263 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v263) & 1) == 0)
            {
              goto LABEL_273;
            }
          }

LABEL_196:
        }

        else
        {
          v429 = 0;
        }

        v267 = *v398;
        v268 = v398[1];
        v269 = FormatPropertyDefinition.identifier.getter();
        v271 = v270;
        swift_beginAccess();
        if (v444[2])
        {
          sub_1D5B69D90(v269, v271);
          v273 = v272;

          v274 = MEMORY[0x1E69E7CD0];
          if (v273)
          {
          }
        }

        else
        {

          v274 = MEMORY[0x1E69E7CD0];
        }

        v443 = v274;
        swift_endAccess();

        sub_1D5FEE050(&v447, v267, v268, 2u);
        sub_1D6007718(v447, v448, v449);
        v275 = FormatPropertyDefinition.identifier.getter();
        v277 = v276;
        v278 = v443;
        swift_beginAccess();
        v279 = swift_isUniquelyReferenced_nonNull_native();
        v280 = v444;
        v442 = v444;
        v282 = sub_1D5B69D90(v275, v277);
        v283 = v280[2];
        v284 = (v281 & 1) == 0;
        v285 = v283 + v284;
        if (__OFADD__(v283, v284))
        {
          goto LABEL_306;
        }

        v286 = v281;
        if (v280[3] >= v285)
        {
          if (v279)
          {
            if (v281)
            {
              goto LABEL_182;
            }
          }

          else
          {
            sub_1D6D81F94();
            if (v286)
            {
              goto LABEL_182;
            }
          }
        }

        else
        {
          sub_1D6D6CF88(v285, v279);
          v287 = sub_1D5B69D90(v275, v277);
          if ((v286 & 1) != (v288 & 1))
          {
            goto LABEL_315;
          }

          v282 = v287;
          if (v286)
          {
LABEL_182:

            v257 = v442;
            *(v442[7] + 8 * v282) = v278;

            goto LABEL_183;
          }
        }

        v257 = v442;
        v442[(v282 >> 6) + 8] |= 1 << v282;
        v289 = (v257[6] + 16 * v282);
        *v289 = v275;
        v289[1] = v277;
        *(v257[7] + 8 * v282) = v278;
        v290 = v257[2];
        v101 = __OFADD__(v290, 1);
        v291 = v290 + 1;
        if (v101)
        {
          goto LABEL_308;
        }

        v257[2] = v291;
LABEL_183:
        v258 = (v440 + 1);
        v444 = v257;
        swift_endAccess();
        sub_1D610B0A8(v392, type metadata accessor for FormatPropertyDefinition);
        v440 = v258;
      }

      while (v258 != v416);
    }

    v426 = *(v397 + 24);
    if (!v426)
    {
      goto LABEL_259;
    }

    v407 = *(v397 + 32);
    v416 = v426[2];
    if (v416)
    {
      v417 = (v426 + ((*(v432 + 80) + 32) & ~*(v432 + 80)));

      v292 = 0;
      while (v292 < v426[2])
      {
        v299 = v393;
        sub_1D610B210(v417 + *(v432 + 72) * v292, v393, type metadata accessor for FormatPropertyDefinition);
        v195 = v429;
        sub_1D61027EC(v431, v299, v398);
        v440 = v195;
        if (v195)
        {
          v300 = *(v422 + v424);
          if (!*(v300 + 16) || (sub_1D7264A0C(), sub_1D72621EC(), v301 = sub_1D7264A5C(), v302 = -1 << *(v300 + 32), v303 = v301 & ~v302, ((*(v300 + 56 + ((v303 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v303) & 1) == 0))
          {
LABEL_274:

            swift_willThrow();

            v351 = v393;
            goto LABEL_275;
          }

          v429 = 0;
          v304 = ~v302;
          while (1)
          {
            v305 = *(*(v300 + 48) + v303);
            if (v305 != 1 && v305 != 2)
            {
              break;
            }

            v306 = sub_1D72646CC();

            if (v306)
            {
              goto LABEL_229;
            }

            v303 = (v303 + 1) & v304;
            if (((*(v300 + 56 + ((v303 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v303) & 1) == 0)
            {
              goto LABEL_274;
            }
          }

LABEL_229:
        }

        else
        {
          v429 = 0;
        }

        v307 = *v398;
        v308 = v398[1];
        v309 = FormatPropertyDefinition.identifier.getter();
        v311 = v310;
        swift_beginAccess();
        if (v444[2])
        {
          sub_1D5B69D90(v309, v311);
          v313 = v312;

          v293 = MEMORY[0x1E69E7CD0];
          if (v313)
          {
          }
        }

        else
        {

          v293 = MEMORY[0x1E69E7CD0];
        }

        ++v292;
        v443 = v293;
        swift_endAccess();

        sub_1D5FEE050(&v447, v307, v308, 3u);
        sub_1D6007718(v447, v448, v449);
        v294 = v393;
        v295 = FormatPropertyDefinition.identifier.getter();
        v297 = v296;
        v298 = v443;
        swift_beginAccess();
        sub_1D6D60F2C(v298, v295, v297);
        swift_endAccess();
        sub_1D610B0A8(v294, type metadata accessor for FormatPropertyDefinition);
        if (v292 == v416)
        {

          goto LABEL_234;
        }
      }

      goto LABEL_309;
    }

LABEL_234:
    v390 = *(v407 + 16);
    if (!v390)
    {
LABEL_259:
      v339 = (v423 + 1);
      sub_1D610B0A8(v397, type metadata accessor for FormatSlotDefinitionItemSet);
      v423 = v339;
      if (v339 == v412)
      {
        goto LABEL_260;
      }

      continue;
    }

    break;
  }

  v405 = v407 + v408;

  v417 = 0;
  while (v417 < *(v407 + 16))
  {
    v314 = v396;
    sub_1D610B210(v405 + v417 * v411, v396, type metadata accessor for FormatSlotDefinitionItemSet);
    v426 = *(v314 + 16);
    v406 = v426[2];
    if (v406)
    {
      v315 = 0;
      v416 = v426 + ((*(v432 + 80) + 32) & ~*(v432 + 80));
      while (v315 < v426[2])
      {
        v323 = v394;
        sub_1D610B210(&v416[*(v432 + 72) * v315], v394, type metadata accessor for FormatPropertyDefinition);
        v195 = v429;
        sub_1D6102C44(v431, v323, v398);
        v440 = v195;
        if (v195)
        {
          v324 = *(v422 + v424);
          if (!*(v324 + 16) || (sub_1D7264A0C(), sub_1D72621EC(), v325 = sub_1D7264A5C(), v326 = -1 << *(v324 + 32), v327 = v325 & ~v326, ((*(v324 + 56 + ((v327 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v327) & 1) == 0))
          {
LABEL_297:

            swift_willThrow();

            sub_1D610B0A8(v394, type metadata accessor for FormatPropertyDefinition);
            sub_1D610B0A8(v396, type metadata accessor for FormatSlotDefinitionItemSet);
            v350 = v397;
            v349 = type metadata accessor for FormatSlotDefinitionItemSet;
            goto LABEL_276;
          }

          v429 = 0;
          v328 = ~v326;
          while (1)
          {
            v329 = *(*(v324 + 48) + v327);
            if (v329 != 1 && v329 != 2)
            {
              break;
            }

            v330 = sub_1D72646CC();

            if (v330)
            {
              goto LABEL_253;
            }

            v327 = (v327 + 1) & v328;
            if (((*(v324 + 56 + ((v327 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v327) & 1) == 0)
            {
              goto LABEL_297;
            }
          }

LABEL_253:
        }

        else
        {
          v429 = 0;
        }

        v331 = *v398;
        v332 = v398[1];
        v333 = FormatPropertyDefinition.identifier.getter();
        v335 = v334;
        swift_beginAccess();
        if (v444[2])
        {
          sub_1D5B69D90(v333, v335);
          v337 = v336;

          v316 = MEMORY[0x1E69E7CD0];
          if (v337)
          {
          }
        }

        else
        {

          v316 = MEMORY[0x1E69E7CD0];
        }

        ++v315;
        v443 = v316;
        swift_endAccess();

        sub_1D5FEE050(&v447, v331, v332, 4u);
        sub_1D6007718(v447, v448, v449);
        v317 = v394;
        v318 = FormatPropertyDefinition.identifier.getter();
        v320 = v319;
        v321 = v443;
        swift_beginAccess();
        v322 = swift_isUniquelyReferenced_nonNull_native();
        v442 = v444;
        sub_1D6D79E00(v321, v318, v320, v322);

        v444 = v442;
        swift_endAccess();
        sub_1D610B0A8(v317, type metadata accessor for FormatPropertyDefinition);
        if (v315 == v406)
        {
          goto LABEL_257;
        }
      }

      goto LABEL_310;
    }

LABEL_257:
    v338 = (v417 + 1);
    sub_1D610B0A8(v396, type metadata accessor for FormatSlotDefinitionItemSet);
    v417 = v338;
    if (v338 == v390)
    {

      goto LABEL_259;
    }
  }

LABEL_311:
  __break(1u);
LABEL_312:
  v389 = v195;
LABEL_314:

  __break(1u);
LABEL_315:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D61010FC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X7>, uint64_t a6@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (sub_1D725B2DC())
  {
    type metadata accessor for FormatDerivedDataError();
    sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
    v11 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    result = swift_willThrow();
    *a5 = v11;
  }

  else
  {

    sub_1D6E464C0(v13);
    v15 = *a1;
    v14 = a1[1];
    if (*(a3 + 16) && (v16 = sub_1D6D62FB0(*a1, a1[1], 0), (v17 & 1) != 0))
    {
      v18 = *(*(a3 + 56) + 8 * v16);

      sub_1D70E2F38(a4, v18, &v23);
      if (v6)
      {

        *a5 = v6;
      }

      else
      {
        sub_1D6C4FB24(&unk_1F5111A40, &v28);
        v43 = v23.i64[0];
        sub_1D610B0A8(&v43, sub_1D5B81B04);
        v42 = v23.i64[1];
        sub_1D610B0A8(&v42, sub_1D5B81B04);
        v41 = v24;
        sub_1D6107490(&v41);
        v40 = v25;
        sub_1D6107524(&v40, &qword_1EC883D68, &type metadata for FormatDerivedDataResultBlockReference);
        v39 = v26;
        sub_1D610B0A8(&v39, sub_1D6107594);
        v38 = v27;
        sub_1D6107524(&v38, &qword_1EC883D78, &type metadata for FormatDerivedDataResultItemReference);
        v37 = v31;
        v35 = v28;
        v36 = v29;
        sub_1D6C9B6D4(v28, v29, v31);

        sub_1D5B886D0(v21);
        sub_1D6C95D8C(a1, &v28, a6);
        sub_1D610B0A8(&v35, sub_1D5B81B04);

        sub_1D6107490(&v36);
        v34 = v30;
        sub_1D6107524(&v34, &qword_1EC883D68, &type metadata for FormatDerivedDataResultBlockReference);
        sub_1D610B0A8(&v37, sub_1D6107594);
        v33 = v32;
        sub_1D6107524(&v33, &qword_1EC883D78, &type metadata for FormatDerivedDataResultItemReference);
      }
    }

    else
    {
      type metadata accessor for FormatDerivedDataError();
      sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
      v19 = swift_allocError();
      *v20 = v15;
      *(v20 + 8) = v14;
      *(v20 + 16) = 0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      *a5 = v19;
    }
  }

  return result;
}

uint64_t sub_1D61016BC(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = type metadata accessor for FormatDerivedDataBinderResult();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v45 - v17;

  sub_1D62EDC68(a2, a3, a1);
  v51 = MEMORY[0x1E69E7CD0];
  v20 = *(v19 + 16);
  if (!v20)
  {
    v31 = MEMORY[0x1E69E7CC8];
LABEL_10:

    v5 = sub_1D6109024(v31);

    if (!v4)
    {
      v14 = sub_1D60FC500(v5);
      v49 = 0;

      v32 = *(v14 + 2);
      if (v32)
      {
        v33 = 0;
        v34 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v33 >= *(v14 + 2))
          {
            goto LABEL_36;
          }

          v35 = *&v14[8 * v33 + 32];
          v5 = *(v35 + 16);
          v36 = v34[2];
          v6 = &v5[v36];
          if (__OFADD__(v36, v5))
          {
            goto LABEL_37;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native && v6 <= v34[3] >> 1)
          {
            if (!*(v35 + 16))
            {
              goto LABEL_13;
            }
          }

          else
          {
            if (v36 <= v6)
            {
              v38 = &v5[v36];
            }

            else
            {
              v38 = v36;
            }

            v34 = sub_1D5D5CA88(isUniquelyReferenced_nonNull_native, v38, 1, v34);
            if (!*(v35 + 16))
            {
LABEL_13:

              if (v5)
              {
                goto LABEL_38;
              }

              goto LABEL_14;
            }
          }

          v6 = ((v34[3] >> 1) - v34[2]);
          type metadata accessor for FormatSlotDefinition();
          if (v6 < v5)
          {
            goto LABEL_39;
          }

          swift_arrayInitWithCopy();

          if (v5)
          {
            v39 = v34[2];
            v40 = __OFADD__(v39, v5);
            v41 = &v5[v39];
            if (v40)
            {
              goto LABEL_40;
            }

            v34[2] = v41;
          }

LABEL_14:
          if (v32 == ++v33)
          {
            goto LABEL_30;
          }
        }
      }

      v34 = MEMORY[0x1E69E7CC0];
LABEL_30:

      v42 = v49;
      v43 = sub_1D61091B4(v34, v51);
      if (!v42)
      {
        v6 = v43;

        return v6;
      }
    }

    return v6;
  }

  v21 = *(v10 + 28);
  v48 = v6;
  v49 = v21;
  v22 = *(v11 + 80);
  v46 = v20;
  v47 = v19;
  v23 = v19 + ((v22 + 32) & ~v22);
  v24 = *(v11 + 72);
  v25 = v23;
  v26 = v20;
  do
  {
    sub_1D610B210(v25, v18, type metadata accessor for FormatDerivedDataBinderResult);
    v27 = *&v18[v49];

    sub_1D610B0A8(v18, type metadata accessor for FormatDerivedDataBinderResult);
    sub_1D5B886D0(v27);
    v25 += v24;
    --v26;
  }

  while (v26);
  v28 = 0;
  v50 = MEMORY[0x1E69E7CC8];
  v29 = v47;
  v6 = v48;
  v30 = v46;
  while (v28 < *(v29 + 16))
  {
    sub_1D610B210(v23, v14, type metadata accessor for FormatDerivedDataBinderResult);
    sub_1D610612C(&v50, v14);
    if (v4)
    {
      goto LABEL_41;
    }

    ++v28;
    sub_1D610B0A8(v14, type metadata accessor for FormatDerivedDataBinderResult);
    v23 += v24;
    if (v30 == v28)
    {
      v31 = v50;
      goto LABEL_10;
    }
  }

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

  sub_1D610B0A8(v14, type metadata accessor for FormatDerivedDataBinderResult);

  __break(1u);
  return result;
}

BOOL sub_1D6101B44(uint64_t a1)
{
  v1 = *(a1 + 128);
  v2 = v1 & 0xE0;
  v3 = v1 - 195;
  return v2 != 192 || v3 < 0xFFFFFFFD;
}

uint64_t sub_1D6101B60(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  v5 = *(a1 + 24);

  v6 = FormatPropertyDefinition.identifier.getter();
  if (*(v5 + 16))
  {
    v8 = sub_1D5B69D90(v6, v7);
    v10 = v9;

    if (v10)
    {
      v11 = *(*(v5 + 56) + 8 * v8);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = MEMORY[0x1E69E7CD0];
LABEL_6:

  if (sub_1D695B3BC())
  {
  }

  v13 = sub_1D695BC10();
  if (*(v13 + 16))
  {
    sub_1D7264A0C();
    sub_1D72621EC();
    v14 = sub_1D7264A5C();
    v15 = -1 << *(v13 + 32);
    v16 = v14 & ~v15;
    if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
    {
      v17 = ~v15;
      while (1)
      {
        v18 = *(*(v13 + 48) + v16);
        if (v18 != 1 && v18 != 2)
        {
          break;
        }

        v19 = sub_1D72646CC();

        if (v19)
        {
        }

        v16 = (v16 + 1) & v17;
        if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }
  }

LABEL_15:

  v20 = *a3;
  v21 = a3[1];
  if (*(v11 + 16))
  {
    sub_1D7264A0C();
    MEMORY[0x1DA6FC0B0](1);
    sub_1D72621EC();
    v22 = sub_1D7264A5C();
    v23 = v11 + 56;
    v24 = -1 << *(v11 + 32);
    v25 = v22 & ~v24;
    if ((*(v11 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
    {
      v26 = ~v24;
      v27 = *(v11 + 48);
      do
      {
        v28 = v27 + 24 * v25;
        if (!*(v28 + 16))
        {
          v29 = *v28 == v20 && *(v28 + 8) == v21;
          if (v29 || (sub_1D72646CC() & 1) != 0)
          {
          }
        }

        v25 = (v25 + 1) & v26;
      }

      while (((*(v23 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0);
    }

    if (*(v11 + 16))
    {
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](2);
      sub_1D72621EC();
      v30 = sub_1D7264A5C();
      v31 = -1 << *(v11 + 32);
      v32 = v30 & ~v31;
      if ((*(v23 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
      {
        v33 = ~v31;
        v34 = *(v11 + 48);
        do
        {
          v35 = v34 + 24 * v32;
          if (*(v35 + 16) == 1)
          {
            v36 = *v35 == v20 && *(v35 + 8) == v21;
            if (v36 || (sub_1D72646CC() & 1) != 0)
            {
            }
          }

          v32 = (v32 + 1) & v33;
        }

        while (((*(v23 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0);
      }

      if (*(v11 + 16))
      {
        sub_1D7264A0C();
        MEMORY[0x1DA6FC0B0](3);
        sub_1D72621EC();
        v37 = sub_1D7264A5C();
        v38 = -1 << *(v11 + 32);
        v39 = v37 & ~v38;
        if ((*(v23 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
        {
          v40 = ~v38;
          v41 = *(v11 + 48);
          do
          {
            v42 = v41 + 24 * v39;
            if (*(v42 + 16) == 2)
            {
              v43 = *v42 == v20 && *(v42 + 8) == v21;
              if (v43 || (sub_1D72646CC() & 1) != 0)
              {
              }
            }

            v39 = (v39 + 1) & v40;
          }

          while (((*(v23 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0);
        }

        if (*(v11 + 16))
        {
          sub_1D7264A0C();
          MEMORY[0x1DA6FC0B0](4);
          sub_1D72621EC();
          v44 = sub_1D7264A5C();
          v45 = -1 << *(v11 + 32);
          v46 = v44 & ~v45;
          if ((*(v23 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
          {
            v47 = ~v45;
            v48 = *(v11 + 48);
            do
            {
              v49 = v48 + 24 * v46;
              if (*(v49 + 16) == 3)
              {
                v50 = *v49 == v20 && *(v49 + 8) == v21;
                if (v50 || (sub_1D72646CC() & 1) != 0)
                {
                }
              }

              v46 = (v46 + 1) & v47;
            }

            while (((*(v23 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) != 0);
          }

          if (*(v11 + 16))
          {
            sub_1D7264A0C();
            MEMORY[0x1DA6FC0B0](5);
            sub_1D72621EC();
            v51 = sub_1D7264A5C();
            v52 = -1 << *(v11 + 32);
            v53 = v51 & ~v52;
            if ((*(v23 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53))
            {
              v54 = ~v52;
              v55 = *(v11 + 48);
              do
              {
                v56 = v55 + 24 * v53;
                if (*(v56 + 16) == 4)
                {
                  v57 = *v56 == v20 && *(v56 + 8) == v21;
                  if (v57 || (sub_1D72646CC() & 1) != 0)
                  {
                  }
                }

                v53 = (v53 + 1) & v54;
              }

              while (((*(v23 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) != 0);
            }
          }
        }
      }
    }
  }

  type metadata accessor for FormatDerivedDataError();
  sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
  swift_allocError();
  v59 = v58;

  v60 = FormatPropertyDefinition.identifier.getter();
  *v59 = v20;
  v59[1] = v21;
  v59[2] = v60;
  v59[3] = v61;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_1D6102204(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  v5 = *(a1 + 24);

  v6 = FormatPropertyDefinition.identifier.getter();
  if (*(v5 + 16))
  {
    v8 = sub_1D5B69D90(v6, v7);
    v10 = v9;

    if (v10)
    {
      v11 = *(*(v5 + 56) + 8 * v8);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = MEMORY[0x1E69E7CD0];
LABEL_6:

  if (sub_1D695B3BC())
  {
  }

  v13 = sub_1D695BC10();
  if (*(v13 + 16))
  {
    sub_1D7264A0C();
    sub_1D72621EC();
    v14 = sub_1D7264A5C();
    v15 = -1 << *(v13 + 32);
    v16 = v14 & ~v15;
    if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
    {
      v17 = ~v15;
      while (1)
      {
        v18 = *(*(v13 + 48) + v16);
        if (v18 != 1 && v18 != 2)
        {
          break;
        }

        v19 = sub_1D72646CC();

        if (v19)
        {
        }

        v16 = (v16 + 1) & v17;
        if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }
  }

LABEL_15:

  v20 = *a3;
  v21 = a3[1];
  if (*(v11 + 16))
  {
    sub_1D7264A0C();
    MEMORY[0x1DA6FC0B0](2);
    sub_1D72621EC();
    v22 = sub_1D7264A5C();
    v23 = v11 + 56;
    v24 = -1 << *(v11 + 32);
    v25 = v22 & ~v24;
    if ((*(v11 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
    {
      v26 = ~v24;
      v27 = *(v11 + 48);
      do
      {
        v28 = v27 + 24 * v25;
        if (*(v28 + 16) == 1)
        {
          v29 = *v28 == v20 && *(v28 + 8) == v21;
          if (v29 || (sub_1D72646CC() & 1) != 0)
          {
          }
        }

        v25 = (v25 + 1) & v26;
      }

      while (((*(v23 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0);
    }

    if (*(v11 + 16))
    {
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](3);
      sub_1D72621EC();
      v30 = sub_1D7264A5C();
      v31 = -1 << *(v11 + 32);
      v32 = v30 & ~v31;
      if ((*(v23 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
      {
        v33 = ~v31;
        v34 = *(v11 + 48);
        do
        {
          v35 = v34 + 24 * v32;
          if (*(v35 + 16) == 2)
          {
            v36 = *v35 == v20 && *(v35 + 8) == v21;
            if (v36 || (sub_1D72646CC() & 1) != 0)
            {
            }
          }

          v32 = (v32 + 1) & v33;
        }

        while (((*(v23 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0);
      }

      if (*(v11 + 16))
      {
        sub_1D7264A0C();
        MEMORY[0x1DA6FC0B0](4);
        sub_1D72621EC();
        v37 = sub_1D7264A5C();
        v38 = -1 << *(v11 + 32);
        v39 = v37 & ~v38;
        if ((*(v23 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
        {
          v40 = ~v38;
          v41 = *(v11 + 48);
          do
          {
            v42 = v41 + 24 * v39;
            if (*(v42 + 16) == 3)
            {
              v43 = *v42 == v20 && *(v42 + 8) == v21;
              if (v43 || (sub_1D72646CC() & 1) != 0)
              {
              }
            }

            v39 = (v39 + 1) & v40;
          }

          while (((*(v23 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0);
        }

        if (*(v11 + 16))
        {
          sub_1D7264A0C();
          MEMORY[0x1DA6FC0B0](5);
          sub_1D72621EC();
          v44 = sub_1D7264A5C();
          v45 = -1 << *(v11 + 32);
          v46 = v44 & ~v45;
          if ((*(v23 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
          {
            v47 = ~v45;
            v48 = *(v11 + 48);
            do
            {
              v49 = v48 + 24 * v46;
              if (*(v49 + 16) == 4)
              {
                v50 = *v49 == v20 && *(v49 + 8) == v21;
                if (v50 || (sub_1D72646CC() & 1) != 0)
                {
                }
              }

              v46 = (v46 + 1) & v47;
            }

            while (((*(v23 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) != 0);
          }
        }
      }
    }
  }

  type metadata accessor for FormatDerivedDataError();
  sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
  swift_allocError();
  v52 = v51;

  v53 = FormatPropertyDefinition.identifier.getter();
  *v52 = v20;
  v52[1] = v21;
  v52[2] = v53;
  v52[3] = v54;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_1D61027EC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  v5 = *(a1 + 24);

  v6 = FormatPropertyDefinition.identifier.getter();
  if (*(v5 + 16))
  {
    v8 = sub_1D5B69D90(v6, v7);
    v10 = v9;

    if (v10)
    {
      v11 = *(*(v5 + 56) + 8 * v8);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = MEMORY[0x1E69E7CD0];
LABEL_6:

  if (sub_1D695B3BC())
  {
  }

  v41 = a3;
  v13 = sub_1D695BC10();
  if (*(v13 + 16))
  {
    sub_1D7264A0C();
    sub_1D72621EC();
    v14 = sub_1D7264A5C();
    v15 = -1 << *(v13 + 32);
    v16 = v14 & ~v15;
    if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
    {
      v17 = ~v15;
      while (1)
      {
        v18 = *(*(v13 + 48) + v16);
        if (v18 != 1 && v18 != 2)
        {
          break;
        }

        v19 = sub_1D72646CC();

        if (v19)
        {
        }

        v16 = (v16 + 1) & v17;
        if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }
  }

LABEL_15:

  v20 = *v41;
  v21 = v41[1];
  if (*(v11 + 16))
  {
    sub_1D7264A0C();
    MEMORY[0x1DA6FC0B0](4);
    sub_1D72621EC();
    v22 = sub_1D7264A5C();
    v23 = v11 + 56;
    v24 = -1 << *(v11 + 32);
    v25 = v22 & ~v24;
    if ((*(v11 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
    {
      v26 = ~v24;
      v27 = *(v11 + 48);
      do
      {
        v28 = v27 + 24 * v25;
        if (*(v28 + 16) == 3)
        {
          v29 = *v28 == v20 && *(v28 + 8) == v21;
          if (v29 || (sub_1D72646CC() & 1) != 0)
          {
          }
        }

        v25 = (v25 + 1) & v26;
      }

      while (((*(v23 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0);
    }

    if (*(v11 + 16))
    {
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](5);
      sub_1D72621EC();
      v30 = sub_1D7264A5C();
      v31 = -1 << *(v11 + 32);
      v32 = v30 & ~v31;
      if ((*(v23 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
      {
        v33 = ~v31;
        v34 = *(v11 + 48);
        do
        {
          v35 = v34 + 24 * v32;
          if (*(v35 + 16) == 4)
          {
            v36 = *v35 == v20 && *(v35 + 8) == v21;
            if (v36 || (sub_1D72646CC() & 1) != 0)
            {
            }
          }

          v32 = (v32 + 1) & v33;
        }

        while (((*(v23 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0);
      }
    }
  }

  type metadata accessor for FormatDerivedDataError();
  sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
  swift_allocError();
  v38 = v37;

  v39 = FormatPropertyDefinition.identifier.getter();
  *v38 = v20;
  v38[1] = v21;
  v38[2] = v39;
  v38[3] = v40;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_1D6102C44(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  v5 = *(a1 + 24);

  v6 = FormatPropertyDefinition.identifier.getter();
  if (*(v5 + 16))
  {
    v8 = sub_1D5B69D90(v6, v7);
    v10 = v9;

    if (v10)
    {
      v11 = *(*(v5 + 56) + 8 * v8);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = MEMORY[0x1E69E7CD0];
LABEL_6:

  if ((sub_1D695B3BC() & 1) == 0)
  {
    v33 = a3;
    v12 = sub_1D695BC10();
    if (*(v12 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v13 = sub_1D7264A5C(), v14 = -1 << *(v12 + 32), v15 = v13 & ~v14, ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0))
    {
      v16 = ~v14;
      while (1)
      {
        v17 = *(*(v12 + 48) + v15);
        if (v17 != 1 && v17 != 2)
        {
          break;
        }

        v18 = sub_1D72646CC();

        if (v18)
        {
        }

        v15 = (v15 + 1) & v16;
        if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:

      v20 = *v33;
      v19 = v33[1];
      if (!*(v11 + 16) || (sub_1D7264A0C(), MEMORY[0x1DA6FC0B0](5), sub_1D72621EC(), v21 = sub_1D7264A5C(), v22 = -1 << *(v11 + 32), v23 = v21 & ~v22, ((*(v11 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0))
      {
LABEL_25:

        type metadata accessor for FormatDerivedDataError();
        sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
        swift_allocError();
        v29 = v28;

        v30 = FormatPropertyDefinition.identifier.getter();
        *v29 = v20;
        v29[1] = v19;
        v29[2] = v30;
        v29[3] = v31;
        swift_storeEnumTagMultiPayload();
        return swift_willThrow();
      }

      v24 = ~v22;
      v25 = *(v11 + 48);
      while (1)
      {
        v26 = v25 + 24 * v23;
        if (*(v26 + 16) == 4)
        {
          v27 = *v26 == v20 && *(v26 + 8) == v19;
          if (v27 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }
        }

        v23 = (v23 + 1) & v24;
        if (((*(v11 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_25;
        }
      }
    }
  }
}

void sub_1D6102FDC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatCompilerProperty(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a1 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions);
  v32 = *(v34 + 16);
  if (v32)
  {
    v33 = v34 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    swift_beginAccess();
    v10 = 0;
    v35 = 0x80000001D73BA2A0;
    v31 = v2;
    v30 = a2;
    v29 = v6;
    do
    {
      if (v10 >= *(v34 + 16))
      {
        __break(1u);
        return;
      }

      sub_1D610B210(v33 + *(v6 + 72) * v10, v9, type metadata accessor for FormatCompilerProperty);
      if ((sub_1D70772D4() & 1) == 0)
      {
        v11 = *(a2 + 24);

        v12 = FormatCompilerProperty.identifier.getter();
        if (*(v11 + 16))
        {
          sub_1D5B69D90(v12, v13);
          v15 = v14;

          if (v15)
          {
            goto LABEL_5;
          }
        }

        else
        {
        }

        v16 = sub_1D7077D18();
        if (!*(v16 + 16) || (sub_1D7264A0C(), sub_1D72621EC(), v17 = sub_1D7264A5C(), v18 = -1 << *(v16 + 32), v19 = v17 & ~v18, ((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0))
        {
LABEL_19:

          type metadata accessor for FormatDerivedDataError();
          sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
          swift_allocError();
          v24 = v23;
          sub_1D5B49760(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1D7273AE0;
          *(inited + 32) = FormatCompilerProperty.identifier.getter();
          *(inited + 40) = v26;
          v27 = sub_1D5BFAC38(inited);
          swift_setDeallocating();
          sub_1D5BFB68C(inited + 32);
          *v24 = v27;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_1D610B0A8(v9, type metadata accessor for FormatCompilerProperty);
          return;
        }

        v20 = ~v18;
        while (1)
        {
          v21 = *(*(v16 + 48) + v19);
          if (v21 != 1 && v21 != 2)
          {
            break;
          }

          v22 = sub_1D72646CC();

          if (v22)
          {
            goto LABEL_4;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

LABEL_4:

        a2 = v30;
        v6 = v29;
      }

LABEL_5:
      ++v10;
      sub_1D610B0A8(v9, type metadata accessor for FormatCompilerProperty);
    }

    while (v10 != v32);
  }
}

void sub_1D6103428(NSObject *a1, uint64_t a2)
{
  v254 = a2;
  v251 = type metadata accessor for FormatVersioningModeRelease(0);
  MEMORY[0x1EEE9AC00](v251, v3);
  v237 = &v234 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v247 = &v234 - v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v239 = &v234 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v246 = &v234 - v13;
  v252 = type metadata accessor for FormatVersioningError(0);
  MEMORY[0x1EEE9AC00](v252, v14);
  v243 = &v234 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v241 = &v234 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v242 = &v234 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v240 = &v234 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v234 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v234 - v31;
  v33 = MEMORY[0x1E69E6720];
  sub_1D610A360(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = &v234 - v36;
  sub_1D610A360(0, &unk_1EDF43AB0, MEMORY[0x1E69D6638], v33);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v250 = &v234 - v40;
  v41 = sub_1D725ACBC();
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v249 = &v234 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = sub_1D725BD1C();
  v255 = *(v260 - 8);
  MEMORY[0x1EEE9AC00](v260, v44);
  v236 = &v234 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46, v47);
  v235 = &v234 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v238 = &v234 - v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v248 = &v234 - v54;
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v234 - v57;
  MEMORY[0x1EEE9AC00](v59, v60);
  v245 = &v234 - v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  v65 = &v234 - v64;
  MEMORY[0x1EEE9AC00](v66, v67);
  v244 = &v234 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v72 = &v234 - v71;
  v73 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v73, v74);
  v76 = &v234 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = a1[1].isa;
  v253 = a1->isa;
  v258 = a1;
  v256 = isa;
  v78 = v257 + OBJC_IVAR____TtC8NewsFeed25FormatDerivedDataCompiler_settings;
  v79 = type metadata accessor for FormatDerivedDataCompilerSettings();
  sub_1D610B210(v78 + *(v79 + 20), v76, type metadata accessor for FormatVersioningModeSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D61069C0(v254, v37);
      v135 = v255;
      v136 = v260;
      v137 = (*(v255 + 48))(v37, 1, v260);
      v138 = v256;
      if (v137 != 1)
      {
        v165 = v244;
        (*(v135 + 32))(v244, v37, v136);
        if (qword_1EC87DC40 != -1)
        {
          swift_once();
        }

        v166 = sub_1D725C42C();
        __swift_project_value_buffer(v166, qword_1EC9BAD60);
        (*(v135 + 16))(v65, v165, v136);

        v167 = sub_1D725C3FC();
        v168 = sub_1D7262EDC();

        if (os_log_type_enabled(v167, v168))
        {
          v169 = swift_slowAlloc();
          v170 = swift_slowAlloc();
          v261[0] = v170;
          *v169 = 136446466;
          sub_1D610AEAC(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38]);
          v171 = sub_1D72644BC();
          v172 = v135;
          v174 = v173;
          (*(v172 + 8))(v65, v136);
          v175 = sub_1D5BC5100(v171, v174, v261);

          *(v169 + 4) = v175;
          *(v169 + 12) = 2082;
          *(v169 + 14) = sub_1D5BC5100(v253, v138, v261);
          _os_log_impl(&dword_1D5B42000, v167, v168, "Detected version %{public}s for %{public}s", v169, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA6FD500](v170, -1, -1);
          MEMORY[0x1DA6FD500](v169, -1, -1);

          v176 = v255;
        }

        else
        {

          (*(v135 + 8))(v65, v136);
          v176 = v135;
        }

        v222 = type metadata accessor for FormatPackage();
        (*(v176 + 40))(&v258[*(v222 + 96)], v244, v136);
        return;
      }

      sub_1D5D354E8(v37, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      if (qword_1EC87DC40 != -1)
      {
        swift_once();
      }

      v139 = sub_1D725C42C();
      __swift_project_value_buffer(v139, qword_1EC9BAD60);

      v111 = sub_1D725C3FC();
      v112 = sub_1D7262EDC();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v261[0] = v114;
        *v113 = 136446210;
        v140 = sub_1D5BC5100(v253, v138, v261);

        *(v113 + 4) = v140;
        v116 = "No detected version for %{public}s";
        goto LABEL_31;
      }
    }

    else
    {
      v108 = v260;
      v109 = v256;
      if (EnumCaseMultiPayload != 4)
      {
        if (qword_1EC87DC40 != -1)
        {
          swift_once();
        }

        v159 = sub_1D725C42C();
        __swift_project_value_buffer(v159, qword_1EC9BAD60);

        v160 = sub_1D725C3FC();
        v161 = sub_1D7262EDC();
        if (os_log_type_enabled(v160, v161))
        {
          v162 = swift_slowAlloc();
          v163 = swift_slowAlloc();
          v261[0] = v163;
          *v162 = 136315138;
          v164 = sub_1D5BC5100(v253, v109, v261);

          *(v162 + 4) = v164;
          _os_log_impl(&dword_1D5B42000, v160, v161, "Forcing public version for %s", v162, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v163);
          MEMORY[0x1DA6FD500](v163, -1, -1);
          MEMORY[0x1DA6FD500](v162, -1, -1);
        }

        else
        {
        }

        v177 = v258;
        if (qword_1EDF3CA50 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v108, qword_1EDF3CA58);
        sub_1D725BCFC();
        v178 = sub_1D725B17C();
        (*(*(v178 - 8) + 56))(v250, 1, 1, v178);
        sub_1D725BCEC();
        v179 = type metadata accessor for FormatPackage();
        (*(v255 + 40))(v177 + *(v179 + 96), v72, v108);
        return;
      }

      if (qword_1EC87DC40 != -1)
      {
        swift_once();
      }

      v110 = sub_1D725C42C();
      __swift_project_value_buffer(v110, qword_1EC9BAD60);

      v111 = sub_1D725C3FC();
      v112 = sub_1D7262EDC();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v261[0] = v114;
        *v113 = 136315138;
        v115 = sub_1D5BC5100(v253, v109, v261);

        *(v113 + 4) = v115;
        v116 = "Bypassing versioning for %s";
LABEL_31:
        _os_log_impl(&dword_1D5B42000, v111, v112, v116, v113, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v114);
        MEMORY[0x1DA6FD500](v114, -1, -1);
        MEMORY[0x1DA6FD500](v113, -1, -1);
LABEL_68:

        return;
      }
    }

    goto LABEL_68;
  }

  if (EnumCaseMultiPayload)
  {
    v81 = v259;
    v82 = v255;
    if (EnumCaseMultiPayload == 1)
    {
      v83 = v247;
      sub_1D610B500(v76, v247, type metadata accessor for FormatVersioningModeRelease);
      v84 = *(v251 + 20);
      sub_1D725BCFC();
      v85 = sub_1D725B17C();
      (*(*(v85 - 8) + 56))(v250, 1, 1, v85);
      v86 = v248;
      sub_1D725BCEC();
      v87 = sub_1D610A3C4(v258, v254, v83 + v84);
      if (v81)
      {
        v262 = v81;
        v88 = v81;
        sub_1D5BA6EF4();
        v89 = v240;
        v90 = swift_dynamicCast();
        v91 = v260;
        if (v90)
        {

          sub_1D610B500(v89, v243, type metadata accessor for FormatVersioningError);
          if (qword_1EC87D498 != -1)
          {
            swift_once();
          }

          v261[0] = 0;
          v261[1] = 0xE000000000000000;
          sub_1D7263D4C();
          MEMORY[0x1DA6F9910](0xD000000000000025, 0x80000001D73C9C80);
          sub_1D610AEAC(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38]);
          v92 = sub_1D72644BC();
          MEMORY[0x1DA6F9910](v92);

          MEMORY[0x1DA6F9910](0xD000000000000013, 0x80000001D73C9CB0);
          v93 = v256;
          MEMORY[0x1DA6F9910](v253, v256);
          sub_1D5F5EBA0(0, 0, 0, v261[0], v261[1]);

          if (qword_1EC87DC40 != -1)
          {
            swift_once();
          }

          v94 = sub_1D725C42C();
          __swift_project_value_buffer(v94, qword_1EC9BAD60);
          v95 = v236;
          (*(v82 + 16))(v236, v86, v91);

          v96 = sub_1D725C3FC();
          v97 = sub_1D7262EBC();

          if (os_log_type_enabled(v96, v97))
          {
            v98 = v95;
            v99 = swift_slowAlloc();
            v259 = swift_slowAlloc();
            v261[0] = v259;
            *v99 = 136446466;
            v258 = v96;
            v100 = sub_1D72644BC();
            LODWORD(v257) = v97;
            v102 = v101;
            v103 = *(v82 + 8);
            v104 = v91;
            v103(v98, v91);
            v105 = sub_1D5BC5100(v100, v102, v261);

            *(v99 + 4) = v105;
            *(v99 + 12) = 2082;
            *(v99 + 14) = sub_1D5BC5100(v253, v93, v261);
            v106 = v258;
            _os_log_impl(&dword_1D5B42000, v258, v257, "Fixed release public release version %{public}s NOT satisfied for %{public}s", v99, 0x16u);
            v107 = v259;
            swift_arrayDestroy();
            v83 = v247;
            MEMORY[0x1DA6FD500](v107, -1, -1);
            MEMORY[0x1DA6FD500](v99, -1, -1);
          }

          else
          {

            v103 = *(v82 + 8);
            v104 = v91;
            v103(v95, v91);
          }

          sub_1D610AEAC(qword_1EC882508, type metadata accessor for FormatVersioningError);
          swift_allocError();
          v230 = v243;
          sub_1D610B210(v243, v231, type metadata accessor for FormatVersioningError);
          swift_willThrow();
          sub_1D610B0A8(v230, type metadata accessor for FormatVersioningError);
          v103(v248, v104);
        }

        else
        {
          (*(v82 + 8))(v86, v260);
        }

LABEL_81:
        sub_1D610B0A8(v83, type metadata accessor for FormatVersioningModeRelease);
LABEL_82:

        return;
      }

      v257 = v87;
      v192 = v260;
      if (qword_1EC87DC40 != -1)
      {
        swift_once();
      }

      v193 = sub_1D725C42C();
      __swift_project_value_buffer(v193, qword_1EC9BAD60);
      v194 = v238;
      (*(v82 + 16))(v238, v86, v192);
      v195 = v256;

      v196 = v192;
      v197 = sub_1D725C3FC();
      v198 = sub_1D7262EDC();

      if (os_log_type_enabled(v197, v198))
      {
        v199 = swift_slowAlloc();
        v259 = 0;
        v200 = v199;
        v201 = swift_slowAlloc();
        v261[0] = v201;
        *v200 = 136446466;
        sub_1D610AEAC(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38]);
        v202 = v198;
        v203 = v196;
        v204 = sub_1D72644BC();
        v206 = v205;
        (*(v255 + 8))(v194, v203);
        v207 = sub_1D5BC5100(v204, v206, v261);

        *(v200 + 4) = v207;
        *(v200 + 12) = 2082;
        *(v200 + 14) = sub_1D5BC5100(v253, v195, v261);
        _os_log_impl(&dword_1D5B42000, v197, v202, "Fixed release public release version %{public}s satisfied for %{public}s", v200, 0x16u);
        swift_arrayDestroy();
        v208 = v201;
        v82 = v255;
        MEMORY[0x1DA6FD500](v208, -1, -1);
        MEMORY[0x1DA6FD500](v200, -1, -1);

        v86 = v248;
        sub_1D610B0A8(v247, type metadata accessor for FormatVersioningModeRelease);
      }

      else
      {

        (*(v82 + 8))(v194, v196);
        sub_1D610B0A8(v83, type metadata accessor for FormatVersioningModeRelease);
        v203 = v196;
      }

      v226 = type metadata accessor for FormatPackage();
      (*(v82 + 40))(&v258[*(v226 + 96)], v86, v203);
    }

    else
    {
      v141 = v245;
      (*(v255 + 32))(v245, v76, v260);
      v142 = sub_1D610A3C4(v258, v254, v141);
      if (v81)
      {
        v262 = v81;
        v143 = v81;
        sub_1D5BA6EF4();
        if (swift_dynamicCast())
        {

          sub_1D610B500(v32, v242, type metadata accessor for FormatVersioningError);
          if (qword_1EC87D498 != -1)
          {
            swift_once();
          }

          v261[0] = 0;
          v261[1] = 0xE000000000000000;
          sub_1D7263D4C();

          strcpy(v261, "Fixed version ");
          HIBYTE(v261[1]) = -18;
          sub_1D610AEAC(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38]);
          v144 = v260;
          v145 = sub_1D72644BC();
          MEMORY[0x1DA6F9910](v145);

          MEMORY[0x1DA6F9910](0xD000000000000013, 0x80000001D73C9CB0);
          MEMORY[0x1DA6F9910](v253, v256);
          sub_1D5F5EBA0(0, 0, 0, v261[0], v261[1]);

          if (qword_1EC87DC40 != -1)
          {
            swift_once();
          }

          v146 = sub_1D725C42C();
          __swift_project_value_buffer(v146, qword_1EC9BAD60);
          v147 = v235;
          (*(v82 + 16))(v235, v141, v144);

          v148 = sub_1D725C3FC();
          v149 = v82;
          v150 = sub_1D7262EBC();

          if (os_log_type_enabled(v148, v150))
          {
            v151 = v147;
            v152 = swift_slowAlloc();
            v259 = swift_slowAlloc();
            v261[0] = v259;
            *v152 = 136446466;
            v153 = sub_1D72644BC();
            v155 = v154;
            v156 = *(v149 + 8);
            v156(v151, v260);
            v157 = sub_1D5BC5100(v153, v155, v261);

            *(v152 + 4) = v157;
            *(v152 + 12) = 2082;
            v141 = v245;
            *(v152 + 14) = sub_1D5BC5100(v253, v256, v261);
            _os_log_impl(&dword_1D5B42000, v148, v150, "Fixed version %{public}s NOT satisfied for %{public}s", v152, 0x16u);
            v158 = v259;
            swift_arrayDestroy();
            v144 = v260;
            MEMORY[0x1DA6FD500](v158, -1, -1);
            MEMORY[0x1DA6FD500](v152, -1, -1);
          }

          else
          {

            v156 = *(v149 + 8);
            v156(v147, v144);
          }

          sub_1D610AEAC(qword_1EC882508, type metadata accessor for FormatVersioningError);
          swift_allocError();
          v232 = v242;
          sub_1D610B210(v242, v233, type metadata accessor for FormatVersioningError);
          swift_willThrow();
          sub_1D610B0A8(v232, type metadata accessor for FormatVersioningError);
          v156(v141, v144);
        }

        else
        {
          (*(v82 + 8))(v141, v260);
        }

        goto LABEL_82;
      }

      v257 = v142;
      if (qword_1EC87DC40 != -1)
      {
        swift_once();
      }

      v209 = sub_1D725C42C();
      __swift_project_value_buffer(v209, qword_1EC9BAD60);
      v210 = v260;
      (*(v82 + 16))(v58, v141, v260);
      v211 = v256;

      v212 = sub_1D725C3FC();
      v213 = sub_1D7262EDC();

      if (os_log_type_enabled(v212, v213))
      {
        v214 = swift_slowAlloc();
        v259 = 0;
        v215 = v214;
        v216 = swift_slowAlloc();
        v261[0] = v216;
        *v215 = 136446466;
        sub_1D610AEAC(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38]);
        v217 = sub_1D72644BC();
        v219 = v218;
        (*(v255 + 8))(v58, v210);
        v220 = sub_1D5BC5100(v217, v219, v261);
        v141 = v245;

        *(v215 + 4) = v220;
        *(v215 + 12) = 2082;
        *(v215 + 14) = sub_1D5BC5100(v253, v211, v261);
        _os_log_impl(&dword_1D5B42000, v212, v213, "Fixed version %{public}s satisfied for %{public}s", v215, 0x16u);
        swift_arrayDestroy();
        v221 = v216;
        v82 = v255;
        MEMORY[0x1DA6FD500](v221, -1, -1);
        MEMORY[0x1DA6FD500](v215, -1, -1);
      }

      else
      {

        (*(v82 + 8))(v58, v210);
      }

      v227 = type metadata accessor for FormatPackage();
      (*(v82 + 40))(&v258[*(v227 + 96)], v141, v210);
    }
  }

  else
  {
    v83 = v246;
    sub_1D610B500(v76, v246, type metadata accessor for FormatVersioningModeRelease);
    v117 = *(v251 + 20);
    v118 = v259;
    v119 = sub_1D610A3C4(v258, v254, v83 + v117);
    if (v118)
    {
      v262 = v118;
      v120 = v118;
      sub_1D5BA6EF4();
      v121 = swift_dynamicCast();
      v122 = v256;
      if (v121)
      {

        sub_1D610B500(v28, v241, type metadata accessor for FormatVersioningError);
        if (qword_1EC87D498 != -1)
        {
          swift_once();
        }

        v261[0] = 0;
        v261[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v261[0] = 0xD000000000000016;
        v261[1] = 0x80000001D73C9CD0;
        sub_1D610AEAC(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38]);
        v123 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v123);

        MEMORY[0x1DA6F9910](0xD000000000000013, 0x80000001D73C9CB0);
        MEMORY[0x1DA6F9910](v253, v122);
        sub_1D5F5EBA0(0, 0, 0, v261[0], v261[1]);

        if (qword_1EC87DC40 != -1)
        {
          swift_once();
        }

        v124 = sub_1D725C42C();
        __swift_project_value_buffer(v124, qword_1EC9BAD60);
        v125 = v237;
        sub_1D610B210(v83, v237, type metadata accessor for FormatVersioningModeRelease);

        v126 = sub_1D725C3FC();
        v127 = sub_1D7262EBC();

        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          v261[0] = v129;
          *v128 = 136446466;
          v130 = sub_1D72644BC();
          v132 = v131;
          sub_1D610B0A8(v125, type metadata accessor for FormatVersioningModeRelease);
          v133 = sub_1D5BC5100(v130, v132, v261);

          *(v128 + 4) = v133;
          *(v128 + 12) = 2082;
          *(v128 + 14) = sub_1D5BC5100(v253, v122, v261);
          _os_log_impl(&dword_1D5B42000, v126, v127, "Fixed release version %{public}s NOT satisfied for %{public}s", v128, 0x16u);
          swift_arrayDestroy();
          v134 = v129;
          v83 = v246;
          MEMORY[0x1DA6FD500](v134, -1, -1);
          MEMORY[0x1DA6FD500](v128, -1, -1);
        }

        else
        {

          sub_1D610B0A8(v125, type metadata accessor for FormatVersioningModeRelease);
        }

        sub_1D610AEAC(qword_1EC882508, type metadata accessor for FormatVersioningError);
        swift_allocError();
        v228 = v241;
        sub_1D610B210(v241, v229, type metadata accessor for FormatVersioningError);
        swift_willThrow();
        sub_1D610B0A8(v228, type metadata accessor for FormatVersioningError);
      }

      goto LABEL_81;
    }

    v257 = v119;
    v180 = v260;
    if (qword_1EC87DC40 != -1)
    {
      swift_once();
    }

    v181 = sub_1D725C42C();
    __swift_project_value_buffer(v181, qword_1EC9BAD60);
    v182 = v239;
    sub_1D610B210(v83, v239, type metadata accessor for FormatVersioningModeRelease);

    v183 = sub_1D725C3FC();
    v184 = sub_1D7262EDC();

    if (os_log_type_enabled(v183, v184))
    {
      v185 = swift_slowAlloc();
      v259 = 0;
      v186 = v185;
      v187 = swift_slowAlloc();
      v261[0] = v187;
      *v186 = 136446466;
      sub_1D610AEAC(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38]);
      v188 = sub_1D72644BC();
      v190 = v189;
      sub_1D610B0A8(v182, type metadata accessor for FormatVersioningModeRelease);
      v191 = sub_1D5BC5100(v188, v190, v261);
      v83 = v246;

      *(v186 + 4) = v191;
      *(v186 + 12) = 2082;
      *(v186 + 14) = sub_1D5BC5100(v253, v256, v261);
      _os_log_impl(&dword_1D5B42000, v183, v184, "Fixed release version %{public}s satisfied for %{public}s", v186, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6FD500](v187, -1, -1);
      MEMORY[0x1DA6FD500](v186, -1, -1);
    }

    else
    {

      sub_1D610B0A8(v182, type metadata accessor for FormatVersioningModeRelease);
    }

    v223 = v255;
    v224 = *(type metadata accessor for FormatPackage() + 96);
    v225 = v258;
    (*(v223 + 8))(&v258[v224], v180);
    (*(v223 + 16))(v225 + v224, v83 + v117, v180);
    sub_1D610B0A8(v83, type metadata accessor for FormatVersioningModeRelease);
  }
}

uint64_t sub_1D6105564(uint64_t a1, uint64_t a2, int64_t *a3)
{
  v107 = a3;
  v106 = type metadata accessor for FormatDerivedDataWarningError();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v5);
  v99 = (&v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v8);
  v104 = (&v97 - v9);
  v10 = sub_1D7257A4C();
  isUniquelyReferenced_nonNull_native = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v116 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v120 = &v97 - v16;
  sub_1D72579EC();
  v17 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v18 = 0;
  v118 = sub_1D610732C(0x5C2A535C7B5C7B5CLL, 0xEB000000007D5C7DLL, 0);
  v19 = *(a2 + 56);
  v111 = a2 + 56;
  v20 = 1 << *(a2 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = a1 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__localizations;

  v113 = v23;
  swift_beginAccess();
  v24 = 0;
  v25 = (v20 + 63) >> 6;
  v117 = (isUniquelyReferenced_nonNull_native + 8);
  v109 = MEMORY[0x1E69E7CC0];
  v119 = v10;
  v114 = a2;
  v115 = v25;
  v122 = MEMORY[0x1E69E7CC8];
  if (v22)
  {
    while (1)
    {
      while (1)
      {
LABEL_8:
        v27 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v28 = (*(a2 + 48) + ((v24 << 10) | (16 * v27)));
        v29 = *v28;
        v30 = v28[1];

        v31 = sub_1D726203C();
        v121 = v29;
        v32 = sub_1D726221C();
        v33 = sub_1D726203C();
        v34 = [v118 stringByReplacingMatchesInString:v31 options:0 range:0 withTemplate:{v32, v33}];

        v35 = sub_1D726207C();
        v18 = v36;

        v128 = v35;
        v129 = v18;
        v37 = v116;
        sub_1D72579DC();
        v38 = sub_1D5BF4D9C();
        v20 = &v128;
        v39 = sub_1D7263A4C();
        isUniquelyReferenced_nonNull_native = v40;
        (*v117)(v37, v119);

        v128 = v39;
        v129 = isUniquelyReferenced_nonNull_native;
        v41 = v30;
        v124 = v38;
        sub_1D7263A1C();
        v23 = v42;

        if (v23)
        {
          goto LABEL_13;
        }

        v20 = *(v113 + 8);
        if (*(v20 + 16))
        {
          break;
        }

LABEL_16:
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          a2 = v114;
          v48 = v109;
        }

        else
        {
          v48 = sub_1D5B858EC(0, *(v109 + 2) + 1, 1, v109);
          a2 = v114;
        }

        v109 = v48;
        v20 = *(v48 + 2);
        v49 = *(v48 + 3);
        v23 = v20 + 1;
        v50 = v122;
        v25 = v115;
        if (v20 >= v49 >> 1)
        {
          v78 = sub_1D5B858EC((v49 > 1), v20 + 1, 1, v109);
          v25 = v115;
          v50 = v122;
          v109 = v78;
        }

        v51 = v109;
        *(v109 + 2) = v23;
        v52 = &v51[16 * v20];
        *(v52 + 4) = v121;
        *(v52 + 5) = v30;
        v122 = v50;
        if (!v22)
        {
          goto LABEL_4;
        }
      }

      v43 = sub_1D5B69D90(v121, v30);
      if ((v44 & 1) == 0)
      {

        goto LABEL_16;
      }

      v45 = *(*(v20 + 56) + 40 * v43 + 32);

      v46 = *(v112 + 16);
      v47 = *(v46 + 16);
      if (v47)
      {
        v53 = 0;
        v54 = *(v45 + 16);
        v102 = v46 + 32;
        v98 = (v45 + 40);
        v103 = v54;
        v125 = v54 - 1;
        v97 = v41;
        v101 = v46;
        v100 = v47;
        while (1)
        {
          v26 = *(v46 + 16);
          if (v53 >= v26)
          {
            break;
          }

          v110 = v53;
          v55 = (v102 + 16 * v53);
          isUniquelyReferenced_nonNull_native = v55[1];
          v123 = *v55;
          if (v103)
          {
            v23 = *(v45 + 16);

            if (v23)
            {
              v23 = 0;
              LOBYTE(v26) = 0;
              v56 = v98;
              do
              {
                if (v26 & 1) != 0 || (v57 = *(v56 - 1), v18 = *v56, v128 = 0x2D676E616CLL, v129 = 0xE500000000000000, , MEMORY[0x1DA6F9910](v123, isUniquelyReferenced_nonNull_native), v58 = isUniquelyReferenced_nonNull_native, v59 = v128, v60 = v129, v128 = v57, v129 = v18, v126 = v59, v127 = v60, v20 = sub_1D7263ABC(), isUniquelyReferenced_nonNull_native = v58, , , (v20))
                {
                  if (v125 == v23)
                  {

                    v41 = v97;
                    goto LABEL_24;
                  }

                  v26 = 1;
                }

                else
                {
                  if (v125 == v23)
                  {

                    v41 = v97;
                    goto LABEL_38;
                  }

                  v26 = 0;
                }

                ++v23;
                v56 += 4;
              }

              while (v23 < *(v45 + 16));
            }

            __break(1u);
            goto LABEL_78;
          }

LABEL_38:
          v61 = v122;
          if (*(v122 + 16) && (v62 = sub_1D5B69D90(v123, isUniquelyReferenced_nonNull_native), (v63 & 1) != 0))
          {
            v64 = *(*(v61 + 56) + 8 * v62);
          }

          else
          {
            v64 = MEMORY[0x1E69E7CC0];
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_1D5B858EC(0, *(v64 + 2) + 1, 1, v64);
          }

          v23 = *(v64 + 2);
          v65 = *(v64 + 3);
          v108 = isUniquelyReferenced_nonNull_native;
          if (v23 >= v65 >> 1)
          {
            v64 = sub_1D5B858EC((v65 > 1), v23 + 1, 1, v64);
          }

          *(v64 + 2) = v23 + 1;
          v66 = &v64[16 * v23];
          *(v66 + 4) = v121;
          *(v66 + 5) = v41;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v128 = v122;
          v20 = v122;
          v18 = sub_1D5B69D90(v123, v108);
          v26 = *(v122 + 16);
          v68 = (v67 & 1) == 0;
          v69 = v26 + v68;
          if (__OFADD__(v26, v68))
          {
            goto LABEL_81;
          }

          v23 = v67;
          if (*(v122 + 24) >= v69)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v20 = &v128;
              sub_1D6D7E3B0();
            }

            isUniquelyReferenced_nonNull_native = v108;
          }

          else
          {
            sub_1D6D670A4(v69, isUniquelyReferenced_nonNull_native);
            v20 = v128;
            isUniquelyReferenced_nonNull_native = v108;
            v70 = sub_1D5B69D90(v123, v108);
            if ((v23 & 1) != (v71 & 1))
            {
              goto LABEL_84;
            }

            v18 = v70;
          }

          v72 = v128;
          v122 = v128;
          if (v23)
          {
            v73 = *(v128 + 56);
            v23 = *(v73 + 8 * v18);
            *(v73 + 8 * v18) = v64;
          }

          else
          {
            *(v128 + 8 * (v18 >> 6) + 64) |= 1 << v18;
            v74 = (v72[6] + 16 * v18);
            *v74 = v123;
            v74[1] = isUniquelyReferenced_nonNull_native;
            *(v72[7] + 8 * v18) = v64;
            v75 = v72[2];
            v76 = __OFADD__(v75, 1);
            v77 = v75 + 1;
            if (v76)
            {
              __break(1u);
LABEL_84:
              sub_1D726493C();
              __break(1u);
              result = swift_unexpectedError();
              __break(1u);
              return result;
            }

            v72[2] = v77;
          }

LABEL_24:
          v53 = v110 + 1;
          v46 = v101;
          if (v110 + 1 == v100)
          {
            goto LABEL_12;
          }
        }

LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        v23 = sub_1D6992E28(v26 > 1, v20, 1, v23);
        goto LABEL_60;
      }

LABEL_12:

LABEL_13:

      a2 = v114;
      v25 = v115;
      if (!v22)
      {
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
LABEL_4:
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    if (v26 >= v25)
    {
      break;
    }

    v22 = *(v111 + 8 * v26);
    ++v24;
    if (v22)
    {
      v24 = v26;
      goto LABEL_8;
    }
  }

  if (!*(v109 + 2))
  {
    v81 = v120;

    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_62;
  }

  v79 = *v107;
  v80 = v107[1];
  isUniquelyReferenced_nonNull_native = v104;
  *v104 = v109;
  *(isUniquelyReferenced_nonNull_native + 8) = v79;
  *(isUniquelyReferenced_nonNull_native + 16) = v80;
  swift_storeEnumTagMultiPayload();

  v23 = sub_1D6992E28(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v18 = *(v23 + 16);
  v26 = *(v23 + 24);
  v20 = v18 + 1;
  if (v18 >= v26 >> 1)
  {
    goto LABEL_82;
  }

LABEL_60:
  v81 = v120;
  *(v23 + 16) = v20;
  sub_1D610B500(isUniquelyReferenced_nonNull_native, v23 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v18, type metadata accessor for FormatDerivedDataWarningError);
LABEL_62:
  v82 = v122 + 64;
  v83 = 1 << *(v122 + 32);
  v84 = -1;
  if (v83 < 64)
  {
    v84 = ~(-1 << v83);
  }

  v85 = v84 & *(v122 + 64);
  v86 = (v83 + 63) >> 6;

  v87 = 0;
  while (v85)
  {
LABEL_65:
    v88 = __clz(__rbit64(v85));
    v85 &= v85 - 1;
    v89 = v88 | (v87 << 6);
    v20 = *(*(v122 + 56) + 8 * v89);
    if (*(v20 + 16))
    {
      v92 = (*(v122 + 48) + 16 * v89);
      v90 = *v92;
      v91 = v92[1];
      v93 = *v107;
      isUniquelyReferenced_nonNull_native = v107[1];
      v94 = v99;
      *v99 = v20;
      v94[1] = v90;
      v94[2] = v91;
      v94[3] = v93;
      v94[4] = isUniquelyReferenced_nonNull_native;
      swift_storeEnumTagMultiPayload();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1D6992E28(0, *(v23 + 16) + 1, 1, v23);
      }

      v18 = *(v23 + 16);
      v95 = *(v23 + 24);
      v20 = v18 + 1;
      if (v18 >= v95 >> 1)
      {
        v23 = sub_1D6992E28(v95 > 1, v18 + 1, 1, v23);
      }

      *(v23 + 16) = v20;
      sub_1D610B500(v99, v23 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v18, type metadata accessor for FormatDerivedDataWarningError);
    }
  }

  while (1)
  {
    v26 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      goto LABEL_79;
    }

    if (v26 >= v86)
    {
      break;
    }

    v85 = *(v82 + 8 * v26);
    ++v87;
    if (v85)
    {
      v87 = v26;
      goto LABEL_65;
    }
  }

  (*v117)(v81, v119);

  return v23;
}

uint64_t sub_1D610612C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatDerivedDataBinderResult();
  v44 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a2;
  v8 = *(a2 + 56);
  v9 = v8 + 56;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 56);
  v13 = (v10 + 63) >> 6;
  v46 = v8;

  v14 = 0;
  v42 = v13;
  v43 = v9;
  while (v12)
  {
LABEL_11:
    v16 = *(*(v46 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v12)))));
    v17 = *a1;
    if (*(*a1 + 16) && (v18 = sub_1D5C5E034(v16), (v19 & 1) != 0))
    {
      v20 = *(*(v17 + 56) + 8 * v18);
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    sub_1D610B210(v45, v7, type metadata accessor for FormatDerivedDataBinderResult);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_1D6992E90(0, v20[2] + 1, 1, v20);
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_1D6992E90(v22 > 1, v23 + 1, 1, v20);
    }

    v20[2] = v23 + 1;
    v24 = v7;
    sub_1D610B500(v7, v20 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v23, type metadata accessor for FormatDerivedDataBinderResult);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v26 = a1;
    v48 = *a1;
    v27 = v48;
    v29 = sub_1D5C5E034(v47);
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_32;
    }

    v33 = v28;
    if (v27[3] >= v32)
    {
      if (v25)
      {
        v36 = v48;
        if (v28)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1D6D82030();
        v36 = v48;
        if (v33)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1D6D6D024(v32, v25);
      v34 = sub_1D5C5E034(v47);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_34;
      }

      v29 = v34;
      v36 = v48;
      if (v33)
      {
LABEL_4:
        *(v36[7] + 8 * v29) = v20;

        goto LABEL_5;
      }
    }

    v36[(v29 >> 6) + 8] |= 1 << v29;
    *(v36[6] + 8 * v29) = v47;
    *(v36[7] + 8 * v29) = v20;
    v37 = v36[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_33;
    }

    v36[2] = v39;
LABEL_5:
    v12 &= v12 - 1;
    a1 = v26;
    *v26 = v36;
    v7 = v24;
    v13 = v42;
    v9 = v43;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D61064A0(uint64_t *a1, uint64_t a2)
{
  sub_1D610B1A0(0, &qword_1EC895890, type metadata accessor for FormatSlotDefinition);
  v5 = v4;
  v52 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v51 - v11);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v51 - v15);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v51 - v19);
  v58 = a2;
  sub_1D610B364(a2, &v51 - v19);
  v21 = v20[7];
  v57[6] = v20[6];
  v57[7] = v21;
  v57[8] = v20[8];
  v22 = v20[3];
  v57[2] = v20[2];
  v57[3] = v22;
  v23 = v20[5];
  v57[4] = v20[4];
  v57[5] = v23;
  v24 = v20[1];
  v57[0] = *v20;
  v57[1] = v24;
  sub_1D5D68304(v57);
  v53 = v5;
  v25 = (v20 + *(v5 + 48));
  v27 = *v25;
  v26 = v25[1];

  sub_1D610B0A8(v25, type metadata accessor for FormatSlotDefinition);
  v54 = a1;
  v28 = *a1;
  if (*(*a1 + 16))
  {
    v29 = sub_1D5B69D90(v27, v26);
    v31 = v30;

    if (v31)
    {
      v32 = *(*(v28 + 56) + 8 * v29);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_6:
  sub_1D610B364(v58, v16);
  v33 = v53;
  v34 = *(v53 + 48);
  v35 = v16[7];
  v12[6] = v16[6];
  v12[7] = v35;
  v12[8] = v16[8];
  v36 = v16[5];
  v12[4] = v16[4];
  v12[5] = v36;
  v37 = v16[3];
  v12[2] = v16[2];
  v12[3] = v37;
  v38 = v16[1];
  *v12 = *v16;
  v12[1] = v38;
  sub_1D610B500(v16 + v34, v12 + v34, type metadata accessor for FormatSlotDefinition);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = sub_1D6992EC4(0, v32[2] + 1, 1, v32);
  }

  v40 = v32[2];
  v39 = v32[3];
  if (v40 >= v39 >> 1)
  {
    v32 = sub_1D6992EC4(v39 > 1, v40 + 1, 1, v32);
  }

  v32[2] = v40 + 1;
  sub_1D610B2D4(v12, v32 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v40);
  sub_1D610B364(v58, v8);
  v41 = v8[7];
  v56[6] = v8[6];
  v56[7] = v41;
  v56[8] = v8[8];
  v42 = v8[3];
  v56[2] = v8[2];
  v56[3] = v42;
  v43 = v8[5];
  v56[4] = v8[4];
  v56[5] = v43;
  v44 = v8[1];
  v56[0] = *v8;
  v56[1] = v44;
  sub_1D5D68304(v56);
  v45 = (v8 + *(v33 + 48));
  v46 = *v45;
  v47 = v45[1];

  sub_1D610B0A8(v45, type metadata accessor for FormatSlotDefinition);
  v48 = v54;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v48;
  sub_1D6D7A04C(v32, v46, v47, isUniquelyReferenced_nonNull_native);

  *v48 = v55;
  return result;
}

uint64_t sub_1D6106854@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1D610B1A0(0, &qword_1EC895890, type metadata accessor for FormatSlotDefinition);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (v17 - v7);
  sub_1D610B364(a1, v17 - v7);
  v9 = v8[7];
  v17[6] = v8[6];
  v17[7] = v9;
  v17[8] = v8[8];
  v10 = v8[3];
  v17[2] = v8[2];
  v17[3] = v10;
  v11 = v8[5];
  v17[4] = v8[4];
  v17[5] = v11;
  v12 = v8[1];
  v17[0] = *v8;
  v17[1] = v12;
  sub_1D5D68304(v17);
  v13 = v8 + *(v5 + 56);
  v14 = *(v13 + 48);

  sub_1D610B0A8(v13, type metadata accessor for FormatSlotDefinition);
  v15 = *(v14 + 16);

  *a2 = v15;
  return result;
}

uint64_t sub_1D6106984@<X0>(uint64_t *a1@<X8>)
{
  result = FormatPropertyDefinition.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D61069C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for FormatVersionInfo(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D610A360(0, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for FormatVersioningMode(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69E7CC0];
  v17 = sub_1D605CF08(MEMORY[0x1E69E7CC0]);
  v28 = v16;
  v29 = v17;
  swift_storeEnumTagMultiPayload();
  Dictionary<>.seedFormatCodingVersion(mode:)(v15);
  sub_1D610B0A8(v15, type metadata accessor for FormatVersioningMode);
  v18 = v28;
  v19 = v29;
  v24 = v28;
  v25 = v29;

  sub_1D70DE648(a1);

  v26 = &type metadata for TraversalOnlyEncoder;
  v27 = sub_1D5D28FD4();
  v24 = v18;
  v25 = v19;

  FormatPackage.encode(to:)(&v24);
  __swift_destroy_boxed_opaque_existential_1(&v24);

  Dictionary<>.formatCodingVersionInfo.getter(v19, v11);

  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_1D5D354E8(v11, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
    v20 = sub_1D725BD1C();
    return (*(*(v20 - 8) + 56))(v23, 1, 1, v20);
  }

  else
  {
    sub_1D610B210(v11, v7, type metadata accessor for FormatVersionInfo);
    sub_1D5D354E8(v11, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
    sub_1D5CDE26C(&v7[*(v3 + 20)], v23, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
    return sub_1D610B0A8(v7, type metadata accessor for FormatVersionInfo);
  }
}

uint64_t sub_1D6106EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D610A360(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v27 - v12;
  if (*(a1 + 8))
  {
    sub_1D725892C();
    v14 = sub_1D725895C();
    v15 = (*(*(v14 - 8) + 48))(v13, 1, v14);
    result = sub_1D5D354E8(v13, &qword_1EDF3C398, MEMORY[0x1E69695A8]);
    if (v15 != 1)
    {
      return result;
    }

    swift_beginAccess();
    v17 = *(a4 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1D5B858EC(0, *(v17 + 2) + 1, 1, v17);
      *(a4 + 16) = v17;
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      v17 = sub_1D5B858EC((v19 > 1), v20 + 1, 1, v17);
    }

    *(v17 + 2) = v20 + 1;
    v21 = &v17[16 * v20];
    *(v21 + 4) = a2;
    *(v21 + 5) = a3;
    *(a4 + 16) = v17;
  }

  else
  {
    swift_beginAccess();
    v22 = *(a5 + 16);

    v23 = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v22;
    if ((v23 & 1) == 0)
    {
      v22 = sub_1D5B858EC(0, *(v22 + 2) + 1, 1, v22);
      *(a5 + 16) = v22;
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      v22 = sub_1D5B858EC((v24 > 1), v25 + 1, 1, v22);
    }

    *(v22 + 2) = v25 + 1;
    v26 = &v22[16 * v25];
    *(v26 + 4) = a2;
    *(v26 + 5) = a3;
    *(a5 + 16) = v22;
  }

  return swift_endAccess();
}

uint64_t FormatDerivedDataCompiler.deinit()
{

  sub_1D610B0A8(v0 + OBJC_IVAR____TtC8NewsFeed25FormatDerivedDataCompiler_settings, type metadata accessor for FormatDerivedDataCompilerSettings);

  return v0;
}

uint64_t FormatDerivedDataCompiler.__deallocating_deinit()
{

  sub_1D610B0A8(v0 + OBJC_IVAR____TtC8NewsFeed25FormatDerivedDataCompiler_settings, type metadata accessor for FormatDerivedDataCompilerSettings);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FormatDerivedDataCompiler()
{
  result = qword_1EC883D38;
  if (!qword_1EC883D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6107268()
{
  result = type metadata accessor for FormatDerivedDataCompilerSettings();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1D610732C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1D726203C();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1D725829C();

    swift_willThrow();
  }

  return v6;
}

void sub_1D6107408()
{
  if (!qword_1EC88F0E0)
  {
    type metadata accessor for FormatDerivedDataResultOptionReference(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88F0E0);
    }
  }
}

uint64_t sub_1D6107490(uint64_t a1)
{
  sub_1D5C4BC40(0, &qword_1EC883D60, sub_1D6007784, &type metadata for FormatDerivedDataFileReference, MEMORY[0x1E69E64E8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6107524(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D5B49760(0, a2, a3, MEMORY[0x1E69E62F8]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D6107594()
{
  if (!qword_1EC883D70)
  {
    type metadata accessor for FormatDerivedDataResultOptionReference(255);
    sub_1D610AEAC(&qword_1EC882278, type metadata accessor for FormatDerivedDataResultOptionReference);
    v0 = sub_1D7262BAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC883D70);
    }
  }
}

uint64_t sub_1D6107650(uint64_t a1)
{
  sub_1D5C4BC40(0, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D61076E4(uint64_t a1)
{
  v2 = v1;
  v280 = type metadata accessor for FormatSlotDefinition();
  v267 = *(v280 - 8);
  MEMORY[0x1EEE9AC00](v280, v4);
  v269 = &v265 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D610A360(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v274 = &v265 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v276 = &v265 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v275 = &v265 - v14;
  v287 = type metadata accessor for FormatSlotDefinitionItemSet();
  v277 = *(v287 - 8);
  MEMORY[0x1EEE9AC00](v287, v15);
  v285 = &v265 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v295 = (&v265 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v293 = (&v265 - v22);
  MEMORY[0x1EEE9AC00](v23, v24);
  v288 = &v265 - v25;
  sub_1D610AEF4();
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v279 = &v265 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v278 = (&v265 - v31);
  sub_1D610B1A0(0, &qword_1EC883DB8, type metadata accessor for FormatDerivedDataBindingSlotResult);
  v300 = v32;
  MEMORY[0x1EEE9AC00](v32, v33);
  v299 = (&v265 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v35, v36);
  v298 = &v265 - v37;
  sub_1D610B1A0(0, &qword_1EC895890, type metadata accessor for FormatSlotDefinition);
  v303 = *(v38 - 8);
  v304 = v38;
  MEMORY[0x1EEE9AC00](v38, v39);
  v268 = (&v265 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v41, v42);
  v273 = (&v265 - v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v272 = (&v265 - v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  v271 = (&v265 - v49);
  MEMORY[0x1EEE9AC00](v50, v51);
  v286 = (&v265 - v52);
  MEMORY[0x1EEE9AC00](v53, v54);
  v270 = (&v265 - v55);
  MEMORY[0x1EEE9AC00](v56, v57);
  v289 = (&v265 - v58);
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = &v265 - v61;
  MEMORY[0x1EEE9AC00](v63, v64);
  v292 = &v265 - v65;
  v66 = type metadata accessor for FormatDerivedDataBinderResult();
  MEMORY[0x1EEE9AC00](v66, v67);
  v71 = (&v265 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = MEMORY[0x1E69E7CC0];
  v281 = *(a1 + 16);
  if (v281)
  {
    v73 = 0;
    v284 = *(v68 + 24);
    v74 = *(v69 + 80);
    v282 = *(v69 + 72);
    v283 = a1 + ((v74 + 32) & ~v74);
    v75 = MEMORY[0x1E69E7CC0];
    v290 = &v265 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
    v291 = v1;
    while (1)
    {
      v296 = v75;
      v294 = v73;
      sub_1D610B210(v283 + v282 * v73, v71, type metadata accessor for FormatDerivedDataBinderResult);
      v78 = *(v71 + v284);
      v79 = *(v78 + 16);
      if (v79)
      {
        *&v313 = v72;
        sub_1D6998DE8(0, v79, 0);
        v80 = v313;
        v343 = v78 + 64;
        v81 = sub_1D7263B7C();
        v82 = *(v78 + 36);
        v83 = v71[3];
        v336 = v71[2];
        v337 = v83;
        v84 = v71[8];
        v341 = v71[7];
        v342 = v84;
        v85 = v71[6];
        v339 = v71[5];
        v340 = v85;
        v338 = v71[4];
        v86 = v71[1];
        v334 = *v71;
        v335 = v86;
        if (v81 < 0 || (v87 = v81, v88 = v78, v81 >= 1 << *(v78 + 32)))
        {
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

          v343 = type metadata accessor for FormatDerivedDataError();
          sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
          v291 = swift_allocError();
          v246 = v245;
          sub_1D610B3F4(0, v245);
          v248 = v247[12];
          v249 = (v246 + v247[16]);
          v309 = v247[20];
          v250 = *(v289 + 1);
          *v246 = *v289;
          v246[1] = v250;
          sub_1D610B210(v80, v246 + v248, type metadata accessor for FormatSlotDefinition);
          v251 = v286;
          v252 = v271;
          sub_1D610B364(v286, v271);
          v253 = v252[8];
          v320 = v252[7];
          v321 = v253;
          v254 = v252[6];
          v318 = v252[5];
          v319 = v254;
          v255 = v252[4];
          v316 = v252[3];
          v317 = v255;
          v256 = v252[2];
          v314 = v252[1];
          v315 = v256;
          v313 = *v252;
          v257 = v304;
          v310 = *(v304 + 48);
          v258 = *(&v313 + 1);
          v259 = v313;

          sub_1D5D68304(&v313);
          *v249 = __PAIR128__(v258, v259);
          v260 = v268;
          sub_1D610B364(v251, v268);
          v261 = v260[7];
          v331 = v260[6];
          v332 = v261;
          v333 = v260[8];
          v262 = v260[3];
          v327 = v260[2];
          v328 = v262;
          v263 = v260[5];
          v329 = v260[4];
          v330 = v263;
          v264 = v260[1];
          v325 = *v260;
          v326 = v264;
          sub_1D5D68304(&v325);
          sub_1D610B500(v260 + *(v257 + 48), v246 + v309, type metadata accessor for FormatSlotDefinition);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          v243 = type metadata accessor for FormatSlotDefinitionItemSet;
          sub_1D610B0A8(v288, type metadata accessor for FormatSlotDefinitionItemSet);
          sub_1D610B278(v251, &qword_1EC895890, type metadata accessor for FormatSlotDefinition);
          sub_1D610B0A8(v295, type metadata accessor for FormatSlotDefinitionItemSet);
          sub_1D610B0A8(v293, type metadata accessor for FormatSlotDefinitionItemSet);
          sub_1D610B0A8(v252 + v310, type metadata accessor for FormatSlotDefinition);
          sub_1D610B278(v289, &qword_1EC895890, type metadata accessor for FormatSlotDefinition);
          return v243;
        }

        v297 = v78 + 72;
        v89 = 1;
        v301 = v79;
        v302 = v78;
        while (1)
        {
          if ((*(v343 + 8 * (v87 >> 6)) & (1 << v87)) == 0)
          {
            goto LABEL_106;
          }

          v307 = 1 << v87;
          v308 = v87 >> 6;
          v305 = v89;
          v306 = v82;
          v90 = v300;
          v91 = *(v300 + 48);
          v310 = v80;
          v92 = *(v88 + 56);
          v93 = (*(v88 + 48) + 16 * v87);
          v94 = v62;
          v96 = *v93;
          v95 = v93[1];
          v97 = type metadata accessor for FormatDerivedDataBindingSlotResult();
          v98 = v298;
          sub_1D610B210(v92 + *(*(v97 - 8) + 72) * v87, &v298[v91], type metadata accessor for FormatDerivedDataBindingSlotResult);
          v309 = v87;
          v99 = v299;
          *v299 = v96;
          *(v99 + 8) = v95;
          v62 = v94;
          v100 = *(v90 + 48);
          sub_1D610B500(&v98[v91], v99 + v100, type metadata accessor for FormatDerivedDataBindingSlotResult);
          v101 = *(v304 + 48);
          v102 = v341;
          *(v94 + 6) = v340;
          *(v94 + 7) = v102;
          *(v94 + 8) = v342;
          v103 = v339;
          *(v94 + 4) = v338;
          *(v94 + 5) = v103;
          v104 = v337;
          *(v94 + 2) = v336;
          *(v94 + 3) = v104;
          v105 = v335;
          *v94 = v334;
          *(v94 + 1) = v105;
          v106 = v99 + v100;
          v80 = v310;
          sub_1D610B210(v106, &v94[v101], type metadata accessor for FormatSlotDefinition);

          sub_1D5D65D5C(&v334, &v325);
          sub_1D610B278(v99, &qword_1EC883DB8, type metadata accessor for FormatDerivedDataBindingSlotResult);
          *&v313 = v80;
          v108 = v80[2];
          v107 = v80[3];
          if (v108 >= v107 >> 1)
          {
            sub_1D6998DE8(v107 > 1, v108 + 1, 1);
            v80 = v313;
          }

          v80[2] = v108 + 1;
          sub_1D610B2D4(v94, v80 + ((*(v303 + 80) + 32) & ~*(v303 + 80)) + *(v303 + 72) * v108);
          v88 = v302;
          v109 = 1 << *(v302 + 32);
          if (v309 >= v109)
          {
            goto LABEL_107;
          }

          v110 = *(v343 + 8 * v308);
          if ((v110 & v307) == 0)
          {
            goto LABEL_108;
          }

          if (v306 != *(v302 + 36))
          {
            goto LABEL_109;
          }

          v111 = v110 & (-2 << (v309 & 0x3F));
          if (v111)
          {
            v87 = __clz(__rbit64(v111)) | v309 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v112 = v302;
            v113 = v308 << 6;
            v114 = v308 + 1;
            v115 = (v297 + 8 * v308);
            while (v114 < (v109 + 63) >> 6)
            {
              v117 = *v115++;
              v116 = v117;
              v113 += 64;
              ++v114;
              if (v117)
              {
                sub_1D5C25E1C(v309, v306, 0);
                v87 = __clz(__rbit64(v116)) + v113;
                goto LABEL_22;
              }
            }

            sub_1D5C25E1C(v309, v306, 0);
            v87 = v109;
LABEL_22:
            v88 = v112;
          }

          if (v305 == v301)
          {
            break;
          }

          if ((v87 & 0x8000000000000000) == 0)
          {
            v82 = *(v88 + 36);
            v89 = v305 + 1;
            if (v87 < 1 << *(v88 + 32))
            {
              continue;
            }
          }

          goto LABEL_105;
        }

        v71 = v290;
        v2 = v291;
      }

      else
      {
        v80 = v72;
      }

      sub_1D610B0A8(v71, type metadata accessor for FormatDerivedDataBinderResult);
      v118 = v80[2];
      v119 = v296[2];
      v120 = v119 + v118;
      if (__OFADD__(v119, v118))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v122 = v296;
      if (!isUniquelyReferenced_nonNull_native || v120 > v296[3] >> 1)
      {
        if (v119 <= v120)
        {
          v123 = v119 + v118;
        }

        else
        {
          v123 = v119;
        }

        v122 = sub_1D6992EC4(isUniquelyReferenced_nonNull_native, v123, 1, v296);
      }

      v72 = MEMORY[0x1E69E7CC0];
      v71 = v290;
      if (v80[2])
      {
        if ((v122[3] >> 1) - v122[2] < v118)
        {
          goto LABEL_115;
        }

        v124 = v122;
        swift_arrayInitWithCopy();

        v75 = v124;
        v77 = v294;
        if (v118)
        {
          v125 = v124[2];
          v126 = __OFADD__(v125, v118);
          v127 = v125 + v118;
          if (v126)
          {
            goto LABEL_119;
          }

          v124[2] = v127;
        }
      }

      else
      {
        v76 = v122;

        v75 = v76;
        v77 = v294;
        if (v118)
        {
          goto LABEL_114;
        }
      }

      v73 = v77 + 1;
      if (v73 == v281)
      {
        goto LABEL_42;
      }
    }

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
    goto LABEL_120;
  }

  v75 = MEMORY[0x1E69E7CC0];
LABEL_42:
  *&v334 = MEMORY[0x1E69E7CC8];
  v128 = v75[2];
  if (v128)
  {
    v129 = 0;
    while (v129 < v75[2])
    {
      v130 = v75;
      v62 = v292;
      sub_1D610B364(v75 + ((*(v303 + 80) + 32) & ~*(v303 + 80)) + *(v303 + 72) * v129, v292);
      sub_1D61064A0(&v334, v62);
      if (v2)
      {
        goto LABEL_122;
      }

      ++v129;
      sub_1D610B278(v62, &qword_1EC895890, type metadata accessor for FormatSlotDefinition);
      v75 = v130;
      if (v128 == v129)
      {
        goto LABEL_47;
      }
    }

    goto LABEL_112;
  }

LABEL_47:

  v131 = 0;
  v132 = v334;
  v133 = v334 + 64;
  v134 = 1 << *(v334 + 32);
  v135 = -1;
  if (v134 < 64)
  {
    v135 = ~(-1 << v134);
  }

  v136 = v135 & *(v334 + 64);
  v137 = (v134 + 63) >> 6;
  v296 = MEMORY[0x1E69E7CC0];
  v297 = v137;
  v62 = v287;
  if (!v136)
  {
LABEL_51:
    while (1)
    {
      v138 = v131 + 1;
      if (__OFADD__(v131, 1))
      {
        break;
      }

      if (v138 >= v137)
      {

        v243 = sub_1D72626AC();

        return v243;
      }

      v136 = *(v133 + 8 * v138);
      ++v131;
      if (v136)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  while (1)
  {
    v138 = v131;
LABEL_54:
    v298 = ((v136 - 1) & v136);
    v139 = v138;

    v140 = sub_1D72626AC();

    v141 = *(v140 + 16);
    if (!v141)
    {

      v131 = v139;
      goto LABEL_56;
    }

    v266 = v139;
    v281 = v141;
    v142 = v141 - 1;
    v143 = *(v303 + 72);
    v292 = (v140 + ((*(v303 + 80) + 32) & ~*(v303 + 80)));
    v290 = v143;
    sub_1D610B364(&v292[v143 * (v141 - 1)], v289);
    if (v142)
    {
      break;
    }

LABEL_97:
    sub_1D610B210(v289 + *(v304 + 48), v269, type metadata accessor for FormatSlotDefinition);
    v239 = v133;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v296 = sub_1D5D5CA88(0, v296[2] + 1, 1, v296);
    }

    v241 = v296[2];
    v240 = v296[3];
    if (v241 >= v240 >> 1)
    {
      v296 = sub_1D5D5CA88(v240 > 1, v241 + 1, 1, v296);
    }

    v242 = v296;
    v296[2] = v241 + 1;
    sub_1D610B500(v269, v242 + ((*(v267 + 80) + 32) & ~*(v267 + 80)) + *(v267 + 72) * v241, type metadata accessor for FormatSlotDefinition);
    sub_1D610B278(v289, &qword_1EC895890, type metadata accessor for FormatSlotDefinition);
    v131 = v266;
    v133 = v239;
LABEL_56:
    v137 = v297;
    v136 = v298;
    if (!v298)
    {
      goto LABEL_51;
    }
  }

  v144 = v142;
  v145 = *(v304 + 48);
  v283 = v132;
  v284 = v145;
  v265 = v133;
  v282 = v140;
  while (1)
  {
    v146 = v144 - 1;
    if (v146 >= *(v140 + 16))
    {
      break;
    }

    v294 = v146;
    v147 = v270;
    sub_1D610B364(&v292[v146 * v290], v270);
    v148 = v304;
    v149 = *(v304 + 48);
    v150 = v147[7];
    v151 = v286;
    v286[6] = v147[6];
    v151[7] = v150;
    v151[8] = v147[8];
    v152 = v147[5];
    v151[4] = v147[4];
    v151[5] = v152;
    v153 = v147[3];
    v151[2] = v147[2];
    v151[3] = v153;
    v154 = v147[1];
    *v151 = *v147;
    v151[1] = v154;
    sub_1D610B500(v147 + v284, v151 + v149, type metadata accessor for FormatSlotDefinition);
    v155 = v151;
    v156 = v271;
    sub_1D610B364(v155, v271);
    v157 = v156[7];
    v340 = v156[6];
    v341 = v157;
    v342 = v156[8];
    v158 = v156[3];
    v336 = v156[2];
    v337 = v158;
    v159 = v156[5];
    v338 = v156[4];
    v339 = v159;
    v160 = v156[1];
    v334 = *v156;
    v335 = v160;
    sub_1D5D68304(&v334);
    v161 = v156 + *(v148 + 48);
    v162 = *(v161 + 48);

    sub_1D610B0A8(v161, type metadata accessor for FormatSlotDefinition);
    v322 = v162;
    v323 = 0;
    v324 = 0;
    while (1)
    {
      v180 = v279;
      sub_1D7149554(v279);
      v181 = v180;
      v182 = v278;
      sub_1D610B500(v181, v278, sub_1D610AEF4);
      sub_1D610B1A0(0, &qword_1EC883DA0, type metadata accessor for FormatSlotDefinitionItemSet);
      v184 = v183;
      if ((*(*(v183 - 8) + 48))(v182, 1, v183) == 1)
      {
        break;
      }

      v185 = *v182;
      sub_1D610B500(v182 + *(v184 + 48), v288, type metadata accessor for FormatSlotDefinitionItemSet);
      if ((v185 & 0x8000000000000000) != 0)
      {
        goto LABEL_116;
      }

      v80 = (v289 + *(v304 + 48));
      v186 = v80[6];
      if (v185 >= *(v186 + 16))
      {
        goto LABEL_117;
      }

      v310 = (*(v277 + 80) + 32) & ~*(v277 + 80);
      v309 = *(v277 + 72) * v185;
      v187 = v293;
      sub_1D610B210(v186 + v310 + v309, v293, type metadata accessor for FormatSlotDefinitionItemSet);
      v188 = v295;
      sub_1D610B210(v288, v295, type metadata accessor for FormatSlotDefinitionItemSet);
      v189 = *(v187 + 8);
      v190 = *(v188 + 8);
      if ((sub_1D5E1EFE4(v189, v190) & 1) == 0 && *(v189 + 16) && *(v190 + 16))
      {
        goto LABEL_110;
      }

      v308 = v185;
      v343 = v186;
      v291 = v2;

      v307 = sub_1D5EECE54(v191, v189);
      v192 = v293;
      v193 = *v293;
      v194 = v293[1];
      v195 = v295[1];
      if (*v295 < *v293)
      {
        v193 = *v295;
      }

      LODWORD(v305) = v193;
      if (v195 <= v194)
      {
        v196 = v194;
      }

      else
      {
        v196 = v195;
      }

      LODWORD(v302) = v196;
      v197 = *(v293 + 4);
      v198 = *(v293 + 3);
      v299 = v197;
      v300 = v198;
      if (!v198)
      {
        v198 = *(v295 + 3);
        v197 = *(v295 + 4);
        sub_1D5D615EC(v198);
        v192 = v293;
      }

      v301 = v197;
      v306 = v198;
      v199 = v192 + *(v62 + 9);
      v200 = v62;
      v62 = v276;
      v2 = &qword_1EDF45AD0;
      sub_1D5CDE26C(v199, v276, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      v201 = sub_1D725B76C();
      v202 = *(v201 - 8);
      v203 = *(v202 + 48);
      if (v203(v62, 1, v201) == 1)
      {
        v204 = v295 + *(v200 + 9);
        v205 = v275;
        sub_1D5CDE26C(v204, v275, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
        v206 = v203(v62, 1, v201);
        sub_1D5D615EC(v300);
        if (v206 != 1)
        {
          sub_1D5D354E8(v62, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
        }
      }

      else
      {
        v205 = v275;
        (*(v202 + 32))(v275, v62, v201);
        (*(v202 + 56))(v205, 0, 1, v201);
        sub_1D5D615EC(v300);
      }

      v207 = v285;
      *(v285 + 24) = 0;
      *(v207 + 32) = 0;
      v208 = v302;
      *v207 = v305;
      *(v207 + 4) = v208;
      *(v207 + 8) = v307;
      *(v207 + 16) = MEMORY[0x1E69E7CC0];
      sub_1D5CDE22C(0);
      v209 = v301;
      *(v207 + 24) = v306;
      *(v207 + 32) = v209;
      sub_1D5FC55FC(v205, v207 + *(v287 + 36));
      v210 = v343;

      v211 = swift_isUniquelyReferenced_nonNull_native();
      v212 = v308;
      if ((v211 & 1) == 0)
      {
        v210 = sub_1D5EC3B28(v210);
      }

      sub_1D610B0A8(v288, type metadata accessor for FormatSlotDefinitionItemSet);
      sub_1D610B0A8(v295, type metadata accessor for FormatSlotDefinitionItemSet);
      sub_1D610B0A8(v293, type metadata accessor for FormatSlotDefinitionItemSet);
      if (v212 >= v210[2])
      {
        goto LABEL_118;
      }

      sub_1D610B044(v285, v210 + v310 + v309);
      v213 = v289[7];
      v319 = v289[6];
      v320 = v213;
      v321 = v289[8];
      v214 = v289[3];
      v315 = v289[2];
      v316 = v214;
      v215 = v289[5];
      v317 = v289[4];
      v318 = v215;
      v216 = v289[1];
      v313 = *v289;
      v314 = v216;
      v217 = v80[1];
      v307 = *v80;
      v219 = v80[2];
      v218 = v80[3];
      v220 = v272;
      sub_1D610B364(v286, v272);
      v221 = v220[7];
      v331 = v220[6];
      v332 = v221;
      v333 = v220[8];
      v222 = v220[3];
      v327 = v220[2];
      v328 = v222;
      v223 = v220[5];
      v329 = v220[4];
      v330 = v223;
      v224 = v220[1];
      v325 = *v220;
      v326 = v224;
      sub_1D5D65D5C(&v313, v312);

      sub_1D5D68304(&v325);
      v225 = v220 + *(v304 + 48);
      v227 = *(v225 + 16);
      v226 = *(v225 + 24);

      sub_1D610B0A8(v225, type metadata accessor for FormatSlotDefinition);
      v228 = HIBYTE(v218) & 0xF;
      if ((v218 & 0x2000000000000000) == 0)
      {
        v228 = v219 & 0xFFFFFFFFFFFFLL;
      }

      v310 = v217;
      v343 = v210;
      if (v228)
      {

        v227 = v219;
        v309 = v218;
      }

      else
      {
        v309 = v226;
      }

      v230 = v80[4];
      v229 = v80[5];
      v231 = v273;
      sub_1D610B364(v286, v273);
      v232 = v231[7];
      v312[6] = v231[6];
      v312[7] = v232;
      v312[8] = v231[8];
      v233 = v231[3];
      v312[2] = v231[2];
      v312[3] = v233;
      v234 = v231[5];
      v312[4] = v231[4];
      v312[5] = v234;
      v235 = v231[1];
      v312[0] = *v231;
      v312[1] = v235;
      sub_1D5D68304(v312);
      v236 = v231 + *(v304 + 48);
      v163 = *(v236 + 32);
      v164 = *(v236 + 40);

      sub_1D610B0A8(v236, type metadata accessor for FormatSlotDefinition);
      v237 = HIBYTE(v229) & 0xF;
      if ((v229 & 0x2000000000000000) == 0)
      {
        v237 = v230 & 0xFFFFFFFFFFFFLL;
      }

      v308 = v227;
      v238 = v307;
      if (v237)
      {

        v163 = v230;
        v164 = v229;
      }

      v165 = v80[7];
      v166 = v80[8];
      v167 = *(v280 + 40);
      v168 = v274;
      sub_1D5CDE26C(v80 + v167, v274, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);

      sub_1D610B0A8(v80, type metadata accessor for FormatSlotDefinition);
      v169 = v310;
      *v80 = v238;
      v80[1] = v169;
      v170 = v309;
      v80[2] = v308;
      v80[3] = v170;
      v80[4] = v163;
      v80[5] = v164;
      v80[6] = v343;
      v80[7] = v165;
      v80[8] = v166;
      sub_1D5FC55FC(v168, v80 + v167);
      v171 = v289;
      v172 = v289[7];
      v311[6] = v289[6];
      v311[7] = v172;
      v311[8] = v289[8];
      v173 = v289[3];
      v311[2] = v289[2];
      v311[3] = v173;
      v174 = v289[5];
      v311[4] = v289[4];
      v311[5] = v174;
      v175 = v289[1];
      v311[0] = *v289;
      v311[1] = v175;
      sub_1D5D68304(v311);
      v176 = v320;
      v171[6] = v319;
      v171[7] = v176;
      v171[8] = v321;
      v177 = v316;
      v171[2] = v315;
      v171[3] = v177;
      v178 = v318;
      v171[4] = v317;
      v171[5] = v178;
      v179 = v314;
      *v171 = v313;
      v171[1] = v179;
      v2 = v291;
      v62 = v287;
    }

    sub_1D610B278(v286, &qword_1EC895890, type metadata accessor for FormatSlotDefinition);
    v132 = v283;
    v144 = v294;
    if (!v294)
    {

      v133 = v265;
      goto LABEL_97;
    }

    v140 = v282;
    if (v281 <= v294)
    {
      goto LABEL_121;
    }
  }

LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:

  sub_1D610B278(v62, &qword_1EC895890, type metadata accessor for FormatSlotDefinition);

  __break(1u);
  return result;
}

uint64_t sub_1D6109024(uint64_t a1)
{
  sub_1D610B108();
  result = sub_1D72640FC();
  v4 = 0;
  v24 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v23 = result + 64;
  v25 = result;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = *(*(v24 + 48) + 8 * v15);

      v18 = sub_1D61076E4(v17);
      if (v1)
      {
        break;
      }

      v19 = v18;

      *(v23 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v25;
      *(v25[6] + 8 * v15) = v16;
      *(v25[7] + 8 * v15) = v19;
      v20 = v25[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_17;
      }

      v25[2] = v22;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    return v25;
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return result;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D61091B4(uint64_t a1, uint64_t a2)
{
  v168 = a2;
  sub_1D610A360(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v173 = &v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v167 = &v151 - v8;
  v184 = type metadata accessor for FormatSlotDefinitionItemSet();
  v169 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184 - 8, v9);
  v166 = &v151 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v187 = &v151 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v190 = (&v151 - v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  v186 = &v151 - v19;
  sub_1D610AEF4();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v171 = &v151 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v170 = (&v151 - v25);
  v174 = type metadata accessor for FormatSlotDefinition();
  MEMORY[0x1EEE9AC00](v174, v26);
  v159 = &v151 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v165 = &v151 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v163 = (&v151 - v33);
  MEMORY[0x1EEE9AC00](v34, v35);
  v191 = (&v151 - v36);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v151 - v39;
  MEMORY[0x1EEE9AC00](v41, v42);
  v45 = (&v151 - v43);
  v46 = *(a1 + 16);
  v160 = v44;
  if (v46)
  {
    v189 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v47 = a1 + v189;
    v192 = *(v44 + 72);
    v48 = MEMORY[0x1E69E7CC8];
    v188 = (&v151 - v43);
    while (1)
    {
      sub_1D610B210(v47, v45, type metadata accessor for FormatSlotDefinition);
      v49 = *v45;
      v50 = v45[1];
      v51 = *(v48 + 16);
      v193 = *v45;
      if (v51 && (v52 = sub_1D5B69D90(v49, v50), (v53 & 1) != 0))
      {
        v54 = *(*(v48 + 56) + 8 * v52);
      }

      else
      {
        v54 = MEMORY[0x1E69E7CC0];
      }

      sub_1D610B210(v45, v40, type metadata accessor for FormatSlotDefinition);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_1D5D5CA88(0, v54[2] + 1, 1, v54);
      }

      v56 = v54[2];
      v55 = v54[3];
      if (v56 >= v55 >> 1)
      {
        v54 = sub_1D5D5CA88(v55 > 1, v56 + 1, 1, v54);
      }

      v54[2] = v56 + 1;
      v57 = v40;
      sub_1D610B500(v40, v54 + v189 + v56 * v192, type metadata accessor for FormatSlotDefinition);
      v58 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v194 = v58;
      v61 = sub_1D5B69D90(v193, v50);
      v62 = *(v58 + 16);
      v63 = (v60 & 1) == 0;
      v64 = v62 + v63;
      if (__OFADD__(v62, v63))
      {
        goto LABEL_82;
      }

      v65 = v60;
      if (*(v58 + 24) >= v64)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v48 = v194;
          if (v60)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_1D6D81FAC();
          v48 = v194;
          if (v65)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_1D6D6CFA0(v64, isUniquelyReferenced_nonNull_native);
        v66 = sub_1D5B69D90(v193, v50);
        if ((v65 & 1) != (v67 & 1))
        {
          goto LABEL_89;
        }

        v61 = v66;
        v48 = v194;
        if (v65)
        {
LABEL_3:
          *(*(v48 + 56) + 8 * v61) = v54;

          goto LABEL_4;
        }
      }

      *(v48 + 8 * (v61 >> 6) + 64) |= 1 << v61;
      v68 = (*(v48 + 48) + 16 * v61);
      *v68 = v193;
      v68[1] = v50;
      *(*(v48 + 56) + 8 * v61) = v54;
      v69 = *(v48 + 16);
      v70 = __OFADD__(v69, 1);
      v71 = v69 + 1;
      if (v70)
      {
        goto LABEL_83;
      }

      *(v48 + 16) = v71;

LABEL_4:
      v45 = v188;
      sub_1D610B0A8(v188, type metadata accessor for FormatSlotDefinition);
      v47 += v192;
      --v46;
      v40 = v57;
      if (!v46)
      {
        goto LABEL_25;
      }
    }
  }

  v48 = MEMORY[0x1E69E7CC8];
LABEL_25:
  v72 = 0;
  v73 = v48 + 64;
  v74 = 1 << *(v48 + 32);
  v75 = -1;
  if (v74 < 64)
  {
    v75 = ~(-1 << v74);
  }

  v76 = v75 & *(v48 + 64);
  v77 = (v74 + 63) >> 6;
  v78 = MEMORY[0x1E69E7CC0];
  v79 = v187;
  v162 = v48 + 64;
  v161 = v77;
  if (!v76)
  {
LABEL_29:
    while (1)
    {
      v80 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      if (v80 >= v77)
      {

        v141 = sub_1D72626AC();

        return v141;
      }

      v76 = *(v73 + 8 * v80);
      ++v72;
      if (v76)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  while (1)
  {
    v80 = v72;
LABEL_32:
    v172 = (v76 - 1) & v76;

    v81 = sub_1D72626AC();

    v82 = *(v81 + 16);
    if (v82)
    {
      break;
    }

LABEL_34:
    v72 = v80;
    v73 = v162;
    v77 = v161;
    v76 = v172;
    if (!v172)
    {
      goto LABEL_29;
    }
  }

  v156 = *(v81 + 16);
  v83 = v82 - 1;
  v152 = (*(v160 + 80) + 32) & ~*(v160 + 80);
  v157 = *(v160 + 72);
  v155 = v81 + v152;
  sub_1D610B210(v81 + v152 + v157 * (v82 - 1), v191, type metadata accessor for FormatSlotDefinition);
  if (!v83)
  {
LABEL_73:

    sub_1D610B210(v191, v159, type metadata accessor for FormatSlotDefinition);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = sub_1D5D5CA88(0, v78[2] + 1, 1, v78);
    }

    v136 = v78;
    v137 = v78[2];
    v138 = v136;
    v139 = v136[3];
    if (v137 >= v139 >> 1)
    {
      v138 = sub_1D5D5CA88(v139 > 1, v137 + 1, 1, v138);
    }

    v138[2] = v137 + 1;
    v140 = v138 + v152 + v137 * v157;
    v78 = v138;
    sub_1D610B500(v159, v140, type metadata accessor for FormatSlotDefinition);
    sub_1D610B0A8(v191, type metadata accessor for FormatSlotDefinition);
    goto LABEL_34;
  }

  v84 = v83;
  v164 = v48;
  v154 = v78;
  v153 = v81;
  while (v156 > v84)
  {
    v85 = v84 - 1;
    if (v85 >= *(v81 + 16))
    {
      goto LABEL_88;
    }

    v158 = v85;
    v86 = v163;
    sub_1D610B210(v155 + v85 * v157, v163, type metadata accessor for FormatSlotDefinition);
    v194 = v86[6];
    v195 = 0;
    v196 = 0;

    while (1)
    {
      v92 = v171;
      sub_1D7149554(v171);
      v93 = v170;
      sub_1D610B500(v92, v170, sub_1D610AEF4);
      sub_1D610B1A0(0, &qword_1EC883DA0, type metadata accessor for FormatSlotDefinitionItemSet);
      v95 = v94;
      if ((*(*(v94 - 8) + 48))(v93, 1, v94) == 1)
      {
        break;
      }

      v96 = *v93;
      sub_1D610B500(v93 + *(v95 + 48), v186, type metadata accessor for FormatSlotDefinitionItemSet);
      if ((v96 & 0x8000000000000000) != 0)
      {
        goto LABEL_84;
      }

      v97 = v191[6];
      if (v96 >= *(v97 + 16))
      {
        goto LABEL_85;
      }

      v98 = (*(v169 + 80) + 32) & ~*(v169 + 80);
      v189 = *(v169 + 72) * v96;
      v99 = v190;
      sub_1D610B210(v97 + v98 + v189, v190, type metadata accessor for FormatSlotDefinitionItemSet);
      sub_1D610B210(v186, v79, type metadata accessor for FormatSlotDefinitionItemSet);
      v100 = *(v99 + 1);
      v101 = *(v79 + 8);
      if ((sub_1D5E1EFE4(v100, v101) & 1) == 0 && *(v100 + 16) && *(v101 + 16))
      {

        type metadata accessor for FormatDerivedDataError();
        sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
        swift_allocError();
        v144 = v143;
        sub_1D610AF78();
        v145 = v79;
        v147 = *(v146 + 48);
        v148 = v191;
        sub_1D610B210(v191, v144, type metadata accessor for FormatSlotDefinition);
        v149 = v144 + v147;
        v150 = v163;
        sub_1D610B210(v163, v149, type metadata accessor for FormatSlotDefinition);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_1D610B0A8(v186, type metadata accessor for FormatSlotDefinitionItemSet);
        sub_1D610B0A8(v145, type metadata accessor for FormatSlotDefinitionItemSet);
        sub_1D610B0A8(v190, type metadata accessor for FormatSlotDefinitionItemSet);
        v141 = type metadata accessor for FormatSlotDefinition;
        sub_1D610B0A8(v150, type metadata accessor for FormatSlotDefinition);
        sub_1D610B0A8(v148, type metadata accessor for FormatSlotDefinition);
        return v141;
      }

      v102 = *v191;
      v103 = v191[1];
      v175 = v98;
      v176 = v102;
      v177 = v103;
      v104 = sub_1D5BE240C(v102, v103, v168);

      v183 = sub_1D5EECE54(v105, v100);
      if (v104)
      {
        v182 = 0;
        v106 = v190;
      }

      else
      {
        v106 = v190;
        v107 = *v190;
        if (*v79 > *v190)
        {
          v107 = *v79;
        }

        v182 = v107;
      }

      v188 = v96;
      v193 = v97;
      v108 = v106[1];
      if (*(v79 + 4) > v108)
      {
        v108 = *(v79 + 4);
      }

      v181 = v108;
      v197 = *(v106 + 2);

      sub_1D6987088(v109);
      sub_1D610A360(0, &unk_1EDF43BB0, type metadata accessor for FormatPropertyDefinition, MEMORY[0x1E69E62F8]);
      v110 = v190;
      sub_1D610AFE0(&qword_1EDF04CE8, &unk_1EDF43BB0, type metadata accessor for FormatPropertyDefinition);
      v111 = v185;
      v180 = sub_1D72623CC();
      v185 = v111;

      v113 = *(v110 + 3);
      v112 = *(v110 + 4);
      v192 = v113;
      v178 = v112;
      if (!v113)
      {
        v112 = *(v187 + 4);
        v192 = *(v187 + 3);
        sub_1D5D615EC(v192);
      }

      v179 = v112;
      v114 = v184;
      v115 = v173;
      sub_1D5CDE26C(v110 + *(v184 + 36), v173, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      v116 = sub_1D725B76C();
      v117 = *(v116 - 8);
      v118 = *(v117 + 48);
      if (v118(v115, 1, v116) == 1)
      {
        v119 = v167;
        sub_1D5CDE26C(&v187[*(v114 + 36)], v167, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
        v120 = v118(v115, 1, v116);
        sub_1D5D615EC(v113);
        v121 = v120 == 1;
        v122 = v188;
        if (!v121)
        {
          sub_1D5D354E8(v173, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
        }
      }

      else
      {
        v123 = v167;
        (*(v117 + 32))(v167, v115, v116);
        (*(v117 + 56))(v123, 0, 1, v116);
        v119 = v123;
        sub_1D5D615EC(v113);
        v122 = v188;
      }

      v124 = v166;
      *(v166 + 3) = 0;
      *(v124 + 32) = 0;
      v125 = v181;
      *v124 = v182;
      *(v124 + 4) = v125;
      v126 = v180;
      *(v124 + 8) = v183;
      *(v124 + 16) = v126;
      sub_1D5CDE22C(0);
      v127 = v179;
      *(v124 + 24) = v192;
      *(v124 + 32) = v127;
      sub_1D5FC55FC(v119, v124 + *(v184 + 36));
      v128 = v193;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v128 = sub_1D5EC3B28(v128);
      }

      v129 = v187;
      sub_1D610B0A8(v186, type metadata accessor for FormatSlotDefinitionItemSet);
      sub_1D610B0A8(v129, type metadata accessor for FormatSlotDefinitionItemSet);
      sub_1D610B0A8(v190, type metadata accessor for FormatSlotDefinitionItemSet);
      if (v122 >= v128[2])
      {
        goto LABEL_86;
      }

      sub_1D610B044(v124, v128 + v175 + v189);
      v131 = v191[2];
      v130 = v191[3];
      v132 = HIBYTE(v130) & 0xF;
      if ((v130 & 0x2000000000000000) == 0)
      {
        v132 = v131 & 0xFFFFFFFFFFFFLL;
      }

      v193 = v128;
      if (!v132)
      {
        v131 = v163[2];
        v130 = v163[3];
      }

      v134 = v191[4];
      v133 = v191[5];
      v135 = HIBYTE(v133) & 0xF;
      if ((v133 & 0x2000000000000000) == 0)
      {
        v135 = v134 & 0xFFFFFFFFFFFFLL;
      }

      if (!v135)
      {
        v134 = v163[4];
        v133 = v163[5];
      }

      v87 = v191;
      v88 = v191[7];
      v89 = v191[8];
      v90 = v165;
      sub_1D5CDE26C(v191 + *(v174 + 40), &v165[*(v174 + 40)], &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      v91 = v177;
      *v90 = v176;
      v90[1] = v91;
      v90[2] = v131;
      v90[3] = v130;
      v90[4] = v134;
      v90[5] = v133;
      v90[6] = v193;
      v90[7] = v88;
      v90[8] = v89;

      sub_1D610B0A8(v87, type metadata accessor for FormatSlotDefinition);
      sub_1D610B500(v90, v87, type metadata accessor for FormatSlotDefinition);
      v79 = v187;
      v48 = v164;
    }

    sub_1D610B0A8(v163, type metadata accessor for FormatSlotDefinition);
    v78 = v154;
    v81 = v153;
    v84 = v158;
    if (!v158)
    {
      goto LABEL_73;
    }
  }

LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

void sub_1D610A360(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D610A3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D610A360(0, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for FormatVersioningMode(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E69E7CC0];
  v15 = sub_1D605CF08(MEMORY[0x1E69E7CC0]);
  v27 = v14;
  v28 = v15;
  v16 = sub_1D725BD1C();
  (*(*(v16 - 8) + 16))(v13, a3, v16);
  swift_storeEnumTagMultiPayload();
  Dictionary<>.seedFormatCodingVersion(mode:)(v13);
  sub_1D610B0A8(v13, type metadata accessor for FormatVersioningMode);
  v17 = v27;
  v18 = v28;
  v23 = v27;
  v24 = v28;

  sub_1D70DE648(a2);
  v19 = v23;
  if (v3)
  {

    return v19;
  }

  v25 = &type metadata for TraversalOnlyEncoder;
  v26 = sub_1D5D28FD4();
  v23 = v17;
  v24 = v18;

  FormatPackage.encode(to:)(&v23);
  __swift_destroy_boxed_opaque_existential_1(&v23);
  Dictionary<>.formatCodingVersionInfo.getter(v18, v9);
  v21 = type metadata accessor for FormatVersionInfo(0);
  result = (*(*(v21 - 8) + 48))(v9, 1, v21);
  if (result != 1)
  {

    v19 = *&v9[*(v21 + 24)];

    sub_1D610B0A8(v9, type metadata accessor for FormatVersionInfo);
    return v19;
  }

  __break(1u);
  return result;
}

void *sub_1D610A6C8(uint64_t *a1)
{
  v64 = type metadata accessor for FormatDerivedDataWarningError();
  v66 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v2);
  v65 = v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v61 = v59 - v6;
  sub_1D5C4BC40(0, &qword_1EDF450D0, sub_1D5B5931C, &type metadata for FormatCodingEmptyNewsroomStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v59 - v9;
  v11 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = (v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (v59 - v17);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (v59 - v21);
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E7CC0];
  v62 = v23;
  *(v23 + 16) = MEMORY[0x1E69E7CC0];
  v59[1] = v23 + 16;
  v25 = swift_allocObject();
  v69 = v25;
  *(v25 + 16) = v24;
  v60 = (v25 + 16);
  v26 = *(type metadata accessor for FormatPackage() + 92);
  v63 = a1;
  v27 = a1 + v26;
  v67 = *(type metadata accessor for FormatCompilerOptions(0) + 24);
  v68 = v27;
  sub_1D5CF82C4(v27 + v67, v10, &qword_1EDF450D0, sub_1D5B5931C, &type metadata for FormatCodingEmptyNewsroomStrategy, type metadata accessor for FormatCodingDefault);
  sub_1D610B500(v10, v22, type metadata accessor for FormatCompilerOptions.Newsroom);
  v28 = *v22;
  v29 = v22[1];
  sub_1D5E4B8D0(*v22, v29);
  sub_1D610B0A8(v22, type metadata accessor for FormatCompilerOptions.Newsroom);
  v30 = 0;
  v31 = 0;
  if (v29 != 1)
  {

    sub_1D5E4B984(v28, v29);
    v30 = v28;
    v31 = v29;
  }

  v70 = v30;
  v71 = v31;
  v32 = v62;
  sub_1D6106EC4(&v70, 24945, 0xE200000000000000, v69, v62);

  sub_1D5CF82C4(v68 + v67, v10, &qword_1EDF450D0, sub_1D5B5931C, &type metadata for FormatCodingEmptyNewsroomStrategy, type metadata accessor for FormatCodingDefault);
  sub_1D610B500(v10, v18, type metadata accessor for FormatCompilerOptions.Newsroom);
  v33 = *v18;
  v34 = v18[1];
  v35 = v18[2];
  v36 = v18[3];
  sub_1D5E4B8D0(*v18, v34);
  sub_1D610B0A8(v18, type metadata accessor for FormatCompilerOptions.Newsroom);
  if (v34 == 1)
  {
    v35 = 0;
    v36 = 0;
  }

  else
  {

    sub_1D5E4B984(v33, v34);
  }

  v37 = v63;
  v70 = v35;
  v71 = v36;
  v38 = v69;
  sub_1D6106EC4(&v70, 0x676E6967617473, 0xE700000000000000, v69, v32);

  sub_1D5CF82C4(v68 + v67, v10, &qword_1EDF450D0, sub_1D5B5931C, &type metadata for FormatCodingEmptyNewsroomStrategy, type metadata accessor for FormatCodingDefault);
  sub_1D610B500(v10, v14, type metadata accessor for FormatCompilerOptions.Newsroom);
  v39 = *v14;
  v40 = v14[1];
  v41 = v14[4];
  v42 = v14[5];
  sub_1D5E4B8D0(*v14, v40);
  sub_1D610B0A8(v14, type metadata accessor for FormatCompilerOptions.Newsroom);
  if (v40 == 1)
  {
    v41 = 0;
    v42 = 0;
  }

  else
  {

    sub_1D5E4B984(v39, v40);
  }

  v44 = v65;
  v43 = v66;
  v45 = v61;
  v70 = v41;
  v71 = v42;
  sub_1D6106EC4(&v70, 0x69746375646F7270, 0xEA00000000006E6FLL, v38, v32);

  swift_beginAccess();
  v46 = *(v32 + 16);
  if (*(v46 + 16))
  {
    v47 = *v37;
    v48 = v37[1];
    *v45 = v46;
    v45[1] = v47;
    v45[2] = v48;
    swift_storeEnumTagMultiPayload();

    v49 = sub_1D6992E28(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v51 = v49[2];
    v50 = v49[3];
    if (v51 >= v50 >> 1)
    {
      v49 = sub_1D6992E28(v50 > 1, v51 + 1, 1, v49);
    }

    v49[2] = v51 + 1;
    sub_1D610B500(v45, v49 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v51, type metadata accessor for FormatDerivedDataWarningError);
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
  }

  v52 = v60;
  swift_beginAccess();
  v53 = *v52;
  if (*(v53 + 16))
  {
    v54 = *v37;
    v55 = v37[1];
    *v44 = v53;
    v44[1] = v54;
    v44[2] = v55;
    swift_storeEnumTagMultiPayload();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_1D6992E28(0, v49[2] + 1, 1, v49);
    }

    v57 = v49[2];
    v56 = v49[3];
    if (v57 >= v56 >> 1)
    {
      v49 = sub_1D6992E28(v56 > 1, v57 + 1, 1, v49);
    }

    v49[2] = v57 + 1;
    sub_1D610B500(v44, v49 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v57, type metadata accessor for FormatDerivedDataWarningError);
  }

  return v49;
}

void sub_1D610AE40()
{
  if (!qword_1EC883BB8)
  {
    type metadata accessor for FormatDeprecationWarning(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC883BB8);
    }
  }
}

uint64_t sub_1D610AEAC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D610AEF4()
{
  if (!qword_1EC883D98)
  {
    sub_1D610B1A0(255, &qword_1EC883DA0, type metadata accessor for FormatSlotDefinitionItemSet);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC883D98);
    }
  }
}

void sub_1D610AF78()
{
  if (!qword_1EC883DA8)
  {
    type metadata accessor for FormatSlotDefinition();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC883DA8);
    }
  }
}

uint64_t sub_1D610AFE0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D610A360(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D610B044(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatSlotDefinitionItemSet();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D610B0A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D610B108()
{
  if (!qword_1EC883DB0)
  {
    sub_1D610A360(255, &qword_1EDF43BD0, type metadata accessor for FormatSlotDefinition, MEMORY[0x1E69E62F8]);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC883DB0);
    }
  }
}

void sub_1D610B1A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D610B210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D610B278(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D610B1A0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D610B2D4(uint64_t a1, uint64_t a2)
{
  sub_1D610B1A0(0, &qword_1EC895890, type metadata accessor for FormatSlotDefinition);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D610B364(uint64_t a1, uint64_t a2)
{
  sub_1D610B1A0(0, &qword_1EC895890, type metadata accessor for FormatSlotDefinition);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D610B3F4(uint64_t a1, uint64_t a2)
{
  if (!qword_1EC883DC0)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    type metadata accessor for FormatSlotDefinition();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC883DC0);
    }
  }
}

uint64_t sub_1D610B500(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s8NewsFeed31FormatSupplementaryNodePinTraitO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 10);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 10);
  if (*(a1 + 10))
  {
    if (v4 == 1)
    {
      if (v7 == 1)
      {
        v19 = *a1;
        v20 = v3 & 0x1FF;
        v17 = v5;
        v18 = v6 & 0x1FF;
        sub_1D610CA74(v5, v6, 1, sub_1D610CA28, sub_1D610CA5C);
        sub_1D610CA74(v2, v3, 1, sub_1D610CA28, sub_1D610CA5C);
        sub_1D610CA74(v5, v6, 1, sub_1D610CA28, sub_1D610CA5C);
        sub_1D610CA74(v2, v3, 1, sub_1D610CA28, sub_1D610CA5C);
        v8 = _s8NewsFeed34FormatSupplementaryNodePinDistanceO2eeoiySbAC_ACtFZ_0(&v19, &v17);
        sub_1D610CA74(v2, v3, 1, sub_1D60CF6A8, sub_1D60CF6DC);
        sub_1D610CA74(v5, v6, 1, sub_1D60CF6A8, sub_1D60CF6DC);
        sub_1D610CA74(v5, v6, 1, sub_1D60CF6A8, sub_1D60CF6DC);
        sub_1D610CA74(v2, v3, 1, sub_1D60CF6A8, sub_1D60CF6DC);
        return v8 & 1;
      }

      sub_1D610CA28(*a1, v3, BYTE1(v3) & 1);
    }

    else
    {
      if (v7 == 2)
      {
        if (v3 >> 8 <= 0xFE)
        {
          v19 = *a1;
          v20 = v3;
          if (v6 >> 8 <= 0xFE)
          {
            v17 = v5;
            v18 = v6 & 0x1FF;
            sub_1D610CA74(v5, v6, 2, sub_1D610CA28, sub_1D610CA5C);
            sub_1D610CA74(v2, v3, 2, sub_1D610CA28, sub_1D610CA5C);
            sub_1D610CA74(v5, v6, 2, sub_1D610CA28, sub_1D610CA5C);
            sub_1D610CA74(v2, v3, 2, sub_1D610CA28, sub_1D610CA5C);
            sub_1D610CA5C(v2, v3);
            v16 = _s8NewsFeed34FormatSupplementaryNodePinDistanceO2eeoiySbAC_ACtFZ_0(&v19, &v17);
            sub_1D610CA74(v2, v3, 2, sub_1D60CF6A8, sub_1D60CF6DC);
            sub_1D610CA74(v5, v6, 2, sub_1D60CF6A8, sub_1D60CF6DC);
            sub_1D60CF6A8(v17, v18, SHIBYTE(v18));
            sub_1D60CF6A8(v19, v20, SHIBYTE(v20));
            sub_1D60CF6DC(v2, v3);
            if (v16)
            {
              v8 = 1;
              return v8 & 1;
            }

            goto LABEL_30;
          }

          sub_1D610CA74(v5, v6, 2, sub_1D610CA28, sub_1D610CA5C);
          sub_1D610CA74(v2, v3, 2, sub_1D610CA28, sub_1D610CA5C);
          sub_1D610CA74(v5, v6, 2, sub_1D610CA28, sub_1D610CA5C);
          sub_1D610CA74(v2, v3, 2, sub_1D610CA28, sub_1D610CA5C);
          sub_1D610CA5C(v2, v3);
          sub_1D610CA74(v2, v3, 2, sub_1D60CF6A8, sub_1D60CF6DC);
          sub_1D610CA74(v5, v6, 2, sub_1D60CF6A8, sub_1D60CF6DC);
          sub_1D60CF6A8(v2, v3, SHIBYTE(v20));
        }

        else
        {
          sub_1D610CA74(*a2, *(a2 + 8), 2, sub_1D610CA28, sub_1D610CA5C);
          sub_1D610CA74(v2, v3, 2, sub_1D610CA28, sub_1D610CA5C);
          sub_1D610CA74(v5, v6, 2, sub_1D610CA28, sub_1D610CA5C);
          sub_1D610CA74(v2, v3, 2, sub_1D610CA28, sub_1D610CA5C);
          sub_1D610CA74(v2, v3, 2, sub_1D60CF6A8, sub_1D60CF6DC);
          sub_1D610CA74(v5, v6, 2, sub_1D60CF6A8, sub_1D60CF6DC);
          if (v6 >> 8 > 0xFE)
          {
            sub_1D60CF6DC(v2, v3);
            v8 = 1;
            return v8 & 1;
          }
        }

        sub_1D60CF6DC(v2, v3);
        sub_1D60CF6DC(v5, v6);
LABEL_30:
        v8 = 0;
        return v8 & 1;
      }

      sub_1D610CA5C(*a1, v3);
    }

LABEL_29:
    sub_1D610CA74(v5, v6, v7, sub_1D610CA28, sub_1D610CA5C);
    sub_1D610CA74(v2, v3, v4, sub_1D60CF6A8, sub_1D60CF6DC);
    sub_1D610CA74(v5, v6, v7, sub_1D60CF6A8, sub_1D60CF6DC);
    goto LABEL_30;
  }

  if (*(a2 + 10))
  {
    goto LABEL_29;
  }

  if (v2)
  {
    v9 = 0x676E696C69617274;
  }

  else
  {
    v9 = 0x676E696461656CLL;
  }

  if (v2)
  {
    v10 = 0xE800000000000000;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5)
  {
    v11 = 0x676E696C69617274;
  }

  else
  {
    v11 = 0x676E696461656CLL;
  }

  if (v5)
  {
    v12 = 0xE800000000000000;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  if (v9 != v11 || v10 != v12)
  {
    v14 = sub_1D72646CC();

    sub_1D610CA74(v2, v3, 0, sub_1D60CF6A8, sub_1D60CF6DC);
    sub_1D610CA74(v5, v6, 0, sub_1D60CF6A8, sub_1D60CF6DC);
    return v14 & 1;
  }

  sub_1D610CA74(v2, v3, 0, sub_1D60CF6A8, sub_1D60CF6DC);
  sub_1D610CA74(v5, v6, 0, sub_1D60CF6A8, sub_1D60CF6DC);
  v8 = 1;
  return v8 & 1;
}

unint64_t sub_1D610BCD0(uint64_t a1)
{
  result = sub_1D610BCF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D610BCF8()
{
  result = qword_1EC883DC8;
  if (!qword_1EC883DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883DC8);
  }

  return result;
}

unint64_t sub_1D610BD4C(void *a1)
{
  a1[1] = sub_1D5C4D6F4();
  a1[2] = sub_1D610BD84();
  result = sub_1D610BDD8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D610BD84()
{
  result = qword_1EDF093B8;
  if (!qword_1EDF093B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF093B8);
  }

  return result;
}

unint64_t sub_1D610BDD8()
{
  result = qword_1EC883DD0;
  if (!qword_1EC883DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883DD0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed49FormatSupplementaryNodePinDistanceAdjustmentValueO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed44FormatSupplementaryNodePinDistanceAdjustmentOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed34FormatSupplementaryNodePinDistanceOSg(uint64_t a1)
{
  v1 = *(a1 + 9);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_1D610BEA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 11))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 10);
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

void *sub_1D610BF04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v72 = *(a1 + 96);
  v73 = v2;
  v74 = *(a1 + 128);
  v75 = *(a1 + 144);
  v3 = *(a1 + 48);
  v68 = *(a1 + 32);
  v69 = v3;
  v4 = *(a1 + 80);
  v70 = *(a1 + 64);
  v71 = v4;
  v5 = *(a1 + 16);
  v6 = *(a2 + 10);
  v66 = *a1;
  v67 = v5;
  if (v6 == 255)
  {
    v7 = MEMORY[0x1E69E6F90];
    sub_1D5B56024(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    sub_1D5B56024(0, &qword_1EC880490, sub_1D5EA74B8, v7);
    sub_1D5EA74B8();
    v10 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D7273AE0;
    sub_1D711F844(1701869908, 0xE400000000000000, 1701736270, 0xE400000000000000, (v11 + v10));
    v12 = type metadata accessor for FormatInspectionItem(0);
    (*(*(v12 - 8) + 56))(v11 + v10, 0, 1, v12);
    sub_1D6795150(7235920, 0xE300000000000000, 0, 0, v11, &v56);
    swift_setDeallocating();
    sub_1D5EF5F0C(v11 + v10, sub_1D5EA74B8);
    swift_deallocClassInstance();
    *(inited + 56) = &type metadata for FormatInspectionGroup;
    *(inited + 64) = &off_1F518B2C0;
    v13 = swift_allocObject();
    *(inited + 32) = v13;
    *(v13 + 48) = v58;
    v14 = v57;
    *(v13 + 16) = v56;
    *(v13 + 32) = v14;
    v15 = sub_1D7073500(inited);
    swift_setDeallocating();
    v16 = inited + 32;
LABEL_15:
    sub_1D5EF5F0C(v16, sub_1D5E4F358);
    return v15;
  }

  v17 = *a2;
  v18 = *(a2 + 8) | (v6 << 16);
  if (WORD1(v18))
  {
    v19 = MEMORY[0x1E69E6F90];
    sub_1D5B56024(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_1D7273AE0;
    sub_1D5B56024(0, &qword_1EC880490, sub_1D5EA74B8, v19);
    sub_1D5EA74B8();
    v22 = *(*(v21 - 8) + 72);
    v23 = (*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D7270C10;
    if (WORD1(v18) == 1)
    {
      sub_1D610CA74(v17, v18, 1, sub_1D610CA28, sub_1D610CA5C);
      sub_1D711F844(1701869908, 0xE400000000000000, 0x6465786946, 0xE500000000000000, (v24 + v23));
      v25 = type metadata accessor for FormatInspectionItem(0);
      v26 = *(*(v25 - 8) + 56);
      v26(v24 + v23, 0, 1, v25);
      sub_1D5B56024(0, &qword_1EC8803C0, sub_1D5E4F38C, v19);
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_1D7273AE0;
      v62 = v72;
      v63 = v73;
      v64 = v74;
      v65 = v75;
      v58 = v68;
      v59 = v69;
      v60 = v70;
      v61 = v71;
      v56 = v66;
      v57 = v67;
      v54 = v17;
      v55 = v18 & 0x1FF;
      v28 = sub_1D6B010D8(&v56, &v54);
      sub_1D60CF6DC(v54, v55);
      *(v27 + 56) = &type metadata for FormatInspection;
      *(v27 + 64) = &off_1F51E3FD0;
      *(v27 + 32) = v28;
      v29 = sub_1D5F62BFC(v27);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(v27 + 32);
      v30 = sub_1D7073500(v29);

      v31 = (v24 + v23 + v22);
      v32 = v30;
    }

    else
    {
      sub_1D711F844(1701869908, 0xE400000000000000, 0x6E6F6974636553, 0xE700000000000000, (v24 + v23));
      v25 = type metadata accessor for FormatInspectionItem(0);
      v26 = *(*(v25 - 8) + 56);
      v26(v24 + v23, 0, 1, v25);
      sub_1D5B56024(0, &qword_1EC8803C0, sub_1D5E4F38C, v19);
      v48 = swift_initStackObject();
      *(v48 + 16) = xmmword_1D7273AE0;
      v62 = v72;
      v63 = v73;
      v64 = v74;
      v65 = v75;
      v58 = v68;
      v59 = v69;
      v60 = v70;
      v61 = v71;
      v56 = v66;
      v57 = v67;
      v54 = v17;
      v55 = v18;
      v49 = sub_1D6B010D8(&v56, &v54);
      *(v48 + 56) = &type metadata for FormatInspection;
      *(v48 + 64) = &off_1F51E3FD0;
      *(v48 + 32) = v49;
      v50 = sub_1D5F62BFC(v48);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(v48 + 32);
      v51 = sub_1D7073500(v50);

      v31 = (v24 + v23 + v22);
      v32 = v51;
    }

    sub_1D711AD20(0x65636E6174736944, 0xE800000000000000, v32, 0, 0, v31);
    v26(v24 + v23 + v22, 0, 1, v25);
    sub_1D6795150(7235920, 0xE300000000000000, 0, 0, v24, &v56);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v20 + 56) = &type metadata for FormatInspectionGroup;
    *(v20 + 64) = &off_1F518B2C0;
    v52 = swift_allocObject();
    *(v20 + 32) = v52;
    *(v52 + 48) = v58;
    v53 = v57;
    *(v52 + 16) = v56;
    *(v52 + 32) = v53;
    v15 = sub_1D7073500(v20);
    swift_setDeallocating();
    v16 = v20 + 32;
    goto LABEL_15;
  }

  v33 = MEMORY[0x1E69E6F90];
  sub_1D5B56024(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1D7273AE0;
  sub_1D5B56024(0, &qword_1EC880490, sub_1D5EA74B8, v33);
  sub_1D5EA74B8();
  v36 = *(*(v35 - 8) + 72);
  v37 = (*(*(v35 - 8) + 80) + 32) & ~*(*(v35 - 8) + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1D7270C10;
  v39 = (v38 + v37);
  sub_1D711F844(1701869908, 0xE400000000000000, 1701274693, 0xE400000000000000, v39);
  v40 = type metadata accessor for FormatInspectionItem(0);
  v41 = *(*(v40 - 8) + 56);
  v41(v39, 0, 1, v40);
  if (v17)
  {
    v42 = 0x676E696C69617274;
  }

  else
  {
    v42 = 0x676E696461656CLL;
  }

  if (v17)
  {
    v43 = 0xE800000000000000;
  }

  else
  {
    v43 = 0xE700000000000000;
  }

  sub_1D711F844(1701274693, 0xE400000000000000, v42, v43, (v39 + v36));
  v41((v39 + v36), 0, 1, v40);
  sub_1D6795150(7235920, 0xE300000000000000, 0, 0, v38, &v56);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v34 + 56) = &type metadata for FormatInspectionGroup;
  *(v34 + 64) = &off_1F518B2C0;
  v44 = swift_allocObject();
  *(v34 + 32) = v44;
  v45 = v57;
  *(v44 + 16) = v56;
  *(v44 + 32) = v45;
  *(v44 + 48) = v58;
  v46 = sub_1D7073500(v34);
  swift_setDeallocating();
  sub_1D5EF5F0C(v34 + 32, sub_1D5E4F358);
  swift_deallocClassInstance();
  return v46;
}

unint64_t sub_1D610CA28(unint64_t result, unsigned __int8 a2, char a3)
{
  if (a3)
  {
    return sub_1D610CA34(result, a2);
  }

  else
  {
  }
}

unint64_t sub_1D610CA34(unint64_t result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_1D610CA48(result, a2);
  }

  return result;
}

unint64_t sub_1D610CA48(unint64_t result, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
    return sub_1D5C07390(result);
  }

  return result;
}

unint64_t sub_1D610CA5C(unint64_t result, __int16 a2)
{
  if (HIBYTE(a2) != 255)
  {
    return sub_1D610CA28(result, a2, HIBYTE(a2) & 1);
  }

  return result;
}

uint64_t sub_1D610CA74(uint64_t result, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void), uint64_t (*a5)(void))
{
  if (a3 == 2)
  {
    return a5();
  }

  if (a3 == 1)
  {
    return a4(result, a2, (a2 >> 8) & 1);
  }

  return result;
}

uint64_t sub_1D610CAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = type metadata accessor for LayeredMedia.ImageResource();
  v8 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v9);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for LayeredMediaImageVariant();
  v12 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v13);
  v15 = (v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a3 + 88);
  if (v16 && *(v16 + 16) && (v17 = sub_1D5B69D90(a1, a2), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
    v20 = *(v19 + 16);
    v21 = MEMORY[0x1E69E7CC0];
    if (v20)
    {
      v40 = MEMORY[0x1E69E7CC0];

      sub_1D6997DF0(0, v20, 0);
      v21 = v40;
      v22 = v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v23 = *(v8 + 72);
      v36[1] = v19;
      v37 = v23;
      do
      {
        sub_1D610D094(v22, v11);
        v24 = v4[5];
        v25 = v4[6];
        __swift_project_boxed_opaque_existential_1(v4 + 2, v24);
        v26 = (*(v25 + 8))(*v11, *(v11 + 1), v24, v25);
        v27 = *(v11 + 2);
        v28 = *(v11 + 3);
        v29 = *(v39 + 24);
        v30 = *(v38 + 24);
        v31 = sub_1D725C9DC();
        (*(*(v31 - 8) + 16))(v15 + v30, &v11[v29], v31);
        *v15 = v26;
        v15[1] = v27;
        v15[2] = v28;
        sub_1D610D0F8(v11);
        v40 = v21;
        v33 = *(v21 + 16);
        v32 = *(v21 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1D6997DF0(v32 > 1, v33 + 1, 1);
          v21 = v40;
        }

        *(v21 + 16) = v33 + 1;
        sub_1D610D154(v15, v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v33);
        v22 += v37;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    if (qword_1EDF11618 != -1)
    {
      swift_once();
    }

    sub_1D7262EBC();
    sub_1D5C384A0();
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1D7273AE0;
    *(v34 + 56) = MEMORY[0x1E69E6158];
    *(v34 + 64) = sub_1D5B7E2C0();
    *(v34 + 32) = a1;
    *(v34 + 40) = a2;

    sub_1D725C30C();

    return MEMORY[0x1E69E7CC0];
  }

  return v21;
}

uint64_t sub_1D610CE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 96);
  if (v5 && *(v5 + 16) && (v6 = sub_1D5B69D90(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    v9 = *(v8 + 16);
    v10 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v27 = MEMORY[0x1E69E7CC0];

      sub_1D6997E40(0, v9, 0);
      v10 = v27;
      v11 = (v8 + 64);
      do
      {
        v12 = *(v11 - 4);
        v13 = *(v11 - 3);
        v14 = *(v11 - 2);
        v15 = *(v11 - 1);
        v26 = qword_1D729CAD0[*v11];
        v17 = v25[5];
        v16 = v25[6];
        __swift_project_boxed_opaque_existential_1(v25 + 2, v17);
        v18 = *(v16 + 8);

        v19 = v18(v12, v13, v17, v16);

        v21 = *(v27 + 16);
        v20 = *(v27 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D6997E40((v20 > 1), v21 + 1, 1);
        }

        *(v27 + 16) = v21 + 1;
        v22 = (v27 + 40 * v21);
        v22[4] = v19;
        v11 += 40;
        v22[5] = v14;
        v22[6] = v15;
        v22[7] = v26;
        v22[8] = 0xE300000000000000;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    if (qword_1EDF11618 != -1)
    {
      swift_once();
    }

    sub_1D7262EBC();
    sub_1D5C384A0();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D7273AE0;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1D5B7E2C0();
    *(v23 + 32) = a1;
    *(v23 + 40) = a2;

    sub_1D725C30C();

    return MEMORY[0x1E69E7CC0];
  }

  return v10;
}