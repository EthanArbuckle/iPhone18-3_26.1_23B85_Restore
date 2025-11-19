void sub_10012AB00(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v98 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v93 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 56 * v9 + 40);
        v11 = *a3 + 56 * v7;
        v12 = *(v11 + 40);
        v13 = (v11 + 152);
        v14 = v7 + 2;
        while (1)
        {
          v15 = v14;
          if (++v9 >= v6)
          {
            break;
          }

          v16 = (v10 < v12) ^ (*v13 >= *(v13 - 7));
          v13 += 7;
          ++v14;
          if ((v16 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v12)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v15)
            {
              v6 = v15;
            }

            v17 = 56 * v6 - 16;
            v18 = 56 * v7 + 48;
            v19 = v9;
            v20 = v7;
            do
            {
              if (v20 != --v19)
              {
                v21 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v22 = (v21 + v18);
                v23 = (v21 + v17);
                v24 = *(v22 - 6);
                v25 = *(v22 - 5);
                v26 = *(v22 - 32);
                v27 = *(v22 - 1);
                v28 = *v22;
                v29 = *(v22 - 24);
                v30 = *(v23 - 3);
                v31 = *(v23 - 1);
                v32 = *(v23 - 5);
                *v22 = v23[1];
                *(v22 - 2) = v30;
                *(v22 - 1) = v31;
                *(v22 - 3) = v32;
                *(v23 - 5) = v24;
                *(v23 - 4) = v25;
                *(v23 - 24) = v26;
                *(v23 - 1) = v29;
                *v23 = v27;
                *(v23 + 8) = v28;
              }

              ++v20;
              v17 -= 56;
              v18 += 56;
            }

            while (v20 < v19);
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
            v33 = *a3;
            v34 = *a3 + 56 * v9 - 56;
            v35 = v7 - v9;
            do
            {
              v36 = v35;
              v37 = v34;
              do
              {
                v38 = *(v37 + 96);
                if (v38 >= *(v37 + 40))
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_111;
                }

                v40 = *(v37 + 56);
                v39 = *(v37 + 64);
                v41 = *(v37 + 72);
                v42 = *(v37 + 104);
                v43 = *(v37 + 16);
                v44 = *(v37 + 48);
                *(v37 + 56) = *v37;
                v45 = *(v37 + 80);
                *(v37 + 72) = v43;
                *(v37 + 88) = *(v37 + 32);
                *(v37 + 104) = v44;
                *v37 = v40;
                *(v37 + 8) = v39;
                *(v37 + 16) = v41;
                *(v37 + 24) = v45;
                *(v37 + 40) = v38;
                *(v37 + 48) = v42;
                v37 -= 56;
              }

              while (!__CFADD__(v36++, 1));
              ++v9;
              v34 += 56;
              --v35;
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

      v95 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = v8[2];
        sub_10006C888();
        v8 = v91;
      }

      v47 = v8[2];
      v48 = v47 + 1;
      if (v47 >= v8[3] >> 1)
      {
        sub_10006C888();
        v8 = v92;
      }

      v8[2] = v48;
      v49 = v8 + 4;
      v50 = &v8[2 * v47 + 4];
      *v50 = v7;
      v50[1] = v95;
      __dst = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v47)
      {
        while (1)
        {
          v51 = v48 - 1;
          v52 = &v49[2 * v48 - 2];
          v53 = &v8[2 * v48];
          if (v48 >= 4)
          {
            break;
          }

          if (v48 == 3)
          {
            v54 = v8[4];
            v55 = v8[5];
            v64 = __OFSUB__(v55, v54);
            v56 = v55 - v54;
            v57 = v64;
LABEL_56:
            if (v57)
            {
              goto LABEL_96;
            }

            v69 = *v53;
            v68 = v53[1];
            v70 = __OFSUB__(v68, v69);
            v71 = v68 - v69;
            v72 = v70;
            if (v70)
            {
              goto LABEL_99;
            }

            v73 = v52[1];
            v74 = v73 - *v52;
            if (__OFSUB__(v73, *v52))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v71, v74))
            {
              goto LABEL_104;
            }

            if (v71 + v74 >= v56)
            {
              if (v56 < v74)
              {
                v51 = v48 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v48 < 2)
          {
            goto LABEL_98;
          }

          v76 = *v53;
          v75 = v53[1];
          v64 = __OFSUB__(v75, v76);
          v71 = v75 - v76;
          v72 = v64;
LABEL_71:
          if (v72)
          {
            goto LABEL_101;
          }

          v78 = *v52;
          v77 = v52[1];
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_103;
          }

          if (v79 < v71)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v51 - 1 >= v48)
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

          v83 = &v49[2 * v51 - 2];
          v84 = *v83;
          v85 = &v49[2 * v51];
          v86 = v85[1];
          sub_10012B460((*a3 + 56 * *v83), (*a3 + 56 * *v85), *a3 + 56 * v86, __dst);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v86 < v84)
          {
            goto LABEL_91;
          }

          v87 = v8;
          v88 = v8[2];
          if (v51 > v88)
          {
            goto LABEL_92;
          }

          *v83 = v84;
          v83[1] = v86;
          if (v51 >= v88)
          {
            goto LABEL_93;
          }

          v48 = v88 - 1;
          memmove(&v49[2 * v51], v85 + 2, 16 * (v88 - 1 - v51));
          v87[2] = v88 - 1;
          v89 = v88 > 2;
          v8 = v87;
          v5 = 0;
          if (!v89)
          {
            goto LABEL_85;
          }
        }

        v58 = &v49[2 * v48];
        v59 = *(v58 - 8);
        v60 = *(v58 - 7);
        v64 = __OFSUB__(v60, v59);
        v61 = v60 - v59;
        if (v64)
        {
          goto LABEL_94;
        }

        v63 = *(v58 - 6);
        v62 = *(v58 - 5);
        v64 = __OFSUB__(v62, v63);
        v56 = v62 - v63;
        v57 = v64;
        if (v64)
        {
          goto LABEL_95;
        }

        v65 = v53[1];
        v66 = v65 - *v53;
        if (__OFSUB__(v65, *v53))
        {
          goto LABEL_97;
        }

        v64 = __OFADD__(v56, v66);
        v67 = v56 + v66;
        if (v64)
        {
          goto LABEL_100;
        }

        if (v67 >= v61)
        {
          v81 = *v52;
          v80 = v52[1];
          v64 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v64)
          {
            goto LABEL_105;
          }

          if (v56 < v82)
          {
            v51 = v48 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v95;
      a4 = v93;
      if (v95 >= v6)
      {
        v98 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_10012B184(&v98, *a1, a3);
LABEL_89:
}

uint64_t sub_10012B058(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_10011775C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_10012B2BC((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_10012B184(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_10011775C(v15);
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
    sub_10012B460((*a3 + 56 * *v4), (*a3 + 56 * *v9), *a3 + 56 * v10, a2);
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

uint64_t sub_10012B2BC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_10001B82C(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_10001B82C(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_10012B460(char *__src, char *a2, unint64_t a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = (a2 - __src) / 56;
  v9 = (a3 - a2) / 56;
  if (v8 < v9)
  {
    sub_100123794(__src, (a2 - __src) / 56, __dst);
    v10 = &v4[56 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v6 + 5) >= *(v4 + 5))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 56;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 56;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 56;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v15 = *(v12 + 1);
    v16 = *(v12 + 2);
    *(v7 + 6) = *(v12 + 6);
    *(v7 + 1) = v15;
    *(v7 + 2) = v16;
    *v7 = v14;
    goto LABEL_13;
  }

  sub_100123794(a2, (a3 - a2) / 56, __dst);
  v10 = &v4[56 * v9];
LABEL_15:
  for (v5 -= 56; v10 > v4 && v6 > v7; v5 -= 56)
  {
    if (*(v10 - 2) < *(v6 - 2))
    {
      v21 = v6 - 56;
      v13 = v5 + 56 == v6;
      v6 -= 56;
      if (!v13)
      {
        v22 = *v21;
        v23 = *(v21 + 1);
        v24 = *(v21 + 2);
        *(v5 + 48) = *(v21 + 6);
        *(v5 + 16) = v23;
        *(v5 + 32) = v24;
        *v5 = v22;
        v6 = v21;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 56))
    {
      v18 = *(v10 - 56);
      v19 = *(v10 - 40);
      v20 = *(v10 - 24);
      *(v5 + 48) = *(v10 - 1);
      *(v5 + 16) = v19;
      *(v5 + 32) = v20;
      *v5 = v18;
    }

    v10 -= 56;
  }

LABEL_28:
  v25 = 56 * ((v10 - v4) / 56);
  if (v6 != v4 || v6 >= &v4[v25])
  {
    memmove(v6, v4, v25);
  }

  return 1;
}

uint64_t sub_10012B638(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_10012B678(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_10021CC70, &qword_1001A1708);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10012B6E8()
{
  result = qword_100216EF0;
  if (!qword_100216EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100216EF0);
  }

  return result;
}

uint64_t sub_10012B72C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10012B738(void *a1, uint64_t a2, char a3)
{
  sub_10011CE44(a1, a2, a3);
  result = v3;
  v6 = *(v4 - 152);
  return result;
}

_OWORD *sub_10012B754@<X0>(uint64_t a1@<X8>)
{

  return sub_100028734((v1 - 120), (a1 + 32));
}

uint64_t sub_10012B76C()
{
  result = v0;
  v3 = *(v1 - 224);
  return result;
}

uint64_t sub_10012B7D4@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 96) = a1;
  *(v3 - 120) = v2;
  *(v3 - 112) = v1;
}

uint64_t sub_10012B810()
{
  result = v0;
  v3 = *(v1 - 224);
  return result;
}

void sub_10012B830()
{
  v2 = (v0 + 24 * v1);
  v4 = *v2;
  v3 = v2[1];
  v5 = *(v2 + 16);
}

id sub_10012B878(uint64_t a1)
{
  *(v2 - 96) = a1;
  *(v2 - 120) = v1;

  return v1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PJSONFunction.perform(with:arguments:)(SQLiter::SQLiteContext with, Swift::OpaquePointer arguments)
{
  if (*(arguments._rawValue + 2))
  {
    v4 = *(arguments._rawValue + 4);
    if (SQLiteArgument.isNull.getter(v4))
    {
      SQLiteContext.setNull()();
    }

    else
    {
      sub_10011DE10();
      if (!v2)
      {
        SQLiteBaseSchematizer.getSQLiteBridge()();
        v6 = v5;

        ObjectType = swift_getObjectType();
        v8 = (*(v6 + 24))(v4, ObjectType, v6);
        v10 = v9;
        v12 = v11;
        v14 = v13;
        swift_unknownObjectRelease();
        sub_10013116C(with.context._rawValue, v8, v10, v12, v14);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

__n128 TagPathAndType.init(tagPath:type:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  v3 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  result = *(a2 + 25);
  *(a3 + 33) = result;
  return result;
}

__n128 sub_10012BA94(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10012BAB0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_10012BAF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10012BB50(uint64_t a1)
{
  if ((*(a1 + 41) & 0xFu) <= 0xD)
  {
    return *(a1 + 41) & 0xF;
  }

  else
  {
    return (*a1 + 14);
  }
}

__n128 sub_10012BB6C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10012BB80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF2 && *(a1 + 42))
  {
    return (*a1 + 242);
  }

  v3 = *(a1 + 41);
  if (v3 >= 0xF)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012BBBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF1)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 242;
    if (a3 >= 0xF2)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF2)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_10012BC08(uint64_t result, unsigned int a2)
{
  if (a2 > 0xD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 14;
    LOBYTE(a2) = 14;
  }

  *(result + 41) = a2;
  return result;
}

uint64_t sub_10012BC40(uint64_t result)
{
  if (result >= 6u)
  {
    return 6;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10012BC64@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10012BC40(*a1);
  *a2 = result;
  return result;
}

void sub_10012BC90(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = v3;
  sub_10011FB8C(v6, &v54);
  if (!v58)
  {
    sub_100008C84(&v54, &v51);
    sub_100008650();
    while (1)
    {
      if (v5 > 9)
      {
        v22 = 0;
        goto LABEL_26;
      }

      v59 = 0;
      [a1 position];
      if (v6 >= [sub_100003CC4() position] && (objc_msgSend(a1, "position"), v6 <= objc_msgSend(sub_100003CC4(), "length")))
      {
        [a1 data];
        objc_claimAutoreleasedReturnValue();
        [v6 getBytes:&v59 range:{sub_100006C60(), 1}];

        sub_100011B0C([a1 position]);
      }

      else
      {
        [a1 _setError];
      }

      sub_100004554();
      if ((v19 & 0x80) == 0)
      {
        break;
      }

      sub_10000AC88();
    }

    v23 = [a1 hasError];
    v22 = a2;
    if (v23)
    {
      v22 = 0;
    }

LABEL_26:
    *(a3 + 40) = v22;
    *(a3 + 48) = 0;
    *(a3 + 56) = 1;
    sub_100008C84(&v51, a3);
    v24 = 7;
    goto LABEL_27;
  }

  if (v58 == 1)
  {
    sub_100008C84(&v54, &v51);
    v10 = v52;
    v11 = v53;
    sub_100007534(&v51, v52);
    v12 = PBReaderReadData();
    if (v12)
    {
      v13 = v12;
      v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = (*(v11 + 64))(v14, v16, v10, v11);
      if (v4)
      {
        sub_100014A40(v14, v16);
      }

      else
      {
        v27 = v17;
        v28 = v18;
        sub_100014A40(v14, v16);
        *a3 = v27;
        *(a3 + 8) = v28;
        *(a3 + 57) = 10;
      }

      sub_100007378(&v51);
      return;
    }

    __break(1u);
    goto LABEL_126;
  }

  a2 = a2;
  if (v56 | v57 | v54 | v55 | *(&v54 + 1))
  {
    v20 = v56 | v57 | v55 | *(&v54 + 1);
    if (v54 == 1 && !v20)
    {
      if (a2 - 1 >= 4)
      {
        if (a2 == 5)
        {
          LODWORD(v51) = 0;
          [a1 position];
          if (v6 >= [sub_100007DB0() position])
          {
            [a1 position];
            if (v6 <= [sub_100007DB0() length])
            {
              [a1 data];
              objc_claimAutoreleasedReturnValue();
              sub_100006C60();
              [sub_100006268() getBytes:? range:?];

              [a1 setPosition:{objc_msgSend(a1, "position") + 4}];
              v21 = v51;
              goto LABEL_106;
            }
          }

          [a1 _setError];
        }

        else
        {
          v34 = 0;
          while (a2 <= 9)
          {
            sub_10000F674();
            if (v6 >= [sub_100003CC4() position] && (objc_msgSend(a1, "position"), v6 <= objc_msgSend(sub_100003CC4(), "length")))
            {
              [a1 data];
              objc_claimAutoreleasedReturnValue();
              sub_100006C60();
              [sub_100006268() getBytes:? range:?];

              sub_100011B0C([a1 position]);
            }

            else
            {
              [a1 _setError];
            }

            sub_100008170();
            if ((v35 & 0x80) == 0)
            {
              if ([a1 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = 0;
              }

              goto LABEL_106;
            }

            v34 += 7;
            ++a2;
          }
        }

        v21 = 0;
LABEL_106:
        *a3 = v21;
        v24 = 1;
        goto LABEL_27;
      }

LABEL_29:
      sub_10012C544();
      swift_allocError();
      v26 = v25;
      sub_10011FB8C(v6, v25);
      *(v26 + 41) = a2;
      swift_willThrow();
      return;
    }

    if (v54 == 2 && !v20)
    {
      sub_100008650();
      while (1)
      {
        if (v5 > 9)
        {
          v32 = 0;
          goto LABEL_67;
        }

        sub_10000F674();
        if (v6 >= [sub_100003CC4() position] && (objc_msgSend(a1, "position"), v6 <= objc_msgSend(sub_100003CC4(), "length")))
        {
          [a1 data];
          objc_claimAutoreleasedReturnValue();
          sub_100006C60();
          [sub_100006268() getBytes:? range:?];

          sub_100011B0C([a1 position]);
        }

        else
        {
          [a1 _setError];
        }

        sub_100004554();
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        sub_10000AC88();
      }

      if ([a1 hasError])
      {
        v32 = 0;
      }

      else
      {
        v32 = a2;
      }

LABEL_67:
      *a3 = v32;
      v24 = 2;
      goto LABEL_27;
    }

    if (v54 != 3 || v20)
    {
      if (v54 != 4 || v20)
      {
        if (v54 != 5 || v20)
        {
          if (v54 != 6 || v20)
          {
            if (v54 != 7 || v20)
            {
              v46 = PBReaderReadData();
              if (!v46)
              {
LABEL_126:
                __break(1u);
                goto LABEL_127;
              }

              v47 = v46;
              v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v50 = v49;

              *a3 = v48;
              *(a3 + 8) = v50;
              v24 = 9;
            }

            else
            {
              v40 = PBReaderReadString();
              if (!v40)
              {
LABEL_127:
                __break(1u);
                return;
              }

              v41 = v40;
              v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v44 = v43;

              *a3 = v42;
              *(a3 + 8) = v44;
              v24 = 8;
            }
          }

          else
          {
            sub_100008650();
            while (1)
            {
              if (v5 > 9)
              {
                v45 = 0;
                goto LABEL_122;
              }

              sub_10000F674();
              if (v6 >= [sub_100003CC4() position] && (objc_msgSend(a1, "position"), v6 <= objc_msgSend(sub_100003CC4(), "length")))
              {
                [a1 data];
                objc_claimAutoreleasedReturnValue();
                sub_100006C60();
                [sub_100006268() getBytes:? range:?];

                sub_100011B0C([a1 position]);
              }

              else
              {
                [a1 _setError];
              }

              sub_100004554();
              if ((v37 & 0x80) == 0)
              {
                break;
              }

              sub_10000AC88();
            }

            v45 = (a2 != 0) & ~[a1 hasError];
LABEL_122:
            *a3 = v45;
            v24 = 6;
          }
        }

        else
        {
          *&v51 = 0;
          [a1 position];
          if (v6 >= [sub_10000DF30() position] && (objc_msgSend(a1, "position"), v6 <= objc_msgSend(sub_10000DF30(), "length")))
          {
            [a1 data];
            objc_claimAutoreleasedReturnValue();
            sub_100006C60();
            [sub_100006268() getBytes:? range:?];

            [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
            v36 = v51;
          }

          else
          {
            [a1 _setError];
            v36 = 0;
          }

          *a3 = v36;
          v24 = 5;
        }
      }

      else
      {
        LODWORD(v51) = 0;
        [a1 position];
        if (v6 >= [sub_100007DB0() position] && (objc_msgSend(a1, "position"), v6 <= objc_msgSend(sub_100007DB0(), "length")))
        {
          [a1 data];
          objc_claimAutoreleasedReturnValue();
          sub_100006C60();
          [sub_100006268() getBytes:? range:?];

          [a1 setPosition:{objc_msgSend(a1, "position") + 4}];
          v33 = v51;
        }

        else
        {
          [a1 _setError];
          v33 = 0;
        }

        *a3 = v33;
        v24 = 4;
      }

LABEL_27:
      *(a3 + 57) = v24;
      return;
    }

    if (a2 - 2 < 4)
    {
      goto LABEL_29;
    }

    if (a2 == 1)
    {
      *&v51 = 0;
      [a1 position];
      if (v6 >= [sub_10000DF30() position])
      {
        [a1 position];
        if (v6 <= [sub_10000DF30() length])
        {
          [a1 data];
          objc_claimAutoreleasedReturnValue();
          sub_100006C60();
          [sub_100006268() getBytes:? range:?];

          [a1 setPosition:{objc_msgSend(a1, "position") + 8}];
          v30 = v51;
          goto LABEL_124;
        }
      }

      [a1 _setError];
    }

    else
    {
      v38 = 0;
      while (a2 <= 9)
      {
        sub_10000F674();
        if (v6 >= [sub_100003CC4() position] && (objc_msgSend(a1, "position"), v6 <= objc_msgSend(sub_100003CC4(), "length")))
        {
          [a1 data];
          objc_claimAutoreleasedReturnValue();
          sub_100006C60();
          [sub_100006268() getBytes:? range:?];

          sub_100011B0C([a1 position]);
        }

        else
        {
          [a1 _setError];
        }

        sub_100008170();
        if ((v39 & 0x80) == 0)
        {
          if ([a1 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = 0;
          }

          goto LABEL_124;
        }

        v38 += 7;
        ++a2;
      }
    }

    v30 = 0;
LABEL_124:
    *a3 = v30;
    v24 = 3;
    goto LABEL_27;
  }

  if (a2)
  {
    goto LABEL_29;
  }

  sub_100008650();
  while (v5 <= 9)
  {
    sub_10000F674();
    if (v6 >= [sub_100003CC4() position] && (objc_msgSend(a1, "position"), v6 <= objc_msgSend(sub_100003CC4(), "length")))
    {
      [a1 data];
      objc_claimAutoreleasedReturnValue();
      sub_100006C60();
      [sub_100006268() getBytes:? range:?];

      sub_100011B0C([a1 position]);
    }

    else
    {
      [a1 _setError];
    }

    sub_100004554();
    if ((v31 & 0x80) == 0)
    {
      [a1 hasError];
      break;
    }

    sub_10000AC88();
  }

  *a3 = 0;
  *(a3 + 57) = 0;
}

unint64_t sub_10012C544()
{
  result = qword_10021CDD0;
  if (!qword_10021CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CDD0);
  }

  return result;
}

uint64_t sub_10012C598(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 42))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 2)
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

uint64_t sub_10012C5D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ProtoWireType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10012C718()
{
  result = qword_10021CDD8;
  if (!qword_10021CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CDD8);
  }

  return result;
}

void sub_10012C76C(uint64_t a1, unint64_t a2, Swift::String forSchemaName, sqlite3_context *a4)
{
  v7 = SQLiteMessageTypeRegistry.id(forSchemaName:)(forSchemaName);
  v9 = v8;
  if (v8)
  {
    goto LABEL_2;
  }

  v11 = v7;
  sub_100003898();
  v12 = Data.count.getter();
  v13 = v12 + 4;
  if (__OFADD__(v12, 4))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v13 < 0xFFFFFFFF80000000)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v13 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v14 = sqlite3_malloc(v12 + 4);
  if (!v14)
  {
    sub_10012CFB0();
    v9 = swift_allocError();
    *v21 = 3;
    swift_willThrow();
LABEL_2:
    v22 = v9;
    v10 = sub_100046184(&qword_100216900, &unk_10019AE20);
    SQLiteContext.setError<A>(_:message:code:)(&v22, 0xD000000000000014, 0x80000001001B2680, -1, a4, v10);

    return;
  }

  v15 = v14;
  v16 = sub_100003898();
  sub_100014924(v16, v17);
  v18 = sub_100003898();
  v20 = sub_10012C908(v18, v19, v15, a1, a2);
  sub_100003898();
  *(v20 + Data.count.getter()) = v11;

  SQLiteContext.setBuffer(_:ofSize:destructor:)(v15, v13, 2, a4);
}

uint64_t sub_10012C908(uint64_t result, unint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v9 = result;
  switch(a2 >> 62)
  {
    case 1uLL:
      v18 = result >> 32;
      if (result >> 32 >= result)
      {
        v19 = result;
        sub_100014924(a4, a5);
        v14 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v15 = v19;
        v16 = v18;
        goto LABEL_8;
      }

      __break(1u);
      return result;
    case 2uLL:
      v13 = *(result + 16);
      v12 = *(result + 24);
      sub_100014924(a4, a5);
      v14 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v15 = v13;
      v16 = v12;
LABEL_8:
      v17 = sub_10012CEB8(v15, v16, v14, a3, a4, a5);
      goto LABEL_9;
    case 3uLL:
      sub_100014924(a4, a5);
      v11 = 0;
      v10 = 0;
      goto LABEL_5;
    default:
      sub_100014924(a4, a5);
      v10 = a2 & 0xFFFFFFFFFFFFFFLL;
      v11 = v9;
LABEL_5:
      v17 = sub_10012CDC0(v11, v10, a3, a4, a5);
LABEL_9:
      v20 = v17;
      sub_100014A40(a4, a5);
      return v20;
  }
}

uint64_t sub_10012CA3C(sqlite3_value *a1)
{
  result = SQLiteArgument.withUnsafeBytes<A>(_:)(sub_10012CDA4, v1, a1);
  if (!v2)
  {
    return v4;
  }

  return result;
}

void sub_10012CA94(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = type metadata accessor for Data.Deallocator();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (__OFSUB__(a2, 4))
    {
      __break(1u);
    }

    else
    {
      sub_100135A54(*(a1 + a2 - 4), v31);
      if (!v4)
      {
        v32 = type metadata accessor for ProtobufPayload();
        sub_1000092B4(v31, v28);
        (*(v10 + 104))(v13, enum case for Data.Deallocator.none(_:), v9);
        v14 = Data.init(bytesNoCopy:count:deallocator:)();
        v16 = v15;
        sub_100007378(v31);
        v17 = v29;
        v18 = v30;
        v19 = sub_100026EEC(v28, v29);
        v20 = *(*(v17 - 8) + 64);
        v21 = __chkstk_darwin(v19);
        v23 = v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v24 + 16))(v23, v21);
        v25 = sub_100026F3C(v23, v14, v16, v32, v17, v18);
        sub_100007378(v28);
        v26 = sub_10012A1B8();
        *a4 = a3;
        a4[1] = &off_1001FF590;
        a4[2] = v25;
        a4[3] = v26;
      }
    }
  }

  else
  {
    sub_10011DDBC();
    swift_allocError();
    *v27 = 0xD000000000000031;
    *(v27 + 8) = 0x80000001001B2640;
    *(v27 + 41) = 3;
    swift_willThrow();
  }
}

uint64_t sub_10012CD20()
{
  v0 = SQLiteMessageTypeRegistry.deinit();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_10012CD74(sqlite3_value *a1)
{
  result = sub_10012CA3C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

void *sub_10012CDC0(uint64_t a1, uint64_t a2, void *__dst, uint64_t a4, unint64_t a5)
{
  __src = a1;
  v14 = WORD2(a2);
  v13 = a2;
  v8 = 0;
  switch(a5 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a4), a4))
      {
        __break(1u);
LABEL_9:
        __break(1u);
LABEL_10:
        __break(1u);
      }

      v8 = HIDWORD(a4) - a4;
LABEL_6:
      memcpy(__dst, &__src, v8);
      if (!__dst)
      {
        goto LABEL_10;
      }

      sub_100014A40(a4, a5);
      return __dst;
    case 2uLL:
      v10 = *(a4 + 16);
      v9 = *(a4 + 24);
      v8 = v9 - v10;
      if (!__OFSUB__(v9, v10))
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    case 3uLL:
      goto LABEL_6;
    default:
      v8 = BYTE6(a5);
      goto LABEL_6;
  }
}

uint64_t sub_10012CEB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  v10 = __DataStorage._bytes.getter();
  if (v10)
  {
    v11 = v10;
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v13 = (a1 - result + v11);
  }

  else
  {
    v13 = 0;
  }

  result = __DataStorage._length.getter();
  v14 = 0;
  switch(a6 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a5), a5))
      {
        goto LABEL_13;
      }

      v14 = HIDWORD(a5) - a5;
      break;
    case 2uLL:
      v16 = *(a5 + 16);
      v15 = *(a5 + 24);
      v14 = v15 - v16;
      if (__OFSUB__(v15, v16))
      {
        goto LABEL_14;
      }

      break;
    case 3uLL:
      break;
    default:
      v14 = BYTE6(a6);
      break;
  }

  result = memcpy(a4, v13, v14);
  if (a4)
  {
    sub_100014A40(a5, a6);
    return a4;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_10012CFB0()
{
  result = qword_10021CF10;
  if (!qword_10021CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CF10);
  }

  return result;
}

