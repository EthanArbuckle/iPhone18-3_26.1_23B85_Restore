uint64_t sub_225102BC8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_225102BE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_225102BE8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_2250B0DFC(&qword_27D719818, &qword_225447A98);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_2250C75C0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_225102CE8(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2250B0DFC(&qword_27D718E58, &qword_225447A80);
  v10 = *(type metadata accessor for PartialTrafficLog(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for PartialTrafficLog(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_225098BE0(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_225102E9C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2251076A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_225102FC0(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_225102F18(size_t *a1)
{
  v2 = *(type metadata accessor for PartialTrafficLog(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_225107824(v3);
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2251030A0(v6);
  *a1 = v3;
  return result;
}

void sub_225102FC0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_225102528(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_225103804(v8, v9, a1, v5);
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
    sub_2251031D0(0, v3, 1, a1);
  }
}

Swift::Int sub_2251030A0(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PartialTrafficLog(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for PartialTrafficLog(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22510430C(v8, v9, a1, v4);
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
    return sub_22510351C(0, v2, 1, a1);
  }

  return result;
}

void sub_2251031D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v48 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v47 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - v19;
  v41 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v45 = (v18 + 32);
    v46 = v13;
    v22 = (v18 + 8);
    v49 = v21;
    v23 = v21 + 8 * a3 - 8;
    v24 = a1 - a3;
    while (2)
    {
      v43 = v23;
      v44 = a3;
      v25 = *(v49 + 8 * a3);
      v42 = v24;
      v26 = v23;
      do
      {
        v27 = *v26;
        sub_2250F4AA8(v25 + OBJC_IVAR___CKLTrafficLogMessage_requestTime, v13);
        if (sub_22507C8E8(v13, 1, v14) == 1)
        {
          v28 = v25;
          v29 = v27;
          static Date.distantPast.getter();
          v30 = sub_22507C8E8(v13, 1, v14);
          v31 = v48;
          if (v30 != 1)
          {
            sub_2251076BC(v13);
          }
        }

        else
        {
          (*v45)(v20, v13, v14);
          v32 = v25;
          v33 = v27;
          v31 = v48;
        }

        sub_2250F4AA8(v27 + OBJC_IVAR___CKLTrafficLogMessage_requestTime, v31);
        if (sub_22507C8E8(v31, 1, v14) == 1)
        {
          v34 = v47;
          static Date.distantPast.getter();
          if (sub_22507C8E8(v31, 1, v14) != 1)
          {
            sub_2251076BC(v31);
          }
        }

        else
        {
          v34 = v47;
          (*v45)(v47, v31, v14);
        }

        v35 = static Date.< infix(_:_:)();
        v36 = v34;
        v37 = *v22;
        (*v22)(v36, v14);
        v37(v20, v14);

        v13 = v46;
        if ((v35 & 1) == 0)
        {
          break;
        }

        if (!v49)
        {
          __break(1u);
          return;
        }

        v38 = *v26;
        v25 = *(v26 + 8);
        *v26 = v25;
        *(v26 + 8) = v38;
        v26 -= 8;
      }

      while (!__CFADD__(v24++, 1));
      a3 = v44 + 1;
      v23 = v43 + 8;
      v24 = v42 - 1;
      if (v44 + 1 != v41)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_22510351C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for PartialTrafficLog(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v44 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v48 = &v35 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v47 = &v35 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v46 = &v35 - v17;
  result = MEMORY[0x28223BE20](v16);
  v45 = &v35 - v20;
  v37 = a2;
  if (a3 != a2)
  {
    v21 = result;
    v22 = *a4;
    v23 = *(v19 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v42 = -v23;
    v43 = v22;
    v25 = a1 - a3;
    v36 = v23;
    v26 = v22 + v23 * a3;
    v27 = v46;
    while (2)
    {
      v40 = v24;
      v41 = a3;
      v38 = v26;
      v39 = v25;
      do
      {
        v28 = v45;
        sub_22507EE88(v26, v45);
        sub_22507EE88(v24, v27);
        v29 = v47;
        sub_22507EE88(v28, v47);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_2251070D4(v29, type metadata accessor for PartialTrafficLog);
        v30 = v48;
        sub_22507EE88(v27, v48);
        v31 = v21;
        v32 = swift_getEnumCaseMultiPayload();
        sub_2251070D4(v30, type metadata accessor for PartialTrafficLog);
        sub_2251070D4(v27, type metadata accessor for PartialTrafficLog);
        result = sub_2251070D4(v28, type metadata accessor for PartialTrafficLog);
        v33 = EnumCaseMultiPayload >= v32;
        v21 = v31;
        if (v33)
        {
          break;
        }

        if (!v43)
        {
          __break(1u);
          return result;
        }

        v34 = v44;
        sub_225107074(v26, v44, type metadata accessor for PartialTrafficLog);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_225107074(v34, v24, type metadata accessor for PartialTrafficLog);
        v24 += v42;
        v26 += v42;
        v33 = __CFADD__(v25++, 1);
      }

      while (!v33);
      a3 = v41 + 1;
      v24 = v40 + v36;
      v25 = v39 - 1;
      v26 = v38 + v36;
      if (v41 + 1 != v37)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_225103804(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v139 = a1;
  v8 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v135 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v142 = &v135 - v17;
  MEMORY[0x28223BE20](v16);
  v145 = &v135 - v18;
  v19 = type metadata accessor for Date();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v150 = &v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v156 = &v135 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v25);
  v146 = a3;
  v147 = &v135 - v28;
  v29 = a3[1];
  if (v29 < 1)
  {
    v31 = MEMORY[0x277D84F90];
LABEL_113:
    v156 = *v139;
    if (!v156)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_115:
      v128 = (v31 + 16);
      for (i = *(v31 + 2); i >= 2; *v128 = i)
      {
        if (!*v146)
        {
          goto LABEL_153;
        }

        v130 = &v31[16 * i];
        v131 = *v130;
        v132 = &v128[2 * i];
        v133 = v132[1];
        sub_225104E18(&(*v146)[8 * *v130], &(*v146)[8 * *v132], &(*v146)[8 * v133], v156);
        if (v5)
        {
          break;
        }

        if (v133 < v131)
        {
          goto LABEL_141;
        }

        if (i - 2 >= *v128)
        {
          goto LABEL_142;
        }

        *v130 = v131;
        *(v130 + 1) = v133;
        v134 = *v128 - i;
        if (*v128 < i)
        {
          goto LABEL_143;
        }

        i = *v128 - 1;
        memmove(v132, v132 + 2, 16 * v134);
      }

LABEL_123:

      return;
    }

LABEL_150:
    v31 = sub_225105A78(v31);
    goto LABEL_115;
  }

  v136 = a4;
  v30 = 0;
  v152 = (v26 + 8);
  v153 = (v26 + 32);
  v31 = MEMORY[0x277D84F90];
  v154 = v12;
  v155 = v15;
  v141 = v27;
  while (1)
  {
    v32 = v30;
    v33 = v30 + 1;
    if (v33 >= v29)
    {
      v149 = v33;
    }

    else
    {
      v144 = v29;
      v138 = v31;
      v34 = *v146;
      v35 = v32;
      v36 = v33;
      v158 = *&(*v146)[8 * v33];
      v157 = *&v34[8 * v35];
      v37 = v157;
      v38 = v158;
      v31 = v37;
      LODWORD(v143) = sub_2251016F0(&v158, &v157);
      if (v5)
      {

        return;
      }

      v148 = 0;

      v140 = 8 * v35;
      v5 = &v34[8 * v35 + 16];
      v137 = v35;
      v39 = (v35 + 2);
      v40 = v144;
      v41 = v145;
      while (1)
      {
        v42 = v39;
        if (v36 + 1 >= v40)
        {
          break;
        }

        v149 = v36;
        v31 = *(v5 - 8);
        v43 = *v5;
        sub_2250F4AA8(*v5 + OBJC_IVAR___CKLTrafficLogMessage_requestTime, v41);
        if (sub_22507C8E8(v41, 1, v19) == 1)
        {
          v44 = v43;
          v45 = v31;
          static Date.distantPast.getter();
          v46 = sub_22507C8E8(v41, 1, v19);
          v47 = v142;
          if (v46 != 1)
          {
            sub_2251076BC(v145);
          }
        }

        else
        {
          (*v153)(v147, v41, v19);
          v48 = v43;
          v49 = v31;
          v47 = v142;
        }

        sub_2250F4AA8(&v31[OBJC_IVAR___CKLTrafficLogMessage_requestTime], v47);
        v50 = sub_22507C8E8(v47, 1, v19);
        v151 = v42;
        if (v50 == 1)
        {
          v51 = v141;
          static Date.distantPast.getter();
          if (sub_22507C8E8(v47, 1, v19) != 1)
          {
            sub_2251076BC(v47);
          }
        }

        else
        {
          v51 = v141;
          (*v153)(v141, v47, v19);
        }

        v52 = v147;
        v53 = static Date.< infix(_:_:)();
        v54 = *v152;
        (*v152)(v51, v19);
        v54(v52, v19);

        v55 = v143 ^ v53;
        v5 += 8;
        v36 = v149 + 1;
        v42 = v151;
        v39 = v151 + 1;
        v40 = v144;
        v41 = v145;
        if (v55)
        {
          goto LABEL_19;
        }
      }

      v36 = v40;
LABEL_19:
      v149 = v36;
      if (v143)
      {
        if (v36 < v137)
        {
          goto LABEL_149;
        }

        v5 = v148;
        if (v137 >= v36)
        {
          v31 = v138;
          v12 = v154;
          v15 = v155;
          v32 = v137;
        }

        else
        {
          v56 = v40 >= v42 ? v42 : v40;
          v57 = 8 * v56 - 8;
          v58 = v36;
          v59 = v137;
          v31 = v138;
          v12 = v154;
          v15 = v155;
          v32 = v137;
          v60 = v140;
          do
          {
            if (v59 != --v58)
            {
              v61 = *v146;
              if (!*v146)
              {
                goto LABEL_154;
              }

              v62 = *&v61[v60];
              *&v61[v60] = *&v61[v57];
              *&v61[v57] = v62;
            }

            ++v59;
            v57 -= 8;
            v60 += 8;
          }

          while (v59 < v58);
        }
      }

      else
      {
        v5 = v148;
        v32 = v137;
        v31 = v138;
        v12 = v154;
        v15 = v155;
      }
    }

    v63 = v146[1];
    if (v149 < v63)
    {
      if (__OFSUB__(v149, v32))
      {
        goto LABEL_146;
      }

      if (v149 - v32 < v136)
      {
        break;
      }
    }

LABEL_60:
    if (v149 < v32)
    {
      goto LABEL_145;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v148 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = sub_2250C73B4(0, *(v31 + 2) + 1, 1, v31);
    }

    v83 = *(v31 + 2);
    v82 = *(v31 + 3);
    v5 = v83 + 1;
    if (v83 >= v82 >> 1)
    {
      v31 = sub_2250C73B4((v82 > 1), v83 + 1, 1, v31);
    }

    *(v31 + 2) = v5;
    v84 = v31 + 32;
    v85 = &v31[16 * v83 + 32];
    v86 = v149;
    *v85 = v32;
    *(v85 + 1) = v86;
    v151 = *v139;
    if (!v151)
    {
      goto LABEL_155;
    }

    if (v83)
    {
      while (1)
      {
        v87 = v5 - 1;
        v88 = &v84[16 * v5 - 16];
        v89 = &v31[16 * v5];
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v90 = *(v31 + 4);
          v91 = *(v31 + 5);
          v100 = __OFSUB__(v91, v90);
          v92 = v91 - v90;
          v93 = v100;
LABEL_80:
          if (v93)
          {
            goto LABEL_132;
          }

          v105 = *v89;
          v104 = *(v89 + 1);
          v106 = __OFSUB__(v104, v105);
          v107 = v104 - v105;
          v108 = v106;
          if (v106)
          {
            goto LABEL_135;
          }

          v109 = *(v88 + 1);
          v110 = v109 - *v88;
          if (__OFSUB__(v109, *v88))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v107, v110))
          {
            goto LABEL_140;
          }

          if (v107 + v110 >= v92)
          {
            if (v92 < v110)
            {
              v87 = v5 - 2;
            }

            goto LABEL_102;
          }

          goto LABEL_95;
        }

        if (v5 < 2)
        {
          goto LABEL_134;
        }

        v112 = *v89;
        v111 = *(v89 + 1);
        v100 = __OFSUB__(v111, v112);
        v107 = v111 - v112;
        v108 = v100;
LABEL_95:
        if (v108)
        {
          goto LABEL_137;
        }

        v114 = *v88;
        v113 = *(v88 + 1);
        v100 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v100)
        {
          goto LABEL_139;
        }

        if (v115 < v107)
        {
          goto LABEL_109;
        }

LABEL_102:
        if (v87 - 1 >= v5)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
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
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v146)
        {
          goto LABEL_152;
        }

        v119 = v31;
        v31 = &v84[16 * v87 - 16];
        v120 = *v31;
        v121 = v84;
        v5 = v87;
        v122 = &v84[16 * v87];
        v123 = *(v122 + 1);
        v124 = v148;
        sub_225104E18(&(*v146)[8 * *v31], &(*v146)[8 * *v122], &(*v146)[8 * v123], v151);
        if (v124)
        {
          goto LABEL_123;
        }

        if (v123 < v120)
        {
          goto LABEL_127;
        }

        v125 = *(v119 + 2);
        if (v5 > v125)
        {
          goto LABEL_128;
        }

        *v31 = v120;
        *(v31 + 1) = v123;
        if (v5 >= v125)
        {
          goto LABEL_129;
        }

        v126 = v5;
        v148 = 0;
        v5 = v125 - 1;
        memmove(v122, v122 + 16, 16 * (v125 - 1 - v126));
        v31 = v119;
        *(v119 + 2) = v125 - 1;
        v127 = v125 > 2;
        v12 = v154;
        v15 = v155;
        v84 = v121;
        if (!v127)
        {
          goto LABEL_109;
        }
      }

      v94 = &v84[16 * v5];
      v95 = *(v94 - 8);
      v96 = *(v94 - 7);
      v100 = __OFSUB__(v96, v95);
      v97 = v96 - v95;
      if (v100)
      {
        goto LABEL_130;
      }

      v99 = *(v94 - 6);
      v98 = *(v94 - 5);
      v100 = __OFSUB__(v98, v99);
      v92 = v98 - v99;
      v93 = v100;
      if (v100)
      {
        goto LABEL_131;
      }

      v101 = *(v89 + 1);
      v102 = v101 - *v89;
      if (__OFSUB__(v101, *v89))
      {
        goto LABEL_133;
      }

      v100 = __OFADD__(v92, v102);
      v103 = v92 + v102;
      if (v100)
      {
        goto LABEL_136;
      }

      if (v103 >= v97)
      {
        v117 = *v88;
        v116 = *(v88 + 1);
        v100 = __OFSUB__(v116, v117);
        v118 = v116 - v117;
        if (v100)
        {
          goto LABEL_144;
        }

        if (v92 < v118)
        {
          v87 = v5 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_80;
    }

LABEL_109:
    v29 = v146[1];
    v5 = v148;
    v30 = v149;
    if (v149 >= v29)
    {
      goto LABEL_113;
    }
  }

  if (__OFADD__(v32, v136))
  {
    goto LABEL_147;
  }

  if (v32 + v136 >= v63)
  {
    v64 = v146[1];
  }

  else
  {
    v64 = v32 + v136;
  }

  if (v64 < v32)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  if (v149 == v64)
  {
    goto LABEL_60;
  }

  v137 = v32;
  v138 = v31;
  v148 = v5;
  v151 = *v146;
  v65 = v32 - v149;
  v66 = &v151[8 * v149 - 8];
  v67 = v149;
  v140 = v64;
LABEL_43:
  v149 = v67;
  v68 = *&v151[8 * v67];
  v143 = v65;
  v144 = v66;
  while (1)
  {
    v69 = *v66;
    sub_2250F4AA8(v68 + OBJC_IVAR___CKLTrafficLogMessage_requestTime, v15);
    if (sub_22507C8E8(v15, 1, v19) == 1)
    {
      v70 = v68;
      v71 = v69;
      static Date.distantPast.getter();
      if (sub_22507C8E8(v15, 1, v19) != 1)
      {
        sub_2251076BC(v15);
      }
    }

    else
    {
      (*v153)(v156, v15, v19);
      v72 = v68;
      v73 = v69;
    }

    sub_2250F4AA8(v69 + OBJC_IVAR___CKLTrafficLogMessage_requestTime, v12);
    if (sub_22507C8E8(v12, 1, v19) == 1)
    {
      v74 = v150;
      static Date.distantPast.getter();
      if (sub_22507C8E8(v12, 1, v19) != 1)
      {
        sub_2251076BC(v12);
      }
    }

    else
    {
      v74 = v150;
      (*v153)(v150, v12, v19);
    }

    v75 = v156;
    v76 = static Date.< infix(_:_:)();
    v77 = v74;
    v78 = *v152;
    (*v152)(v77, v19);
    v78(v75, v19);

    if ((v76 & 1) == 0)
    {
      v12 = v154;
      v15 = v155;
LABEL_58:
      v67 = v149 + 1;
      v66 = (v144 + 8);
      v65 = v143 - 1;
      if (v149 + 1 == v140)
      {
        v149 = v140;
        v5 = v148;
        v32 = v137;
        v31 = v138;
        goto LABEL_60;
      }

      goto LABEL_43;
    }

    v15 = v155;
    if (!v151)
    {
      break;
    }

    v79 = *v66;
    v68 = *(v66 + 1);
    *v66 = v68;
    *(v66 + 1) = v79;
    v66 -= 8;
    v80 = __CFADD__(v65++, 1);
    v12 = v154;
    if (v80)
    {
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

uint64_t sub_22510430C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v130 = a1;
  v153 = type metadata accessor for PartialTrafficLog(0);
  v142 = *(v153 - 8);
  v7 = *(v142 + 64);
  v8 = MEMORY[0x28223BE20](v153);
  v134 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v148 = &v126 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v152 = &v126 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v151 = &v126 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v150 = &v126 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v149 = &v126 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v140 = &v126 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v139 = &v126 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v138 = &v126 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v137 = &v126 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v126 - v29;
  result = MEMORY[0x28223BE20](v28);
  v33 = &v126 - v32;
  v143 = a3;
  v34 = a3[1];
  if (v34 < 1)
  {
    v36 = MEMORY[0x277D84F90];
LABEL_105:
    v4 = *v130;
    if (!*v130)
    {
      goto LABEL_147;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_107;
    }

    goto LABEL_141;
  }

  v35 = 0;
  v36 = MEMORY[0x277D84F90];
  v129 = a4;
  v126 = &v126 - v32;
  v127 = v30;
  while (1)
  {
    v37 = v35 + 1;
    v131 = v35;
    if (v35 + 1 < v34)
    {
      v146 = v34;
      v128 = v36;
      v38 = *v143;
      v39 = *(v142 + 72);
      v4 = *v143 + v39 * v37;
      sub_22507EE88(v4, v33);
      sub_22507EE88(v38 + v39 * v35, v30);
      v40 = v144;
      LODWORD(v141) = sub_225101A40(v33, v30);
      v144 = v40;
      if (v40)
      {
        sub_2251070D4(v30, type metadata accessor for PartialTrafficLog);
        sub_2251070D4(v33, type metadata accessor for PartialTrafficLog);
      }

      sub_2251070D4(v30, type metadata accessor for PartialTrafficLog);
      result = sub_2251070D4(v33, type metadata accessor for PartialTrafficLog);
      v41 = v35 + 2;
      v42 = v38 + v39 * (v35 + 2);
      v147 = v39;
      v43 = v146;
      while (1)
      {
        v36 = v41;
        v44 = v37 + 1;
        if (v44 >= v43)
        {
          break;
        }

        v45 = v137;
        sub_22507EE88(v42, v137);
        v46 = v138;
        sub_22507EE88(v4, v138);
        v145 = v44;
        v47 = v139;
        sub_22507EE88(v45, v139);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_2251070D4(v47, type metadata accessor for PartialTrafficLog);
        v49 = v140;
        sub_22507EE88(v46, v140);
        LODWORD(v47) = swift_getEnumCaseMultiPayload();
        sub_2251070D4(v49, type metadata accessor for PartialTrafficLog);
        v50 = v46;
        v39 = v147;
        sub_2251070D4(v50, type metadata accessor for PartialTrafficLog);
        result = sub_2251070D4(v45, type metadata accessor for PartialTrafficLog);
        v59 = EnumCaseMultiPayload >= v47;
        v37 = v145;
        v43 = v146;
        v51 = v59;
        v52 = v141 ^ v51;
        v42 += v39;
        v4 += v39;
        v41 = v36 + 1;
        if ((v52 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v37 = v43;
LABEL_13:
      if ((v141 & 1) == 0)
      {
        a4 = v129;
        v35 = v131;
LABEL_34:
        v36 = v128;
        goto LABEL_35;
      }

      v35 = v131;
      a4 = v129;
      if (v37 < v131)
      {
        goto LABEL_140;
      }

      if (v131 >= v37)
      {
        goto LABEL_34;
      }

      if (v43 >= v36)
      {
        v53 = v36;
      }

      else
      {
        v53 = v43;
      }

      v4 = v39 * (v53 - 1);
      v54 = v39 * v53;
      v55 = v131 * v39;
      v56 = v131;
      v57 = v37;
      do
      {
        if (v56 != --v37)
        {
          v58 = *v143;
          if (!*v143)
          {
            goto LABEL_145;
          }

          sub_225107074(v58 + v55, v134, type metadata accessor for PartialTrafficLog);
          v59 = v55 < v4 || v58 + v55 >= (v58 + v54);
          if (v59)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v55 != v4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_225107074(v134, v58 + v4, type metadata accessor for PartialTrafficLog);
          v39 = v147;
        }

        ++v56;
        v4 -= v39;
        v54 -= v39;
        v55 += v39;
      }

      while (v56 < v37);
      v36 = v128;
      v37 = v57;
      v35 = v131;
    }

LABEL_35:
    v60 = v143[1];
    if (v37 < v60)
    {
      if (__OFSUB__(v37, v35))
      {
        goto LABEL_137;
      }

      if (v37 - v35 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v37 < v35)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2250C73B4(0, *(v36 + 16) + 1, 1, v36);
      v36 = result;
    }

    v74 = *(v36 + 16);
    v73 = *(v36 + 24);
    v75 = v74 + 1;
    v145 = v37;
    if (v74 >= v73 >> 1)
    {
      result = sub_2250C73B4((v73 > 1), v74 + 1, 1, v36);
      v36 = result;
    }

    *(v36 + 16) = v75;
    v76 = v36 + 32;
    v77 = (v36 + 32 + 16 * v74);
    v78 = v145;
    *v77 = v131;
    v77[1] = v78;
    if (!*v130)
    {
      goto LABEL_146;
    }

    if (v74)
    {
      v79 = *v130;
      while (1)
      {
        v80 = v75 - 1;
        v81 = (v76 + 16 * (v75 - 1));
        v82 = (v36 + 16 * v75);
        if (v75 >= 4)
        {
          break;
        }

        if (v75 == 3)
        {
          v83 = *(v36 + 32);
          v84 = *(v36 + 40);
          v93 = __OFSUB__(v84, v83);
          v85 = v84 - v83;
          v86 = v93;
LABEL_72:
          if (v86)
          {
            goto LABEL_123;
          }

          v98 = *v82;
          v97 = v82[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_126;
          }

          v102 = v81[1];
          v103 = v102 - *v81;
          if (__OFSUB__(v102, *v81))
          {
            goto LABEL_129;
          }

          if (__OFADD__(v100, v103))
          {
            goto LABEL_131;
          }

          if (v100 + v103 >= v85)
          {
            if (v85 < v103)
            {
              v80 = v75 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v75 < 2)
        {
          goto LABEL_125;
        }

        v105 = *v82;
        v104 = v82[1];
        v93 = __OFSUB__(v104, v105);
        v100 = v104 - v105;
        v101 = v93;
LABEL_87:
        if (v101)
        {
          goto LABEL_128;
        }

        v107 = *v81;
        v106 = v81[1];
        v93 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v93)
        {
          goto LABEL_130;
        }

        if (v108 < v100)
        {
          goto LABEL_101;
        }

LABEL_94:
        if (v80 - 1 >= v75)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v143)
        {
          goto LABEL_143;
        }

        v4 = v36;
        v36 = v76 + 16 * (v80 - 1);
        v112 = *v36;
        v113 = (v76 + 16 * v80);
        v114 = v113[1];
        v115 = v144;
        sub_225105494(*v143 + *(v142 + 72) * *v36, *v143 + *(v142 + 72) * *v113, *v143 + *(v142 + 72) * v114, v79);
        v144 = v115;
        if (v115)
        {
        }

        if (v114 < v112)
        {
          goto LABEL_118;
        }

        v116 = *(v4 + 16);
        if (v80 > v116)
        {
          goto LABEL_119;
        }

        *v36 = v112;
        *(v36 + 8) = v114;
        if (v80 >= v116)
        {
          goto LABEL_120;
        }

        v75 = v116 - 1;
        result = memmove((v76 + 16 * v80), v113 + 2, 16 * (v116 - 1 - v80));
        v36 = v4;
        *(v4 + 16) = v116 - 1;
        if (v116 <= 2)
        {
          goto LABEL_101;
        }
      }

      v87 = v76 + 16 * v75;
      v88 = *(v87 - 64);
      v89 = *(v87 - 56);
      v93 = __OFSUB__(v89, v88);
      v90 = v89 - v88;
      if (v93)
      {
        goto LABEL_121;
      }

      v92 = *(v87 - 48);
      v91 = *(v87 - 40);
      v93 = __OFSUB__(v91, v92);
      v85 = v91 - v92;
      v86 = v93;
      if (v93)
      {
        goto LABEL_122;
      }

      v94 = v82[1];
      v95 = v94 - *v82;
      if (__OFSUB__(v94, *v82))
      {
        goto LABEL_124;
      }

      v93 = __OFADD__(v85, v95);
      v96 = v85 + v95;
      if (v93)
      {
        goto LABEL_127;
      }

      if (v96 >= v90)
      {
        v110 = *v81;
        v109 = v81[1];
        v93 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v93)
        {
          goto LABEL_135;
        }

        if (v85 < v111)
        {
          v80 = v75 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

LABEL_101:
    v34 = v143[1];
    v35 = v145;
    a4 = v129;
    v33 = v126;
    v30 = v127;
    if (v145 >= v34)
    {
      goto LABEL_105;
    }
  }

  v61 = v35 + a4;
  if (__OFADD__(v35, a4))
  {
    goto LABEL_138;
  }

  if (v61 >= v60)
  {
    v61 = v143[1];
  }

  if (v61 < v35)
  {
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    result = sub_225105A78(v36);
    v36 = result;
LABEL_107:
    v117 = v36;
    v119 = *(v36 + 16);
    v36 += 16;
    for (i = v119; i >= 2; *v36 = i)
    {
      if (!*v143)
      {
        goto LABEL_144;
      }

      v120 = (v117 + 16 * i);
      v121 = *v120;
      v122 = (v36 + 16 * i);
      v123 = v122[1];
      v124 = v144;
      sub_225105494(*v143 + *(v142 + 72) * *v120, *v143 + *(v142 + 72) * *v122, *v143 + *(v142 + 72) * v123, v4);
      v144 = v124;
      if (v124)
      {
        break;
      }

      if (v123 < v121)
      {
        goto LABEL_132;
      }

      if (i - 2 >= *v36)
      {
        goto LABEL_133;
      }

      *v120 = v121;
      v120[1] = v123;
      v125 = *v36 - i;
      if (*v36 < i)
      {
        goto LABEL_134;
      }

      i = *v36 - 1;
      result = memmove(v122, v122 + 2, 16 * v125);
    }
  }

  if (v37 == v61)
  {
    goto LABEL_51;
  }

  v128 = v36;
  v62 = *v143;
  v63 = *(v142 + 72);
  v64 = *v143 + v63 * (v37 - 1);
  v146 = -v63;
  v147 = v62;
  v65 = v35 - v37;
  v132 = v63;
  v133 = v61;
  v4 = v62 + v37 * v63;
LABEL_44:
  v145 = v37;
  v135 = v4;
  v136 = v65;
  v141 = v64;
  while (1)
  {
    v66 = v149;
    sub_22507EE88(v4, v149);
    v67 = v150;
    sub_22507EE88(v64, v150);
    v68 = v151;
    sub_22507EE88(v66, v151);
    v69 = swift_getEnumCaseMultiPayload();
    sub_2251070D4(v68, type metadata accessor for PartialTrafficLog);
    v70 = v152;
    sub_22507EE88(v67, v152);
    v71 = swift_getEnumCaseMultiPayload();
    sub_2251070D4(v70, type metadata accessor for PartialTrafficLog);
    sub_2251070D4(v67, type metadata accessor for PartialTrafficLog);
    result = sub_2251070D4(v66, type metadata accessor for PartialTrafficLog);
    if (v69 >= v71)
    {
LABEL_49:
      v37 = v145 + 1;
      v64 = v141 + v132;
      v65 = v136 - 1;
      v4 = v135 + v132;
      if (v145 + 1 == v133)
      {
        v37 = v133;
        v36 = v128;
        v35 = v131;
        goto LABEL_51;
      }

      goto LABEL_44;
    }

    if (!v147)
    {
      break;
    }

    v72 = v148;
    sub_225107074(v4, v148, type metadata accessor for PartialTrafficLog);
    swift_arrayInitWithTakeFrontToBack();
    sub_225107074(v72, v64, type metadata accessor for PartialTrafficLog);
    v64 += v146;
    v4 += v146;
    v59 = __CFADD__(v65++, 1);
    if (v59)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_225104E18(char *a1, char *a2, char *a3, char *a4)
{
  v8 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v78 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v73 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v73 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v73 - v18;
  v20 = type metadata accessor for Date();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v77 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v80 = &v73 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  i = (&v73 - v27);
  MEMORY[0x28223BE20](v26);
  v79 = &v73 - v28;
  v29 = (a2 - a1) / 8;
  v81 = (v30 + 8);
  v82 = (v30 + 32);
  if (v29 >= (a3 - a2) / 8)
  {
    sub_2250C75E0(a2, (a3 - a2) / 8, a4);
    v31 = &a4[8 * ((a3 - a2) / 8)];
    v84 = a4;
    v74 = v14;
    j = a1;
LABEL_22:
    v52 = (a2 - 8);
    v53 = (a3 - 8);
    v79 = a2;
    for (i = (a2 - 8); v31 > a4 && a2 > a1; v52 = i)
    {
      v83 = v53;
      v55 = *(v31 - 1);
      v56 = *v52;
      sub_2250F4AA8(v55 + OBJC_IVAR___CKLTrafficLogMessage_requestTime, v14);
      if (sub_22507C8E8(v14, 1, v20) == 1)
      {
        v57 = v55;
        v58 = v56;
        static Date.distantPast.getter();
        v59 = sub_22507C8E8(v14, 1, v20);
        v61 = v77;
        v60 = v78;
        if (v59 != 1)
        {
          sub_2251076BC(v14);
        }
      }

      else
      {
        (*v82)(v80, v14, v20);
        v62 = v55;
        v63 = v56;
        v61 = v77;
        v60 = v78;
      }

      sub_2250F4AA8(v56 + OBJC_IVAR___CKLTrafficLogMessage_requestTime, v60);
      if (sub_22507C8E8(v60, 1, v20) == 1)
      {
        static Date.distantPast.getter();
        if (sub_22507C8E8(v60, 1, v20) != 1)
        {
          sub_2251076BC(v60);
        }
      }

      else
      {
        (*v82)(v61, v60, v20);
      }

      v64 = v80;
      v65 = static Date.< infix(_:_:)();
      v66 = v61;
      v67 = *v81;
      (*v81)(v66, v20);
      v67(v64, v20);

      if (v65)
      {
        a3 = v83;
        a1 = j;
        v69 = i;
        a2 = i;
        a4 = v84;
        v14 = v74;
        if (v83 + 1 != v79)
        {
          *v83 = *i;
          a2 = v69;
        }

        goto LABEL_22;
      }

      v68 = v83;
      a1 = j;
      a2 = v79;
      if (v31 != (v83 + 1))
      {
        *v83 = *(v31 - 1);
      }

      v53 = v68 - 1;
      v31 -= 8;
      a4 = v84;
      v14 = v74;
    }
  }

  else
  {
    v78 = v17;
    sub_2250C75E0(a1, (a2 - a1) / 8, a4);
    v31 = &a4[8 * v29];
    v80 = v31;
    v83 = a3;
    for (j = v19; a4 < v31 && a2 < a3; v19 = j)
    {
      v33 = *a2;
      v34 = *a4;
      sub_2250F4AA8(*a2 + OBJC_IVAR___CKLTrafficLogMessage_requestTime, v19);
      if (sub_22507C8E8(v19, 1, v20) == 1)
      {
        v35 = v33;
        v36 = v34;
        static Date.distantPast.getter();
        v37 = sub_22507C8E8(v19, 1, v20);
        v38 = v78;
        if (v37 != 1)
        {
          sub_2251076BC(v19);
        }
      }

      else
      {
        (*v82)(v79, v19, v20);
        v39 = v33;
        v40 = v34;
        v38 = v78;
      }

      v41 = a2;
      sub_2250F4AA8(v34 + OBJC_IVAR___CKLTrafficLogMessage_requestTime, v38);
      v42 = sub_22507C8E8(v38, 1, v20);
      v84 = a4;
      v43 = a1;
      if (v42 == 1)
      {
        v44 = i;
        static Date.distantPast.getter();
        if (sub_22507C8E8(v38, 1, v20) != 1)
        {
          sub_2251076BC(v38);
        }
      }

      else
      {
        v44 = i;
        (*v82)(i, v38, v20);
      }

      v45 = v79;
      v46 = static Date.< infix(_:_:)();
      v47 = v44;
      v48 = *v81;
      (*v81)(v47, v20);
      v48(v45, v20);

      if (v46)
      {
        v49 = v41;
        v50 = v43;
        v51 = v43 == v41;
        v41 += 8;
        a4 = v84;
      }

      else
      {
        v49 = v84;
        a4 = v84 + 8;
        v50 = v43;
        v51 = v43 == v84;
      }

      v31 = v80;
      if (!v51)
      {
        *v50 = *v49;
      }

      a1 = v50 + 8;
      a2 = v41;
      a3 = v83;
    }

    a2 = a1;
  }

  v70 = (v31 - a4) / 8;
  if (a2 != a4 || a2 >= &a4[8 * v70])
  {
    memmove(a2, a4, 8 * v70);
  }

  return 1;
}

uint64_t sub_225105494(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v76 = type metadata accessor for PartialTrafficLog(0);
  v8 = *(*(v76 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v76);
  v70 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v68 = &v64 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v67 = &v64 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v66 = &v64 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v74 = &v64 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v73 = &v64 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v72 = &v64 - v22;
  result = MEMORY[0x28223BE20](v21);
  v71 = &v64 - v24;
  v26 = *(v25 + 72);
  if (!v26)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v27 = a2 - a1;
  v28 = a2 - a1 == 0x8000000000000000 && v26 == -1;
  if (v28)
  {
    goto LABEL_61;
  }

  v29 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v26 == -1)
  {
    goto LABEL_62;
  }

  v31 = v27 / v26;
  v79 = a1;
  v78 = a4;
  v32 = v29 / v26;
  if (v27 / v26 >= v29 / v26)
  {
    sub_225098BE0(a2, v29 / v26, a4);
    v46 = a4 + v32 * v26;
    v47 = -v26;
    v48 = v46;
    v75 = a1;
    v71 = -v26;
    v65 = a4;
LABEL_36:
    v49 = a2 + v47;
    v50 = a3;
    v64 = v48;
    v72 = a2 + v47;
    v73 = a2;
    while (1)
    {
      if (v46 <= a4)
      {
        v79 = a2;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v69 = v48;
      v51 = v46 + v47;
      v52 = v66;
      v53 = v50;
      sub_22507EE88(v46 + v47, v66);
      v54 = v49;
      v55 = v67;
      sub_22507EE88(v54, v67);
      v56 = v47;
      v57 = v68;
      sub_22507EE88(v52, v68);
      LODWORD(v74) = swift_getEnumCaseMultiPayload();
      sub_2251070D4(v57, type metadata accessor for PartialTrafficLog);
      v58 = v70;
      sub_22507EE88(v55, v70);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      a3 = v53 + v56;
      sub_2251070D4(v58, type metadata accessor for PartialTrafficLog);
      sub_2251070D4(v55, type metadata accessor for PartialTrafficLog);
      sub_2251070D4(v52, type metadata accessor for PartialTrafficLog);
      if (v74 < EnumCaseMultiPayload)
      {
        v61 = v53 < v73 || a3 >= v73;
        a4 = v65;
        if (v61)
        {
          a2 = v72;
          swift_arrayInitWithTakeFrontToBack();
          v48 = v69;
          a1 = v75;
          v47 = v71;
        }

        else
        {
          v48 = v69;
          v28 = v53 == v73;
          v47 = v71;
          v62 = v72;
          a2 = v72;
          a1 = v75;
          if (!v28)
          {
            v63 = v69;
            swift_arrayInitWithTakeBackToFront();
            a2 = v62;
            v48 = v63;
          }
        }

        goto LABEL_36;
      }

      v60 = v53 < v46 || a3 >= v46;
      a4 = v65;
      a2 = v73;
      if (v60)
      {
        swift_arrayInitWithTakeFrontToBack();
        v50 = a3;
        v46 = v51;
        v48 = v51;
        a1 = v75;
        v47 = v71;
        v49 = v72;
      }

      else
      {
        v48 = v51;
        v28 = v46 == v53;
        v50 = a3;
        v46 = v51;
        a1 = v75;
        v47 = v71;
        v49 = v72;
        if (!v28)
        {
          swift_arrayInitWithTakeBackToFront();
          v50 = a3;
          v46 = v51;
          v48 = v51;
        }
      }
    }

    v79 = a2;
    v48 = v64;
LABEL_58:
    v77 = v48;
  }

  else
  {
    sub_225098BE0(a1, v27 / v26, a4);
    v69 = a3;
    v70 = a4 + v31 * v26;
    v77 = v70;
    while (a4 < v70 && a2 < a3)
    {
      v75 = a1;
      v34 = v26;
      v35 = v71;
      sub_22507EE88(a2, v71);
      v36 = v72;
      sub_22507EE88(a4, v72);
      v37 = v73;
      sub_22507EE88(v35, v73);
      v38 = a4;
      v39 = swift_getEnumCaseMultiPayload();
      v40 = a2;
      sub_2251070D4(v37, type metadata accessor for PartialTrafficLog);
      v41 = v74;
      sub_22507EE88(v36, v74);
      v42 = swift_getEnumCaseMultiPayload();
      sub_2251070D4(v41, type metadata accessor for PartialTrafficLog);
      sub_2251070D4(v36, type metadata accessor for PartialTrafficLog);
      sub_2251070D4(v35, type metadata accessor for PartialTrafficLog);
      v26 = v34;
      if (v39 >= v42)
      {
        a4 = v38 + v34;
        v43 = v75;
        if (v75 < v38 || v75 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v75 != v38)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v78 = v38 + v34;
      }

      else
      {
        a2 += v34;
        v43 = v75;
        v44 = v75 < v40 || v75 >= a2;
        a4 = v38;
        if (v44)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v75 != v40)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      a1 = v43 + v34;
      v79 = a1;
      a3 = v69;
    }
  }

  sub_225105A8C(&v79, &v78, &v77);
  return 1;
}

uint64_t sub_225105A8C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for PartialTrafficLog(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unsigned __int8 *sub_225105B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_2251078B4();

  result = String.init<A>(_:)();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_225106100(result, v7);
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_225106100(uint64_t a1, unint64_t a2)
{
  v2 = sub_22510616C(sub_225106168, 0, a1, a2);
  v6 = sub_2251061A0(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_22510616C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x2821FBFB0](15, v5 | (v4 << 16));
}

uint64_t sub_2251061A0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_2251025D4(v9, 0);
  v12 = sub_225106300(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_225106300(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_225106510(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_225106510(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_225106510(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x22AA62E80](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t *sub_22510658C(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_225106B30(v9, v4, v2);
      MEMORY[0x22AA65DF0](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = (v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_225102B64(0, v4, v5);
  v6 = sub_2251066F0(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_2251066F0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v47 = a1;
  v4 = type metadata accessor for PartialTrafficLog.ResponseMetadata(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v57 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PartialTrafficLog.RequestMetadata(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v56 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PartialTrafficLog(0);
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v44 - v16);
  result = MEMORY[0x28223BE20](v15);
  v20 = &v44 - v19;
  v51 = 0;
  v21 = 0;
  v22 = *(a3 + 64);
  v46 = a3 + 64;
  v23 = 1 << *(a3 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v45 = (v23 + 63) >> 6;
  v49 = a3;
LABEL_4:
  while (v25)
  {
    v26 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
LABEL_11:
    v29 = v26 | (v21 << 6);
    v30 = *(*(a3 + 56) + 8 * v29);
    v31 = *(v30 + 16);
    if (v31)
    {
      v54 = v25;
      v55 = v21;
      v32 = *(a3 + 48);
      v50 = v29;
      v33 = v48;
      v34 = v30 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
      v35 = v30;
      v52 = *(v32 + 16 * v29 + 8);

      v53 = v35;

      v59 = *(v33 + 72);
      while (1)
      {
        sub_22507EE88(v34, v20);
        sub_22507EE88(v20, v14);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
          case 5u:
            v37 = *v14;
            v36 = v14[1];
            sub_22508D128(v14[2], v14[3]);
            break;
          case 2u:
          case 6u:
            v37 = *v14;
            v36 = v14[1];
            break;
          case 3u:
            v39 = type metadata accessor for PartialTrafficLog.ResponseMetadata;
            v58 = type metadata accessor for PartialTrafficLog.ResponseMetadata;
            v40 = v14;
            v41 = v57;
            goto LABEL_19;
          case 4u:
            v37 = *v14;
            v36 = v14[1];
            v38 = v14[4];

            break;
          default:
            v39 = type metadata accessor for PartialTrafficLog.RequestMetadata;
            v58 = type metadata accessor for PartialTrafficLog.RequestMetadata;
            v40 = v14;
            v41 = v56;
LABEL_19:
            sub_225107074(v40, v41, v39);
            v37 = *v41;
            v36 = v41[1];

            sub_2251070D4(v41, v58);
            break;
        }

        *v17 = v37;
        v17[1] = v36;
        swift_storeEnumTagMultiPayload();
        v42 = sub_2250F7D58(v20, v17);
        sub_2251070D4(v17, type metadata accessor for PartialTrafficLog);
        sub_2251070D4(v20, type metadata accessor for PartialTrafficLog);
        if (v42)
        {
          break;
        }

        v34 += v59;
        if (!--v31)
        {

          a3 = v49;
          v25 = v54;
          v21 = v55;
          goto LABEL_4;
        }
      }

      a3 = v49;
      *(v47 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
      v43 = __OFADD__(v51++, 1);
      v25 = v54;
      v21 = v55;
      if (v43)
      {
        __break(1u);
        return sub_225106BA8(v47, v44, v51, a3);
      }
    }
  }

  v27 = v21;
  while (1)
  {
    v21 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v21 >= v45)
    {
      return sub_225106BA8(v47, v44, v51, a3);
    }

    v28 = *(v46 + 8 * v21);
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v25 = (v28 - 1) & v28;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_225106B30(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_2251066F0(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_225106BA8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_2250B0DFC(&qword_27D719810, &qword_225447A88);
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_225106DE4(uint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v4 = MEMORY[0x22AA633A0](a1);
    if (v4)
    {
      v5 = v4;
      v2 = sub_2250C74B4(v4, 0);
      sub_225106E78((v2 + 4), v5, v1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_225106E78(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x22AA633A0](v12);
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_2251025B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for TrafficLogMessage();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_22510712C();
        for (i = 0; i != v7; ++i)
        {
          sub_2250B0DFC(&qword_27D7197E8, &qword_225447A58);
          v9 = sub_225106FDC(v13, i, a3);
          v11 = *v10;
          (v9)(v13, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_225106FDC(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_225102644(a3);
  sub_225102650(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x22AA63250](a2, a3);
  }

  *a1 = v7;
  return sub_225107068;
}

uint64_t sub_225107074(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_225072BF0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2251070D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_225072BF0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_22510712C()
{
  result = qword_27D7197F0;
  if (!qword_27D7197F0)
  {
    sub_2250C7B40(&qword_27D7197E8, &qword_225447A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7197F0);
  }

  return result;
}

uint64_t sub_225107190(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_22510726C(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_22510726C(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_225106510(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = String.UTF8View._foreignDistance(from:to:)();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_225106510(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_225106510(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_2251076BC(uint64_t a1)
{
  v2 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_225107740(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_225107764()
{
  v1 = *(v0 + 24);

  sub_22509877C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2251077B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2250B0DFC(a3, a4);
  sub_225072BF0(v6);
  (*(v7 + 40))(a2, a1);
  return a2;
}

unint64_t sub_225107854()
{
  result = qword_27D719820;
  if (!qword_27D719820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719820);
  }

  return result;
}

uint64_t sub_2251078A8()
{
  v1 = v0[3];
  v2 = v0[4];
  return sub_2250FF71C(v0[2]);
}

unint64_t sub_2251078B4()
{
  result = qword_27D719830;
  if (!qword_27D719830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719830);
  }

  return result;
}

unint64_t sub_22510792C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2250B0DFC(&qword_27D719790, &qword_225443F00);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v9 << 10) | (16 * v10);
    v12 = (*(a1 + 48) + v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(a1 + 56) + v11);
    v25 = *v15;
    v26 = v15[1];

    swift_dynamicCast();
    sub_2250B28C8(&v27, v29);
    sub_2250B28C8(v29, v30);
    sub_2250B28C8(v30, &v28);
    result = sub_22507DF9C(v14, v13);
    v16 = result;
    if (v17)
    {
      v18 = (v2[6] + 16 * result);
      v19 = v18[1];
      *v18 = v14;
      v18[1] = v13;

      v20 = (v2[7] + 32 * v16);
      sub_225073BF0(v20);
      result = sub_2250B28C8(&v28, v20);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = (v2[6] + 16 * result);
      *v21 = v14;
      v21[1] = v13;
      result = sub_2250B28C8(&v28, (v2[7] + 32 * result));
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_20;
      }

      v2[2] = v24;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_225107B78(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

LABEL_8:
    v3 = MEMORY[0x277D84F98];
    if (v2)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  if (!MEMORY[0x22AA63360](a1))
  {
    goto LABEL_8;
  }

LABEL_5:
  sub_2250B0DFC(&qword_27D719890, &qword_2254477F8);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  if (v2)
  {
LABEL_6:
    v4 = __CocoaDictionary.makeIterator()();
    v19 = 0;
    v5 = 0;
    v6 = 0;
    v7 = v4 | 0x8000000000000000;
    goto LABEL_13;
  }

LABEL_9:
  v8 = -1 << *(v1 + 32);
  v5 = ~v8;
  v19 = v1 + 64;
  v9 = -v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v6 = v10 & *(v1 + 64);
  v7 = v1;
LABEL_13:
  v11 = (v5 + 64) >> 6;

  if ((v7 & 0x8000000000000000) != 0)
  {
    if (!__CocoaDictionary.Iterator.next()())
    {
      goto LABEL_24;
    }

    sub_2250C7F8C(0, &qword_27D719888, 0x277CCACA8);
    swift_dynamicCast();
    swift_dynamicCast();
    if (!v20)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v13 = v6;
    v14 = 0;
    if (!v6)
    {
      v15 = 0;
      while (1)
      {
        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v14 >= v11)
        {
          goto LABEL_24;
        }

        v13 = *(v19 + 8 * v14);
        ++v15;
        if (v13)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      __break(1u);
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v13)));
    v17 = *(*(v7 + 56) + v16);
    v18 = *(*(v7 + 48) + v16);
    v17;
    if (!v18)
    {
LABEL_24:
      sub_225109328();

      return v3;
    }
  }

  result = static String._forceBridgeFromObjectiveC(_:result:)();
LABEL_26:
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_2251081C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_2250C853C(v4 + v8, a4, a2, a3);
}

uint64_t sub_225108320(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_2250C7ACC(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_2251083AC()
{
  v1 = *(v0 + OBJC_IVAR___CKDTrafficMetadata_method);
  v2 = *(v0 + OBJC_IVAR___CKDTrafficMetadata_method + 8);

  return sub_225075280();
}

uint64_t sub_2251083FC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___CKDTrafficMetadata_method);
  v4 = *(v2 + OBJC_IVAR___CKDTrafficMetadata_method + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_225072E64();
}

uint64_t sub_22510857C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___CKDTrafficMetadata_headers);
  *(v1 + OBJC_IVAR___CKDTrafficMetadata_headers) = a1;
  return sub_225072E64();
}

id sub_2251085A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  if (v4)
  {
    v5 = MEMORY[0x22AA62D80](v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_225108604()
{
  v1 = *(v0 + OBJC_IVAR___CKDTrafficMetadata_requestClassName);
  v2 = *(v0 + OBJC_IVAR___CKDTrafficMetadata_requestClassName + 8);

  return sub_225075280();
}

void sub_225108654(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_2251086DC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___CKDTrafficMetadata_requestClassName);
  v4 = *(v2 + OBJC_IVAR___CKDTrafficMetadata_requestClassName + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_225072E64();
}

id sub_225108764()
{
  type metadata accessor for Date();
  sub_225072CF8();
  sub_22507C8C0(v1, v2, v3, v4);
  type metadata accessor for URL();
  sub_225072CF8();
  sub_22507C8C0(v5, v6, v7, v8);
  v9 = &v0[OBJC_IVAR___CKDTrafficMetadata_method];
  *v9 = 0;
  v9[1] = 0;
  *&v0[OBJC_IVAR___CKDTrafficMetadata_status] = 0;
  *&v0[OBJC_IVAR___CKDTrafficMetadata_headers] = 0;
  v10 = &v0[OBJC_IVAR___CKDTrafficMetadata_requestClassName];
  *v10 = 0;
  v10[1] = 0;
  v0[OBJC_IVAR___CKDTrafficMetadata_parsingStandaloneMessage] = 0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for TrafficMetadata();
  return objc_msgSendSuper2(&v12, sel_init);
}

void sub_225108854(void *a1)
{
  v2 = v1;
  v4 = sub_2250B0DFC(&qword_27D7197B8, &unk_225447A60);
  sub_22507CD44(v4);
  v6 = *(v5 + 64);
  sub_22507CA80();
  MEMORY[0x28223BE20](v7);
  v9 = &v39[-v8];
  v10 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  sub_22507CD44(v10);
  v12 = *(v11 + 64);
  sub_22507CA80();
  MEMORY[0x28223BE20](v13);
  v15 = &v39[-v14];
  v16 = OBJC_IVAR___CKDTrafficMetadata_timestamp;
  swift_beginAccess();
  sub_2250C853C(v2 + v16, v15, &unk_27D719260, &unk_225445B40);
  v17 = type metadata accessor for Date();
  isa = 0;
  if (sub_22507C8E8(v15, 1, v17) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v17 - 8) + 8))(v15, v17);
  }

  v19 = MEMORY[0x22AA62D80](116, 0xE100000000000000);
  [a1 encodeObject:isa forKey:v19];
  swift_unknownObjectRelease();

  v20 = OBJC_IVAR___CKDTrafficMetadata_url;
  swift_beginAccess();
  sub_2250C853C(v2 + v20, v9, &qword_27D7197B8, &unk_225447A60);
  v21 = type metadata accessor for URL();
  if (sub_22507C8E8(v9, 1, v21) != 1)
  {
    URL._bridgeToObjectiveC()(v22);
    (*(*(v21 - 8) + 8))(v9, v21);
  }

  v23 = MEMORY[0x22AA62D80](117, 0xE100000000000000);
  sub_22507CE4C(v23);
  swift_unknownObjectRelease();

  v24 = *(v2 + OBJC_IVAR___CKDTrafficMetadata_method + 8);
  if (v24)
  {
    v25 = *(v2 + OBJC_IVAR___CKDTrafficMetadata_method);
    v26 = *(v2 + OBJC_IVAR___CKDTrafficMetadata_method + 8);

    MEMORY[0x22AA62D80](v25, v24);
  }

  v27 = MEMORY[0x22AA62D80](109, 0xE100000000000000);
  sub_22507CE4C(v27);
  swift_unknownObjectRelease();

  v28 = *(v2 + OBJC_IVAR___CKDTrafficMetadata_status);
  v29 = MEMORY[0x22AA62D80](115, 0xE100000000000000);
  [a1 encodeInteger:v28 forKey:v29];

  v30 = *(v2 + OBJC_IVAR___CKDTrafficMetadata_headers);
  if (v30)
  {
    v31 = *(v2 + OBJC_IVAR___CKDTrafficMetadata_headers);

    Dictionary._bridgeToObjectiveC()();
  }

  v32 = MEMORY[0x22AA62D80](104, 0xE100000000000000);
  sub_22507CE4C(v32);
  swift_unknownObjectRelease();

  v33 = *(v2 + OBJC_IVAR___CKDTrafficMetadata_requestClassName + 8);
  if (v33)
  {
    v34 = *(v2 + OBJC_IVAR___CKDTrafficMetadata_requestClassName);
    v35 = *(v2 + OBJC_IVAR___CKDTrafficMetadata_requestClassName + 8);

    MEMORY[0x22AA62D80](v34, v33);
  }

  v36 = MEMORY[0x22AA62D80](114, 0xE100000000000000);
  sub_22507CE4C(v36);
  swift_unknownObjectRelease();

  v37 = *(v2 + OBJC_IVAR___CKDTrafficMetadata_parsingStandaloneMessage);
  v38 = MEMORY[0x22AA62D80](112, 0xE100000000000000);
  [a1 encodeBool:v37 forKey:v38];
}

id sub_225108C94(void *a1)
{
  v2 = v1;
  v4 = sub_2250B0DFC(&qword_27D7197B8, &unk_225447A60);
  sub_22507CD44(v4);
  v6 = *(v5 + 64);
  sub_22507CA80();
  MEMORY[0x28223BE20](v7);
  v9 = &v57 - v8;
  v10 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  sub_22507CD44(v10);
  v12 = *(v11 + 64);
  sub_22507CA80();
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - v14;
  v16 = OBJC_IVAR___CKDTrafficMetadata_timestamp;
  v17 = type metadata accessor for Date();
  v18 = 1;
  sub_225072CF8();
  sub_22507C8C0(v19, v20, v21, v17);
  v22 = OBJC_IVAR___CKDTrafficMetadata_url;
  type metadata accessor for URL();
  sub_225072CF8();
  v57 = v23;
  sub_22507C8C0(v24, v25, v26, v23);
  v27 = &v2[OBJC_IVAR___CKDTrafficMetadata_method];
  *v27 = 0;
  v27[1] = 0;
  v58 = OBJC_IVAR___CKDTrafficMetadata_status;
  *&v2[OBJC_IVAR___CKDTrafficMetadata_status] = 0;
  v59 = OBJC_IVAR___CKDTrafficMetadata_headers;
  *&v2[OBJC_IVAR___CKDTrafficMetadata_headers] = 0;
  v28 = &v2[OBJC_IVAR___CKDTrafficMetadata_requestClassName];
  *v28 = 0;
  v28[1] = 0;
  v60 = v28;
  v61 = OBJC_IVAR___CKDTrafficMetadata_parsingStandaloneMessage;
  v2[OBJC_IVAR___CKDTrafficMetadata_parsingStandaloneMessage] = 0;
  sub_2250C7F8C(0, &qword_27D719878, 0x277CBEAA8);
  v29 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v29)
  {
    v30 = v29;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = 0;
  }

  v31 = 1;
  sub_22507C8C0(v15, v18, 1, v17);
  swift_beginAccess();
  sub_2250C7ACC(v15, &v2[v16], &unk_27D719260, &unk_225445B40);
  swift_endAccess();
  sub_2250C7F8C(0, &qword_27D719880, 0x277CBEBC0);
  v32 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v32)
  {
    v33 = v32;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = 0;
  }

  sub_22507C8C0(v9, v31, 1, v57);
  swift_beginAccess();
  sub_2250C7ACC(v9, &v2[v22], &qword_27D7197B8, &unk_225447A60);
  swift_endAccess();
  sub_2250C7F8C(0, &qword_27D719888, 0x277CCACA8);
  v34 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v34)
  {
    v35 = v34;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v39 = v27[1];
  *v27 = v36;
  v27[1] = v38;

  v40 = MEMORY[0x22AA62D80](115, 0xE100000000000000);
  v41 = [a1 decodeIntegerForKey_];

  *&v2[v58] = v41;
  v42 = NSCoder.decodeDictionary<A, B>(withKeyClass:objectClass:forKey:)();
  if (v42)
  {
    v43 = sub_225107B78(v42);
  }

  else
  {
    v43 = 0;
  }

  v44 = *&v2[v59];
  *&v2[v59] = v43;

  v45 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v45)
  {
    v46 = v45;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  v50 = v60;
  v51 = v60[1];
  *v60 = v47;
  v50[1] = v49;

  v52 = MEMORY[0x22AA62D80](112, 0xE100000000000000);
  v53 = [a1 decodeBoolForKey_];

  v2[v61] = v53;
  v54 = type metadata accessor for TrafficMetadata();
  v62.receiver = v2;
  v62.super_class = v54;
  v55 = objc_msgSendSuper2(&v62, sel_init);

  return v55;
}

id sub_2251090CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrafficMetadata();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TrafficMetadata()
{
  result = qword_27D719858;
  if (!qword_27D719858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2251091FC()
{
  sub_2250FEE84(319, &qword_27D7194B8, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2250FEE84(319, &qword_27D719870, MEMORY[0x277CC9260]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_225109330(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27D71F830 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2251093C8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27D71F908;
  v7 = qword_27D71F908;
  if (!qword_27D71F908)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_2251094A8;
    v3[3] = &unk_278545630;
    v3[4] = &v4;
    sub_2251094A8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_225109490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_2251094A8(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v17[0] = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v2 = qword_27D71F830;
  v23 = qword_27D71F830;
  if (!qword_27D71F830)
  {
    v17[1] = MEMORY[0x277D85DD0];
    v17[2] = 3221225472;
    v17[3] = sub_225109330;
    v17[4] = &unk_278545608;
    v18 = &v20;
    v19 = v17;
    v24 = xmmword_2785455D8;
    v25 = *off_2785455E8;
    v26 = 0;
    v21[3] = _sl_dlopen();
    qword_27D71F830 = *(v18[1] + 24);
    v2 = v21[3];
  }

  _Block_object_dispose(&v20, 8);
  if (v2)
  {
    v5 = v17[0];
    if (!v17[0])
    {
      goto LABEL_5;
    }
  }

  else
  {
    a1 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v3, v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "void *CloudKitTestingLibrary(void)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(a1, v12, v11, @"CKTestFrameworkLinking.m", 11, @"%s", v17[0]);

    __break(1u);
  }

  free(v5);
LABEL_5:
  result = objc_getClass("CKTestServerReference");
  *(*(a1[4] + 8) + 24) = result;
  if (!*(*(a1[4] + 8) + 24))
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "Class getCKTestServerReferenceClass(void)_block_invoke");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v13, v16, v15, @"CKTestFrameworkLinking.m", 16, @"Unable to find class %s", "CKTestServerReference");

    __break(1u);
  }

  qword_27D71F908 = *(*(a1[4] + 8) + 24);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2251096DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_225109758()
{
  qword_280D58068 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

void sub_22510A384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22510A39C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_backingAccount(*(a1 + 32), a2, a3);
  v15 = 0;
  v6 = objc_msgSend_iCloudAuthTokenWithError_(v4, v5, &v15);
  v7 = v15;

  if (v6)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v12 = objc_msgSend_backingAccount(*(a1 + 32), v8, v9);
    v14 = 0;
    v11 = objc_msgSend_cloudKitAuthTokenWithError_(v12, v13, &v14);
    v7 = v14;

    if (v11 && !v7)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  else
  {
    v11 = v6;
  }
}

void sub_22510A534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22510A54C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_backingAccount(*(a1 + 32), a2, a3);
  v22 = 0;
  v6 = objc_msgSend_iCloudAuthTokenWithError_(v4, v5, &v22);
  v7 = v22;

  if (v6)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = objc_msgSend_backingAccount(*(a1 + 32), v8, v9);
    v21 = 0;
    v13 = objc_msgSend_cloudKitAuthTokenWithError_(v11, v12, &v21);
    v7 = v21;

    if (v7)
    {
      v16 = objc_msgSend_domain(v7, v14, v15);
      v19 = v16;
      if (v16 == *MEMORY[0x277CBC120])
      {
        v20 = objc_msgSend_code(v7, v17, v18);

        if (v20 == 1004)
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
        }
      }

      else
      {
      }
    }
  }
}

void sub_22510AAA8()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.cloudkit.account.authQueue", v2);
  v1 = qword_280D58070;
  qword_280D58070 = v0;
}

void sub_22510B2D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

uint64_t sub_22510B300(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

void sub_22510B350(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = MEMORY[0x277CBC830];
  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 32);
    v13 = @"un";
    *buf = 138413058;
    v25 = v12;
    v14 = @" Error was ";
    if (a2)
    {
      v13 = &stru_28385ED00;
    }

    v26 = 2114;
    v27 = v13;
    if (v5)
    {
      v15 = v5;
    }

    else
    {
      v14 = &stru_28385ED00;
      v15 = &stru_28385ED00;
    }

    v28 = 2114;
    v29 = v14;
    v30 = 2112;
    v31 = v15;
    _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Credential renewal for account %@ finished %{public}@successfully. %{public}@%@", buf, 0x2Au);
  }

  if (WeakRetained)
  {
    v16 = objc_msgSend_authTokenCallbackQueue(WeakRetained, v10, v11);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22510B5C4;
    block[3] = &unk_2785456F0;
    v22 = *(a1 + 40);
    v23 = a2;
    v21 = v5;
    dispatch_async(v16, block);
  }

  else
  {
    if (*v7 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22506F000, v17, OS_LOG_TYPE_ERROR, "CKDAccount instance is not available to handle token renewal completion.", buf, 2u);
    }

    v18 = *(a1 + 40);
    if (v18)
    {
      (*(v18 + 16))(v18, a2, v5);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22510B5C4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

uint64_t sub_22510B5E8(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

void sub_22510B840(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v7 = a3;
  objc_msgSend_endAuthTokenRenewalForAccountID_(v4, v6, v5);
  (*(a1[6] + 16))();
}

void sub_22510B8B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_22510BA4C;
    v9[3] = &unk_278545768;
    objc_copyWeak(&v12, (a1 + 64));
    v10 = *(a1 + 48);
    v11 = *(a1 + 40);
    objc_msgSend__lockedRenewTokenWithReason_shouldForce_container_tokenFetchBlock_completionHandler_(WeakRetained, v6, v4, v3, v5, v9, *(a1 + 56));

    objc_destroyWeak(&v12);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "CKDAccount disappeared during renew.", v8, 2u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

id sub_22510BA4C(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = MEMORY[0x277CBC880];
  v8 = MEMORY[0x277CBC830];
  if (qword_280D54EA8)
  {
    if (objc_msgSend_count(qword_280D54EA8, v4, v5) >= 0x65)
    {
      if (*v7 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v9 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Clearing failedTokenCache.", &v21, 2u);
      }

      objc_msgSend_removeAllObjects(qword_280D54EA8, v10, v11);
    }
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v13 = qword_280D54EA8;
    qword_280D54EA8 = v12;
  }

  if (*v7 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v14 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
  {
    v16 = *(a1 + 32);
    v21 = 138412290;
    v22 = v16;
    _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Adding auth token: %@ to the failed token cache if non-nil.", &v21, 0xCu);
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    objc_msgSend_addObject_(qword_280D54EA8, v15, v17);
  }

  v18 = objc_msgSend__lockedCloudKitAuthTokenWithContainer_error_(WeakRetained, v15, *(a1 + 40), a2);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void sub_22510BDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22510BDEC(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  v6 = objc_msgSend__lockedCloudKitAuthTokenWithContainer_error_(v3, a2, v4, &obj);
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_22510BF7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 32);
  v17 = 0;
  v5 = objc_msgSend__lockedCloudKitAuthTokenWithContainer_error_(WeakRetained, v4, v3, &v17);
  v6 = v17;

  v9 = objc_msgSend_authTokenCallbackQueue(*(a1 + 40), v7, v8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22510C084;
  v13[3] = &unk_2785457E0;
  v10 = *(a1 + 48);
  v15 = v6;
  v16 = v10;
  v14 = v5;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, v13);
}

void sub_22510C628(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v7 = a3;
  objc_msgSend_endAuthTokenRenewalForAccountID_(v4, v6, v5);
  (*(a1[6] + 16))();
}

void sub_22510C6A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_22510C834;
    v9[3] = &unk_278545768;
    objc_copyWeak(&v12, (a1 + 64));
    v10 = *(a1 + 48);
    v11 = *(a1 + 40);
    objc_msgSend__lockedRenewTokenWithReason_shouldForce_container_tokenFetchBlock_completionHandler_(WeakRetained, v6, v4, v3, v5, v9, *(a1 + 56));

    objc_destroyWeak(&v12);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "CKDAccount disappeared during iCloud auth renew.", v8, 2u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

id sub_22510C834(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  objc_msgSend_setLastFailediCloudAuthToken_(WeakRetained, v5, *(a1 + 32));
  v7 = objc_msgSend__lockediCloudAuthTokenWithContainer_error_(WeakRetained, v6, *(a1 + 40), a2);

  return v7;
}

void sub_22510CA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22510CA64(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  v6 = objc_msgSend__lockediCloudAuthTokenWithContainer_error_(v3, a2, v4, &obj);
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_22510CBF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 32);
  v17 = 0;
  v5 = objc_msgSend__lockediCloudAuthTokenWithContainer_error_(WeakRetained, v4, v3, &v17);
  v6 = v17;

  v9 = objc_msgSend_authTokenCallbackQueue(*(a1 + 40), v7, v8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22510CCFC;
  v13[3] = &unk_2785457E0;
  v10 = *(a1 + 48);
  v15 = v6;
  v16 = v10;
  v14 = v5;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, v13);
}

void sub_22510D0F0(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v16 = 0;
  v4 = objc_msgSend__lockediCloudAuthTokenWithError_(WeakRetained, v3, &v16);
  v5 = v16;

  v8 = objc_msgSend_authTokenCallbackQueue(a1[4], v6, v7);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22510D1F4;
  v12[3] = &unk_2785457E0;
  v9 = a1[5];
  v14 = v5;
  v15 = v9;
  v13 = v4;
  v10 = v5;
  v11 = v4;
  dispatch_async(v8, v12);
}

void sub_22510DDA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_22510DDCC(uint64_t a1, void *a2)
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "Manatee state may have changed. Fetching new state from CoreCDP", v6, 2u);
  }

  return objc_msgSend_handleManateeStatusUpdateNotificationWithAvailability_(a2, v4, 0);
}

void sub_22510DE78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_msgSend_handleWalrusStateChanged(WeakRetained, v2, v3);
    WeakRetained = v4;
  }
}

void sub_22510E288(uint64_t a1, const char *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  isEqualToNumber = objc_msgSend_isEqualToNumber_(*(a1 + 32), a2, &unk_2838C7FF8);
  v5 = *(a1 + 40);
  if (isEqualToNumber)
  {
    objc_msgSend__lockedSetManateeAvailableForLoggedInAccount_(v5, v3, 1);
    objc_msgSend_setLastCDPErrorForManateeStatus_(*(a1 + 40), v6, 0);
  }

  else
  {
    v27 = 0;
    ManateeAvailability = objc_msgSend__fetchManateeAvailability_(v5, v3, &v27);
    v8 = v27;
    objc_msgSend__lockedSetManateeAvailableForLoggedInAccount_(*(a1 + 40), v9, ManateeAvailability);
    objc_msgSend_setLastCDPErrorForManateeStatus_(*(a1 + 40), v10, v8);
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 40);
    v14 = v11;
    if (objc_msgSend_manateeAvailableForLoggedInAccount(v13, v15, v16) == 1)
    {
      v19 = &stru_28385ED00;
    }

    else
    {
      v19 = @" not";
    }

    v22 = objc_msgSend_lastCDPErrorForManateeStatus(*(a1 + 40), v17, v18);
    if (v22)
    {
      v23 = @" Error: ";
    }

    else
    {
      v23 = &stru_28385ED00;
    }

    v24 = objc_msgSend_lastCDPErrorForManateeStatus(*(a1 + 40), v20, v21);
    v25 = v24;
    *buf = 138543874;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = &stru_28385ED00;
    }

    v29 = v19;
    v30 = 2114;
    v31 = v23;
    v32 = 2112;
    v33 = v26;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "CoreCDP is now reporting that manatee is%{public}@ available for the logged in account.%{public}@%@", buf, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_22510EAA0(uint64_t a1, const char *a2, uint64_t a3)
{
  v46 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_manateeAvailableForLoggedInAccount(*(a1 + 32), a2, a3) != -1)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v25 = *(a1 + 32);
      v26 = v6;
      if (objc_msgSend_manateeAvailableForLoggedInAccount(v25, v27, v28) == 1)
      {
        v31 = &stru_28385ED00;
      }

      else
      {
        v31 = @" not";
      }

      v34 = objc_msgSend_lastCDPErrorForManateeStatus(*(a1 + 32), v29, v30);
      if (v34)
      {
        v35 = @"Error: ";
      }

      else
      {
        v35 = &stru_28385ED00;
      }

      v36 = objc_msgSend_lastCDPErrorForManateeStatus(*(a1 + 32), v32, v33);
      v37 = v36;
      *buf = 138543874;
      if (v36)
      {
        v38 = v36;
      }

      else
      {
        v38 = &stru_28385ED00;
      }

      v41 = v31;
      v42 = 2114;
      v43 = v35;
      v44 = 2112;
      v45 = v38;
      _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Returning cached manatee availability originally retrieved from CoreCDP: manatee is%{public}@ available.%{public}@%@", buf, 0x20u);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = objc_msgSend_manateeAvailableForLoggedInAccount(*(a1 + 32), v7, v8) == 1;
      v13 = objc_msgSend_lastCDPErrorForManateeStatus(*(a1 + 32), v11, v12);
      (*(v9 + 16))(v9, v10, v13);
    }

    goto LABEL_19;
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v21 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v4, *MEMORY[0x277CBC120], 1017, @"There is no manatee availability cached but we are not allowed to fetch.");
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v22 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v41 = v21;
      _os_log_error_impl(&dword_22506F000, v22, OS_LOG_TYPE_ERROR, "There is no manatee availability cached but we are not allowed to fetch. Returning error: %@", buf, 0xCu);
    }

    v23 = *(a1 + 40);
    if (v23)
    {
      (*(v23 + 16))(v23, 0, v21);
    }

    goto LABEL_19;
  }

  objc_msgSend__lockedFetchAndUpdateManateeAvailability(*(a1 + 32), v4, v5);
  v16 = *(a1 + 40);
  if (!v16)
  {
LABEL_19:
    v24 = *MEMORY[0x277D85DE8];
    return;
  }

  v17 = objc_msgSend_manateeAvailableForLoggedInAccount(*(a1 + 32), v14, v15) == 1;
  v39 = objc_msgSend_lastCDPErrorForManateeStatus(*(a1 + 32), v18, v19);
  (*(v16 + 16))(v16, v17);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_22510EF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22510EF84(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_22510F494(uint64_t a1, unint64_t a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2 >= 3)
  {
    a2 = 0;
  }

  v6 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = MEMORY[0x277CBC830];
  v8 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = off_278545A20[a2];
    v35 = 138543874;
    v36 = v9;
    if (v5)
    {
      v10 = @" Error: ";
    }

    else
    {
      v10 = &stru_28385ED00;
    }

    if (v5)
    {
      v11 = v5;
    }

    else
    {
      v11 = &stru_28385ED00;
    }

    v37 = 2114;
    v38 = v10;
    v39 = 2112;
    v40 = v11;
    _os_log_impl(&dword_22506F000, v8, OS_LOG_TYPE_INFO, "CoreCDP reports that walrus is %{public}@ for the logged in account.%{public}@%@", &v35, 0x20u);
  }

  v14 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v12, v13);
  if (objc_msgSend_isAppleInternalInstall(v14, v15, v16))
  {
    v19 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v17, v18);
    v22 = objc_msgSend_CDPWalrusOverride(v19, v20, v21);

    if (v22)
    {
      v25 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v23, v24);
      v28 = objc_msgSend_CDPWalrusEnabled(v25, v26, v27);

      if (v28)
      {
        a2 = 1;
      }

      else
      {
        a2 = 2;
      }

      if (*v6 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v29 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
      {
        v30 = @"not enabled";
        if (v28)
        {
          v30 = @"enabled";
        }

        v31 = v30;
        v35 = 138412290;
        v36 = v31;
        v32 = v29;
        _os_log_impl(&dword_22506F000, v32, OS_LOG_TYPE_INFO, "Overriding walrus status from CoreCDP with values from behavior options: %@", &v35, 0xCu);
      }
    }
  }

  else
  {
  }

  v33 = *(a1 + 32);
  if (v33)
  {
    (*(v33 + 16))(v33, a2, v5);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void sub_22510F7DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22510F7F8(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (a2 == 1 && objc_msgSend_cachedWalrusStatusForLoggedInAccount(WeakRetained, v7, v8) != 1)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v10 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v11 = v10;
        v14 = objc_msgSend_cachedWalrusStatusForLoggedInAccount(v9, v12, v13);
        if (v14 > 2)
        {
          v15 = @"unknown";
        }

        else
        {
          v15 = off_278545A20[v14];
        }

        v19 = 138543362;
        v20 = v15;
        _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "CoreCDP reports that walrus is changing from %{public}@ to enabled.", &v19, 0xCu);
      }
    }

    objc_msgSend_setCachedWalrusStatusForLoggedInAccount_(v9, v7, a2);
    objc_msgSend_setLastCDPErrorForWalrusStatus_(v9, v16, v5);
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    (*(v17 + 16))(v17, a2, v5);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_22510FF9C(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = objc_msgSend_delegate(*(a1 + 32), a2, a3);
  v4 = *(a1 + 32);
  v7 = objc_msgSend_accountID(*(a1 + 40), v5, v6);
  objc_msgSend_accountDataSecurityObserver_didUpdateWalrusStatusForAccountID_(v9, v8, v4, v7);
}

void sub_225110238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22511025C(uint64_t a1, uint64_t a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_22511062C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location, char a30)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v31 - 184), 8);
  _Block_object_dispose((v31 - 152), 8);
  objc_sync_exit(v30);
  _Unwind_Resume(a1);
}

void sub_225110688(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (!WeakRetained)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v2, *MEMORY[0x277CBC120], 1000, @"Error checking manatee state");
    v7 = LABEL_10:;
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v6 = *(a1 + 40);
    v4 = *(*(*(a1 + 48) + 8) + 40);
    goto LABEL_11;
  }

  v4 = *(*(*(a1 + 48) + 8) + 40);
  if (!v4 && (*(*(*(a1 + 56) + 8) + 24) & 1) != 0)
  {
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      if (*(a1 + 80))
      {
        v5 = 5014;
      }

      else
      {
        v5 = 2012;
      }
    }

    else
    {
      v5 = 5006;
    }

    if (objc_msgSend_accountType(*(a1 + 32), v2, 0) != 2 || (*MEMORY[0x277CBC810] & 1) != 0 || (*(a1 + 81) & 1) != 0)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 82);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = sub_225110864;
      v16[3] = &unk_278545988;
      v19 = v5;
      v15 = *(a1 + 40);
      v13 = v15;
      v17 = v15;
      v18 = *(a1 + 64);
      objc_msgSend_manateeStatusForAccount_isSecondaryAccount_allowFetch_completionHandler_(WeakRetained, v14, v11, v12, 1, v16);

      goto LABEL_12;
    }

    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v10, *MEMORY[0x277CBC120], v5, @"Manatee is not available for explicit-credential accounts");
    goto LABEL_10;
  }

  v6 = *(a1 + 40);
LABEL_11:
  (*(v6 + 16))(v6, 0, v4);
LABEL_12:
}

void sub_225110864(void *a1, char a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v23 = 138543362;
      v24 = v5;
      _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Manatee not available for the current account. Error: %{public}@.", &v23, 0xCu);
    }

    v11 = objc_msgSend_domain(v5, v9, v10);
    if (objc_msgSend_isEqualToString_(v11, v12, *MEMORY[0x277CFD418]))
    {
      v15 = objc_msgSend_code(v5, v13, v14);

      if (v15 == -5311)
      {
        objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v16, *MEMORY[0x277CBC120], 1013, v5, @"CoreCDP failed to check manatee availability");
        v17 = LABEL_13:;
        v18 = *(a1[5] + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = v17;

        v20 = *(*(a1[6] + 8) + 24);
        v21 = *(*(a1[5] + 8) + 40);
        v7 = *(a1[4] + 16);
        goto LABEL_14;
      }
    }

    else
    {
    }

    objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v16, *MEMORY[0x277CBC120], a1[7], v5, @"Manatee is not available for the current account");
    goto LABEL_13;
  }

  v6 = *(*(a1[6] + 8) + 24);
  v7 = *(a1[4] + 16);
LABEL_14:
  v7();

  v22 = *MEMORY[0x277D85DE8];
}

void sub_225110A48(void *a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    if (a2 == 1)
    {
      *(*(a1[6] + 8) + 24) = 1;
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v6 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v7 = a1[4];
        v8 = v6;
        v11 = objc_msgSend_accountID(v7, v9, v10);
        *buf = 138412290;
        v24 = v11;
        _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Walrus enabled for account with ID %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v18 = a1[4];
      v19 = v12;
      v22 = objc_msgSend_accountID(v18, v20, v21);
      *buf = 138412546;
      v24 = v22;
      v25 = 2112;
      v26 = v5;
      _os_log_error_impl(&dword_22506F000, v19, OS_LOG_TYPE_ERROR, "Walrus cannot be determined for account with ID %@ due to error %@", buf, 0x16u);
    }

    v14 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBC120], 5006, v5, @"Walrus cannot be determined for account due to error %@", v5);
    v15 = *(a1[7] + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  *(*(a1[8] + 8) + 24) |= *(*(a1[6] + 8) + 24);
  (*(a1[5] + 16))();

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t sub_225111178(uint64_t a1, const char *a2)
{
  objc_msgSend__lockedSetManateeAvailableForLoggedInAccount_(*(a1 + 32), a2, -1);
  v4 = *(a1 + 32);

  return objc_msgSend_setLastCDPErrorForManateeStatus_(v4, v3, 0);
}

uint64_t sub_2251113FC()
{
  qword_280D54F80 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

void sub_225111930(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_225111AE0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_invalidateCachedAccountInfo(MEMORY[0x277CBC160], a2, a3);
  v5 = *MEMORY[0x277CBC888];
  v6 = CKNotificationKey();
  v9 = v6;
  if (*(a1 + 32) == 1)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v20) = 0;
      _os_log_debug_impl(&dword_22506F000, v10, OS_LOG_TYPE_DEBUG, "Account change notification while warming up", &v20, 2u);
    }

    v11 = *MEMORY[0x277CBC890];

    v14 = objc_msgSend_UTF8String(v11, v12, v13);
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = sub_2251125F4;
    v23 = &unk_278545AD0;
    v24 = v14;
    if (qword_280D54F88 != -1)
    {
      dispatch_once(&qword_280D54F88, &v20);
    }

    v15 = dword_280D54D68;
    v9 = v11;
  }

  else
  {
    v16 = objc_msgSend_UTF8String(v6, v7, v8);
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = sub_225112604;
    v23 = &unk_278545AD0;
    v24 = v16;
    if (qword_280D54F90 != -1)
    {
      dispatch_once(&qword_280D54F90, &v20);
    }

    v15 = dword_280D54D6C;
  }

  notify_set_state(v15, v4);
  v19 = objc_msgSend_UTF8String(v9, v17, v18, v20, v21, v22, v23, v24);
  notify_post(v19);
}

void sub_225111E98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = v3;
  CKPersonaPerformBlock();
}

uint64_t sub_225111F50(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return (*(*(result + 40) + 16))(*(result + 40), *(result + 32), *(result + 48));
  }

  return result;
}

void sub_225112434(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *(a1 + 32);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v13, v17, 16);
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(a1 + 48);
        v10 = *(a1 + 40);
        (*(*(*(&v13 + 1) + 8 * v8) + 16))(*(*(&v13 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v11, &v13, v17, 16);
    }

    while (v6);
  }

  objc_autoreleasePoolPop(v2);
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t sub_225112614()
{
  qword_280D58080 = objc_alloc_init(CKDAccountStore);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22511295C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = objc_msgSend_accountStore(*(a1 + 32), v3, v4);
    v9 = objc_msgSend_aa_primaryAppleAccount(v6, v7, v8);
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v12 = objc_msgSend_identifier(v5, v3, v4);
  v15 = objc_msgSend_identifier(*(*(*(a1 + 40) + 8) + 40), v13, v14);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v16, v15);

  return isEqualToString;
}

uint64_t sub_225112BA0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_isProvisionedForDataclass_(v3, v4, *MEMORY[0x277CB90D8]))
  {
    v7 = objc_msgSend_personaIdentifier(v3, v5, v6);
    isEqualToString = objc_msgSend_isEqualToString_(v7, v8, *(a1 + 32));
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

id sub_225112C14(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_accountStore(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_aa_appleAccounts(v4, v5, v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_225112CE8;
  v11[3] = &unk_278545B48;
  v12 = *(a1 + 40);
  v9 = objc_msgSend_CKFirstObjectPassingTest_(v7, v8, v11);

  return v9;
}

uint64_t sub_225112CE8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_isProvisionedForDataclass_(v3, v4, *MEMORY[0x277CB90D8]))
  {
    v7 = objc_msgSend_personaIdentifier(v3, v5, v6);
    isEqualToString = objc_msgSend_isEqualToString_(v7, v8, *(a1 + 32));
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

uint64_t sub_225112EE8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_identifier(a2, a2, a3);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, *(a1 + 32));

  return isEqualToString;
}

id sub_225112F2C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_accountStore(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_accountWithIdentifier_(v4, v5, *(a1 + 40));

  return v6;
}

uint64_t sub_225113110(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_aa_altDSID(a2, a2, a3);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, *(a1 + 32));

  return isEqualToString;
}

id sub_225113154(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_accountStore(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_aa_appleAccountWithAltDSID_(v4, v5, *(a1 + 40));

  return v6;
}

uint64_t sub_2251139BC()
{
  qword_280D58090 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

void sub_2251149EC(uint64_t a1, unint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    if (a2 > 2)
    {
      v8 = @"Unknown";
    }

    else
    {
      v8 = off_278545C30[a2];
    }

    *v12 = 138543618;
    *&v12[4] = v8;
    *&v12[12] = 2112;
    *&v12[14] = v5;
    v9 = v6;
    _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Renew result was %{public}@. error=%@", v12, 0x16u);
  }

  if (a2 == 2)
  {
    objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v7, *MEMORY[0x277CBC120], 2011, v5, @"Failed to renew account credential", *v12, *&v12[16], v13);
  }

  else
  {
    if (a2 != 1)
    {
      v10 = 0;
      goto LABEL_14;
    }

    objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v7, *MEMORY[0x277CBC120], 2011, v5, @"User rejected a prompt to enter their iCloud account password", *v12, *&v12[16], v13);
  }
  v10 = ;
LABEL_14:
  (*(*(a1 + 32) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

void sub_225114DE8(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_8:
    v10 = objc_msgSend_objectForKeyedSubscript_(v5, v8, *MEMORY[0x277CEFF78]);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_225114FAC;
    v15[3] = &unk_278545BE8;
    v16 = *(a1 + 48);
    objc_msgSend_validateVettingToken_forAltDSID_completion_(v11, v13, v12, v10, v15);

    goto LABEL_9;
  }

  *buf = 138412546;
  v18 = v6;
  v19 = 2112;
  v20 = v5;
  _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Got vetting auth completion, error: %@, results: %@", buf, 0x16u);
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_5:
  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, 0, v6);
  }

LABEL_9:

  v14 = *MEMORY[0x277D85DE8];
}

void sub_225116534(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (a2)
  {
    v8 = *(a1 + 32);
    v9 = objc_msgSend_appleAccount(*(a1 + 40), v5, v6);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2251166C4;
    v14[3] = &unk_278545BE8;
    v15 = *(a1 + 48);
    objc_msgSend_saveVerifiedAccount_withCompletionHandler_(v8, v10, v9, v14);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v7;
      _os_log_error_impl(&dword_22506F000, v11, OS_LOG_TYPE_ERROR, "Failed to update account properties, error %@", buf, 0xCu);
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      (*(v12 + 16))(v12, 0, v7);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2251166C4(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_error_impl(&dword_22506F000, v6, OS_LOG_TYPE_ERROR, "Failed to save verified account, error %@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_225116BEC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  objc_msgSend_setFetchedProperties_(v3, v4, v2);
  v7 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v5, @"status=$STATUS");
  objc_msgSend_setSearchPredicate_(v3, v6, v7);
}

void sub_225116D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_225116DB4(uint64_t a1, const char *a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v17[0] = @"FILE_SIGNATURE";
  v17[1] = @"STATUS";
  v18[0] = v3;
  v18[1] = &unk_2838C80E8;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v18, v17, 2);
  v6 = objc_msgSend_entriesWithValues_label_setupBlock_(*(a1 + 40), v5, v4, off_27D7199B8, &unk_28385C460);
  v9 = objc_msgSend_nextObject(v6, v7, v8);
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v14 = objc_msgSend_error(v6, v12, v13);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void sub_225116EC0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_setFetchedProperties_(v2, v3, &unk_2838C8CB8);
  v6 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v4, @"fileSignature = $FILE_SIGNATURE AND status = $STATUS");
  objc_msgSend_setSearchPredicate_(v2, v5, v6);
}

void sub_2251174F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v9 = NSStringFromClass(v2);
  v5 = objc_msgSend_UTF8String(v9, v3, v4);
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create(v5, v6);
  v8 = qword_280D54F58;
  qword_280D54F58 = v7;
}

uint64_t sub_22511757C(uint64_t a1, const char *a2, uint64_t a3)
{
  qword_280D54F68 = objc_msgSend_strongToWeakObjectsMapTable(MEMORY[0x277CCAB00], a2, a3);

  return MEMORY[0x2821F96F8]();
}

void sub_225117838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_225117868(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_containerCloudKitDirectory(*(a1 + 32), a2, a3);
  v7 = objc_msgSend__sharedCachesByDirectory(CKDAssetCache, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, v4);
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v14 = *(*(*(a1 + 56) + 8) + 40);
  if (v14)
  {
    goto LABEL_2;
  }

  v17 = [CKDAssetCache alloc];
  v19 = *(a1 + 32);
  v18 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(*(a1 + 64) + 8);
  obj = *(v21 + 40);
  v23 = objc_msgSend__initWithApplicationBundleID_directoryContext_database_error_(v17, v22, v18, v19, v20, &obj);
  objc_storeStrong((v21 + 40), obj);
  v24 = *(*(a1 + 56) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
    v28 = objc_msgSend__sharedCachesByDirectory(CKDAssetCache, v26, v27);
    objc_msgSend_setObject_forKey_(v28, v29, *(*(*(a1 + 56) + 8) + 40), v4);

    v14 = *(*(*(a1 + 56) + 8) + 40);
    if (v14)
    {
LABEL_2:
      v15 = objc_msgSend_checkoutCount(v14, v12, v13);
      objc_msgSend_setCheckoutCount_(v14, v16, v15 + 1);
    }
  }
}

void sub_225117E44(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_setFetchedProperties_(v2, v3, &unk_2838C8CD0);
  v6 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v4, @"volumeIndex=$INDEX AND status!=$UNREGISTERING");
  objc_msgSend_setSearchPredicate_(v2, v5, v6);
}

void sub_225118078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225118090(uint64_t *a1, const char *a2)
{
  v7 = objc_msgSend_volumeUUIDForDeviceID_(CKDVolumeManager, a2, a1[4]);
  v4 = objc_msgSend_volumeIndexForVolumeUUID_(*(a1[5] + 48), v3, v7);
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_225118228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_225118240(uint64_t a1, const char *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 48);
      v16 = v13;
      v17 = NSStringFromSelector(v15);
      v18 = 138412546;
      v19 = v14;
      v20 = 2114;
      v21 = v17;
      _os_log_error_impl(&dword_22506F000, v16, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", &v18, 0x16u);
    }

    __assert_rtn("[CKDAssetCache clearForced:]_block_invoke", "CKDAssetCache.m", 583, "0 && already dropped");
  }

  v5 = objc_msgSend__evictAllFilesForced_(*(a1 + 32), v4, *(a1 + 56));
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v10 = *(a1 + 32);
  v11 = *MEMORY[0x277D85DE8];

  return objc_msgSend_expireAssetHandlesIfNecessary(v10, v8, v9);
}

void sub_2251185A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2251185C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a1;
  v50 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
LABEL_11:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v40 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v41 = *(v3 + 32);
      v42 = *(v3 + 48);
      v43 = v40;
      v44 = NSStringFromSelector(v42);
      *buf = 138412546;
      v47 = v41;
      v48 = 2114;
      v49 = v44;
      _os_log_error_impl(&dword_22506F000, v43, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache clearAssetCache]_block_invoke", "CKDAssetCache.m", 596, "0 && already dropped");
  }

  v4 = [CKDAssetCacheEvictionInfo alloc];
  v6 = objc_msgSend_initWithForced_(v4, v5, 1);
  objc_msgSend_setClearRegisteredItems_(v6, v7, 1);
  v9 = objc_msgSend__evictWithEvictionInfo_(*(v3 + 32), v8, v6);
  v10 = *(*(v3 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  objc_msgSend_unregisterItemIDsAndDeleteAssetHandlesWithEvictionInfo_(*(v3 + 32), v12, v6);
  objc_msgSend_expireAssetHandlesIfNecessary(*(v3 + 32), v13, v14);
  v17 = objc_msgSend_fileDownloadPath(*(v3 + 32), v15, v16);
  v20 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v18, v19);
  v45 = 0;
  v22 = objc_msgSend_removeItemAtPath_error_(v20, v21, v17, &v45);
  v23 = v45;
  if ((v22 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v24 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v47 = v23;
      _os_log_error_impl(&dword_22506F000, v24, OS_LOG_TYPE_ERROR, "Failed to remove download directory while clearning cache: %{public}@", buf, 0xCu);
    }
  }

  CKCreateDirectoryAtPath();
  buf[0] = 0;
  if (!objc_msgSend_fileExistsAtPath_isDirectory_(v20, v25, v17, buf) || (buf[0] & 1) == 0)
  {
    v29 = objc_msgSend_currentHandler(MEMORY[0x277CBC6B8], v26, v27);
    v30 = objc_alloc(MEMORY[0x277CBC6B0]);
    v31 = objc_alloc(MEMORY[0x277CBC6C8]);
    v33 = objc_msgSend_initWithFilePath_lineNumber_(v31, v32, @"/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/Assets/Cache/CKDAssetCache.m", 611);
    v3 = objc_msgSend_initWithSourceCodeLocation_format_(v30, v34, v33, @"No download directory after clearing cache");
    objc_msgSend_handleSignificantIssue_actions_(v29, v35, v3, 0);

    v37 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v36, @"No download directory after clearing cache");
    objc_msgSend_UTF8String(v37, v38, v39);
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_225118BB0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a1;
  v65 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v44 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v45 = *(a1 + 32);
      v46 = *(a1 + 48);
      v47 = v44;
      v48 = NSStringFromSelector(v46);
      *buf = 138412546;
      v59 = v45;
      v60 = 2114;
      v61 = v48;
      _os_log_error_impl(&dword_22506F000, v47, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache checkAssetHandlesForRegisteredMMCSItems:]_block_invoke", "CKDAssetCache.m", 627, "0 && already dropped");
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v4 = *(v3 + 40);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v54, v64, 16);
  if (v6)
  {
    v7 = v6;
    v8 = *v55;
    v52 = v4;
    do
    {
      v9 = 0;
      do
      {
        if (*v55 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v54 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v14 = objc_msgSend_error(v10, v12, v13);

        if (!v14)
        {
          v17 = MEMORY[0x277CCABB0];
          v18 = objc_msgSend_itemID(v10, v15, v16);
          v20 = objc_msgSend_numberWithUnsignedLongLong_(v17, v19, v18);
          v21 = *(*(v3 + 32) + 40);
          v53 = 0;
          v23 = objc_msgSend_entryWithPrimaryKey_fetchProperties_label_error_(v21, v22, v20, &unk_2838C8CE8, off_27D7199D0, &v53);
          v24 = v53;
          v25 = v24;
          if (v23)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v26 = *MEMORY[0x277CBC828];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              v31 = objc_msgSend_signature(v10, v27, v28);
              if (v31)
              {
                v51 = objc_msgSend_signature(v10, v29, v30);
                v50 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v51, v32, v33);
                v34 = v50;
              }

              else
              {
                v34 = @"none";
              }

              *buf = 138543874;
              v59 = v20;
              v60 = 2114;
              v61 = v34;
              v62 = 2114;
              v63 = @"cachedAndRegistered";
              _os_log_impl(&dword_22506F000, v26, OS_LOG_TYPE_INFO, "%{public}@, %{public}@, %{public}@", buf, 0x20u);
              if (v31)
              {
              }

              v3 = a1;
            }

            v4 = v52;
          }

          else
          {
            v35 = *MEMORY[0x277CBC878];
            v36 = *MEMORY[0x277CBC880];
            if (v24)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], v35);
              }

              v37 = *MEMORY[0x277CBC828];
              if (!os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
              {
                goto LABEL_29;
              }

              *buf = 138543618;
              v59 = v20;
              v60 = 2114;
              v61 = v25;
              v38 = v37;
              v39 = "%{public}@ db error: %{public}@";
              v40 = 22;
            }

            else
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], v35);
              }

              v41 = *MEMORY[0x277CBC828];
              if (!os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
              {
                goto LABEL_29;
              }

              *buf = 138543362;
              v59 = v20;
              v38 = v41;
              v39 = "%{public}@ not found";
              v40 = 12;
            }

            _os_log_impl(&dword_22506F000, v38, OS_LOG_TYPE_INFO, v39, buf, v40);
          }

