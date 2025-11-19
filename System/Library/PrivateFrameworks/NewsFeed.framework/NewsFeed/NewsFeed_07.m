char *sub_1D5BF2A70(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D5B5A7F0(0, &qword_1EDF19A10, &type metadata for FeedGap, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D5BF2BB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  sub_1D5BF6A80(0, v2, 0);
  v3 = v17;
  if (v2)
  {
    for (i = a1 + 32; ; i += 40)
    {
      sub_1D5B68374(i, v16);
      sub_1D5B49474(0, &qword_1EDF41FC0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v5 = v13;
      v6 = v15;
      v17 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1D5BF6A80((v7 > 1), v8 + 1, 1);
        v5 = v13;
        v6 = v15;
        v3 = v17;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 56 * v8;
      *(v9 + 32) = v11;
      *(v9 + 40) = v12;
      *(v9 + 48) = v5;
      *(v9 + 64) = v14 & 1;
      *(v9 + 72) = v6;
      if (!--v2)
      {
        return v3;
      }
    }

    sub_1D69DDEA4(0, 0, 0, 0, 0, 0, 0);
    return 0;
  }

  return v3;
}

uint64_t sub_1D5BF2D30@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D5EC3B8C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);
    v9 += 32;
    v12 = *(v9 + 32);
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = *(v9 + 16);
    *(a2 + 32) = v12;
    *(a2 + 40) = *(v9 + 40);
    result = memmove(v9, (v9 + 56), 56 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D5BF2DDC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x12)
  {
  }

  return result;
}

uint64_t sub_1D5BF2DF0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_1D725AA4C() == v2 && v4 == v3)
  {

    v7 = 0;
  }

  else
  {
    v6 = sub_1D72646CC();

    v7 = v6 ^ 1;
  }

  return v7 & 1;
}

uint64_t sub_1D5BF2EA8(uint64_t a1)
{
  v2 = type metadata accessor for FeedLayoutCacheKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5BF2F04(uint64_t a1)
{
  v2 = type metadata accessor for FeedLayoutCacheKey();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v25 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v25 - v13;
  v15 = *(a1 + 16);
  v16 = sub_1D5C19444(&qword_1EDF387A0, type metadata accessor for FeedLayoutCacheKey);
  result = MEMORY[0x1DA6FA1E0](v15, v2, v16);
  v18 = 0;
  v26 = result;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 64);
  for (i = (v19 + 63) >> 6; v21; result = sub_1D5BF2EA8(v10))
  {
    v23 = v18;
LABEL_9:
    v24 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    sub_1D5C1948C(*(a1 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v14);
    sub_1D5C194F0(v14, v6);
    sub_1D5BE699C(v10, v6);
  }

  while (1)
  {
    v23 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v23 >= i)
    {

      return v26;
    }

    v21 = *(a1 + 64 + 8 * v23);
    ++v18;
    if (v21)
    {
      v18 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t FeedLayoutCache.commit(seenCacheKeys:fixedKey:)(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for FeedLayoutCacheKey();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 48);
  *&v41[32] = *(a2 + 32);
  *&v41[48] = v10;
  *&v41[64] = *(a2 + 64);
  v11 = *(a2 + 16);
  *v41 = *a2;
  *&v41[16] = v11;
  v12 = *(v2 + 16);
  v13 = sub_1D725B7FC();
  v14 = sub_1D5BF2F04(v13);
  if (*(a1 + 16) <= *(v14 + 16) >> 3)
  {
    v40 = v14;
    sub_1D683669C(a1);
    v17 = v40;
  }

  else
  {
    v15 = sub_1D5BF3520(a1, v14);
    v17 = v15;
  }

  v18 = &v36;
  MEMORY[0x1EEE9AC00](v15, v16);
  *(&v36 - 2) = v41;
  v20 = *(v17 + 32);
  v21 = ((1 << v20) + 63) >> 6;
  v22 = 8 * v21;
  if ((v20 & 0x3Fu) > 0xD)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v37 = v21;
    v38 = v18;
    v39 = v12;
    v36 = &v36;
    MEMORY[0x1EEE9AC00](v19, v22);
    v24 = &v36 - ((v23 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v24, v23);
    v25 = 0;
    v21 = 0;
    v26 = 1 << *(v17 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v17 + 56);
    v12 = (v26 + 63) >> 6;
    while (v28)
    {
      v29 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
LABEL_16:
      v18 = v29 | (v21 << 6);
      sub_1D5BE8E40(*(v17 + 48) + *(v6 + 72) * v18, v9, type metadata accessor for FeedLayoutCacheKey);
      if (*(v9 + 10) == *v41 && (vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(v9 + 88), *&v41[8]), vceqq_f64(*(v9 + 104), *&v41[24])), vuzp1q_s32(vceqq_f64(*(v9 + 120), *&v41[40]), vceqq_f64(*(v9 + 136), *&v41[56]))))) & 1) != 0)
      {
        sub_1D5BEA830(v9, type metadata accessor for FeedLayoutCacheKey);
        *&v24[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
        if (__OFADD__(v25++, 1))
        {
          __break(1u);
LABEL_21:
          sub_1D5BF4BE0(v24, v37, v25, v17);
          goto LABEL_22;
        }
      }

      else
      {
        sub_1D5BEA830(v9, type metadata accessor for FeedLayoutCacheKey);
      }
    }

    v30 = v21;
    while (1)
    {
      v21 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v21 >= v12)
      {
        goto LABEL_21;
      }

      v31 = *(v17 + 56 + 8 * v21);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v28 = (v31 - 1) & v31;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_24:
    v34 = v22;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v22 = v34;
  }

  v35 = swift_slowAlloc();
  sub_1D6EC0968(v35, v21, v17, sub_1D6EC1204);

  MEMORY[0x1DA6FD500](v35, -1, -1);
LABEL_22:
  sub_1D725B80C();
}

uint64_t sub_1D5BF3520(uint64_t a1, uint64_t a2)
{
  v190 = *MEMORY[0x1E69E9840];
  sub_1D6E17484(0, qword_1EDF38750, type metadata accessor for FeedLayoutCacheKey);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v140 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v139 - v10;
  v164 = type metadata accessor for FeedLayoutCacheKey();
  MEMORY[0x1EEE9AC00](v164, v12);
  v170 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v143 = &v139 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v139 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  *&v163.f64[0] = &v139 - v24;
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v139 = 0;
  v26 = a1 + 56;
  v25 = *(a1 + 56);
  v27 = -1 << *(a1 + 32);
  v155 = ~v27;
  if (-v27 < 64)
  {
    v28 = ~(-1 << -v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & v25;
  v141 = (63 - v27) >> 6;
  v153 = (v23 + 56);
  v154 = v23;
  v152 = (v23 + 48);
  v182 = (a2 + 56);

  v31 = 0;
  v147 = xmmword_1D728D640;
  v180 = a2;
  v151 = a1;
  v150 = a1 + 56;
  for (i = v11; ; v11 = i)
  {
    v32 = v29;
    v33 = v31;
    if (v29)
    {
LABEL_15:
      v2 = (v32 - 1) & v32;
      sub_1D5BE8D70(*(a1 + 48) + v154[9] * (__clz(__rbit64(v32)) | (v33 << 6)), v11, type metadata accessor for FeedLayoutCacheKey);
      v37 = 0;
      v35 = v33;
    }

    else
    {
      v34 = v141 <= (v31 + 1) ? v31 + 1 : v141;
      v35 = v34 - 1;
      v36 = v31;
      while (1)
      {
        v33 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          __break(1u);
          goto LABEL_130;
        }

        if (v33 >= v141)
        {
          break;
        }

        v32 = *(v26 + 8 * v33);
        ++v36;
        if (v32)
        {
          goto LABEL_15;
        }
      }

      v2 = 0;
      v37 = 1;
    }

    v38 = v164;
    v149 = *v153;
    v149(v11, v37, 1, v164);
    v185 = a1;
    v186 = v26;
    v187 = v155;
    v188 = v35;
    v189 = v2;
    v148 = *v152;
    if (v148(v11, 1, v38) == 1)
    {
      sub_1D6E174D8(v11, qword_1EDF38750, type metadata accessor for FeedLayoutCacheKey);
      goto LABEL_127;
    }

    v159 = v2;
    v160 = v35;
    v39 = v163.f64[0];
    sub_1D5BF49C4(v11, *&v163.f64[0], type metadata accessor for FeedLayoutCacheKey);
    sub_1D7264A0C();
    v40 = **&v39;
    v41 = *(*&v39 + 8);
    v42 = *(*&v39 + 16);
    v43 = *(*&v39 + 24);
    v44 = *(*&v39 + 32);
    v45 = *(*&v39 + 40);
    v46 = *(*&v39 + 48);
    v169 = *(*&v39 + 56);
    v47 = *(*&v39 + 72);
    v168 = *(*&v39 + 64);
    v167.f64[0] = v47;
    v183 = v40;
    v179 = v41;
    sub_1D72621EC();
    v177 = v42;
    v174 = v43;
    sub_1D72621EC();
    v173 = v44;
    v172 = v45;
    sub_1D72621EC();
    MEMORY[0x1DA6FC0B0](*(v46 + 16));
    v171 = v46;
    v48 = *(v46 + 16);
    if (v48)
    {
      v49 = v171 + 40;
      do
      {

        sub_1D72621EC();

        v49 += 16;
        --v48;
      }

      while (v48);
    }

    sub_1D72621EC();
    sub_1D5BE251C(v184, *&v167.f64[0]);
    v50 = v163.f64[0];
    v51 = *(*&v163.f64[0] + 80);
    v166 = *(*&v163.f64[0] + 136);
    v165 = *(*&v163.f64[0] + 120);
    v162 = *(*&v163.f64[0] + 104);
    v161 = *(*&v163.f64[0] + 88);
    v158 = v51;
    MEMORY[0x1DA6FC0B0]();
    sub_1D5BE7138(v161.f64[0], v161.f64[1]);
    sub_1D5BE7138(v162.f64[0], v162.f64[1]);
    v52 = v165.f64[0];
    if (v165.f64[0] == 0.0)
    {
      v52 = 0.0;
    }

    MEMORY[0x1DA6FC0E0](*&v52);
    v53 = v165.f64[1];
    if (v165.f64[1] == 0.0)
    {
      v53 = 0.0;
    }

    MEMORY[0x1DA6FC0E0](*&v53);
    v54 = v166.f64[0];
    if (v166.f64[0] == 0.0)
    {
      v54 = 0.0;
    }

    MEMORY[0x1DA6FC0E0](*&v54);
    v55 = v166.f64[1];
    if (v166.f64[1] == 0.0)
    {
      v55 = 0.0;
    }

    MEMORY[0x1DA6FC0E0](*&v55);
    v56 = (*&v50 + *(v164 + 24));
    sub_1D5BE7138(*v56, v56[1]);
    sub_1D72621EC();
    v57 = type metadata accessor for FeedLayoutCacheDynamicKey();
    v58 = sub_1D725A19C();
    v59 = sub_1D6E169C8(&qword_1EDF3BFB0, MEMORY[0x1E69D7280]);
    v145 = v58;
    v144 = v59;
    sub_1D7261E8C();
    sub_1D7264A2C();
    sub_1D7264A2C();
    v146 = v57;
    v60 = *(v57 + 36);
    v156 = v56;
    sub_1D5BE71D0(v184, *(v56 + v60));
    v61 = sub_1D7264A5C();
    v62 = -1 << *(a2 + 32);
    v31 = v61 & ~v62;
    v35 = v31 >> 6;
    v26 = 1 << v31;
    if (((1 << v31) & v182[v31 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_1D5BEA770(*&v163.f64[0], type metadata accessor for FeedLayoutCacheKey);
    v31 = v160;
    v29 = v159;
    a1 = v151;
    v26 = v150;
  }

  v175 = ~v62;
  v181 = v154[9];
  v157 = (v171 + 40);
  while (1)
  {
    if (sub_1D5BE8D70(*(a2 + 48) + v181 * v31, v20, type metadata accessor for FeedLayoutCacheKey), v63 = *v20, v64 = *(v20 + 8), v2 = *(v20 + 16), v65 = *(v20 + 24), v66 = *(v20 + 32), v67 = *(v20 + 40), v68 = *(v20 + 48), v69 = *(v20 + 56), v70 = *(v20 + 72), v178 = *(v20 + 64), v176 = v70, v63 == v183) && v64 == v179 || (sub_1D72646CC())
    {
      if (v2 == v177 && v65 == v174 || (sub_1D72646CC()) && (v66 == v173 && v67 == v172 || (sub_1D72646CC()))
      {
        v71 = *(v68 + 16);
        if (v71 == *(v171 + 16))
        {
          if (v71 && v68 != v171)
          {
            v72 = (v68 + 40);
            v73 = v157;
            do
            {
              v74 = *(v72 - 1) == *(v73 - 1) && *v72 == *v73;
              if (!v74 && (sub_1D72646CC() & 1) == 0)
              {
                goto LABEL_30;
              }

              v72 += 2;
              v73 += 2;
            }

            while (--v71);
          }

          if (v69 == v169 && v178 == v168 || (sub_1D72646CC()) && (sub_1D5BFC390(v176, *&v167.f64[0]) & 1) != 0 && *(v20 + 80) == v158 && vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(v20 + 88), v161), vceqq_f64(*(v20 + 104), v162)), vuzp1q_s32(vceqq_f64(*(v20 + 120), v165), vceqq_f64(*(v20 + 136), v166))), v147)) == 255 && (sub_1D5C1968C(v20 + *(v164 + 24), v156))
          {
            break;
          }
        }
      }
    }

LABEL_30:
    sub_1D5BEA770(v20, type metadata accessor for FeedLayoutCacheKey);
    v31 = (v31 + 1) & v175;
    v35 = v31 >> 6;
    v26 = 1 << v31;
    a2 = v180;
    if ((v182[v31 >> 6] & (1 << v31)) == 0)
    {
      goto LABEL_6;
    }
  }

  sub_1D5BEA770(v20, type metadata accessor for FeedLayoutCacheKey);
  v75 = sub_1D5BEA770(*&v163.f64[0], type metadata accessor for FeedLayoutCacheKey);
  v2 = v180;
  v77 = *(v180 + 32);
  v20 = ((1 << v77) + 63) >> 6;
  v30 = 8 * v20;
  if ((v77 & 0x3Fu) > 0xD)
  {
    goto LABEL_131;
  }

  while (2)
  {
    i = v20;
    v154 = &v139;
    MEMORY[0x1EEE9AC00](v75, v76);
    v79 = &v139 - ((v78 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v79, v182, v78);
    v80 = *(v2 + 16);
    v81 = *&v79[8 * v35] & ~v26;
    v157 = v79;
    *&v79[8 * v35] = v81;
    v156 = (v80 - 1);
    v82 = v151;
    v31 = v140;
    v83 = v170;
    while (2)
    {
      v20 = v150;
      v84 = v141;
      v26 = v160;
      v35 = v159;
LABEL_66:
      if (v35)
      {
        v85 = v26;
LABEL_76:
        v88 = __clz(__rbit64(v35));
        v89 = (v35 - 1) & v35;
        sub_1D5BE8D70(*(v82 + 48) + (v88 | (v85 << 6)) * v181, v31, type metadata accessor for FeedLayoutCacheKey);
        v90 = 0;
LABEL_77:
        v91 = v164;
        v149(v31, v90, 1, v164);
        v185 = v82;
        v186 = v20;
        v187 = v155;
        v188 = v26;
        v189 = v89;
        if (v148(v31, 1, v91) == 1)
        {
          sub_1D6E174D8(v31, qword_1EDF38750, type metadata accessor for FeedLayoutCacheKey);
          a2 = sub_1D5BF4BE0(v157, i, v156, v2);
          goto LABEL_127;
        }

        v92 = v143;
        sub_1D5BF49C4(v31, v143, type metadata accessor for FeedLayoutCacheKey);
        sub_1D7264A0C();
        v93 = *v92;
        v94 = v92[1];
        v95 = v92[2];
        v96 = v92[3];
        v97 = v92[4];
        v98 = v92[5];
        v99 = v92[6];
        v171 = v92[7];
        v100 = v92[9];
        v169 = v92[8];
        v168 = v100;
        v183 = v93;
        v179 = v94;
        sub_1D72621EC();
        v178 = v95;
        v175 = v96;
        sub_1D72621EC();
        v174 = v97;
        v173 = v98;
        sub_1D72621EC();
        MEMORY[0x1DA6FC0B0](*(v99 + 16));
        v101 = *(v99 + 16);
        v160 = v26;
        v172 = v99;
        if (v101)
        {
          v102 = v99 + 40;
          do
          {

            sub_1D72621EC();

            v102 += 16;
            --v101;
          }

          while (v101);
        }

        v159 = v89;
        sub_1D72621EC();
        sub_1D5BE251C(v184, v168);
        v103 = v143;
        v104 = *(v143 + 80);
        v167 = *(v143 + 136);
        v166 = *(v143 + 120);
        v165 = *(v143 + 104);
        v163 = *(v143 + 88);
        v162.f64[0] = v104;
        MEMORY[0x1DA6FC0B0]();
        sub_1D5BE7138(v163.f64[0], v163.f64[1]);
        sub_1D5BE7138(v165.f64[0], v165.f64[1]);
        v105 = v166.f64[0];
        if (v166.f64[0] == 0.0)
        {
          v105 = 0.0;
        }

        MEMORY[0x1DA6FC0E0](*&v105);
        v106 = v166.f64[1];
        if (v166.f64[1] == 0.0)
        {
          v106 = 0.0;
        }

        MEMORY[0x1DA6FC0E0](*&v106);
        v107 = v167.f64[0];
        if (v167.f64[0] == 0.0)
        {
          v107 = 0.0;
        }

        MEMORY[0x1DA6FC0E0](*&v107);
        v108 = v167.f64[1];
        if (v167.f64[1] == 0.0)
        {
          v108 = 0.0;
        }

        MEMORY[0x1DA6FC0E0](*&v108);
        v109 = (v103 + *(v164 + 24));
        sub_1D5BE7138(*v109, v109[1]);
        sub_1D72621EC();
        v110 = v146;
        sub_1D7261E8C();
        sub_1D7264A2C();
        sub_1D7264A2C();
        v111 = *(v110 + 36);
        v158 = v109;
        sub_1D5BE71D0(v184, *(v109 + v111));
        v112 = sub_1D7264A5C();
        v113 = -1 << *(v2 + 32);
        v114 = v112 & ~v113;
        v115 = v114 >> 6;
        v116 = 1 << v114;
        if (((1 << v114) & v182[v114 >> 6]) == 0)
        {
LABEL_64:
          sub_1D5BEA770(v143, type metadata accessor for FeedLayoutCacheKey);
          v82 = v151;
          v31 = v140;
          continue;
        }

        v176 = ~v113;
        *&v161.f64[0] = v172 + 40;
        while (2)
        {
          sub_1D5BE8D70(*(v2 + 48) + v114 * v181, v83, type metadata accessor for FeedLayoutCacheKey);
          v117 = *v83;
          v118 = *(v83 + 8);
          v119 = v83;
          v121 = *(v83 + 16);
          v120 = *(v83 + 24);
          v122 = v119[4];
          v123 = v119[5];
          v125 = v119[6];
          v124 = v119[7];
          v126 = v119[8];
          v177 = v119[9];
          if (v117 == v183 && v118 == v179 || (sub_1D72646CC()) && (v121 == v178 && v120 == v175 || (sub_1D72646CC()) && (v122 == v174 && v123 == v173 || (sub_1D72646CC()))
          {
            v127 = *(v125 + 16);
            if (v127 == *(v172 + 16))
            {
              v2 = v180;
              if (!v127 || v125 == v172)
              {
LABEL_114:
                v83 = v170;
                if (v124 == v171 && v126 == v169 || (sub_1D72646CC()) && (sub_1D5BFC390(v177, v168) & 1) != 0 && *(v83 + 80) == *&v162.f64[0] && vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(v83 + 88), v163), vceqq_f64(*(v83 + 104), v165)), vuzp1q_s32(vceqq_f64(*(v83 + 120), v166), vceqq_f64(*(v83 + 136), v167))), v147)) == 255 && (sub_1D5C1968C(v83 + *(v164 + 24), v158))
                {
                  sub_1D5BEA770(v83, type metadata accessor for FeedLayoutCacheKey);
                  sub_1D5BEA770(v143, type metadata accessor for FeedLayoutCacheKey);
                  v131 = v157[v115];
                  v157[v115] = v131 & ~v116;
                  v74 = (v131 & v116) == 0;
                  v82 = v151;
                  v31 = v140;
                  v20 = v150;
                  v84 = v141;
                  v26 = v160;
                  v35 = v159;
                  if (!v74)
                  {
                    v132 = v156 - 1;
                    if (__OFSUB__(v156, 1))
                    {
                      __break(1u);
                    }

                    v156 = (v156 - 1);
                    if (!v132)
                    {

                      a2 = MEMORY[0x1E69E7CD0];
                      goto LABEL_127;
                    }
                  }

                  goto LABEL_66;
                }
              }

              else
              {
                v128 = (v125 + 40);
                v129 = v161.f64[0];
                while (1)
                {
                  v130 = *(v128 - 1) == *(*&v129 - 8) && *v128 == **&v129;
                  if (!v130 && (sub_1D72646CC() & 1) == 0)
                  {
                    break;
                  }

                  v128 += 2;
                  *&v129 += 16;
                  if (!--v127)
                  {
                    goto LABEL_114;
                  }
                }

LABEL_92:
                v83 = v170;
              }

              sub_1D5BEA770(v83, type metadata accessor for FeedLayoutCacheKey);
              v114 = (v114 + 1) & v176;
              v115 = v114 >> 6;
              v116 = 1 << v114;
              if ((v182[v114 >> 6] & (1 << v114)) == 0)
              {
                goto LABEL_64;
              }

              continue;
            }
          }

          break;
        }

        v2 = v180;
        goto LABEL_92;
      }

      break;
    }

    if (v84 <= v26 + 1)
    {
      v86 = v26 + 1;
    }

    else
    {
      v86 = v84;
    }

    v87 = v86 - 1;
    while (1)
    {
      v85 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v85 >= v84)
      {
        v89 = 0;
        v90 = 1;
        v26 = v87;
        goto LABEL_77;
      }

      v35 = *(v20 + 8 * v85);
      ++v26;
      if (v35)
      {
        v26 = v85;
        goto LABEL_76;
      }
    }

LABEL_130:
    __break(1u);
LABEL_131:
    v134 = v30;

    v135 = v134;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v136 = swift_slowAlloc();
  memcpy(v136, v182, v135);
  v137 = v139;
  sub_1D6E15F80(v136, v20, v2, v31, &v185);
  a2 = v138;

  if (v137)
  {

    result = MEMORY[0x1DA6FD500](v136, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x1DA6FD500](v136, -1, -1);
LABEL_127:
    sub_1D5B87E38();
    return a2;
  }

  return result;
}

uint64_t sub_1D5BF49C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BF4A2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BF4A94(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = 16 * (v9 | (v4 << 6));
    v13 = (*(v3 + 48) + v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = (*(v3 + 56) + v12);
    v17 = *v16;
    v18 = v16[1];

    v19 = sub_1D5B69D90(v14, v15);
    v21 = v20;

    if (v21)
    {
      v22 = (*(a2 + 56) + 16 * v19);
      if (*v22 == v17 && v22[1] == v18)
      {
        continue;
      }
    }

    return 0;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5BF4BE0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FeedLayoutCacheKey();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1D5BCA088();
  result = sub_1D7263CDC();
  v13 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_16:
    sub_1D5BE8E40(*(a4 + 48) + *(v9 + 72) * (v17 | (v16 << 6)), v12, type metadata accessor for FeedLayoutCacheKey);
    result = sub_1D5BD5B18(v12, v13);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    if (!a3)
    {
LABEL_18:

      return v13;
    }
  }

  v18 = v16;
  while (1)
  {
    v16 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      goto LABEL_18;
    }

    v19 = a1[v16];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1D5BF4D9C()
{
  result = qword_1EDF3C970;
  if (!qword_1EDF3C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C970);
  }

  return result;
}

unint64_t sub_1D5BF4DF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void))
{
  v7 = v5;
  v12 = *v5;
  result = sub_1D5B69D90(a2, a3);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_1D5BF4F60(v18, a4 & 1, a5);
      result = sub_1D5B69D90(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_1D726493C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_1D5C18360(a5);
      result = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    *(v23[7] + 8 * result) = a1;
    return result;
  }

  v23[(result >> 6) + 8] |= 1 << result;
  v24 = (v23[6] + 16 * result);
  *v24 = a2;
  v24[1] = a3;
  *(v23[7] + 8 * result) = a1;
  v25 = v23[2];
  v17 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23[2] = v26;
}