uint64_t CharacterSet.init(stringLiteral:)()
{
  CharacterSet.init(charactersIn:)();
}

uint64_t sub_10012D0E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CharacterSet();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ProtobufPayload.create(with:payload:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1000092B4(a1, v10);
  type metadata accessor for ProtobufPayload();
  v5 = swift_allocObject();
  sub_100008C84(v10, v5 + 16);
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;
  sub_100006278();
  sub_1000270E0(v6, v7, v8);
  sub_100014924(a2, a3);
  return v5;
}

uint64_t sub_10012D240(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = a1[3];
  v11 = a1[4];
  sub_100026EEC(a1, v10);
  sub_100003A6C();
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  sub_100003CD0();
  (*(v15 + 16))(v5);
  v16 = a4(v5, a2, a3, v4, v10, v11);
  sub_100007378(a1);
  return v16;
}

uint64_t *ProtobufPayload.__allocating_init(with:from:payload:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = v6;
  ObjectType = swift_getObjectType();
  (*(a4 + 40))(v23, a1, a2, ObjectType, a4);
  if (v7)
  {
    sub_100014A40(a5, a6);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    v16 = v24;
    v17 = v25;
    sub_100026EEC(v23, v24);
    sub_100003A6C();
    v19 = *(v18 + 64);
    __chkstk_darwin(v20);
    sub_100003CD0();
    (*(v21 + 16))(a4);
    a3 = sub_100026F3C(a4, a5, a6, v8, v16, v17);
    sub_100007378(v23);
  }

  return a3;
}

uint64_t ProtobufPayload.value(forKey:)()
{
  sub_100008660();
  v2 = *(v1 + 48);
  v3 = sub_100004564();
  result = v4(v3);
  if (!v0)
  {
    v13 = sub_100006C78(result, v6, v7, v8, v9, v10, v11, v12, v15, v16);
    ProtobufPayload.value(forProperty:)(v13);
    sub_10000F68C();
    return sub_100007378(v14);
  }

  return result;
}

uint64_t ProtobufPayload.value(forKeypath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *(v3 + 56);
  v9 = *(v3 + 64);
  sub_1000092B4(v3 + 16, v12);
  v12[40] = 1;
  sub_10013C89C(a1, a2, v12, v13);
  sub_10000F68C();
  result = sub_10011FBE8(v10);
  if (!v4)
  {
    static ProtoTagPathHelper.extractValue(from:pathAndType:)(v8, v9, v13, a3);
    return sub_10012F098(v13);
  }

  return result;
}

uint64_t ProtobufPayload.value(forProperty:)(void *a1)
{
  v3 = v1;
  v5 = a1[4];
  sub_100007534(a1, a1[3]);
  v6 = *(v5 + 40);
  v7 = sub_100008B38();
  result = v8(v7);
  if (!v2)
  {
    v10 = a1[4];
    sub_100007534(a1, a1[3]);
    v11 = *(v10 + 32);
    v12 = sub_100008B38();
    v14 = v13(v12);
    v16 = *(v3 + 56);
    v15 = *(v3 + 64);
    sub_100046184(&qword_10021C7A0, &qword_1001A1300);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100197F20;
    *(v17 + 32) = v14;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    sub_10011FB8C(v24, &v23);
    v18 = sub_100007DD0();
    static ProtoTagPathHelper.extractValue(from:pathAndType:)(v18, v19, v20, v21);
    sub_10000F68C();
    sub_10012F098(v22);
    return sub_10011FBE8(v24);
  }

  return result;
}

void *ProtobufPayload.forEachValue(ofKey:block:)(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *))
{
  v5 = v3;
  v9 = v5[5];
  v10 = v5[6];
  sub_100007534(v5 + 2, v9);
  result = (*(v10 + 48))(v13, a1, a2, v9, v10);
  if (!v4)
  {
    static ProtoTagPathHelper.extractValues(from:property:block:)(v5[7], v5[8], v13, a3);
    sub_10000F68C();
    return sub_100007378(v12);
  }

  return result;
}

uint64_t ProtobufPayload.forEachValue(matchingPath:handler:)(uint64_t a1, unint64_t a2)
{
  v4 = static PropertyPathUtil.parse(_:)(a1, a2);
  if (v3)
  {
  }

  v6 = v4;
  sub_100006278();
  v10 = sub_1000270E0(v7, v8, v9);
  sub_10012D874(v2, v10, v6);
}