LABEL_29:
        }

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v42, &v54, v64, 16);
    }

    while (v7);
  }

  v43 = *MEMORY[0x277D85DE8];
}

void sub_225119110(uint64_t a1, const char *a2, uint64_t a3)
{
  v101 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v69 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v70 = *(a1 + 32);
      v71 = *(a1 + 48);
      v72 = v69;
      v73 = NSStringFromSelector(v71);
      *buf = 138412546;
      *&buf[4] = v70;
      *&buf[12] = 2114;
      *&buf[14] = v73;
      _os_log_error_impl(&dword_22506F000, v72, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache showAssetCacheInContainer:]_block_invoke", "CKDAssetCache.m", 660, "0 && already dropped");
  }

  v77 = objc_msgSend_MMCS(*(a1 + 32), v4, v5);
  objc_msgSend_showRegisteredItemsInContainer_(v77, v6, *(a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC828];
  if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
  {
    v10 = v7;
    v13 = objc_msgSend_path(v77, v11, v12);
    *buf = 138543362;
    *&buf[4] = v13;
    _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_INFO, "Report for %{public}@\n----\n", buf, 0xCu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v98 = sub_225073E70;
  v99 = sub_2250734C4;
  v100 = objc_msgSend_string(MEMORY[0x277CCAB68], v8, v9);
  v16 = objc_msgSend_date(MEMORY[0x277CBEAA8], v14, v15);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v17 = *MEMORY[0x277CBC828];
  if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
  {
    *v90 = 0;
    _os_log_impl(&dword_22506F000, v17, OS_LOG_TYPE_INFO, "itemID, file signature, status, fileStatus, lastAccess(hrs), lastAssetDbAccess(hrs), expectedSize, actualSize", v90, 2u);
  }

  v18 = *(a1 + 32);
  v19 = *(v18 + 40);
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = sub_2251198A4;
  v87[3] = &unk_278545E48;
  v87[4] = v18;
  v89 = buf;
  v76 = v16;
  v88 = v76;
  v21 = objc_msgSend_performTransaction_(v19, v20, v87);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v22 = *MEMORY[0x277CBC828];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v25 = objc_msgSend_path(v77, v23, v24);
    *v90 = 138543362;
    v91 = v25;
    _os_log_impl(&dword_22506F000, v22, OS_LOG_TYPE_INFO, "End Report for %{public}@\n----\n", v90, 0xCu);
  }

  v79 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v26, v27);
  v86 = 0;
  v30 = objc_msgSend_directoryContext(*(a1 + 32), v28, v29);
  v33 = objc_msgSend_fileDownloadDirectory(v30, v31, v32);
  v36 = objc_msgSend_path(v33, v34, v35);
  isDirectory = objc_msgSend_fileExistsAtPath_isDirectory_(v79, v37, v36, &v86);
  v39 = v86;

  if ((isDirectory & v39) != 0)
  {
    v42 = objc_msgSend_fileDownloadPath(*(a1 + 32), v40, v41);
    v85 = 0;
    v75 = objc_msgSend_contentsOfDirectoryAtPath_error_(v79, v43, v42, &v85);
    v74 = v85;

    v44 = v75;
    if (v75)
    {
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      obj = v75;
      v46 = 0;
      v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v45, &v81, v96, 16, v74);
      if (v49)
      {
        v50 = *v82;
        do
        {
          v51 = 0;
          do
          {
            if (*v82 != v50)
            {
              objc_enumerationMutation(obj);
            }

            v52 = *(*(&v81 + 1) + 8 * v51);
            v53 = objc_msgSend_fileDownloadPath(*(a1 + 32), v47, v48);
            v55 = objc_msgSend_stringByAppendingPathComponent_(v53, v54, v52);

            v57 = objc_msgSend_assetHandleWithCachedPath_(*(a1 + 32), v56, v55);
            v80 = 0;
            v59 = objc_msgSend_attributesOfItemAtPath_error_(v79, v58, v55, &v80);
            v60 = v80;
            if (v59)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v61 = *MEMORY[0x277CBC828];
              if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
              {
                v64 = objc_msgSend_fileSize(v59, v62, v63);
                *v90 = 138543874;
                v91 = v55;
                v92 = 2048;
                v93 = v64;
                v94 = 2112;
                v95 = v57;
                _os_log_impl(&dword_22506F000, v61, OS_LOG_TYPE_INFO, "%{public}@ bytes:%llu assetHandle:%@", v90, 0x20u);
              }

              v46 += objc_msgSend_fileSize(v59, v65, v66);
            }

            ++v51;
          }

          while (v49 != v51);
          v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v47, &v81, v96, 16);
        }

        while (v49);
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v67 = *MEMORY[0x277CBC828];
      v44 = v75;
      if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
      {
        *v90 = 134217984;
        v91 = v46;
        _os_log_impl(&dword_22506F000, v67, OS_LOG_TYPE_INFO, "total bytes:%llu", v90, 0xCu);
      }
    }
  }

  _Block_object_dispose(buf, 8);
  v68 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2251198A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a1;
  v162 = *MEMORY[0x277D85DE8];
  objc_msgSend_entryEnumerator(*(*(a1 + 32) + 40), a2, a3);
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  obj = v148 = 0u;
  v133 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v145, v161, 16);
  if (v133)
  {
    v131 = *v146;
    v129 = *MEMORY[0x277CBC120];
    v132 = v3;
    do
    {
      v5 = 0;
      do
      {
        if (*v146 != v131)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v145 + 1) + 8 * v5);
        context = objc_autoreleasePoolPush();
        v7 = *(*(*(v3 + 48) + 8) + 40);
        v10 = objc_msgSend_length(v7, v8, v9);
        objc_msgSend_deleteCharactersInRange_(v7, v11, 0, v10);
        HaveAssetCacheManagedFile = objc_msgSend_mayHaveAssetCacheManagedFile(v6, v12, v13);
        v16 = objc_msgSend_lastUsedTime(v6, v14, v15);

        if (v16)
        {
          v19 = objc_msgSend_lastUsedTime(v6, v17, v18);
          v140 = objc_msgSend_description(v19, v20, v21);
        }

        else
        {
          v140 = @"none";
        }

        v22 = objc_msgSend_fileSize(v6, v17, v18);

        if (v22)
        {
          v25 = MEMORY[0x277CCACA8];
          v26 = objc_msgSend_fileSize(v6, v23, v24);
          v28 = objc_msgSend_stringWithFormat_(v25, v27, @"%@", v26);
        }

        else
        {
          v28 = @"none";
        }

        v137 = *(*(*(v3 + 48) + 8) + 40);
        v138 = objc_msgSend_itemID(v6, v23, v24);
        v33 = objc_msgSend_fileSignature(v6, v29, v30);
        v142 = v5;
        v139 = v28;
        if (v33)
        {
          v135 = objc_msgSend_fileSignature(v6, v31, v32);
          v36 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v135, v34, v35);
          v134 = v36;
        }

        else
        {
          v36 = @"none";
        }

        v37 = objc_msgSend_volumeIndex(v6, v31, v32);
        v38 = *(*(v3 + 32) + 48);
        v41 = objc_msgSend_volumeIndex(v6, v39, v40);
        v43 = objc_msgSend_volumeUUIDWithVolumeIndex_(v38, v42, v41);
        v44 = *(v3 + 32);
        v47 = objc_msgSend_volumeIndex(v6, v45, v46);
        v49 = objc_msgSend_deviceIDForVolumeIndex_(v44, v48, v47);
        v52 = objc_msgSend_status(v6, v50, v51);
        v55 = objc_msgSend_integerValue(v52, v53, v54);
        v57 = objc_msgSend_descriptionWithStatus_(CKDAssetHandle, v56, v55);
        objc_msgSend_appendFormat_(v137, v58, @"%@, %@, %@, %@, %@, %@", v138, v36, v37, v43, v49, v57);

        if (v33)
        {
        }

        v61 = objc_msgSend_volumeIndex(v6, v59, v60);
        if (v61)
        {
          v64 = v61;
          v65 = objc_msgSend_fileID(v6, v62, v63);

          if (v65)
          {
            v66 = objc_alloc(MEMORY[0x277CBC440]);
            v3 = v132;
            v67 = *(v132 + 32);
            v70 = objc_msgSend_volumeIndex(v6, v68, v69);
            v72 = objc_msgSend_deviceIDForVolumeIndex_(v67, v71, v70);
            v75 = objc_msgSend_fileID(v6, v73, v74);
            v78 = objc_msgSend_generationID(v6, v76, v77);
            RawEncryptedData_fileHandle_assetDownloadStagingInfo = objc_msgSend_initWithUUID_path_deviceID_fileID_generationID_shouldReadRawEncryptedData_fileHandle_assetDownloadStagingInfo_(v66, v79, 0, 0, v72, v75, v78, 0, 0, 0);

            v144 = 0;
            v82 = objc_msgSend_openWithOpenInfo_error_(MEMORY[0x277CBC190], v81, RawEncryptedData_fileHandle_assetDownloadStagingInfo, &v144);
            v83 = v144;
            v86 = v83;
            if (v82)
            {
              v87 = MEMORY[0x277CBC190];
              v88 = objc_msgSend_fileHandle(v82, v84, v85);
              v143 = 0;
              v90 = objc_msgSend_getFileMetadataWithFileHandle_openInfo_error_(v87, v89, v88, RawEncryptedData_fileHandle_assetDownloadStagingInfo, &v143);
              v91 = v143;

              if (v90)
              {
                v94 = MEMORY[0x277CCACA8];
                objc_msgSend_timeIntervalSince1970(*(v132 + 40), v92, v93);
                v96 = v95;
                v99 = objc_msgSend_modTimeInSeconds(v90, v97, v98);
                objc_msgSend_doubleValue(v99, v100, v101);
                v104 = objc_msgSend_stringWithFormat_(v94, v103, @"%0.2f", (v96 - v102) / 3600.0);

                v105 = MEMORY[0x277CCACA8];
                v108 = objc_msgSend_fileSize(v90, v106, v107);
                v110 = objc_msgSend_stringWithFormat_(v105, v109, @"%@", v108);
              }

              else
              {
                v110 = @"none";
                v104 = @"n/a";
              }

              v112 = v142;

              v111 = @"exists";
LABEL_32:
              v113 = v139;
            }

            else
            {
              v114 = objc_msgSend_domain(v83, v84, v85);
              isEqualToString = objc_msgSend_isEqualToString_(v129, v115, v114);

              if (!isEqualToString)
              {
                v111 = objc_msgSend_description(v86, v117, v118);
                v110 = @"none";
                v104 = @"n/a";
                v112 = v142;
                goto LABEL_32;
              }

              v112 = v142;
              v113 = v139;
              if (objc_msgSend_code(v86, v117, v118) == 3002)
              {
                v110 = @"none";
                v104 = @"n/a";
                v111 = @"not found";
              }

              else if (objc_msgSend_code(v86, v119, v120) == 3003)
              {
                v110 = @"none";
                v104 = @"n/a";
                v111 = @"modified";
              }

              else
              {
                v111 = objc_msgSend_description(v86, v124, v125);
                v110 = @"none";
                v104 = @"n/a";
              }
            }

            goto LABEL_34;
          }
        }

        if (HaveAssetCacheManagedFile)
        {
          v111 = @"expected but missing";
        }

        else
        {
          v111 = @"none expected";
        }

        v110 = @"none";
        v104 = @"n/a";
        v3 = v132;
        v112 = v142;
        v113 = v139;