uint64_t sub_1D5BF4F60(uint64_t a1, char a2, void (*a3)(void))
{
  v4 = v3;
  v6 = *v3;
  a3(0);
  v35 = a2;
  result = sub_1D726410C();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      result = sub_1D7264A5C();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

void sub_1D5BF51F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5BF525C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5BF52C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for EngagementBannerViewLayout.Context()
{
  result = qword_1EDF23950;
  if (!qword_1EDF23950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5BF5378()
{
  v1 = *(*v0 + 64);

  return v1;
}

uint64_t (*sub_1D5BF53AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12))()
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v17 = sub_1D725EB5C();
  v67 = *(v17 - 8);
  v68 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v66 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v65 = &v51 - v22;
  v61 = sub_1D725E9DC();
  v58 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v23);
  v60 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a7;
  *&v70 = a7;
  *(&v70 + 1) = a8;
  v59 = a8;
  v55 = a11;
  v71 = a11;
  v72 = a12;
  v56 = a12;
  v25 = sub_1D725D34C();
  v52 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v51 - v27;
  *&v70 = a5;
  *(&v70 + 1) = a6;
  v53 = a9;
  v71 = a9;
  v72 = a10;
  v54 = a10;
  v29 = sub_1D725FACC();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = &v51 - v32;
  if (swift_conformsToProtocol2() && a6 && swift_conformsToProtocol2() && a5)
  {
    if (sub_1D725E21C())
    {
      if (qword_1EDF1BB68 != -1)
      {
        swift_once();
      }

      sub_1D7262EDC();
      sub_1D725C30C();
      return nullsub_1;
    }

    else
    {
      *&v70 = a5;
      *(&v70 + 1) = a6;
      v71 = v57;
      v72 = v59;
      v73 = v53;
      v74 = v54;
      v75 = v55;
      v76 = v56;
      type metadata accessor for FeedAdPipelineProcessorTask();
      v35 = v12[5];
      v57 = v12[4];
      v59 = v35;
      sub_1D5B68374((v12 + 6), &v70);
      v56 = v12[11];
      sub_1D5B68374((v12 + 12), v69);
      v36 = v12[17];
      (*(v30 + 16))(v33, v62, v29);
      (*(v52 + 16))(v28, v63, v25);
      v37 = v60;
      (*(v58 + 16))(v60, v64, v61);
      swift_allocObject();
      v38 = sub_1D5C19CF8(v57, v59, &v70, v56, v69, v36, v33, v28, v37);
      swift_unknownObjectWeakLoadStrong();
      *(v38 + 3) = v12[3];
      swift_unknownObjectWeakAssign();

      swift_unknownObjectRelease();
      v39 = v65;
      sub_1D725E20C();
      v41 = v66;
      v40 = v67;
      v42 = v68;
      (*(v67 + 104))(v66, *MEMORY[0x1E69D81B0], v68);
      v43 = sub_1D725EB4C();
      v44 = *(v40 + 8);
      v44(v41, v42);
      v44(v39, v42);
      v45 = 0;
      v46 = 0;
      if (v43)
      {
        v45 = sub_1D5C19EE8();
        v46 = v47;
      }

      v48 = swift_allocObject();
      *(v48 + 16) = v45;
      *(v48 + 24) = v46;
      v49 = swift_allocObject();
      *(v49 + 16) = v48;
      *(v49 + 24) = v38;
      return sub_1D5C0DBC8;
    }
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5BF5A1C()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5BF5A5C()
{

  return swift_deallocObject();
}

void sub_1D5BF5A9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5BF5B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BF5B8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1D6997840(0, v1, 0);
  v2 = v24;
  v3 = a1 + 64;
  result = sub_1D7263B7C();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v22 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(v6 + 36);
    v11 = *(*(v6 + 56) + (v5 << 6) + 16);
    v13 = *(v24 + 16);
    v12 = *(v24 + 24);

    if (v13 >= v12 >> 1)
    {
      result = sub_1D6997840((v12 > 1), v13 + 1, 1);
    }

    *(v24 + 16) = v13 + 1;
    *(v24 + 8 * v13 + 32) = v11;
    v8 = 1 << *(v6 + 32);
    if (v5 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 64;
    v14 = *(a1 + 64 + 8 * v10);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(v6 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v8 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v22;
    }

    else
    {
      v16 = v10 << 6;
      v17 = v10 + 1;
      v18 = (a1 + 72 + 8 * v10);
      v9 = v22;
      while (v17 < (v8 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_1D5C25E1C(v5, v23, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_1D5C25E1C(v5, v23, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1D5BF5DC4@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v11 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v11);
    v11 = result;
  }

  v13 = *(v11 + 16);
  if (v13 <= a1)
  {
    __break(1u);
  }

  else
  {
    v14 = v13 - 1;
    v15 = *(a3(0) - 8);
    v16 = *(v15 + 72);
    v17 = v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v16 * a1;
    result = sub_1D5BF5F04(v17, a5, a4);
    if (v16 > 0 || v17 >= v17 + v16 + v16 * (v14 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v16)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    *(v11 + 16) = v14;
    *v5 = v11;
  }

  return result;
}

uint64_t sub_1D5BF5F04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BF5F6C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v23 = result;
    v24 = a3;
    v22 = v5;
    while (v7 < *(v4 + 16))
    {
      sub_1D5B68374(v8, v28);
      v10 = v6(v28);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_1(v28);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_1D5B63F14(v28, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5BD0BA0(0, *(v9 + 16) + 1, 1);
          v9 = v29;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1D5BD0BA0((v12 > 1), v13 + 1, 1);
        }

        v14 = v26;
        v15 = v27;
        v16 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
        v17 = MEMORY[0x1EEE9AC00](v16, v16);
        v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v20 + 16))(v19, v17);
        sub_1D5BD0BE4(v13, v19, &v29, v14, v15);
        result = __swift_destroy_boxed_opaque_existential_1(v25);
        v9 = v29;
        v6 = v23;
        v4 = v24;
        v5 = v22;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(v28);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v9;
  }

  return result;
}

void sub_1D5BF61BC()
{
  if (!qword_1EDF1A310)
  {
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A310);
    }
  }
}

uint64_t sub_1D5BF621C()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0x656D617266;
  }
}