uint64_t sub_10012D874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v15 = *(a3 + 16);
    v5 = *(a3 + 32);
    v4 = *(a3 + 40);
    v18 = *(a3 + 48);
    v17 = *(a3 + 56);
    ObjectType = swift_getObjectType();
    v7 = *(a2 + 16);

    v7(v19, ObjectType, a2);
    v9 = v20;
    v8 = v21;
    sub_100007534(v19, v20);
    v16 = a2;
    v10 = *(v8 + 48);

    v11 = v25[7];
    v10(&v22, v5, v4, v9, v8);
    if (v11)
    {

      swift_bridgeObjectRelease_n();
      sub_100007378(v19);
      v22 = 0u;
      v23 = 0u;
      v24 = 0;
      return sub_10000F94C(&v22, &qword_10021CC58, &qword_1001A16F0);
    }

    sub_100007378(v19);
    if (!*(&v23 + 1))
    {

      return sub_10000F94C(&v22, &qword_10021CC58, &qword_1001A16F0);
    }

    v13 = sub_100008C84(&v22, v25);
    *&v22 = 0;
    v14 = __chkstk_darwin(v13);
    (*(v16 + 72))(v25, sub_10012F1C4, v14);
    sub_100007378(v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10012DAD8(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t (*a8)(void), uint64_t a9, uint64_t a10)
{
  if ((a6 & 1) == 0)
  {
    v19 = *a2;
    if (*a2 != a5)
    {
      v27 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (!v27)
      {
        goto LABEL_35;
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  v10 = a9;
  if (a7)
  {
    result = a8();
    v21 = *a2 + 1;
    v22 = __OFADD__(*a2, 1);
    if (!v11)
    {
LABEL_19:
      if (!v22)
      {
        goto LABEL_35;
      }

      __break(1u);
      goto LABEL_21;
    }

    if (!v22)
    {
      goto LABEL_35;
    }

    __break(1u);
  }

  sub_100026258(result, v32);
  if (v33 != 10)
  {
LABEL_16:
    result = sub_10002633C(v32);
    v21 = *a2 + 1;
    if (!__OFADD__(*a2, 1))
    {
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_19;
  }

  v12 = v32[0];
  v15 = v32[1];

  v14 = sub_10012DCE4(1, a10);
  v16 = v23;
  v13 = v24;
  if ((v24 & 1) == 0)
  {
LABEL_12:
    sub_10012EEEC(v14, v20, v16, v13);
    v26 = v25;
    goto LABEL_27;
  }

LABEL_21:
  v31 = v20;
  v34 = v12;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v28 = swift_dynamicCastClass();
  if (!v28)
  {
    swift_unknownObjectRelease();
    v28 = _swiftEmptyArrayStorage;
  }

  v29 = v28[2];

  if (__OFSUB__(v13 >> 1, v16))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v29 != (v13 >> 1) - v16)
  {
LABEL_37:
    swift_unknownObjectRelease();
    v12 = v34;
    v20 = v31;
    goto LABEL_12;
  }

  v26 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v12 = v34;
  if (v26)
  {
    goto LABEL_28;
  }

  v26 = _swiftEmptyArrayStorage;
LABEL_27:
  swift_unknownObjectRelease();
LABEL_28:
  sub_10012D874(v12, v15, v26, a8, v10);
  swift_unknownObjectRelease();

  v21 = *a2 + 1;
  v30 = __OFADD__(*a2, 1);
  if (v11)
  {
    if (v30)
    {
      __break(1u);
      goto LABEL_34;
    }

LABEL_35:
    *a2 = v21;
    return result;
  }

LABEL_34:
  if (!v30)
  {
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

uint64_t sub_10012DCE4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_10008C560(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      v5 = sub_1000F0800(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10012DDF4(uint64_t a1, uint64_t *a2)
{
  sub_100135B90();
  v4 = *(*a2 + 16);
  sub_100135C34(v4);
  v5 = *a2;
  *(v5 + 16) = v4 + 1;
  return sub_100026258(a1, v5 + (v4 << 6) + 32);
}

uint64_t ProtobufPayload.value(forOneofName:)()
{
  sub_100008660();
  v2 = *(v1 + 56);
  v3 = sub_100004564();
  result = v4(v3);
  if (!v0)
  {
    v13 = sub_100006C78(result, v6, v7, v8, v9, v10, v11, v12, v16, v17);
    ProtobufPayload.value(forOneof:)(v13, v14);
    sub_10000F68C();
    return sub_100007378(v15);
  }

  return result;
}

uint64_t ProtobufPayload.value(forOneof:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  sub_100007534(a1, a1[3]);
  v5 = sub_10000DF3C();
  v7 = v6(v5);
  v8 = v2[7];
  v9 = v2[8];
  sub_10012DF4C(v7, v2 + 2, _swiftEmptyArrayStorage, a2);
}

id sub_10012DF4C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (qword_10021BFE0 != -1)
  {
    swift_once();
  }

  v5 = qword_10021EA50;
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v5 updateData:isa];

  [v5 seekToOffset:0];
  v7 = *(a3 + 16);
  v8 = Data.count.getter();
  if (v8 < 0)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
  }

  v9 = v8;
  if (v7)
  {
    v10 = 0;
    v11 = a3 + 32;
    v62 = a3 + 32;
    v63 = v7;
    while (1)
    {
      v12 = *(v11 + 8 * v10);
      while (1)
      {
        v13 = [v5 position];
        if ((v13 & 0x8000000000000000) == 0 && v13 >= v9)
        {
          goto LABEL_59;
        }

        v14 = 0;
        v15 = 0;
        for (i = 0; ; ++i)
        {
          if (i > 9)
          {
            v20 = 0;
            goto LABEL_21;
          }

          LOBYTE(v69) = 0;
          v17 = [v5 position] + 1;
          if (v17 >= [v5 position] && (v18 = objc_msgSend(v5, "position") + 1, v18 <= objc_msgSend(v5, "length")))
          {
            v19 = [v5 data];
            [v19 getBytes:&v69 range:{objc_msgSend(v5, "position"), 1}];

            [v5 setPosition:{objc_msgSend(v5, "position") + 1}];
          }

          else
          {
            [v5 _setError];
          }

          v15 |= (v69 & 0x7F) << v14;
          if ((v69 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
        }

        v20 = [v5 hasError] ? 0 : v15;
LABEL_21:
        v21 = v20 & 7;
        if (v12 == (v20 >> 3))
        {
          break;
        }

        PBReaderSkipValueWithTag();
      }

      if (v21 != 2)
      {
        break;
      }

      v22 = 0;
      v23 = 0;
      for (j = 0; ; ++j)
      {
        if (j > 9)
        {
          v28 = 0;
          goto LABEL_37;
        }

        LOBYTE(v69) = 0;
        v25 = [v5 position] + 1;
        if (v25 >= [v5 position] && (v26 = objc_msgSend(v5, "position") + 1, v26 <= objc_msgSend(v5, "length")))
        {
          v27 = [v5 data];
          [v27 getBytes:&v69 range:{objc_msgSend(v5, "position"), 1}];

          [v5 setPosition:{objc_msgSend(v5, "position") + 1}];
        }

        else
        {
          [v5 _setError];
        }

        v23 |= (v69 & 0x7F) << v22;
        if ((v69 & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
      }

      if ([v5 hasError])
      {
        v28 = 0;
      }

      else
      {
        v28 = v23;
      }

      if (v28 < 0)
      {
        goto LABEL_71;
      }

LABEL_37:
      v29 = [v5 position];
      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_72;
      }

      ++v10;
      v9 = (v29 + v28);
      v11 = v62;
      if (v10 == v63)
      {
        goto LABEL_39;
      }
    }

    sub_10011DDBC();
    swift_allocError();
    v46 = v60;
    *&v69 = 0;
    *(&v69 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    *&v69 = 0xD000000000000024;
    *(&v69 + 1) = 0x80000001001B23E0;
    LOBYTE(v68[0]) = v21;
    goto LABEL_62;
  }

LABEL_39:
  v30 = [v5 position];
  if ((v30 & 0x8000000000000000) == 0 && v30 >= v9)
  {
LABEL_59:
    *(a4 + 96) = 0;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return [v5 updateData:0];
  }

  v31 = 0;
  v32 = 0;
  for (k = 0; ; ++k)
  {
    if (k > 9)
    {
      v37 = 0;
      goto LABEL_53;
    }

    LOBYTE(v69) = 0;
    v34 = [v5 position] + 1;
    if (v34 >= [v5 position] && (v35 = objc_msgSend(v5, "position") + 1, v35 <= objc_msgSend(v5, "length")))
    {
      v36 = [v5 data];
      [v36 getBytes:&v69 range:{objc_msgSend(v5, "position"), 1}];

      [v5 setPosition:{objc_msgSend(v5, "position") + 1}];
    }

    else
    {
      [v5 _setError];
    }

    v32 |= (v69 & 0x7F) << v31;
    if ((v69 & 0x80) == 0)
    {
      break;
    }

    v31 += 7;
  }

  if ([v5 hasError])
  {
    v37 = 0;
  }

  else
  {
    v37 = v32;
  }

LABEL_53:
  v38 = v37 & 7;
  v39 = (v37 >> 3);
  v40 = *(a1 + 16) + 1;
  v41 = (a1 + 40);
  do
  {
    if (!--v40)
    {
      PBReaderSkipValueWithTag();
      goto LABEL_39;
    }

    v42 = v41;
    v41 += 2;
  }

  while (*(v42 - 1) > v39 || *v42 < v39);
  v44 = sub_10012BC40(v38);
  if (v44 == 6)
  {
    sub_10011DDBC();
    swift_allocError();
    v46 = v45;
    *&v69 = 0;
    *(&v69 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    *&v69 = 0xD000000000000013;
    *(&v69 + 1) = 0x80000001001B2740;
    LOBYTE(v68[0]) = v38;
LABEL_62:
    v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v47);

    v48 = *(&v69 + 1);
    *v46 = v69;
    *(v46 + 8) = v48;
    *(v46 + 41) = 12;
    swift_willThrow();
    goto LABEL_64;
  }

  v49 = v44;
  v50 = a2[3];
  v51 = a2[4];
  sub_100007534(a2, v50);
  v52 = (*(v51 + 40))(v50, v51);
  if (!v66)
  {
    sub_10014341C(v39, v52, &v69);

    v53 = &selRef_resultWithError_;
    if (*(&v70 + 1))
    {
      sub_100008C84(&v69, v73);
      sub_1000092B4(v73, v72);
      v54 = v74;
      v55 = v75;
      sub_100007534(v73, v74);
      (*(v55 + 40))(v68, v54, v55);
      sub_10012BC90(v5, v49, &v69);
      sub_10011FBE8(v68);
      sub_100008C84(v72, a4);
      v61 = v70;
      *(a4 + 40) = v69;
      *(a4 + 56) = v61;
      *(a4 + 72) = v71[0];
      *(a4 + 82) = *(v71 + 10);
      sub_100007378(v73);
    }

    else
    {
      sub_10000F94C(&v69, &qword_10021CC58, &qword_1001A16F0);
      sub_10011DDBC();
      swift_allocError();
      v57 = v56;
      *&v69 = 0x6761742068746957;
      *(&v69 + 1) = 0xE900000000000020;
      v68[0] = v39;
      v58._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v58);

      v59 = *(&v69 + 1);
      *v57 = v69;
      *(v57 + 8) = v59;
      *(v57 + 41) = 4;
      swift_willThrow();
    }

    return [v5 v53[166]];
  }

LABEL_64:
  v53 = &selRef_resultWithError_;
  return [v5 v53[166]];
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProtobufPayload.propertyName(forOneofName:)(Swift::String forOneofName)
{
  v3 = v1;
  object = forOneofName._object;
  countAndFlagsBits = forOneofName._countAndFlagsBits;
  v6 = v3[5];
  v7 = v3[6];
  v8 = sub_100007534(v3 + 2, v6);
  v9 = object;
  v10 = v8;
  (*(v7 + 56))(v16, countAndFlagsBits, v9, v6, v7);
  if (!v2)
  {
    v10 = ProtobufPayload.propertyName(forOneof:)(v16);
    v3 = v11;
    sub_10000F68C();
    sub_100007378(v12);
  }

  v13 = v10;
  v14 = v3;
  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

uint64_t ProtobufPayload.propertyName(forOneof:)(void *a1)
{
  v4 = a1[4];
  sub_100007534(a1, a1[3]);
  v5 = sub_10000DF3C();
  v7 = v6(v5);
  v8 = sub_100122BB8(v7, *(v1 + 56), *(v1 + 64), _swiftEmptyArrayStorage);
  v10 = v9;

  if (!v2)
  {
    if (v10)
    {
      return 0;
    }

    else
    {
      v12 = a1[3];
      v13 = a1[4];
      sub_100007534(a1, v12);
      return (*(v13 + 32))(v8, v12, v13);
    }
  }

  return result;
}

uint64_t ProtobufPayload.property(forOneofName:)()
{
  sub_100008660();
  v2 = *(v1 + 56);
  v3 = sub_100004564();
  result = v4(v3);
  if (!v0)
  {
    v13 = sub_100006C78(result, v6, v7, v8, v9, v10, v11, v12, v16, v17);
    ProtobufPayload.property(forOneof:)(v13, v14);
    sub_10000F68C();
    return sub_100007378(v15);
  }

  return result;
}

uint64_t ProtobufPayload.property(forOneof:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = ProtobufPayload.propertyName(forOneof:)(a1);
  if (!v3)
  {
    if (v6)
    {
      v7 = v2[6];
      sub_100007534(v2 + 2, v2[5]);
      v8 = *(v7 + 48);
      v9 = sub_100007DD0();
      v10(v9);
    }

    else
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProtobufPayload.asJSON()()
{
  v1 = v0;
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for JSONEncoder.OutputFormatting();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100003CD0();
  v9 = type metadata accessor for JSONEncoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_100046184(&qword_10021CF28, &qword_1001A1E48);
  v12 = *(v7 + 72);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100198F10;
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  v29 = v14;
  sub_1000270E0(&qword_10021CF30, 255, &type metadata accessor for JSONEncoder.OutputFormatting);
  sub_100046184(&qword_10021CF38, &qword_1001A1E50);
  sub_10012F108();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  v29 = v1;
  type metadata accessor for ProtobufPayload();
  sub_100006278();
  sub_1000270E0(v15, v16, v17);
  v18 = v28[1];
  v19 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v18)
  {
    v21 = v19;
    v22 = v20;
    static String.Encoding.utf8.getter();
    v5 = String.init(data:encoding:)();
    v6 = v23;
    sub_100014A40(v21, v22);
    if (!v6)
    {
      sub_10011DDBC();
      swift_allocError();
      sub_10000AC94(v26, 0x80000001001B26F0);
    }
  }

  v24 = v5;
  v25 = v6;
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

uint64_t ProtobufPayload.deinit()
{
  sub_100007378((v0 + 16));
  sub_100014A40(*(v0 + 56), *(v0 + 64));
  return v0;
}

uint64_t sub_10012EE8C(void *a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return SchematizedPayload.encode(to:)(a1, a2, WitnessTable);
}

void sub_10012EEEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_100046184(&qword_10021C7B8, &qword_1001A1320);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 32);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_10012EFBC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

void sub_10012F01C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100014A40(a1, a2);
  [a4 writeData:isa forTag:a3];
}

unint64_t sub_10012F108()
{
  result = qword_10021CF40;
  if (!qword_10021CF40)
  {
    sub_1000461CC(&qword_10021CF38, &qword_1001A1E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CF40);
  }

  return result;
}

uint64_t sub_10012F16C(uint64_t a1, uint64_t a2)
{
  result = sub_1000270E0(&qword_10021CF48, a2, type metadata accessor for ProtobufPayload);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10012F254(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 88) = 1;
  *(v5 + 74) = a3[32];
  *(v5 + 80) = *(a3 + 3);
  v8 = *a3;
  v11 = *(a3 + 8);
  v10[0] = v8;
  v12 = a5;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v13 = 0;
  sub_10012F808(v10, v5 + 32);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return v5;
}

uint64_t sub_10012F2F0@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  result = sub_10012F730(v1 + 32, &v26);
  if (v28 != 1)
  {
    sub_10012F768(&v26, v23);
    switch(v23[0])
    {
      case 1:
        sub_100003CE8();
        v22[40] = v11;
        goto LABEL_17;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 8:
      case 9:
        sub_100003CE8();
        goto LABEL_16;
      case 7:
        if (!v24 || !swift_unknownObjectWeakLoadStrong())
        {
          sub_10011DDBC();
          swift_allocError();
          v18 = 10;
          goto LABEL_21;
        }

        v7 = v25;
        swift_getObjectType();
        v8 = *(v7 + 48);
        v9 = sub_100006290();
        v10(v9);
        swift_unknownObjectRelease();
        if (v2)
        {
          return sub_10012F7A0(v23);
        }

        v20[24] = 0;
        goto LABEL_14;
      case 0xA:
        if (v24 && swift_unknownObjectWeakLoadStrong())
        {
          v12 = v25;
          swift_getObjectType();
          v13 = *(v12 + 40);
          v14 = sub_100006290();
          v15(v14);
          swift_unknownObjectRelease();
          if (!v2)
          {
            v20[24] = 1;
LABEL_14:
            *v22 = v19;
            *&v22[16] = *v20;
            *&v22[25] = *&v20[9];
LABEL_17:
            sub_10011FB8C(v22, &v19);
            v21 = 1;
            swift_beginAccess();
            sub_10012F7D0(&v19, v1 + 32);
            swift_endAccess();
            result = sub_10012F7A0(v23);
            v16 = *&v22[16];
            *a1 = *v22;
            a1[1] = v16;
            v6 = *&v22[25];
            goto LABEL_18;
          }
        }

        else
        {
          sub_10011DDBC();
          swift_allocError();
          v18 = 9;
LABEL_21:
          *v17 = v18;
          *(v17 + 8) = 0u;
          *(v17 + 24) = 0u;
          *(v17 + 40) = 3584;
          swift_willThrow();
        }

        return sub_10012F7A0(v23);
      default:
        memset(v22, 0, 40);
LABEL_16:
        v22[40] = 2;
        goto LABEL_17;
    }
  }

  v5 = *v27;
  *a1 = v26;
  a1[1] = v5;
  v6 = *&v27[9];
LABEL_18:
  *(a1 + 25) = v6;
  return result;
}

uint64_t sub_10012F5AC()
{
  v1 = *(v0 + 24);

  sub_10012F700(v0 + 32);

  return _swift_deallocClassInstance(v0, 89, 7);
}

uint64_t sub_10012F61C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012F658(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_10012F6A4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 41) = a2;
  return result;
}

uint64_t sub_10012F840(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else if ((*(a1 + 32) & 0xF000000000000007) != 0)
    {
      v2 = *(a1 + 24) & 0x7FFFFFFF;
    }

    else
    {
      v2 = -1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10012F884(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
      *(result + 32) = 1;
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

ValueMetadata *PGetManyColumn.columnType.getter(char a1)
{
  v1 = &type metadata for String;
  switch(a1)
  {
    case 1:
    case 2:
      v1 = &type metadata for Data;
      sub_10012F954();
      break;
    case 3:
    case 4:
      return v1;
    default:
      v1 = &type metadata for SQLiteUndefined;
      sub_10012F9A8();
      break;
  }

  return v1;
}

unint64_t sub_10012F954()
{
  result = qword_10021D178;
  if (!qword_10021D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D178);
  }

  return result;
}

unint64_t sub_10012F9A8()
{
  result = qword_10021D180;
  if (!qword_10021D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D180);
  }

  return result;
}

Schematizer::PGetManyColumn_optional __swiftcall PGetManyColumn.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001FE9B8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t PGetManyColumn.rawValue.getter(char a1)
{
  result = 0x65756C6176;
  switch(a1)
  {
    case 1:
      result = 0x7463656A626FLL;
      break;
    case 2:
      result = 0x64616F6C796170;
      break;
    case 3:
      result = 0x614E616D65686373;
      break;
    case 4:
      result = 0x79747265706F7270;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_10012FB0C(char a1, char a2)
{
  v4 = sub_10012FC64(a1);
  v6 = v5;
  if (v4 == sub_10012FC64(a2) && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v9)
  {
LABEL_8:
    v11 = PGetManyColumn.columnType.getter(a1);
    return v11 == PGetManyColumn.columnType.getter(a2);
  }

  return result;
}

Schematizer::PGetManyColumn_optional sub_10012FBE0@<W0>(Swift::String *a1@<X0>, Schematizer::PGetManyColumn_optional *a2@<X8>)
{
  result.value = PGetManyColumn.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_10012FC10@<X0>(uint64_t *a1@<X8>)
{
  result = PGetManyColumn.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10012FC64(char a1)
{
  result = 0x65756C6176;
  switch(a1)
  {
    case 1:
      result = 0x7463656A626FLL;
      break;
    case 2:
      result = 0x64616F6C796170;
      break;
    case 3:
      result = 0x614E616D65686373;
      break;
    case 4:
      result = 0x79747265706F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t PGetManyConnection.init(_:argc:argv:)(uint64_t a1, int a2, uint64_t a3)
{
  v5 = v3;
  v8 = *v3;
  sub_100046184(&qword_10021C648, &unk_1001A2040);
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    sub_10012FF30();
    sub_100004248();
    *v13 = xmmword_10019BC20;
    swift_willThrow();
    goto LABEL_5;
  }

  v10 = v9;
  sub_10011DCBC();
  if (v4)
  {
LABEL_5:

    swift_deallocPartialClassInstance();
    return v5;
  }

  v11 = SQLiteBaseSchematizer.getSQLiteBridge()();
  v15 = v12;

  v3[5] = v11;
  v3[6] = v15;
  v5 = SQLiteBaseVTab.Connection.init(_:argc:argv:)(v10, a2, a3);

  return v5;
}

unint64_t sub_10012FF30()
{
  result = qword_10021D188;
  if (!qword_10021D188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D188);
  }

  return result;
}

uint64_t PGetManyConnection.bestIndex(_:)(uint64_t result)
{
  v1 = *result;
  if ((v1 & 0x80000000) != 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    v2 = 0;
    v3 = 0;
    while (2)
    {
      v4 = 8 * v3;
      v5 = 12 * v3;
      do
      {
        if (v1 == v3)
        {
          *(result + 64) = 0;
          *(result + 72) = 1;
          return (v2 & 0xFFFFFFFE) != 2;
        }

        if (v3 >= v1)
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_22;
        }

        v7 = *(result + 8);
        if (!v7)
        {
          goto LABEL_26;
        }

        v8 = *(v7 + v5);
        if (v8 > 4)
        {
          return 19;
        }

        if ((v8 & 0x80000000) != 0)
        {
          goto LABEL_23;
        }

        v4 += 8;
        ++v3;
        v5 += 12;
      }

      while (!*(&off_1001FEA78 + v8 + 32));
      v9 = v7 + v5;
      v10 = *(v7 + v5 - 8);
      if (*(v9 - 7))
      {
        v11 = v10 == 2;
      }

      else
      {
        v11 = 0;
      }

      if (!v11)
      {
        return 19;
      }

      if (__OFADD__(v2++, 1))
      {
        goto LABEL_25;
      }

      v13 = *(result + 32);
      if (v13)
      {
        v14 = v13 + v4;
        *(v14 - 8) = v2;
        *(v14 - 4) = 1;
        v3 = v6;
        continue;
      }

      break;
    }
  }

  __break(1u);
  return result;
}

uint64_t PGetManyConnection.deinit()
{
  v1 = *(v0 + 24);

  swift_weakDestroy();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t PGetManyConnection.__deallocating_deinit()
{
  PGetManyConnection.deinit();

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100130124(uint64_t a1)
{
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 80) = _swiftEmptyArrayStorage;
  if (*a1 == &type metadata for PGetManyConnection)
  {
    *(v1 + 64) = *(a1 + 40);
    swift_unknownObjectRetain();
    return SQLiteBaseVTab.Cursor.init(_:)();
  }

  else
  {
    sub_10012FF30();
    sub_100004248();
    *v3 = xmmword_10019BC20;
    swift_willThrow();

    v4 = *(v1 + 32);
    swift_unknownObjectRelease();
    v5 = *(v1 + 56);

    v6 = *(v1 + 80);

    type metadata accessor for PGetManyCursor(0);
    return swift_deallocPartialClassInstance();
  }
}

uint64_t sub_10013021C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4 != 3)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 40);
      v7 = SQLiteArgument.getStringNonNull()();
      result = v7._countAndFlagsBits;
      if (!v8)
      {
        countAndFlagsBits = v1[4]._countAndFlagsBits;
        v10 = v2[4]._countAndFlagsBits;
        ObjectType = swift_getObjectType();
        object = v2[4]._object;
        v13 = *(a1 + 32);
        v14 = object[3];
        swift_unknownObjectRetain();
        v14(v13, ObjectType, object);
        v39 = v38;
        v41 = v40;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v42 = v2[2]._countAndFlagsBits;
        v2[2]._countAndFlagsBits = v39;
        v2[2]._object = v41;
        swift_unknownObjectRelease();
        v43 = v2[3]._object;
        v2[3] = v7;
      }

      return result;
    }

    sub_10012FF30();
    sub_100004248();
    *v28 = 0;
    v28[1] = 0;
    return swift_willThrow();
  }

  v15 = *(a1 + 40);
  v16 = SQLiteArgument.getStringNonNull()();
  result = v16._countAndFlagsBits;
  if (v17)
  {
    return result;
  }

  v19 = v1[4]._countAndFlagsBits;
  v18 = v1[4]._object;
  v20 = swift_getObjectType();
  v21 = v18[1];
  swift_unknownObjectRetain();
  v22 = v21(v20, v18);
  v24 = v23;
  swift_unknownObjectRelease();
  v25 = SQLiteArgument.getData()(*(a1 + 32));
  if (v26 >> 60 == 15)
  {

    swift_unknownObjectRelease();
    sub_10011DC44();
    sub_100004248();
    *(v27 + 8) = 0;
    *(v27 + 16) = 0;
    *v27 = 6;
    *(v27 + 24) = 4;
    return swift_willThrow();
  }

  v29 = v25;
  v30 = v26;
  type metadata accessor for ProtobufPayload();
  v31 = ProtobufPayload.__allocating_init(with:from:payload:)(v16._countAndFlagsBits, v16._object, v22, v24, v29, v30);
  v32 = sub_10012A1B8();
  v33 = v2[2]._countAndFlagsBits;
  v2[2]._countAndFlagsBits = v31;
  v2[2]._object = v32;
  swift_unknownObjectRelease();
  v34 = *(a1 + 48);
  v35 = SQLiteArgument.getStringNonNull()();
  result = v35._countAndFlagsBits;
  if (!v36)
  {
    v37 = v2[3]._object;
    v2[3] = v35;
  }

  return result;
}

uint64_t PGetManyCursor.filter(idxNum:idxStr:arguments:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = SQLiteBaseVTab.Cursor.filter(idxNum:idxStr:arguments:)();
  if (!v4 && !result)
  {
    sub_10013021C(a3);
    if (v3[4] && (v7 = v3[7]) != 0)
    {
      v9 = v3[5];
      v8 = v3[6];
      v10 = v3[4];
      ObjectType = swift_getObjectType();
      v12 = *(v9 + 104);
      swift_unknownObjectRetain();

      v13 = v12(v8, v7, ObjectType, v9);
      swift_unknownObjectRelease();

      v14 = v3[10];
      v3[10] = v13;

      return 0;
    }

    else
    {
      sub_10012FF30();
      sub_100004248();
      *v15 = 0xD000000000000012;
      v15[1] = 0x80000001001B27D0;
      return swift_willThrow();
    }
  }

  return result;
}

Swift::Int32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PGetManyCursor.setValue(forColumn:on:)(Swift::String forColumn, SQLiter::SQLiteContext on)
{
  object = forColumn._object;
  countAndFlagsBits = forColumn._countAndFlagsBits;
  v6 = SQLiteDatabase.unsafeConnection()();

  v7._countAndFlagsBits = countAndFlagsBits;
  v7._object = object;
  value = PGetManyColumn.init(rawValue:)(v7).value;
  if (value == 5 || (v9 = v2[4]) == 0)
  {
    LODWORD(v13) = 1;
    return v13;
  }

  v10 = v2[5];
  switch(value)
  {
    case 1:
      v31 = v2[8];
      v32 = v2[9];
      ObjectType = swift_getObjectType();
      v34 = *(v32 + 16);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v34(v9, v10, on.context._rawValue, ObjectType, v32);
      swift_unknownObjectRelease();
      goto LABEL_12;
    case 2:
      v18 = v2[4];
      v19 = swift_getObjectType();
      v20 = *(v10 + 24);
      swift_unknownObjectRetain();
      v21 = v20(v19, v10);
      v23 = v22;
      SQLiteContext.setData(_:destructor:)(v21, v22, 1, on.context._rawValue);
      swift_unknownObjectRelease();
      sub_100014A40(v21, v23);
      goto LABEL_13;
    case 3:
      v24 = v2[4];
      v25 = swift_getObjectType();
      v26 = *(v10 + 16);
      swift_unknownObjectRetain();
      v26(v36, v25, v10);
      v28 = v37;
      v27 = v38;
      sub_100007534(v36, v37);
      v29 = (*(*(v27 + 8) + 8))(v28);
      SQLiteContext.setString(_:destructor:)(v29, v30, 1, on.context._rawValue);

      swift_unknownObjectRelease();
      sub_100007378(v36);
      goto LABEL_13;
    case 4:
      v17 = v2[6];
      v16 = v2[7];

      swift_unknownObjectRetain();
      SQLiteContext.setString(_:destructor:)(v17, v16, 1, on.context._rawValue);

      goto LABEL_12;
    default:
      v11 = v2[8];
      v12 = v2[9];
      v13 = swift_getObjectType();
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_15;
      }

      v14 = v2[10];
      if (v6 >= *(v14 + 16))
      {
LABEL_15:
        __break(1u);
        return v13;
      }

      v15 = v13;
      sub_100026258(v14 + (v6 << 6) + 32, v36);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_1001354FC(v36, on.context._rawValue, v15, v12);
      sub_100130888(v36);
      swift_unknownObjectRelease();
LABEL_12:
      swift_unknownObjectRelease();
LABEL_13:
      LODWORD(v13) = 0;
      return v13;
  }
}

uint64_t sub_100130888(uint64_t a1)
{
  v2 = sub_100046184(&qword_10021D078, &qword_1001A2370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001308F0()
{
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[8];
  swift_unknownObjectRelease();
  v4 = v0[10];
}

void *PGetManyCursor.deinit()
{
  swift_weakDestroy();
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[8];
  swift_unknownObjectRelease();
  v4 = v0[10];

  return v0;
}

uint64_t PGetManyCursor.__deallocating_deinit()
{
  PGetManyCursor.deinit();

  return _swift_deallocClassInstance(v0, 88, 7);
}

unint64_t sub_1001309A8()
{
  result = qword_10021D190;
  if (!qword_10021D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D190);
  }

  return result;
}

unint64_t sub_1001309FC(void *a1)
{
  a1[1] = sub_100130A34();
  a1[2] = sub_100130A88();
  result = sub_100130ADC();
  a1[3] = result;
  return result;
}

unint64_t sub_100130A34()
{
  result = qword_10021D198;
  if (!qword_10021D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D198);
  }

  return result;
}

unint64_t sub_100130A88()
{
  result = qword_10021D1A0;
  if (!qword_10021D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D1A0);
  }

  return result;
}

unint64_t sub_100130ADC()
{
  result = qword_10021D1A8;
  if (!qword_10021D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D1A8);
  }

  return result;
}

unint64_t sub_100130B34()
{
  result = qword_10021D1B0;
  if (!qword_10021D1B0)
  {
    sub_1000461CC(&qword_10021D1B8, &qword_1001A2110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D1B0);
  }

  return result;
}

unint64_t sub_100130B98(uint64_t a1)
{
  result = sub_1001309A8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100130BC4()
{
  result = qword_10021D1C0;
  if (!qword_10021D1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D1C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PGetManyColumn(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100130DE4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100130DFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100130E50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_100130EAC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PPayloadFunction.perform(with:arguments:)(SQLiter::SQLiteContext with, Swift::OpaquePointer arguments)
{
  sub_10011DE10();
  if (!v2)
  {
    SQLiteBaseSchematizer.getSQLiteBridge()();
    v6 = v5;

    if (*(arguments._rawValue + 2))
    {
      ObjectType = swift_getObjectType();
      (*(v6 + 24))(*(arguments._rawValue + 4), ObjectType, v6);
      v9 = v8;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v10 = swift_getObjectType();
      v11 = (*(v9 + 24))(v10, v9);
      v13 = v12;
      SQLiteContext.setData(_:destructor:)(v11, v12, 1, with.context._rawValue);
      sub_100014A40(v11, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PSetTimeWindowFunction.perform(with:arguments:)(SQLiter::SQLiteContext with, Swift::OpaquePointer arguments)
{
  v3 = *(arguments._rawValue + 2);
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(arguments._rawValue + 4);
  v6 = SQLiteArgument.getDouble()();
  if (v3 == 1)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = *(arguments._rawValue + 5);
  v9 = SQLiteArgument.getDouble()();
  if (v7 >= v9)
  {
    sub_10011DDBC();
    swift_allocError();
    *v13 = 0xD000000000000028;
    *(v13 + 8) = 0x80000001001B2880;
    *(v13 + 41) = 0;
    swift_willThrow();
  }

  else
  {
    v10 = v9;
    v11 = sub_10011DE10();
    if (!v2)
    {
      if (v7 <= v10)
      {
        v12 = v11;
        swift_beginAccess();
        *(v12 + 32) = v7;
        *(v12 + 40) = v10;

        SQLiteContext.setBool(_:)(1);
        return;
      }

      goto LABEL_11;
    }
  }
}

uint64_t sub_10013116C(sqlite3_context *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v8 = (*(a5 + 160))(ObjectType, a5);
  SQLiteContext.setString(_:destructor:)(v8, v9, 1, a1);
}

void sub_100131258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[0] = a1;
  v15[1] = a2;
  v15[8] = 64;
  v15[9] = 0xE100000000000000;
  sub_10000527C();
  if (StringProtocol.contains<A>(_:)())
  {
    v13._countAndFlagsBits = 0xD00000000000002CLL;
    v13._object = 0x80000001001B2910;
    SQLiteContext.setError(message:code:)(v13, -1);
  }

  else
  {
    ObjectType = swift_getObjectType();
    (*(a7 + 64))(v15, a1, a2, ObjectType, a7);
    sub_1001314A4(a3, a4, a5);
    sub_100130888(v15);
  }
}

void sub_1001314A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001318EC(v3, v7);
  if (v8[25] == 255)
  {
    sub_100130888(v7);
    SQLiteContext.setNull()();
  }

  else
  {
    v9[0] = v7[0];
    v9[1] = v7[1];
    v10[0] = *v8;
    *(v10 + 10) = *&v8[10];
    sub_100131660(a1, a2, a3);
    sub_10002633C(v9);
  }
}

uint64_t sub_100131554(uint64_t a1, uint64_t a2, sqlite3_context *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v12 = (*(a7 + 120))(a1, a2, ObjectType, a7);
  SQLiteContext.setString(_:destructor:)(v12, v13, 1, a3);
}

void sub_100131660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  sub_100026258(v5, v45);
  switch(v48)
  {
    case 1:
      SQLiteContext.setUInt32(_:)(v45[0]);
      return;
    case 2:
      SQLiteContext.setInt64(_:)(*v45);
      return;
    case 3:
      SQLiteContext.setUInt64(_:)(*v45);
      return;
    case 4:
      SQLiteContext.setFloat(_:)(*v45);
      return;
    case 5:
      SQLiteContext.setDouble(_:)(*v45);
      return;
    case 6:
      SQLiteContext.setBool(_:)(v45[0]);
      return;
    case 7:
      *&v44[9] = *&v47[9];
      v43 = v46;
      *v44 = *v47;
      v42 = *v45;
      v19 = *&v47[8];
      if (v47[24])
      {
        v20 = *(&v43 + 1);
        v21 = *v44;
        sub_100007534(&v42, *(&v43 + 1));
        (*(v21 + 32))(v19, v20, v21);
        if (v4)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }

      sub_100005FBC();
      sub_100003CFC();
      SQLiteContext.setString(_:destructor:)(v30, v31, v32, v33);

LABEL_19:
      sub_10012F200(&v42);
      return;
    case 8:
      sub_100003CFC();
      SQLiteContext.setString(_:destructor:)(v26, v27, v28, v29);

      return;
    case 9:
      v9 = sub_100005FBC();
      sub_100014924(v9, v10);
      sub_100005FBC();
      sub_100003CFC();
      SQLiteContext.setData(_:destructor:)(v11, v12, v13, v14);
      v15 = sub_100005FBC();
      sub_100014A40(v15, v16);
      v17 = sub_100005FBC();
      goto LABEL_21;
    case 10:
      v22 = *v45;
      v23 = *&v45[2];
      if (a2)
      {
        ObjectType = swift_getObjectType();
        v25 = *(a3 + 16);
        swift_unknownObjectRetain();
        v25(v22, v23, a1, ObjectType, a3);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        v34 = swift_getObjectType();
        v35 = (*(v23 + 24))(v34, v23);
        v37 = v36;
        sub_100003CFC();
        SQLiteContext.setData(_:destructor:)(v38, v39, v40, v41);
        swift_unknownObjectRelease();
        v17 = v35;
        v18 = v37;
LABEL_21:
        sub_100014A40(v17, v18);
      }

      return;
    default:
      SQLiteContext.setInt32(_:)(v45[0]);
      return;
  }
}

uint64_t sub_1001318EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_10021D078, &qword_1001A2370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t IntegerSet.forEach(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v78 = a1;
  v79 = a2;
  v7 = *(*(a5 + 8) + 32);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_10000DC50();
  v81 = type metadata accessor for ClosedRange<>.Index();
  v9 = sub_100003650(v81);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_100003838();
  v80 = v14;
  sub_100007F80();
  __chkstk_darwin(v15);
  sub_100009934();
  v83 = v16;
  sub_100003A6C();
  v75 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v20);
  sub_100004370();
  v77 = v21;
  v22 = *(v7 + 8);
  v23 = type metadata accessor for ClosedRange();
  v85 = AssociatedConformanceWitness;
  v86 = v7;
  v87[1] = v7;
  v87[2] = AssociatedConformanceWitness;
  sub_100006C8C();
  swift_getWitnessTable();
  v24 = type metadata accessor for IndexingIterator();
  sub_100003650(v24);
  v71 = v25;
  v27 = *(v26 + 64);
  sub_100003760();
  __chkstk_darwin(v28);
  v30 = &v63 - v29;
  sub_100003A6C();
  v32 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v35);
  v72 = &v63 - v36;
  sub_100023F30();
  v37 = Array.startIndex.getter();
  after = v37;
  sub_100023F30();
  result = Array.endIndex.getter();
  if (v37 != result)
  {
    v64 = v34;
    v69 = (v32 + 8);
    v82 = (v11 + 8);
    v74 = (v75 + 32);
    v73 = (v11 + 32);
    v75 += 8;
    v76 = (v11 + 16);
    ++v71;
    v67 = a3;
    v68 = v24;
    v65 = v32;
    v66 = (v32 + 16);
    v70 = a4;
    while (2)
    {
      sub_100023F30();
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v40 = a3 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v37;
        v41 = *(v32 + 16);
        v42 = v72;
        v41(v72, v40, v23);
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v64 != 8)
        {
LABEL_17:
          __break(1u);
          return result;
        }

        v87[0] = result;
        v41 = *v66;
        v42 = v72;
        (*v66)(v72, v87, v23);
        swift_unknownObjectRelease();
      }

      Array.formIndex(after:)(&after);
      v41(v30, v42, v23);
      v43 = *(v24 + 36);
      ClosedRange<>.startIndex.getter();
      (*v69)(v42, v23);
      v44 = v70;
      while (1)
      {
        v45 = v83;
        ClosedRange<>.endIndex.getter();
        v46 = static ClosedRange<>.Index.== infix(_:_:)();
        v47 = v81;
        v48 = *v82;
        (*v82)(v45, v81);
        if (v46)
        {
          break;
        }

        v49 = v23;
        v50 = v80;
        (*v76)(v80, &v30[v43], v47);
        result = sub_100008D0C(v50, 1, v44);
        if (result == 1)
        {
          __break(1u);
          goto LABEL_17;
        }

        v51 = *v74;
        v52 = v77;
        v53 = sub_1000041F8();
        v54(v53);
        v55 = &v30[v43];
        v56 = v30;
        v57 = v83;
        (*v73)(v83, v55, v47);
        ClosedRange<>.index(after:)();
        v48(v57, v47);
        v58 = v84;
        v78(v52);
        v84 = v58;
        if (v58)
        {
          v61 = sub_100006818();
          v62(v61, v44);
          return (*v71)(v56, v68);
        }

        v59 = sub_100006818();
        v60(v59, v44);
        v23 = v49;
        v30 = v56;
      }

      v24 = v68;
      (*v71)(v30, v68);
      a3 = v67;
      sub_100023F30();
      result = Array.endIndex.getter();
      v37 = after;
      v32 = v65;
      if (after != result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void IntegerSet.add(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005478();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v28 = *(v24 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = sub_100003650(TupleTypeMetadata2);
  v256 = v31;
  v33 = *(v32 + 64);
  __chkstk_darwin(v30);
  sub_100003838();
  v258 = v34;
  sub_100007F80();
  __chkstk_darwin(v35);
  sub_100009934();
  v255 = v36;
  v37 = *(v25 + 24);
  v38 = *(v37 + 8);
  v247 = *(v38 + 24);
  v251 = *(v247 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(*(AssociatedTypeWitness - 8) + 64);
  sub_100003760();
  __chkstk_darwin(v40);
  v250 = v234 - v41;
  v248 = v38;
  v42 = *(*(v38 + 32) + 8);
  v43 = type metadata accessor for ClosedRange();
  v44 = sub_100003650(v43);
  v254 = v45;
  v47 = *(v46 + 64);
  __chkstk_darwin(v44);
  sub_100003838();
  v243 = v48;
  sub_100007F80();
  __chkstk_darwin(v49);
  v245 = v234 - v50;
  sub_100007F80();
  __chkstk_darwin(v51);
  sub_100009934();
  v261 = v52;
  sub_100003A6C();
  v260 = v53;
  v55 = *(v54 + 64);
  __chkstk_darwin(v56);
  sub_100003838();
  v249 = v57;
  sub_100007F80();
  __chkstk_darwin(v58);
  v253 = (v234 - v59);
  sub_100007F80();
  __chkstk_darwin(v60);
  sub_100009934();
  v252 = v61;
  v62 = *v23;
  v264 = *v23;
  v262 = v63;
  v64 = type metadata accessor for Array();
  sub_100011B24();
  swift_getWitnessTable();
  v65 = Collection.isEmpty.getter();
  v259 = v23;
  v257 = v64;
  if (v65)
  {
    if (dispatch thunk of static Comparable.<= infix(_:_:)())
    {
      v66 = v260;
      v67 = *(v260 + 16);
      v68 = v255;
      v67(v255, v27, v28);
      v67(v68 + *(TupleTypeMetadata2 + 48), v27, v28);
      v69 = v68;
      v70 = v256;
      v71 = v258;
      (*(v256 + 16))(v258, v68, TupleTypeMetadata2);
      v254 = *(TupleTypeMetadata2 + 48);
      v72 = *(v66 + 32);
      v73 = TupleTypeMetadata2;
      v74 = v261;
      v75 = sub_100005994();
      v72(v75);
      v76 = *(v66 + 8);
      v76(v71 + v254, v28);
      (*(v70 + 32))(v71, v69, v73);
      (v72)(v74 + *(v262 + 36), v71 + *(v73 + 48), v28);
      v76(v71, v28);
LABEL_4:
      Array.append(_:)();
LABEL_28:
      sub_100005460();
      return;
    }

    __break(1u);
    goto LABEL_30;
  }

  v241 = v42;
  v240 = TupleTypeMetadata2;
  v263 = v62;
  __chkstk_darwin(v65);
  v77 = v28;
  v234[-4] = v28;
  v234[-3] = v37;
  v244 = v27;
  v234[-2] = v27;

  Collection.firstIndex(where:)();

  v242 = v62;
  if (v265)
  {
    v78 = v262;
    v79 = __OFSUB__(Array.count.getter(), 1);
    v80 = v252;
    if (v79)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v81 = v261;
    Array.subscript.getter();
    v82 = v260;
    v83 = *(v260 + 16);
    v84 = v81 + *(v78 + 36);
    v85 = v253;
    v239 = v260 + 16;
    v243 = v83;
    (v83)(v253, v84, v77);
    v238 = *(v254 + 8);
    v238(v81, v78);
    sub_100006B0C();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v86 = *(v247 + 8);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v87 = *(v82 + 8);
    v88 = sub_100005994();
    v87(v88);
    (v87)(v85, v77);
    sub_10000EC54();
    sub_100015BC8();
    LOBYTE(v85) = dispatch thunk of static Equatable.== infix(_:_:)();
    (v87)(v80, v77);
    v251 = v87;
    if ((v85 & 1) == 0)
    {
      if (sub_10000DF54())
      {
        v191 = v255;
        sub_100015BC8();
        v192 = v243;
        v243();
        v193 = v240;
        v194 = *(v240 + 48);
        sub_100015BC8();
        v192();
        v195 = v256;
        v196 = v258;
        (*(v256 + 16))(v258, v191, v193);
        v197 = *(v193 + 48);
        v198 = v261;
        v199 = *(v260 + 32);
        v199(v261, v196, v77);
        v200 = v196 + v197;
        v201 = v251;
        (v251)(v200, v77);
        (*(v195 + 32))(v196, v191, v193);
        v199(v198 + *(v262 + 36), v196 + *(v193 + 48), v77);
        v202 = sub_100005994();
        v201(v202);
        goto LABEL_4;
      }

      goto LABEL_33;
    }

    sub_10000F698();
    v89 = Array.count.getter();
    if (__OFSUB__(v89, 1))
    {
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v253 = (v89 - 1);
    sub_10000F698();
    v79 = __OFSUB__(Array.count.getter(), 1);
    v90 = v243;
    if (v79)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v91 = v245;
    Array.subscript.getter();
    (v90)(v80, v91, v77);
    sub_10000F698();
    sub_10000BECC();
    v92();
    v93 = v244;
    if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v94 = *(v260 + 32);
    v95 = v255;
    v94(v255, v80, v77);
    v96 = v240;
    (v90)(v95 + *(v240 + 48), v93, v77);
    v97 = v256;
    v98 = *(v256 + 16);
    v99 = v258;
    v100 = sub_100008A40();
    v101(v100);
    v102 = *(v96 + 48);
    v103 = v261;
    v94(v261, v99, v77);
    v104 = v99 + v102;
    v105 = v251;
    (v251)(v104, v77);
    v106 = *(v97 + 32);
    v107 = sub_100008A40();
    v108(v107);
    v109 = v262;
    v94(v103 + *(v262 + 36), v99 + *(v96 + 48), v77);
    v105(v99, v77);
    v110 = v259;
    Array._makeMutableAndUnique()();
    v111 = *v110;
    v112 = v253;
    sub_100133F50(v253, v111);
    sub_10000869C();
    v116 = v111 + v114 + *(v115 + 32) * v112;
    v117 = v103;
    v118 = v109;
LABEL_27:
    v113(v116, v117, v118);
    goto LABEL_28;
  }

  v119 = v252;
  v239 = v264;
  if (!v264)
  {
    goto LABEL_18;
  }

  if (__OFSUB__(v264, 1))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v120 = v261;
  v235 = v264 - 1;
  v121 = v262;
  Array.subscript.getter();
  v122 = v260;
  v123 = v120 + *(v121 + 36);
  v236 = *(v260 + 16);
  v234[4] = v260 + 16;
  v236(v253, v123, v77);
  v124 = *(v254 + 8);
  v238 = (v254 + 8);
  v237 = v124;
  (v124)(v120, v121);
  swift_getAssociatedConformanceWitness();
  sub_100005690();
  v234[3] = v125;
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v126 = v249;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v234[2] = *(v247 + 8);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v127 = *(v122 + 8);
  v127(v126, v77);
  v128 = sub_100006B0C();
  (v127)(v128);
  v129 = *(*(v248 + 16) + 8);
  LOBYTE(v120) = dispatch thunk of static Equatable.== infix(_:_:)();
  v127(v119, v77);
  if ((v120 & 1) == 0)
  {
LABEL_18:
    v161 = v261;
    v162 = v262;
    sub_10000DC50();
    Array.subscript.getter();
    v163 = v260;
    v164 = *(v260 + 16);
    v165 = v253;
    v166 = sub_1000041F8();
    v243 = v167;
    (v167)(v166);
    v238 = *(v254 + 8);
    v238(v161, v162);
    swift_getAssociatedConformanceWitness();
    sub_100005690();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v168 = v249;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v169 = *(v247 + 8);
    sub_10000F698();
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v170 = *(v163 + 8);
    v170(v168, v77);
    v170(v165, v77);
    sub_10000EC54();
    sub_100007964();
    v171 = dispatch thunk of static Equatable.== infix(_:_:)();
    v253 = v170;
    v170(v119, v77);
    if ((v171 & 1) == 0)
    {
      v203 = v243;
      if (sub_10000DF54())
      {
        sub_100007964();
        v203();
        v204 = v240;
        v205 = *(v240 + 48);
        sub_100007964();
        v203();
        v206 = v256;
        v207 = *(v256 + 16);
        v208 = v258;
        sub_100012F88();
        v209();
        v210 = *(v204 + 48);
        v211 = v261;
        v212 = *(v260 + 32);
        sub_100015BC8();
        v212();
        v213 = v208 + v210;
        v214 = v253;
        v253(v213, v77);
        v215 = *(v206 + 32);
        sub_100012F88();
        v216();
        (v212)(v211 + *(v262 + 36), v208 + *(v204 + 48), v77);
        v217 = sub_100006B0C();
        v214(v217);
        Array.insert(_:at:)();
        goto LABEL_28;
      }

      goto LABEL_37;
    }

    sub_10000C8B8(&a18);
    v172 = v262;
    Array.subscript.getter();
    v173 = v243;
    (v243)(v119, v171 + *(v172 + 36), v77);
    sub_1000041F8();
    sub_10000BECC();
    v174();
    if ((sub_10000DF54() & 1) == 0)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v175 = v255;
    sub_100007964();
    v173();
    v176 = v240;
    v177 = *(v260 + 32);
    v177(v175 + *(v240 + 48), v119, v77);
    sub_100007000();
    v178 = v258;
    v179(v258, v175, v176);
    v180 = *(v176 + 48);
    v181 = v261;
    v177(v261, v178, v77);
    v182 = v178 + v180;
    v183 = v253;
    v253(v182, v77);
    (*(v119 + 32))(v178, v175, v176);
    v184 = v262;
    v177(v181 + *(v262 + 36), v178 + *(v176 + 48), v77);
    v185 = sub_100005994();
    v183(v185);
    v186 = v259;
    Array._makeMutableAndUnique()();
    v187 = *v186;
    v188 = v239;
    sub_100133F50(v239, v187);
    sub_10000869C();
    v116 = v187 + v189 + *(v190 + 32) * v188;
    v117 = v181;
    v118 = v184;
    goto LABEL_27;
  }

  v130 = v261;
  v248 = v129;
  v131 = v262;
  Array.subscript.getter();
  v132 = v253;
  v133 = v77;
  v236(v253, v130, v77);
  v134 = sub_100007DE4();
  v135(v134);
  sub_100005690();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v136 = v249;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v127(v136, v77);
  v137 = v132;
  v138 = v252;
  v127(v137, v77);
  v139 = dispatch thunk of static Equatable.== infix(_:_:)();
  v127(v138, v77);
  sub_10000DC50();
  Array.subscript.getter();
  sub_10000B12C();
  v140();
  v141 = sub_100007DE4();
  v142(v141);
  v234[1] = v127;
  if (v139)
  {
    sub_10000C8B8(&a16);
    sub_10000DC50();
    Array.subscript.getter();
    v143 = *(v131 + 36);
    v144 = v253;
    sub_10000B12C();
    v145();
    sub_10000BECC();
    v237();
    if (sub_10001AE3C())
    {
      v146 = *(v260 + 32);
      v147 = v255;
      sub_100012F88();
      v146();
      v148 = v240;
      (v146)(v147 + *(v240 + 48), v144, v133);
      sub_100007000();
      v149 = v258;
      v150(v258, v147, v148);
      v151 = *(v148 + 48);
      v152 = v261;
      (v146)(v261, v149, v133);
      v153 = sub_10001BEC8();
      v151(v153);
      (*(v138 + 32))(v149, v147, v148);
      v154 = v262;
      (v146)(v152 + *(v262 + 36), v149 + *(v148 + 48), v133);
      (v151)(v149, v133);
      v155 = v259;
      Array._makeMutableAndUnique()();
      v156 = *v155;
      v157 = v235;
      sub_100133F50(v235, *v155);
      sub_10000869C();
      v160(v156 + v158 + *(v159 + 32) * v157, v152, v154);
      Array.remove(at:)();
      sub_10000BECC();
      v237();
      goto LABEL_28;
    }

    goto LABEL_38;
  }

  if (sub_10001AE3C())
  {
    v218 = *(v260 + 32);
    v219 = v255;
    sub_100012F88();
    v218();
    v220 = v240;
    v221 = *(v240 + 48);
    sub_10000B12C();
    v222();
    sub_100007000();
    v223 = v258;
    v224(v258, v219, v220);
    v225 = *(v220 + 48);
    v226 = v261;
    (v218)(v261, v223, v133);
    v227 = sub_10001BEC8();
    v225(v227);
    (*(v138 + 32))(v223, v219, v220);
    v228 = v262;
    (v218)(v226 + *(v262 + 36), v223 + *(v220 + 48), v133);
    (v225)(v223, v133);
    v229 = v259;
    Array._makeMutableAndUnique()();
    v230 = *v229;
    v231 = v235;
    sub_100133F50(v235, v230);
    sub_10000869C();
    v116 = v230 + v232 + *(v233 + 32) * v231;
    v117 = v226;
    v118 = v228;
    goto LABEL_27;
  }

LABEL_39:
  __break(1u);
}

void IntegerSet.lowerBound.getter()
{
  sub_100005478();
  v5 = sub_100008184(v3, v4);
  sub_10000F2BC();
  v6 = type metadata accessor for Optional();
  sub_100003650(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_100003760();
  __chkstk_darwin(v11);
  v12 = sub_10000CA60();
  sub_100003650(v12);
  v27 = v13;
  v15 = *(v14 + 64);
  sub_100003760();
  __chkstk_darwin(v16);
  v18 = &v26 - v17;
  v29 = v1;
  sub_10000F2BC();
  type metadata accessor for Array();
  sub_100011B24();
  swift_getWitnessTable();
  sub_10000AF64();
  Collection.first.getter();
  if (sub_100008D0C(v2, 1, v5) == 1)
  {
    (*(v8 + 8))(v2, v6);
    sub_10001BC74(v18, 1);
    dispatch thunk of static FixedWidthInteger.max.getter();
    sub_100007760(v18);
    if (!v19)
    {
      (*(v27 + 8))(v18, v12);
    }
  }

  else
  {
    sub_100003A6C();
    v21 = v20;
    (*(v22 + 16))(v18, v2, v0);
    v23 = *(*(v5 - 8) + 8);
    v24 = sub_100005994();
    v25(v24);
    sub_10001BC74(v18, 0);
    (*(v21 + 32))(v28, v18, v0);
  }

  sub_100005460();
}

void IntegerSet.upperBound.getter()
{
  sub_100005478();
  v5 = sub_100008184(v3, v4);
  sub_10000F2BC();
  v6 = type metadata accessor for Optional();
  sub_100003650(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_100003760();
  __chkstk_darwin(v11);
  v12 = sub_10000CA60();
  sub_100003650(v12);
  v25 = v13;
  v15 = *(v14 + 64);
  sub_100003760();
  __chkstk_darwin(v16);
  v18 = &v24 - v17;
  v27 = v1;
  sub_10000F2BC();
  type metadata accessor for Array();
  swift_getWitnessTable();
  sub_10000AF64();
  BidirectionalCollection.last.getter();
  if (sub_100008D0C(v2, 1, v5) == 1)
  {
    (*(v8 + 8))(v2, v6);
    sub_10001BC74(v18, 1);
    dispatch thunk of static FixedWidthInteger.min.getter();
    sub_100007760(v18);
    if (!v19)
    {
      (*(v25 + 8))(v18, v12);
    }
  }

  else
  {
    v20 = *(v0 - 8);
    (*(v20 + 16))(v18, v2 + *(v5 + 36), v0);
    v21 = *(*(v5 - 8) + 8);
    v22 = sub_100005994();
    v23(v22);
    sub_10001BC74(v18, 0);
    (*(v20 + 32))(v26, v18, v0);
  }

  sub_100005460();
}

BOOL IntegerSet.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(*(a4 + 8) + 32) + 8);
  v9 = type metadata accessor for ClosedRange();
  v10 = type metadata accessor for Optional();
  sub_100003650(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_100003760();
  __chkstk_darwin(v15);
  v17 = &v20[-v16];
  v24 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a1;
  type metadata accessor for Array();

  swift_getWitnessTable();
  Sequence.first(where:)();

  v18 = sub_100008D0C(v17, 1, v9) != 1;
  (*(v12 + 8))(v17, v10);
  return v18;
}

uint64_t sub_100133904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 8) + 32) + 8);
  type metadata accessor for ClosedRange();
  return ClosedRange.contains(_:)() & 1;
}

void IntegerSet.forEach(_:)()
{
  sub_100005478();
  v1 = v0;
  v3 = v2;
  v76 = v4;
  v77 = v5;
  v7 = *(*(v6 + 8) + 32);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v68 = type metadata accessor for ClosedRange<>.Index();
  v9 = sub_100003650(v68);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_100003838();
  v78 = v14;
  sub_100007F80();
  __chkstk_darwin(v15);
  v17 = &v61 - v16;
  sub_100003A6C();
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v22);
  sub_100004370();
  v75 = v23;
  v24 = *(v7 + 8);
  v25 = type metadata accessor for ClosedRange();
  v79 = v7;
  v83[1] = v7;
  v83[2] = AssociatedConformanceWitness;
  sub_100006C8C();
  swift_getWitnessTable();
  v70 = type metadata accessor for IndexingIterator();
  sub_100003650(v70);
  v81 = v26;
  v28 = *(v27 + 64);
  sub_100003760();
  __chkstk_darwin(v29);
  v31 = &v61 - v30;
  sub_100003A6C();
  v69 = v32;
  v34 = *(v33 + 64);
  sub_100003760();
  v61 = v35;
  __chkstk_darwin(v36);
  v38 = &v61 - v37;
  sub_100008A40();
  v39 = Array.startIndex.getter();
  v83[0] = v39;
  sub_100008A40();
  if (v39 == Array.endIndex.getter())
  {
LABEL_2:
    sub_100005460();
    return;
  }

  v67 = (v69 + 16);
  v65 = (v69 + 8);
  v73 = (v19 + 32);
  v74 = (v11 + 16);
  v71 = v19 + 8;
  v72 = (v11 + 32);
  v62 = (v81 + 8);
  v66 = v3;
  v63 = v38;
  v64 = (v11 + 8);
  v80 = v25;
  while (2)
  {
    sub_100008A40();
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      v41 = v3 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v39;
      v42 = *(v69 + 16);
      v42(v38, v41, v25);
      goto LABEL_6;
    }

    v60 = _ArrayBuffer._getElementSlowPath(_:)();
    if (v61 == 8)
    {
      v82 = v60;
      v42 = *v67;
      (*v67)(v38, &v82, v25);
      swift_unknownObjectRelease();
LABEL_6:
      v43 = v70;
      Array.formIndex(after:)(v83);
      v44 = sub_100006B0C();
      (v42)(v44);
      v81 = *(v43 + 36);
      ClosedRange<>.startIndex.getter();
      (*v65)(v38, v25);
      v45 = v68;
      v46 = v64;
      while (1)
      {
        ClosedRange<>.endIndex.getter();
        v47 = AssociatedConformanceWitness;
        v48 = static ClosedRange<>.Index.== infix(_:_:)();
        v49 = *v46;
        (*v46)(v17, v45);
        if (v48)
        {
          break;
        }

        v50 = v78;
        (*v74)(v78, &v31[v81], v45);
        sub_100007760(v50);
        if (v51)
        {
          __break(1u);
          goto LABEL_15;
        }

        v52 = *v73;
        v53 = v1;
        v54 = v75;
        v55 = sub_1000041F8();
        v56(v55);
        (*v72)(v17, &v31[v81], v45);
        ClosedRange<>.index(after:)();
        v49(v17, v45);
        AssociatedConformanceWitness = v47;
        v76(v54);
        v57 = sub_100006818();
        v1 = v53;
        v25 = v80;
        v58(v57, v1);
      }

      (*v62)(v31, v70);
      v3 = v66;
      sub_100008A40();
      v59 = Array.endIndex.getter();
      v39 = v83[0];
      AssociatedConformanceWitness = v47;
      v38 = v63;
      if (v83[0] != v59)
      {
        continue;
      }

      goto LABEL_2;
    }

    break;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_100133F50(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100133FEC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100134040(uint64_t a1)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v13 = v12[1];
      v14 = *(*(a1 + 56) + 8 * v11);
      v15[0] = *v12;
      v15[1] = v13;
      v15[2] = v14;

      sub_1001348E8(v15);
      if (v1)
      {
        break;
      }

      v6 &= v6 - 1;

      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t SchematizedPayload.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100046184(&qword_10021D7A8, &qword_1001A23E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v14 - v9;
  v11 = a1[4];
  sub_100007534(a1, a1[3]);
  sub_100123FC8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100046184(&qword_10021D7B0, &qword_1001A23E8);
  v18 = Dictionary.init(dictionaryLiteral:)();
  v16 = &v18;
  v17 = v10;
  v12 = v14[1];
  (*(a3 + 96))(sub_1001348CC, v15, a2, a3);
  if (!v12)
  {
    sub_100134040(v18);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100134368(void *a1, uint64_t a2, uint64_t *a3)
{
  v7 = a1[3];
  v8 = a1[4];
  sub_100007534(a1, v7);
  LOBYTE(v8) = (*(v8 + 16))(v7, v8);
  v10 = a1[3];
  v9 = a1[4];
  sub_100007534(a1, v10);
  v11 = (*(*(v9 + 8) + 8))(v10);
  if (v8)
  {
    v13 = sub_1000BCF98(v11, v12, *a3);

    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = _swiftEmptyArrayStorage;
    }

    sub_100026258(a2, &v51);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = v14[2];
      sub_1001236B0();
      v14 = v49;
    }

    v15 = v14[2];
    if (v15 >= v14[3] >> 1)
    {
      sub_1001236B0();
      v14 = v50;
    }

    v14[2] = v15 + 1;
    v16 = &v14[8 * v15];
    v17 = v51;
    v18 = v52;
    v19 = v53[0];
    *(v16 + 74) = *(v53 + 10);
    v16[3] = v18;
    v16[4] = v19;
    v16[2] = v17;
    v21 = a1[3];
    v20 = a1[4];
    sub_100007534(a1, v21);
    v22 = (*(*(v20 + 8) + 8))(v21);
    v24 = v23;
    v25 = *a3;
    swift_isUniquelyReferenced_nonNull_native();
    *&v51 = *a3;
    sub_1001365F4(v14, v22, v24);
    *a3 = v51;
  }

  *&v51 = v11;
  *(&v51 + 1) = v12;
  sub_100046184(&qword_10021D7A8, &qword_1001A23E0);
  sub_100134CB8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
  }

  if (qword_10021BFB0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000964C(v26, qword_100232D90);
  sub_1000092B4(a1, &v51);
  swift_errorRetain();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v29 = 136315394;
    v31 = *(&v52 + 1);
    v30 = *&v53[0];
    sub_100007534(&v51, *(&v52 + 1));
    v32 = (*(*(v30 + 8) + 8))(v31);
    v34 = v33;
    sub_100007378(&v51);
    v35 = sub_100009684(v32, v34, &v55);

    *(v29 + 4) = v35;
    *(v29 + 12) = 2080;
    v54 = v3;
    swift_errorRetain();
    sub_100046184(&qword_100216900, &unk_10019AE20);
    v36 = String.init<A>(describing:)();
    v38 = sub_100009684(v36, v37, &v55);

    *(v29 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v27, v28, "Sch: Error encoding %s: %s", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007378(&v51);
  }

  *&v51 = 0;
  *(&v51 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  *&v51 = 0xD000000000000014;
  *(&v51 + 1) = 0x80000001001B2990;
  v41 = a1[3];
  v40 = a1[4];
  sub_100007534(a1, v41);
  v42._countAndFlagsBits = (*(*(v40 + 8) + 8))(v41);
  String.append(_:)(v42);

  v43._countAndFlagsBits = 8250;
  v43._object = 0xE200000000000000;
  String.append(_:)(v43);
  v55 = v3;
  swift_errorRetain();
  sub_100046184(&qword_100216900, &unk_10019AE20);
  v44._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v44);

  v46 = a1[3];
  v45 = a1[4];
  sub_100007534(a1, v46);
  *&v51 = (*(*(v45 + 8) + 8))(v46);
  *(&v51 + 1) = v47;
  KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_1001348E8(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v16 = *a1;
  v17 = v2;
  sub_100046184(&qword_10021D7A8, &qword_1001A23E0);
  sub_100046184(&qword_10021D7B0, &qword_1001A23E8);
  sub_100134C34();
  result = KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v1)
  {
    if (qword_10021BFB0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000964C(v6, qword_100232D90);

    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v9 = 136315394;
      *(v9 + 4) = sub_100009684(v3, v2, &v16);
      *(v9 + 12) = 2080;
      v18 = v1;
      swift_errorRetain();
      sub_100046184(&qword_100216900, &unk_10019AE20);
      v10 = String.init<A>(describing:)();
      v12 = sub_100009684(v10, v11, &v16);

      *(v9 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v7, v8, "Sch: Error encoding %s: %s", v9, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v16 = 0;
    v17 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v16 = 0xD000000000000014;
    v17 = 0x80000001001B2990;
    v13._countAndFlagsBits = v3;
    v13._object = v2;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 8250;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    v18 = v1;
    swift_errorRetain();
    sub_100046184(&qword_100216900, &unk_10019AE20);
    v15._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v15);

    v16 = v3;
    v17 = v2;

    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return result;
}

unint64_t sub_100134C34()
{
  result = qword_10021D7B8;
  if (!qword_10021D7B8)
  {
    sub_1000461CC(&qword_10021D7B0, &qword_1001A23E8);
    sub_100134CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D7B8);
  }

  return result;
}

unint64_t sub_100134CB8()
{
  result = qword_10021D7C0;
  if (!qword_10021D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D7C0);
  }

  return result;
}

uint64_t AnyValue.encode(to:)(void *a1)
{
  v2 = a1[4];
  sub_100007534(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100026258(v1, v9);
  switch(v11)
  {
    case 1:
      sub_100003D08();
      sub_1000062AC();
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      break;
    case 2:
      sub_100003D08();
      sub_1000062AC();
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      break;
    case 3:
      sub_100003D08();
      sub_1000062AC();
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      break;
    case 4:
      sub_100003D08();
      sub_100004584();
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      break;
    case 5:
      sub_100003D08();
      sub_100004584();
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      break;
    case 6:
      sub_100003D08();
      sub_1000062AC();
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      break;
    case 7:
      v7[0] = v9[0];
      v7[1] = v9[1];
      v8[0] = *v10;
      *(v8 + 9) = *&v10[9];
      sub_100003D08();
      sub_100134FB0();
      dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
      sub_10012F200(v7);
      break;
    case 8:
      sub_100026EEC(v12, v13);
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();

      break;
    case 9:
      v3 = v9[0];
      v7[0] = v9[0];
      sub_100026EEC(v12, v13);
      sub_100069E5C();
      dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
      sub_100014A40(v3, *(&v3 + 1));
      break;
    case 10:
      v5 = v9[0];
      swift_getObjectType();
      *&v7[0] = v5;
      sub_100026EEC(v12, v13);
      v6 = *(*(&v5 + 1) + 8);
      dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
      swift_unknownObjectRelease();
      break;
    default:
      sub_100003D08();
      sub_1000062AC();
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      break;
  }

  return sub_100007378(v12);
}

unint64_t sub_100134FB0()
{
  result = qword_10021D7C8;
  if (!qword_10021D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D7C8);
  }

  return result;
}

__n128 sub_10013501C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100135038(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 58))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 57);
  if (v3 >= 0xB)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100135074(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 42) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001350C4(uint64_t result, unsigned int a2)
{
  if (a2 > 0xA)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 11;
    LOBYTE(a2) = 11;
  }

  *(result + 57) = a2;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PEnumFunction.perform(with:arguments:)(SQLiter::SQLiteContext with, Swift::OpaquePointer arguments)
{
  if (*(arguments._rawValue + 2) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v4 = *(arguments._rawValue + 5);
    v5 = SQLiteArgument.getStringNonNull()();
    if (!v6)
    {
      sub_10011DE10();
      SQLiteBaseSchematizer.enum(withName:)(v5._countAndFlagsBits, v5._object);

      sub_100008C84(&v18, v19);
      v7 = *(arguments._rawValue + 4);
      if (SQLiteArgument.isText.getter(*(arguments._rawValue + 4)))
      {
        v8 = SQLiteArgument.getStringNonNull()();
        if (!v9)
        {
          v10 = v20;
          v11 = v21;
          sub_100007534(v19, v20);
          v17 = (*(v11 + 24))(v8._countAndFlagsBits, v8._object, v10, v11);

          SQLiteContext.setInt32(_:)(v17);
        }
      }

      else if (SQLiteArgument.isInteger.getter(v7))
      {
        v12 = SQLiteArgument.getInt32()();
        v13 = v20;
        v14 = v21;
        sub_100007534(v19, v20);
        v15 = (*(v14 + 32))(v12, v13, v14);
        SQLiteContext.setString(_:destructor:)(v15, v16, 1, with.context._rawValue);
      }

      sub_100007378(v19);
    }
  }
}

uint64_t sub_10013533C(uint64_t a1)
{
  v2 = sub_100046184(&qword_10021D7D0, &qword_1001A2608);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001353D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = (*(a2 + 24))(ObjectType, a2);
  v12 = v11;
  (*(a2 + 16))(v18, ObjectType, a2);
  v14 = v19;
  v13 = v20;
  sub_100007534(v18, v19);
  v15 = (*(*(v13 + 8) + 8))(v14);
  (*(*(a5 + 8) + 32))(v10, v12, v15, v16, a3, a4);
  sub_100014A40(v10, v12);

  return sub_100007378(v18);
}

void sub_1001354FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1001318EC(a1, v7);
  if (v8[25] == 255)
  {
    sub_100130888(v7);
    SQLiteContext.setNull()();
  }

  else
  {
    v9[0] = v7[0];
    v9[1] = v7[1];
    v10[0] = *v8;
    *(v10 + 10) = *&v8[10];
    sub_100131660(a2, v4, a4);
    sub_10002633C(v9);
  }
}

uint64_t sub_1001355A8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(a7 + 16))(v19, a3, a4, a6, a7);
  sub_1000092B4(v19, v18);
  type metadata accessor for ProtobufPayload();
  v12 = swift_allocObject();
  sub_10011FEDC(v18, v12 + 16);
  *(v12 + 56) = a1;
  *(v12 + 64) = a2;
  v13 = sub_10012A1B8();
  v14 = *(a7 + 8);
  v15 = *(v14 + 16);
  sub_100014924(a1, a2);

  v15(v16, v13, a5, a6, v14);

  return sub_100007378(v19);
}

void *sub_10013572C(uint64_t a1, uint64_t a2)
{
  v2[2] = _swiftEmptyArrayStorage;
  v2[3] = Dictionary.init(dictionaryLiteral:)();
  v2[4] = a1;
  v2[5] = a2;
  return v2;
}

void *SQLiteMessageTypeRegistry.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();
  return v0;
}

Swift::UInt32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteMessageTypeRegistry.id(forSchemaName:)(Swift::String forSchemaName)
{
  v3 = v1;
  object = forSchemaName._object;
  countAndFlagsBits = forSchemaName._countAndFlagsBits;
  v6 = *v1;
  swift_beginAccess();
  v7 = v1[3];
  if (*(v7 + 16))
  {

    v8 = sub_100005B74(countAndFlagsBits, object);
    if (v9)
    {
      v6 = *(*(v7 + 56) + 8 * v8);

      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_14;
      }

      if (!HIDWORD(v6))
      {
        return v6;
      }

      __break(1u);
    }
  }

  v11 = swift_beginAccess();
  v12 = *(v3[2] + 16);
  if (v12 >= (*(v6 + 104))(v11))
  {
    sub_10012CFB0();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    return v6;
  }

  v20 = v12;
  v13 = v3[4];
  v6 = v3[5];
  ObjectType = swift_getObjectType();
  v15 = *(v6 + 40);
  swift_unknownObjectRetain();
  v15(v21, countAndFlagsBits, object, ObjectType, v6);
  swift_unknownObjectRelease();
  if (v2)
  {
    return v6;
  }

  LODWORD(v6) = v20 + 1;
  swift_beginAccess();
  v16 = v3[3];
  swift_isUniquelyReferenced_nonNull_native();
  v22 = v3[3];
  sub_100135D6C(v20 + 1, countAndFlagsBits, object);
  v3[3] = v22;
  swift_endAccess();
  swift_beginAccess();
  sub_100135BA8(sub_100123108);
  v17 = *(v3[2] + 16);
  sub_100135C4C(v17, sub_100123108);
  v18 = v3[2];
  *(v18 + 16) = v17 + 1;
  sub_1000092B4(v21, v18 + 40 * v17 + 32);
  v3[2] = v18;
  swift_endAccess();
  result = sub_100007378(v21);
  if (v20 <= 0xFFFFFFFE)
  {
    return v6;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_100135A54@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    sub_10012CFB0();
    swift_allocError();
    v7 = 2;
    goto LABEL_5;
  }

  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16) < a1)
  {
    sub_10012CFB0();
    swift_allocError();
    v7 = 1;
LABEL_5:
    *v6 = v7;
    return swift_willThrow();
  }

  return sub_1000092B4(v5 + 40 * (a1 - 1) + 32, a2);
}

uint64_t SQLiteMessageTypeRegistry.__deallocating_deinit()
{
  SQLiteMessageTypeRegistry.deinit();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_100135BA8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_100135C4C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_100135C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000086B4(a1, a2, a3);
  sub_100005F80(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_100006700();
  sub_100046184(&unk_1002167A0, &unk_10019AD50);
  if (sub_10000433C())
  {
    sub_100007C98();
    sub_100006AD8();
    if (!v11)
    {
      goto LABEL_12;
    }

    v5 = v10;
  }

  if (v4)
  {
    *(*(*v3 + 56) + 4 * v5) = a1;
    sub_100007CB4();
  }

  else
  {
    v12 = sub_100011B3C();
    sub_100140C08(v12, v13, v14, a1, v15);
    sub_100007CB4();
  }
}

void sub_100135D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000039C8(a1, a2, a3);
  sub_100005F80(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_100006700();
  sub_100046184(&qword_10021DA70, &qword_1001A27B0);
  if (sub_10000433C())
  {
    sub_100007C98();
    sub_100006AD8();
    if (!v11)
    {
      goto LABEL_12;
    }

    v6 = v10;
  }

  if (v5)
  {
    *(*(*v4 + 56) + 8 * v6) = v3;
    sub_100007CB4();
  }

  else
  {
    v12 = sub_100011B3C();
    sub_1001410B4(v12, v13, v14, v3, v15);
    sub_100007CB4();
  }
}

_BYTE *storeEnumTagSinglePayload for SQLiteMessageTypeRegistry.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100135F34()
{
  result = qword_10021DA30;
  if (!qword_10021DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DA30);
  }

  return result;
}

uint64_t sub_100135FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_10000DF74();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_1000086B4(v14, v12, v10);
  sub_100005F80(v16, v17);
  if (v20)
  {
    __break(1u);
    goto LABEL_13;
  }

  v21 = v18;
  v22 = v19;
  sub_100046184(v7, v9);
  if (!sub_100008B4C())
  {
    goto LABEL_5;
  }

  v23 = *v8;
  v24 = sub_100005B74(v13, v11);
  if ((v22 & 1) != (v25 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v21 = v24;
LABEL_5:
  v26 = *v8;
  if (v22)
  {
    v27 = *(v26 + 56);
    v28 = *(v27 + 8 * v21);
    *(v27 + 8 * v21) = v15;
    sub_10000AAF4();
  }

  else
  {
    a7(v21, v13, v11, v15, v26);
    sub_10000AAF4();
  }
}

uint64_t sub_1001360EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_100005B74(a4, a5);
  sub_100005F80(v15, v16);
  if (v19)
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = v17;
  v21 = v18;
  sub_100046184(&qword_10021DA50, &qword_1001A2B50);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a6 & 1, v14))
  {
    goto LABEL_5;
  }

  v22 = *v7;
  v23 = sub_100005B74(a4, a5);
  if ((v21 & 1) != (v24 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v20 = v23;
LABEL_5:
  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * v20);
    v27 = *v26;
    v28 = v26[1];
    v29 = v26[2];
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;
  }

  else
  {
    sub_1001410E0(v20, a4, a5, a1, a2, a3, v25);
  }
}