LABEL_34:
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v121 = *MEMORY[0x277CBC828];
        if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
        {
          v122 = *(*(*(v3 + 48) + 8) + 40);
          *buf = 138544642;
          v150 = v122;
          v151 = 2114;
          v152 = v111;
          v153 = 2114;
          v154 = v104;
          v155 = 2114;
          v156 = v140;
          v157 = 2114;
          v158 = v113;
          v159 = 2114;
          v160 = v110;
          _os_log_impl(&dword_22506F000, v121, OS_LOG_TYPE_INFO, "%{public}@, %{public}@, %{public}@, %{public}@, %{public}@, %{public}@", buf, 0x3Eu);
        }

        objc_autoreleasePoolPop(context);
        v5 = v112 + 1;
      }

      while (v133 != v5);
      v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v123, &v145, v161, 16);
      v133 = v126;
    }

    while (v126);
  }

  v127 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t sub_22511A1AC(uint64_t a1, const char *a2, uint64_t a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v46[3] = 0;
  v4 = objc_msgSend_count(*(a1 + 32), a2, a3);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22511A4D0;
  aBlock[3] = &unk_278545E98;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v44 = v46;
  v45 = v4;
  v31 = *(a1 + 48);
  v7 = *(&v31 + 1);
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v41 = v8;
  v42 = v31;
  v43 = *(a1 + 64);
  v9 = _Block_copy(aBlock);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = *(a1 + 56);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v36, v48, 16);
  if (v12)
  {
    v13 = *v37;
    do
    {
      v14 = 0;
      do
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v9[2](v9, *(*(&v36 + 1) + 8 * v14++));
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v15, &v36, v48, 16);
    }

    while (v12);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = *(a1 + 64);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v32, v47, 16);
  if (v18)
  {
    v19 = *v33;
    do
    {
      v20 = 0;
      do
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v9[2](v9, *(*(&v32 + 1) + 8 * v20++));
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v21, &v32, v47, 16);
    }

    while (v18);
  }

  v22 = *(a1 + 40);
  v24 = objc_msgSend_objectAtIndex_(*(a1 + 32), v23, 0);
  v26 = objc_msgSend_objectForKey_(v22, v25, v24);

  if (v26)
  {
    do
    {
      (v9)[2](v9, v26);
    }

    while (objc_msgSend_count(*(a1 + 40), v27, v28));
  }

  _Block_object_dispose(v46, 8);
  v29 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_22511A4D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(*(*(a1 + 72) + 8) + 24);
  v6 = a2;
  v8 = objc_msgSend_objectAtIndex_(v4, v7, v5);
  objc_msgSend_setObject_forKey_(v3, v9, v6, v8);

  if (++*(*(*(a1 + 72) + 8) + 24) == *(a1 + 80))
  {
    v10 = *(*(a1 + 48) + 40);
    v11 = *(a1 + 32);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = sub_22511A61C;
    v18 = &unk_278545E70;
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    objc_msgSend_deleteEntriesMatching_label_error_predicate_(v10, v12, v11, off_27D7199E8, 0, &v15);
    objc_msgSend_removeAllObjects(*(a1 + 32), v13, v14, v15, v16, v17, v18);
    *(*(*(a1 + 72) + 8) + 24) = 0;
  }
}