uint64_t sub_1D5BF6258@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D725A36C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeedBannerAdViewLayout.Attributes(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeedBannerAdViewLayout.Context(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s2AdV5BoundVMa();
  sub_1D5BF038C(v1 + *(v16 + 24), v15, type metadata accessor for FeedBannerAd);
  v17 = v1 + *(v16 + 20);
  v18 = type metadata accessor for GroupLayoutContext();
  v19 = v17 + *(v18 + 24);
  v36 = *(*(v17 + *(v18 + 40)) + 24);
  v37 = v15;
  v38 = v19;
  (*(v4 + 104))(v7, *MEMORY[0x1E69D7378], v3);
  sub_1D5C17E54();
  swift_allocObject();

  sub_1D725A4CC();

  sub_1D725A4DC();

  sub_1D5BF662C(0, &qword_1EDF19A30, MEMORY[0x1E69E6F90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7273AE0;
  sub_1D5EF31B8();
  v22 = v21;
  v23 = *v11;
  v34 = *(v11 + 1);
  v35 = v23;
  v24 = swift_allocBox();
  v26 = v25;
  v27 = *(v22 + 48);
  sub_1D5BF038C(v15, v25, type metadata accessor for FeedBannerAdViewLayout.Context);
  v28 = *(v8 + 20);
  v29 = sub_1D7260C5C();
  (*(*(v29 - 8) + 16))(v26 + v27, &v11[v28], v29);
  *(v20 + 32) = v24 | 0x3000000000000000;
  *a1 = 0;
  v30 = v35;
  *(a1 + 24) = v34;
  *(a1 + 8) = v30;
  v39 = v20;
  sub_1D5BF662C(0, &qword_1EDF1B4C8, MEMORY[0x1E69E62F8]);
  sub_1D5C184C4();
  sub_1D5BDEFF8();
  v31 = sub_1D72623BC();
  sub_1D5BE786C(v11, type metadata accessor for FeedBannerAdViewLayout.Attributes);

  v32 = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = v31;
  *(a1 + 48) = v32;
  return sub_1D5BE786C(v15, type metadata accessor for FeedBannerAdViewLayout.Context);
}

void sub_1D5BF662C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for FeedItemLayoutAttributes);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D5BF6680(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x12)
  {
  }

  return result;
}

double sub_1D5BF6694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for GroupLayoutBindingContext();
  v9 = *(v8 + 56);
  v10 = *(v3 + v9);
  v11 = *(v10 + 16);

  v29 = a2;
  if (v11 && (v12 = sub_1D5BCF83C(0x70614764656546, 0xE700000000000000, a2, a3), (v13 & 1) != 0))
  {
    v14 = *(*(v10 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5BF69B4(a1, &v30);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1D5BDEE24(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1D5BDEE24((v15 > 1), v16 + 1, 1, v14);
  }

  v31 = &type metadata for FeedGap;
  v17 = sub_1D5BF1C9C();
  v32 = v17;
  v18 = swift_allocObject();
  *&v30 = v18;
  v19 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = *(a1 + 48);
  v14[2] = v16 + 1;
  sub_1D5B63F14(&v30, &v14[5 * v16 + 4]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v30 = *(v4 + v9);
  sub_1D5BCF690(v14, 0x70614764656546, 0xE700000000000000, v29, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v9) = v30;
  v21 = swift_allocObject();
  v22 = *(a1 + 16);
  *(v21 + 16) = *a1;
  *(v21 + 32) = v22;
  *(v21 + 48) = *(a1 + 32);
  *(v21 + 64) = *(a1 + 48);
  v23 = *(v8 + 60);
  v24 = *(v4 + v23);
  sub_1D5BF69B4(a1, &v30);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_1D5BCFD9C(0, *(v24 + 2) + 1, 1, v24);
  }

  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1D5BCFD9C((v25 > 1), v26 + 1, 1, v24);
  }

  *(v24 + 2) = v26 + 1;
  v27 = &v24[72 * v26];
  *(v27 + 4) = 0x70614764656546;
  *(v27 + 5) = 0xE700000000000000;
  *(v27 + 6) = v29;
  *(v27 + 7) = a3;
  *(v27 + 8) = v21;
  result = *&v30;
  *(v27 + 72) = v30;
  *(v27 + 11) = &type metadata for FeedGap;
  *(v27 + 12) = v17;
  *(v4 + v23) = v24;
  return result;
}

uint64_t sub_1D5BF696C()
{

  if (*(v0 + 64) >= 0x12uLL)
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1D5BF6A10()
{
  result = qword_1EDF33E28;
  if (!qword_1EDF33E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33E28);
  }

  return result;
}

char *sub_1D5BF6A80(char *a1, int64_t a2, char a3)
{
  result = sub_1D5BF2A70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t FeedLayoutSolver.cursor(session:log:feedKind:feedContext:columnSystem:layoutOptions:solverOptions:)(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v65 = a8;
  v73 = a6;
  v68 = a5;
  v66 = a3;
  v75 = *v9;
  v12 = v75;
  sub_1D5BFCA6C(0, qword_1EDF34CA0, type metadata accessor for FeedContext);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v78 = &v63 - v15;
  v71 = type metadata accessor for FeedContext();
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v16);
  v76 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FeedLayoutSolverOptions(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v79 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1D7259F5C();
  v21 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v22);
  v81 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v12 + 80);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v63 - v28;
  v30 = sub_1D7259CFC();
  v80 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v63 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v63 - v36;
  v64 = *a4;
  v77 = a7;
  sub_1D7259D0C();
  v38 = *(v25 + 16);
  v39 = v9 + *(*v9 + 96);
  v73 = v29;
  v67 = v24;
  v38(v29, v39, v24);
  sub_1D5B68374(v9 + *(*v9 + 104), &v86);
  v40 = *(v80 + 16);
  v70 = v33;
  v40(v33, v37, v30);
  v41 = v77;
  (*(v21 + 16))(v81, v77, v63);
  sub_1D5BE6528(v65, v79, type metadata accessor for FeedLayoutSolverOptions);
  v42 = (v9 + *(*v9 + 112));
  v43 = v42[3];
  v44 = v42[4];
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v77 = (*(v44 + 8))(v37, v41, v43, v44);
  sub_1D5B68374(v9 + *(*v9 + 120), &v85);
  v45 = v66;
  v74 = v30;
  v72 = v37;
  if (v66)
  {
    v46 = v66;
    v47 = v76;
    v48 = v78;
  }

  else
  {
    v47 = v76;
    v48 = v78;
    if (qword_1EDF1BB50 != -1)
    {
      swift_once();
    }

    v46 = qword_1EDFFC828;
  }

  v84 = v64;
  sub_1D5D4C27C(v68, v48, qword_1EDF34CA0, type metadata accessor for FeedContext);
  v49 = *(v69 + 48);
  v50 = v71;
  if (v49(v48, 1, v71) == 1)
  {
    v51 = *(v9 + *(*v9 + 136) + 8);
    ObjectType = swift_getObjectType();
    v53 = v45;
    v54 = ObjectType;
    v55 = v78;
    FeedContextFactoryType.createFeedContext()(v54, v51);
    v56 = v49(v55, 1, v50);
    v57 = v73;
    v58 = v70;
    if (v56 != 1)
    {
      sub_1D5BF00B8(v55, qword_1EDF34CA0, type metadata accessor for FeedContext);
    }
  }

  else
  {
    sub_1D5BE66EC(v48, v47, type metadata accessor for FeedContext);
    v59 = v45;
    v57 = v73;
    v58 = v70;
  }

  type metadata accessor for FeedLayoutSolver.Cursor();
  sub_1D5B68374(v9 + *(*v9 + 128), v83);
  sub_1D5B68374(v9 + *(*v9 + 144), v82);
  v60 = sub_1D5BF796C(MEMORY[0x1E69E7CC0]);
  v61 = swift_allocObject();
  sub_1D5BF7590(v57, &v86, MEMORY[0x1E69E7CD0], 0, 0, v58, v81, v79, v77, &v85, v46, v60, &v84, v47, v83, v82, 0);
  (*(v80 + 8))(v72, v74);
  return v61;
}

uint64_t sub_1D5BF72BC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1D5B5D924(0, &qword_1EDF33290, type metadata accessor for BundleSession);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5BF73A0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1D7259CFC();
    if (v2 <= 0x3F)
    {
      result = sub_1D7259F5C();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for FeedLayoutSolverOptions(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for FeedContext();
          if (v5 <= 0x3F)
          {
            return swift_initClassMetadata2();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D5BF7590(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, __int128 *a15, __int128 *a16, char a17)
{
  v35 = *a13;
  (*(*(*(*v17 + 80) - 8) + 32))(v17 + *(*v17 + 96), a1);
  sub_1D5B63F14(a2, v17 + *(*v17 + 104));
  *(v17 + *(*v17 + 200)) = a3;
  *(v17 + *(*v17 + 208)) = a4;
  *(v17 + *(*v17 + 216)) = a5;
  v25 = *(*v17 + 112);
  v26 = sub_1D7259CFC();
  (*(*(v26 - 8) + 32))(v17 + v25, a6, v26);
  v27 = *(*v17 + 120);
  v28 = sub_1D7259F5C();
  (*(*(v28 - 8) + 32))(v17 + v27, a7, v28);
  *(v17 + *(*v17 + 136)) = a9;
  sub_1D5BE6528(a8, v17 + *(*v17 + 128), type metadata accessor for FeedLayoutSolverOptions);
  sub_1D5B63F14(a10, v17 + *(*v17 + 144));
  *(v17 + *(*v17 + 168)) = a11;
  *(v17 + *(*v17 + 160)) = a12;
  *(v17 + *(*v17 + 176)) = v35;
  sub_1D5BE66EC(a14, v17 + *(*v17 + 184), type metadata accessor for FeedContext);
  sub_1D5B63F14(a15, v17 + *(*v17 + 192));
  sub_1D5B63F14(a16, v17 + *(*v17 + 224));
  *(v17 + *(*v17 + 232)) = a17;
  v29 = *a8;
  v30 = *(a8 + 8);
  v31 = *(a8 + 16);
  sub_1D5BE67B4(a8, type metadata accessor for FeedLayoutSolverOptions);
  if (v31 == 1)
  {
    v32 = v17 + *(*v17 + 152);
    *v32 = 0;
    *(v32 + 8) = 0;
    if (v29 | v30)
    {
      *(v32 + 24) = 0;
      *(v32 + 16) = 0;
    }

    else
    {
      *(v32 + 16) = 0;
      *(v32 + 24) = 1;
    }
  }

  else
  {
    v33 = v17 + *(*v17 + 152);
    *v33 = v29;
    *(v33 + 8) = v30;
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
  }

  return v17;
}

void sub_1D5BF7980(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5BF79E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5BF7A48(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5BF7980(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5BF7AC8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5BF79E4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5BF7B48(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a2;
  v56 = type metadata accessor for FeedItemDimmingType();
  MEMORY[0x1EEE9AC00](v56, v7);
  v55 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a3;
  v52 = *(a3 + 8);
  v9 = v52;
  v11 = *(a3 + 16);
  v12 = *(a3 + 24);
  v13 = *(a3 + 240);
  v71 = *(a3 + 224);
  v72 = v13;
  v73 = *(a3 + 256);
  v14 = *(a3 + 176);
  v67 = *(a3 + 160);
  v68 = v14;
  v15 = *(a3 + 192);
  v70 = *(a3 + 208);
  v69 = v15;
  v16 = *(a3 + 112);
  v63 = *(a3 + 96);
  v64 = v16;
  v17 = *(a3 + 128);
  v66 = *(a3 + 144);
  v65 = v17;
  v18 = *(a3 + 48);
  v59 = *(a3 + 32);
  v60 = v18;
  v19 = *(a3 + 64);
  v62 = *(a3 + 80);
  v61 = v19;
  v20 = *(a3 + 264);
  v21 = *(a3 + 288);
  v75 = *(a3 + 272);
  v76 = v21;
  v22 = [objc_opt_self() clearColor];
  sub_1D726349C();

  v24 = v4[31];
  v23 = v4[32];
  __swift_project_boxed_opaque_existential_1(v4 + 28, v24);
  v50 = *(v23 + 8);
  v25 = MEMORY[0x1E69D8868];
  sub_1D5BB0F34(0, &qword_1EDF33570, MEMORY[0x1E69D8868], type metadata accessor for HeadlineView);
  v27 = v26;
  v53 = v26;
  v54 = sub_1D5BAFA28(qword_1EDF33578, &qword_1EDF33570, v25);
  v50(a1, v27, v54, v24, v23);
  v77 = 1;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0;
  sub_1D5BFDE8C(a1, &v77);
  v28 = v4[11];
  ObjectType = swift_getObjectType();
  *v57 = v10;
  v57[1] = v9;
  *&v57[2] = v11;
  v58 = *&v12;
  v74 = v20;
  v30 = a1;
  v31 = sub_1D725DBEC();
  v32 = v51;
  (*(v28 + 32))(v51, v57, v31, ObjectType, v28);

  [v30 bounds];
  v37 = [objc_opt_self() effectWithRoundedRect:*MEMORY[0x1E69796E8] cornerRadius:v33 curve:{v34, v35, v36, v20}];
  v49 = v30;
  v38 = sub_1D725DBEC();
  v50 = v37;
  [v37 setReferenceView_];

  [v30 setFocusEffect_];
  v39 = v4[51];
  v40 = v4[52];
  __swift_project_boxed_opaque_existential_1(v4 + 48, v39);
  v41 = v32 + *(type metadata accessor for HeadlineViewLayout.Context(0) + 20);
  v42 = v55;
  *v55 = *(v41 + 40);
  swift_storeEnumTagMultiPayload();
  v43 = *(v40 + 8);
  swift_unknownObjectRetain();
  LOBYTE(v38) = v43(v42, v39, v40);
  sub_1D5B88E30(v42, type metadata accessor for FeedItemDimmingType);
  v44 = v4[31];
  v45 = v4[32];
  __swift_project_boxed_opaque_existential_1(v4 + 28, v44);
  v58 = type metadata accessor for FeedHeadline(0);
  *&v59 = sub_1D5C16C60(&qword_1EDF34AD0, type metadata accessor for FeedHeadline);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
  sub_1D5BFDCF8(v41, boxed_opaque_existential_1, type metadata accessor for FeedHeadline);
  (*(v45 + 16))(v57, v49, v38 & 1, v53, v54, v44, v45, v10, COERCE__INT64(*&v52), v11, v12);

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_1D5BF8000(uint64_t a1, _OWORD *a2)
{
  v48 = a1;
  v47 = a2;
  v2 = a2[1];
  v57 = *a2;
  v58 = v2;
  *v59 = a2[2];
  *&v59[9] = *(a2 + 41);
  v53 = sub_1D725E3FC();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v3);
  v50 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725DA6C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v46 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v44 - v11);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v44 - v15);
  v17 = swift_allocObject();
  v18 = sub_1D725E72C();
  v19 = MEMORY[0x1E69D7F58];
  v17[5] = v18;
  v17[6] = v19;
  __swift_allocate_boxed_opaque_existential_1(v17 + 2);
  sub_1D725E71C();
  *v16 = v17;
  v20 = *MEMORY[0x1E69D7AC8];
  v21 = *(v6 + 104);
  v21(v16, v20, v5);
  v22 = swift_allocObject();
  v22[5] = v18;
  v22[6] = v19;
  __swift_allocate_boxed_opaque_existential_1(v22 + 2);
  sub_1D725E71C();
  *v12 = v22;
  v21(v12, v20, v5);
  sub_1D5BFDE94();
  v24 = v23;
  v25 = swift_allocBox();
  v27 = v26;
  v28 = *(v24 + 48);
  v51 = v6;
  v29 = *(v6 + 16);
  v30 = v26;
  v49 = v12;
  v31 = v12;
  v32 = v5;
  v29(v30, v31, v5);
  v29(v27 + v28, v16, v5);
  v33 = v46;
  *v46 = v25;
  v21(v33, *MEMORY[0x1E69D7AD0], v32);
  v34 = v47;
  sub_1D725DBCC();
  v35 = sub_1D725DBBC();
  v36 = *v34;
  if (*v34 >= 2)
  {
    v55[0] = v57;
    v55[1] = v58;
    v56[0] = *v59;
    *(v56 + 9) = *&v59[9];
    sub_1D70710C0(v55, v54);
  }

  else
  {
    v37 = v45[5];
    v38 = v45[6];
    __swift_project_boxed_opaque_existential_1(v45 + 2, v37);
    (*(v38 + 8))(v55, v37, v38);
    v36 = *&v55[0];

    sub_1D5BF85E4(v34, &qword_1EDF2CAF0, &type metadata for FormatCellSelection.Background.Resolved);
  }

  [v35 setBackgroundColor_];

  v39 = sub_1D725DBBC();
  sub_1D725E3DC();

  v40 = sub_1D725DBBC();
  sub_1D725E3EC();

  v41 = sub_1D725DBBC();
  (*(v52 + 104))(v50, *MEMORY[0x1E69D7E88], v53);
  sub_1D725E40C();

  v42 = *(v51 + 8);
  v42(v49, v32);
  return (v42)(v16, v32);
}

uint64_t sub_1D5BF84FC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

id sub_1D5BF855C@<X0>(void *a1@<X2>, void **a2@<X3>, id *a3@<X4>, void **a4@<X8>)
{
  if (*a1 != -1)
  {
    v8 = a3;
    v9 = a4;
    v10 = a2;
    swift_once();
    a2 = v10;
    a4 = v9;
    a3 = v8;
  }

  v4 = *a2;
  v11 = *a3;
  v5 = *a3;
  *a4 = *a2;
  a4[1] = v5;
  v6 = v4;

  return v11;
}

uint64_t sub_1D5BF85E4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D5B5D3A4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5BF8654(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D5BF86B0(void *a1, const void *a2, char *a3)
{
  memcpy(v7, a2, sizeof(v7));
  v5 = type metadata accessor for HeadlineViewLayout.Context(0);
  return sub_1D5BF8710(a1, v7, (a1 + *(v5 + 24)), a3);
}

uint64_t sub_1D5BF8710(void *a1, double *a2, void *a3, char *a4)
{
  v195 = a1;
  v7 = MEMORY[0x1E69E6720];
  sub_1D5BF525C(0, &qword_1EDF3B7E8, MEMORY[0x1E69D75E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v182 = &v166 - v10;
  v11 = type metadata accessor for HeadlineViewLayout.Context(0);
  v172 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v181 = &v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v183 = &v166 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v175 = &v166 - v19;
  v173 = v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v171 = &v166 - v23;
  v169 = type metadata accessor for ImageRequestOptions();
  MEMORY[0x1EEE9AC00](v169, v24);
  v186 = (&v166 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26, v27);
  v193 = (&v166 - v28);
  sub_1D5BF525C(0, &qword_1EDF34AF0, type metadata accessor for FeedHeadline.State, v7);
  *&v31 = MEMORY[0x1EEE9AC00](v29 - 8, v30).n128_u64[0];
  v188 = &v166 - v32;
  v184 = *&a4[qword_1EDF33620];
  [v184 setNumberOfLines_];
  v194 = *&a4[qword_1EDF33610];
  [v194 setNumberOfLines_];
  v33 = *&a4[qword_1EDF33600];
  [v33 setAttributedText_];
  v34 = *&a4[qword_1EDF33630];
  sub_1D725FBBC();
  v35 = *&a4[qword_1EDF33628];
  sub_1D725FBBC();
  v190 = *&a4[qword_1EDF33608];
  [v190 setHidden_];
  type metadata accessor for VideoView();
  v192 = v35;
  v36 = swift_dynamicCastClass();
  if (v36)
  {
    [*(v36 + qword_1EDF1BA28) setHidden_];
  }

  v37 = v184;
  [v184 setFrame_];
  [v194 setFrame_];
  [v192 setFrame_];
  v38 = a2[34];
  v39 = a2[35];
  v40 = a2[36];
  v41 = a2[37];
  v167 = v34;
  [v34 setFrame_];
  v42 = a2[8];
  v43 = a2[9];
  v44 = a2[10];
  v45 = a2[11];
  v168 = v33;
  [v33 setFrame_];
  [v190 setFrame_];
  v46 = a2[24];
  v47 = a2[25];
  v48 = a2[26];
  v49 = a2[27];
  v187 = *&a4[qword_1EDF33638];
  [v187 setFrame_];
  v50 = v195;
  v51 = a3[3];
  v52 = __swift_project_boxed_opaque_existential_1(a3, v51);
  v204[3] = v51;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v204);
  (*(*(v51 - 8) + 16))(boxed_opaque_existential_1, v52, v51);
  v54 = sub_1D5BF9C38(v204);
  __swift_destroy_boxed_opaque_existential_1(v204);
  [v37 setAttributedText_];

  v55 = *(v50 + *(v11 + 32));
  v185 = a4;
  if (v55)
  {
    v56 = a3[3];
    v57 = __swift_project_boxed_opaque_existential_1(a3, v56);
    v204[3] = v56;
    v58 = __swift_allocate_boxed_opaque_existential_1(v204);
    (*(*(v56 - 8) + 16))(v58, v57, v56);
    v55 = sub_1D5BF9C38(v204);
    __swift_destroy_boxed_opaque_existential_1(v204);
  }

  [v194 setAttributedText_];

  v59 = v195;
  v60 = a3[3];
  v61 = __swift_project_boxed_opaque_existential_1(a3, v60);
  v204[3] = v60;
  v62 = __swift_allocate_boxed_opaque_existential_1(v204);
  (*(*(v60 - 8) + 16))(v62, v61, v60);
  v63 = sub_1D5BF9C38(v204);
  __swift_destroy_boxed_opaque_existential_1(v204);
  v64 = v190;
  [v190 setAttributedText_];

  [v64 setHidden_];
  v65 = a3[3];
  v66 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v65);
  (*(v66 + 80))(v192, v65, v66, a2[33]);
  v67 = a3[3];
  v68 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v67);
  v69 = v11;
  v70 = v59 + *(v11 + 20);
  v179 = *(type metadata accessor for FeedHeadline(0) + 40);
  v71 = v188;
  sub_1D5BFA07C(&v70[v179], v188, type metadata accessor for FeedHeadline.State);
  v72 = type metadata accessor for FeedHeadline.State(0);
  v73 = *(v72 - 8);
  v177 = *(v73 + 56);
  v178 = v72;
  v176 = v73 + 56;
  v177(v71, 0, 1);
  (*(v68 + 88))(v187, v71, v67, v68);
  sub_1D5BFA5EC(v71);
  v191 = *(v70 + 5);
  v74 = [v191 articleID];
  v75 = v185;
  [v185 setAccessibilityIdentifier_];

  MEMORY[0x1EEE9AC00](v76, v77);
  sub_1D5BFDF44();
  sub_1D5BFDEFC(qword_1EDF329C8, sub_1D5BFDF44);
  sub_1D72634BC();
  [v75 setIsAccessibilityElement_];
  sub_1D5BF525C(0, &qword_1EDF195A0, sub_1D5B58D88, MEMORY[0x1E69E6F90]);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1D7270C10;
  v170 = v69;
  v79 = a3[3];
  v174 = a3;
  v80 = __swift_project_boxed_opaque_existential_1(a3, v79);
  v204[3] = v79;
  v81 = __swift_allocate_boxed_opaque_existential_1(v204);
  (*(*(v79 - 8) + 16))(v81, v80, v79);
  *(v78 + 32) = sub_1D5BFDFA0(v204);
  *(v78 + 40) = v82;

  __swift_destroy_boxed_opaque_existential_1(v204);
  LOBYTE(v204[0]) = v70[56];
  *(v78 + 48) = sub_1D5BFE2F4();
  *(v78 + 56) = v83;
  sub_1D725CE4C();
  v85 = v84;

  if (v85)
  {
    v86 = sub_1D726203C();
  }

  else
  {
    v86 = 0;
  }

  v87 = v185;
  [v185 setAccessibilityLabel_];

  v88 = v191;
  v89 = [v191 language];
  [v87 setAccessibilityLanguage_];

  [v194 frame];
  if (CGRectIsEmpty(v205))
  {
    v90 = 0;
  }

  else
  {
    v90 = [v88 shortExcerpt];
  }

  [v87 setAccessibilityValue_];

  v91 = *&v87[qword_1EDF33618];
  v92 = *v195;
  v93 = *a2;
  v94 = a2[1];
  v95 = a2[2];
  v96 = a2[3];
  v166 = v189[14];
  sub_1D5BFE544(v91, v92, v166, v93, v94, v95, v96);
  v97 = *(v70 + 2);
  v180 = v70;
  v98 = v70[24];
  v204[0] = v97;
  LOBYTE(v204[1]) = v98;
  sub_1D5BFB840(0, &qword_1EDF19A18, qword_1EDF35078, &protocol descriptor for FeedItemViewLayoutDirectionAdjustable, MEMORY[0x1E69E6F90]);
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_1D7279960;
  *(v99 + 56) = sub_1D725FBCC();
  *(v99 + 64) = &off_1F51E4308;
  v100 = v167;
  *(v99 + 32) = v167;
  v101 = sub_1D5BFE56C();
  *(v99 + 96) = v101;
  *(v99 + 104) = &off_1F51E42F8;
  v102 = v184;
  *(v99 + 72) = v184;
  *(v99 + 136) = v101;
  *(v99 + 144) = &off_1F51E42F8;
  v103 = v190;
  *(v99 + 112) = v190;
  *(v99 + 176) = v101;
  *(v99 + 184) = &off_1F51E42F8;
  v104 = v194;
  *(v99 + 152) = v194;
  *(v99 + 216) = v101;
  *(v99 + 224) = &off_1F51E42F8;
  v105 = v168;
  *(v99 + 192) = v168;
  v167 = v100;
  v106 = v102;
  v107 = v103;
  v108 = v104;
  v109 = v105;
  sub_1D5BFE5B8(v204, v87, v99);
  swift_setDeallocating();
  sub_1D5B49474(0, qword_1EDF35078);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v110 = [objc_opt_self() mainScreen];
  [v110 scale];
  v112 = v111;

  v113 = [v87 traitCollection];
  v114 = *(v169 + 24);
  v115 = sub_1D725CB5C();
  v116 = *(v115 - 1);
  v117 = *(v116 + 56);
  v118 = v193;
  v194 = v115;
  v190 = v117;
  v184 = (v116 + 56);
  (v117)(v193 + v114, 1, 1);
  *v118 = v112;
  v118[1] = v113;
  v119 = type metadata accessor for PublisherLogoProcessorRequest(0);
  v120 = (v195 + *(v170 + 24));
  v121 = v120[3];
  v122 = v120[4];
  v123 = __swift_project_boxed_opaque_existential_1(v120, v121);
  v124 = v186;
  sub_1D5BFA07C(v118, v186, type metadata accessor for ImageRequestOptions);
  v125 = memcpy(v204, a2, 0x130uLL);
  v127 = MEMORY[0x1EEE9AC00](v125, v126);
  v129 = &v166 - v128;
  (*(v130 + 16))(&v166 - v128, v123, v121, v127);
  v131 = *(v122 + 8);
  v132 = swift_unknownObjectRetain_n();
  v133 = sub_1D5BFE7AC(v132, v204, v129, v124, v119, &type metadata for HeadlineViewLayout.Attributes, v121, &protocol witness table for HeadlineViewLayout.Attributes, v131);
  v134 = v133;
  if (v133)
  {
    v133 = sub_1D5BFDEFC(&qword_1EDF20D90, type metadata accessor for PublisherLogoProcessorRequest);
  }

  else
  {
    v119 = 0;
    v204[1] = 0;
    v204[2] = 0;
  }

  v135 = v181;
  v136 = v174;
  v137 = v175;
  v204[0] = v134;
  v204[3] = v119;
  v204[4] = v133;
  v138 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v139 = v171;
  sub_1D5BFA07C(v195, v171, type metadata accessor for HeadlineViewLayout.Context);
  sub_1D5B68374(v136, v203);
  sub_1D5BFA07C(v139, v137, type metadata accessor for HeadlineViewLayout.Context);
  sub_1D5B68374(v203, &v201);
  v140 = v183;
  sub_1D5BFA07C(v139, v183, type metadata accessor for HeadlineViewLayout.Context);
  sub_1D5B68374(v203, v200);
  sub_1D5BFA07C(v139, v135, type metadata accessor for HeadlineViewLayout.Context);
  sub_1D5B68374(v203, v199);
  v141 = (*(v172 + 80) + 24) & ~*(v172 + 80);
  v142 = (v173 + v141 + 7) & 0xFFFFFFFFFFFFFFF8;
  v143 = swift_allocObject();
  *(v143 + 16) = v138;
  sub_1D5C165B8(v139, v143 + v141);
  sub_1D5B63F14(v203, v143 + v142);
  sub_1D5BFED1C(v204, &v196);
  v144 = v197;
  swift_retain_n();
  if (v144)
  {
    sub_1D5BFF260(v137, type metadata accessor for HeadlineViewLayout.Context);
    __swift_destroy_boxed_opaque_existential_1(&v201);
    sub_1D5B63F14(&v196, v198);
    v145 = v189;
    __swift_project_boxed_opaque_existential_1(v189 + 9, v189[12]);
    v146 = sub_1D725D0BC();
    if (v146)
    {
      v147 = v146;
      sub_1D5BFF260(v183, type metadata accessor for HeadlineViewLayout.Context);
      __swift_destroy_boxed_opaque_existential_1(v200);
      sub_1D5C167D4(0, v138, v135, v199);
      v148 = v147;
      sub_1D725FBBC();

      sub_1D5BFF260(v135, type metadata accessor for HeadlineViewLayout.Context);
      __swift_destroy_boxed_opaque_existential_1(v199);

      __swift_destroy_boxed_opaque_existential_1(v198);
    }

    else
    {
      v149 = v183;
      sub_1D5C167D4(1, v138, v183, v200);
      sub_1D725FBBC();
      LODWORD(v195) = [objc_opt_self() areAnimationsEnabled];
      v150 = swift_allocObject();
      swift_weakInit();
      v151 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_1D5BFF260(v149, type metadata accessor for HeadlineViewLayout.Context);
      __swift_destroy_boxed_opaque_existential_1(v200);
      v152 = swift_allocObject();
      *(v152 + 16) = v151;
      *(v152 + 24) = v150;
      *(v152 + 32) = sub_1D6B56804;
      *(v152 + 40) = v143;
      *(v152 + 48) = v195;
      sub_1D725FB6C();

      v145 = v189;
      sub_1D5BFF260(v135, type metadata accessor for HeadlineViewLayout.Context);
      __swift_destroy_boxed_opaque_existential_1(v199);
      __swift_destroy_boxed_opaque_existential_1(v198);
    }
  }

  else
  {
    swift_retain_n();
    sub_1D5C1661C(&v196);
    sub_1D5C167D4(5, v138, v137, &v201);
    sub_1D725FBBC();

    sub_1D5BFF260(v135, type metadata accessor for HeadlineViewLayout.Context);
    __swift_destroy_boxed_opaque_existential_1(v199);

    sub_1D5BFF260(v140, type metadata accessor for HeadlineViewLayout.Context);
    __swift_destroy_boxed_opaque_existential_1(v200);

    sub_1D5BFF260(v137, type metadata accessor for HeadlineViewLayout.Context);
    __swift_destroy_boxed_opaque_existential_1(&v201);

    v145 = v189;
  }

  sub_1D5C1661C(v204);
  v153 = v186;
  sub_1D5BFA07C(v193, v186, type metadata accessor for ImageRequestOptions);
  v154 = v182;
  (v190)(v182, 1, 1, v194);
  memset(v204, 0, 40);
  v155 = sub_1D5BFF2C0(v191, a2, v153, v154, v204);
  v156 = v155;
  if (v155)
  {
    v157 = type metadata accessor for ThumbnailProcessorRequest();
    v155 = sub_1D5BFDEFC(qword_1EDF23E18, type metadata accessor for ThumbnailProcessorRequest);
  }

  else
  {
    v157 = 0;
    v204[1] = 0;
    v204[2] = 0;
  }

  v204[0] = v156;
  v204[3] = v157;
  v204[4] = v155;
  sub_1D5BFED1C(v204, &v201);
  if (v202)
  {
    sub_1D5B63F14(&v201, v203);
    __swift_project_boxed_opaque_existential_1(v145 + 4, v145[7]);
    v158 = sub_1D725D0BC();
    if (v158)
    {
      v159 = v158;
      sub_1D725FBBC();

      __swift_destroy_boxed_opaque_existential_1(v203);
    }

    else
    {
      sub_1D725FBBC();
      v160 = [objc_opt_self() areAnimationsEnabled];
      v161 = swift_allocObject();
      swift_weakInit();
      v162 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v163 = swift_allocObject();
      *(v163 + 16) = v162;
      *(v163 + 24) = v161;
      *(v163 + 32) = 0;
      *(v163 + 40) = 0;
      *(v163 + 48) = v160;

      sub_1D725FB6C();

      __swift_destroy_boxed_opaque_existential_1(v203);
    }
  }

  else
  {
    sub_1D5C1661C(&v201);
    sub_1D725FBBC();
  }

  sub_1D5C1661C(v204);
  v164 = v188;
  sub_1D5BFA07C(&v180[v179], v188, type metadata accessor for FeedHeadline.State);
  (v177)(v164, 0, 1, v178);
  sub_1D5BFFE28(v187, v164);
  sub_1D5BFA5EC(v164);
  return sub_1D5BFF260(v193, type metadata accessor for ImageRequestOptions);
}

uint64_t sub_1D5BF9B68()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5BF9BA0()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t type metadata accessor for ImageRequestOptions()
{
  result = qword_1EDF2B980;
  if (!qword_1EDF2B980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5BF9C38(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D725891C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D7261B9C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = (v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5DA7C();
  *v17 = sub_1D726308C();
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v18 = sub_1D7261BBC();
  result = (*(v14 + 8))(v17, v13);
  if (v18)
  {
    sub_1D5B76E3C(&v2[qword_1EDF347F0], v12);
    v20 = (*(v5 + 48))(v12, 1, v4);
    _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v12);
    if (v20 == 1 || (v21 = *(*v2 + 128), swift_beginAccess(), (*(v5 + 16))(v8, &v2[v21], v4), sub_1D725887C(), v23 = v22, (*(v5 + 8))(v8, v4), v23 >= -60.0))
    {
      v24 = &v2[*(*v2 + 120)];
    }

    else
    {
      (*(v2 + 3))(v26, a1);
      v24 = &v2[*(*v2 + 120)];
      v25 = *v24;
      *v24 = v26[0];

      sub_1D725890C();
      swift_beginAccess();
      (*(v5 + 40))(&v2[v21], v8, v4);
      swift_endAccess();
    }

    return *v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D5BF9F8C(void *a1, double a2)
{
  [a1 setBackgroundColor_];
  v5 = [a1 layer];
  [v5 setCornerRadius_];
}

uint64_t sub_1D5BFA014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BFA07C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D5BFA0E4(void *a1, uint64_t a2)
{
  sub_1D5BF7980(0, &qword_1EDF34AF0, type metadata accessor for FeedHeadline.State, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v20 - v10;
  sub_1D5BF7A48(a2, &v20 - v10, &qword_1EDF34AF0, type metadata accessor for FeedHeadline.State);
  v12 = type metadata accessor for FeedHeadline.State(0);
  v13 = *(*(v12 - 8) + 48);
  if (v13(v11, 1, v12) == 1)
  {
    sub_1D6A5795C(v11, &qword_1EDF34AF0, type metadata accessor for FeedHeadline.State);
    v14 = 2;
  }

  else
  {
    v14 = v11[1];
    sub_1D5BFA590(v11);
  }

  sub_1D5BF7A48(a2, v7, &qword_1EDF34AF0, type metadata accessor for FeedHeadline.State);
  if (v13(v7, 1, v12) == 1)
  {
    sub_1D6A5795C(v7, &qword_1EDF34AF0, type metadata accessor for FeedHeadline.State);
    v15 = 3;
    if (v14 == 2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v15 = *v7;
    sub_1D5BFA590(v7);
    if (v14 == 2)
    {
      goto LABEL_9;
    }
  }

  if ((v14 & 1) == 0)
  {
    v18 = [objc_opt_self() systemOrangeColor];
LABEL_15:
    v17.super.isa = v18;
    goto LABEL_16;
  }

LABEL_9:
  if ((v15 - 2) < 2)
  {
    [a1 setTintColor_];
    return;
  }

  if (v15)
  {
    v18 = [objc_opt_self() systemRedColor];
    goto LABEL_15;
  }

  sub_1D5B5A498(0, qword_1EDF1A6A0);
  v16._countAndFlagsBits = 0x433830434335;
  v16._object = 0xE600000000000000;
  v17.super.isa = UIColor.init(hex:)(v16).super.isa;
LABEL_16:
  isa = v17.super.isa;
  [a1 setTintColor_];
}

uint64_t sub_1D5BFA3B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 1) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for FeedItem.SharedState(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5BFA46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 1);
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for FeedItem.SharedState(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5BFA524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedItem();
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

uint64_t sub_1D5BFA590(uint64_t a1)
{
  v2 = type metadata accessor for FeedHeadline.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5BFA5EC(uint64_t a1)
{
  sub_1D5BF525C(0, &qword_1EDF34AF0, type metadata accessor for FeedHeadline.State, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5BFA8DC(uint64_t a1)
{
  v2 = sub_1D7258C0C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_1D5BFB5F8();
    v11 = sub_1D7263CDC();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_1D5BFABF0(&qword_1EDF3C380, MEMORY[0x1E6969AD0]);
      v18 = sub_1D7261E7C();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_1D5BFABF0(&qword_1EDF18A40, MEMORY[0x1E6969AD0]);
          v25 = sub_1D7261FBC();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D5BFABF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5BFAC38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5B5BC8C(0, &qword_1EDF1A590, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E6A10]);
    v3 = sub_1D7263CDC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1D7264A0C();

      sub_1D72621EC();
      result = sub_1D7264A5C();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1D72646CC();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

char *sub_1D5BFAE14()
{
  v0 = sub_1D725891C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7257DEC();
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF1BB20 != -1)
  {
    swift_once();
  }

  v10 = sub_1D7258C2C();
  __swift_project_value_buffer(v10, qword_1EDF1BB28);
  sub_1D5BFB5A0();
  v11 = sub_1D7258C0C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D7273AE0;
  (*(v12 + 104))(v14 + v13, *MEMORY[0x1E6969AB0], v11);
  sub_1D5BFA8DC(v14);
  swift_setDeallocating();
  (*(v12 + 8))(v14 + v13, v11);
  swift_deallocClassInstance();
  sub_1D725890C();
  sub_1D7258B3C();

  (*(v1 + 8))(v4, v0);
  v15 = sub_1D7257DCC();
  if (v16)
  {
    goto LABEL_4;
  }

  if (v15 <= 3)
  {
    switch(v15)
    {
      case 1:
        v34 = sub_1D5B858EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v36 = *(v34 + 2);
        v35 = *(v34 + 3);
        v37 = v36 + 1;
        if (v36 >= v35 >> 1)
        {
          v34 = sub_1D5B858EC((v35 > 1), v36 + 1, 1, v34);
        }

        v38 = v34;
        v39 = v49;
        v40 = "date-day-of-week-sunday";
        break;
      case 2:
        v47 = sub_1D5B858EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v36 = *(v47 + 2);
        v48 = *(v47 + 3);
        v37 = v36 + 1;
        if (v36 >= v48 >> 1)
        {
          v47 = sub_1D5B858EC((v48 > 1), v36 + 1, 1, v47);
        }

        v38 = v47;
        v39 = v49;
        v40 = "date-day-of-week-monday";
        break;
      case 3:
        v25 = sub_1D5B858EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v27 = *(v25 + 2);
        v26 = *(v25 + 3);
        if (v27 >= v26 >> 1)
        {
          v25 = sub_1D5B858EC((v26 > 1), v27 + 1, 1, v25);
        }

        v28 = v25;
        v29 = 0x80000001D73E18C0;
        (*(v50 + 8))(v9, v49);
        result = v28;
        *(v28 + 2) = v27 + 1;
        v30 = &v28[16 * v27];
        v31 = 0xD000000000000018;
        goto LABEL_36;
      default:
LABEL_4:
        (*(v50 + 8))(v9, v49);
        return MEMORY[0x1E69E7CC0];
    }

LABEL_35:
    v29 = (v40 - 32) | 0x8000000000000000;
    (*(v50 + 8))(v9, v39);
    result = v38;
    *(v38 + 2) = v37;
    v30 = &v38[16 * v36];
    v31 = 0xD000000000000017;
    goto LABEL_36;
  }

  if (v15 <= 5)
  {
    if (v15 == 4)
    {
      v41 = sub_1D5B858EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v43 = *(v41 + 2);
      v42 = *(v41 + 3);
      if (v43 >= v42 >> 1)
      {
        v41 = sub_1D5B858EC((v42 > 1), v43 + 1, 1, v41);
      }

      v44 = v41;
      v29 = 0x80000001D73E18A0;
      (*(v50 + 8))(v9, v49);
      result = v44;
      *(v44 + 2) = v43 + 1;
      v30 = &v44[16 * v43];
      v31 = 0xD00000000000001ALL;
      goto LABEL_36;
    }

    v18 = sub_1D5B858EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    v21 = v20 + 1;
    if (v20 >= v19 >> 1)
    {
      v18 = sub_1D5B858EC((v19 > 1), v20 + 1, 1, v18);
    }

    v22 = v18;
    v23 = v49;
    v24 = "date-day-of-week-thursday";
    goto LABEL_22;
  }

  if (v15 == 6)
  {
    v45 = sub_1D5B858EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v36 = *(v45 + 2);
    v46 = *(v45 + 3);
    v37 = v36 + 1;
    if (v36 >= v46 >> 1)
    {
      v45 = sub_1D5B858EC((v46 > 1), v36 + 1, 1, v45);
    }

    v38 = v45;
    v39 = v49;
    v40 = "date-day-of-week-friday";
    goto LABEL_35;
  }

  if (v15 != 7)
  {
    goto LABEL_4;
  }

  v32 = sub_1D5B858EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v20 = *(v32 + 2);
  v33 = *(v32 + 3);
  v21 = v20 + 1;
  if (v20 >= v33 >> 1)
  {
    v32 = sub_1D5B858EC((v33 > 1), v20 + 1, 1, v32);
  }

  v22 = v32;
  v23 = v49;
  v24 = "date-day-of-week-saturday";
LABEL_22:
  v29 = (v24 - 32) | 0x8000000000000000;
  (*(v50 + 8))(v9, v23);
  result = v22;
  *(v22 + 2) = v21;
  v30 = &v22[16 * v20];
  v31 = 0xD000000000000019;
LABEL_36:
  *(v30 + 4) = v31;
  *(v30 + 5) = v29;
  return result;
}

uint64_t sub_1D5BFB480()
{
  v0 = sub_1D7258ABC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7258C2C();
  __swift_allocate_value_buffer(v5, qword_1EDF1BB28);
  __swift_project_value_buffer(v5, qword_1EDF1BB28);
  (*(v1 + 104))(v4, *MEMORY[0x1E6969868], v0);
  sub_1D7258ACC();
  return (*(v1 + 8))(v4, v0);
}

void sub_1D5BFB5A0()
{
  if (!qword_1EDF19B90)
  {
    sub_1D7258C0C();
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19B90);
    }
  }
}

void sub_1D5BFB5F8()
{
  if (!qword_1EDF1A5E8)
  {
    sub_1D7258C0C();
    sub_1D5BFABF0(&qword_1EDF3C380, MEMORY[0x1E6969AD0]);
    v0 = sub_1D7263CEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A5E8);
    }
  }
}

uint64_t sub_1D5BFB704(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D5F572B0(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D5BFB774(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1D5BFB8A8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5BFB7D0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D5C16694(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D5BFB840(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B49474(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D5BFB8A8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D5B49474(255, a3);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D5BFB920(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1D725891C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_1D5B5AFCC(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[16];
    goto LABEL_9;
  }

  sub_1D5B5AB24(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[21];

  return v16(v17, a2, v15);
}

size_t sub_1D5BFBABC(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1D5B5AB24(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_1D5BFBCE4(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1D5B5AB24(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D5BFBEEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x74)
  {
    *result = a2 - 117;
    if (a3 >= 0x75)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x75)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D5BFBF3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x75 && *(a1 + 8))
  {
    return (*a1 + 117);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x74)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D5BFBF8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D5BFBFD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5BFC024(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FormatContent.Resolved();
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
    *(a1 + *(a4 + 68)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D5BFC0F4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1D725891C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_1D5B5AFCC(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[16];
    goto LABEL_7;
  }

  sub_1D5B5AB24(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[21];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1D5BFC2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatContent.Resolved();
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
    v12 = *(a1 + *(a3 + 68));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

char *sub_1D5BFC364(char *a1, int64_t a2, char a3)
{
  result = sub_1D5BE6878(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D5BFC390(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1D7264A0C();

    sub_1D72621EC();
    v16 = sub_1D7264A5C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1D72646CC() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5BFC548(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B5BD94(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5BFC5B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BFC618(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5B5D924(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5BFC674(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BFC6D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BFC734(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B5C040(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5BFC7A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5B5C1C0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5BFC800(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5B5C214(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D5BFC85C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1D5BBDECC(0, a2, a3, MEMORY[0x1E69E6EC8]);
    v5 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1D5B69D90(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
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

void sub_1D5BFC960(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5BFC9B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5BFCA08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5BFCA6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5BFCAC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D5BFCB14()
{
  result = qword_1EDF1AB10;
  if (!qword_1EDF1AB10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF1AB10);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t FeedService.fetchNextGroup(from:)(uint64_t *a1)
{
  v2 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedServiceFetchResult();
  sub_1D725BC0C();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return sub_1D725BA6C();
}

uint64_t sub_1D5BFCCB0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5BFCCF4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D5BFCD74()
{
  result = qword_1EC8906E8;
  if (!qword_1EC8906E8)
  {
    sub_1D5BB028C(255, &qword_1EDF3B5B8, &qword_1EDF33570, MEMORY[0x1E69D8868], qword_1EDF33578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8906E8);
  }

  return result;
}

void sub_1D5BFCDF8()
{
  v0 = sub_1D725DBEC();
  sub_1D726343C();

  v1 = sub_1D725DBEC();
  [v1 setIsAccessibilityElement_];
}

Swift::Void __swiftcall FeedBannerAdIntegrator.integrateBannerAdUpdates(_:)(Swift::OpaquePointer a1)
{
  v3 = sub_1D7261ABC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7261B2C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1._rawValue + 2))
  {
    v18[1] = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8));
    v19 = v11;
    v14 = swift_allocObject();
    v14[2]._rawValue = v1;
    v14[3]._rawValue = a1._rawValue;
    aBlock[4] = sub_1D6AEE2F8;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5B6B06C;
    aBlock[3] = &block_descriptor_76;
    v15 = _Block_copy(aBlock);
    v16 = v1;

    sub_1D7261AEC();
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D5B73830(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
    v17 = MEMORY[0x1E69E7F60];
    sub_1D5B5E220(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D5B6D530(&qword_1EDF1B560, &qword_1EDF1B570, v17);
    sub_1D7263B6C();
    MEMORY[0x1DA6FA730](0, v13, v7, v15);
    _Block_release(v15);
    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v13, v19);
  }
}

uint64_t sub_1D5BFD174()
{

  return swift_deallocObject();
}

uint64_t sub_1D5BFD1D8()
{
  sub_1D5C0E028();

  return swift_deallocClassInstance();
}

uint64_t sub_1D5BFD230()
{
  sub_1D5C0E1D4();

  return swift_deallocClassInstance();
}

uint64_t FeedNativeAdRequester.deinit()
{
  v1 = *(*v0 + 144);
  v2 = sub_1D725FACC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + *(*v0 + 160));

  return v0;
}

void *sub_1D5BFD3A0()
{
  v0 = sub_1D7261ABC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7261B2C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = *(result + *((*MEMORY[0x1E69E7D40] & *result) + 0xA8));
    v11 = result;
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    aBlock[4] = sub_1D6AEF64C;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5B6B06C;
    aBlock[3] = &block_descriptor_13_1;
    v13 = _Block_copy(aBlock);
    v17 = v11;
    sub_1D7261AEC();
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D5B73830(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
    v14 = MEMORY[0x1E69E7F60];
    sub_1D5B5E220(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    v16 = v5;
    sub_1D5B6D530(&qword_1EDF1B560, &qword_1EDF1B570, v14);
    sub_1D7263B6C();
    MEMORY[0x1DA6FA730](0, v9, v4, v13);
    _Block_release(v13);
    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v16);
  }

  return result;
}

uint64_t sub_1D5BFD6D8()
{

  return swift_deallocObject();
}

char *HeadlineView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = qword_1EDF33628;
  v11 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  *(v4 + v10) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v12 = qword_1EDF33620;
  *(v4 + v12) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v13 = qword_1EDF33610;
  *(v4 + v13) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v14 = qword_1EDF33600;
  *(v4 + v14) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v15 = qword_1EDF33630;
  v16 = sub_1D725FBCC();
  *(v4 + v15) = [objc_allocWithZone(v16) initWithFrame_];
  v17 = qword_1EDF33608;
  *(v4 + v17) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v18 = qword_1EDF33618;
  *(v4 + v18) = [objc_allocWithZone(type metadata accessor for DebugButton()) initWithFrame_];
  v19 = qword_1EDF33638;
  *(v4 + v19) = [objc_allocWithZone(v16) initWithFrame_];
  v30.receiver = v4;
  v30.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v30, sel_initWithFrame_, a1, a2, a3, a4);
  v21 = *&v20[qword_1EDF33620];
  v22 = v20;
  [v22 addSubview_];
  [v22 addSubview_];
  v23 = qword_1EDF33628;
  [v22 addSubview_];
  [v22 addSubview_];
  v24 = qword_1EDF33630;
  [v22 addSubview_];
  [v22 addSubview_];
  [v22 addSubview_];
  [v22 addSubview_];
  [*&v22[v23] setContentMode_];
  [*&v22[v23] setAccessibilityIgnoresInvertColors_];
  sub_1D5BFDC08();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D7273AE0;
  v26 = *&v22[v23];
  *(v25 + 56) = v11;
  *(v25 + 32) = v26;
  v27 = v26;
  v28 = sub_1D726265C();

  [v22 setAutomationElements_];

  [*&v22[v24] setAccessibilityIgnoresInvertColors_];
  return v22;
}

void sub_1D5BFDBB4()
{
  if (!qword_1EDF3B450)
  {
    v0 = sub_1D725F68C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B450);
    }
  }
}

void sub_1D5BFDC08()
{
  if (!qword_1EDF3C5D8)
  {
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C5D8);
    }
  }
}

uint64_t type metadata accessor for FormatItemNodeLayoutContext()
{
  result = qword_1EDF225C0;
  if (!qword_1EDF225C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FeedItemDimmingType()
{
  result = qword_1EDF38100;
  if (!qword_1EDF38100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5BFDCF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BFDD60(void *a1)
{
  v2 = v1;
  v4 = *MEMORY[0x1E69E7D40] & *a1;
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  v7 = (v4 + *MEMORY[0x1E69D7B28]);
  v8 = *v7;
  v9 = v7[1];
  (*(v6 + 8))(a1, *v7, v9, v5, v6);
  v10 = v2[10];
  v11 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v10);
  return (*(v11 + 8))(a1, v8, v9, v10, v11);
}

void sub_1D5BFDE94()
{
  if (!qword_1EDF3B640)
  {
    sub_1D725DA6C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF3B640);
    }
  }
}

uint64_t sub_1D5BFDEFC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D5BFDF44()
{
  if (!qword_1EDF329C0)
  {
    sub_1D5C0BF40();
    v0 = type metadata accessor for CellAutomation();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF329C0);
    }
  }
}

uint64_t sub_1D5BFDFA0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D725891C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D7261B9C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = (&v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5DA7C();
  *v17 = sub_1D726308C();
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v18 = sub_1D7261BBC();
  result = (*(v14 + 8))(v17, v13);
  if (v18)
  {
    sub_1D5B76E3C(&v2[qword_1EDF347F0], v12);
    v20 = (*(v5 + 48))(v12, 1, v4);
    _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v12);
    if (v20 == 1 || (v21 = *(*v2 + 128), swift_beginAccess(), (*(v5 + 16))(v8, &v2[v21], v4), sub_1D725887C(), v23 = v22, (*(v5 + 8))(v8, v4), v23 >= -60.0))
    {
      v24 = &v2[*(*v2 + 120)];
    }

    else
    {
      (*(v2 + 3))(&v25, a1);
      v24 = &v2[*(*v2 + 120)];
      *v24 = v25;

      sub_1D725890C();
      swift_beginAccess();
      (*(v5 + 40))(&v2[v21], v8, v4);
      swift_endAccess();
    }

    return *v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5BFE2F4()
{
  v1 = *v0;
  if (v1)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v1 = sub_1D725811C();
  }

  return v1;
}

unint64_t sub_1D5BFE56C()
{
  result = qword_1EDF1A688;
  if (!qword_1EDF1A688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF1A688);
  }

  return result;
}

_BYTE *sub_1D5BFE5B8(_BYTE *result, void *a2, uint64_t a3)
{
  if (result[8] == 1)
  {
    result = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_];
    v4 = result;
    v5 = *(a3 + 16);
    if (!v5)
    {
      return result;
    }
  }

  else
  {
    v4 = *result;
    v5 = *(a3 + 16);
    if (!v5)
    {
      return result;
    }
  }

  v6 = (a3 + 32);
  do
  {
    v7 = v6[3];
    v8 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v7);
    result = (*(v8 + 8))(v4, v7, v8);
    v6 += 5;
    --v5;
  }

  while (v5);
  return result;
}

id sub_1D5BFE6B0(uint64_t a1)
{
  if (a1 == 1)
  {
    result = [v1 contentMode];
    if (result == 8)
    {
      return result;
    }

    v3 = 8;
    goto LABEL_8;
  }

  if (a1)
  {
    result = sub_1D726402C();
    __break(1u);
    return result;
  }

  result = [v1 contentMode];
  if (result != 7)
  {
    v3 = 7;
LABEL_8:

    return [v1 setContentMode_];
  }

  return result;
}

uint64_t sub_1D5BFE7AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a5;
  v50 = a4;
  v15 = type metadata accessor for PublisherLogoProcessorOptions(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v46 = (v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v44 - v20;
  v22 = type metadata accessor for ImageRequestOptions();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58[3] = a6;
  v58[4] = a8;
  v47 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a2, a6);
  v57[3] = a7;
  v57[4] = a9;
  v48 = a9;
  v27 = __swift_allocate_boxed_opaque_existential_1(v57);
  (*(*(a7 - 8) + 32))(v27, a3, a7);
  v28 = [a1 sourceChannel];
  if (v28)
  {
    v29 = v28;
    sub_1D5B68374(v58, v56);
    sub_1D5B68374(v57, v55);
    v30 = v50;
    v45 = v25;
    sub_1D71CE718(v50, v25, type metadata accessor for ImageRequestOptions);
    sub_1D71CE718(v25, v21, type metadata accessor for ImageRequestOptions);
    v21[*(v15 + 20)] = 0;
    sub_1D5B68374(v56, v53);
    sub_1D5B68374(v55, v51);
    v31 = v46;
    sub_1D71CE718(v21, v46, type metadata accessor for PublisherLogoProcessorOptions);
    v32 = __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
    v44[2] = v44;
    v33 = MEMORY[0x1EEE9AC00](v32, v32);
    v35 = v44 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v36 + 16))(v35, v33);
    v37 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
    v44[1] = v44;
    v38 = MEMORY[0x1EEE9AC00](v37, v37);
    v40 = v44 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v41 + 16))(v40, v38);
    v42 = sub_1D71CE780(v29, v35, v40, v31, v49, a6, a7, v47, v48);
    swift_unknownObjectRelease();
    sub_1D5BFECBC(v30, type metadata accessor for ImageRequestOptions);
    sub_1D5BFECBC(v21, type metadata accessor for PublisherLogoProcessorOptions);
    sub_1D5BFECBC(v45, type metadata accessor for ImageRequestOptions);
    __swift_destroy_boxed_opaque_existential_1(v55);
    __swift_destroy_boxed_opaque_existential_1(v56);
    __swift_destroy_boxed_opaque_existential_1(v51);
    __swift_destroy_boxed_opaque_existential_1(v53);
    __swift_destroy_boxed_opaque_existential_1(v57);
    __swift_destroy_boxed_opaque_existential_1(v58);
    result = v42;
    if (v42)
    {
      return result;
    }
  }

  else
  {
    sub_1D5BFECBC(v50, type metadata accessor for ImageRequestOptions);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v57);
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  return 0;
}

uint64_t sub_1D5BFECBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BFED1C(uint64_t a1, uint64_t a2)
{
  sub_1D5C16694(0, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_6Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_42Tm()
{
  v1 = *(type metadata accessor for DateComparison() - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  v3 = sub_1D725891C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t objectdestroy_6Tm_0()
{
  v1 = type metadata accessor for HeadlineViewLayout.Context(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v15 = *(*(v1 - 8) + 64);

  v3 = v0 + v2 + *(v1 + 20);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v4 = type metadata accessor for FeedHeadline(0);
  v5 = v4[10];
  v6 = v3 + v5 + *(type metadata accessor for FeedHeadline.State(0) + 24);
  v7 = type metadata accessor for SharedItem();
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = sub_1D725891C();
    (*(*(v8 - 8) + 8))(v6, v8);

    v9 = *(v7 + 28);
    v10 = sub_1D72585BC();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  v11 = v4[11];
  v12 = sub_1D726045C();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v3 + v11, v12);
  }

  if (*(v3 + v4[12] + 8) >= 0x12uLL)
  {
  }

  if (*(v3 + v4[13]) >= 3uLL)
  {
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + *(v1 + 24));

  __swift_destroy_boxed_opaque_existential_1(v0 + ((v15 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t objectdestroy_6Tm_1()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_6Tm_2()
{

  return swift_deallocObject();
}

uint64_t sub_1D5BFF260(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1D5BFF2C0(void *a1, double *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1D5BFFB80(0, &qword_1EDF3B7E8, MEMORY[0x1E69D75E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v74 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v74 - v20;
  v22 = a2[28];
  v23 = a2[29];
  v25 = a2[30];
  v24 = a2[31];
  v26 = *a3;
  v27 = FCThumbnailForHeadlineMinimumSize();
  if (!v27)
  {
    sub_1D5BFFBE4(a5, &v85, &qword_1EDF3B6B0, sub_1D5C0EEEC);
    if (v87 == 0.0)
    {
      swift_unknownObjectRelease();
      sub_1D5C16B90(a5, &qword_1EDF3B6B0, sub_1D5C0EEEC);
      sub_1D5C16B90(a4, &qword_1EDF3B7E8, MEMORY[0x1E69D75E8]);
      sub_1D6EB3CD4(a3, type metadata accessor for ImageRequestOptions);
      sub_1D5C16B90(&v85, &qword_1EDF3B6B0, sub_1D5C0EEEC);
      return 0;
    }

    v57 = type metadata accessor for ThumbnailProcessorRequest();
    v82 = a1;
    v58 = v57;
    sub_1D5B63F14(&v85, v89);
    sub_1D5B68374(v89, &v85);
    v59 = a5;
    v60 = *(a2 + 32);
    v61 = *(a2 + 33);
    v62 = type metadata accessor for ImageRequestOptions();
    v63 = MEMORY[0x1E69D75E8];
    sub_1D5BFFBE4(a3 + *(v62 + 24), v13, &qword_1EDF3B7E8, MEMORY[0x1E69D75E8]);
    v64 = *&v87;
    v65 = v88;
    v66 = __swift_mutable_project_boxed_opaque_existential_1(&v85, *&v87);
    v41 = sub_1D5F993F0(v66, v60, v13, v22, v23, v25, v24, 0.0, 0.0, 1.0, 1.0, v58, v64, v65, v67, v68, v26, v61);
    swift_unknownObjectRelease();
    sub_1D5C16B90(v59, &qword_1EDF3B6B0, sub_1D5C0EEEC);
    sub_1D5C16B90(a4, &qword_1EDF3B7E8, v63);
    sub_1D6EB3CD4(a3, type metadata accessor for ImageRequestOptions);
    __swift_destroy_boxed_opaque_existential_1(v89);
    v69 = &v85;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v69);
    return v41;
  }

  v77 = v26;
  v79 = v23;
  v80 = a5;
  v81 = a4;
  v78 = v27;
  result = [v27 thumbnailAssetHandle];
  if (result)
  {
    v29 = result;
    v82 = a1;
    [a1 thumbnailFocalFrame];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v75 = v36;
    v38 = *(a2 + 32);
    v83 = *(a2 + 33);
    v39 = *(type metadata accessor for ImageRequestOptions() + 24);
    v40 = MEMORY[0x1E69D75E8];
    v76 = a3;
    sub_1D5BFFBE4(a3 + v39, v21, &qword_1EDF3B7E8, MEMORY[0x1E69D75E8]);
    type metadata accessor for ThumbnailProcessorRequest();
    v41 = swift_allocObject();
    v89[3] = sub_1D5C169F4();
    v89[4] = sub_1D5C169AC(qword_1EDF1AB60, sub_1D5C169F4);
    v89[0] = v29;
    sub_1D5B68374(v89, v41 + 24);
    sub_1D5BFFB80(0, &qword_1EDF19590, sub_1D5C16B18, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    *(inited + 32) = 0x69616E626D756874;
    *(inited + 40) = 0xE90000000000006CLL;
    sub_1D5B68374(v89, inited + 48);
    v43 = v29;
    v44 = sub_1D5BFFC64(inited);
    swift_setDeallocating();
    sub_1D6EB3CD4(inited + 32, sub_1D5C16B18);
    *(v41 + 16) = v44;
    v45 = v22;
    *(v41 + 80) = v22;
    v46 = v79;
    *(v41 + 88) = v79;
    *(v41 + 96) = v25;
    *(v41 + 104) = v24;
    *(v41 + 112) = v31;
    *(v41 + 120) = v33;
    *(v41 + 128) = v35;
    *(v41 + 136) = v37;
    *(v41 + 144) = v77;
    *(v41 + 152) = v38;
    *(v41 + 160) = v83;
    sub_1D5BFFBE4(v21, v41 + OBJC_IVAR____TtC8NewsFeed25ThumbnailProcessorRequest_border, &qword_1EDF3B7E8, v40);
    *&v85 = 0;
    *(&v85 + 1) = 0xE000000000000000;
    sub_1D7263D4C();
    v84 = v85;
    v47 = [v43 uniqueKey];
    v48 = sub_1D726207C();
    v50 = v49;

    MEMORY[0x1DA6F9910](v48, v50);

    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    *&v85 = v45;
    *(&v85 + 1) = v46;
    v86 = v25;
    v87 = v24;
    type metadata accessor for CGRect(0);
    sub_1D7263F9C();
    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    *&v85 = v31;
    *(&v85 + 1) = v33;
    v86 = v35;
    v87 = *&v75;
    sub_1D7263F9C();
    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    v51 = sub_1D7262A9C();
    MEMORY[0x1DA6F9910](v51);

    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    *&v85 = v38;
    type metadata accessor for UIRectCorner(0);
    sub_1D7263F9C();
    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    v52 = sub_1D7262A9C();
    MEMORY[0x1DA6F9910](v52);

    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    sub_1D5BFFBE4(v21, v17, &qword_1EDF3B7E8, v40);
    v53 = sub_1D725CB5C();
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v17, 1, v53) == 1)
    {
      sub_1D5C16B90(v17, &qword_1EDF3B7E8, MEMORY[0x1E69D75E8]);
      v55 = 0xE300000000000000;
      v56 = 7104878;
    }

    else
    {
      v70 = sub_1D725CB4C();
      v55 = v71;
      (*(v54 + 8))(v17, v53);
      v56 = v70;
    }

    MEMORY[0x1DA6F9910](v56, v55);

    swift_unknownObjectRelease();

    v72 = v84;
    sub_1D5C16B90(v80, &qword_1EDF3B6B0, sub_1D5C0EEEC);
    v73 = MEMORY[0x1E69D75E8];
    sub_1D5C16B90(v81, &qword_1EDF3B7E8, MEMORY[0x1E69D75E8]);
    sub_1D6EB3CD4(v76, type metadata accessor for ImageRequestOptions);
    sub_1D5C16B90(v21, &qword_1EDF3B7E8, v73);
    *(v41 + 64) = v72;
    v69 = v89;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_1D5BFFB80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5BFFBE4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5BFFB80(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1D5BFFC64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5BFFDBC(0, &qword_1EDF1A4F0, &qword_1EDF3B6C0, MEMORY[0x1E69D7838], sub_1D5B49474);
    v3 = sub_1D726412C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D5C16A40(v4, &v13, &qword_1EDF1B660, &qword_1EDF3B6C0);
      v5 = v13;
      v6 = v14;
      result = sub_1D5B69D90(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D5B63F14(&v15, v3[7] + 40 * result);
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

void sub_1D5BFFDBC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D726413C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D5BFFE28(uint64_t a1, uint64_t a2)
{
  sub_1D5BF79E4(0, &qword_1EDF34AF0, type metadata accessor for FeedHeadline.State, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v18 - v9;
  sub_1D5BF7AC8(a2, &v18 - v9, &qword_1EDF34AF0, type metadata accessor for FeedHeadline.State);
  v11 = type metadata accessor for FeedHeadline.State(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v10, 1, v11) == 1)
  {
    sub_1D71B1164(v10, &qword_1EDF34AF0, type metadata accessor for FeedHeadline.State);
    v13 = 2;
  }

  else
  {
    v13 = v10[1];
    sub_1D5C16C00(v10, type metadata accessor for FeedHeadline.State);
  }

  sub_1D5BF7AC8(a2, v6, &qword_1EDF34AF0, type metadata accessor for FeedHeadline.State);
  if (v12(v6, 1, v11) == 1)
  {
    sub_1D71B1164(v6, &qword_1EDF34AF0, type metadata accessor for FeedHeadline.State);
    v14 = 3;
    if (v13 == 2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v14 = *v6;
    sub_1D5C16C00(v6, type metadata accessor for FeedHeadline.State);
    if (v13 == 2)
    {
      goto LABEL_9;
    }
  }

  if ((v13 & 1) == 0)
  {
LABEL_10:
    v15 = sub_1D726203C();
    v16 = [objc_opt_self() systemImageNamed_];

    return sub_1D725FBBC();
  }

LABEL_9:
  if ((v14 - 2) >= 2)
  {
    goto LABEL_10;
  }

  return sub_1D725FBBC();
}

void sub_1D5C0010C(void *a1, void *a2, char a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v16 = *MEMORY[0x1E69E7D40] & *a2;
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  (*(v18 + 48))(&v26, v17, v18);
  if (v26 >= 2)
  {
    if (v26 != 2)
    {
      sub_1D5D62440(v26);
      v21 = *(v7 + 5);
      v22 = *(v7 + 6);
      __swift_project_boxed_opaque_existential_1(v7 + 2, v21);
      (*(v22 + 16))(a1, a2, a3 & 1, *(v16 + *MEMORY[0x1E69D7B28]), *(v16 + *MEMORY[0x1E69D7B28] + 8), v21, v22, a4, a5, a6, a7);
    }

    v23 = *(v7 + 15);
    v24 = *(v7 + 16);
    __swift_project_boxed_opaque_existential_1(v7 + 12, v23);
    if ((*(v24 + 168))(v23, v24))
    {
      v25 = sub_1D725DBEC();
      sub_1D6B4D99C(v25, a3 & 1, v8[17]);
    }
  }

  else
  {
    v19 = *(v7 + 10);
    v20 = *(v7 + 11);
    __swift_project_boxed_opaque_existential_1(v7 + 7, v19);
    (*(v20 + 16))(a1, a2, a3 & 1, *(v16 + *MEMORY[0x1E69D7B28]), *(v16 + *MEMORY[0x1E69D7B28] + 8), v19, v20, a4, a5, a6, a7);
  }
}

unint64_t sub_1D5C00308(unint64_t result)
{
  if (result != 2)
  {
    return sub_1D5EE5A94(result);
  }

  return result;
}

uint64_t sub_1D5C00318(uint64_t a1, uint64_t a2, void *a3)
{
  if ((_s8NewsFeed23FeatureAvailabilityTypePAAE019allowFollowingOfEndH16ArticlePublisherSbvg_0() & 1) == 0)
  {
    return 0;
  }

  sub_1D72596FC();
  sub_1D72596DC();
  if (*a3 != -1)
  {
    swift_once();
  }

  v4 = sub_1D72596EC();

  return v4 & 1;
}

uint64_t ArticleEntity.init(from:articleURL:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a2;
  v66 = a1;
  v69 = a3;
  sub_1D5B55180(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v60 = &v59 - v5;
  v6 = sub_1D72585BC();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v61 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D72582BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D7258AAC();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v16 = sub_1D726202C();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v18 = sub_1D72582DC();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v70 = type metadata accessor for ArticleEntity();
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v20);
  v22 = (&v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5BE5D04();
  sub_1D7261FDC();
  sub_1D7258A4C();
  v23 = *MEMORY[0x1E6968DF0];
  v24 = *(v10 + 104);
  v24(v13, v23, v9);
  sub_1D72582EC();
  v67 = sub_1D725738C();
  v22[2] = v67;
  sub_1D7261FDC();
  sub_1D7258A4C();
  v24(v13, v23, v9);
  sub_1D72582EC();
  v65 = sub_1D725738C();
  v22[3] = v65;
  sub_1D5BE5D60();
  sub_1D7261FDC();
  sub_1D7258A4C();
  v24(v13, v23, v9);
  sub_1D72582EC();
  v64 = sub_1D725738C();
  v22[4] = v64;
  sub_1D5BE5DC4();
  sub_1D7261FDC();
  sub_1D7258A4C();
  v24(v13, v23, v9);
  v25 = v66;
  sub_1D72582EC();
  v22[5] = sub_1D725738C();
  v26 = [v25 sourceName];
  if (!v26)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v39 = v71;
    goto LABEL_8;
  }

  v27 = v26;
  v28 = sub_1D726207C();
  v30 = v29;

  v31 = [v25 title];
  if (!v31)
  {
    swift_unknownObjectRelease();

    goto LABEL_7;
  }

  v32 = v31;
  v59 = sub_1D726207C();
  v34 = v33;

  v35 = v71;
  v36 = v60;
  sub_1D5C01058(v71, v60, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v38 = v62;
  v37 = v63;
  if ((*(v62 + 48))(v36, 1, v63) == 1)
  {
    sub_1D5C01134(v35, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    swift_unknownObjectRelease();

    v39 = v36;
LABEL_8:
    sub_1D5C01134(v39, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);

    return (*(v68 + 56))(v69, 1, 1, v70);
  }

  v41 = v61;
  (*(v38 + 32))(v61, v36, v37);
  v42 = v70;
  (*(v38 + 16))(v22 + *(v70 + 36), v41, v37);
  *(v22 + *(v42 + 40)) = v25;
  v43 = [swift_unknownObjectRetain() articleID];
  v44 = sub_1D726207C();
  v46 = v45;

  *v22 = v44;
  v22[1] = v46;
  v47 = v25;
  v72 = v28;
  v73 = v30;
  sub_1D725737C();
  v72 = v59;
  v73 = v34;
  sub_1D725737C();
  v48 = [v25 shortExcerpt];
  if (v48)
  {
    v49 = v48;
    v50 = sub_1D726207C();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0;
  }

  v72 = v50;
  v73 = v52;
  sub_1D725737C();
  v53 = [v47 authors];
  v54 = v62;
  v55 = v71;
  if (v53)
  {
    v56 = v53;
    v57 = sub_1D726267C();
  }

  else
  {
    v57 = 0;
  }

  v72 = v57;
  sub_1D725737C();
  swift_unknownObjectRelease();
  sub_1D5C01134(v55, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  (*(v54 + 8))(v61, v63);
  v58 = v69;
  sub_1D5C16E28(v22, v69);
  (*(v68 + 56))(v58, 0, 1, v70);
  return sub_1D5C16E8C(v22);
}

uint64_t sub_1D5C00C20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5C00C88(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B5446C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5C00D08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5C00D70(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D5B54684(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5C00DDC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D5B546D8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5C00E48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5C00EB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5C00F18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5C00F80(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D5B54E18(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5C00FEC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D5B54F68(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5C01058(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B55180(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5C010D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D6A3ACC4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5C01134(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B55180(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5C011B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5C0125C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t ArticleEntity.displayRepresentation.getter()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1D5B55180(0, &qword_1EDF3C488, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v25 - v3;
  v5 = sub_1D72582DC();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = sub_1D726201C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_1D5B55180(0, &qword_1EDF3C400, MEMORY[0x1E6968E10], v0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v25 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v25 - v19;
  sub_1D725736C();
  if (v29)
  {
    v26 = v20;
    sub_1D726200C();
    sub_1D7261FFC();
    v20 = v26;
    sub_1D7261FEC();

    sub_1D7261FFC();
    sub_1D72582CC();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  (*(v27 + 56))(v16, v21, 1, v28);
  sub_1D5C0D600(v16, v20);
  sub_1D726200C();
  sub_1D7261FFC();
  sub_1D725736C();
  sub_1D7261FEC();

  sub_1D7261FFC();
  sub_1D725736C();
  sub_1D7261FEC();

  sub_1D7261FFC();
  sub_1D72582CC();
  v22 = MEMORY[0x1E6968E10];
  sub_1D5C01058(v20, v12, &qword_1EDF3C400, MEMORY[0x1E6968E10]);
  v23 = sub_1D725744C();
  (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
  sub_1D725746C();
  return sub_1D5C01134(v20, &qword_1EDF3C400, v22);
}

void *FormatLayoutViewDebugger.init(block:)(uint64_t a1, uint64_t a2)
{
  return sub_1D5C016F4(a1, a2, sub_1D5BEE8B4, sub_1D5BEE8B4, &unk_1F51B17F0, sub_1D6B48928);
}

{
  return sub_1D5C016F4(a1, a2, sub_1D5BEE8B4, sub_1D5BEE8B4, &unk_1F51B1840, sub_1D6B4892C);
}

uint64_t sub_1D5C016B8()
{

  return swift_deallocObject();
}

void *sub_1D5C016F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a3;
  v6[5] = 0;
  v6[6] = a4;
  v6[7] = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v6[2] = a6;
  v6[3] = v10;
  return v6;
}

uint64_t sub_1D5C0176C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439F8);
  result = sub_1D725AA8C();
  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AA8C();
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3B4F8);
  result = sub_1D725AACC();
  if (v5)
  {
    type metadata accessor for HeadlineViewRendererPipelineProcessor();
    v3 = swift_allocObject();
    sub_1D5B63F14(&v8, v3 + 16);
    sub_1D5B63F14(&v6, v3 + 56);
    sub_1D5B63F14(&v4, v3 + 96);
    return v3;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D5C01910@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  sub_1D5C0BFF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7279970;
  *(inited + 32) = 0x72657474696D65;
  *(inited + 40) = 0xE700000000000000;
  v7 = *(v3 + *(a1 + 36));
  v8 = type metadata accessor for FeedGroupEmitter();
  *(inited + 48) = v7;
  *(inited + 72) = v8;
  *(inited + 80) = 0x74757074756FLL;
  *(inited + 88) = 0xE600000000000000;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for FeedGroupEmitterOutput();
  *(inited + 120) = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 96));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v3, v9);
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x80000001D73C96E0;
  v11 = *(v3 + *(a1 + 48));
  *(inited + 168) = MEMORY[0x1E69E63B0];
  *(inited + 144) = v11;

  sub_1D5BE1168(inited);
  swift_setDeallocating();
  sub_1D5BE1388();
  swift_arrayDestroy();
  a2[3] = sub_1D725B0DC();
  a2[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_1D725B0CC();
}

uint64_t FeedGroupEmitterOutput.shortDescription.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D5C01BF8(v2, *(a1 + 16));
  a2[3] = sub_1D725B0DC();
  a2[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_1D725B0CC();
}

unint64_t sub_1D5C01BF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedGroupEmitterEmbeddedOutput();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v40[-v7];
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for FeedGroupEmitterOutput();
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v40[-v17];
  (*(v19 + 16))(&v40[-v17], a1, v14, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        (*(v9 + 32))(v13, v18, a2);
        sub_1D5C0BFF0();
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D7273AE0;
        *(inited + 32) = 0x6F7267207473616CLL;
        *(inited + 40) = 0xEA00000000007075;
        *(inited + 72) = a2;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
        (*(v9 + 16))(boxed_opaque_existential_1, v13, a2);
        v32 = sub_1D5BE1168(inited);
        swift_setDeallocating();
        sub_1D5B88D70(inited + 32, sub_1D5BE1388);
        (*(v9 + 8))(v13, a2);
        return v32;
      }

      sub_1D5BE1404();
      v25 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v9 + 32))(v13, v18, a2);
      sub_1D5C0BFF0();
      v26 = swift_initStackObject();
      v27 = v26;
      *(v26 + 16) = xmmword_1D7273AE0;
      v28 = 1819242352;
    }

    else
    {
      sub_1D5BE1404();
      v25 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v9 + 32))(v13, v18, a2);
      sub_1D5C0BFF0();
      v26 = swift_initStackObject();
      v27 = v26;
      *(v26 + 16) = xmmword_1D7273AE0;
      v28 = 1954047342;
    }

    *(v26 + 32) = v28 | 0x6F72672000000000;
    v30 = v26 + 32;
    *(v26 + 40) = 0xEA00000000007075;
    *(v26 + 72) = a2;
    v31 = __swift_allocate_boxed_opaque_existential_1((v26 + 48));
    (*(v9 + 16))(v31, v13, a2);
    v32 = sub_1D5BE1168(v27);
    swift_setDeallocating();
    sub_1D5B88D70(v30, sub_1D5BE1388);
    (*(v9 + 8))(v13, a2);
    sub_1D5B88D70(v18 + v25, sub_1D5BE1404);
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload != 5)
      {
        sub_1D5B49474(255, qword_1EDF37D80);
        v35 = *(swift_getTupleTypeMetadata2() + 48);
        (*(v5 + 32))(v8, v18, v4);
        sub_1D5C0BFF0();
        v36 = swift_initStackObject();
        *(v36 + 16) = xmmword_1D7273AE0;
        *(v36 + 32) = 0x6465646465626D65;
        *(v36 + 40) = 0xE800000000000000;
        v37 = sub_1D6EB61E4(v4);
        *(v36 + 72) = MEMORY[0x1E69E6158];
        *(v36 + 48) = v37;
        *(v36 + 56) = v38;
        v32 = sub_1D5BE1168(v36);
        swift_setDeallocating();
        sub_1D5B88D70(v36 + 32, sub_1D5BE1388);
        (*(v5 + 8))(v8, v4);
        __swift_destroy_boxed_opaque_existential_1(v18 + v35);
        return v32;
      }

      v21 = *v18;
      v22 = v18[1];
      sub_1D5C0BFF0();
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_1D7273AE0;
      *(v23 + 32) = 0x746572206C6F6F70;
      v29 = v23 + 32;
      *(v23 + 72) = MEMORY[0x1E69E6158];
      *(v23 + 40) = 0xEA00000000007972;
    }

    else
    {
      v21 = *v18;
      v22 = v18[1];
      if (EnumCaseMultiPayload == 3)
      {
        sub_1D5C0BFF0();
        v23 = swift_initStackObject();
        *(v23 + 16) = xmmword_1D7273AE0;
        v24 = 1701736302;
      }

      else
      {
        sub_1D5C0BFF0();
        v23 = swift_initStackObject();
        *(v23 + 16) = xmmword_1D7273AE0;
        v24 = 1885956979;
      }

      *(v23 + 32) = v24;
      v29 = v23 + 32;
      *(v23 + 72) = MEMORY[0x1E69E6158];
      *(v23 + 40) = 0xE400000000000000;
    }

    *(v23 + 48) = v21;
    *(v23 + 56) = v22;
    v32 = sub_1D5BE1168(v23);
    swift_setDeallocating();
    sub_1D5B88D70(v29, sub_1D5BE1388);
  }

  return v32;
}

char *FeedGroupType.shortDescription.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = 0x6574496F73726570;
  sub_1D5C0BFF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7279960;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v8 = *(a2 + 8);
  v9 = sub_1D725AA4C();
  v10 = MEMORY[0x1E69E6158];
  *(inited + 48) = v9;
  *(inited + 56) = v11;
  *(inited + 72) = v10;
  *(inited + 80) = 1684957547;
  *(inited + 88) = 0xE400000000000000;
  v12 = *(a2 + 64);
  *(inited + 120) = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_1((inited + 96));
  v49 = a2;
  v12(a1, a2);
  *(inited + 128) = 0x6574496F73726570;
  *(inited + 136) = 0xEF746E756F43736DLL;
  v13 = *(v8 + 32);
  v14 = v13(a1, v8);
  v50 = inited;
  if (v14 >> 62)
  {
    goto LABEL_30;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {

    v16 = MEMORY[0x1E69E6530];
    *(inited + 144) = v15;
    *(inited + 168) = v16;
    *(inited + 176) = v6;
    *(inited + 184) = 0xEA0000000000736DLL;
    v17 = v13(a1, v8);
    if (v17 >> 62)
    {
      v39 = v17;
      v8 = sub_1D7263BFC();
      v17 = v39;
      if (!v8)
      {
LABEL_32:

        v21 = MEMORY[0x1E69E7CC0];
LABEL_33:
        sub_1D5BBE0A8();
        v50[24] = v21;
        v50[27] = v40;
        v50[28] = 6775156;
        v50[29] = 0xE300000000000000;
        v41 = (*(v49 + 104))(a1);
        if (v41)
        {
          v42 = [v41 identifier];
          swift_unknownObjectRelease();
          v43 = sub_1D726207C();
          v45 = v44;

          v46 = v50 + 30;
          v50[33] = MEMORY[0x1E69E6158];
          if (v45)
          {
            *v46 = v43;
LABEL_38:
            v50[31] = v45;
            sub_1D5BE1168(v50);
            swift_setDeallocating();
            sub_1D5BE1388();
            swift_arrayDestroy();
            a3[3] = sub_1D725B0DC();
            a3[4] = swift_getWitnessTable();
            __swift_allocate_boxed_opaque_existential_1(a3);
            return sub_1D725B0CC();
          }
        }

        else
        {
          v46 = v50 + 30;
          v50[33] = MEMORY[0x1E69E6158];
        }

        *v46 = 7104878;
        v45 = 0xE300000000000000;
        goto LABEL_38;
      }
    }

    else
    {
      v8 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        goto LABEL_32;
      }
    }

    v18 = v17;
    v57 = MEMORY[0x1E69E7CC0];
    result = sub_1D5BFC364(0, v8 & ~(v8 >> 63), 0);
    if (v8 < 0)
    {
      break;
    }

    v47 = a3;
    v48 = a1;
    v20 = 0;
    v21 = v57;
    v22 = v18;
    v53 = v18;
    v54 = v18 & 0xC000000000000001;
    v51 = v18 & 0xFFFFFFFFFFFFFF8;
    v52 = v8;
    a3 = 0xE500000000000000;
    a1 = 0xE400000000000000;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v54)
      {
        v24 = MEMORY[0x1DA6FB460](v20, v22);
      }

      else
      {
        if (v20 >= *(v51 + 16))
        {
          goto LABEL_29;
        }

        v24 = *(v22 + 8 * v20 + 32);
        swift_unknownObjectRetain();
      }

      sub_1D7263D4C();
      v25 = [v24 itemID];
      v26 = sub_1D726207C();
      v28 = v27;

      v55 = v26;
      v56 = v28;
      MEMORY[0x1DA6F9910](0x6D7568547361682CLL, 0xEE003A6C69616E62);
      v29 = [v24 hasThumbnail];
      v30 = v29 == 0;
      if (v29)
      {
        v31 = 1702195828;
      }

      else
      {
        v31 = 0x65736C6166;
      }

      if (v30)
      {
        v32 = 0xE500000000000000;
      }

      else
      {
        v32 = 0xE400000000000000;
      }

      MEMORY[0x1DA6F9910](v31, v32);

      MEMORY[0x1DA6F9910](0x656469567361682CLL, 0xEA00000000003A6FLL);
      v33 = [v24 hasVideo];
      v34 = v33 == 0;
      if (v33)
      {
        v35 = 1702195828;
      }

      else
      {
        v35 = 0x65736C6166;
      }

      if (v34)
      {
        v36 = 0xE500000000000000;
      }

      else
      {
        v36 = 0xE400000000000000;
      }

      MEMORY[0x1DA6F9910](v35, v36);
      swift_unknownObjectRelease();

      v8 = v28;
      v6 = *(v57 + 16);
      v37 = *(v57 + 24);
      v13 = (v6 + 1);
      if (v6 >= v37 >> 1)
      {
        sub_1D5BFC364((v37 > 1), v6 + 1, 1);
      }

      *(v57 + 16) = v13;
      v38 = v57 + 16 * v6;
      *(v38 + 32) = v55;
      *(v38 + 40) = v56;
      ++v20;
      v22 = v53;
      if (v23 == v52)
      {

        a3 = v47;
        a1 = v48;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v15 = sub_1D7263BFC();
    inited = v50;
  }

  __break(1u);
  return result;
}

void sub_1D5C027D4(int *a1, int a2, int a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 64);
  if (v7 <= ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32)
  {
    v7 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (v7 <= 0x10)
  {
    v7 = 16;
  }

  if ((v7 & 0xFFFFFFFFFFFFFFF8) + 48 > v7)
  {
    v7 = (v7 & 0xFFFFFFFFFFFFFFF8) + 48;
  }

  v8 = *(v6 + 80) & 0xF8;
  v9 = v8 | 7;
  v10 = ((v8 + 31) & ~(v8 | 7)) + (((((((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (a3 < 0)
  {
    v12 = a3 - 2147483646;
    if (v10)
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = v13;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_22:
    v14 = a2 & 0x7FFFFFFF;
    if (v10)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14 + 1;
    }

    if (v10)
    {
      bzero(a1, v10);
      *a1 = v14;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }
    }

    else if (v11)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  v11 = 0;
  if (a2 < 0)
  {
    goto LABEL_22;
  }

LABEL_9:
  if (v11 <= 1)
  {
    if (v11)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (v11 == 2)
  {
    *(a1 + v10) = 0;
    goto LABEL_32;
  }

  *(a1 + v10) = 0;
  if (a2)
  {
LABEL_33:
    *((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9) + v7 + 8) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }
}

uint64_t sub_1D5C02A18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D5B6BFD8(0, &qword_1EDF19560, sub_1D5BE1388, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 32) = 0x746C75736572;
  *(inited + 16) = xmmword_1D7279970;
  *(inited + 40) = 0xE600000000000000;
  v6 = *(a1 + 44);
  v7 = type metadata accessor for FeedGroupEmitTaskResult();
  *(inited + 72) = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, &v2[v6], v7);
  strcpy((inited + 80), "rankMultiplier");
  *(inited + 95) = -18;
  v9 = MEMORY[0x1E69E63B0];
  *(inited + 96) = *(v2 + 1);
  *(inited + 120) = v9;
  *(inited + 128) = 0x65726F6373;
  *(inited + 136) = 0xE500000000000000;
  v10 = *v2;
  *(inited + 168) = v9;
  *(inited + 144) = v10;
  sub_1D5BE1168(inited);
  swift_setDeallocating();
  sub_1D5BE1388();
  swift_arrayDestroy();
  a2[3] = sub_1D725B0DC();
  a2[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_1D725B0CC();
}

uint64_t sub_1D5C02BEC()
{
  swift_getWitnessTable();

  return sub_1D725B0BC();
}

uint64_t sub_1D5C02C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedGroupEmitter();
  v10[6] = a1;
  v11 = sub_1D726275C();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = &v11;
  type metadata accessor for FeedScoredResult();
  v6 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  return sub_1D5B874E4(sub_1D5BC2874, v10, v6, &type metadata for FeedJournalGroup, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);
}

uint64_t sub_1D5C02DB8(uint64_t a1, void *a2, void *a3)
{
  v55 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v8 = &v51 - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for FeedGroupEmitterOutput();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v51 - v13;
  v15 = *(type metadata accessor for FeedScoredResult() + 44);
  v16 = *(v11 + 16);
  v54 = a3;
  v16(v14, a3 + v15, v10);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    if (result)
    {
      if (result != 1)
      {
        v29 = *(v53 + 32);
        v29(v8, v14, AssociatedTypeWitness);
        *(a1 + 24) = AssociatedTypeWitness;
        *(a1 + 32) = AssociatedConformanceWitness;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
        result = v29(boxed_opaque_existential_1, v8, AssociatedTypeWitness);
        *(a1 + 40) = *v54;
        v19 = 1;
        goto LABEL_14;
      }

      v20 = MEMORY[0x1E69E7CA0];
      v21 = MEMORY[0x1E69E6720];
      sub_1D5BEE1B8(255, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
      v22 = *(swift_getTupleTypeMetadata2() + 48);
      v23 = *(v53 + 32);
      v23(v8, v14, AssociatedTypeWitness);
      *(a1 + 24) = AssociatedTypeWitness;
      *(a1 + 32) = AssociatedConformanceWitness;
      v24 = __swift_allocate_boxed_opaque_existential_1(a1);
      v23(v24, v8, AssociatedTypeWitness);
      *(a1 + 40) = *v54;
      *(a1 + 64) = 2;
    }

    else
    {
      v20 = MEMORY[0x1E69E7CA0];
      v21 = MEMORY[0x1E69E6720];
      sub_1D5BEE1B8(255, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
      v22 = *(swift_getTupleTypeMetadata2() + 48);
      v26 = *(v53 + 32);
      v26(v8, v14, AssociatedTypeWitness);
      *(a1 + 24) = AssociatedTypeWitness;
      *(a1 + 32) = AssociatedConformanceWitness;
      v27 = __swift_allocate_boxed_opaque_existential_1(a1);
      v26(v27, v8, AssociatedTypeWitness);
      *(a1 + 40) = *v54;
      *(a1 + 64) = 0;
    }

    v28 = v55;
    v55[1] = 0;
    v28[2] = 0;
    *v28 = 0;
    return sub_1D5B88AA0(&v14[v22], &qword_1EDF43B70, v20 + 8, v21, sub_1D5BEE1B8);
  }

  if (result <= 4)
  {
    v18 = *(v14 + 1);
    *a1 = *v14;
    *(a1 + 8) = v18;
    if (result == 3)
    {
      v19 = 6;
    }

    else
    {
      v19 = 5;
    }

    goto LABEL_14;
  }

  if (result == 5)
  {
    v25 = *(v14 + 1);
    *a1 = *v14;
    *(a1 + 8) = v25;
    v19 = 4;
LABEL_14:
    *(a1 + 64) = v19;
    v31 = v55;
    v55[1] = 0;
    v31[2] = 0;
    *v31 = 0;
    return result;
  }

  type metadata accessor for FeedGroupEmitterEmbeddedOutput();
  sub_1D5B49474(255, qword_1EDF37D80);
  v32 = *(swift_getTupleTypeMetadata2() + 48);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v34 = v53;
      (*(v53 + 32))(v8, v14, AssociatedTypeWitness);
      sub_1D5B63F14(&v14[v32], v56);
      *(a1 + 24) = AssociatedTypeWitness;
      *(a1 + 32) = AssociatedConformanceWitness;
      v35 = __swift_allocate_boxed_opaque_existential_1(a1);
      (*(v34 + 16))(v35, v8, AssociatedTypeWitness);
      *(a1 + 40) = *v54;
      *(a1 + 64) = 1;
      v37 = v57;
      v36 = v58;
      __swift_project_boxed_opaque_existential_1(v56, v57);
      v38 = sub_1D725AA4C();
      sub_1D68B497C(v38, v39, v37, v36, v55);

      (*(v34 + 8))(v8, AssociatedTypeWitness);
    }

    else
    {
      v47 = *v14;
      v48 = *(v14 + 1);
      sub_1D5B63F14(&v14[v32], v56);
      *a1 = v47;
      *(a1 + 8) = v48;
      *(a1 + 64) = 6;
      v49 = v57;
      v50 = v58;
      __swift_project_boxed_opaque_existential_1(v56, v57);
      sub_1D68B497C(0, 0, v49, v50, v55);
    }

    return __swift_destroy_boxed_opaque_existential_1(v56);
  }

  else
  {
    v40 = MEMORY[0x1E69E6720];
    sub_1D5BEE1B8(255, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    v52 = *(swift_getTupleTypeMetadata2() + 48);
    v41 = v53;
    (*(v53 + 32))(v8, v14, AssociatedTypeWitness);
    sub_1D5B63F14(&v14[v32], v56);
    *(a1 + 24) = AssociatedTypeWitness;
    *(a1 + 32) = AssociatedConformanceWitness;
    v42 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(v41 + 16))(v42, v8, AssociatedTypeWitness);
    *(a1 + 40) = *v54;
    *(a1 + 64) = 0;
    v43 = v57;
    v44 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v45 = sub_1D725AA4C();
    sub_1D68B497C(v45, v46, v43, v44, v55);

    (*(v41 + 8))(v8, AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_1(v56);
    return sub_1D5B88AA0(&v14[v52], &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, v40, sub_1D5BEE1B8);
  }
}

uint64_t sub_1D5C03588(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D725891C();
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
      sub_1D5B49800(0);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 44);

      return v15(v16, a2, v14);
    }
  }
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
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
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_1D5C03764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v5 = type metadata accessor for FeedGroupEmitterEmbeddedOutput();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v41 - v8;
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FeedGroupEmitterCachedOutput();
  v42 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v41 - v17;
  v19 = type metadata accessor for FeedGroupEmitterOutput();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v10 + 32))(v18, a1, a2);
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 6)
    {
      sub_1D5B49474(255, qword_1EDF37D80);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v28 = *(TupleTypeMetadata2 + 48);
      v29 = *(v6 + 32);
      v29(v9, a1, v5);
      sub_1D5B63F14((a1 + v28), &v43);
      v30 = *(TupleTypeMetadata2 + 48);
      v29(v18, v9, v5);
      sub_1D5B63F14(&v43, &v18[v30]);
      goto LABEL_13;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D5BE1404();
      v34 = swift_getTupleTypeMetadata2();
      v35 = (a1 + *(v34 + 48));
      v36 = *(v10 + 32);
      v36(v14, a1, a2);
      v37 = v35[1];
      v43 = *v35;
      v44 = v37;
      v38 = &v18[*(v34 + 48)];
      v36(v18, v14, a2);
      v39 = v44;
      *v38 = v43;
      *(v38 + 1) = v39;
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5BE1404();
      v21 = swift_getTupleTypeMetadata2();
      v22 = (a1 + *(v21 + 48));
      v23 = *(v10 + 32);
      v23(v14, a1, a2);
      v24 = v22[1];
      v43 = *v22;
      v44 = v24;
      v25 = &v18[*(v21 + 48)];
      v23(v18, v14, a2);
      v26 = v44;
      *v25 = v43;
      *(v25 + 1) = v26;
LABEL_13:
      swift_storeEnumTagMultiPayload();
      v40 = v41;
      (*(v42 + 32))(v41, v18, v15);
      return (*(v42 + 56))(v40, 0, 1, v15);
    }
  }

  (*(*(v19 - 8) + 8))(a1, v19);
  v31 = v41;
  v32 = *(v42 + 56);

  return v32(v31, 1, 1, v15);
}

int *sub_1D5C03BF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = type metadata accessor for FeedScoredResult();
  (*(*(v12 - 8) + 32))(a5, a1, v12);
  result = type metadata accessor for FeedChosenEmitterResult();
  v14 = (a5 + result[9]);
  *v14 = v9;
  v14[1] = v10;
  v14[2] = v11;
  *(a5 + result[10]) = a3;
  *(a5 + result[11]) = a4;
  return result;
}

uint64_t sub_1D5C03CC0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D5C03D00()
{
  *(*v1 + 1080) = v0;

  if (v0)
  {
    v2 = sub_1D6172504;
  }

  else
  {
    v2 = sub_1D5C03E14;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5C03E14()
{
  v424 = v0;
  v1 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);
  v4 = *(v0 + 984);
  v5 = *(v0 + 968);
  v6 = *(v0 + 936);
  v386 = *(*(v0 + 944) + 16);
  v386(v5, *(v0 + 1024), v6);
  v398 = v6;
  v7 = *(v6 + 44);
  v8 = *(v3 + 16);
  v8(v1, v5 + v7, v4);
  v9 = type metadata accessor for FeedGroupEmitTaskResult();
  v409 = *(*(v9 - 8) + 8);
  v409(v5 + v7, v9);
  v8(v2, v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v11 = *(v0 + 1000);
        v12 = v11[1];
        v377 = *v11;
LABEL_43:
        v256 = *(v0 + 1040);
        v397 = *(v0 + 1024);
        v257 = *(v0 + 1016);
        v258 = *(v0 + 576);
        v259 = *(v0 + 528);
        v404 = *(v0 + 480);
        sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v260 = swift_allocObject();
        *(v260 + 16) = xmmword_1D7270C10;
        v261 = MEMORY[0x1E69E6158];
        *(v260 + 56) = MEMORY[0x1E69E6158];
        v262 = sub_1D5B7E2C0();
        *(v260 + 64) = v262;
        *(v260 + 32) = v377;
        *(v260 + 40) = v12;
        *&v422 = 0;
        *(&v422 + 1) = 0xE000000000000000;
        *(v0 + 448) = v256;
        swift_getWitnessTable();
        sub_1D726466C();
        v263 = v422;
        *(v260 + 96) = v261;
        *(v260 + 104) = v262;
        *(v260 + 72) = v263;
        sub_1D7262EDC();
        sub_1D725C30C();

        (*(v257 + 16))(v258, v397, v259);
        (*(v257 + 56))(v258, 0, 1, v259);
        v264 = *(v404 + qword_1EDFFCF30);
        v265 = sub_1D61756CC();
        *(v0 + 1088) = v265;
        v266 = swift_task_alloc();
        *(v0 + 1096) = v266;
        *v266 = v0;
        v266[1] = sub_1D61712D8;
        v55 = *(v0 + 1040);
        v49 = *(v0 + 1032);
        v50 = *(v0 + 576);
        v51 = *(v0 + 488);
        v52 = *(v0 + 472);
        v53 = *(v0 + 480);
        v426 = *(v0 + 496);
        v54 = 0;
        v56 = v264;
        v57 = v265;
        goto LABEL_44;
      }

      v352 = *(v0 + 1040);
      v360 = *(v0 + 1024);
      v64 = *(v0 + 1016);
      v65 = *(v0 + 1000);
      v387 = *(v0 + 984);
      v379 = *(v0 + 568);
      v66 = *(v0 + 528);
      v67 = *(v0 + 480);
      v68 = *v65;
      v69 = v65[1];
      *(v0 + 432) = *(v67 + qword_1EDFFCF30);

      v410 = sub_1D5C06D78(v67, (v0 + 432), 0, v66);
      *(v0 + 1112) = v410;
      sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_1D7270C10;
      v71 = MEMORY[0x1E69E6158];
      *(v70 + 56) = MEMORY[0x1E69E6158];
      v72 = sub_1D5B7E2C0();
      *(v70 + 64) = v72;
      *(v70 + 32) = v68;
      *(v70 + 40) = v69;
      *&v422 = 0;
      *(&v422 + 1) = 0xE000000000000000;
      *(v0 + 440) = v352;
      swift_getWitnessTable();
      sub_1D726466C();
      v73 = v422;
      *(v70 + 96) = v71;
      *(v70 + 104) = v72;
      *(v70 + 72) = v73;
      sub_1D7262EDC();
      sub_1D725C30C();

      (*(v64 + 16))(v379, v360, v66);
      (*(v64 + 56))(v379, 0, 1, v66);
      v74 = sub_1D6EB5F68(v387);
      v75 = *(v0 + 432);
      *(v0 + 1120) = v75;
      v76 = sub_1D61756CC();
      *(v0 + 1128) = v76;
      v77 = swift_task_alloc();
      *(v0 + 1136) = v77;
      *v77 = v0;
      v77[1] = sub_1D6171730;
      v49 = *(v0 + 1032);
      v50 = *(v0 + 568);
      v51 = *(v0 + 488);
      v52 = *(v0 + 472);
      v53 = *(v0 + 480);
      v426 = *(v0 + 496);
      v54 = v74 & 1;
      v55 = v410;
      v56 = v75;
      v57 = v76;
LABEL_44:

      return sub_1D6175760(v52, v50, v54, v55, v56, v57, v53, v49, v51);
    }

    if (EnumCaseMultiPayload == 5)
    {
      v306 = *(v0 + 1040);
      v312 = *(v0 + 1024);
      v31 = *(v0 + 1016);
      v32 = *(v0 + 1000);
      v327 = *(v0 + 984);
      v338 = *(v0 + 968);
      v347 = *(v0 + 936);
      v321 = *(v0 + 560);
      v33 = *(v0 + 528);
      v34 = *(v0 + 480);
      v35 = *v32;
      v301 = v32[1];
      v370 = *(v34 + qword_1EDFFCF30);
      *(v0 + 416) = sub_1D5BE1168(MEMORY[0x1E69E7CC0]);
      v359 = sub_1D5C06D78(v34, (v0 + 416), 1, v33);
      *(v0 + 1152) = v359;

      sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1D7270C10;
      v37 = MEMORY[0x1E69E6158];
      *(v36 + 56) = MEMORY[0x1E69E6158];
      v38 = sub_1D5B7E2C0();
      *(v36 + 64) = v38;
      *(v36 + 32) = v35;
      *(v36 + 40) = v301;
      *&v422 = 0;
      *(&v422 + 1) = 0xE000000000000000;
      *(v0 + 424) = v306;
      swift_getWitnessTable();
      sub_1D726466C();
      v39 = v422;
      *(v36 + 96) = v37;
      *(v36 + 104) = v38;
      *(v36 + 72) = v39;
      sub_1D7262EDC();
      sub_1D725C30C();

      (*(v31 + 16))(v321, v312, v33);
      (*(v31 + 56))(v321, 0, 1, v33);
      v40 = sub_1D6EB5F68(v327);
      sub_1D5BEE1B8(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      swift_allocObject();
      v41 = sub_1D726270C();
      v43 = v42;
      v386(v338, v312, v347);
      v44 = v338 + *(v398 + 44);
      v45 = v9;
      v46 = *(v44 + *(v9 + 36));

      v409(v44, v45);
      *v43 = v46;
      sub_1D5BFCB60(v41);
      v47 = sub_1D726274C();
      *(v0 + 1160) = v47;

      v48 = swift_task_alloc();
      *(v0 + 1168) = v48;
      *v48 = v0;
      v48[1] = sub_1D61718F4;
      v49 = *(v0 + 1032);
      v50 = *(v0 + 560);
      v51 = *(v0 + 488);
      v52 = *(v0 + 472);
      v53 = *(v0 + 480);
      v426 = *(v0 + 496);
      v54 = v40 & 1;
      v55 = v359;
      v56 = v370;
      v57 = v47;
      goto LABEL_44;
    }

    v78 = *(v0 + 1000);
    v79 = *(v0 + 888);
    type metadata accessor for FeedGroupEmitterEmbeddedOutput();
    sub_1D5B49474(255, qword_1EDF37D80);
    v80 = *(swift_getTupleTypeMetadata2() + 48);
    v81 = swift_getEnumCaseMultiPayload();
    if (v81)
    {
      if (v81 != 1)
      {
        v12 = v78[1];
        v377 = *v78;
        __swift_destroy_boxed_opaque_existential_1(v78 + v80);
        goto LABEL_43;
      }

      v378 = v9;
      (*(*(v0 + 896) + 32))(*(v0 + 920), v78, v79);
      __swift_destroy_boxed_opaque_existential_1(v78 + v80);
      goto LABEL_17;
    }

    v197 = *(v0 + 928);
    v198 = *(v0 + 896);
    sub_1D5BEE1B8(255, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    v199 = v9;
    v200 = (v78 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v198 + 32))(v197, v78, v79);
    v202 = *v200;
    v201 = v200[1];
    v9 = v199;
    *(v0 + 56) = v202;
    *(v0 + 72) = v201;
    __swift_destroy_boxed_opaque_existential_1(v78 + v80);
LABEL_32:
    v203 = *(v0 + 1024);
    v204 = *(v0 + 960);
    v205 = *(v0 + 936);
    v206 = *(*(v0 + 480) + qword_1EDFFCF30);
    v427 = v206;
    v386(v204, v203, v205);
    v207 = v204 + *(v398 + 44);

    v384 = v9;
    v409(v207, v9);
    v208 = sub_1D5C0BA9C();
    v210 = v209;

    *(v0 + 232) = *(v0 + 72);
    *(v0 + 216) = *(v0 + 56);
    if (*(v0 + 240))
    {
      sub_1D5B7C390((v0 + 216), (v0 + 280));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v422 = v206;
      sub_1D5BAFB24((v0 + 280), v208, v210, isUniquelyReferenced_nonNull_native);

      v427 = v206;
    }

    else
    {
      v212 = MEMORY[0x1E69E7CA0];
      v213 = MEMORY[0x1E69E6720];
      sub_1D5B88AA0(v0 + 216, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
      sub_1D607E0F0(v208, v210, (v0 + 248));

      sub_1D5B88AA0(v0 + 248, &qword_1EDF43B70, v212 + 8, v213, sub_1D5BEE1B8);
    }

    v214 = *(v0 + 1024);
    v215 = *(v0 + 968);
    v277 = *(v0 + 928);
    v281 = *(v0 + 936);
    v216 = *(v0 + 912);
    v217 = *(v0 + 896);
    v273 = *(v0 + 888);
    v296 = *(v0 + 872);
    v304 = *(v0 + 848);
    v367 = *(v0 + 840);
    v285 = *(v0 + 832);
    v289 = *(v0 + 816);
    v218 = *(v0 + 808);
    v293 = *(v0 + 800);
    v219 = *(v0 + 792);
    v299 = *(v0 + 776);
    v310 = *(v0 + 728);
    v314 = *(v0 + 784);
    v319 = *(v0 + 720);
    v350 = *(v0 + 656);
    v336 = *(v0 + 608);
    v344 = *(v0 + 600);
    v356 = *(v0 + 592);
    v331 = *(v0 + 528);
    v220 = *(v0 + 512);
    v221 = *(v0 + 480);
    v376 = sub_1D5C06D78(v221, &v427, 0, v331);
    (*(v217 + 16))(v216, v277, v273);
    v386(v215, v214, v281);
    v222 = v215 + *(v398 + 44);

    v409(v222, v384);
    sub_1D5C0354C();

    (*(v218 + 16))(v289, v221 + *(*v221 + 256), v220);
    sub_1D725890C();
    FeedCursorGroup.init(createdDate:group:config:serviceConfig:)(v293, v216, v285, v289, v220, v296);
    (*(v218 + 56))(v299, 1, 1, v220);
    LOBYTE(v415) = 7;
    v223 = *(v219 + 56);
    v223(v310, 1, 1, v314);
    v223(v319, 1, 1, v314);
    sub_1D72644CC();
    swift_allocObject();
    v224 = sub_1D726270C();
    (*(v304 + 16))(v225, v296, v367);
    sub_1D5BFCB60(v224);
    v226 = sub_1D726274C();

    v227 = v427;
    v228 = *(v214 + *(v331 + 44));
    v229 = *(*v221 + 224);
    swift_beginAccess();
    (*(v336 + 16))(v350, v221 + v229, v344);
    v230 = *(v356 - 8);
    v396 = v226;
    v368 = v227;
    v305 = v228;
    if ((*(v230 + 48))(v350, 1) == 1)
    {
      v231 = (v0 + 600);
      v232 = *(v0 + 608);
      v271 = 1;
      v320 = v232;
    }

    else
    {
      v231 = (v0 + 592);
      (*(*(v0 + 880) + 40))(*(v0 + 928), *(v0 + 592));
      v271 = 0;
      v320 = *(v0 + 608);
      v232 = v230;
    }

    v233 = *v231;
    v234 = *(v0 + 1024);
    v297 = v234;
    v385 = *(v0 + 1016);
    v357 = *(v0 + 1008);
    v345 = *(v0 + 992);
    v351 = *(v0 + 984);
    v408 = *(v0 + 896);
    v414 = *(v0 + 928);
    v403 = *(v0 + 888);
    v326 = *(v0 + 848);
    v332 = *(v0 + 840);
    v337 = *(v0 + 872);
    v311 = *(v0 + 744);
    v315 = *(v0 + 736);
    v282 = *(v0 + 728);
    v286 = *(v0 + 776);
    v235 = *(v0 + 664);
    v274 = v235;
    v278 = *(v0 + 720);
    v300 = *(v0 + 600);
    v236 = *(v0 + 592);
    v237 = *(v0 + 584);
    v238 = *(v0 + 528);
    v239 = *(v0 + 480);
    v392 = *(v0 + 472);
    (*(v232 + 8))(*(v0 + 656), v233);
    (*(v230 + 56))(v235, v271, 1, v236);
    v240 = type metadata accessor for FeedContext();
    v241 = v237;
    (*(*(v240 - 8) + 56))(v237, 1, 1, v240);
    v242 = (v239 + *(*v239 + 240));
    v243 = v242[1];
    v244 = v242[2];
    v419 = *v242;
    v420 = v243;
    v245 = (v234 + *(v238 + 36));
    v246 = *v245;
    v247 = v245[1];
    v248 = v245[2];
    v421 = v244;
    *&v422 = v246;
    *(&v422 + 1) = v247;
    v423 = v248;

    sub_1D5C07390(v247);
    sub_1D5C0C3EC(&v419, &v422, &v417);
    v249 = *(&v422 + 1);

    sub_1D5C08648(v249);

    v422 = v417;
    v423 = v418;
    v419 = 0;
    LOWORD(v420) = 256;
    v250 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v286, 0, &v415, v282, v278, v376, 0, 0, 0, v396, 0, 0, 1, 0, 1, 0, 1, v368, v305, v274, v241, &v422, &v419, 0, 0, 0);

    sub_1D5C086A4(v422);
    v251 = MEMORY[0x1E69E6720];
    sub_1D5B88AA0(v241, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
    (*(v320 + 8))(v274, v300);
    v252 = MEMORY[0x1E6969530];
    sub_1D5B88AA0(v278, &qword_1EDF45B00, MEMORY[0x1E6969530], v251, sub_1D5B6BFD8);
    sub_1D5B88AA0(v282, &qword_1EDF45B00, v252, v251, sub_1D5B6BFD8);
    (*(v311 + 8))(v286, v315);
    FeedCursor.reachedEnd.getter();
    (*(v326 + 8))(v337, v332);
    (*(v345 + 8))(v357, v351);
    (*(v385 + 8))(v297, v238);
    type metadata accessor for FeedCursor();
    v253 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v408 + 32))(v392, v414, v403);
    *(v392 + v253) = v250;
    type metadata accessor for FeedServiceFetchResult.Internal();
    goto LABEL_39;
  }

  if (!EnumCaseMultiPayload)
  {
    v58 = *(v0 + 1000);
    v59 = *(v0 + 928);
    v60 = *(v0 + 896);
    v61 = *(v0 + 888);
    sub_1D5BEE1B8(255, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    v62 = (v58 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v60 + 32))(v59, v58, v61);
    v63 = v62[1];
    *(v0 + 56) = *v62;
    *(v0 + 72) = v63;
    goto LABEL_32;
  }

  v378 = v9;
  if (EnumCaseMultiPayload == 1)
  {
    v13 = *(v0 + 1000);
    v14 = *(v0 + 952);
    v358 = *(v0 + 936);
    v369 = *(v0 + 1024);
    v15 = *(v0 + 904);
    v16 = *(v0 + 896);
    v17 = *(v0 + 888);
    v18 = *(v0 + 480);
    v19 = MEMORY[0x1E69E7CA0];
    v20 = MEMORY[0x1E69E6720];
    sub_1D5BEE1B8(255, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    v21 = (v13 + *(swift_getTupleTypeMetadata2() + 48));
    v22 = v17;
    v23 = v19;
    v346 = *(v16 + 32);
    v346(v15, v13, v22);
    v24 = v21[1];
    *(v0 + 88) = *v21;
    *(v0 + 104) = v24;
    v25 = *(v18 + qword_1EDFFCF30);
    v415 = v25;
    v386(v14, v369, v358);
    v26 = v14 + *(v398 + 44);

    v409(v26, v378);
    v27 = sub_1D5C0BA9C();
    v29 = v28;

    sub_1D617D174(v0 + 88, v0 + 120, &qword_1EDF43B70, v23 + 8, v20, sub_1D5BEE1B8);
    if (*(v0 + 144))
    {
      sub_1D5B7C390((v0 + 120), (v0 + 184));
      v30 = swift_isUniquelyReferenced_nonNull_native();
      *&v422 = v25;
      sub_1D5BAFB24((v0 + 184), v27, v29, v30);

      v415 = v25;
    }

    else
    {
      v139 = MEMORY[0x1E69E6720];
      sub_1D5B88AA0(v0 + 120, &qword_1EDF43B70, v23 + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
      sub_1D607E0F0(v27, v29, (v0 + 152));

      sub_1D5B88AA0(v0 + 152, &qword_1EDF43B70, v23 + 8, v139, sub_1D5BEE1B8);
    }

    v140 = *(v0 + 1024);
    v364 = *(v0 + 968);
    v141 = *(v0 + 936);
    v295 = v141;
    v142 = *(v0 + 912);
    v143 = *(v0 + 896);
    v267 = *(v0 + 888);
    v268 = *(v0 + 904);
    v373 = *(v0 + 864);
    v303 = *(v0 + 840);
    v308 = *(v0 + 848);
    v269 = *(v0 + 832);
    v270 = *(v0 + 816);
    v144 = *(v0 + 808);
    v145 = *(v0 + 792);
    v276 = *(v0 + 800);
    v280 = *(v0 + 768);
    v284 = *(v0 + 712);
    v288 = *(v0 + 784);
    v290 = *(v0 + 704);
    v324 = *(v0 + 600);
    v329 = *(v0 + 640);
    v334 = *(v0 + 592);
    v146 = *(v0 + 528);
    v317 = *(v0 + 608);
    v147 = *(v0 + 512);
    v148 = *(v0 + 480);
    v427 = sub_1D5BE1168(MEMORY[0x1E69E7CC0]);
    v292 = v140;
    v342 = sub_1D5C06D78(v148, &v427, 1, v146);

    (*(v143 + 16))(v142, v268, v267);
    v386(v364, v140, v141);
    v149 = v364 + *(v398 + 44);

    v409(v149, v378);
    sub_1D5C0354C();

    (*(v144 + 16))(v270, v148 + *(*v148 + 256), v147);
    sub_1D725890C();
    FeedCursorGroup.init(createdDate:group:config:serviceConfig:)(v276, v142, v269, v270, v147, v373);
    (*(v144 + 56))(v280, 1, 1, v147);
    v416 = 7;
    v150 = *(v145 + 56);
    v150(v284, 1, 1, v288);
    v150(v290, 1, 1, v288);
    sub_1D5BEE1B8(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    swift_allocObject();
    v151 = sub_1D726270C();
    v153 = v152;
    v386(v364, v292, v295);
    v154 = v364 + *(v398 + 44);
    v155 = *(v154 + *(v378 + 36));

    v409(v154, v378);
    *v153 = v155;
    sub_1D5BFCB60(v151);
    v407 = sub_1D726274C();

    sub_1D72644CC();
    swift_allocObject();
    v156 = sub_1D726270C();
    (*(v308 + 16))(v157, v373, v303);
    sub_1D5BFCB60(v156);
    v401 = sub_1D726274C();

    v365 = *(v292 + *(v146 + 44));
    v158 = *(*v148 + 224);
    swift_beginAccess();
    (*(v317 + 16))(v329, v148 + v158, v324);
    v159 = *(v334 - 8);
    if ((*(v159 + 48))(v329, 1) == 1)
    {
      v160 = (v0 + 600);
      v161 = *(v0 + 608);
      v162 = 1;
      v390 = v161;
    }

    else
    {
      v160 = (v0 + 592);
      (*(*(v0 + 880) + 40))(*(v0 + 904), *(v0 + 592));
      v162 = 0;
      v390 = *(v0 + 608);
      v161 = v159;
    }

    v163 = *v160;
    v164 = *(v0 + 1024);
    v412 = *(v0 + 768);
    v374 = *(v0 + 744);
    v382 = *(v0 + 736);
    v325 = *(v0 + 704);
    v330 = *(v0 + 712);
    v165 = *(v0 + 648);
    v335 = *(v0 + 600);
    v166 = *(v0 + 592);
    v167 = *(v0 + 584);
    v168 = *(v0 + 528);
    v318 = v165;
    v169 = *(v0 + 480);
    (*(v161 + 8))(*(v0 + 640), v163);
    (*(v159 + 56))(v165, v162, 1, v166);
    v170 = type metadata accessor for FeedContext();
    v171 = v167;
    v309 = v167;
    (*(*(v170 - 8) + 56))(v167, 1, 1, v170);
    v172 = (v169 + *(*v169 + 240));
    v173 = v172[1];
    v174 = v172[2];
    v419 = *v172;
    v420 = v173;
    v175 = (v164 + *(v168 + 36));
    v176 = *v175;
    v177 = v175[1];
    v178 = v175[2];
    v421 = v174;
    *&v422 = v176;
    *(&v422 + 1) = v177;
    v423 = v178;

    sub_1D5C07390(v177);
    sub_1D5C0C3EC(&v419, &v422, &v417);
    v179 = *(&v422 + 1);

    sub_1D5C08648(v179);

    v422 = v417;
    v423 = v418;
    v419 = 0;
    LOWORD(v420) = 256;
    v180 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v412, 0, &v416, v330, v325, v342, 0, v407, 0, v401, 0, 0, 1, 0, 1, 0, 1, v415, v365, v318, v171, &v422, &v419, 0, 0, 0);

    sub_1D5C086A4(v422);
    v181 = MEMORY[0x1E69E6720];
    sub_1D5B88AA0(v309, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
    (*(v390 + 8))(v318, v335);
    v182 = MEMORY[0x1E6969530];
    sub_1D5B88AA0(v325, &qword_1EDF45B00, MEMORY[0x1E6969530], v181, sub_1D5B6BFD8);
    sub_1D5B88AA0(v330, &qword_1EDF45B00, v182, v181, sub_1D5B6BFD8);
    (*(v374 + 8))(v412, v382);
    v183 = FeedCursor.reachedEnd.getter();
    v184 = *(v0 + 1016);
    v395 = *(v0 + 1008);
    v402 = *(v0 + 1024);
    v185 = *(v0 + 992);
    v186 = *(v0 + 904);
    v413 = *(v0 + 888);
    v375 = *(v0 + 864);
    v383 = *(v0 + 984);
    v187 = *(v0 + 848);
    v188 = *(v0 + 840);
    v391 = *(v0 + 528);
    if ((v183 & 1) == 0)
    {
      v191 = *(v0 + 480);
      v366 = *(v0 + 472);
      sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v343 = v186;
      v192 = swift_allocObject();
      *(v192 + 16) = xmmword_1D7273AE0;
      *(v0 + 464) = v191;
      type metadata accessor for FeedCursor();
      swift_getWitnessTable();
      v193 = sub_1D725B0BC();
      v195 = v194;
      *(v192 + 56) = MEMORY[0x1E69E6158];
      *(v192 + 64) = sub_1D5B7E2C0();
      *(v192 + 32) = v193;
      *(v192 + 40) = v195;
      sub_1D7262EDC();
      sub_1D725C30C();

      (*(v187 + 8))(v375, v188);
      sub_1D5B88AA0(v0 + 88, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
      (*(v185 + 8))(v395, v383);
      (*(v184 + 8))(v402, v391);
      v196 = *(swift_getTupleTypeMetadata2() + 48);
      v346(v366, v343, v413);
      *(v366 + v196) = v180;
      type metadata accessor for FeedServiceFetchResult.Internal();
      goto LABEL_39;
    }

    v189 = *(v0 + 472);
    sub_1D7262EDC();
    sub_1D725C30C();
    (*(v187 + 8))(v375, v188);
    sub_1D5B88AA0(v0 + 88, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
    (*(v185 + 8))(v395, v383);
    (*(v184 + 8))(v402, v391);
    type metadata accessor for FeedCursor();
    v190 = *(swift_getTupleTypeMetadata2() + 48);
    v346(v189, v186, v413);
    *(v189 + v190) = v180;
    goto LABEL_29;
  }

  (*(*(v0 + 896) + 32))(*(v0 + 920), *(v0 + 1000), *(v0 + 888));
LABEL_17:
  v82 = *(v0 + 1024);
  v83 = *(v0 + 968);
  v275 = *(v0 + 920);
  v279 = *(v0 + 936);
  v84 = *(v0 + 912);
  v85 = *(v0 + 896);
  v272 = *(v0 + 888);
  v283 = *(v0 + 832);
  v287 = *(v0 + 816);
  v86 = *(v0 + 808);
  v291 = *(v0 + 800);
  v294 = *(v0 + 856);
  v87 = *(v0 + 792);
  v298 = *(v0 + 760);
  v302 = *(v0 + 848);
  v307 = *(v0 + 696);
  v313 = *(v0 + 784);
  v316 = *(v0 + 688);
  v322 = *(v0 + 840);
  v353 = *(v0 + 624);
  v339 = *(v0 + 608);
  v348 = *(v0 + 600);
  v361 = *(v0 + 592);
  v88 = *(v0 + 528);
  v89 = *(v0 + 512);
  v90 = *(v0 + 480);
  v427 = *(v90 + qword_1EDFFCF30);

  v328 = v82;
  v371 = sub_1D5C06D78(v90, &v427, 1, v88);
  (*(v85 + 16))(v84, v275, v272);
  v386(v83, v82, v279);
  v91 = v83 + *(v398 + 44);

  v409(v91, v378);
  sub_1D5C0354C();

  (*(v86 + 16))(v287, v90 + *(*v90 + 256), v89);
  sub_1D725890C();
  FeedCursorGroup.init(createdDate:group:config:serviceConfig:)(v291, v84, v283, v287, v89, v294);
  (*(v86 + 56))(v298, 1, 1, v89);
  LOBYTE(v415) = 7;
  v92 = *(v87 + 56);
  v92(v307, 1, 1, v313);
  v92(v316, 1, 1, v313);
  sub_1D72644CC();
  swift_allocObject();
  v93 = sub_1D726270C();
  (*(v302 + 16))(v94, v294, v322);
  sub_1D5BFCB60(v93);
  v95 = sub_1D726274C();

  v96 = v427;
  v97 = *(v328 + *(v88 + 44));
  v98 = *(*v90 + 224);
  swift_beginAccess();
  (*(v339 + 16))(v353, v90 + v98, v348);
  v99 = *(v361 - 8);
  v405 = v96;
  v380 = v97;
  if ((*(v99 + 48))(v353, 1) == 1)
  {
    v100 = (v0 + 600);
    v101 = *(v0 + 608);
    v102 = 1;
    v393 = v101;
  }

  else
  {
    v100 = (v0 + 592);
    (*(*(v0 + 880) + 40))(*(v0 + 920), *(v0 + 592));
    v102 = 0;
    v393 = *(v0 + 608);
    v101 = v99;
  }

  v103 = *v100;
  v104 = *(v0 + 1024);
  v388 = *(v0 + 744);
  v399 = *(v0 + 736);
  v349 = *(v0 + 696);
  v354 = *(v0 + 760);
  v105 = *(v0 + 632);
  v333 = v105;
  v340 = *(v0 + 688);
  v362 = *(v0 + 600);
  v106 = *(v0 + 592);
  v107 = *(v0 + 584);
  v108 = *(v0 + 528);
  v109 = *(v0 + 480);
  (*(v101 + 8))(*(v0 + 624), v103);
  (*(v99 + 56))(v105, v102, 1, v106);
  v110 = type metadata accessor for FeedContext();
  v111 = v107;
  v323 = v107;
  (*(*(v110 - 8) + 56))(v107, 1, 1, v110);
  v112 = (v109 + *(*v109 + 240));
  v113 = v112[1];
  v114 = v112[2];
  v419 = *v112;
  v420 = v113;
  v115 = (v104 + *(v108 + 36));
  v116 = *v115;
  v117 = v115[1];
  v118 = v115[2];
  v421 = v114;
  *&v422 = v116;
  *(&v422 + 1) = v117;
  v423 = v118;

  sub_1D5C07390(v117);
  sub_1D5C0C3EC(&v419, &v422, &v417);
  v119 = *(&v422 + 1);

  sub_1D5C08648(v119);

  v422 = v417;
  v423 = v418;
  v419 = 0;
  LOWORD(v420) = 256;
  v120 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v354, 0, &v415, v349, v340, v371, 0, 0, 0, v95, 0, 0, 1, 0, 1, 0, 1, v405, v380, v333, v111, &v422, &v419, 0, 0, 0);

  sub_1D5C086A4(v422);
  v121 = MEMORY[0x1E69E6720];
  sub_1D5B88AA0(v323, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
  (*(v393 + 8))(v333, v362);
  v122 = MEMORY[0x1E6969530];
  sub_1D5B88AA0(v340, &qword_1EDF45B00, MEMORY[0x1E6969530], v121, sub_1D5B6BFD8);
  sub_1D5B88AA0(v349, &qword_1EDF45B00, v122, v121, sub_1D5B6BFD8);
  (*(v388 + 8))(v354, v399);
  v406 = v120;
  v123 = FeedCursor.reachedEnd.getter();
  v124 = *(v0 + 1016);
  v394 = *(v0 + 1008);
  v400 = *(v0 + 1024);
  v125 = *(v0 + 992);
  v411 = *(v0 + 920);
  v126 = *(v0 + 896);
  v127 = *(v0 + 888);
  v128 = *(v0 + 848);
  v363 = *(v0 + 840);
  v372 = *(v0 + 856);
  v381 = *(v0 + 528);
  v389 = *(v0 + 984);
  if (v123)
  {
    v129 = *(v0 + 472);
    sub_1D7262EDC();
    sub_1D725C30C();
    (*(v128 + 8))(v372, v363);
    (*(v125 + 8))(v394, v389);
    (*(v124 + 8))(v400, v381);
    type metadata accessor for FeedCursor();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v131 = v127;
    v132 = *(TupleTypeMetadata2 + 48);
    (*(v126 + 32))(v129, v411, v131);
    *(v129 + v132) = v406;
LABEL_29:
    type metadata accessor for FeedServiceFetchResult.Internal();
    goto LABEL_39;
  }

  v133 = *(v0 + 480);
  v355 = *(v0 + 472);
  sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v341 = v127;
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_1D7273AE0;
  *(v0 + 456) = v133;
  type metadata accessor for FeedCursor();
  swift_getWitnessTable();
  v135 = sub_1D725B0BC();
  v137 = v136;
  *(v134 + 56) = MEMORY[0x1E69E6158];
  *(v134 + 64) = sub_1D5B7E2C0();
  *(v134 + 32) = v135;
  *(v134 + 40) = v137;
  sub_1D7262EDC();
  sub_1D725C30C();

  (*(v128 + 8))(v372, v363);
  (*(v125 + 8))(v394, v389);
  (*(v124 + 8))(v400, v381);
  v138 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v126 + 32))(v355, v411, v341);
  *(v355 + v138) = v406;
  type metadata accessor for FeedServiceFetchResult.Internal();
LABEL_39:
  swift_storeEnumTagMultiPayload();

  v254 = *(v0 + 8);

  return v254();
}

void *sub_1D5C06BE0()
{
  v1 = v0;
  sub_1D5BB0CE0();
  v2 = *v0;
  v3 = sub_1D72640FC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1D5B76B10(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D5B7C390(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D5C06D78(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  v46 = a3;
  v47 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = type metadata accessor for FeedScoredResult();
  v44 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v44 - v11;
  v13 = *(a4 + 40);
  v45 = v4;
  *&v51[0] = *(v4 + v13);
  v48 = v7;
  v49 = v8;
  KeyPath = swift_getKeyPath();
  type metadata accessor for FeedGroupEmitter();
  v15 = sub_1D72627FC();

  WitnessTable = swift_getWitnessTable();
  v18 = sub_1D5B874E4(sub_1D617D2CC, KeyPath, v15, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v17);

  v19 = sub_1D5B86020(v18);

  v52 = v19;
  if (v46)
  {
    (*(v44 + 16))(v12, v45, v9);
    v21 = &v12[*(v9 + 44)];
    v22 = type metadata accessor for FeedGroupEmitTaskResult();
    v23 = *(*(v22 - 8) + 8);

    v23(v21, v22);
    v24 = sub_1D5C0BA9C();
    v26 = v25;

    sub_1D5B860D0(v51, v24, v26);
  }

  *&v51[0] = *(v47 + qword_1EDFFCF48);
  MEMORY[0x1EEE9AC00](*&v51[0], v20);
  *(&v44 - 4) = v7;
  *(&v44 - 3) = v8;
  *(&v44 - 2) = &v52;

  swift_getWitnessTable();
  v47 = sub_1D7263E7C();
  v27 = v52;
  v28 = v52 + 56;
  v29 = 1 << *(v52 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v52 + 56);
  v32 = (v29 + 63) >> 6;

  v34 = 0;
  while (v31)
  {
LABEL_13:
    v36 = (*(v27 + 48) + ((v34 << 10) | (16 * __clz(__rbit64(v31)))));
    v37 = *v36;
    v38 = v36[1];

    v39 = sub_1D5B69D90(v37, v38);
    v41 = v40;

    if (v41)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = *a2;
      v50 = *a2;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D5C06BE0();
        v43 = v50;
      }

      sub_1D5B7C390((*(v43 + 56) + 32 * v39), v51);
      sub_1D67135D8(v39, v43);
      *a2 = v43;
    }

    else
    {
      memset(v51, 0, sizeof(v51));
    }

    v31 &= v31 - 1;
    result = sub_1D5B88AA0(v51, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
  }

  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v35 >= v32)
    {

      return v47;
    }

    v31 = *(v28 + 8 * v35);
    ++v34;
    if (v31)
    {
      v34 = v35;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5C071EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5C0BA9C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_1D5C07224(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

BOOL sub_1D5C07230(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;

  v3 = sub_1D5C0BA9C();
  v5 = sub_1D5BE240C(v3, v4, v2);

  return (v5 & 1) == 0;
}

void *sub_1D5C072D0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1D5B5D924(0, &qword_1EDF33290, type metadata accessor for BundleSession);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

unint64_t sub_1D5C07390(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

char *sub_1D5C073A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D5B5A7F0(0, &unk_1EDF19A50, &type metadata for FeedJournalEntry, MEMORY[0x1E69E6F90]);
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

uint64_t get_enum_tag_for_layout_string_8NewsFeed06ModernB16GroupEmitterType_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1D5C07548()
{
  if (!qword_1EDF1A380)
  {
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A380);
    }
  }
}

char *FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10, uint64_t a11, uint64_t a12, uint64_t a13, _BYTE *a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned __int8 **a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v159 = a8;
  v143 = a7;
  v142 = a6;
  v160 = a5;
  v147 = a4;
  v137 = a3;
  v156 = a1;
  v155 = *v28;
  v29 = v155;
  v30 = MEMORY[0x1E69E6720];
  sub_1D5BFCA08(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v150 = &v123[-v33];
  v149 = type metadata accessor for FeedContext();
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149, v34);
  v153 = &v123[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = *(v29 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v154 = sub_1D726393C();
  v166 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154, v38);
  v145 = &v123[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v40, v41);
  v164 = &v123[-v42];
  sub_1D5BFCA08(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v30);
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v141 = &v123[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v46, v47);
  v138 = &v123[-v48];
  v49 = sub_1D725891C();
  v140 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v50);
  v163 = &v123[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v52, v53);
  v162 = &v123[-v54];
  v55 = sub_1D726393C();
  v56 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v57);
  v59 = &v123[-v58];
  v165 = v36;
  v60 = *(v36 - 8);
  v64 = MEMORY[0x1EEE9AC00](v61, v62);
  v161 = &v123[-v65];
  v66 = *v160;
  v67 = a24[1];
  v160 = *a24;
  v158 = v67;
  v157 = a24[2];
  v125 = *a25;
  v124 = *(a25 + 8);
  v146 = *(a25 + 9);
  v144 = AssociatedTypeWitness;
  v139 = v63;
  if (v63)
  {
    v151 = v63;
  }

  else
  {
    v68 = v28[3];
    v156 = v28[2];
    v151 = v68;
  }

  (*(v56 + 16))(v59, v137, v55, v64);
  v69 = *(v60 + 48);
  v70 = v165;
  v71 = v69(v59, 1, v165);
  v152 = v60;
  if (v71 == 1)
  {
    (*(v60 + 16))(v161, v28 + *(*v28 + 256), v70);
    if (v69(v59, 1, v70) != 1)
    {
      v72 = *(v56 + 8);

      v72(v59, v55);
      goto LABEL_9;
    }
  }

  else
  {
    (*(v60 + 32))(v161, v59, v70);
  }

LABEL_9:
  v73 = v140;
  if (v147)
  {
    if (v66 != 7)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v147 = *(v28 + *(*v28 + 264));

  if (v66 == 7)
  {
LABEL_11:
    LOBYTE(v66) = *(v28 + 32);
  }

LABEL_12:
  v171 = v66;
  v74 = v138;
  sub_1D5B758F8(v142, v138, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  v75 = *(v73 + 48);
  if (v75(v74, 1, v49) == 1)
  {
    (*(v73 + 16))(v162, v28 + qword_1EDFFCF50, v49);
    v76 = v75(v74, 1, v49);

    v77 = v76 == 1;
    v78 = v159;
    if (!v77)
    {
      sub_1D5B87B48(v74, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    }
  }

  else
  {
    (*(v73 + 32))(v162, v74, v49);

    v78 = v159;
  }

  v79 = v141;
  sub_1D5B758F8(v143, v141, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  if (v75(v79, 1, v49) == 1)
  {
    (*(v73 + 16))(v163, v28 + qword_1EDFFCF58, v49);
    if (v75(v79, 1, v49) != 1)
    {
      sub_1D5B87B48(v79, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    }

    v80 = a9;
    if (v78)
    {
LABEL_20:
      v143 = v78;
      v81 = a10;
      if (v80)
      {
        goto LABEL_21;
      }

      goto LABEL_26;
    }
  }

  else
  {
    (*(v73 + 32))(v163, v79, v49);
    v80 = a9;
    if (v78)
    {
      goto LABEL_20;
    }
  }

  v143 = *(v28 + qword_1EDFFCF48);

  v81 = a10;
  if (v80)
  {
LABEL_21:
    v142 = v80;
    v82 = a11;
    if (v81)
    {
      goto LABEL_22;
    }

LABEL_27:
    v141 = *(v28 + qword_1EDFFCF10);

    v83 = a12;
    if (v82)
    {
      goto LABEL_23;
    }

    goto LABEL_28;
  }

LABEL_26:
  v142 = *(v28 + qword_1EDFFCF08);

  v82 = a11;
  if (!v81)
  {
    goto LABEL_27;
  }

LABEL_22:
  v141 = v81;
  v83 = a12;
  if (v82)
  {
LABEL_23:
    v140 = v82;
    goto LABEL_29;
  }

LABEL_28:
  v140 = *(v28 + qword_1EDFFCF20);

LABEL_29:
  v132 = v80;
  v131 = v81;
  if (v83)
  {
    v139 = v83;
  }

  else
  {
    v139 = *(v28 + qword_1EDFFCF40);
  }

  v130 = v82;
  if (a13)
  {
    v137 = a13;
  }

  else
  {
    v137 = *(v28 + qword_1EDFFCF38);
  }

  if (a15)
  {
    a14 = *(v28 + qword_1EDFFCEF8);
  }

  if ((a17 & 1) == 0)
  {
    v87 = a20;
    if ((a19 & 1) == 0)
    {
      goto LABEL_41;
    }

LABEL_44:
    a18 = *(v28 + qword_1EDFFCF18);
    v88 = a21;
    v89 = a22;
    if (v87)
    {
      goto LABEL_42;
    }

    goto LABEL_45;
  }

  a16 = *(v28 + qword_1EDFFCF60);
  v87 = a20;
  if (a19)
  {
    goto LABEL_44;
  }

LABEL_41:
  v88 = a21;
  v89 = a22;
  if (v87)
  {
LABEL_42:
    v134 = v87;
    goto LABEL_46;
  }

LABEL_45:
  v134 = *(v28 + qword_1EDFFCF30);

LABEL_46:
  v126 = a23;
  v138 = a14;
  v136 = a16;
  v135 = a18;
  v129 = v83;
  v128 = a13;
  v127 = v87;
  if (v88)
  {
    v133 = v88;
  }

  else
  {
    v133 = *(v28 + qword_1EDFFCF28);
  }

  v90 = *(v166 + 16);
  v91 = v145;
  v92 = v154;
  v90(v145, v89, v154);
  v93 = v144;
  v94 = *(v144 - 8);
  v95 = *(v94 + 48);
  if (v95(v91, 1, v144) == 1)
  {
    v96 = *(*v28 + 224);
    swift_beginAccess();
    v90(v164, v28 + v96, v92);
    v97 = v92;
    if (v95(v91, 1, v93) == 1)
    {
    }

    else
    {
      v100 = *(v166 + 8);

      v100(v91, v92);
    }

    v99 = v165;
  }

  else
  {
    v98 = v164;
    (*(v94 + 32))(v164, v91, v93);
    (*(v94 + 56))(v98, 0, 1, v93);

    v99 = v165;
    v97 = v92;
  }

  v101 = v153;
  v102 = v150;
  sub_1D5B758F8(v126, v150, qword_1EDF34CA0, type metadata accessor for FeedContext);
  v103 = *(v148 + 48);
  v104 = v149;
  if (v103(v102, 1, v149) == 1)
  {
    sub_1D5BE6814(v28 + *(*v28 + 232), v101);
    if (v103(v102, 1, v104) != 1)
    {
      sub_1D5B87B48(v102, qword_1EDF34CA0, type metadata accessor for FeedContext);
    }

    v105 = v160;
    if (v160)
    {
      goto LABEL_59;
    }
  }

  else
  {
    sub_1D5C25D20(v102, v101);
    v105 = v160;
    if (v160)
    {
LABEL_59:
      v106 = v158;
      v107 = v157;
      goto LABEL_62;
    }
  }

  v108 = (v28 + *(*v28 + 240));
  v105 = *v108;
  v106 = v108[1];
  v107 = v108[2];

LABEL_62:
  *&v169 = v105;
  *(&v169 + 1) = v106;
  v170 = v107;
  if (v146)
  {
    v109 = v28 + *(*v28 + 248);
    v110 = *v109;
    v111 = *(v109 + 8);
  }

  else
  {
    v110 = v125;
    v111 = v124;
  }

  v167 = v110;
  v168 = v111 & 1;
  if (a26)
  {
    v112 = a26;
    v113 = a28;
    if (a27)
    {
      goto LABEL_67;
    }

LABEL_71:
    v114 = *(v28 + *(*v28 + 288));

    v115 = v113;
    if (v113)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  v112 = *(v28 + *(*v28 + 280));

  v113 = a28;
  if (!a27)
  {
    goto LABEL_71;
  }

LABEL_67:
  v114 = a27;
  v115 = v113;
  if (!v113)
  {
LABEL_68:
    v116 = *(*v28 + 272);
    swift_beginAccess();
    v115 = *(v28 + v116);
  }

LABEL_69:
  sub_1D5C08658(v160);

  v117 = sub_1D5BE1A00();
  swift_allocObject();
  v122 = v112;
  v118 = v164;
  v119 = v161;
  v120 = sub_1D5BE1A84(v156, v151, v161, v147, &v171, v162, v163, v143, v142, v141, v140, v139, v137, v138, v136, v135, v134, v133, v164, v101, &v169, &v167, v122, v114, v115, v117);
  (*(v166 + 8))(v118, v97);

  (*(v152 + 8))(v119, v99);
  return v120;
}

unint64_t sub_1D5C08648(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1D5C08658(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D5C086A4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed0B16JournalEntrySlotO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D5C08744()
{
  swift_getWitnessTable();

  return sub_1D725B0BC();
}

uint64_t FeedServiceFetchResult.shortDescription.getter@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v8 = &v34 - v7;
  v9 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (v9)
    {
      v10 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5C0BFF0();
      inited = swift_initStackObject();
      v13 = inited;
      *(inited + 16) = xmmword_1D7279970;
      *(inited + 32) = 1701869940;
      v14 = MEMORY[0x1E69E6158];
      v15 = 1954047342;
      goto LABEL_11;
    }

    v35 = type metadata accessor for FeedCursorContainer();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v17 = swift_projectBox();
    v34 = *(v17 + *(TupleTypeMetadata2 + 48));
    v36 = a2;
    v18 = *(v5 + 16);
    v18(v8, v17, AssociatedTypeWitness);
    sub_1D5C0BFF0();
    v19 = swift_initStackObject();
    v20 = v19;
    *(v19 + 16) = xmmword_1D7279970;
    *(v19 + 32) = 1701869940;
    v21 = MEMORY[0x1E69E6158];
    v22 = 1954047342;
LABEL_8:
    *(v19 + 40) = 0xE400000000000000;
    *(v19 + 48) = v22 | 0x756F724700000000;
    *(v19 + 56) = 0xE900000000000070;
    *(v19 + 72) = v21;
    *(v19 + 80) = 0x70756F7267;
    *(v19 + 88) = 0xE500000000000000;
    *(v19 + 120) = AssociatedTypeWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v19 + 96));
    v18(boxed_opaque_existential_1, v8, AssociatedTypeWitness);
    v20[16] = 0x726F73727563;
    v20[17] = 0xE600000000000000;
    v26 = v34;
    v20[21] = v35;
    v20[18] = v26;
    swift_retain_n();
    sub_1D5BE1168(v20);
    swift_setDeallocating();
    sub_1D5BE1388();
    swift_arrayDestroy();
    type metadata accessor for FeedServiceFetchResult();
    v27 = sub_1D725B0DC();
    v28 = v36;
    v36[3] = v27;
    v28[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(v28);
    sub_1D725B0CC();

    return (*(v5 + 8))(v8, AssociatedTypeWitness);
  }

  if (v9 == 2)
  {
    v35 = type metadata accessor for FeedCursorContainer();
    v23 = swift_getTupleTypeMetadata2();
    v24 = swift_projectBox();
    v34 = *(v24 + *(v23 + 48));
    v36 = a2;
    v18 = *(v5 + 16);
    v18(v8, v24, AssociatedTypeWitness);
    sub_1D5C0BFF0();
    v19 = swift_initStackObject();
    v20 = v19;
    *(v19 + 16) = xmmword_1D7279970;
    *(v19 + 32) = 1701869940;
    v21 = MEMORY[0x1E69E6158];
    v22 = 1953718636;
    goto LABEL_8;
  }

  if (v9 != 3)
  {
    v30 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1D5C0BFF0();
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_1D7270C10;
    *(v31 + 32) = 1701869940;
    v32 = MEMORY[0x1E69E6158];
    *(v31 + 40) = 0xE400000000000000;
    *(v31 + 48) = 0x656546664F646E65;
    *(v31 + 56) = 0xE900000000000064;
    *(v31 + 72) = v32;
    *(v31 + 80) = 0x726F73727563;
    *(v31 + 88) = 0xE600000000000000;
    *(v31 + 120) = type metadata accessor for FeedCursorContainer();
    *(v31 + 96) = v30;
    swift_retain_n();
    sub_1D5BE1168(v31);
    swift_setDeallocating();
    sub_1D5BE1388();
    swift_arrayDestroy();
    type metadata accessor for FeedServiceFetchResult();
    a2[3] = sub_1D725B0DC();
    a2[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a2);
    sub_1D725B0CC();
  }

  v10 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v11 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_1D5C0BFF0();
  inited = swift_initStackObject();
  v13 = inited;
  *(inited + 16) = xmmword_1D7279970;
  *(inited + 32) = 1701869940;
  v14 = MEMORY[0x1E69E6158];
  v15 = 1953718636;
LABEL_11:
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v15 | 0x756F724700000000;
  *(inited + 56) = 0xEA00000000007370;
  *(inited + 72) = v14;
  *(inited + 80) = 0x7370756F7267;
  *(inited + 88) = 0xE600000000000000;
  v33 = sub_1D72627FC();
  v13[12] = v10;
  v13[15] = v33;
  v13[16] = 0x726F73727563;
  v13[17] = 0xE600000000000000;
  v13[21] = type metadata accessor for FeedCursorContainer();
  v13[18] = v11;

  sub_1D5BE1168(v13);
  swift_setDeallocating();
  sub_1D5BE1388();
  swift_arrayDestroy();
  type metadata accessor for FeedServiceFetchResult();
  a2[3] = sub_1D725B0DC();
  a2[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_1D725B0CC();
}

uint64_t FeedCursorContainer.shortDescription.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 < 0)
  {
    return FeedDeferredCursor.shortDescription.getter(a2);
  }

  else
  {
    return FeedCursor.shortDescription.getter(a2);
  }
}

uint64_t FeedServiceConfigType.feedMode.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v18 = a3;
  v5 = type metadata accessor for FeedServiceOptions(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v11);
  v14 = &v17 - v13;
  (*(a2 + 48))(a1, a2, v12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v10 + 8))(v14, AssociatedTypeWitness);
  LOBYTE(v10) = *v8;
  result = sub_1D5B89A08(v8);
  *v18 = v10;
  return result;
}

uint64_t FeedServiceContextType.serviceOptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF38570 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FeedServiceOptions(0);
  v3 = __swift_project_value_buffer(v2, qword_1EDF38578);

  return sub_1D5C0918C(v3, a1);
}

uint64_t sub_1D5C0918C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedServiceOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FeedCursor.nextSlotIndex.getter()
{
  type metadata accessor for FeedCursorGroup();
  result = sub_1D726279C();
  v2 = *(v0 + qword_1EDFFCEF8);
  v3 = __OFADD__(result, v2);
  v4 = result + v2;
  if (v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v5 = *(v0 + qword_1EDFFCF60);
  result = v4 + v5;
  if (__OFADD__(v4, v5))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5C09288()
{
  v1 = *v0;
  v2 = 0x657669746341;
  v3 = 0x64656C6F6F706552;
  if (v1 != 5)
  {
    v3 = 0x6465646E61707845;
  }

  v4 = 0x4620666F20646E45;
  if (v1 != 3)
  {
    v4 = 0x646568636143;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1852138835;
  if (v1 != 1)
  {
    v5 = 0x6E657A6F7246;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t FeedItemRendererType.render(in:at:layoutAttributes:actionSenderHandler:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a3;
  v10 = 1;
  v9 = v7;
  return (*(a7 + 72))(a1, a2, &v10, &v9, a4, a5, a6);
}

uint64_t sub_1D5C093B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, unint64_t *a4@<X8>)
{
  v5 = v4;
  v10 = sub_1D725CECC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v18 = MEMORY[0x1EEE9AC00](v15, v16);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a3;
  v22 = v21 >> 60;
  if ((v21 >> 60) > 5)
  {
    if (v22 > 8)
    {
      if (v22 == 9)
      {
        sub_1D5BBB3D0();
        result = sub_1D7262F8C();
        v33 = 0xA000000000000000;
      }

      else
      {
        if (v22 != 10)
        {
          v43[0] = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          return sub_1D5C093B0(a1, a2, v43, v18);
        }

        sub_1D5BBB368();
        result = sub_1D7262F8C();
        v33 = 0xB000000000000000;
      }

      goto LABEL_22;
    }

    if (v22 == 6)
    {
      sub_1D5BBB23C();
      result = sub_1D7262F8C();
      *a4 = result | 0x8000000000000000;
    }

    else if (v22 == 7)
    {
      v38 = a4;
      sub_1D6CCCC8C();
      v25 = *(swift_projectBox() + *(v24 + 48));

      v37[1] = a1;
      sub_1D725CE9C();
      swift_beginAccess();
      if (*(v5 + 24))
      {
        v41 = sub_1D725CEAC();
        v42 = v26;
        MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
        v39 = sub_1D725CEBC();
        v27 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v27);

        v29 = v41;
        v28 = v42;
      }

      else
      {
        v29 = *(v25 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_reuseIdentifier);
        v28 = *(v25 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_reuseIdentifier + 8);
      }

      swift_beginAccess();
      v34 = *(v5 + 432);

      v35 = sub_1D5BE240C(v29, v28, v34);

      if ((v35 & 1) == 0)
      {
        swift_beginAccess();

        sub_1D5B860D0(&v40, v29, v28);
        swift_endAccess();

        sub_1D5BBB4FC();

        sub_1D7262FAC();
      }

      sub_1D5BBB4FC();
      v36 = sub_1D7262F8C();

      result = (*(v11 + 8))(v14, v10);
      *v38 = v36 | 0x9000000000000000;
    }

    else
    {
      sub_1D5BBAFE4();
      result = sub_1D7262F8C();
      *a4 = result | 0x6000000000000000;
    }
  }

  else
  {
    if (v22 <= 2)
    {
      if (v22)
      {
        if (v22 == 1)
        {
          sub_1D5BBACEC();
          result = sub_1D7262F8C();
          *a4 = result | 0x1000000000000000;
        }

        else
        {
          sub_1D5BB9648();
          result = sub_1D7262F8C();
          *a4 = result | 0x2000000000000000;
        }

        return result;
      }

      sub_1D5BBB4FC();
      result = sub_1D7262F8C();
      v33 = 0x9000000000000000;
LABEL_22:
      *a4 = result | v33;
      return result;
    }

    if (v22 == 3)
    {
      sub_1D5BBAEB8();
      result = sub_1D7262F8C();
      *a4 = result | 0x3000000000000000;
    }

    else if (v22 == 4)
    {
      v30 = v17;
      sub_1D5BE5E28();
      v31 = swift_projectBox();
      sub_1D5BFDCF8(v31, v20, type metadata accessor for HeadlineViewLayout.Context);
      if ([*&v20[*(v30 + 20) + 40] hasVideo])
      {
        sub_1D5BB032C(0, &qword_1EDF3B5B0, &qword_1EDF33558, type metadata accessor for VideoView, &unk_1EDF33560);
        v32 = sub_1D7262F8C();
        result = sub_1D5B88E30(v20, type metadata accessor for HeadlineViewLayout.Context);
        *a4 = v32 | 0x5000000000000000;
      }

      else
      {
        sub_1D5B88E30(v20, type metadata accessor for HeadlineViewLayout.Context);
        sub_1D5BB032C(0, &qword_1EDF3B5B8, &qword_1EDF33570, MEMORY[0x1E69D8868], qword_1EDF33578);
        result = sub_1D7262F8C();
        *a4 = result | 0x4000000000000000;
      }
    }

    else
    {
      sub_1D5BBB110();
      result = sub_1D7262F8C();
      *a4 = result | 0x7000000000000000;
    }
  }

  return result;
}

id sub_1D5C099EC(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E6969530];
  sub_1D5BF7980(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v27[-v7];
  sub_1D5BF7A48(a1, &v27[-v7], &qword_1EDF45B00, v4);
  v9 = sub_1D725891C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D6A5795C(v8, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  }

  else
  {
    sub_1D725871C();
    (*(v10 + 8))(v8, v9);
  }

  sub_1D5BF7980(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v12 = MEMORY[0x1E69DB648];
  *(inited + 16) = xmmword_1D7270C10;
  v13 = *v12;
  *(inited + 32) = *v12;
  v14 = *(v2 + 32);
  v15 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(inited + 40) = v14;
  v16 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v15;
  *(inited + 72) = v16;
  v17 = *(v2 + 80);
  *(inited + 104) = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(inited + 80) = v17;
  v18 = v13;
  v19 = v14;
  v20 = v16;
  v21 = v17;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  v22 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v23 = sub_1D726203C();

  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v24 = sub_1D7261D2C();

  v25 = [v22 initWithString:v23 attributes:v24];

  return v25;
}

void sub_1D5C09D34()
{
  if (!qword_1EDF1A2D0)
  {
    type metadata accessor for Key(255);
    sub_1D5BABC90(&qword_1EDF1A8E0, type metadata accessor for Key);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A2D0);
    }
  }
}

void sub_1D5C09DD4()
{
  if (!qword_1EDF1A8B0)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1A8B0);
    }
  }
}

unint64_t sub_1D5C09E68()
{
  result = qword_1EDF1A8E0;
  if (!qword_1EDF1A8E0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1A8E0);
  }

  return result;
}

uint64_t HeadlineViewLayout.Context.init(key:model:styler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_1D725891C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v152 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeedHeadline(0);
  v148 = *(v12 - 8);
  v13 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v139 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v137 = &v133 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v143 = &v133 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v135 = &v133 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v141 = (&v133 - v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v134 = &v133 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = (&v133 - v32);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v133 - v36;
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v138 = &v133 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v136 = &v133 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v142 = &v133 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v140 = &v133 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v133 - v52;
  *a4 = a1;
  v54 = type metadata accessor for HeadlineViewLayout.Context(0);
  sub_1D5C0C74C(a2, a4 + *(v54 + 20));
  v151 = v54;
  v55 = *(v54 + 24);
  v155 = a4;
  sub_1D5B68374(a3, a4 + v55);
  v153 = a3;
  sub_1D5B68374(a3, v158);
  v145 = v9;
  v56 = *(v9 + 56);
  v156 = v8;
  v149 = v56;
  v150 = v9 + 56;
  v56(v53, 1, 1, v8);
  v154 = a2;
  sub_1D5C0C74C(a2, v37);
  sub_1D5C0C74C(v37, v33);
  v57 = *(v148 + 80);
  v58 = (v57 + 16) & ~v57;
  v148 = v13;
  v146 = v57;
  v59 = swift_allocObject();
  v147 = v58;
  v133 = v59;
  sub_1D5BE3054(v37, v59 + v58, type metadata accessor for FeedHeadline);
  sub_1D5C0B6D8(0);
  v60 = swift_allocObject();
  v60[2] = 0xC04E000000000000;
  v62 = v159;
  v61 = v160;
  __swift_project_boxed_opaque_existential_1(v158, v159);
  v63 = [v33[5] title];
  if (v63)
  {
    v64 = v63;
    v65 = sub_1D726207C();
    v67 = v66;
  }

  else
  {
    v65 = 0;
    v67 = 0xE000000000000000;
  }

  v68 = (*(v61 + 40))(v65, v67, v62, v61);

  sub_1D5C0AEA0(v33, type metadata accessor for FeedHeadline);
  *(v60 + *(*v60 + 120)) = v68;
  *(v60 + *(*v60 + 136)) = v68;
  v69 = v68;
  v70 = v152;
  sub_1D725890C();
  v71 = v60 + *(*v60 + 128);
  v72 = v156;
  v145 = *(v145 + 32);
  (v145)(v71, v70, v156);
  v144 = objc_opt_self();
  LOBYTE(v70) = [v144 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(v158);
  *(v60 + qword_1EDF347F8) = v70;
  sub_1D5BE3054(v53, v60 + qword_1EDF347F0, sub_1D5B5B2A0);
  v73 = swift_allocObject();
  v74 = v133;
  v73[2] = sub_1D6A6B930;
  v73[3] = v74;
  v73[4] = v69;
  v60[3] = sub_1D6A6BB14;
  v60[4] = v73;
  v75 = v151;
  v77 = v154;
  v76 = v155;
  *(v155 + v151[7]) = v60;
  v78 = v153;
  *(v76 + v75[8]) = sub_1D5C0CCE4(v77, v153);
  sub_1D5B68374(v78, v158);
  v149(v140, 1, 1, v72);
  v79 = v134;
  sub_1D5C0C74C(v77, v134);
  v80 = v141;
  sub_1D5C0C74C(v79, v141);
  v81 = v147;
  v82 = swift_allocObject();
  sub_1D5BE3054(v79, v82 + v81, type metadata accessor for FeedHeadline);
  v83 = swift_allocObject();
  v83[2] = 0xC04E000000000000;
  v84 = v159;
  v85 = v160;
  __swift_project_boxed_opaque_existential_1(v158, v159);
  v86 = [v80[5] sourceName];
  if (v86)
  {
    v87 = v86;
    v88 = sub_1D726207C();
    v90 = v89;
  }

  else
  {
    v88 = 0;
    v90 = 0xE000000000000000;
  }

  v91 = (*(v85 + 64))(v88, v90, v84, v85);

  sub_1D5C0AEA0(v141, type metadata accessor for FeedHeadline);
  *(v83 + *(*v83 + 120)) = v91;
  *(v83 + *(*v83 + 136)) = v91;
  v92 = v91;
  v93 = v152;
  sub_1D725890C();
  (v145)(v83 + *(*v83 + 128), v93, v156);
  LOBYTE(v93) = [v144 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(v158);
  *(v83 + qword_1EDF347F8) = v93;
  sub_1D5BE3054(v140, v83 + qword_1EDF347F0, sub_1D5B5B2A0);
  v94 = swift_allocObject();
  v94[2] = sub_1D6A6BB18;
  v94[3] = v82;
  v94[4] = v92;
  v83[3] = sub_1D6A6C5A0;
  v83[4] = v94;
  *(v155 + v151[9]) = v83;
  sub_1D5B68374(v153, v158);
  v141 = *(v154 + 40);
  v95 = [v141 publishDate];
  if (v95)
  {
    v96 = v142;
    v97 = v95;
    sub_1D72588BC();

    v98 = 0;
  }

  else
  {
    v98 = 1;
    v96 = v142;
  }

  v99 = 1;
  v149(v96, v98, 1, v156);
  v100 = v135;
  sub_1D5C0C74C(v154, v135);
  v101 = v143;
  sub_1D5C0C74C(v100, v143);
  v102 = v147;
  v103 = swift_allocObject();
  sub_1D5BE3054(v100, v103 + v102, type metadata accessor for FeedHeadline);
  v104 = swift_allocObject();
  v104[2] = 0xC04E000000000000;
  v105 = v159;
  v106 = v160;
  __swift_project_boxed_opaque_existential_1(v158, v159);
  v107 = [*(v101 + 40) publishDate];
  v108 = v136;
  if (v107)
  {
    v109 = v107;
    sub_1D72588BC();

    v99 = 0;
  }

  v110 = 1;
  v111 = v156;
  v149(v108, v99, 1, v156);
  v112 = (*(v106 + 56))(v108, v105, v106);
  sub_1D5C0AEA0(v108, sub_1D5B5B2A0);
  sub_1D5C0AEA0(v143, type metadata accessor for FeedHeadline);
  *(v104 + *(*v104 + 120)) = v112;
  *(v104 + *(*v104 + 136)) = v112;
  v113 = v112;
  v114 = v152;
  sub_1D725890C();
  (v145)(v104 + *(*v104 + 128), v114, v111);
  LOBYTE(v114) = [v144 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(v158);
  *(v104 + qword_1EDF347F8) = v114;
  sub_1D5BE3054(v142, v104 + qword_1EDF347F0, sub_1D5B5B2A0);
  v115 = swift_allocObject();
  v115[2] = sub_1D6A6BB30;
  v115[3] = v103;
  v115[4] = v113;
  v104[3] = sub_1D6A6C5A0;
  v104[4] = v115;
  *(v155 + v151[10]) = v104;
  sub_1D5B68374(v153, v158);
  v116 = [v141 publishDate];
  v117 = v138;
  if (v116)
  {
    v118 = v116;
    sub_1D72588BC();

    v110 = 0;
  }

  v119 = v156;
  v149(v117, v110, 1, v156);
  v120 = v154;
  v121 = v137;
  sub_1D5C0C74C(v154, v137);
  v122 = v139;
  sub_1D5C0C74C(v121, v139);
  v123 = v147;
  v124 = swift_allocObject();
  sub_1D5BE3054(v121, v124 + v123, type metadata accessor for FeedHeadline);
  sub_1D5B7B5E0(0, qword_1EDF34768, sub_1D5B58D88, type metadata accessor for CachedText);
  v125 = swift_allocObject();
  v125[2] = 0xC04E000000000000;
  sub_1D5C0B080(v122, v157);
  sub_1D5C0AEA0(v122, type metadata accessor for FeedHeadline);
  v126 = (v125 + *(*v125 + 120));
  v128 = v157[0];
  v127 = v157[1];
  *v126 = v157[0];
  v126[1] = v127;
  v129 = (v125 + *(*v125 + 136));
  *v129 = v128;
  v129[1] = v127;
  swift_bridgeObjectRetain_n();
  v130 = v152;
  sub_1D725890C();
  (v145)(v125 + *(*v125 + 128), v130, v119);
  LOBYTE(v119) = [v144 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(v158);
  *(v125 + qword_1EDF347F8) = v119;
  sub_1D5BE3054(v117, v125 + qword_1EDF347F0, sub_1D5B5B2A0);
  v131 = swift_allocObject();
  v131[2] = sub_1D6A6BBDC;
  v131[3] = v124;
  v131[4] = v128;
  v131[5] = v127;
  v125[3] = sub_1D6A6BC5C;
  v125[4] = v131;
  __swift_destroy_boxed_opaque_existential_1(v153);
  result = sub_1D5C0AEA0(v120, type metadata accessor for FeedHeadline);
  *(v155 + v151[11]) = v125;
  return result;
}

uint64_t sub_1D5C0ACCC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C0AD20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5C0AD80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5C0ADE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5C0AE40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5C0AEA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5C0AF00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5C0AF60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5C0AFC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5C0B020(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5C0B080@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v35 - v10;
  sub_1D5B7B5E0(0, &qword_1EDF195A0, sub_1D5B58D88, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7279970;
  v13 = *(a1 + 40);
  v14 = [v13 sourceName];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1D726207C();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  *(v12 + 32) = v16;
  *(v12 + 40) = v18;
  v19 = [v13 title];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1D726207C();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  *(v12 + 48) = v21;
  *(v12 + 56) = v23;
  v24 = [v13 publishDate];
  if (v24)
  {
    v25 = v24;
    sub_1D72588BC();

    v26 = sub_1D725891C();
    (*(*(v26 - 8) + 56))(v7, 0, 1, v26);
  }

  else
  {
    v26 = sub_1D725891C();
    (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
  }

  sub_1D5BE3054(v7, v11, sub_1D5B5B2A0);
  sub_1D725891C();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v11, 1, v26) == 1)
  {
    sub_1D5C0AEA0(v11, sub_1D5B5B2A0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = sub_1D725870C();
    v29 = v30;
    (*(v27 + 8))(v11, v26);
  }

  *(v12 + 64) = v28;
  *(v12 + 72) = v29;
  v31 = sub_1D725CE4C();
  v33 = v32;

  *a2 = v31;
  a2[1] = v33;
  return result;
}

uint64_t sub_1D5C0B38C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v28 = a7;
  v29 = a1;
  v10 = v7;
  v30 = a2;
  v12 = a4(0);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v17 = &v25 - v16;
  v18 = *(a3 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (!v18)
  {
    return v19;
  }

  v31 = MEMORY[0x1E69E7CC0];
  v26 = a5;
  (a5)(0, v18, 0, v15);
  v19 = v31;
  v20 = *(a6(0) - 8);
  v21 = a3 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v27 = *(v20 + 72);
  while (1)
  {
    v29(v21);
    if (v10)
    {
      break;
    }

    v10 = 0;
    v31 = v19;
    v23 = *(v19 + 16);
    v22 = *(v19 + 24);
    if (v23 >= v22 >> 1)
    {
      v26(v22 > 1, v23 + 1, 1);
      v19 = v31;
    }

    *(v19 + 16) = v23 + 1;
    sub_1D5C0B598(v17, v19 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v23, v28);
    v21 += v27;
    if (!--v18)
    {
      return v19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5C0B598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5C0B600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

unint64_t sub_1D5C0B754()
{
  result = qword_1EDF05F48;
  if (!qword_1EDF05F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F48);
  }

  return result;
}

unint64_t sub_1D5C0B7A8()
{
  result = qword_1EDF05F60;
  if (!qword_1EDF05F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F60);
  }

  return result;
}

unint64_t sub_1D5C0B800()
{
  result = qword_1EDF05F50;
  if (!qword_1EDF05F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F50);
  }

  return result;
}

unint64_t sub_1D5C0B854()
{
  result = qword_1EDF05F58;
  if (!qword_1EDF05F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F58);
  }

  return result;
}