uint64_t sub_1001362D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_10000DF74();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_1000086B4(v15, v13, v11);
  sub_100005F80(v17, v18);
  if (v21)
  {
    __break(1u);
    goto LABEL_13;
  }

  v22 = v19;
  v23 = v20;
  sub_100046184(v8, v10);
  if (sub_100008B4C())
  {
    v24 = *v9;
    v25 = sub_100005B74(v14, v12);
    if ((v23 & 1) == (v26 & 1))
    {
      v22 = v25;
      goto LABEL_5;
    }

LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  v27 = *v9;
  if (v23)
  {
    sub_100007378((*(v27 + 56) + 40 * v22));
    sub_10000AAF4();

    __asm { BRAA            X2, X16 }
  }

  a8(v22, v14, v12, v16, v27);
  sub_10000AAF4();
}

uint64_t sub_1001363FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000086B4(a1, a2, a3);
  sub_100005F80(v8, v9);
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v10;
  v14 = v11;
  sub_100046184(&qword_10021CC80, &qword_1001A1720);
  if (!sub_10000433C())
  {
    goto LABEL_5;
  }

  v15 = *v3;
  v16 = sub_100005B74(a2, a3);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v4;
  if (v14)
  {
    v19 = *(v18 + 56) + 40 * v13;
    v20 = *(v19 + 16);
    *(v19 + 32) = *(a1 + 32);
    v21 = *(a1 + 16);
    *v19 = *a1;
    *(v19 + 16) = v21;
    sub_100007CB4();
  }

  else
  {
    sub_100141198(v13, a2, a3, a1, v18);
    sub_100007CB4();
  }
}