uint64_t sub_22511B30C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a1;
  v164 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v144 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v145 = *(a1 + 32);
      v146 = *(a1 + 64);
      v147 = v144;
      v148 = NSStringFromSelector(v146);
      *buf = 138412546;
      v161 = v145;
      v162 = 2114;
      v163 = v148;
      _os_log_error_impl(&dword_22506F000, v147, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache updateAssetHandlesForRegisteredMMCSItems:error:]_block_invoke", "CKDAssetCache.m", 924, "0 && already dropped");
  }

  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  obj = *(v3 + 40);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v155, v159, 16);
  if (v5)
  {
    v6 = v5;
    v7 = 0x278543000uLL;
    v153 = *v156;
    v149 = *MEMORY[0x277CBBF50];
    do
    {
      v8 = 0;
      v151 = v6;
      do
      {
        if (*v156 != v153)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v155 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        if (!objc_msgSend_itemID(v9, v11, v12))
        {
          __assert_rtn("[CKDAssetCache updateAssetHandlesForRegisteredMMCSItems:error:]_block_invoke", "CKDAssetCache.m", 928, "MMCSItem.itemID != 0 && MMCSItem.itemID != 0");
        }

        v15 = MEMORY[0x277CCABB0];
        v16 = objc_msgSend_itemID(v9, v13, v14);
        v18 = objc_msgSend_numberWithUnsignedLongLong_(v15, v17, v16);
        v19 = objc_alloc(*(v7 + 2464));
        v21 = objc_msgSend_initWithItemID_UUID_path_(v19, v20, v18, 0, 0);
        v24 = objc_msgSend_error(v9, v22, v23);

        if (!v24)
        {
          v27 = *(v3 + 32);
          v28 = objc_msgSend_deviceID(v9, v25, v26);
          v30 = objc_msgSend_volumeIndexForDeviceID_(v27, v29, v28);
          objc_msgSend_setVolumeIndex_(v21, v31, v30);

          v34 = objc_msgSend_fileID(v9, v32, v33);
          objc_msgSend_setFileID_(v21, v35, v34);

          v38 = objc_msgSend_generationID(v9, v36, v37);
          objc_msgSend_setGenerationID_(v21, v39, v38);

          v42 = objc_msgSend_signature(v9, v40, v41);
          objc_msgSend_setFileSignature_(v21, v43, v42);

          v44 = MEMORY[0x277CCABB0];
          v47 = objc_msgSend_chunkCount(v9, v45, v46);
          v49 = objc_msgSend_numberWithUnsignedInt_(v44, v48, v47);
          objc_msgSend_setChunkCount_(v21, v50, v49);

          v53 = objc_msgSend_modTimeInSeconds(v9, v51, v52);
          v56 = v53;
          if (v53)
          {
            v57 = MEMORY[0x277CBEAA8];
            objc_msgSend_doubleValue(v53, v54, v55);
            v60 = objc_msgSend_dateWithTimeIntervalSince1970_(v57, v58, v59);
            objc_msgSend_setModTime_(v21, v61, v60);
          }

          v62 = MEMORY[0x277CCABB0];
          v63 = objc_msgSend_fileSize(v9, v54, v55);
          v65 = objc_msgSend_numberWithUnsignedLongLong_(v62, v64, v63);
          objc_msgSend_setFileSize_(v21, v66, v65);

          objc_msgSend_setStatus_(v21, v67, &unk_2838C8148);
          v70 = objc_msgSend_boundaryKey(v9, v68, v69);
          objc_msgSend_setBoundaryKeyHashUsingBoundaryKey_(v21, v71, v70);

          v7 = 0x278543000uLL;
        }

        if (objc_msgSend_assetHandleExistsInDatabase_(*(*(v3 + 32) + 40), v25, v18))
        {
          v72 = objc_alloc_init(*(v7 + 2464));
          objc_msgSend_setItemID_(v72, v73, v18);
          v76 = objc_msgSend_error(v9, v74, v75);

          if (v76)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v78 = *MEMORY[0x277CBC828];
            if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
            {
              v80 = v78;
              v83 = objc_msgSend_error(v9, v81, v82);
              *buf = 138543618;
              v161 = v18;
              v162 = 2112;
              v163 = v83;
              _os_log_impl(&dword_22506F000, v80, OS_LOG_TYPE_INFO, "Warn: itemID:%{public}@ error during register %@", buf, 0x16u);

              v7 = 0x278543000;
            }

            objc_msgSend_setFinished_(v9, v79, 1);
            sub_22511BBF0(*(v3 + 48), v18);
            objc_msgSend_setStatus_(v72, v84, &unk_2838C8118);
            v86 = objc_msgSend_saveStatus_(*(*(v3 + 32) + 40), v85, v72);
          }

          else
          {
            v92 = objc_msgSend_fetchAllProperties_(*(*(v3 + 32) + 40), v77, v72);
            v154 = 0;
            isEqualRevisionOfAssetHandle_differencesDescription = objc_msgSend_isEqualRevisionOfAssetHandle_differencesDescription_(v72, v93, v21, &v154);
            v97 = v154;
            if (isEqualRevisionOfAssetHandle_differencesDescription)
            {
              objc_msgSend_setItemID_(v21, v95, v18);
              v99 = objc_msgSend_updateUsingObject_(*(*(v3 + 32) + 40), v98, v21);
            }

            else
            {
              v100 = objc_msgSend_isReaderReadFrom(v9, v95, v96);
              v101 = *MEMORY[0x277CBC878];
              v102 = *MEMORY[0x277CBC880];
              if (v100)
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], v101);
                }

                v103 = *MEMORY[0x277CBC828];
                if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
                {
                  *buf = 138543618;
                  v161 = v18;
                  v162 = 2114;
                  v163 = v97;
                  _os_log_impl(&dword_22506F000, v103, OS_LOG_TYPE_INFO, "Warn: itemID:%{public}@ modified during register %{public}@", buf, 0x16u);
                }

                objc_msgSend_setFinished_(v9, v104, 1);
                v105 = MEMORY[0x277CBC560];
                v108 = objc_msgSend_fileURL(v9, v106, v107);
                v111 = objc_msgSend_path(v108, v109, v110);
                v113 = objc_msgSend_errorWithDomain_code_path_format_(v105, v112, v149, 17, v111, @"File appears to have changed during registration");
                objc_msgSend_setError_(v9, v114, v113);
              }

              else
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], v101);
                }

                v117 = *MEMORY[0x277CBC828];
                if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
                {
                  *buf = 138543618;
                  v161 = v18;
                  v162 = 2114;
                  v163 = v97;
                  _os_log_impl(&dword_22506F000, v117, OS_LOG_TYPE_INFO, "Warn: stale chunk registry state for itemID:%{public}@  %{public}@", buf, 0x16u);
                }

                objc_msgSend_setFinished_(v9, v118, 1);
                v119 = MEMORY[0x277CBC560];
                v122 = objc_msgSend_fileURL(v9, v120, v121);
                v125 = objc_msgSend_path(v122, v123, v124);
                v127 = objc_msgSend_errorWithDomain_code_path_format_(v119, v126, v149, 17, v125, @"Stale chunk state found during registration");
                objc_msgSend_setError_(v9, v128, v127);
              }

              v129 = *(a1 + 48);
              v130 = MEMORY[0x277CCABB0];
              v131 = objc_msgSend_itemID(v9, v115, v116);
              v133 = objc_msgSend_numberWithUnsignedLongLong_(v130, v132, v131);
              v134 = v129;
              v3 = a1;
              sub_22511BBF0(v134, v133);

              objc_msgSend_setStatus_(v72, v135, &unk_2838C8118);
              v137 = objc_msgSend_saveStatus_(*(*(a1 + 32) + 40), v136, v72);
            }

            v7 = 0x278543000;
          }

          v6 = v151;
        }

        else
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v87 = *MEMORY[0x277CBC828];
          if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
          {
            v88 = v87;
            v91 = objc_msgSend_unsignedLongLongValue(v18, v89, v90);
            *buf = 134217984;
            v161 = v91;
            _os_log_impl(&dword_22506F000, v88, OS_LOG_TYPE_INFO, "Warn: itemID:%llu missing asset handle", buf, 0xCu);

            v3 = a1;
          }
        }

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v138, &v155, v159, 16);
    }

    while (v6);
  }

  objc_msgSend_unregisterItemsAndDeleteUnregisteredAssetHandlesWithIDs_deleteUnregisteredAssetHandlesWithIDs_(*(v3 + 32), v139, *(v3 + 48), *(v3 + 56));
  result = objc_msgSend_expireAssetHandlesIfNecessary(*(v3 + 32), v140, v141);
  v143 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22511BBF0(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (objc_msgSend_containsObject_(v3, v5, v4))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_error_impl(&dword_22506F000, v7, OS_LOG_TYPE_ERROR, "set already contained object %@", &v9, 0xCu);
    }
  }

  else
  {
    objc_msgSend_addObject_(v3, v6, v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22511BDC4(uint64_t a1, const char *a2, uint64_t a3)
{
  v45 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v31 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v32 = *(a1 + 32);
      v33 = *(a1 + 48);
      v34 = v31;
      v35 = NSStringFromSelector(v33);
      *buf = 138412546;
      v42 = v32;
      v43 = 2114;
      v44 = v35;
      _os_log_error_impl(&dword_22506F000, v34, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache updateAssetHandlesForChunkedMMCSItems:error:]_block_invoke", "CKDAssetCache.m", 991, "0 && already dropped");
  }

  v4 = objc_alloc_init(CKDAssetHandle);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = *(a1 + 40);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v36, v40, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v37;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        if (objc_msgSend_itemID(v13, v8, v9, v36))
        {
          v16 = MEMORY[0x277CCABB0];
          v17 = objc_msgSend_itemID(v13, v14, v15);
          v19 = objc_msgSend_numberWithUnsignedLongLong_(v16, v18, v17);
          objc_msgSend_setItemID_(v4, v20, v19);
        }

        else
        {
          v19 = 0;
          objc_msgSend_setItemID_(v4, v14, 0);
        }

        v23 = MEMORY[0x277CCABB0];
        v24 = objc_msgSend_chunkCount(v13, v21, v22);
        v26 = objc_msgSend_numberWithUnsignedInt_(v23, v25, v24);
        objc_msgSend_setChunkCount_(v4, v27, v26);

        v29 = objc_msgSend_saveChunkCount_(*(*(a1 + 32) + 40), v28, v4);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v36, v40, 16);
    }

    while (v10);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void sub_22511C204(uint64_t a1, const char *a2, uint64_t a3)
{
  v186 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v157 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v158 = *(a1 + 32);
      v159 = *(a1 + 64);
      v160 = v157;
      v161 = NSStringFromSelector(v159);
      *buf = 138412546;
      v183 = v158;
      v184 = 2114;
      v185 = v161;
      _os_log_error_impl(&dword_22506F000, v160, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache updateAssetHandlesForGetMMCSItems:cloneItems:error:]_block_invoke", "CKDAssetCache.m", 1021, "0 && already dropped");
  }

  v4 = objc_alloc_init(CKDAssetHandle);
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  v5 = *(a1 + 40);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v175, v181, 16);
  if (v7)
  {
    v11 = v7;
    v12 = 0x277CCA000uLL;
    v172 = *v176;
    v170 = *MEMORY[0x277CBC120];
    *&v10 = 138412290;
    v162 = v10;
    v171 = v5;
    do
    {
      v13 = 0;
      v169 = v11;
      do
      {
        if (*v176 != v172)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v175 + 1) + 8 * v13);
        if (!objc_msgSend_itemID(v14, v8, v9, v162))
        {
          __assert_rtn("[CKDAssetCache updateAssetHandlesForGetMMCSItems:cloneItems:error:]_block_invoke", "CKDAssetCache.m", 1026, "MMCSItem.itemID != 0 && 0 itemID");
        }

        v17 = *(v12 + 2992);
        v18 = objc_msgSend_itemID(v14, v15, v16);
        v20 = objc_msgSend_numberWithUnsignedLongLong_(v17, v19, v18);
        objc_msgSend_setItemID_(v4, v21, v20);
        v25 = objc_msgSend_fetchAllProperties_(*(*(a1 + 32) + 40), v22, v4);
        if (!v25)
        {
          v31 = objc_msgSend_error(v14, v23, v24);

          if (v31)
          {
            v34 = objc_msgSend_error(v14, v32, v33);
            v37 = objc_msgSend_domain(v34, v35, v36);
            if ((objc_msgSend_isEqualToString_(v37, v38, v170) & 1) == 0)
            {

              goto LABEL_24;
            }

            v41 = objc_msgSend_error(v14, v39, v40);
            if (objc_msgSend_code(v41, v42, v43) == 3003)
            {

              v5 = v171;
              goto LABEL_27;
            }

            v85 = objc_msgSend_error(v14, v44, v45);
            v88 = objc_msgSend_code(v85, v86, v87);

            v89 = v88 == 3006;
            v11 = v169;
            v5 = v171;
            if (v89)
            {
LABEL_27:
              objc_msgSend_setStatus_(v4, v46, &unk_2838C8118);
              v90 = *(a1 + 48);
              v93 = objc_msgSend_itemID(v4, v91, v92);
              sub_22511BBF0(v90, v93);
            }

            else
            {
LABEL_24:
              objc_msgSend_setStatus_(v4, v46, &unk_2838C80E8);
            }

            v12 = 0x277CCA000;
LABEL_60:
            v150 = objc_msgSend_updateUsingObject_(*(*(a1 + 32) + 40), v84, v4);
            goto LABEL_61;
          }

          v49 = objc_msgSend_deviceID(v14, v32, v33);
          if (!v49)
          {
            goto LABEL_19;
          }

          v50 = *(a1 + 32);
          v51 = objc_msgSend_deviceID(v14, v47, v48);
          v53 = objc_msgSend_volumeIndexForDeviceID_(v50, v52, v51);
          objc_msgSend_setVolumeIndex_(v4, v54, v53);

          v57 = objc_msgSend_volumeIndex(v4, v55, v56);

          if (!v57)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v112 = *MEMORY[0x277CBC828];
            v12 = 0x277CCA000;
            if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
            {
              v151 = v112;
              v154 = objc_msgSend_deviceID(v14, v152, v153);
              *buf = 138543618;
              v183 = v154;
              v184 = 2112;
              v185 = v14;
              _os_log_error_impl(&dword_22506F000, v151, OS_LOG_TYPE_ERROR, "Unable to find volumeIndex for deviceID %{public}@: Deleting asset handle for %@", buf, 0x16u);

              v12 = 0x277CCA000;
            }

            objc_msgSend_setStatus_(v4, v113, &unk_2838C8118);
            v114 = *(a1 + 48);
            v117 = objc_msgSend_itemID(v4, v115, v116);
            sub_22511BBF0(v114, v117);

            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v118 = *MEMORY[0x277CBC828];
            if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
            {
              *buf = v162;
              v183 = v4;
              _os_log_error_impl(&dword_22506F000, v118, OS_LOG_TYPE_ERROR, "Unregistering %@", buf, 0xCu);
            }
          }

          else
          {
LABEL_19:
            v58 = objc_msgSend_fileID(v14, v47, v48);
            objc_msgSend_setFileID_(v4, v59, v58);

            v62 = objc_msgSend_generationID(v14, v60, v61);
            objc_msgSend_setGenerationID_(v4, v63, v62);

            v66 = objc_msgSend_modTimeInSeconds(v14, v64, v65);
            v69 = v66;
            if (v66)
            {
              v70 = MEMORY[0x277CBEAA8];
              objc_msgSend_doubleValue(v66, v67, v68);
              v73 = objc_msgSend_dateWithTimeIntervalSince1970_(v70, v71, v72);
              objc_msgSend_setModTime_(v4, v74, v73);
            }

            if (objc_msgSend_hasSize(v14, v67, v68))
            {
              v77 = MEMORY[0x277CCABB0];
              v78 = objc_msgSend_fileSize(v14, v75, v76);
              v80 = objc_msgSend_numberWithUnsignedLongLong_(v77, v79, v78);
              objc_msgSend_setFileSize_(v4, v81, v80);
            }

            else
            {
              objc_msgSend_setFileSize_(v4, v75, 0);
            }

            v94 = MEMORY[0x277CCABB0];
            v95 = objc_msgSend_chunkCount(v14, v82, v83);
            v97 = objc_msgSend_numberWithUnsignedInt_(v94, v96, v95);
            objc_msgSend_setChunkCount_(v4, v98, v97);

            objc_msgSend_setStatus_(v4, v99, &unk_2838C8160);
            v11 = v169;
            if (*(a1 + 72) == 1)
            {
              v166 = v49;
              v179[0] = @"SIG";
              v102 = objc_msgSend_fileSignature(v4, v100, v101);
              v179[1] = @"CLONED";
              v180[0] = v102;
              v180[1] = &unk_2838C8178;
              v104 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v103, v180, v179, 2);

              v105 = v104;
              v106 = *(*(a1 + 32) + 40);
              v174 = 0;
              v108 = objc_msgSend_entryWithValues_label_error_setupBlock_(v106, v107, v104, off_27D719A00, &v174, &unk_28385C4E0);
              v168 = v174;
              if (v168)
              {
                v167 = v108;
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }

                v49 = v166;
                v111 = *MEMORY[0x277CBC828];
                if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v183 = v168;
                  _os_log_error_impl(&dword_22506F000, v111, OS_LOG_TYPE_ERROR, "Cloned file cache search error: %{public}@", buf, 0xCu);
                }
              }

              else
              {
                v165 = v105;
                if (v108)
                {
                  v119 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v109, v110);
                  v122 = objc_msgSend_path(v108, v120, v121);
                  v163 = v119;
                  LOBYTE(v119) = objc_msgSend_fileExistsAtPath_(v119, v123, v122);

                  if (v119)
                  {
                    v167 = v108;

                    v11 = v169;
                    v105 = v165;
                    v49 = v166;
                    goto LABEL_57;
                  }

                  v126 = MEMORY[0x277CBEB70];
                  v127 = objc_msgSend_itemID(v108, v124, v125);
                  v129 = objc_msgSend_orderedSetWithObject_(v126, v128, v127);

                  objc_msgSend_unregisterItemsAndDeleteUnregisteredAssetHandlesWithIDs_deleteUnregisteredAssetHandlesWithIDs_(*(a1 + 32), v130, v129, 0);
                  v11 = v169;
                }

                v131 = objc_msgSend_clonedFileCache(*(a1 + 32), v109, v110);
                v173 = 0;
                v133 = objc_msgSend_cloneMMCSItem_error_(v131, v132, v14, &v173);
                v167 = v173;

                v164 = v133;
                if (v133)
                {
                  v136 = objc_msgSend_path(v133, v134, v135);
                  v139 = objc_msgSend_getFileMetadataAtPath_error_(MEMORY[0x277CBC190], v137, v136, 0);
                  if (v139)
                  {
                    objc_msgSend_setPath_(v4, v138, v136);
                    v142 = objc_msgSend_fileID(v139, v140, v141);
                    objc_msgSend_setFileID_(v4, v143, v142);

                    v146 = objc_msgSend_generationID(v139, v144, v145);
                    objc_msgSend_setGenerationID_(v4, v147, v146);

                    objc_msgSend_setIsCloned_(v4, v148, &unk_2838C8178);
                  }

                  v105 = v165;
                  v49 = v166;
                }

                else
                {
                  if (*MEMORY[0x277CBC880] != -1)
                  {
                    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                  }

                  v105 = v165;
                  v149 = *MEMORY[0x277CBC828];
                  v49 = v166;
                  if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v183 = v167;
                    _os_log_error_impl(&dword_22506F000, v149, OS_LOG_TYPE_ERROR, "Failed to clone item: %{public}@", buf, 0xCu);
                  }
                }
              }

LABEL_57:
            }

            v12 = 0x277CCA000;
          }

          v5 = v171;
          goto LABEL_60;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v26 = *MEMORY[0x277CBC828];
        if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
        {
          v27 = v26;
          v30 = objc_msgSend_unsignedLongLongValue(v20, v28, v29);
          *buf = 134217984;
          v183 = v30;
          _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "Warn: itemID:%llu missing asset handle", buf, 0xCu);
        }

LABEL_61:

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v175, v181, 16);
    }

    while (v11);
  }

  objc_msgSend_unregisterItemsAndDeleteUnregisteredAssetHandlesWithIDs_deleteUnregisteredAssetHandlesWithIDs_(*(a1 + 32), v155, *(a1 + 48), *(a1 + 56));
  v156 = *MEMORY[0x277D85DE8];
}

void sub_22511CD00(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAC30];
  v7 = a2;
  v4 = objc_msgSend_predicateWithFormat_(v2, v3, @"fileSignature = $SIG AND isCloned = $CLONED");
  objc_msgSend_setSearchPredicate_(v7, v5, v4);

  objc_msgSend_setFetchedProperties_(v7, v6, &unk_2838C8D18);
}

void sub_22511CEA8(uint64_t a1, const char *a2, uint64_t a3)
{
  v103 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v84 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v85 = *(a1 + 32);
      v86 = *(a1 + 64);
      v87 = v84;
      v88 = NSStringFromSelector(v86);
      *buf = 138412546;
      v100 = v85;
      v101 = 2114;
      v102 = v88;
      _os_log_error_impl(&dword_22506F000, v87, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache updateAssetHandlesForPutMMCSItems:cloneItems:error:]_block_invoke", "CKDAssetCache.m", 1131, "0 && already dropped");
  }

  v4 = objc_alloc_init(CKDAssetHandle);
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = *(a1 + 40);
  v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v94, v98, 16);
  if (v93)
  {
    v8 = *v95;
    v90 = *MEMORY[0x277CBC120];
    v9 = 0x277CCA000uLL;
    v91 = *v95;
    do
    {
      v10 = 0;
      do
      {
        if (*v95 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v94 + 1) + 8 * v10);
        if (!objc_msgSend_itemID(v11, v6, v7))
        {
          __assert_rtn("[CKDAssetCache updateAssetHandlesForPutMMCSItems:cloneItems:error:]_block_invoke", "CKDAssetCache.m", 1136, "MMCSItem.itemID != 0 && 0 itemID");
        }

        v14 = *(v9 + 2992);
        v15 = objc_msgSend_itemID(v11, v12, v13);
        v17 = objc_msgSend_numberWithUnsignedLongLong_(v14, v16, v15);
        objc_msgSend_setItemID_(v4, v18, v17);
        v22 = objc_msgSend_fetchAllProperties_(*(*(a1 + 32) + 40), v19, v4);
        if (v22)
        {
          if (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x277CCA9B8], v20, v22))
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v23 = *MEMORY[0x277CBC828];
            if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
            {
              v24 = v23;
              v27 = objc_msgSend_unsignedLongLongValue(v17, v25, v26);
              *buf = 134217984;
              v100 = v27;
              _os_log_impl(&dword_22506F000, v24, OS_LOG_TYPE_INFO, "Warn: itemID:%llu missing asset handle", buf, 0xCu);
            }
          }

          goto LABEL_38;
        }

        v28 = objc_msgSend_error(v11, v20, v21);

        if (!v28)
        {
          if (!objc_msgSend_chunkCount(v11, v29, v30))
          {
            v46 = objc_msgSend_package(v11, v44, v45);

            if (!v46)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v47 = *MEMORY[0x277CBC828];
              if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
              {
                v48 = v47;
                v51 = objc_msgSend_unsignedLongLongValue(v17, v49, v50);
                *buf = 134217984;
                v100 = v51;
                _os_log_error_impl(&dword_22506F000, v48, OS_LOG_TYPE_ERROR, "itemID:%llu, missing chunk count", buf, 0xCu);
                goto LABEL_27;
              }
            }

LABEL_28:
            objc_msgSend_setStatus_(v4, v44, &unk_2838C8160);
            goto LABEL_31;
          }