uint64_t sub_10013651C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000039C8(a1, a2, a3);
  sub_100005F80(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_100006700();
  sub_100046184(&qword_10021DA48, &qword_1001A2790);
  if (sub_10000433C())
  {
    sub_100007C98();
    sub_100006AD8();
    if (!v11)
    {
      goto LABEL_14;
    }

    v6 = v10;
  }

  if (v5)
  {
    v12 = *(*v4 + 56);
    v13 = *(v12 + 8 * v6);
    *(v12 + 8 * v6) = v3;
    sub_100007CB4();
  }

  else
  {
    v16 = sub_100011B3C();
    sub_1001410B4(v16, v17, v18, v3, v19);
    sub_100007CB4();
  }
}

uint64_t sub_1001365F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000039C8(a1, a2, a3);
  sub_100005F80(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_100006700();
  sub_100046184(&qword_10021DA68, &qword_1001A27A8);
  if (sub_10000433C())
  {
    sub_100007C98();
    sub_100006AD8();
    if (!v11)
    {
      goto LABEL_14;
    }

    v6 = v10;
  }

  if (v5)
  {
    v12 = *(*v4 + 56);
    v13 = *(v12 + 8 * v6);
    *(v12 + 8 * v6) = v3;
    sub_100007CB4();
  }

  else
  {
    v16 = sub_100011B3C();
    sub_1001410B4(v16, v17, v18, v3, v19);
    sub_100007CB4();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> POneOfFunction.perform(with:arguments:)(SQLiter::SQLiteContext with, Swift::OpaquePointer arguments)
{
  v3 = *(arguments._rawValue + 2);
  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *(arguments._rawValue + 4);
  if (SQLiteArgument.isNull.getter(v6))
  {
    SQLiteContext.setNull()();
    return;
  }

  sub_10011DE10();
  if (!v2)
  {
    SQLiteBaseSchematizer.getSQLiteBridge()();
    v8 = v7;

    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 24))(v6, ObjectType, v8);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    swift_unknownObjectRelease();
    if (v3 != 1)
    {
      v17 = *(arguments._rawValue + 5);
      v18 = SQLiteArgument.getStringNonNull()();
      if (v19)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        sub_100131554(v18._countAndFlagsBits, v18._object, with.context._rawValue, v10, v12, v14, v16);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      return;
    }

LABEL_11:
    __break(1u);
  }
}