LABEL_26:
          v53 = *(v9 + 2992);
          v54 = objc_msgSend_chunkCount(v11, v44, v45);
          v48 = objc_msgSend_numberWithUnsignedInt_(v53, v55, v54);
          objc_msgSend_setChunkCount_(v4, v56, v48);
LABEL_27:

          goto LABEL_28;
        }

        v31 = objc_msgSend_error(v11, v29, v30);
        v34 = objc_msgSend_domain(v31, v32, v33);
        if ((objc_msgSend_isEqualToString_(v34, v35, v90) & 1) == 0)
        {

LABEL_25:
          v8 = v91;
          v9 = 0x277CCA000uLL;
          if (!objc_msgSend_chunkCount(v11, v43, v52))
          {
            goto LABEL_28;
          }

          goto LABEL_26;
        }

        v38 = objc_msgSend_error(v11, v36, v37);
        if (objc_msgSend_code(v38, v39, v40) == 3003)
        {
        }

        else
        {
          v59 = objc_msgSend_error(v11, v41, v42);
          v89 = objc_msgSend_code(v59, v60, v61);

          if (v89 != 3006)
          {
            goto LABEL_25;
          }
        }

        objc_msgSend_setStatus_(v4, v43, &unk_2838C8118);
        sub_22511BBF0(*(a1 + 48), v17);
        v8 = v91;
        v9 = 0x277CCA000;
LABEL_31:
        v62 = *(a1 + 32);
        if (*(a1 + 72) == 1)
        {
          v63 = objc_msgSend_clonedFileCache(v62, v57, v58);
          v65 = objc_msgSend_cloneMMCSItem_error_(v63, v64, v11, 0);

          if (v65)
          {
            v68 = objc_msgSend_path(v65, v66, v67);
            v71 = objc_msgSend_getFileMetadataAtPath_error_(MEMORY[0x277CBC190], v69, v68, 0);
            if (v71)
            {
              objc_msgSend_setPath_(v4, v70, v68);
              v74 = objc_msgSend_fileID(v71, v72, v73);
              objc_msgSend_setFileID_(v4, v75, v74);

              v78 = objc_msgSend_generationID(v71, v76, v77);
              objc_msgSend_setGenerationID_(v4, v79, v78);
            }

            v8 = v91;
            v9 = 0x277CCA000;
          }

          v80 = objc_msgSend_updateUsingObject_(*(*(a1 + 32) + 40), v66, v4);
        }

        else
        {
          v81 = objc_msgSend_saveStatusAndChunkCount_(v62[5], v57, v4);
        }

LABEL_38:

        ++v10;
      }

      while (v93 != v10);
      v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v94, v98, 16);
    }

    while (v93);
  }

  objc_msgSend_unregisterItemsAndDeleteUnregisteredAssetHandlesWithIDs_deleteUnregisteredAssetHandlesWithIDs_(*(a1 + 32), v82, *(a1 + 48), *(a1 + 56));
  v83 = *MEMORY[0x277D85DE8];
}

void sub_22511D7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22511D810(uint64_t a1, const char *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 72);
      v17 = v14;
      v18 = NSStringFromSelector(v16);
      *buf = 138412546;
      v25 = v15;
      v26 = 2114;
      v27 = v18;
      _os_log_error_impl(&dword_22506F000, v17, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache trackCachedButNotRegisteredMMCSItems:error:]_block_invoke", "CKDAssetCache.m", 1212, "0 && already dropped");
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_22511DA14;
  v20[3] = &unk_278545F38;
  v19 = *(a1 + 32);
  v4 = *(v19 + 40);
  v5 = *(&v19 + 1);
  v6 = *(a1 + 48);
  v23 = *(a1 + 72);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v21 = v19;
  v22 = v8;
  v10 = objc_msgSend_performTransaction_(v4, v9, v20);
  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *MEMORY[0x277D85DE8];
}

id sub_22511DA14(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a1;
  v122 = *MEMORY[0x277D85DE8];
  v106 = objc_msgSend_fileDownloadPath(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_count(*(v3 + 40), v4, v5);
  if (v6 != objc_msgSend_count(*(v3 + 48), v7, v8))
  {
    v99 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v99, v100, *(v3 + 64), *(v3 + 32), @"CKDAssetCache.m", 1219, @"handles and items count don't match");
  }

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = *(v3 + 48);
  v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v116, v121, 16);
  if (v112)
  {
    v113 = 0;
    v14 = 0;
    v111 = *v117;
    v104 = *MEMORY[0x277CBC120];
    v105 = v3;
LABEL_5:
    v15 = 0;
    while (1)
    {
      if (*v117 != v111)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v116 + 1) + 8 * v15);
      v17 = objc_msgSend_fileURL(v16, v12, v13);
      v20 = objc_msgSend_path(v17, v18, v19);
      if (objc_msgSend_itemID(v16, v21, v22))
      {
        v25 = MEMORY[0x277CCABB0];
        v26 = objc_msgSend_itemID(v16, v23, v24);
        v114 = objc_msgSend_numberWithUnsignedLongLong_(v25, v27, v26);
      }

      else
      {
        v114 = 0;
      }

      v28 = objc_msgSend_signature(v16, v23, v24);
      v31 = objc_msgSend_error(v16, v29, v30);

      if (v31)
      {
        objc_msgSend_error(v16, v32, v33);
        v34 = 0;
        v14 = v35 = v14;
      }

      else
      {
        v35 = objc_msgSend_objectAtIndex_(*(v3 + 40), v32, v113);
        v37 = objc_msgSend_insertObject_(*(*(v3 + 32) + 40), v36, v35);
        v40 = objc_msgSend_UUID(v35, v38, v39);
        v43 = objc_msgSend_UUIDString(v40, v41, v42);

        v44 = objc_alloc(MEMORY[0x277CCACA8]);
        v45 = CKStringWithData();
        v109 = v43;
        v47 = objc_msgSend_initWithFormat_(v44, v46, @"%@.%@", v43, v45);

        v108 = v47;
        v49 = objc_msgSend_stringByAppendingPathComponent_(v106, v48, v47);
        v50 = v20;
        v53 = objc_msgSend_fileSystemRepresentation(v50, v51, v52);
        v54 = v49;
        v57 = objc_msgSend_fileSystemRepresentation(v54, v55, v56);
        rename(v53, v57, v58);
        v34 = v59 == 0;
        v110 = v49;
        if (v59)
        {
          v60 = *__error();
          if (v60 == 2)
          {
            memset(&v120, 0, sizeof(v120));
            v61 = v106;
            v64 = objc_msgSend_fileSystemRepresentation(v61, v62, v63);
            if (stat(v64, &v120) == -1 && *__error() == 2)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v101 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_22506F000, v101, OS_LOG_TYPE_ERROR, "Cache directory was unexpectedly removed. cloudd exiting to recover.", buf, 2u);
              }

              exit(1);
            }
          }

          v65 = MEMORY[0x277CBC560];
          v66 = strerror(v60);
          v68 = objc_msgSend_errorWithDomain_code_format_(v65, v67, v104, 1000, @"rename failed: %d (%s)", v60, v66);

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v69 = *MEMORY[0x277CBC828];
          v71 = v110;
          if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
          {
            log = v69;
            v81 = objc_msgSend_CKSanitizedPath(v20, v79, v80);
            v84 = objc_msgSend_CKSanitizedPath(v110, v82, v83);
            v87 = objc_msgSend_unsignedLongLongValue(v114, v85, v86);
            v120.st_dev = 138544386;
            *&v120.st_mode = v81;
            WORD2(v120.st_ino) = 2114;
            *(&v120.st_ino + 6) = v84;
            HIWORD(v120.st_gid) = 2048;
            *&v120.st_rdev = v87;
            LOWORD(v120.st_atimespec.tv_sec) = 2114;
            *(&v120.st_atimespec.tv_sec + 2) = v109;
            WORD1(v120.st_atimespec.tv_nsec) = 2112;
            *(&v120.st_atimespec.tv_nsec + 4) = v68;
            _os_log_error_impl(&dword_22506F000, log, OS_LOG_TYPE_ERROR, "Failed moving asset from %{public}@ to %{public}@ for itemID %llu and UUID %{public}@: %@", &v120, 0x34u);

            v71 = v110;
          }

          objc_msgSend_setError_(v16, v70, v68);
          v14 = v68;
          v3 = v105;
          v72 = v109;
        }

        else
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v73 = *MEMORY[0x277CBC828];
          if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
          {
            loga = v73;
            v90 = objc_msgSend_CKSanitizedPath(v20, v88, v89);
            v93 = objc_msgSend_CKSanitizedPath(v49, v91, v92);
            v96 = objc_msgSend_unsignedLongLongValue(v114, v94, v95);
            v120.st_dev = 138544130;
            *&v120.st_mode = v90;
            WORD2(v120.st_ino) = 2114;
            *(&v120.st_ino + 6) = v93;
            HIWORD(v120.st_gid) = 2048;
            *&v120.st_rdev = v96;
            LOWORD(v120.st_atimespec.tv_sec) = 2114;
            *(&v120.st_atimespec.tv_sec + 2) = v109;
            _os_log_debug_impl(&dword_22506F000, loga, OS_LOG_TYPE_DEBUG, "Moved asset from %{public}@ to %{public}@ for itemID %llu and UUID %{public}@", &v120, 0x2Au);

            v49 = v110;
          }

          v75 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x277CBEBC0], v74, v49, 0);
          objc_msgSend_setFileURL_(v16, v76, v75);

          v3 = v105;
          v77 = v16;
          v72 = v109;
          v71 = v110;
          objc_msgSend_setObject_forKey_(*(v105 + 56), v78, v77, v109);
        }

        ++v113;
      }

      if (!v34)
      {
        break;
      }

      if (v112 == ++v15)
      {
        v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v116, v121, 16);
        if (v112)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v97 = *MEMORY[0x277D85DE8];

  return v14;
}