void sub_100136860(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, sqlite3_context *a5)
{
  SQLiteContext.setData(_:destructor:)(a1, a2, 1, a5);
  v8._countAndFlagsBits = a3;
  v8._object = a4;
  v9 = SQLiteMessageTypeRegistry.id(forSchemaName:)(v8);
  if (v10)
  {
    v12 = v10;
    v11 = sub_100046184(&qword_100216900, &unk_10019AE20);
    SQLiteContext.setError<A>(_:message:code:)(&v12, 0xD000000000000014, 0x80000001001B2680, -1, a5, v11);
  }

  else
  {

    SQLiteContext.setSubtype(_:)(v9);
  }
}

uint64_t sub_100136934(sqlite3_value *a1)
{
  v4 = SQLiteArgument.subtype.getter(a1);
  sub_100135A54(v4, v12);
  if (!v2)
  {
    v5 = SQLiteArgument.getUnsafeData()(a1);
    if (v6 >> 60 == 15)
    {
      sub_10011DC44();
      swift_allocError();
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 6;
      *(v7 + 24) = 4;
      swift_willThrow();
      sub_100007378(v12);
    }

    else
    {
      v9 = v5;
      v10 = v6;
      type metadata accessor for ProtobufPayload();
      v11 = swift_allocObject();
      sub_10011FEDC(v12, v11 + 16);
      *(v11 + 56) = v9;
      *(v11 + 64) = v10;
      sub_10012A1B8();
    }
  }

  return v1;
}