void sub_22511EA90(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAC30];
  v3 = *(a1 + 32);
  v8 = a2;
  v5 = objc_msgSend_predicateWithFormat_(v2, v4, @"chunkCount != NULL AND chunkCount > 0 AND volumeIndex = $VOL AND status = $STATUS AND fileID IN %@", v3);
  objc_msgSend_setSearchPredicate_(v8, v6, v5);

  objc_msgSend_setFetchedProperties_(v8, v7, &unk_2838C8D30);
}

void sub_22511EE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22511EE40(uint64_t a1, const char *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 72);
      v12 = v9;
      v13 = NSStringFromSelector(v11);
      *buf = 138412546;
      v19 = v10;
      v20 = 2114;
      v21 = v13;
      _os_log_error_impl(&dword_22506F000, v12, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache startTrackingRegisterOrPutAssetHandles:operationType:error:]_block_invoke", "CKDAssetCache.m", 1407, "0 && already dropped");
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_22511F008;
  v14[3] = &unk_278545FF8;
  v14[4] = v4;
  v16 = *(a1 + 64);
  v17 = *(a1 + 80);
  v15 = *(a1 + 48);
  objc_msgSend_enumerateAssetHandlesSegregatedByVolume_block_(v4, v6, v5, v14);
  objc_msgSend_unregisterItemsAndDeleteUnregisteredAssetHandlesWithIDs_deleteUnregisteredAssetHandlesWithIDs_(*(a1 + 32), v7, *(a1 + 48), *(a1 + 56));

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22511F008(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x277CBEB68];
  v7 = a2;
  v10 = objc_msgSend_null(v6, v8, v9);
  if (v10 == v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;

  v13 = *(a1 + 32);
  v14 = *(v13 + 40);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_22511F148;
  v22[3] = &unk_278545FD0;
  v23 = v12;
  v24 = v13;
  v15 = *(a1 + 56);
  v25 = v5;
  v27 = v15;
  v28 = *(a1 + 64);
  v26 = *(a1 + 40);
  v16 = v5;
  v17 = v12;
  v19 = objc_msgSend_performTransaction_(v14, v18, v22);
  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;
}

id sub_22511F148(uint64_t a1, const char *a2)
{
  v85 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v66 = objc_msgSend_existingEntriesForRegisterOrPutHandles_volumeIndex_(*(a1 + 40), a2, *(a1 + 48));
  }

  else
  {
    v66 = 0;
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v3 = *(a1 + 48);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v73, v84, 16);
  if (v5)
  {
    v9 = v5;
    v10 = *v74;
    *&v8 = 138412290;
    v62 = v8;
    v63 = *v74;
    v64 = v3;
LABEL_6:
    v11 = 0;
    v65 = v9;
    while (1)
    {
      if (*v74 != v10)
      {
        objc_enumerationMutation(v3);
      }

      v12 = *(*(&v73 + 1) + 8 * v11);
      v13 = objc_msgSend_itemID(v12, v6, v7, v62);

      if (v13)
      {
        v58 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v58, v59, *(a1 + 64), *(a1 + 40), @"CKDAssetCache.m", 1419, @"Expected nil itemID");
      }

      objc_msgSend_setStatus_(v12, v14, &unk_2838C8190);
      v18 = objc_msgSend_fileID(v12, v16, v17);
      v21 = v18;
      if (*(a1 + 32))
      {
        if (v18)
        {
          v22 = objc_msgSend_generationID(v12, v19, v20);

          if (v22)
          {
            v67 = v21;
            v23 = objc_msgSend_objectForKey_(v66, v19, v21);
            v69 = 0u;
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            v24 = v23;
            v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v69, v83, 16);
            if (v26)
            {
              v28 = v26;
              v29 = *v70;
              while (2)
              {
                v30 = 0;
                do
                {
                  if (*v70 != v29)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v31 = *(*(&v69 + 1) + 8 * v30);
                  v68 = 0;
                  isEqualRevisionOfAssetHandle_differencesDescription = objc_msgSend_isEqualRevisionOfAssetHandle_differencesDescription_(v12, v27, v31, &v68);
                  v35 = v68;
                  if (isEqualRevisionOfAssetHandle_differencesDescription)
                  {
                    if (*(a1 + 72) == 1)
                    {
                      v44 = objc_msgSend_itemID(v31, v33, v34);
                      objc_msgSend_setItemID_(v12, v45, v44);

                      v48 = objc_msgSend_fileSignature(v31, v46, v47);
                      objc_msgSend_setFileSignature_(v12, v49, v48);

                      v52 = objc_msgSend_chunkCount(v31, v50, v51);
                      objc_msgSend_setChunkCount_(v12, v53, v52);

                      objc_msgSend_removeObject_(v24, v54, v31);
                      objc_msgSend_setStatus_(v12, v55, &unk_2838C8148);
                      if (*MEMORY[0x277CBC880] != -1)
                      {
                        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                      }

                      v56 = *MEMORY[0x277CBC828];
                      if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
                      {
                        *buf = v62;
                        v78 = v12;
                        _os_log_debug_impl(&dword_22506F000, v56, OS_LOG_TYPE_DEBUG, "Reusing assetHandle %@", buf, 0xCu);
                      }

                      goto LABEL_34;
                    }

                    if (*MEMORY[0x277CBC880] != -1)
                    {
                      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                    }

                    v36 = *MEMORY[0x277CBC828];
                    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412802;
                      v78 = v31;
                      v79 = 2112;
                      v80 = v12;
                      v81 = 2114;
                      v82 = v35;
                      _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Cleaning up old assetHandle %@ because it did not match %@: %{public}@", buf, 0x20u);
                    }

                    objc_msgSend_setStatus_(v31, v37, &unk_2838C8118);
                    v39 = objc_msgSend_saveStatus_(*(*(a1 + 40) + 40), v38, v31);
                    v40 = *(a1 + 56);
                    v43 = objc_msgSend_itemID(v31, v41, v42);
                    sub_22511BBF0(v40, v43);
                  }

                  ++v30;
                }

                while (v28 != v30);
                v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v69, v83, 16);
                if (v28)
                {
                  continue;
                }

                break;
              }
            }

LABEL_34:

            v10 = v63;
            v3 = v64;
            v9 = v65;
            v21 = v67;
          }
        }
      }

      v57 = objc_msgSend_saveOrInsert_(*(*(a1 + 40) + 40), v19, v12);

      if (v57)
      {
        break;
      }

      if (++v11 == v9)
      {
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v73, v84, 16);
        if (v9)
        {
          goto LABEL_6;
        }

        goto LABEL_38;
      }
    }
  }

  else
  {
LABEL_38:
    v57 = 0;
  }

  v60 = *MEMORY[0x277D85DE8];

  return v57;
}

void sub_22511F8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22511F8F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 56);
      v16 = v13;
      v17 = NSStringFromSelector(v15);
      *buf = 138412546;
      v23 = v14;
      v24 = 2114;
      v25 = v17;
      _os_log_error_impl(&dword_22506F000, v16, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache startTrackingGetAssetHandles:operationType:error:]_block_invoke", "CKDAssetCache.m", 1476, "0 && already dropped");
  }

  v4 = *(*(a1 + 32) + 40);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_22511FABC;
  v18[3] = &unk_278546048;
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v19 = v5;
  v20 = v7;
  v21 = v6;
  v9 = objc_msgSend_performTransaction_(v4, v8, v18);
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *MEMORY[0x277D85DE8];
}

id sub_22511FABC(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = *(a1 + 32);
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v2, &v49, v55, 16);
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v50;
    *&v4 = 138412290;
    v46 = v4;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v50 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v49 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v13 = objc_msgSend_itemID(v9, v11, v12);

        if (v13)
        {
          v40 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v40, v41, *(a1 + 48), *(a1 + 40), @"CKDAssetCache.m", 1480, @"Expected nil itemID");
        }

        objc_msgSend_setStatus_(v9, v14, &unk_2838C81A8, v46);
        v18 = objc_msgSend_fileSignature(v9, v16, v17);

        if (!v18)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v21 = *MEMORY[0x277CBC828];
          if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
          {
            *buf = v46;
            v54 = v9;
            _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Look at assetHandle %@", buf, 0xCu);
          }
        }

        v22 = objc_msgSend_fileSignature(v9, v19, v20);

        if (!v22)
        {
          v42 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v23, v24);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v42, v43, *(a1 + 48), *(a1 + 40), @"CKDAssetCache.m", 1488, @"nil assetHandle.fileSignature");
        }

        v25 = *(*(a1 + 40) + 40);
        v26 = objc_msgSend_fileSignature(v9, v23, v24);
        v48 = v6;
        v28 = objc_msgSend_interruptedAssetWithSignature_error_(v25, v27, v26, &v48);
        v29 = v48;

        if (v29)
        {

          objc_autoreleasePoolPop(v10);
          v6 = v29;
          goto LABEL_24;
        }

        if (v28)
        {
          v32 = objc_msgSend_itemID(v28, v30, v31);
          objc_msgSend_setItemID_(v9, v33, v32);

          v36 = objc_msgSend_chunkCount(v28, v34, v35);
          objc_msgSend_setChunkCount_(v9, v37, v36);

          objc_msgSend_updateUsingObject_(*(*(a1 + 40) + 40), v38, v9);
        }

        else
        {
          objc_msgSend_insertObject_(*(*(a1 + 40) + 40), v30, v9);
        }
        v6 = ;

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v5 != v8);
      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v39, &v49, v55, 16);
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_24:

  v44 = *MEMORY[0x277D85DE8];

  return v6;
}

void sub_22511FEDC(uint64_t a1, const char *a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 48);
      v17 = v14;
      v18 = NSStringFromSelector(v16);
      *buf = 138412546;
      v22 = v15;
      v23 = 2114;
      v24 = v18;
      _os_log_error_impl(&dword_22506F000, v17, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache updateLastAccessTimeForUUID:]_block_invoke", "CKDAssetCache.m", 1520, "0 && already dropped");
  }

  v4 = objc_alloc_init(CKDAssetHandle);
  v7 = objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6);
  objc_msgSend_setLastUsedTime_(v4, v8, v7);

  v9 = *(a1 + 40);
  v19 = @"UUID";
  v20 = v9;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, &v20, &v19, 1);
  objc_msgSend_setProperties_valuesToStore_inEntriesMatching_label_error_predicate_(*(*(a1 + 32) + 40), v12, &unk_2838C8D48, v4, v11, off_27D719A18, 0, &unk_28385C520);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2251203A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2251203D0(uint64_t a1, const char *a2, uint64_t a3)
{
  v41 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 32);
      v28 = *(a1 + 56);
      v29 = v26;
      v30 = NSStringFromSelector(v28);
      *buf = 138412546;
      v38 = v27;
      v39 = 2114;
      v40 = v30;
      _os_log_error_impl(&dword_22506F000, v29, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache stopTrackingAssetHandlesByItemIDs:]_block_invoke", "CKDAssetCache.m", 1540, "0 && already dropped");
  }

  v4 = objc_opt_new();
  v31 = objc_opt_new();
  v5 = objc_alloc_init(CKDAssetHandle);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = *(a1 + 40);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v32, v36, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v33;
    do
    {
      v13 = 0;
      do
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v32 + 1) + 8 * v13);
        if (objc_msgSend_unsignedLongLongValue(v14, v9, v10))
        {
          objc_msgSend_setItemID_(v5, v9, v14);
          objc_msgSend_setStatus_(v5, v15, &unk_2838C8118);
          v17 = objc_msgSend_saveStatus_(*(*(a1 + 32) + 40), v16, v5);
          v18 = *(*(a1 + 48) + 8);
          v19 = *(v18 + 40);
          *(v18 + 40) = v17;

          sub_22511BBF0(v4, v14);
          if (*(*(*(a1 + 48) + 8) + 40))
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v20 = *MEMORY[0x277CBC828];
            if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
            {
              v23 = *(*(*(a1 + 48) + 8) + 40);
              *buf = 138543618;
              v38 = v14;
              v39 = 2114;
              v40 = v23;
              _os_log_error_impl(&dword_22506F000, v20, OS_LOG_TYPE_ERROR, "Failed to stop tracking asset files with itemID %{public}@: %{public}@", buf, 0x16u);
            }

            v21 = *(*(a1 + 48) + 8);
            v22 = *(v21 + 40);
            *(v21 + 40) = 0;
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v32, v36, 16);
    }

    while (v11);
  }

  objc_msgSend_unregisterItemsAndDeleteUnregisteredAssetHandlesWithIDs_deleteUnregisteredAssetHandlesWithIDs_(*(a1 + 32), v24, v4, v31);
  v25 = *MEMORY[0x277D85DE8];
}

void sub_22512092C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_225120950(uint64_t a1, const char *a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 32);
      v25 = *(a1 + 56);
      v26 = v23;
      v27 = NSStringFromSelector(v25);
      *buf = 138412546;
      v30 = v24;
      v31 = 2114;
      v32 = v27;
      _os_log_error_impl(&dword_22506F000, v26, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache findAssetHandleForItemID:error:]_block_invoke", "CKDAssetCache.m", 1584, "0 && already dropped");
  }

  v5 = *(*(a1 + 32) + 40);
  v6 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v4, *(a1 + 64));
  v7 = *(*(a1 + 48) + 8);
  obj = *(v7 + 40);
  v9 = objc_msgSend_entryWithPrimaryKey_error_(v5, v8, v6, &obj);
  objc_storeStrong((v7 + 40), obj);
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *MEMORY[0x277CBC878];
  v13 = *MEMORY[0x277CBC880];
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v12);
    }

    v14 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 64);
      *buf = 134217984;
      v30 = v15;
      v16 = "Unable to find asset handle with itemID:%llu";
      v17 = v14;
      v18 = 12;
LABEL_12:
      _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, v16, buf, v18);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v12);
    }

    v19 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 64);
      v22 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 134218242;
      v30 = v21;
      v31 = 2112;
      v32 = v22;
      v16 = "Found asset handle with itemID:%llu %@";
      v17 = v19;
      v18 = 22;
      goto LABEL_12;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_22512117C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225121194(uint64_t a1, const char *a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v25 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 32);
      v27 = *(a1 + 56);
      v28 = v25;
      v29 = NSStringFromSelector(v27);
      *buf = 138412546;
      v33 = v26;
      v34 = 2114;
      v35 = v29;
      _os_log_error_impl(&dword_22506F000, v28, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache assetHandleWithCachedPath:]_block_invoke", "CKDAssetCache.m", 1653, "0 && already dropped");
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v30 = 0;
  v31 = 0;
  v7 = objc_msgSend_parseCachedPath_assetHandleUUID_assetSignature_(v5, v4, v6, &v31, &v30);
  v8 = v31;
  v9 = v30;
  v12 = v9;
  if (v7)
  {
    if (!v8 || !v9)
    {
      v23 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v23, v24, *(a1 + 56), *(a1 + 32), @"CKDAssetCache.m", 1657, @"should have thrown by now");
    }

    v13 = objc_msgSend_assetHandleWithUUID_(*(*(a1 + 32) + 40), v10, v8);
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v16 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 40);
      v19 = v16;
      v22 = objc_msgSend_CKSanitizedPath(v18, v20, v21);
      *buf = 138543362;
      v33 = v22;
      _os_log_error_impl(&dword_22506F000, v19, OS_LOG_TYPE_ERROR, "Attempt to find asset by path that is not parsable %{public}@", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_225121840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_225121858(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_insertObject_(*(*(a1 + 32) + 40), a2, *(a1 + 40));
  if (!v3)
  {
    v6 = objc_msgSend_itemID(*(a1 + 40), v4, v5);
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(a1 + 56);
    v12 = objc_msgSend_unsignedLongLongValue(*(a1 + 48), v10, v11);
    v15 = objc_msgSend_unsignedLongLongValue(*(*(*(a1 + 64) + 8) + 40), v13, v14);
    v3 = (*(v9 + 16))(v9, v12, v15);
  }

  return v3;
}

void sub_225121990(uint64_t a1, const char *a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 32);
      v22 = *(a1 + 40);
      v24 = v21;
      v25 = NSStringFromSelector(v22);
      *buf = 138412546;
      v34 = v23;
      v35 = 2114;
      v36 = v25;
      _os_log_error_impl(&dword_22506F000, v24, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache _scheduleEvictionForDownloadedFiles]_block_invoke", "CKDAssetCache.m", 1716, "0 && already dropped");
  }

  isEvictionScheduled = objc_msgSend_isEvictionScheduled(*(a1 + 32), v4, v5);
  v7 = *MEMORY[0x277CBC878];
  v8 = *MEMORY[0x277CBC880];
  if (isEvictionScheduled)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v9 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v14 = objc_msgSend_applicationBundleID(v10, v12, v13);
      *buf = 138543362;
      v34 = v14;
      _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Not scheduling redundant downloads eviction for %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v15 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
    {
      v26 = *(a1 + 32);
      v27 = v15;
      v30 = objc_msgSend_applicationBundleID(v26, v28, v29);
      *buf = 138543362;
      v34 = v30;
      _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Scheduling downloads eviction for %{public}@", buf, 0xCu);
    }

    objc_msgSend_setIsEvictionScheduled_(*(a1 + 32), v16, 1);
    objc_initWeak(buf, *(a1 + 32));
    v17 = MEMORY[0x277CBEBB8];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_225121CCC;
    v31[3] = &unk_2785460E8;
    objc_copyWeak(&v32, buf);
    v19 = objc_msgSend_scheduledTimerWithTimeInterval_repeats_block_(v17, v18, 0, v31, 10.0);
    objc_destroyWeak(&v32);
    objc_destroyWeak(buf);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_225121CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225121CCC(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained && (objc_msgSend_didDrop(WeakRetained, v5, v6) & 1) == 0)
  {
    if (objc_msgSend_isEvictionScheduled(v7, v8, v9))
    {
      v10 = objc_autoreleasePoolPush();
      v11 = [CKDAssetCacheEvictionInfo alloc];
      v13 = objc_msgSend_initWithForced_(v11, v12, 0);
      v15 = objc_msgSend__evictWithEvictionInfo_(v7, v14, v13);
      objc_msgSend_unregisterItemIDsAndDeleteAssetHandlesWithEvictionInfo_(v7, v16, v13);
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v17 = *MEMORY[0x277CBC828];
      if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
      {
        v20 = v17;
        v23 = objc_msgSend_applicationBundleID(v7, v21, v22);
        v28 = 138543362;
        v29 = v23;
        _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Completed unregister for evicted downloads for %{public}@", &v28, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v18 = *MEMORY[0x277CBC828];
      if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
      {
        v24 = v18;
        v27 = objc_msgSend_applicationBundleID(v7, v25, v26);
        v28 = 138543362;
        v29 = v27;
        _os_log_debug_impl(&dword_22506F000, v24, OS_LOG_TYPE_DEBUG, "Scheduled downloads eviction cancelled for %{public}@", &v28, 0xCu);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}