uint64_t sub_100136A64(sqlite3_value *a1)
{
  result = sub_100136934(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t Dictionary<>.registerAll(on:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = a2 + 64;
  v6 = *(a2 + 64);
  sub_1000062E8(a1, a2);
  v9 = v8 >> 6;
  v21 = v10;

  v12 = 0;
  if (v3)
  {
    while (1)
    {
      v23 = v4;
      v13 = v12;
LABEL_7:
      v14 = (v13 << 10) | (16 * __clz(__rbit64(v3)));
      v15 = (*(v21 + 48) + v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = (*(v21 + 56) + v14);
      v19 = *v18;
      v20 = *(v18[1] + 8);
      v22 = *(*a1 + 152);
      swift_unknownObjectRetain_n();

      v22(v19, v20, v16, v17);
      v4 = v23;
      if (v23)
      {
        break;
      }

      v3 &= v3 - 1;

      result = swift_unknownObjectRelease_n();
      v12 = v13;
      if (!v3)
      {
        goto LABEL_3;
      }
    }

    swift_unknownObjectRelease_n();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
      }

      v3 = *(v7 + 8 * v13);
      ++v12;
      if (v3)
      {
        v23 = v4;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t Dictionary<>.unregisterAll(from:)(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v3 = *(a2 + 64);
  sub_1000062E8(a1, a2);
  v6 = v5 >> 6;

  v8 = 0;
  if (v2)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v2 = *(v4 + 8 * v9);
    ++v8;
    if (v2)
    {
      v8 = v9;
      do
      {
LABEL_6:
        v10 = (*(a2 + 56) + ((v8 << 10) | (16 * __clz(__rbit64(v2)))));
        v11 = *v10;
        v12 = v10[1];
        ObjectType = swift_getObjectType();
        v14 = *(v12 + 32);
        swift_unknownObjectRetain();
        v14(a1, ObjectType, v12);
        v2 &= v2 - 1;
        result = swift_unknownObjectRelease();
      }

      while (v2);
    }
  }
}

uint64_t sub_100136D24()
{
  if ([v0 isAtEnd])
  {
    return 0;
  }

  v2 = [v0 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  NSScanner.currentIndex.getter();
  v1 = String.subscript.getter();

  return v1;
}

uint64_t sub_100136DBC(uint64_t a1, uint64_t a2)
{
  v5 = sub_100136D24();
  v7 = v6;
  if (v6)
  {
    if (v5 == a1 && v6 == a2)
    {
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    v10 = [v2 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    NSScanner.currentIndex.getter();
    v7 = 1;
    String.index(_:offsetBy:)();

    NSScanner.currentIndex.setter();
  }

  return v7;
}

uint64_t sub_100136E94(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_26:
    v18 = 1;
    return v18 & 1;
  }

  v9 = 0;
  v21 = a4 & 0xFFFFFFFFFFFFFFLL;
  v10 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v14 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      v16 = v15;
      goto LABEL_15;
    }

    if ((a4 & 0x2000000000000000) == 0)
    {
      v11 = v10;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v11 = _StringObject.sharedUTF8.getter();
      }

      v12 = (v11 + v9);
      v13 = *(v11 + v9);
      v14 = *(v11 + v9);
      if (v13 < 0)
      {
        switch(__clz(v14 ^ 0xFF))
        {
          case 0x1Au:
            goto LABEL_20;
          case 0x1Bu:
            goto LABEL_21;
          case 0x1Cu:
            goto LABEL_22;
          default:
            break;
        }
      }

LABEL_14:
      v16 = 1;
      goto LABEL_15;
    }

    v20[0] = a3;
    v20[1] = v21;
    v12 = v20 + v9;
    v14 = *(v20 + v9);
    if ((*(v20 + v9) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    switch(__clz(v14 ^ 0xFF))
    {
      case 0x1Au:
LABEL_20:
        v14 = v12[1] & 0x3F | ((v14 & 0x1F) << 6);
        v16 = 2;
        break;
      case 0x1Bu:
LABEL_21:
        v14 = ((v14 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
        v16 = 3;
        break;
      case 0x1Cu:
LABEL_22:
        v14 = ((v14 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
        v16 = 4;
        break;
      default:
        goto LABEL_14;
    }

LABEL_15:
    LODWORD(v20[0]) = v14;
    v17 = a1(v20);
    if (v4)
    {
      return v18 & 1;
    }

    if ((v17 & 1) == 0)
    {
      break;
    }

    v9 += v16;
    if (v9 >= v5)
    {
      goto LABEL_26;
    }
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t static PropertyPathUtil.parse(_:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v73 = type metadata accessor for NSScanner.NumberRepresentation();
  v6 = sub_100003650(v73);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_100004370();
  v72 = v11;
  v12 = type metadata accessor for CharacterSet();
  v13 = sub_100003650(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_100004370();
  v76 = v18;
  v19 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v19 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    sub_100137E0C();
    sub_100004248();
    *v47 = 0u;
    *(v47 + 16) = 0u;
    *(v47 + 32) = 0;
    *(v47 + 40) = 6;
    swift_willThrow();
    return a1;
  }

  sub_100137724();

  v66 = a1;
  v67 = a2;
  v20 = sub_1001376B0();
  [v20 setCharactersToBeSkipped:0];
  v75 = (v15 + 8);
  v70 = (v8 + 8);
  v71 = (v8 + 104);
  a1 = _swiftEmptyArrayStorage;
  v69 = enum case for NSScanner.NumberRepresentation.decimal(_:);
  while (1)
  {
    v78 = a1;
    a1 = NSScanner.currentIndex.getter();
    if (qword_10021BFC8 != -1)
    {
      swift_once();
    }

    sub_10000964C(v12, qword_10021DCF8);
    v21 = NSScanner.scanCharacters(from:)();
    if (!v22)
    {

      sub_100137E0C();
      v48 = sub_100004248();
      sub_10000ACB4(v48, v49);
      *(v50 + 16) = a1;
      *(v50 + 40) = 0;
      goto LABEL_31;
    }

    v23 = v21;
    v24 = v22;
    v25 = String.subscript.getter();
    v27 = v26;
    if (qword_10021BFC0 != -1)
    {
      swift_once();
    }

    v28 = sub_10000964C(v12, qword_10021DCE0);
    __chkstk_darwin(v28);
    *(&v66 - 2) = v29;
    v30 = sub_100136E94(sub_100137E60, (&v66 - 4), v25, v27);

    if ((v30 & 1) == 0)
    {

      sub_100137E0C();
      sub_100004248();
      *v51 = v23;
      *(v51 + 8) = v24;
      v52 = v67;
      *(v51 + 16) = v66;
      *(v51 + 24) = v52;
      *(v51 + 32) = a1;
      v53 = 1;
      goto LABEL_30;
    }

    v77 = sub_100136DBC(91, 0xE100000000000000);
    if ((v77 & 1) == 0)
    {
      v36 = 0;
      a1 = v78;
      goto LABEL_17;
    }

    v74 = v3;
    v31 = v76;
    static CharacterSet.whitespaces.getter();
    NSScanner.scanCharacters(from:)();

    v32 = *v75;
    v33 = v31;
    v34 = v12;
    (*v75)(v33, v12);
    v68 = NSScanner.currentIndex.getter();
    a1 = v72;
    v35 = v73;
    (*v71)(v72, v69, v73);
    v36 = NSScanner.scanInt(representation:)();
    v38 = v37;
    (*v70)(a1, v35);
    if (v38)
    {

      sub_100137E0C();
      v56 = sub_100004248();
      sub_10000ACB4(v56, v57);
      *(v51 + 16) = v68;
      v53 = 2;
      goto LABEL_30;
    }

    if (v36 < 0)
    {

      sub_100137E0C();
      sub_100004248();
      v58 = v66;
      v59 = v67;
      *v51 = v36;
      *(v51 + 8) = v58;
      v60 = v68;
      *(v51 + 16) = v59;
      *(v51 + 24) = v60;
      *(v51 + 32) = 0;
      v53 = 3;
LABEL_30:
      *(v51 + 40) = v53;
LABEL_31:
      swift_willThrow();

      goto LABEL_33;
    }

    v39 = v76;
    static CharacterSet.whitespaces.getter();
    NSScanner.scanCharacters(from:)();

    v12 = v34;
    v32(v39, v34);
    v40 = sub_100136DBC(93, 0xE100000000000000);
    v3 = v74;
    a1 = v78;
    if ((v40 & 1) == 0)
    {
      break;
    }

LABEL_17:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = *(a1 + 16);
      sub_1001235CC();
      a1 = v45;
    }

    v41 = *(a1 + 16);
    if (v41 >= *(a1 + 24) >> 1)
    {
      sub_1001235CC();
      a1 = v46;
    }

    v42 = v77 ^ 1;
    *(a1 + 16) = v41 + 1;
    v43 = a1 + 32 * v41;
    *(v43 + 32) = v23;
    *(v43 + 40) = v24;
    *(v43 + 48) = v36;
    *(v43 + 56) = v42 & 1;
    if ([v20 isAtEnd])
    {
      goto LABEL_33;
    }

    if ((sub_100136DBC(46, 0xE100000000000000) & 1) == 0)
    {

      NSScanner.currentIndex.getter();
      sub_100137E0C();
      v54 = sub_100004248();
      sub_1000086D0(v54, v55);
      v64 = 5;
      goto LABEL_32;
    }
  }

  NSScanner.currentIndex.getter();
  sub_100137E0C();
  v61 = sub_100004248();
  sub_1000086D0(v61, v62);
  v64 = 4;
LABEL_32:
  *(v63 + 40) = v64;
  swift_willThrow();
LABEL_33:

  return a1;
}

id sub_1001376B0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithString:v1];

  return v2;
}

unint64_t sub_100137724()
{
  result = qword_10021DD10;
  if (!qword_10021DD10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10021DD10);
  }

  return result;
}

uint64_t PropertyPathUtil.Error.errorDescription.getter()
{
  v1 = v0;
  sub_100046184(&qword_10021DD20, &qword_1001A2810);
  v26 = String.init<A>(describing:)();
  v27 = v2;
  v3._countAndFlagsBits = 0x203A726F72724520;
  v4 = &v26;
  v3._object = 0xE800000000000000;
  String.append(_:)(v3);
  v6 = v26;
  v5 = v27;
  v8 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  switch(*(v1 + 40))
  {
    case 1:
      v18 = *(v1 + 32);
      sub_100004598();
      _StringGuts.grow(_:)(62);
      v19._countAndFlagsBits = 0xD00000000000003BLL;
      v19._object = 0x80000001001B2B90;
      String.append(_:)(v19);
      v20._countAndFlagsBits = v8;
      v20._object = v7;
      String.append(_:)(v20);
      v4 = &v26;
      v21._countAndFlagsBits = 41;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);
      sub_100137A24(v26, v27, v9, v10, v18, v6);
      sub_100006310();

      goto LABEL_10;
    case 2:
      v13 = 0x20676E697373694DLL;
      v15 = 0xED00007865646E69;
      goto LABEL_9;
    case 3:
      sub_100004598();
      _StringGuts.grow(_:)(35);

      v26 = 0xD000000000000020;
      v27 = 0x80000001001B2B40;
      v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v16);

      v4 = &v26;
      v17._countAndFlagsBits = 41;
      v17._object = 0xE100000000000000;
      String.append(_:)(v17);
      sub_100137A24(v26, v27, v7, v9, v10, v6);
      sub_100006310();

      goto LABEL_10;
    case 4:
      sub_100003D24();
      v13 = v14 | 6;
      goto LABEL_4;
    case 5:
      v15 = 0x80000001001B2B00;
      v13 = 0xD000000000000011;
      goto LABEL_9;
    case 6:
      sub_100004598();
      _StringGuts.grow(_:)(30);

      v26 = v6;
      v27 = v5;
      sub_100003D24();
      v24._countAndFlagsBits = v23 + 11;
      v24._object = (v25 | 0x8000000000000000);
      String.append(_:)(v24);
      return v26;
    default:
      sub_100003D24();
      v13 = v12 | 4;
LABEL_4:
      v15 = (v11 | 0x8000000000000000);
LABEL_9:
      sub_100137A24(v13, v15, v8, v7, v9, v6);
      sub_100006310();
LABEL_10:

      return v4;
  }
}

uint64_t sub_100137A24(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = String.distance(from:to:)();
  v12._countAndFlagsBits = 32;
  v12._object = 0xE100000000000000;
  v19 = String.init(repeating:count:)(v12, v11);

  v13._countAndFlagsBits = 0x6572654820A987E2;
  v13._object = 0xA800000000000000;
  String.append(_:)(v13);

  v14._countAndFlagsBits = a1;
  v14._object = a2;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 10;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  String.append(_:)(v19);

  v16._countAndFlagsBits = 10;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = a3;
  v17._object = a4;
  String.append(_:)(v17);
  return a6;
}

uint64_t sub_100137B4C()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_100057FF8(v8, qword_10021DCE0);
  sub_10000964C(v0, qword_10021DCE0);
  static CharacterSet.letters.getter();
  CharacterSet.init(charactersIn:)();
  CharacterSet.union(_:)();
  v9 = *(v1 + 8);
  v9(v4, v0);
  return (v9)(v7, v0);
}

uint64_t sub_100137C84()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  sub_100057FF8(v8, qword_10021DCF8);
  sub_10000964C(v0, qword_10021DCF8);
  if (qword_10021BFC0 != -1)
  {
    swift_once();
  }

  v9 = sub_10000964C(v0, qword_10021DCE0);
  (*(v1 + 16))(v7, v9, v0);
  static CharacterSet.decimalDigits.getter();
  CharacterSet.union(_:)();
  v10 = *(v1 + 8);
  v10(v4, v0);
  return (v10)(v7, v0);
}

unint64_t sub_100137E0C()
{
  result = qword_10021DD18;
  if (!qword_10021DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DD18);
  }

  return result;
}

__n128 sub_100137E84(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100137E98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_100137ED8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100137F34(uint64_t a1)
{
  if ((*(a1 + 40) & 7u) <= 5)
  {
    return *(a1 + 40) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_100137F50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 41))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 6)
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

uint64_t sub_100137F90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_100137FE0(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 6;
  }

  *(result + 40) = a2;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PGetTimeWindowStartFunction.perform(with:arguments:)(SQLiter::SQLiteContext with, Swift::OpaquePointer arguments)
{
  v3 = sub_10011DE10();
  if (!v2)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = *(v4 + 32);

    SQLiteContext.setDouble(_:)(v5);
  }
}

uint64_t SQLiteSchematizerTableFunction.schematizer.setter()
{
  sub_100006320();
  swift_weakAssign();
}

void (*SQLiteSchematizerTableFunction.schematizer.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_100138220(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_weakLoadStrong();
  return sub_1001381A0;
}

void sub_1001381A0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  swift_weakAssign();
  if (a2)
  {
    v6 = v3[3];

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void *sub_100138220(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t SQLiteSchematizerTableFunction.init(_:)()
{
  swift_weakInit();
  sub_100006320();
  swift_weakAssign();
  v0 = SQLiteVTab.init(style:)(2);

  return v0;
}

uint64_t SQLiteSchematizerTableFunction.deinit()
{
  v0 = SQLiteVTab.deinit();
  swift_weakDestroy();
  return v0;
}

uint64_t SQLiteSchematizerTableFunction.__deallocating_deinit()
{
  v0 = SQLiteSchematizerTableFunction.deinit();

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t SQLiteSchematizerFunction.init(_:)()
{
  swift_weakInit();
  sub_100006340();
  swift_beginAccess();
  swift_weakAssign();

  return SQLiteBaseFunction.init()();
}

void SQLiteSchematizerFunction.hookPerform(_:)(uint64_t a1, uint64_t a2)
{
  v6 = objc_autoreleasePoolPush();
  v7 = sub_10011DE10();
  if (!v3)
  {
    (*(*v7 + 336))(v2, a1, a2);
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t SQLiteSchematizerFunction.schematizer.getter()
{
  sub_100006340();
  swift_beginAccess();
  return swift_weakLoadStrong();
}

uint64_t SQLiteSchematizerFunction.schematizer.setter()
{
  sub_100006340();
  swift_beginAccess();
  swift_weakAssign();
}

void (*SQLiteSchematizerFunction.schematizer.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_100138220(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_weakLoadStrong();
  return sub_100138640;
}

void sub_100138640(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  swift_weakAssign();
  if (a2)
  {
    v6 = v3[3];

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t ProtoSchemaStore.__allocating_init()()
{
  sub_10000ACC8();
  v0 = swift_allocObject();
  ProtoSchemaStore.init()();
  return v0;
}

uint64_t ProtoSchemaStore.__allocating_init(withModel:)(uint64_t a1, uint64_t a2)
{
  sub_10000ACC8();
  v4 = swift_allocObject();
  ProtoSchemaStore.init(withModel:)(a1, a2);
  return v4;
}

uint64_t ProtoSchemaStore.__allocating_init(withURL:)(uint64_t a1)
{
  v3 = type metadata accessor for JSONDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  JSONDecoder.init()();
  v7 = Data.init(contentsOf:options:)();
  if (!v1)
  {
    v11 = v7;
    v12 = v8;
    sub_100138AB8();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100014A40(v11, v12);
    type metadata accessor for ProtoSchemaStore();
    v6 = swift_allocObject();
    ProtoSchemaStore.init(withModel:)(v14, v15);
  }

  v9 = type metadata accessor for URL();
  sub_10000374C(v9);
  (*(v10 + 8))(a1);

  return v6;
}

void *ProtoSchemaStore.init()()
{
  type metadata accessor for ProtoEnum();
  v0[4] = sub_10000F6A4();
  type metadata accessor for ProtoMessageSchema();
  v0[5] = sub_10000F6A4();
  v0[2] = _swiftEmptySetSingleton;
  v0[3] = _swiftEmptySetSingleton;
  v0[6] = sub_10000F6A4();
  v0[7] = sub_10000F6A4();
  return v0;
}

void *ProtoSchemaStore.init(withModel:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ProtoEnum();
  v2[4] = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for ProtoMessageSchema();
  v2[5] = Dictionary.init(dictionaryLiteral:)();

  sub_100138B34(v5);
  v2[2] = v6;

  sub_100138B34(v7);
  v2[3] = v8;
  v2[6] = a2;
  v2[7] = a1;
  return v2;
}

unint64_t sub_100138AB8()
{
  result = qword_10021E018;
  if (!qword_10021E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E018);
  }

  return result;
}

void sub_100138B34(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = 0;
  v16[2] = Set.init(minimumCapacity:)();
  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  sub_100004154();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  if ((v7 & v6) != 0)
  {
    do
    {
      v11 = v3;
LABEL_7:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
      v14 = *v13;
      v15 = v13[1];

      sub_1000936D4(v16, v14, v15);
    }

    while (v8);
  }

  while (1)
  {
    v11 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return;
    }

    v8 = *(a1 + 64 + 8 * v11);
    ++v3;
    if (v8)
    {
      v3 = v11;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void ProtoSchemaStore.enum(withName:)()
{
  sub_10000DF88();
  sub_100004384();
  swift_beginAccess();
  v6 = *(v1 + 32);
  if (*(v6 + 16))
  {

    v7 = sub_100008380();
    v9 = sub_100005B74(v7, v8);
    if (v10)
    {
      v11 = *(*(v6 + 56) + 8 * v9);

      v2[3] = type metadata accessor for ProtoEnum();
      v2[4] = &off_1001FF000;
      *v2 = v11;
      return;
    }
  }

  sub_100004384();
  swift_beginAccess();
  v12 = *(v5 + 48);

  v13 = sub_100008380();
  v14 = sub_1001442CC(v13);

  if (v14)
  {
    v15 = type metadata accessor for ProtoEnum();
    swift_allocObject();

    v16 = sub_100008380();
    sub_10011FEE0(v16, v17, v14);
    if (!v0)
    {
      v19 = v18;
      sub_1000041DC();

      v20 = *(v5 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *(v5 + 32);
      sub_100135FB0(v19, v4, v3, isUniquelyReferenced_nonNull_native);
      *(v5 + 32) = v25;
      swift_endAccess();
      sub_1000041DC();
      v22 = sub_100008380();
      sub_100139B98(v22, v23);
      swift_endAccess();

      v2[3] = v15;
      v2[4] = &off_1001FF000;
      *v2 = v19;
    }
  }

  else
  {
    sub_10011DDBC();
    swift_allocError();
    *v24 = v4;
    *(v24 + 8) = v3;
    *(v24 + 41) = 2;
    swift_willThrow();
  }
}

unint64_t ProtoSchemaStore.description.getter()
{
  _StringGuts.grow(_:)(28);

  sub_100004384();
  swift_beginAccess();
  v3 = *(*(v0 + 40) + 16);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  return 0xD00000000000001ALL;
}

Schematizer::SchemaStoreModel __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProtoSchemaStore.asModel()()
{
  v0 = swift_unknownObjectRetain();
  v1 = SchemaStoreModel.init(_:)(v0, &protocol witness table for ProtoSchemaStore);
  result.enums._rawValue = v2;
  result.schemas._rawValue = v1;
  return result;
}

Schematizer::SchemaStoreModel __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProtoSchemaStore.engagedElementsModel()()
{

  v1 = sub_100138F34(v0);
  result.enums._rawValue = v2;
  result.schemas._rawValue = v1;
  return result;
}

uint64_t sub_100138F34(uint64_t a1)
{
  v2 = v1;
  sub_100004384();
  swift_beginAccess();
  v4 = *(a1 + 40);

  v95 = Dictionary.init(dictionaryLiteral:)();
  v5 = *(v4 + 64);
  v6 = *(v4 + 32);
  sub_100004154();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;

  v12 = 0;
  while (1)
  {
    v13 = v12;
    if (!v9)
    {
      break;
    }

LABEL_6:
    v14 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
    v16 = *v14;
    v15 = v14[1];

    ProtoSchemaStore.messageSchema(withName:)();
    if (v1)
    {

      goto LABEL_48;
    }

    v9 &= v9 - 1;
    sub_100046184(&qword_10021C7C8, &qword_1001A1330);
    type metadata accessor for ProtoMessageSchema();
    if (swift_dynamicCast())
    {

      v18 = sub_1001299EC(v17);
      v99 = v19;
      v96 = v18;
      v98 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v100[0] = v95;
      sub_1001360EC(v96, v98, v99, v16, v15, isUniquelyReferenced_nonNull_native);
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      sub_100004384();
      swift_beginAccess();
      v22 = *(a1 + 32);

      v97 = Dictionary.init(dictionaryLiteral:)();
      v24 = v22 + 64;
      v23 = *(v22 + 64);
      v25 = *(v22 + 32);
      sub_100004154();
      v28 = v27 & v26;
      v30 = (v29 + 63) >> 6;

      v31 = 0;
      v32 = v2;
      v94 = v22;
      v86 = v30;
      v87 = v22 + 64;
      if (v28)
      {
        goto LABEL_15;
      }

LABEL_11:
      while (1)
      {
        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_54;
        }

        if (v33 >= v30)
        {

          return v95;
        }

        v28 = *(v24 + 8 * v33);
        ++v31;
        if (v28)
        {
          v31 = v33;
          while (1)
          {
LABEL_15:
            v88 = v28;
            v89 = v31;
            v34 = (*(v22 + 48) + ((v31 << 10) | (16 * __clz(__rbit64(v28)))));
            v35 = *v34;
            v36 = v34[1];

            v93 = v35;
            ProtoSchemaStore.enum(withName:)();
            if (v32)
            {
            }

            v37 = Dictionary.init(dictionaryLiteral:)();
            v38 = v101;
            v39 = v102;
            sub_100007534(v100, v101);
            v40 = (*(v39 + 16))(v38, v39);
            v90 = *(v40 + 16);
            if (v90)
            {
              break;
            }

LABEL_35:

            sub_100007378(v100);
            v68 = swift_isUniquelyReferenced_nonNull_native();
            v100[0] = v97;
            v69 = sub_100005B74(v93, v36);
            v71 = *(v97 + 16);
            v72 = (v70 & 1) == 0;
            v73 = v71 + v72;
            if (__OFADD__(v71, v72))
            {
              goto LABEL_56;
            }

            v74 = v69;
            v75 = v70;
            sub_100046184(&qword_10021E190, &qword_1001A2B60);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v68, v73))
            {
              v76 = sub_100005B74(v93, v36);
              v32 = 0;
              if ((v75 & 1) != (v77 & 1))
              {
                goto LABEL_58;
              }

              v74 = v76;
            }

            else
            {
              v32 = 0;
            }

            v78 = v100[0];
            v97 = v100[0];
            if (v75)
            {
              v79 = *(v100[0] + 56);
              v80 = *(v79 + 8 * v74);
              *(v79 + 8 * v74) = v37;
            }

            else
            {
              *(v100[0] + 8 * (v74 >> 6) + 64) |= 1 << v74;
              v81 = (v78[6] + 16 * v74);
              *v81 = v93;
              v81[1] = v36;
              *(v78[7] + 8 * v74) = v37;
              v82 = v78[2];
              v65 = __OFADD__(v82, 1);
              v83 = v82 + 1;
              if (v65)
              {
                goto LABEL_57;
              }

              v78[2] = v83;
            }

            v22 = v94;
            v30 = v86;
            v24 = v87;
            v31 = v89;
            v28 = (v88 - 1) & v88;
            if (!v28)
            {
              goto LABEL_11;
            }
          }

          v41 = 0;
          v42 = v40 + 32;
          v92 = v40;
          v85 = v40 + 32;
LABEL_18:
          if (v41 >= *(v40 + 16))
          {
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v43 = (v42 + 8 * v41);
          v45 = *v43;
          v44 = v43[1];
          v91 = v41 + 1;
          while (1)
          {
            if (v45 == v44)
            {
              v46 = 0;
            }

            else
            {
              if (v45 == 0x7FFFFFFF)
              {
                goto LABEL_52;
              }

              v46 = (v45 + 1);
            }

            v47 = v101;
            v48 = v102;
            sub_100007534(v100, v101);
            v49 = (*(v48 + 32))(v45, v47, v48);
            v51 = v50;
            v52 = v44;
            v53 = swift_isUniquelyReferenced_nonNull_native();
            v103 = v37;
            v54 = sub_100005B74(v49, v51);
            v56 = v37[2];
            v57 = (v55 & 1) == 0;
            v58 = v56 + v57;
            if (__OFADD__(v56, v57))
            {
              goto LABEL_51;
            }

            v59 = v54;
            v60 = v55;
            sub_100046184(&unk_1002167A0, &unk_10019AD50);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v53, v58))
            {
              v61 = sub_100005B74(v49, v51);
              if ((v60 & 1) != (v62 & 1))
              {
                goto LABEL_58;
              }

              v59 = v61;
            }

            v44 = v52;
            if (v60)
            {

              v37 = v103;
              *(v103[7] + 4 * v59) = v45;
            }

            else
            {
              v37 = v103;
              v103[(v59 >> 6) + 8] |= 1 << v59;
              v63 = (v37[6] + 16 * v59);
              *v63 = v49;
              v63[1] = v51;
              *(v37[7] + 4 * v59) = v45;
              v64 = v37[2];
              v65 = __OFADD__(v64, 1);
              v66 = v64 + 1;
              if (v65)
              {
                goto LABEL_53;
              }

              v37[2] = v66;
            }

            v67 = v45 == v52;
            v45 = v46;
            if (v67)
            {
              v41 = v91;
              v40 = v92;
              v42 = v85;
              if (v91 != v90)
              {
                goto LABEL_18;
              }

              goto LABEL_35;
            }
          }
        }
      }
    }

    v9 = *(v4 + 64 + 8 * v12);
    ++v13;
    if (v9)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);

LABEL_48:
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProtoSchemaStore.merge(with:)(Schematizer::SchemaStoreModel with)
{
  sub_1000041DC();

  sub_10013A3C4(v2, sub_10013AB3C, 0, (v1 + 48), sub_10013A6BC);
  swift_endAccess();
  sub_1000041DC();

  sub_10013A3C4(v3, sub_10013A970, 0, (v1 + 56), sub_10013A448);
  swift_endAccess();
}

void *ProtoSchemaStore.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  return v0;
}

uint64_t ProtoSchemaStore.__deallocating_deinit()
{
  ProtoSchemaStore.deinit();
  v0 = sub_10000ACC8();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1001398C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_100005B74(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v3;
  v10 = *(*v3 + 24);
  sub_100046184(&qword_10021DA50, &qword_1001A2B50);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v10);
  v11 = *(*(v17 + 48) + 16 * v7 + 8);

  v12 = (*(v17 + 56) + 24 * v7);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  _NativeDictionary._delete(at:)();
  *v3 = v17;
  return v13;
}

unint64_t sub_1001399B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  result = sub_100005B74(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    *v28 = *v4;
    v11 = *(*v4 + 24);
    v12 = sub_100046184(&qword_10021CC80, &qword_1001A1720);
    sub_1000119C0(v12, v13, v14, v15, v16, v17, v18, v19, v27, v28[0]);
    v20 = *(*(*v29 + 48) + 16 * v9 + 8);

    v21 = (*(*v29 + 56) + 40 * v9);
    v22 = *v21;
    v23 = *(v21 + 1);
    v24 = *(v21 + 2);
    v25 = *(v21 + 3);
    v26 = v21[32];
    result = _NativeDictionary._delete(at:)();
    *v4 = *v29;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v25 = 0;
    v26 = 0;
    v24 = 1;
  }

  *a3 = v22;
  *(a3 + 8) = v23;
  *(a3 + 16) = v24;
  *(a3 + 24) = v25;
  *(a3 + 32) = v26;
  return result;
}

double sub_100139ABC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  sub_100005B74(a1, a2);
  if (v7)
  {
    v8 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000081B0();
    v9 = sub_100046184(&qword_10021DA40, &unk_1001A2780);
    v17 = sub_1000119C0(v9, v10, v11, v12, v13, v14, v15, v16, v26, v28);
    sub_100007E00(v17, v18, v19, v20, v21, v22, v23, v24, v27, v29);
    sub_100008B6C();
    sub_100046184(&qword_10021CC68, &qword_1001A1700);
    _NativeDictionary._delete(at:)();
    *v4 = v6;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100139B98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_100005B74(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v3;
  v10 = *(*v3 + 24);
  v11 = sub_100008380();
  sub_100046184(v11, v12);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v10);
  v13 = *(*(v16 + 48) + 16 * v7 + 8);

  v14 = *(*(v16 + 56) + 8 * v7);
  _NativeDictionary._delete(at:)();
  *v3 = v16;
  return v14;
}

double sub_100139C74@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  sub_100005B74(a1, a2);
  if (v7)
  {
    v8 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000081B0();
    v9 = sub_100046184(&qword_10021DA38, &unk_1001A2B40);
    v17 = sub_1000119C0(v9, v10, v11, v12, v13, v14, v15, v16, v26, v28);
    sub_100007E00(v17, v18, v19, v20, v21, v22, v23, v24, v27, v29);
    sub_100008B6C();
    sub_100046184(&qword_10021CC88, &qword_1001A1728);
    _NativeDictionary._delete(at:)();
    *v4 = v6;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100139D34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100046184(&qword_10021E188, &qword_1001A2B58);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v38 = v2;
  v39 = v5;
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
        goto LABEL_36;
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
        v41 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      sub_1000934E4(0, (v37 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v41 = (v13 - 1) & v13;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = v20[1];
    v42 = *v20;
    v22 = (*(v5 + 56) + 24 * v19);
    v23 = *v22;
    v24 = v22[1];
    v25 = v22[2];
    if ((v40 & 1) == 0)
    {
    }

    v26 = *(v8 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v27 = -1 << *(v8 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v8 + 48) + 16 * v30);
    *v35 = v42;
    v35[1] = v21;
    v36 = (*(v8 + 56) + 24 * v30);
    *v36 = v23;
    v36[1] = v24;
    v36[2] = v25;
    ++*(v8 + 16);
    v5 = v39;
    v13 = v41;
    if (!v41)
    {
      goto LABEL_9;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v15 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_10013A018(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100046184(&qword_10021E198, &qword_1001A2B68);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v36 = v3;
  v37 = v5;
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
        goto LABEL_36;
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

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_1000934E4(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
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
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v38 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    *(*(v8 + 56) + 8 * v29) = v23;
    ++*(v8 + 16);
    v5 = v37;
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
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_10013A2BC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10013A308(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a4;
  a1[1] = a5;
  a1[2] = a6;

  return a2;
}

uint64_t sub_10013A378(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;

  return a2;
}

uint64_t sub_10013A3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t *))
{
  v10 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *a4;
  result = a5(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v13);
  *a4 = v13;
  return result;
}

uint64_t sub_10013A448(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  sub_10013A9C0(a1, a2, a3, &v38);

  while (1)
  {
    sub_10013A9FC(&v39);
    v6 = v40;
    if (!v40)
    {
      sub_100019180();
    }

    v7 = v39;
    v8 = v41;
    v9 = v42;
    v10 = v43;
    v11 = *v44;
    v13 = sub_100005B74(v39, v40);
    v14 = *(v11 + 16);
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      break;
    }

    v17 = v12;
    if (*(v11 + 24) >= v16)
    {
      if ((a4 & 1) == 0)
      {
        sub_100046184(&qword_10021DA50, &qword_1001A2B50);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      v18 = v44;
      sub_100139D34(v16, a4 & 1);
      v19 = *v18;
      v20 = sub_100005B74(v7, v6);
      if ((v17 & 1) != (v21 & 1))
      {
        goto LABEL_16;
      }

      v13 = v20;
    }

    v22 = *v44;
    if (v17)
    {
      v23 = 3 * v13;
      v24 = (v22[7] + 8 * v23);
      v25 = v24[1];
      v37 = *v24;
      v26 = v24[2];

      v27 = (v22[7] + 8 * v23);
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];
      *v27 = v37;
      v27[1] = v25;
      v27[2] = v26;

      a4 = 1;
    }

    else
    {
      v22[(v13 >> 6) + 8] |= 1 << v13;
      v31 = (v22[6] + 16 * v13);
      *v31 = v7;
      v31[1] = v6;
      v32 = (v22[7] + 24 * v13);
      *v32 = v8;
      v32[1] = v9;
      v32[2] = v10;
      v33 = v22[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_15;
      }

      v22[2] = v35;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10013A6BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v48 = a5;
  sub_10013A9C0(a1, a2, a3, v47);
  v6 = v47[1];
  v7 = v47[3];
  v8 = v47[4];
  v41 = v47[5];
  v42 = v47[0];
  v9 = (v47[2] + 64) >> 6;

  v39 = v9;
  v40 = v6;
  if (v8)
  {
    while (1)
    {
      v10 = v7;
LABEL_7:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v42 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v42 + 56) + 8 * v12);
      v46[0] = *v13;
      v46[1] = v14;
      v46[2] = v15;

      v41(&v43, v46);

      v17 = v43;
      v16 = v44;
      v18 = v45;
      v19 = *v48;
      v21 = sub_100005B74(v43, v44);
      v22 = *(v19 + 16);
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v25 = v20;
      if (*(v19 + 24) >= v24)
      {
        if ((a4 & 1) == 0)
        {
          sub_100046184(&qword_10021E190, &qword_1001A2B60);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        v26 = v48;
        sub_10013A018(v24, a4 & 1);
        v27 = *v26;
        v28 = sub_100005B74(v17, v16);
        if ((v25 & 1) != (v29 & 1))
        {
          goto LABEL_23;
        }

        v21 = v28;
      }

      v8 &= v8 - 1;
      v30 = *v48;
      if (v25)
      {
        v31 = *(v30[7] + 8 * v21);

        v32 = v30[7];
        v33 = *(v32 + 8 * v21);
        *(v32 + 8 * v21) = v31;
      }

      else
      {
        v30[(v21 >> 6) + 8] |= 1 << v21;
        v34 = (v30[6] + 16 * v21);
        *v34 = v17;
        v34[1] = v16;
        *(v30[7] + 8 * v21) = v18;
        v35 = v30[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_22;
        }

        v30[2] = v37;
      }

      a4 = 1;
      v7 = v10;
      v9 = v39;
      v6 = v40;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_100019180();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

__n128 sub_10013A970@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = sub_10013A308(&v7, *a1, a1[1], a1[2], a1[3], a1[4]);
  v4 = v8;
  result = v7;
  a2->n128_u64[0] = v3;
  a2->n128_u64[1] = v6;
  a2[1] = result;
  a2[2].n128_u64[0] = v4;
  return result;
}

uint64_t sub_10013A9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

uint64_t sub_10013A9FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[3];
  v5 = v1[4];
  if (v5)
  {
    v6 = v1[3];
LABEL_6:
    v7 = __clz(__rbit64(v5)) | (v6 << 6);
    v8 = (*(v3 + 48) + 16 * v7);
    v9 = *v8;
    v10 = v8[1];
    v11 = (*(v3 + 56) + 24 * v7);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v1[3] = v6;
    v1[4] = (v5 - 1) & v5;
    v16 = v1[5];
    v15 = v1[6];
    v24[0] = v9;
    v24[1] = v10;
    v24[2] = v12;
    v24[3] = v13;
    v24[4] = v14;

    v16(&v21, v24);

    v18 = v21;
    v19 = v22;
    v20 = v23;
LABEL_7:
    *a1 = v18;
    *(a1 + 8) = v19;
    *(a1 + 24) = v20;
  }

  else
  {
    while (1)
    {
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v6 >= ((v1[2] + 64) >> 6))
      {
        v18 = 0;
        v1[3] = v4;
        v1[4] = 0;
        v19 = 0uLL;
        v20 = 0uLL;
        goto LABEL_7;
      }

      v5 = *(v1[1] + 8 * v6);
      ++v4;
      if (v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10013AB3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10013A378(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

id static RawPayload.event(with:dataVersion:)()
{
  v2 = objc_allocWithZone(sub_10000634C());
  sub_100014924(v1, v0);
  return RawPayload.init(with:)();
}

uint64_t *RawPayload.schemitized(with:)(uint64_t a1)
{
  v3 = type metadata accessor for ProtobufPayload();
  sub_1000092B4(a1, v17);
  v4 = *(v1 + OBJC_IVAR___SRRawPayload_data);
  v5 = *(v1 + OBJC_IVAR___SRRawPayload_data + 8);
  v6 = v18;
  v7 = v19;
  v8 = sub_100026EEC(v17, v18);
  v9 = *(*(v6 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_100014924(v4, v5);
  v14 = sub_100026F3C(v12, v4, v5, v3, v6, v7);
  sub_100007378(v17);
  sub_10012A1B8();
  return v14;
}

uint64_t sub_10013AE04()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10013AE3C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 40);
  swift_unknownObjectRetain();
  v8(a1, a2, ObjectType, v6);
  return swift_unknownObjectRelease();
}

void sub_10013AEE0(uint64_t a1, uint64_t a2, sqlite3_context *a3)
{
  v6 = sqlite3_malloc(8);
  if (v6)
  {
    v7 = v6;
    type metadata accessor for SQLiteMessagePointerInBlobBridge.Wrapper();
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    *v7 = v8;
    swift_unknownObjectRetain();

    SQLiteContext.setBuffer(_:ofSize:destructor:)(v7, 8, sub_10013AFB8, a3);
  }

  else
  {
    __break(1u);
  }
}

void sub_10013AF74(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;

    sqlite3_free(a1);
  }
}

uint64_t sub_10013AFBC(sqlite3_value *a1)
{
  result = SQLiteArgument.withUnsafeBytes<A>(_:)(sub_10013B1B0, v1, a1);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_10013B014@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v3 = *(*a1 + 16);
    v4 = *(*a1 + 24);
    swift_unknownObjectRetain();
    swift_getObjectType();
    sub_1001318E4();
    *a2 = v5;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
  }

  else
  {
    sub_10011DDBC();
    swift_allocError();
    *v10 = 0xD000000000000031;
    *(v10 + 8) = 0x80000001001B2640;
    *(v10 + 41) = 3;
    return swift_willThrow();
  }
}

uint64_t sub_10013B144()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t sub_10013B184(sqlite3_value *a1)
{
  result = sub_10013AFBC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10013B1CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1000037C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365;
    if (v6 || (sub_1000037C8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x73664F656E6FLL && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1000037C8();

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

uint64_t sub_10013B2BC(char a1)
{
  if (!a1)
  {
    return 0x736E6F6974706FLL;
  }

  if (a1 == 1)
  {
    return 0x69747265706F7270;
  }

  return 0x73664F656E6FLL;
}

uint64_t sub_10013B31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10013B1CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10013B350(uint64_t a1)
{
  v2 = sub_10013B6F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10013B38C(uint64_t a1)
{
  v2 = sub_10013B6F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MessageSchemaModel.properties.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t MessageSchemaModel.oneOfs.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t MessageSchemaModel.init(from:)(uint64_t *a1)
{
  v3 = sub_100046184(&qword_10021E3B0, &unk_1001A2BF0);
  v4 = sub_100003650(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = a1[3];
  sub_100007534(a1, v7);
  sub_10013B6F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007378(a1);
  }

  else
  {
    sub_100046184(&qword_10021CA80, &qword_1001A1658);
    sub_100125700();
    sub_10000635C();
    v7 = v11;
    if (!v11)
    {
      v7 = Dictionary.init(dictionaryLiteral:)();
    }

    sub_100046184(&qword_10021E3C0, &qword_1001A2C00);
    sub_10013B748();
    sub_10000635C();
    if (!v11)
    {
      Dictionary.init(dictionaryLiteral:)();
    }

    sub_100046184(&qword_10021E3D8, &qword_1001A2C08);
    sub_10013B828();
    sub_10000635C();
    if (!v11)
    {
      Dictionary.init(dictionaryLiteral:)();
    }

    v9 = sub_1000045A8();
    v10(v9);
    sub_100007378(a1);
  }

  return v7;
}

unint64_t sub_10013B6F4()
{
  result = qword_10021E3B8;
  if (!qword_10021E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E3B8);
  }

  return result;
}

unint64_t sub_10013B748()
{
  result = qword_10021E3C8;
  if (!qword_10021E3C8)
  {
    sub_1000461CC(&qword_10021E3C0, &qword_1001A2C00);
    sub_10013B7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E3C8);
  }

  return result;
}

unint64_t sub_10013B7D4()
{
  result = qword_10021E3D0;
  if (!qword_10021E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E3D0);
  }

  return result;
}