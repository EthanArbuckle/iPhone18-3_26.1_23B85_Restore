uint64_t sub_1B0BA9058(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v76 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x1E69E7CD0];
    goto LABEL_55;
  }

  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1 << *(a1 + 32);
  v67 = ~v8;
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = (63 - v8) >> 6;
  v12 = a2 + 56;
  v70 = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = 0;
  do
  {
LABEL_6:
    if (v10)
    {
      v15 = v70;
    }

    else
    {
      v16 = v14;
      v15 = v70;
      do
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_59;
        }

        if (v17 >= v11)
        {
          goto LABEL_54;
        }

        v10 = *(v7 + 8 * v17);
        ++v16;
      }

      while (!v10);
      v14 = v17;
    }

    v69 = v14;
    v18 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v19 = (*(v15 + 48) + ((v14 << 10) | (16 * v18)));
    v21 = *v19;
    v20 = v19[1];
    v22 = *(v5 + 40);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](v20);
    v23 = sub_1B0E46CB8();
    v14 = v69;
    v24 = *(v5 + 32);
    v25 = -1 << v24;
    v2 = v23 & ~(-1 << v24);
    v4 = v2 >> 6;
    v3 = 1 << v2;
  }

  while (((1 << v2) & *(v12 + 8 * (v2 >> 6))) == 0);
  v26 = v24 & 0x3F;
  v27 = ~v25;
  while (1)
  {
    v28 = (*(v5 + 48) + 16 * v2);
    if (v28[1] == v20)
    {
      v29 = *v28;
      v30 = *(*v28 + 16);
      if (v30 == *(v21 + 16))
      {
        break;
      }
    }

LABEL_15:
    v2 = (v2 + 1) & v27;
    v4 = v2 >> 6;
    v3 = 1 << v2;
    if ((*(v12 + 8 * (v2 >> 6)) & (1 << v2)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v30)
  {
    v31 = v29 == v21;
  }

  else
  {
    v31 = 1;
  }

  if (!v31)
  {
    v32 = (v29 + 32);
    v33 = (v21 + 32);
    do
    {
      if (!v30)
      {
        goto LABEL_58;
      }

      if (*v32 != *v33)
      {
        goto LABEL_15;
      }

      ++v32;
      ++v33;
    }

    while (--v30);
  }

  v73 = v67;
  v74 = v69;
  v75 = v10;
  v72[0] = v70;
  v72[1] = v7;
  v65 = ((1 << v26) + 63) >> 6;
  v13 = 8 * v65;
  if (v26 > 0xD)
  {
    goto LABEL_60;
  }

  while (1)
  {
    v66 = &v64;
    MEMORY[0x1EEE9AC00](v23);
    v2 = &v64 - v34;
    memcpy(&v64 - v34, (v5 + 56), v35);
    v36 = *(v2 + 8 * v4) & ~v3;
    v37 = *(v5 + 16);
    v68 = v2;
    *(v2 + 8 * v4) = v36;
    v38 = v37 - 1;
    v39 = v69;
LABEL_28:
    v69 = v38;
LABEL_29:
    while (v10)
    {
LABEL_35:
      v42 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v43 = (*(v70 + 48) + ((v39 << 10) | (16 * v42)));
      v3 = *v43;
      v4 = v43[1];
      v44 = *(v5 + 40);
      v45 = v39;
      sub_1B0E46C28();
      v2 = &v71;
      MEMORY[0x1B2728D70](v4);
      v46 = sub_1B0E46CB8();
      v39 = v45;
      v47 = -1 << *(v5 + 32);
      v48 = v46 & ~v47;
      v49 = v48 >> 6;
      v50 = 1 << v48;
      if (((1 << v48) & *(v12 + 8 * (v48 >> 6))) != 0)
      {
        v51 = ~v47;
        while (1)
        {
          v52 = (*(v5 + 48) + 16 * v48);
          if (v52[1] == v4)
          {
            v53 = *v52;
            v54 = *(*v52 + 16);
            if (v54 == *(v3 + 16))
            {
              break;
            }
          }

LABEL_37:
          v48 = (v48 + 1) & v51;
          v49 = v48 >> 6;
          v50 = 1 << v48;
          if ((*(v12 + 8 * (v48 >> 6)) & (1 << v48)) == 0)
          {
            goto LABEL_29;
          }
        }

        if (v54)
        {
          v55 = v53 == v3;
        }

        else
        {
          v55 = 1;
        }

        if (!v55)
        {
          v56 = (v53 + 32);
          v57 = (v3 + 32);
          while (v54)
          {
            if (*v56 != *v57)
            {
              goto LABEL_37;
            }

            ++v56;
            ++v57;
            if (!--v54)
            {
              goto LABEL_48;
            }
          }

          __break(1u);
          goto LABEL_57;
        }

LABEL_48:
        v58 = v68[v49];
        v68[v49] = v58 & ~v50;
        if ((v58 & v50) != 0)
        {
          v38 = v69 - 1;
          if (__OFSUB__(v69, 1))
          {
            __break(1u);
          }

          if (v69 == 1)
          {

            v5 = MEMORY[0x1E69E7CD0];
            goto LABEL_54;
          }

          goto LABEL_28;
        }
      }
    }

    v40 = v39;
    while (1)
    {
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v41 >= v11)
      {
        v5 = sub_1B0BAB310(v68, v65, v69, v5);
        goto LABEL_54;
      }

      v10 = *(v7 + 8 * v41);
      ++v40;
      if (v10)
      {
        v39 = v41;
        goto LABEL_35;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    v61 = v13;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v62 = swift_slowAlloc();
  memcpy(v62, (v5 + 56), v61);
  v63 = sub_1B0BAA2A8(v62, v65, v5, v2, v72);

  MEMORY[0x1B272C230](v62, -1, -1);
  v67 = v73;
  v5 = v63;
LABEL_54:
  sub_1B03D91F8();
LABEL_55:
  v59 = *MEMORY[0x1E69E9840];
  return v5;
}

const void *sub_1B0BA9598(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v130 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 16);
  v102 = a5;
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v114 = a3 + 56;
LABEL_2:
  v100 = v6;
  while (1)
  {
LABEL_4:
    v7 = a5[3];
    v8 = a5[4];
    if (!v8)
    {
      v10 = (a5[2] + 64) >> 6;
      v11 = a5[3];
      while (1)
      {
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v9 >= v10)
        {
          if (v10 <= v7 + 1)
          {
            v91 = v7 + 1;
          }

          else
          {
            v91 = (a5[2] + 64) >> 6;
          }

          a5[3] = v91 - 1;
          a5[4] = 0;

          result = sub_1B0BAA704(a1, a2, v100, a3);
          v92 = *MEMORY[0x1E69E9840];
          return result;
        }

        v8 = *(a5[1] + 8 * v9);
        ++v11;
        if (v8)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
    }

    v9 = a5[3];
LABEL_10:
    v12 = (*(*a5 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v8)))));
    v14 = *v12;
    v13 = v12[1];
    a5[3] = v9;
    a5[4] = (v8 - 1) & v8;
    v15 = *(a3 + 40);
    sub_1B0E46C28();
    sub_1B03B2000(v14, v13);
    sub_1B0E42F48();
    v16 = sub_1B0E46CB8();
    v17 = a3;
    v18 = -1 << *(a3 + 32);
    v19 = v16 & ~v18;
    v20 = v19 >> 6;
    v21 = v114;
    v22 = 1 << v19;
    v119 = v13;
    if (((1 << v19) & *(v114 + 8 * (v19 >> 6))) != 0)
    {
      break;
    }

LABEL_3:
    sub_1B0391D50(v14, v119);
    a5 = v102;
  }

  v23 = ~v18;
  v24 = v13 >> 62;
  if (v14)
  {
    v25 = 0;
  }

  else
  {
    v25 = v13 == 0xC000000000000000;
  }

  v26 = !v25;
  v117 = v26;
  v109 = HIDWORD(v14);
  v27 = __OFSUB__(HIDWORD(v14), v14);
  v112 = v27;
  __n = BYTE6(v13);
  v110 = v14;
  v111 = HIDWORD(v14) - v14;
  v107 = (v14 >> 32) - v14;
  v108 = v14 >> 32;
  v116 = v14;
  v113 = v23;
  while (1)
  {
    v28 = (*(v17 + 48) + 16 * v19);
    v30 = *v28;
    v29 = v28[1];
    v31 = v29 >> 62;
    if (v29 >> 62 == 3)
    {
      if (v30)
      {
        v32 = 0;
      }

      else
      {
        v32 = v29 == 0xC000000000000000;
      }

      v34 = !v32 || v24 < 3;
      if (((v34 | v117) & 1) == 0)
      {
        v87 = 0;
        v88 = 0xC000000000000000;
LABEL_154:
        sub_1B0391D50(v87, v88);
        a5 = v102;
        v89 = a1[v20];
        a1[v20] = v89 & ~v22;
        if ((v89 & v22) == 0)
        {
          goto LABEL_4;
        }

        v6 = v100 - 1;
        if (__OFSUB__(v100, 1))
        {
          goto LABEL_188;
        }

        if (v100 == 1)
        {
          v90 = *MEMORY[0x1E69E9840];
          return MEMORY[0x1E69E7CD0];
        }

        goto LABEL_2;
      }

LABEL_45:
      v35 = 0;
      if (v24 <= 1)
      {
        goto LABEL_42;
      }

      goto LABEL_46;
    }

    if (v31 > 1)
    {
      if (v31 != 2)
      {
        goto LABEL_45;
      }

      v37 = *(v30 + 16);
      v36 = *(v30 + 24);
      v38 = __OFSUB__(v36, v37);
      v35 = v36 - v37;
      if (v38)
      {
        goto LABEL_168;
      }

      if (v24 <= 1)
      {
        goto LABEL_42;
      }
    }

    else if (v31)
    {
      LODWORD(v35) = HIDWORD(v30) - v30;
      if (__OFSUB__(HIDWORD(v30), v30))
      {
        goto LABEL_167;
      }

      v35 = v35;
      if (v24 <= 1)
      {
LABEL_42:
        v39 = __n;
        if (v24)
        {
          v39 = v111;
          if (v112)
          {
            goto LABEL_165;
          }
        }

        goto LABEL_48;
      }
    }

    else
    {
      v35 = BYTE6(v29);
      if (v24 <= 1)
      {
        goto LABEL_42;
      }
    }

LABEL_46:
    if (v24 != 2)
    {
      if (!v35)
      {
        goto LABEL_153;
      }

      goto LABEL_22;
    }

    v41 = *(v14 + 16);
    v40 = *(v14 + 24);
    v38 = __OFSUB__(v40, v41);
    v39 = v40 - v41;
    if (v38)
    {
      goto LABEL_166;
    }

LABEL_48:
    if (v35 != v39)
    {
      goto LABEL_22;
    }

    if (v35 < 1)
    {
      goto LABEL_153;
    }

    if (v31 > 1)
    {
      break;
    }

    if (v31)
    {
      if (v30 > v30 >> 32)
      {
        goto LABEL_169;
      }

      sub_1B03B2000(v30, v29);
      v51 = sub_1B0E42A98();
      if (v51)
      {
        v52 = v51;
        v53 = sub_1B0E42AC8();
        if (__OFSUB__(v30, v53))
        {
          goto LABEL_171;
        }

        v104 = (v30 - v53 + v52);
      }

      else
      {
        v104 = 0;
      }

      sub_1B0E42AB8();
      v14 = v116;
      if (v24 == 2)
      {
        v94 = *(v116 + 24);
        v98 = *(v116 + 16);
        v59 = sub_1B0E42A98();
        if (v59)
        {
          v75 = sub_1B0E42AC8();
          v76 = v98;
          if (__OFSUB__(v98, v75))
          {
            goto LABEL_185;
          }

          v59 += v98 - v75;
        }

        else
        {
          v76 = v98;
        }

        v85 = v94 - v76;
        if (__OFSUB__(v94, v76))
        {
          goto LABEL_181;
        }

        v86 = sub_1B0E42AB8();
        if (v86 >= v85)
        {
          v62 = v85;
        }

        else
        {
          v62 = v86;
        }

        result = v104;
        if (!v104)
        {
          goto LABEL_197;
        }

        v21 = v114;
        v14 = v116;
        if (!v59)
        {
          goto LABEL_202;
        }
      }

      else
      {
        if (v24 != 1)
        {
          v21 = v114;
          result = v104;
          *__s1 = v116;
          __s1[4] = v109;
          *&__s1[5] = *(&v116 + 5);
          __s1[7] = HIBYTE(v116);
          *&__s1[8] = v119;
          *&__s1[12] = WORD2(v119);
          if (!v104)
          {
            goto LABEL_191;
          }

          goto LABEL_121;
        }

        if (v108 < v110)
        {
          goto LABEL_180;
        }

        v59 = sub_1B0E42A98();
        if (v59)
        {
          v64 = sub_1B0E42AC8();
          if (__OFSUB__(v110, v64))
          {
            goto LABEL_187;
          }

          v59 += v110 - v64;
        }

        v65 = sub_1B0E42AB8();
        v62 = v107;
        if (v65 < v107)
        {
          v62 = v65;
        }

        v14 = v116;
        result = v104;
        if (!v104)
        {
          goto LABEL_198;
        }

        v21 = v114;
        if (!v59)
        {
          goto LABEL_199;
        }
      }

      goto LABEL_149;
    }

    *__s1 = v30;
    *&__s1[8] = v29;
    __s1[10] = BYTE2(v29);
    __s1[11] = BYTE3(v29);
    __s1[12] = BYTE4(v29);
    __s1[13] = BYTE5(v29);
    if (!v24)
    {
      goto LABEL_75;
    }

    if (v24 == 1)
    {
      if (v108 < v110)
      {
        goto LABEL_173;
      }

      sub_1B03B2000(v30, v29);
      v42 = sub_1B0E42A98();
      if (!v42)
      {
        goto LABEL_196;
      }

      v43 = v42;
      v44 = sub_1B0E42AC8();
      if (__OFSUB__(v110, v44))
      {
        goto LABEL_177;
      }

      v45 = (v110 - v44 + v43);
      v46 = sub_1B0E42AB8();
      if (!v45)
      {
        goto LABEL_195;
      }

LABEL_108:
      if (v46 >= v107)
      {
        v71 = v107;
      }

      else
      {
        v71 = v46;
      }

      v72 = memcmp(__s1, v45, v71);
      sub_1B0391D50(v30, v29);
      v21 = v114;
      v14 = v116;
LABEL_152:
      v23 = v113;
      v17 = a3;
      if (!v72)
      {
        goto LABEL_153;
      }

      goto LABEL_22;
    }

    v106 = *(v14 + 16);
    v96 = *(v14 + 24);
    sub_1B03B2000(v30, v29);
    v54 = sub_1B0E42A98();
    if (v54)
    {
      v66 = sub_1B0E42AC8();
      v67 = v106;
      if (__OFSUB__(v106, v66))
      {
        goto LABEL_182;
      }

      v54 = &v106[v54 - v66];
    }

    else
    {
      v67 = v106;
    }

    v79 = v96 - v67;
    if (__OFSUB__(v96, v67))
    {
      goto LABEL_174;
    }

    v80 = sub_1B0E42AB8();
    if (!v54)
    {
      goto LABEL_194;
    }

LABEL_129:
    if (v80 >= v79)
    {
      v81 = v79;
    }

    else
    {
      v81 = v80;
    }

    v82 = memcmp(__s1, v54, v81);
    sub_1B0391D50(v30, v29);
    v21 = v114;
    v17 = a3;
    v14 = v116;
    v23 = v113;
    if (!v82)
    {
LABEL_153:
      v87 = v14;
      v88 = v119;
      goto LABEL_154;
    }

LABEL_22:
    v19 = (v19 + 1) & v23;
    v20 = v19 >> 6;
    v22 = 1 << v19;
    if ((*(v21 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
    {
      goto LABEL_3;
    }
  }

  if (v31 == 2)
  {
    v47 = *(v30 + 16);
    sub_1B03B2000(v30, v29);
    v48 = sub_1B0E42A98();
    if (v48)
    {
      v49 = v48;
      v50 = sub_1B0E42AC8();
      if (__OFSUB__(v47, v50))
      {
        goto LABEL_170;
      }

      v103 = (v47 - v50 + v49);
    }

    else
    {
      v103 = 0;
    }

    sub_1B0E42AB8();
    v14 = v116;
    if (v24 != 2)
    {
      if (v24 == 1)
      {
        if (v108 < v110)
        {
          goto LABEL_175;
        }

        v59 = sub_1B0E42A98();
        if (v59)
        {
          v60 = sub_1B0E42AC8();
          if (__OFSUB__(v110, v60))
          {
            goto LABEL_186;
          }

          v59 += v110 - v60;
        }

        v61 = sub_1B0E42AB8();
        v62 = v107;
        if (v61 < v107)
        {
          v62 = v61;
        }

        v14 = v116;
        result = v103;
        if (!v103)
        {
          goto LABEL_201;
        }

        v21 = v114;
        if (!v59)
        {
          goto LABEL_200;
        }

        goto LABEL_149;
      }

      v21 = v114;
      result = v103;
      *__s1 = v116;
      __s1[4] = v109;
      *&__s1[5] = *(&v116 + 5);
      __s1[7] = HIBYTE(v116);
      *&__s1[8] = v119;
      *&__s1[12] = WORD2(v119);
      if (!v103)
      {
        goto LABEL_192;
      }

LABEL_121:
      v77 = __s1;
      v78 = __n;
LABEL_151:
      v72 = memcmp(result, v77, v78);
      sub_1B0391D50(v30, v29);
      goto LABEL_152;
    }

    v93 = *(v116 + 24);
    v97 = *(v116 + 16);
    v59 = sub_1B0E42A98();
    if (v59)
    {
      v73 = sub_1B0E42AC8();
      v74 = v97;
      if (__OFSUB__(v97, v73))
      {
        goto LABEL_184;
      }

      v59 += v97 - v73;
    }

    else
    {
      v74 = v97;
    }

    v83 = v93 - v74;
    if (__OFSUB__(v93, v74))
    {
      goto LABEL_179;
    }

    v84 = sub_1B0E42AB8();
    if (v84 >= v83)
    {
      v62 = v83;
    }

    else
    {
      v62 = v84;
    }

    result = v103;
    if (!v103)
    {
      goto LABEL_203;
    }

    v21 = v114;
    v14 = v116;
    if (!v59)
    {
      goto LABEL_204;
    }

LABEL_149:
    if (result == v59)
    {
      sub_1B0391D50(v14, v119);
      v87 = v30;
      v88 = v29;
      goto LABEL_154;
    }

    v78 = v62;
    v77 = v59;
    goto LABEL_151;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v24)
  {
LABEL_75:
    __s2 = v14;
    v121 = BYTE2(v14);
    v122 = BYTE3(v14);
    v123 = v109;
    v124 = BYTE5(v14);
    v125 = BYTE6(v14);
    v126 = HIBYTE(v14);
    v127 = v119;
    v128 = WORD2(v119);
    v57 = v17;
    v58 = memcmp(__s1, &__s2, __n);
    v17 = v57;
    v23 = v113;
    if (!v58)
    {
      goto LABEL_153;
    }

    goto LABEL_22;
  }

  if (v24 == 2)
  {
    v105 = *(v14 + 16);
    v95 = *(v14 + 24);
    sub_1B03B2000(v30, v29);
    v54 = sub_1B0E42A98();
    if (v54)
    {
      v55 = sub_1B0E42AC8();
      v56 = v105;
      if (__OFSUB__(v105, v55))
      {
        goto LABEL_183;
      }

      v54 = &v105[v54 - v55];
    }

    else
    {
      v56 = v105;
    }

    v79 = v95 - v56;
    if (__OFSUB__(v95, v56))
    {
      goto LABEL_176;
    }

    v80 = sub_1B0E42AB8();
    if (!v54)
    {
      goto LABEL_193;
    }

    goto LABEL_129;
  }

  if (v108 < v110)
  {
    goto LABEL_172;
  }

  sub_1B03B2000(v30, v29);
  v68 = sub_1B0E42A98();
  if (v68)
  {
    v69 = v68;
    v70 = sub_1B0E42AC8();
    if (__OFSUB__(v110, v70))
    {
      goto LABEL_178;
    }

    v45 = (v110 - v70 + v69);
    v46 = sub_1B0E42AB8();
    if (!v45)
    {
      goto LABEL_190;
    }

    goto LABEL_108;
  }

  sub_1B0E42AB8();
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  result = sub_1B0E42AB8();
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
  return result;
}

uint64_t sub_1B0BAA0B8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v9 = result;
  v10 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v11 = v10 - 1;
  v12 = a3 + 56;
  v13 = MEMORY[0x1E69E7CD0];
  while (2)
  {
    v32 = v11;
    do
    {
      while (1)
      {
        do
        {
          v15 = a5[3];
          v16 = a5[4];
          if (!v16)
          {
            v18 = (a5[2] + 64) >> 6;
            v19 = a5[3];
            while (1)
            {
              v17 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
                __break(1u);
                goto LABEL_25;
              }

              if (v17 >= v18)
              {
                break;
              }

              v16 = *(a5[1] + 8 * v17);
              ++v19;
              if (v16)
              {
                goto LABEL_10;
              }
            }

            if (v18 <= v15 + 1)
            {
              v28 = v15 + 1;
            }

            else
            {
              v28 = (a5[2] + 64) >> 6;
            }

            a5[3] = v28 - 1;
            a5[4] = 0;

            return sub_1B0BAA92C(v9, a2, v32, a3, a6, a7);
          }

          v17 = a5[3];
LABEL_10:
          v20 = *(*(*a5 + 48) + ((v17 << 8) | (4 * __clz(__rbit64(v16)))));
          a5[3] = v17;
          a5[4] = (v16 - 1) & v16;
          v21 = *(a3 + 40);
          sub_1B0E46C28();
          sub_1B0E46C88();
          result = sub_1B0E46CB8();
          v22 = -1 << *(a3 + 32);
          v23 = result & ~v22;
          v24 = v23 >> 6;
          v25 = 1 << v23;
        }

        while (((1 << v23) & *(v12 + 8 * (v23 >> 6))) == 0);
        v26 = *(a3 + 48);
        if (*(v26 + 4 * v23) == v20)
        {
          break;
        }

        v27 = ~v22;
        while (1)
        {
          v23 = (v23 + 1) & v27;
          v24 = v23 >> 6;
          v25 = 1 << v23;
          if (((1 << v23) & *(v12 + 8 * (v23 >> 6))) == 0)
          {
            break;
          }

          if (*(v26 + 4 * v23) == v20)
          {
            goto LABEL_3;
          }
        }
      }

LABEL_3:
      v14 = v9[v24];
      v9[v24] = v14 & ~v25;
    }

    while ((v14 & v25) == 0);
    v11 = v32 - 1;
    if (!__OFSUB__(v32, 1))
    {
      if (v32 != 1)
      {
        continue;
      }

      return v13;
    }

    break;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1B0BAA2A8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (2)
  {
    v34 = v9;
    while (1)
    {
LABEL_3:
      v11 = a5[3];
      v12 = a5[4];
      if (!v12)
      {
        v14 = (a5[2] + 64) >> 6;
        v15 = a5[3];
        while (1)
        {
          v13 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v13 >= v14)
          {
            if (v14 <= v11 + 1)
            {
              v32 = v11 + 1;
            }

            else
            {
              v32 = (a5[2] + 64) >> 6;
            }

            a5[3] = v32 - 1;
            a5[4] = 0;

            return sub_1B0BAB310(v7, a2, v34, a3);
          }

          v12 = *(a5[1] + 8 * v13);
          ++v15;
          if (v12)
          {
            goto LABEL_9;
          }
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      v13 = a5[3];
LABEL_9:
      v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
      v17 = *v16;
      v18 = v16[1];
      a5[3] = v13;
      a5[4] = (v12 - 1) & v12;
      v19 = *(a3 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v18);
      result = sub_1B0E46CB8();
      v20 = -1 << *(a3 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      v23 = 1 << v21;
      if (((1 << v21) & *(v10 + 8 * (v21 >> 6))) != 0)
      {
        v24 = ~v20;
        while (1)
        {
          v25 = (*(a3 + 48) + 16 * v21);
          if (v25[1] == v18)
          {
            v26 = *v25;
            v27 = *(*v25 + 16);
            if (v27 == *(v17 + 16))
            {
              break;
            }
          }

LABEL_11:
          v21 = (v21 + 1) & v24;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if ((*(v10 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
          {
            goto LABEL_3;
          }
        }

        if (v27)
        {
          v28 = v26 == v17;
        }

        else
        {
          v28 = 1;
        }

        if (!v28)
        {
          v29 = (v26 + 32);
          v30 = (v17 + 32);
          while (v27)
          {
            if (*v29 != *v30)
            {
              goto LABEL_11;
            }

            ++v29;
            ++v30;
            if (!--v27)
            {
              goto LABEL_22;
            }
          }

          __break(1u);
          goto LABEL_31;
        }

LABEL_22:
        v31 = v7[v22];
        v7[v22] = v31 & ~v23;
        if ((v31 & v23) != 0)
        {
          break;
        }
      }
    }

    v9 = v34 - 1;
    if (__OFSUB__(v34, 1))
    {
      goto LABEL_32;
    }

    if (v34 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1B0BAA4D0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (2)
  {
    v34 = v9;
    while (1)
    {
LABEL_3:
      v11 = a5[3];
      v12 = a5[4];
      if (!v12)
      {
        v14 = (a5[2] + 64) >> 6;
        v15 = a5[3];
        while (1)
        {
          v13 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v13 >= v14)
          {
            if (v14 <= v11 + 1)
            {
              v32 = v11 + 1;
            }

            else
            {
              v32 = (a5[2] + 64) >> 6;
            }

            a5[3] = v32 - 1;
            a5[4] = 0;

            return sub_1B0455AB8(v7, a2, v34, a3);
          }

          v12 = *(a5[1] + 8 * v13);
          ++v15;
          if (v12)
          {
            goto LABEL_9;
          }
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      v13 = a5[3];
LABEL_9:
      v16 = *(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12))));
      v17 = *v16;
      v18 = *(v16 + 8);
      a5[3] = v13;
      a5[4] = (v12 - 1) & v12;
      v19 = *(a3 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v18 | (v18 << 32));
      result = sub_1B0E46CB8();
      v20 = -1 << *(a3 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      v23 = 1 << v21;
      if (((1 << v21) & *(v10 + 8 * (v21 >> 6))) != 0)
      {
        v24 = ~v20;
        while (1)
        {
          v25 = (*(a3 + 48) + 16 * v21);
          if ((v25[2] | (v25[2] << 32)) == (v18 | (v18 << 32)))
          {
            v26 = *v25;
            v27 = *(*v25 + 16);
            if (v27 == *(v17 + 16))
            {
              break;
            }
          }

LABEL_11:
          v21 = (v21 + 1) & v24;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if ((*(v10 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
          {
            goto LABEL_3;
          }
        }

        if (v27)
        {
          v28 = v26 == v17;
        }

        else
        {
          v28 = 1;
        }

        if (!v28)
        {
          v29 = (v26 + 32);
          v30 = (v17 + 32);
          while (v27)
          {
            if (*v29 != *v30)
            {
              goto LABEL_11;
            }

            ++v29;
            ++v30;
            if (!--v27)
            {
              goto LABEL_22;
            }
          }

          __break(1u);
          goto LABEL_31;
        }

LABEL_22:
        v31 = v7[v22];
        v7[v22] = v31 & ~v23;
        if ((v31 & v23) != 0)
        {
          break;
        }
      }
    }

    v9 = v34 - 1;
    if (__OFSUB__(v34, 1))
    {
      goto LABEL_32;
    }

    if (v34 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1B0BAA704(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B0, &qword_1B0EC50F8);
  result = sub_1B0E46228();
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
    sub_1B0E46C28();
    sub_1B03B2000(v17, v18);
    sub_1B0E42F48();
    result = sub_1B0E46CB8();
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B0BAA92C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_1B0E46228();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + 4 * (v15 | (v13 << 6)));
    v19 = *(v11 + 40);
    sub_1B0E46C28();
    sub_1B0E46C88();
    result = sub_1B0E46CB8();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v11 + 48) + 4 * v23) = v18;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B0BAAB2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v70 - v10;
  v12 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v80 = *(v12 - 8);
  v13 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v84 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v70 - v16;
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4538, &qword_1B0EC52D0);
  result = sub_1B0E46228();
  v17 = result;
  v71 = v11;
  if (a2 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *a1;
  }

  v20 = 0;
  v79 = result;
  v74 = a4;
  v73 = a2;
  v72 = a1;
  v76 = v12;
  v77 = result + 56;
LABEL_9:
  if (v19)
  {
    v21 = __clz(__rbit64(v19));
    v81 = (v19 - 1) & v19;
    goto LABEL_16;
  }

  v22 = v20;
  while (1)
  {
    v20 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_60;
    }

    if (v20 >= a2)
    {
      break;
    }

    v23 = a1[v20];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v81 = (v23 - 1) & v23;
LABEL_16:
      v24 = *(a4 + 48);
      v82 = *(v80 + 72);
      v25 = v85;
      sub_1B0390720(v24 + v82 * (v21 | (v20 << 6)), v85, type metadata accessor for MoveAndCopyMessages.CommandID);
      v26 = *(v17 + 40);
      sub_1B0E46C28();
      sub_1B0390720(v25, v84, type metadata accessor for MoveAndCopyMessages.CommandID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v28 = v71;
          sub_1B03C60A4(v84, v71, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          MEMORY[0x1B2728D70](0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
          sub_1B0B0D328();
          sub_1B0E447C8();
          sub_1B0398EFC(v28, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          goto LABEL_45;
        }

        v75 = a3;
        v70 = *v84;
        v44 = *(v84 + 2);
        v45 = v84[2];
        MEMORY[0x1B2728D70](2);
        MEMORY[0x1B2728D70](v44 | (v44 << 32));
        v46 = v45 + 64;
        v47 = 1 << *(v45 + 32);
        if (v47 < 64)
        {
          v48 = ~(-1 << v47);
        }

        else
        {
          v48 = -1;
        }

        v49 = v48 & *(v45 + 64);
        v50 = (v47 + 63) >> 6;
        v78 = v45;
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v51 = 0;
        for (i = 0; v49; v17 = v79)
        {
          v83 = v51;
          v53 = i;
LABEL_40:
          v54 = __clz(__rbit64(v49));
          v49 &= v49 - 1;
          v55 = v54 | (v53 << 6);
          v56 = *(*(v78 + 48) + 4 * v55);
          v57 = (*(v78 + 56) + 24 * v55);
          v58 = *v57;
          v60 = *(v57 + 1);
          v59 = *(v57 + 2);
          sub_1B03B2000(v60, v59);
          v88 = v93;
          v89 = v94;
          v90 = v95;
          v86 = v91;
          v87 = v92;
          sub_1B0E46C88();
          MEMORY[0x1B2728D70](v58);
          sub_1B03B2000(v60, v59);
          sub_1B0E42F48();
          sub_1B0391D50(v60, v59);
          sub_1B0391D50(v60, v59);
          result = sub_1B0E46CB8();
          v51 = result ^ v83;
        }

        while (1)
        {
          v53 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v53 >= v50)
          {

            MEMORY[0x1B2728D70](v51);

            a4 = v74;
            a3 = v75;
            a2 = v73;
            a1 = v72;
            goto LABEL_45;
          }

          v49 = *(v46 + 8 * v53);
          ++i;
          if (v49)
          {
            v83 = v51;
            i = v53;
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        return result;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v75 = a3;
        v78 = *v84;
        v29 = *(v84 + 2);
        v30 = v84[2];
        MEMORY[0x1B2728D70](3);
        MEMORY[0x1B2728D70](v29 | (v29 << 32));
        v31 = v30 + 64;
        v32 = 1 << *(v30 + 32);
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        else
        {
          v33 = -1;
        }

        v34 = v33 & *(v30 + 64);
        v35 = (v32 + 63) >> 6;
        v83 = v30;
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v36 = 0;
        v37 = 0;
        if (v34)
        {
          while (1)
          {
            v38 = v37;
LABEL_28:
            v39 = __clz(__rbit64(v34)) | (v38 << 6);
            v40 = *(*(v83 + 48) + 4 * v39);
            v41 = (*(v83 + 56) + 16 * v39);
            v42 = *v41;
            v43 = v41[1];
            sub_1B03B2000(*v41, v43);
            if (v43 >> 60 == 15)
            {
              break;
            }

            v34 &= v34 - 1;
            v88 = v93;
            v89 = v94;
            v90 = v95;
            v86 = v91;
            v87 = v92;
            sub_1B0E46C88();
            sub_1B0E42F48();
            sub_1B0391D50(v42, v43);
            result = sub_1B0E46CB8();
            v36 ^= result;
            v37 = v38;
            if (!v34)
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
          while (1)
          {
LABEL_25:
            v38 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              goto LABEL_61;
            }

            if (v38 >= v35)
            {
              break;
            }

            v34 = *(v31 + 8 * v38);
            ++v37;
            if (v34)
            {
              goto LABEL_28;
            }
          }
        }

        MEMORY[0x1B2728D70](v36);

        a4 = v74;
        a3 = v75;
        a2 = v73;
        a1 = v72;
        v17 = v79;
      }

      else
      {
        MEMORY[0x1B2728D70](1);
      }

LABEL_45:
      result = sub_1B0E46CB8();
      v61 = -1 << *(v17 + 32);
      v62 = result & ~v61;
      v63 = v62 >> 6;
      if (((-1 << v62) & ~*(v77 + 8 * (v62 >> 6))) == 0)
      {
        v65 = 0;
        v66 = (63 - v61) >> 6;
        while (++v63 != v66 || (v65 & 1) == 0)
        {
          v67 = v63 == v66;
          if (v63 == v66)
          {
            v63 = 0;
          }

          v65 |= v67;
          v68 = *(v77 + 8 * v63);
          if (v68 != -1)
          {
            v64 = __clz(__rbit64(~v68)) + (v63 << 6);
            goto LABEL_55;
          }
        }

        goto LABEL_62;
      }

      v64 = __clz(__rbit64((-1 << v62) & ~*(v77 + 8 * (v62 >> 6)))) | v62 & 0x7FFFFFFFFFFFFFC0;
LABEL_55:
      *(v77 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v64;
      result = sub_1B0423C80(v85, *(v17 + 48) + v64 * v82, type metadata accessor for MoveAndCopyMessages.CommandID);
      ++*(v17 + 16);
      if (__OFSUB__(a3--, 1))
      {
        goto LABEL_63;
      }

      v19 = v81;
      if (!a3)
      {
        break;
      }

      goto LABEL_9;
    }
  }

  return v17;
}

uint64_t sub_1B0BAB310(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43E8, &qword_1B0EC5150);
  result = sub_1B0E46228();
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
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](v18);
    result = sub_1B0E46CB8();
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1B0BAB530(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4730, qword_1B0EC5B90);
  v3 = sub_1B0E466A8();
  v4 = *(a1 + 64);
  v5 = *(a1 + 96);
  v28 = *(a1 + 80);
  v29 = v5;
  v30 = *(a1 + 112);
  v6 = *(a1 + 48);
  v25 = *(a1 + 32);
  v26 = v6;
  v27 = v4;
  v7 = v25;
  v8 = DWORD2(v25);
  result = sub_1B03AB888(v25, DWORD2(v25));
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_1B03B5C80(&v25, v24, &qword_1EB6E4B00, &qword_1B0EC85E8);
    return v3;
  }

  v11 = (a1 + 120);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = v3[6] + 16 * result;
    *v12 = v7;
    *(v12 + 8) = v8;
    v13 = v3[7] + 72 * result;
    *v13 = v26;
    v14 = v27;
    v15 = v28;
    v16 = v29;
    *(v13 + 64) = v30;
    *(v13 + 32) = v15;
    *(v13 + 48) = v16;
    *(v13 + 16) = v14;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_1B03B5C80(&v25, v24, &qword_1EB6E4B00, &qword_1B0EC85E8);
    v20 = v11[2];
    v21 = v11[4];
    v28 = v11[3];
    v29 = v21;
    v30 = *(v11 + 40);
    v22 = v11[1];
    v25 = *v11;
    v26 = v22;
    v27 = v20;
    v7 = v25;
    v8 = DWORD2(v25);
    result = sub_1B03AB888(v25, DWORD2(v25));
    v11 = (v11 + 88);
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0BAB6F0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 176 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 176 * a3;
  v13 = (v7 + 32 + 176 * a2);
  if (result != v13 || result >= v13 + 176 * v12)
  {
    result = memmove(result, v13, 176 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0BAB7C8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4478, &qword_1B0EC51F0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1B0BAB8C4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v15 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > v6[3] >> 1)
  {
    if (v7 <= v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = v7;
    }

    v6 = sub_1B041DEEC(isUniquelyReferenced_nonNull_native, v17, 1, v6);
    *v4 = v6;
  }

  result = sub_1B0BAB7C8(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

unint64_t sub_1B0BAB9B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4818, &qword_1B0EC5FB0);
    v3 = sub_1B0E466A8();
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_1B0ADFFE8(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v10 = v3[7] + 12 * result;
      *v10 = v6;
      *(v10 + 8) = v7;
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

unint64_t sub_1B0BABAA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E45C0, &unk_1B0EC5930);
  v3 = sub_1B0E466A8();
  v4 = *(a1 + 176);
  *&v33[128] = *(a1 + 160);
  *&v33[144] = v4;
  *&v33[160] = *(a1 + 192);
  *&v33[169] = *(a1 + 201);
  v5 = *(a1 + 112);
  *&v33[64] = *(a1 + 96);
  *&v33[80] = v5;
  v6 = *(a1 + 144);
  *&v33[96] = *(a1 + 128);
  *&v33[112] = v6;
  v7 = *(a1 + 48);
  *v33 = *(a1 + 32);
  *&v33[16] = v7;
  v8 = *(a1 + 80);
  *&v33[32] = *(a1 + 64);
  *&v33[48] = v8;
  v9 = *v33;
  result = sub_1B03FE284(*v33);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_1B03B5C80(v33, v32, &qword_1EB6E43A8, &qword_1B0EC50F0);
    return v3;
  }

  v12 = (a1 + 224);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v9;
    v13 = v3[7] + 184 * result;
    v14 = *&v33[8];
    v15 = *&v33[24];
    v16 = *&v33[56];
    *(v13 + 32) = *&v33[40];
    *(v13 + 48) = v16;
    *v13 = v14;
    *(v13 + 16) = v15;
    v17 = *&v33[72];
    v18 = *&v33[88];
    v19 = *&v33[120];
    *(v13 + 96) = *&v33[104];
    *(v13 + 112) = v19;
    *(v13 + 64) = v17;
    *(v13 + 80) = v18;
    v20 = *&v33[136];
    v21 = *&v33[152];
    v22 = *&v33[168];
    *(v13 + 176) = v33[184];
    *(v13 + 144) = v21;
    *(v13 + 160) = v22;
    *(v13 + 128) = v20;
    v23 = v3[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      break;
    }

    v3[2] = v25;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_1B03B5C80(v33, v32, &qword_1EB6E43A8, &qword_1B0EC50F0);
    v26 = v12[9];
    *&v33[128] = v12[8];
    *&v33[144] = v26;
    *&v33[160] = v12[10];
    *&v33[169] = *(v12 + 169);
    v27 = v12[5];
    *&v33[64] = v12[4];
    *&v33[80] = v27;
    v28 = v12[7];
    *&v33[96] = v12[6];
    *&v33[112] = v28;
    v29 = v12[1];
    *v33 = *v12;
    *&v33[16] = v29;
    v30 = v12[3];
    *&v33[32] = v12[2];
    *&v33[48] = v30;
    v9 = *v33;
    result = sub_1B03FE284(*v33);
    v12 += 12;
    if (v31)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0BABCA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4208, &unk_1B0EC4458);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4778, &qword_1B0EC5E58);
    v8 = sub_1B0E466A8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v22 = *(v3 + 72);
    v23 = v9;
    while (1)
    {
      sub_1B03B5C80(v10, v6, &qword_1EB6E4208, &unk_1B0EC4458);
      v11 = *v6;
      v12 = *(v6 + 2);
      result = sub_1B03AB888(*v6, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v8[6] + 16 * result;
      *v16 = v11;
      *(v16 + 8) = v12;
      v17 = v8[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      result = sub_1B03C60A4(&v6[v23], v17 + *(*(v18 - 8) + 72) * v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v22;
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

void *sub_1B0BABEA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4810, &qword_1B0EC5FA8);
  v3 = sub_1B0E466A8();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = sub_1B03FE284(v4);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v3;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 88);
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v3[6] + 4 * v10) = v4;
    v13 = v3[7] + 24 * v10;
    *v13 = v5;
    *(v13 + 8) = v6;
    *(v13 + 16) = result;
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

    v17 = v12 + 4;
    v4 = *(v12 - 6);
    v5 = *(v12 - 2);
    v6 = *(v12 - 8);
    v18 = *v12;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v10 = sub_1B03FE284(v4);
    v12 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0BABFD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E51A8, &qword_1B0ECC590);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4838, &unk_1B0EC5FD0);
    v8 = sub_1B0E466A8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1B03B5C80(v10, v6, &qword_1EB6E51A8, &qword_1B0ECC590);
      result = sub_1B0AE0058(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for MoveAndCopyMessages.CommandID();
      result = sub_1B0423C80(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for MoveAndCopyMessages.CommandID);
      *(v8[7] + v14) = v6[v9];
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

unint64_t sub_1B0BAC1BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4828, &qword_1B0EC5FC0);
    v3 = sub_1B0E466A8();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = sub_1B0AE00C4(v6);
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

void *sub_1B0BAC2B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4710, &unk_1B0EC5A90);
  v3 = sub_1B0E466A8();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = sub_1B03FE284(v4);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v3;
  }

  v10 = v8;
  result = v6;
  v12 = (a1 + 88);
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v3[6] + 4 * v10) = v4;
    v13 = v3[7] + 24 * v10;
    *v13 = v5;
    *(v13 + 8) = result;
    *(v13 + 16) = v7 & 1;
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

    v17 = v12 + 32;
    v4 = *(v12 - 6);
    v5 = *(v12 - 16);
    v18 = *(v12 - 1);
    v7 = *v12;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v10 = sub_1B03FE284(v4);
    v12 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B0BAC3F0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47F0, &qword_1B0EC5F88);
  v3 = sub_1B0E466A8();
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v7 = sub_1B03B8A9C(v5, v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = result;
    v12[1] = v4;
    *(v3[7] + 8 * v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v17 = *(v11 - 2);
    v4 = *(v11 - 1);
    v18 = *v11;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v9 = sub_1B03B8A9C(v17, v4);
    v11 = v16;
    v6 = v18;
    result = v17;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B0BAC528(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_1B0E466A8();
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 44);
  v9 = sub_1B03AB888(v6, v7);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v5;
  }

  v11 = v9;
  result = v6;
  v13 = (a1 + 60);
  while (1)
  {
    *(v5 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    v14 = v5[6] + 16 * v11;
    *v14 = result;
    *(v14 + 8) = v7;
    *(v5[7] + v11) = v8;
    v15 = v5[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v5[2] = v17;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v18 = v13 + 16;
    v19 = *(v13 - 12);
    v7 = *(v13 - 1);
    v8 = *v13;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11 = sub_1B03AB888(v19, v7);
    v13 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B0BAC648(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4770, &qword_1B0EC5E50);
  v3 = sub_1B0E466A8();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = sub_1B03B8A9C(v5, v4);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v3;
  }

  v10 = v8;
  result = v5;
  v12 = (a1 + 88);
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v13 = 16 * v10;
    v14 = (v3[6] + v13);
    *v14 = result;
    v14[1] = v4;
    v15 = v3[7] + v13;
    *v15 = v6;
    *(v15 + 8) = v7;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v12 + 8;
    v20 = *(v12 - 3);
    v4 = *(v12 - 2);
    v21 = *(v12 - 1);
    v7 = *v12;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v10 = sub_1B03B8A9C(v20, v4);
    v12 = v19;
    v6 = v21;
    result = v20;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B0BAC794(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4768, &qword_1B0EC5E48);
  v3 = sub_1B0E466A8();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = sub_1B03B8A9C(v5, v4);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v3;
  }

  v12 = v10;
  result = v5;
  v14 = (a1 + 120);
  while (1)
  {
    *(v3 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    v15 = (v3[6] + 16 * v12);
    *v15 = result;
    v15[1] = v4;
    v16 = v3[7] + 32 * v12;
    *v16 = v6;
    *(v16 + 8) = v7;
    *(v16 + 16) = v8;
    *(v16 + 24) = v9;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v24 = v14 + 12;
    v20 = *(v14 - 5);
    v4 = *(v14 - 4);
    v21 = *(v14 - 3);
    v7 = *(v14 - 4);
    v22 = *(v14 - 1);
    v9 = *v14;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v12 = sub_1B03B8A9C(v20, v4);
    v14 = v24;
    v8 = v22;
    v6 = v21;
    result = v20;
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B0BAC91C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47C8, &qword_1B0EC5EA8);
  v3 = sub_1B0E466A8();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_1B03AB888(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v3;
  }

  v9 = v7;
  result = v4;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = v3[6] + 16 * v9;
    *v12 = result;
    *(v12 + 8) = v5;
    *(v3[7] + 8 * v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v17 = *(v11 - 2);
    v5 = *(v11 - 2);
    v6 = *v11;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v9 = sub_1B03AB888(v17, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0BACA44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E51B8, qword_1B0ECC5C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v19 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4808, &qword_1B0EC5FA0);
    v8 = sub_1B0E466A8();
    v20 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B03B5C80(v9, v6, &qword_1EB6E51B8, qword_1B0ECC5C8);
      v21 = *v6;
      result = sub_1B0AE01D0(v21, *(&v21 + 1));
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 16 * result) = v21;
      v14 = v8[7];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      result = sub_1B03C60A4(v6 + v20, v14 + *(*(v15 - 8) + 72) * v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v16 = v8[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v8[2] = v18;
      v9 += v10;
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

void *sub_1B0BACC44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4800, &qword_1B0EC5F98);
  v3 = sub_1B0E466A8();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1B03FE284(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v4;
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
    v4 = *(v10 - 2);
    v15 = *v10;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8 = sub_1B03FE284(v4);
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

void *sub_1B0BACD54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47C0, &qword_1B0EC5EA0);
  v3 = sub_1B0E466A8();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = sub_1B03FE284(v4);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v3;
  }

  v11 = v9;
  result = v6;
  v13 = (a1 + 104);
  while (1)
  {
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    *(v3[6] + 4 * v11) = v4;
    v14 = v3[7] + 32 * v11;
    *v14 = v5;
    *(v14 + 8) = result;
    *(v14 + 16) = v7 & 1;
    *(v14 + 24) = v8;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v18 = v13 + 5;
    v4 = *(v13 - 8);
    v5 = *(v13 - 24);
    v19 = *(v13 - 2);
    v7 = *(v13 - 8);
    v8 = *v13;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11 = sub_1B03FE284(v4);
    v13 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0BACE98(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0BACF84(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 48 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 48 * a3;
  v13 = (v7 + 32 + 48 * a2);
  if (result != v13 || result >= v13 + 48 * v12)
  {
    result = memmove(result, v13, 48 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0BAD088(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

unint64_t sub_1B0BAD160(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  v14 = 40 * v12;
  v15 = &v13[40 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0BAD28C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_1B0E42A98();
  v8 = result;
  if (result)
  {
    result = sub_1B0E42AC8();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_1B0E42AB8();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

unint64_t sub_1B0BAD344(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0BAD430(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0BAD55C()
{
  result = type metadata accessor for State.Logger();
  if (v1 <= 0x3F)
  {
    result = _s30MailboxesToSelectLoggingHelperCMa();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B0BAD608(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v106 = a5;
  v107 = a6;
  v104 = a3;
  v105 = a4;
  v103 = type metadata accessor for Command();
  v10 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v110 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for State.Logger();
  v12 = *(*(v96 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v96);
  v94 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v97 = &v93 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v93 - v17;
  v19 = type metadata accessor for StateWithTasks();
  sub_1B0390720(a2 + *(v19 + 28), v18, type metadata accessor for State.Logger);
  v20 = a1 + 56;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a1 + 56);
  v24 = (v21 + 63) >> 6;
  v102 = a7 & 1;
  v101 = a2 + 264;
  v108 = a1;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v26 = 0;
  v113 = 0;
  *&v27 = 68158723;
  v93 = v27;
  *&v27 = 68158467;
  v95 = v27;
  v112 = v18;
  v99 = a1 + 56;
  v98 = v24;
  v100 = a2;
  while (v23)
  {
    v32 = v110;
LABEL_15:
    v34 = *(v108 + 48) + ((v26 << 10) | (16 * __clz(__rbit64(v23))));
    v35 = *v34;
    v36 = *(v34 + 8);
    *v32 = *v34;
    *(v32 + 8) = v36;
    swift_storeEnumTagMultiPayload();
    swift_bridgeObjectRetain_n();
    v37 = static ConnectionUsage.empty.getter();
    v39 = v38;
    v117[0] = v106;
    v117[1] = v107;
    v118 = v102;
    v119 = v37;
    v120 = v38;
    v40 = v113;
    v41 = v104(v32, v117);
    v113 = v40;
    if (v40)
    {
      sub_1B0390574(v32, type metadata accessor for Command);

      sub_1B03C81E4(v39);
      v43 = v112;
      v44 = v97;
      sub_1B0390720(v112, v97, type metadata accessor for State.Logger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v45 = sub_1B0E43988();
      v46 = sub_1B0E458F8();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v116[0] = v111;
        *v47 = v95;
        *(v47 + 4) = 2;
        *(v47 + 8) = 256;
        v48 = *(v96 + 20);
        v109 = v45;
        v49 = *(v44 + v48);
        sub_1B0390574(v44, type metadata accessor for State.Logger);
        *(v47 + 10) = v49;
        *(v47 + 11) = 2160;
        *(v47 + 13) = 0x786F626C69616DLL;
        *(v47 + 21) = 2085;
        v114 = v35;
        v115 = v36;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v50 = sub_1B0E44BA8();
        v52 = sub_1B0399D64(v50, v51, v116);

        *(v47 + 23) = v52;
        v45 = v109;
        _os_log_impl(&dword_1B0389000, v109, v46, "[%.*hhx] Failed to de-select mailbox '%{sensitive,mask.mailbox}s'", v47, 0x1Fu);
        v53 = v111;
        __swift_destroy_boxed_opaque_existential_0Tm(v111);
        MEMORY[0x1B272C230](v53, -1, -1);
        v54 = v47;
        v43 = v112;
        MEMORY[0x1B272C230](v54, -1, -1);
      }

      else
      {
        sub_1B0390574(v44, type metadata accessor for State.Logger);
      }

      v57 = 0;
    }

    else
    {
      v55 = v42;
      v56 = v41;
      sub_1B0390574(v32, type metadata accessor for Command);

      sub_1B03C81E4(v39);
      if (v55)
      {
        v43 = v112;
      }

      else
      {
        v43 = v112;
        v58 = v94;
        sub_1B0390720(v112, v94, type metadata accessor for State.Logger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v59 = sub_1B0E43988();
        v60 = sub_1B0E45908();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          LODWORD(v109) = v60;
          v62 = v61;
          v111 = swift_slowAlloc();
          v116[0] = v111;
          *v62 = v93;
          *(v62 + 4) = 2;
          *(v62 + 8) = 256;
          v63 = v58;
          v64 = *(v58 + *(v96 + 20));
          sub_1B0390574(v63, type metadata accessor for State.Logger);
          *(v62 + 10) = v64;
          *(v62 + 11) = 2160;
          *(v62 + 13) = 0x786F626C69616DLL;
          *(v62 + 21) = 2085;
          v114 = v35;
          v115 = v36;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v65 = sub_1B0E44BA8();
          v67 = v59;
          v68 = sub_1B0399D64(v65, v66, v116);

          *(v62 + 23) = v68;
          *(v62 + 31) = 2082;
          v69 = ConnectionID.debugDescription.getter(v56);
          v71 = sub_1B0399D64(v69, v70, v116);

          *(v62 + 33) = v71;
          v43 = v112;
          _os_log_impl(&dword_1B0389000, v67, v109, "[%.*hhx] De-selected '%{sensitive,mask.mailbox}s' on %{public}s", v62, 0x29u);
          v72 = v111;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v72, -1, -1);
          MEMORY[0x1B272C230](v62, -1, -1);
        }

        else
        {
          sub_1B0390574(v58, type metadata accessor for State.Logger);
        }
      }

      v57 = v113;
    }

    v73 = *(a2 + 272);
    v74 = v73[2];
    if (v74)
    {
      v75 = *(a2 + 272);
      result = swift_isUniquelyReferenced_nonNull_native();
      v113 = v57;
      if ((result & 1) == 0)
      {
        result = sub_1B0B8CA2C(v73);
        v73 = result;
      }

      v76 = 0;
      while (v76 < v73[2])
      {
        v77 = v76 + 1;
        v78 = *(type metadata accessor for RunningTask() - 8);
        v79 = v73 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v76;
        result = sub_1B0B77B7C(v35, v36, a2, v43);
        v76 = v77;
        if (v74 == v77)
        {

          *(a2 + 272) = v73;
          v57 = v113;
          goto LABEL_34;
        }
      }

      __break(1u);
      goto LABEL_50;
    }

LABEL_34:
    MEMORY[0x1EEE9AC00](v80);
    *(&v93 - 2) = v101;
    *(&v93 - 1) = v43;
    result = sub_1B03C9E58(sub_1B0BAE018, (&v93 - 2));
    v81 = *(a2 + 272);
    v82 = v81[2];
    v83 = v82 - result;
    if (v82 < result)
    {
      goto LABEL_51;
    }

    v84 = result;
    if (result < 0)
    {
      goto LABEL_52;
    }

    v85 = result;
    if (__OFADD__(v82, result - v82))
    {
      goto LABEL_53;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v113 = v57;
    v111 = &v93;
    v109 = -v83;
    if (!isUniquelyReferenced_nonNull_native || v85 > v81[3] >> 1)
    {
      if (v82 <= v85)
      {
        v87 = v82 - v83;
      }

      else
      {
        v87 = v82;
      }

      v81 = sub_1B043B274(isUniquelyReferenced_nonNull_native, v87, 1, v81);
    }

    v88 = *(type metadata accessor for RunningTask() - 8);
    v89 = v81 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
    v90 = *(v88 + 72);
    v91 = v90 * v84;
    result = swift_arrayDestroy();
    if (v82 != v84)
    {
      if (v91 < v90 * v82 || &v89[v90 * v84] >= &v89[v90 * v82 + (v81[2] - v82) * v90])
      {
        result = swift_arrayInitWithTakeFrontToBack();
        v28 = v109;
      }

      else
      {
        v92 = v91 == v90 * v82;
        v28 = v109;
        if (!v92)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }
      }

      v29 = v81[2];
      v30 = __OFADD__(v29, v28);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_54;
      }

      v81[2] = v31;
    }

    v23 &= v23 - 1;
    v18 = v112;
    a2 = v100;
    *(v100 + 272) = v81;
    v20 = v99;
    v24 = v98;
  }

  v32 = v110;
  while (1)
  {
    v33 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v33 >= v24)
    {

      return sub_1B0390574(v18, type metadata accessor for State.Logger);
    }

    v23 = *(v20 + 8 * v33);
    ++v26;
    if (v23)
    {
      v26 = v33;
      goto LABEL_15;
    }
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

BOOL sub_1B0BAE058(char *a1, char *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v15 = a2[4];
  v16 = a2[5];
  v17 = a2[6];
  v18 = a2[7];
  if (v10)
  {
    v19 = 0x100000000000000;
  }

  else
  {
    v19 = 0;
  }

  v20 = (v9 & 1) == 0;
  v21 = 0x1000000000000;
  if (v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = 0x1000000000000;
  }

  v20 = (v8 & 1) == 0;
  v23 = 0x10000000000;
  if (v20)
  {
    v24 = 0;
  }

  else
  {
    v24 = 0x10000000000;
  }

  v20 = (v7 & 1) == 0;
  v25 = 0x100000000;
  if (v20)
  {
    v26 = 0;
  }

  else
  {
    v26 = 0x100000000;
  }

  v20 = (v6 & 1) == 0;
  v27 = 0x1000000;
  if (v20)
  {
    v28 = 0;
  }

  else
  {
    v28 = 0x1000000;
  }

  v29 = v3 & 1;
  v30 = ((v4 << 8) | (v5 << 16) | v28 | v26 | v24 | v22) + v19;
  if (v18)
  {
    v31 = 0x100000000000000;
  }

  else
  {
    v31 = 0;
  }

  if ((v17 & 1) == 0)
  {
    v21 = 0;
  }

  if ((v16 & 1) == 0)
  {
    v23 = 0;
  }

  if ((v15 & 1) == 0)
  {
    v25 = 0;
  }

  if ((v14 & 1) == 0)
  {
    v27 = 0;
  }

  v32 = (v12 << 8) | (v13 << 16) | v27 | v25;

  return sub_1B03A5B78(v30 | v29, ((v32 | v23 | v21) + v31) | v11 & 1);
}

unint64_t sub_1B0BAE164()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x746C7561666564;
  }

  *v0;
  return result;
}

uint64_t sub_1B0BAE1A4(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 56);
  v5 = (v2 + 63) >> 6;
  while (v4)
  {
    v6 = v1;
LABEL_10:
    v7 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    if (*(*(result + 48) + (v7 | (v6 << 6))) - 2 >= 3)
    {
      return 1;
    }
  }

  while (1)
  {
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v6 >= v5)
    {
      return 0;
    }

    v4 = *(result + 56 + 8 * v6);
    ++v1;
    if (v4)
    {
      v1 = v6;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0BAE254()
{
  result = qword_1EB6E51C0;
  if (!qword_1EB6E51C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E51C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SyncBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_1B0BAE3AC()
{
  result = qword_1EB6E51C8;
  if (!qword_1EB6E51C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E51C8);
  }

  return result;
}

unint64_t sub_1B0BAE404()
{
  result = qword_1EB6E51D0;
  if (!qword_1EB6E51D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E51D0);
  }

  return result;
}

unint64_t sub_1B0BAE48C()
{
  result = qword_1EB6E51E8;
  if (!qword_1EB6E51E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E51E8);
  }

  return result;
}

unint64_t sub_1B0BAE4E4()
{
  result = qword_1EB6E51F0;
  if (!qword_1EB6E51F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E51F0);
  }

  return result;
}

unint64_t sub_1B0BAE53C()
{
  result = qword_1EB6E51F8;
  if (!qword_1EB6E51F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E51F8);
  }

  return result;
}

uint64_t sub_1B0BAE5C0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B0BAE618()
{
  result = qword_1EB6E5210;
  if (!qword_1EB6E5210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5210);
  }

  return result;
}

unint64_t sub_1B0BAE67C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x1E69E7CC0];
  sub_1B041D32C(0, v1, 0);
  v2 = v27;
  v4 = -1 << *(a1 + 32);
  v26 = a1 + 56;
  result = sub_1B0E460B8();
  v6 = result;
  v7 = 0;
  v25 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v26 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    result = sub_1B0BAEDAC(*(*(a1 + 48) + v6));
    v14 = *(v27 + 16);
    v13 = *(v27 + 24);
    if (v14 >= v13 >> 1)
    {
      v23 = v12;
      v24 = result;
      sub_1B041D32C((v13 > 1), v14 + 1, 1);
      v12 = v23;
      result = v24;
    }

    *(v27 + 16) = v14 + 1;
    v15 = v27 + 16 * v14;
    *(v15 + 32) = result;
    *(v15 + 40) = v12;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v16 = *(v26 + 8 * v10);
    if ((v16 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v6 & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v25;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v9 = v25;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_1B0425168(v6, v11, 0);
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1B0425168(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
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

char *sub_1B0BAE8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  v5 = 0;
  v6 = a1 + 56;
  v7 = a2 + 56;
  v8 = a3 + 56;
  v9 = MEMORY[0x1E69E7CC0];
  do
  {
    v10 = byte_1F2710570[v5 + 32];
    if (*(v4 + 16) && (v11 = *(v4 + 40), sub_1B0E46C28(), MEMORY[0x1B2728D70](v10), v12 = sub_1B0E46CB8(), v13 = -1 << *(v4 + 32), v14 = v12 & ~v13, ((*(v6 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
    {
      v15 = ~v13;
      while (*(*(v4 + 48) + v14) != v10)
      {
        v14 = (v14 + 1) & v15;
        if (((*(v6 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v16 = MEMORY[0x1E69E7CC0];
    }

    else
    {
LABEL_9:
      v16 = sub_1B0AFF0E8(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v18 = *(v16 + 2);
      v17 = *(v16 + 3);
      if (v18 >= v17 >> 1)
      {
        v16 = sub_1B0AFF0E8((v17 > 1), v18 + 1, 1, v16);
      }

      *(v16 + 2) = v18 + 1;
      v19 = &v16[16 * v18];
      strcpy(v19 + 32, "not-completed");
      *(v19 + 23) = -4864;
      v3 = a3;
    }

    if (!*(a2 + 16))
    {
      v4 = a1;
      if (!*(v3 + 16))
      {
        goto LABEL_39;
      }

LABEL_22:
      v25 = *(v3 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v10);
      v26 = sub_1B0E46CB8();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      if ((*(v8 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (*(*(v3 + 48) + v28) != v10)
        {
          v28 = (v28 + 1) & v29;
          if (((*(v8 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1B0AFF0E8(0, *(v16 + 2) + 1, 1, v16);
        }

        v34 = *(v16 + 2);
        v33 = *(v16 + 3);
        if (v34 >= v33 >> 1)
        {
          v16 = sub_1B0AFF0E8((v33 > 1), v34 + 1, 1, v16);
        }

        *(v16 + 2) = v34 + 1;
        v35 = &v16[16 * v34];
        *(v35 + 4) = 0x6E65646E65706564;
        *(v35 + 5) = 0xEA00000000007963;
        v3 = a3;
      }

      goto LABEL_39;
    }

    v20 = *(a2 + 40);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](v10);
    v21 = sub_1B0E46CB8();
    v22 = -1 << *(a2 + 32);
    v23 = v21 & ~v22;
    if ((*(v7 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
    {
      v24 = ~v22;
      v4 = a1;
      while (*(*(a2 + 48) + v23) != v10)
      {
        v23 = (v23 + 1) & v24;
        if (((*(v7 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1B0AFF0E8(0, *(v16 + 2) + 1, 1, v16);
      }

      v31 = *(v16 + 2);
      v30 = *(v16 + 3);
      if (v31 >= v30 >> 1)
      {
        v16 = sub_1B0AFF0E8((v30 > 1), v31 + 1, 1, v16);
      }

      *(v16 + 2) = v31 + 1;
      v32 = &v16[16 * v31];
      *(v32 + 4) = 0x74726174736572;
      *(v32 + 5) = 0xE700000000000000;
      v3 = a3;
      if (*(a3 + 16))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v4 = a1;
LABEL_21:
      if (*(v3 + 16))
      {
        goto LABEL_22;
      }
    }

LABEL_39:
    if (*(v16 + 2))
    {
      v47 = sub_1B0BAEDAC(v10);
      v48 = v36;
      MEMORY[0x1B2726E80](8250, 0xE200000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
      sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0);
      v37 = sub_1B0E448E8();
      v39 = v38;

      MEMORY[0x1B2726E80](v37, v39);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1B0AFF0E8(0, *(v9 + 2) + 1, 1, v9);
      }

      v41 = *(v9 + 2);
      v40 = *(v9 + 3);
      if (v41 >= v40 >> 1)
      {
        v9 = sub_1B0AFF0E8((v40 > 1), v41 + 1, 1, v9);
      }

      *(v9 + 2) = v41 + 1;
      v42 = &v9[16 * v41];
      *(v42 + 4) = v47;
      *(v42 + 5) = v48;
      v3 = a3;
    }

    else
    {
    }

    ++v5;
  }

  while (v5 != 15);
  return v9;
}

unint64_t sub_1B0BAEDAC(char a1)
{
  result = 0x636E79736552;
  switch(a1)
  {
    case 1:
      result = 0x73654D6863746546;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 4:
    case 7:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0x654D64616F6C7055;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD00000000000001CLL;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B0BAEF70(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1B03D1C2C(*a1, *a2) & 1) == 0 || (sub_1B03D1C2C(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_1B03D1C2C(v3, v5);
}

uint64_t sub_1B0BAEFF8(uint64_t a1, uint64_t a2)
{
  sub_1B0E46298();

  strcpy(v11, "completed: {");
  sub_1B0BAE67C(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0);
  v4 = sub_1B0E448E8();
  v6 = v5;

  MEMORY[0x1B2726E80](v4, v6);

  MEMORY[0x1B2726E80](0x6174736572202C7DLL, 0xED00007B203A7472);
  sub_1B0BAE67C(a2);
  v7 = sub_1B0E448E8();
  v9 = v8;

  MEMORY[0x1B2726E80](v7, v9);

  MEMORY[0x1B2726E80](125, 0xE100000000000000);
  return v11[0];
}

uint64_t sub_1B0BAF1A4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 56;
LABEL_3:
  if (v3 <= 0xF)
  {
    v5 = 15;
  }

  else
  {
    v5 = v3;
  }

  while (v3 != v5)
  {
    v6 = v3++;
    if (*(v1 + 16))
    {
      v7 = byte_1F2710570[v6 + 32];
      v8 = *(v1 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v7);
      result = sub_1B0E46CB8();
      v9 = -1 << *(v1 + 32);
      v10 = result & ~v9;
      if ((*(v4 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
      {
        v11 = ~v9;
        while (*(*(v1 + 48) + v10) != v7)
        {
          v10 = (v10 + 1) & v11;
          if (((*(v4 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v2 = (1 << v6) | v2;
        if (v3 == 15)
        {
          return v2;
        }

        goto LABEL_3;
      }
    }

LABEL_6:
    if (v3 == 15)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for SyncStep(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SyncStep(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B0BAF464@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  sub_1B0B7ABE4(a1, v29);
  if (v30)
  {
    sub_1B0450C74(v29, v26);
    sub_1B0E43998();
    v6 = v27;
    v7 = v28;
    __swift_project_boxed_opaque_existential_0(v26, v27);
    v8 = (*(v7 + 72))(v6, v7);
    v10 = v9;
    v11 = v27;
    v12 = v28;
    __swift_project_boxed_opaque_existential_0(v26, v27);
    (*(v12 + 32))(&v31, v11, v12);
    v13 = v32;
    *v41 = v31;
    sub_1B039E440(v41);
    v39 = v33;
    v40 = v34;
    sub_1B039E440(&v39);
    v14 = v27;
    v15 = v28;
    __swift_project_boxed_opaque_existential_0(v26, v27);
    (*(v15 + 32))(&v35, v14, v15);
    sub_1B0B7AC40(a1);
    v16 = v36;
    v17 = v37;
    v38 = v35;
    sub_1B039E440(&v38);
    v18 = a3 + *(type metadata accessor for Task.Logger(0) + 20);
    *v18 = a2;
    *(v18 + 8) = v8;
    *(v18 + 16) = v10;
    *(v18 + 24) = v13 | 0x8000000000000000;
    *(v18 + 32) = v16;
    *(v18 + 40) = v17;
  }

  else
  {
    sub_1B0450C74(v29, v26);
    sub_1B0E43998();
    v19 = v27;
    v20 = v28;
    __swift_project_boxed_opaque_existential_0(v26, v27);
    v21 = (*(v20 + 32))(v19, v20);
    v23 = v22;
    sub_1B0B7AC40(a1);
    v24 = a3 + *(type metadata accessor for Task.Logger(0) + 20);
    *v24 = a2;
    *(v24 + 8) = v21;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0;
    *(v24 + 16) = v23;
    *(v24 + 40) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_0(v26);
}

uint64_t sub_1B0BAF6BC(uint64_t a1)
{
  sub_1B0B7ABE4(v1, v11);
  if (v12)
  {
    sub_1B0450C74(v11, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_0(v8, v9);
    (*(v4 + 64))(a1, v3, v4);
  }

  else
  {
    sub_1B0450C74(v11, v8);
    v5 = v9;
    v6 = v10;
    __swift_project_boxed_opaque_existential_0(v8, v9);
    (*(v6 + 24))(a1, v5, v6);
  }

  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t TaskID.debugDescription.getter()
{
  v1 = *v0;
  v4 = sub_1B0E46FF8();
  MEMORY[0x1B2726E80](32, 0xE100000000000000);
  v2 = sub_1B0E461A8();
  MEMORY[0x1B2726E80](v2);

  return v4;
}

uint64_t static TaskID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    JUMPOUT(0x1B27282E0);
  }

  return 0;
}

uint64_t TaskID.hashValue.getter()
{
  sub_1B0E46C28();
  sub_1B0E461D8();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0BAF888()
{
  sub_1B0E46C28();
  sub_1B0E461D8();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0BAF8F0()
{
  sub_1B0E46C28();
  sub_1B0E461D8();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0BAF930()
{
  v1 = *v0;
  v4 = sub_1B0E46FF8();
  MEMORY[0x1B2726E80](32, 0xE100000000000000);
  v2 = sub_1B0E461A8();
  MEMORY[0x1B2726E80](v2);

  return v4;
}

uint64_t sub_1B0BAF998(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    JUMPOUT(0x1B27282E0);
  }

  return 0;
}

uint64_t sub_1B0BAF9BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B0BAFA04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

ValueMetadata *type metadata accessor for TaskID()
{
  return &type metadata for TaskID;
}

{
  return &type metadata for TaskID;
}

uint64_t sub_1B0BAFA88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1B0BAFAD4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 40) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 44) = 1;
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
      *a1 = -a2 << 8;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0;
      return result;
    }

    *(a1 + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unsigned __int8 *sub_1B0BAFB44(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(result + 12) | (a2 << 63);
  *result = *result;
  *(result + 3) = v2;
  return result;
}

uint64_t sub_1B0BAFBC0()
{
  result = sub_1B0E439A8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0BAFC50@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B03D0E54(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 176 * a1);
    v9 = v8[11];
    v10 = v7 - 1;
    a2[8] = v8[10];
    a2[9] = v9;
    a2[10] = v8[12];
    v11 = v8[7];
    a2[4] = v8[6];
    a2[5] = v11;
    v12 = v8[9];
    a2[6] = v8[8];
    a2[7] = v12;
    v13 = v8[3];
    *a2 = v8[2];
    a2[1] = v13;
    v14 = v8[5];
    a2[2] = v8[4];
    a2[3] = v14;
    result = memmove(v8 + 2, v8 + 13, 176 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B0BAFD0C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0B8C89C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 24 * a1;
    v9 = *(v7 + 32);
    v7 += 32;
    v8 = v9;
    v10 = *(v7 + 4);
    v11 = *(v7 + 8);
    v12 = *(v7 + 16);
    v13 = *(v7 + 17);
    memmove(v7, (v7 + 24), 24 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    v14 = 0x100000000;
    if (!v10)
    {
      v14 = 0;
    }

    return v14 | v8;
  }

  return result;
}

uint64_t sub_1B0BAFE18@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0B8C900(v5);
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
    v9 = (v5 + 240 * a1);
    v10 = v9[15];
    a2[12] = v9[14];
    a2[13] = v10;
    *(a2 + 217) = *(v9 + 249);
    v11 = v9[11];
    a2[8] = v9[10];
    a2[9] = v11;
    v12 = v9[13];
    a2[10] = v9[12];
    a2[11] = v12;
    v13 = v9[7];
    a2[4] = v9[6];
    a2[5] = v13;
    v14 = v9[9];
    a2[6] = v9[8];
    a2[7] = v14;
    v15 = v9[3];
    *a2 = v9[2];
    a2[1] = v15;
    v16 = v9[5];
    a2[2] = v9[4];
    a2[3] = v16;
    result = memmove(v9 + 2, v9 + 17, 240 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B0BAFEE8@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0B8C928(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 192 * a1);
    v9 = v8[11];
    v10 = v7 - 1;
    a2[8] = v8[10];
    a2[9] = v9;
    a2[10] = v8[12];
    *(a2 + 169) = *(v8 + 201);
    v11 = v8[7];
    a2[4] = v8[6];
    a2[5] = v11;
    v12 = v8[9];
    a2[6] = v8[8];
    a2[7] = v12;
    v13 = v8[3];
    *a2 = v8[2];
    a2[1] = v13;
    v14 = v8[5];
    a2[2] = v8[4];
    a2[3] = v14;
    result = memmove(v8 + 2, v8 + 14, 192 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B0BAFFF0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1B0B8C9A0(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1B0BB0080(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0B8CA04(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3 + 24 * a1;
    v7 = *(v6 + 32);
    v6 += 32;
    v8 = v5 - 1;
    v9 = *(v6 + 8);
    v10 = *(v6 + 16);
    memmove(v6, (v6 + 24), 24 * (v5 - 1 - a1));
    *(v3 + 16) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1B0BB0124@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
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
    result = sub_1B0423CE8(v17, a5, a4);
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

uint64_t sub_1B0BB0264()
{
  v1 = v0;
  v2 = type metadata accessor for ClientCommand(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for TaskHistory.Running(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B03903A8(v1, v9, type metadata accessor for TaskHistory.Running);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *v9;
  v12 = *(v9 + 1);
  if (EnumCaseMultiPayload == 1)
  {
    v13 = *(v9 + 1);
    v26 = *v9;
    v27 = sub_1B0E469C8();
    v28 = v14;
    MEMORY[0x1B2726E80](2304032, 0xE300000000000000);
    v26 = v12;
    v15 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v15);

    MEMORY[0x1B2726E80](8233, 0xE200000000000000);
    v16 = Action.kind.getter(v13);
    v17 = Action.Kind.description.getter(v16);
    MEMORY[0x1B2726E80](v17);

    sub_1B03E1BE8(v13);
    return v27;
  }

  else
  {
    v19 = *(v9 + 2);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
    sub_1B0423CE8(&v9[*(v20 + 64)], v5, type metadata accessor for ClientCommand);
    LOBYTE(v27) = v11;
    HIDWORD(v27) = v12;
    v27 = sub_1B0E44B88();
    v28 = v21;
    MEMORY[0x1B2726E80](2304032, 0xE300000000000000);
    v26 = v19;
    v22 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v22);

    MEMORY[0x1B2726E80](8233, 0xE200000000000000);
    v23 = ClientCommand.logIdentifier.getter();
    MEMORY[0x1B2726E80](v23);

    v18 = v27;
    sub_1B0453ED8(v5, type metadata accessor for ClientCommand);
  }

  return v18;
}

uint64_t sub_1B0BB04F0@<X0>(unint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v42 = a1;
  v39 = a2;
  v3 = type metadata accessor for ClientCommand(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TaskHistory.Running(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v37 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v35 - v12);
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = &v35 - v15;
  v38 = v2;
  v17 = *v2;
  v18 = *(*v2 + 16);
  if (!v18)
  {
LABEL_12:
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BE8, &qword_1B0EC9340);
    return (*(*(v29 - 8) + 56))(v39, 1, 1, v29);
  }

  v19 = 0;
  v40 = HIDWORD(v42);
  v20 = v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  while (1)
  {
    if (v19 >= *(v17 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1B03903A8(v20 + *(v7 + 72) * v19, v16, type metadata accessor for TaskHistory.Running);
    sub_1B0423CE8(v16, v13, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    result = sub_1B0453ED8(v13, type metadata accessor for TaskHistory.Running);
LABEL_4:
    if (v18 == ++v19)
    {
      goto LABEL_12;
    }
  }

  v21 = v17;
  v22 = v18;
  v23 = v7;
  v24 = v6;
  v26 = *v13;
  v25 = v13[1];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
  result = sub_1B0453ED8(v13 + *(v41 + 64), type metadata accessor for ClientCommand);
  v27 = v26 == v42;
  v6 = v24;
  v7 = v23;
  v18 = v22;
  v17 = v21;
  if (!v27 || v25 != v40)
  {
    goto LABEL_4;
  }

  v28 = v37;
  sub_1B0BB0124(v19, sub_1B0B8CA18, type metadata accessor for TaskHistory.Running, type metadata accessor for TaskHistory.Running, v37);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B0453ED8(v28, type metadata accessor for TaskHistory.Running);
    goto LABEL_12;
  }

  v30 = *(v28 + 8);
  v31 = v36;
  sub_1B0423CE8(v28 + *(v41 + 64), v36, type metadata accessor for ClientCommand);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BE8, &qword_1B0EC9340);
  v33 = *(v32 + 48);
  v34 = v39;
  *v39 = v30;
  sub_1B0423CE8(v31, v34 + v33, type metadata accessor for ClientCommand);
  return (*(*(v32 - 8) + 56))(v34, 0, 1, v32);
}

uint64_t sub_1B0BB08D8(int a1)
{
  v3 = type metadata accessor for TaskHistory.Running(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  result = MEMORY[0x1EEE9AC00](v7);
  v13 = &v22 - v12;
  v14 = *v1;
  v15 = *(*v1 + 16);
  if (v15)
  {
    v22 = v1;
    v23 = v11;
    v16 = 0;
    v17 = v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v18 = a1;
    do
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1B03903A8(v17 + *(v4 + 72) * v16, v13, type metadata accessor for TaskHistory.Running);
      sub_1B0423CE8(v13, v9, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v19 = *v9;
        result = sub_1B03E1BE8(*(v9 + 1));
        if (v19 == v18)
        {
          v20 = v23;
          sub_1B0BB0124(v16, sub_1B0B8CA18, type metadata accessor for TaskHistory.Running, type metadata accessor for TaskHistory.Running, v23);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            result = *(v20 + 4);
            v21 = *(v20 + 8);
            return result;
          }

          sub_1B0453ED8(v20, type metadata accessor for TaskHistory.Running);
          return 0;
        }
      }

      else
      {
        result = sub_1B0453ED8(v9, type metadata accessor for TaskHistory.Running);
      }

      ++v16;
    }

    while (v15 != v16);
  }

  return 0;
}

uint64_t sub_1B0BB0B38(uint64_t a1, uint64_t a2, int a3)
{
  v6 = type metadata accessor for TaskHistory.Previous(0);
  v7 = *(v6 - 8);
  v36 = v6;
  v37 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TaskHistory.Running(0);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC8, &qword_1B0EC92F8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v34 - v17;
  v19 = type metadata accessor for ClientCommand(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0BB24B8(a1, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_1B0398EFC(v18, &qword_1EB6E4BC8, &qword_1B0EC92F8);
  }

  sub_1B0423CE8(v18, v23, type metadata accessor for ClientCommand);
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0) + 64);
  *v14 = a2;
  *(v14 + 2) = a3;
  sub_1B03903A8(v23, &v14[v25], type metadata accessor for ClientCommand);
  swift_storeEnumTagMultiPayload();
  v26 = v34;
  v27 = *v34;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_1B0B00ED4(0, v27[2] + 1, 1, v27);
  }

  v29 = v27[2];
  v28 = v27[3];
  if (v29 >= v28 >> 1)
  {
    v27 = sub_1B0B00ED4(v28 > 1, v29 + 1, 1, v27);
  }

  v27[2] = v29 + 1;
  sub_1B0423CE8(v14, v27 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v29, type metadata accessor for TaskHistory.Running);
  *v26 = v27;
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48);
  sub_1B03903A8(v23, v10, type metadata accessor for ClientCommand);
  *&v10[v30] = a3;
  swift_storeEnumTagMultiPayload();
  v31 = v26[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = sub_1B0B00EFC(0, v31[2] + 1, 1, v31);
  }

  v33 = v31[2];
  v32 = v31[3];
  if (v33 >= v32 >> 1)
  {
    v31 = sub_1B0B00EFC(v32 > 1, v33 + 1, 1, v31);
  }

  sub_1B0453ED8(v23, type metadata accessor for ClientCommand);
  v31[2] = v33 + 1;
  result = sub_1B0423CE8(v10, v31 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v33, type metadata accessor for TaskHistory.Previous);
  v26[1] = v31;
  return result;
}

uint64_t sub_1B0BB0FA8(unint64_t a1, int a2, int a3)
{
  v7 = type metadata accessor for TaskHistory.Previous(0);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TaskHistory.Running(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v15 = a2;
  *(v15 + 1) = a3;
  *(v15 + 1) = a1;
  swift_storeEnumTagMultiPayload();
  v16 = *v3;
  sub_1B03E14B4(a1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1B0B00ED4(0, v16[2] + 1, 1, v16);
  }

  v18 = v16[2];
  v17 = v16[3];
  if (v18 >= v17 >> 1)
  {
    v16 = sub_1B0B00ED4(v17 > 1, v18 + 1, 1, v16);
  }

  v16[2] = v18 + 1;
  sub_1B0423CE8(v15, v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v18, type metadata accessor for TaskHistory.Running);
  *v3 = v16;
  *v10 = a1;
  *(v10 + 2) = a3;
  swift_storeEnumTagMultiPayload();
  v19 = *(v3 + 8);
  sub_1B03E14B4(a1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1B0B00EFC(0, v19[2] + 1, 1, v19);
  }

  v21 = v19[2];
  v20 = v19[3];
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1B0B00EFC(v20 > 1, v21 + 1, 1, v19);
  }

  v19[2] = v21 + 1;
  result = sub_1B0423CE8(v10, v19 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21, type metadata accessor for TaskHistory.Previous);
  *(v3 + 8) = v19;
  return result;
}

uint64_t sub_1B0BB1260()
{
  v1 = type metadata accessor for TaskHistory.Running(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B03903A8(v0, v4, type metadata accessor for TaskHistory.Running);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v4;
    sub_1B03E1BE8(v4[1]);
  }

  else
  {
    v5 = *v4;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
    sub_1B0453ED8(v4 + *(v6 + 64), type metadata accessor for ClientCommand);
  }

  return v5;
}

uint64_t sub_1B0BB1368(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1B0B64DA4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1B0B64F5C(v2, v3);
}

uint64_t sub_1B0BB13C4(uint64_t a1, uint64_t a2)
{
  v53 = type metadata accessor for TaskHistory.Previous(0);
  v4 = *(v53 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v47 - v8;
  v50 = type metadata accessor for TaskHistory.Running(0);
  v9 = *(v50 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_1B0E46298();

  v55 = 0x20676E696E6E7572;
  v56 = 0xE900000000000028;
  v54 = *(a1 + 16);
  v16 = v54;
  v17 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v17);

  MEMORY[0x1B2726E80](2065709609, 0xE400000000000000);
  v18 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v47 = v4;
    v48 = a2;
    v54 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v16, 0);
    v18 = v54;
    v19 = v9;
    v20 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v49 = *(v19 + 72);
    do
    {
      sub_1B03903A8(v20, v15, type metadata accessor for TaskHistory.Running);
      sub_1B03903A8(v15, v12, type metadata accessor for TaskHistory.Running);
      v21 = sub_1B0E44BA8();
      v23 = v22;
      sub_1B0453ED8(v15, type metadata accessor for TaskHistory.Running);
      v54 = v18;
      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1B041D32C((v24 > 1), v25 + 1, 1);
        v18 = v54;
      }

      *(v18 + 16) = v25 + 1;
      v26 = v18 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      v20 += v49;
      --v16;
    }

    while (v16);
    v4 = v47;
    a2 = v48;
  }

  v54 = v18;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v28 = sub_1B0E448E8();
  v30 = v29;

  MEMORY[0x1B2726E80](v28, v30);

  MEMORY[0x1B2726E80](0x6976657270202C7DLL, 0xEE0028203A73756FLL);
  v54 = *(a2 + 16);
  v31 = v54;
  v32 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v32);

  MEMORY[0x1B2726E80](2065709609, 0xE400000000000000);
  v33 = MEMORY[0x1E69E7CC0];
  if (v31)
  {
    v50 = v27;
    v54 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v31, 0);
    v33 = v54;
    v34 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v35 = *(v4 + 72);
    do
    {
      v36 = v51;
      sub_1B03903A8(v34, v51, type metadata accessor for TaskHistory.Previous);
      sub_1B03903A8(v36, v52, type metadata accessor for TaskHistory.Previous);
      v37 = sub_1B0E44BA8();
      v39 = v38;
      sub_1B0453ED8(v36, type metadata accessor for TaskHistory.Previous);
      v54 = v33;
      v41 = *(v33 + 16);
      v40 = *(v33 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_1B041D32C((v40 > 1), v41 + 1, 1);
        v33 = v54;
      }

      *(v33 + 16) = v41 + 1;
      v42 = v33 + 16 * v41;
      *(v42 + 32) = v37;
      *(v42 + 40) = v39;
      v34 += v35;
      --v31;
    }

    while (v31);
  }

  v54 = v33;
  v43 = sub_1B0E448E8();
  v45 = v44;

  MEMORY[0x1B2726E80](v43, v45);

  MEMORY[0x1B2726E80](125, 0xE100000000000000);
  return v55;
}

unint64_t sub_1B0BB18D4(uint64_t a1)
{
  v3 = v1;
  v4 = type metadata accessor for ClientCommand(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B03903A8(v3, v11, type metadata accessor for TaskHistory.Previous);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    v13 = Action.kind.getter(*v11);
    v14 = Action.Kind.description.getter(v13);
    sub_1B03E1BE8(v12);
  }

  else
  {
    sub_1B0423CE8(v11, v7, type metadata accessor for ClientCommand);
    v14 = ClientCommand.logIdentifier.getter();
    sub_1B0453ED8(v7, type metadata accessor for ClientCommand);
  }

  return v14;
}

BOOL sub_1B0BB1A50(uint64_t a1, uint64_t a2)
{
  v2 = *a1 == *a2;
  if (!*(a2 + 8))
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {
    return v2;
  }

  else
  {
    return (*a1 == *a2) & ~*(a2 + 8);
  }
}

uint64_t sub_1B0BB1A88(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for TaskHistory.Running(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03903A8(a1, v8, type metadata accessor for TaskHistory.Running);
  v9 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1B0B00ED4(0, v9[2] + 1, 1, v9);
    *a2 = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1B0B00ED4(v11 > 1, v12 + 1, 1, v9);
    *a2 = v9;
  }

  v9[2] = v12 + 1;
  return sub_1B0423CE8(v8, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, type metadata accessor for TaskHistory.Running);
}

uint64_t sub_1B0BB1BF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskHistory.Running(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B03903A8(a1, v7, type metadata accessor for TaskHistory.Running);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = *v7;
    sub_1B03E1BE8(v7[1]);
  }

  else
  {
    v9 = *v7;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
    sub_1B0453ED8(v7 + *(v10 + 64), type metadata accessor for ClientCommand);
  }

  v11 = *(a2 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v11;
  if ((result & 1) == 0)
  {
    result = sub_1B0B018C8(0, *(v11 + 16) + 1, 1, v11);
    v11 = result;
    *(a2 + 8) = result;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    result = sub_1B0B018C8((v13 > 1), v14 + 1, 1, v11);
    v11 = result;
    *(a2 + 8) = result;
  }

  *(v11 + 16) = v14 + 1;
  v15 = v11 + 12 * v14;
  *(v15 + 32) = v9;
  *(v15 + 40) = EnumCaseMultiPayload == 1;
  return result;
}

uint64_t sub_1B0BB1D80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36[-v9];
  v11 = type metadata accessor for TaskHistory.Running(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB6E5228, &qword_1B0ECCE88);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v36[-v20];
  v23 = &v36[*(v22 + 56) - v20];
  sub_1B03903A8(a1, &v36[-v20], type metadata accessor for TaskHistory.Running);
  sub_1B03903A8(a2, v23, type metadata accessor for TaskHistory.Running);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B03903A8(v21, v17, type metadata accessor for TaskHistory.Running);
    v28 = v17[2];
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0) + 64);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v31 = *v17;
      v30 = v17[1];
      v38 = v28;
      v39 = v30;
      v32 = *v23;
      v33 = *(v23 + 1);
      v37 = *(v23 + 2);
      sub_1B0423CE8(v17 + v29, v10, type metadata accessor for ClientCommand);
      sub_1B0423CE8(&v23[v29], v7, type metadata accessor for ClientCommand);
      v34 = v31 == v32 && v39 == v33;
      if (v34 && v38 == v37)
      {
        v27 = static ClientCommand.__derived_enum_equals(_:_:)(v10, v7);
        sub_1B0453ED8(v7, type metadata accessor for ClientCommand);
        sub_1B0453ED8(v10, type metadata accessor for ClientCommand);
        goto LABEL_17;
      }

      sub_1B0453ED8(v7, type metadata accessor for ClientCommand);
      sub_1B0453ED8(v10, type metadata accessor for ClientCommand);
      goto LABEL_20;
    }

    sub_1B0453ED8(v17 + v29, type metadata accessor for ClientCommand);
LABEL_9:
    sub_1B0398EFC(v21, qword_1EB6E5228, &qword_1B0ECCE88);
LABEL_21:
    v27 = 0;
    return v27 & 1;
  }

  sub_1B03903A8(v21, v14, type metadata accessor for TaskHistory.Running);
  v24 = *(v14 + 1);
  v25 = *(v14 + 1);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B03E1BE8(v25);
    goto LABEL_9;
  }

  if (*v14 != *v23 || v24 != *(v23 + 1))
  {
    sub_1B03E1BE8(*(v23 + 1));
    sub_1B03E1BE8(v25);
LABEL_20:
    sub_1B0453ED8(v21, type metadata accessor for TaskHistory.Running);
    goto LABEL_21;
  }

  v26 = *(v23 + 1);
  v27 = static Action.__derived_enum_equals(_:_:)(v25, v26);
  sub_1B03E1BE8(v26);
  sub_1B03E1BE8(v25);
LABEL_17:
  sub_1B0453ED8(v21, type metadata accessor for TaskHistory.Running);
  return v27 & 1;
}

uint64_t sub_1B0BB2170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TaskHistory.Previous(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A30, &qword_1B0EC7698);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v33 - v17;
  v20 = &v33 + *(v19 + 56) - v17;
  sub_1B03903A8(a1, &v33 - v17, type metadata accessor for TaskHistory.Previous);
  sub_1B03903A8(a2, v20, type metadata accessor for TaskHistory.Previous);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B03903A8(v18, v14, type metadata accessor for TaskHistory.Previous);
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48);
    v28 = *&v14[v27];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v29 = *&v20[v27];
      sub_1B0423CE8(v20, v7, type metadata accessor for ClientCommand);
      v30 = static ClientCommand.__derived_enum_equals(_:_:)(v14, v7);
      sub_1B0453ED8(v7, type metadata accessor for ClientCommand);
      sub_1B0453ED8(v14, type metadata accessor for ClientCommand);
      if (v30)
      {
        v26 = v28 == v29;
        goto LABEL_11;
      }

      goto LABEL_15;
    }

    sub_1B0453ED8(v14, type metadata accessor for ClientCommand);
LABEL_8:
    sub_1B0398EFC(v18, &qword_1EB6E4A30, &qword_1B0EC7698);
    return 0;
  }

  sub_1B03903A8(v18, v11, type metadata accessor for TaskHistory.Previous);
  v21 = *v11;
  v22 = *(v11 + 2);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B03E1BE8(v21);
    goto LABEL_8;
  }

  v23 = *v20;
  v24 = *(v20 + 2);
  v25 = static Action.__derived_enum_equals(_:_:)(v21, v23);
  sub_1B03E1BE8(v23);
  sub_1B03E1BE8(v21);
  if ((v25 & 1) == 0)
  {
LABEL_15:
    sub_1B0453ED8(v18, type metadata accessor for TaskHistory.Previous);
    return 0;
  }

  v26 = v22 == v24;
LABEL_11:
  v31 = v26;
  sub_1B0453ED8(v18, type metadata accessor for TaskHistory.Previous);
  return v31;
}

uint64_t sub_1B0BB24B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC8, &qword_1B0EC92F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0BB2528(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskHistory.Running(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v38 - v10;
  v12 = type metadata accessor for UntaggedResponse(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 60 != 3)
  {
    return 1;
  }

  v16 = swift_projectBox();
  sub_1B03903A8(v16, v15, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload() != 12)
  {
    sub_1B0453ED8(v15, type metadata accessor for UntaggedResponse);
    return 1;
  }

  v43 = a2;
  v17 = *v15;
  v18 = *(v15 + 1);
  v19 = *(v15 + 3);
  v20 = v15[32];
  v21 = *(v15 + 5);
  if (!v18)
  {
    v25 = *v15;
    v26 = 0;
    goto LABEL_8;
  }

  v41 = *(v15 + 2);
  v42 = v19;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v22 = Tag.init(_:)(v17, v18);
  v23 = v17;
  if (v24)
  {
    v25 = v17;
    v26 = v18;
LABEL_8:
    sub_1B0AEF11C(v25, v26);
LABEL_24:

    return 0;
  }

  v28 = v22;
  v38 = v23;
  v39 = v20;
  v40 = v21;
  v29 = *(v43 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v29)
  {
LABEL_23:

    sub_1B0AEF11C(v38, v18);
    goto LABEL_24;
  }

  v45 = v28;
  v44 = HIDWORD(v28);
  v30 = v43 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v31 = *(v5 + 72);
  while (1)
  {
    sub_1B03903A8(v30, v11, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1B0453ED8(v11, type metadata accessor for TaskHistory.Running);
LABEL_12:
    v30 += v31;
    if (!--v29)
    {
      goto LABEL_23;
    }
  }

  v32 = *v11;
  v33 = *(v11 + 1);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
  sub_1B0453ED8(&v11[*(v34 + 64)], type metadata accessor for ClientCommand);
  if (v32 != v45 || v33 != v44)
  {
    goto LABEL_12;
  }

  sub_1B03903A8(v30, v9, type metadata accessor for TaskHistory.Running);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v36 = *v9;
    v37 = *(v9 + 1);
    sub_1B0453ED8(&v9[*(v34 + 64)], type metadata accessor for ClientCommand);

    sub_1B0AEF11C(v38, v18);

    if (v36 == v45)
    {
      if (v37 == v44)
      {
        return 1;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  result = sub_1B0453ED8(v9, type metadata accessor for TaskHistory.Running);
  __break(1u);
  return result;
}

void sub_1B0BB2948()
{
  if (!qword_1EB6DD138)
  {
    type metadata accessor for ClientCommand(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DD138);
    }
  }
}

void sub_1B0BB29B0()
{
  if (!qword_1EB6DCA00)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DCA00);
    }
  }
}

uint64_t sub_1B0BB2A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B0BB2ABC()
{
  if (!qword_1EB6DCD00)
  {
    type metadata accessor for ClientCommand(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB6DCD00);
    }
  }
}

uint64_t sub_1B0BB2B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v21.i8[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v10 + 40);
  v12.i64[0] = v5;
  v21 = *(v10 + 24);
  *&v13 = vdupq_laneq_s64(v21, 1).u64[0];
  *(&v13 + 1) = v11;
  *v22 = vzip1q_s64(v12, v21);
  *&v22[16] = v13;
  v14 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Command();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v21.i8[-v17];
  (*(v6 + 16))(v9, a2, v5, v16);
  *v18 = v4;
  *v22 = v5;
  *&v22[8] = v21;
  *&v22[24] = v11;
  v19 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Command();
  (*(v6 + 32))(&v18[*(v19 + 52)], v9, v5);
  sub_1B0E45358();
  return sub_1B0E452E8();
}

uint64_t sub_1B0BB2CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  *&v12 = v11;
  *(&v12 + 1) = v5;
  v20 = *(v10 + 32);
  v21 = v12;
  v22 = v20;
  v13 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Action();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v20 - v16;
  (*(v6 + 16))(v9, a2, v5, v15);
  *v17 = v4;
  *&v21 = v11;
  *(&v21 + 1) = v5;
  v22 = v20;
  v18 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Action();
  (*(v6 + 32))(&v17[*(v18 + 52)], v9, v5);
  sub_1B0E45358();
  return sub_1B0E452E8();
}

uint64_t sub_1B0BB2E6C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v26 = a7;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v13 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Command();
  v14 = sub_1B0E45D88();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  v32 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a1;
  sub_1B0E45358();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_getWitnessTable();
  sub_1B0E44FB8();

  v19 = *(v13 - 8);
  if ((*(v19 + 48))(v18, 1, v13) == 1)
  {
    (*(v15 + 8))(v18, v14);
    v20 = *(a3 - 8);
    v21 = 1;
    v22 = v26;
  }

  else
  {
    v20 = *(a3 - 8);
    v23 = v26;
    (*(v20 + 16))(v26, &v18[*(v13 + 52)], a3);
    (*(v19 + 8))(v18, v13);
    v21 = 0;
    v22 = v23;
  }

  return (*(v20 + 56))(v22, v21, 1, a3);
}

uint64_t sub_1B0BB3114@<X0>(int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v26 = a7;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v13 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Action();
  v14 = sub_1B0E45D88();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  v32 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a1;
  sub_1B0E45358();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_getWitnessTable();
  sub_1B0E44FB8();

  v19 = *(v13 - 8);
  if ((*(v19 + 48))(v18, 1, v13) == 1)
  {
    (*(v15 + 8))(v18, v14);
    v20 = *(a4 - 8);
    v21 = 1;
    v22 = v26;
  }

  else
  {
    v20 = *(a4 - 8);
    v23 = v26;
    (*(v20 + 16))(v26, &v18[*(v13 + 52)], a4);
    (*(v19 + 8))(v18, v13);
    v21 = 0;
    v22 = v23;
  }

  return (*(v20 + 56))(v22, v21, 1, a4);
}

uint64_t sub_1B0BB33BC(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Command() + 52);
  return sub_1B0E44A28() & 1;
}

uint64_t sub_1B0BB3444(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Action() + 52);
  return sub_1B0E44A28() & 1;
}

uint64_t sub_1B0BB34CC(_DWORD *a1, _DWORD *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_1B0BB33BC(a1, a2);
}

uint64_t sub_1B0BB34DC(_DWORD *a1, _DWORD *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_1B0BB3444(a1, a2);
}

uint64_t sub_1B0BB34EC()
{
  type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Command();
  swift_getWitnessTable();
  if (sub_1B0E45368())
  {
    type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Action();
    swift_getWitnessTable();
    v0 = sub_1B0E45368();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_1B0BB35F0(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = *a2;
  v5 = a2[1];
  v7 = a3[2];
  v8 = a3[3];
  v9 = a3[4];
  v10 = a3[5];
  return sub_1B0BB34EC();
}

uint64_t sub_1B0BB3610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  v44 = v9;
  if (v9)
  {
    v55 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v9, 0);
    v12 = a8;
    v10 = v55;
    v13 = *(type metadata accessor for TaskHistory.Running(0) - 8);
    v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v15 = *(v13 + 72);
    v16 = v9;
    do
    {
      sub_1B0BB3A44(v14, a3, a4, a5, a6, a7, &v53, v12);
      v17 = v53;
      v18 = v54;
      v55 = v10;
      v20 = *(v10 + 16);
      v19 = *(v10 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1B041D32C((v19 > 1), v20 + 1, 1);
        v12 = a8;
        v10 = v55;
      }

      *(v10 + 16) = v20 + 1;
      v21 = v10 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      v14 += v15;
      --v16;
      v8 = a2;
    }

    while (v16);
    v9 = v44;
  }

  v22 = *(v8 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    v55 = MEMORY[0x1E69E7CC0];
    v24 = v8;
    sub_1B041D32C(0, v22, 0);
    v25 = a8;
    v23 = v55;
    v26 = *(type metadata accessor for TaskHistory.Previous(0) - 8);
    v27 = v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v46 = *(v26 + 72);
    v43 = v22;
    v28 = v22;
    do
    {
      sub_1B0BB3F24(v27, a3, a4, a5, a6, a7, &v53, v25);
      v29 = v53;
      v30 = v54;
      v55 = v23;
      v32 = *(v23 + 16);
      v31 = *(v23 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1B041D32C((v31 > 1), v32 + 1, 1);
        v25 = a8;
        v23 = v55;
      }

      *(v23 + 16) = v32 + 1;
      v33 = v23 + 16 * v32;
      *(v33 + 32) = v29;
      *(v33 + 40) = v30;
      v27 += v46;
      --v28;
    }

    while (v28);
    v22 = v43;
    v9 = v44;
  }

  v53 = 0;
  v54 = 0xE000000000000000;
  sub_1B0E46298();

  v53 = 0x20676E696E6E7572;
  v54 = 0xE900000000000028;
  v55 = v9;
  v34 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v34);

  MEMORY[0x1B2726E80](2065709609, 0xE400000000000000);
  v55 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v35 = sub_1B0E448E8();
  v37 = v36;

  MEMORY[0x1B2726E80](v35, v37);

  MEMORY[0x1B2726E80](0x7472617473202C7DLL, 0xED000028203A6465);
  v55 = v22;
  v38 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v38);

  MEMORY[0x1B2726E80](2065709609, 0xE400000000000000);
  v55 = v23;
  v39 = sub_1B0E448E8();
  v41 = v40;

  MEMORY[0x1B2726E80](v39, v41);

  MEMORY[0x1B2726E80](125, 0xE100000000000000);
  return v53;
}

uint64_t sub_1B0BB3A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8)
{
  v53 = a6;
  v48 = a2;
  v49 = a3;
  v54 = a7;
  v52 = a8;
  v11 = sub_1B0E45D88();
  v50 = *(v11 - 8);
  v51 = v11;
  v12 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - v13;
  v15 = sub_1B0E45D88();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v48 - v18;
  v20 = type metadata accessor for TaskHistory.Running(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0BB443C(a1, v23, type metadata accessor for TaskHistory.Running);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v26 = *v23;
  v25 = *(v23 + 1);
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B03E1BE8(*(v23 + 1));
    v28 = v52;
    v27 = v53;
    v29 = sub_1B0BB3114(v25, v49, a4, a5, v53, v52, v14);
    MEMORY[0x1EEE9AC00](v29);
    *(&v48 - 4) = a4;
    *(&v48 - 3) = a5;
    *(&v48 - 2) = v27;
    *(&v48 - 1) = v28;
    v30 = v51;
    sub_1B03F1A20(sub_1B0BB44A4, (&v48 - 6), v51, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v31, &v55);
    (*(v50 + 8))(v14, v30);
    if (v56)
    {
      v32 = v55;
    }

    else
    {
      v32 = 15932;
    }

    if (v56)
    {
      v33 = v56;
    }

    else
    {
      v33 = 0xE200000000000000;
    }

    v57 = v26;
    v55 = sub_1B0E469C8();
    v56 = v34;
    MEMORY[0x1B2726E80](2304032, 0xE300000000000000);
    v57 = v25;
    v35 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v35);

    MEMORY[0x1B2726E80](8233, 0xE200000000000000);
    MEMORY[0x1B2726E80](v32, v33);

    v37 = v55;
    v38 = v56;
  }

  else
  {
    LODWORD(v50) = *(v23 + 1);
    LODWORD(v51) = *(v23 + 2);
    LODWORD(v49) = v26;
    v39 = v52;
    v40 = v53;
    v41 = sub_1B0BB2E6C(v51, v48, a4, a5, v53, v52, v19);
    MEMORY[0x1EEE9AC00](v41);
    *(&v48 - 4) = a4;
    *(&v48 - 3) = a5;
    *(&v48 - 2) = v40;
    *(&v48 - 1) = v39;
    sub_1B03F1A20(sub_1B0BB4510, (&v48 - 6), v15, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v42, &v55);
    (*(v16 + 8))(v19, v15);
    if (v56)
    {
      v43 = v55;
    }

    else
    {
      v43 = 15932;
    }

    if (v56)
    {
      v44 = v56;
    }

    else
    {
      v44 = 0xE200000000000000;
    }

    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0) + 64);
    v55 = 0;
    v56 = 0xE000000000000000;
    LOBYTE(v57) = v49;
    v58 = v50;
    sub_1B0E46508();
    MEMORY[0x1B2726E80](2304032, 0xE300000000000000);
    v57 = v51;
    v46 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v46);

    MEMORY[0x1B2726E80](8233, 0xE200000000000000);
    MEMORY[0x1B2726E80](v43, v44);

    v37 = v55;
    v38 = v56;
    result = sub_1B0BB439C(&v23[v45]);
  }

  v47 = v54;
  *v54 = v37;
  v47[1] = v38;
  return result;
}

uint64_t sub_1B0BB3F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8)
{
  v48 = a6;
  v43 = a3;
  v44 = a2;
  v49 = a7;
  v47 = a8;
  v11 = sub_1B0E45D88();
  v46 = *(v11 - 8);
  v12 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - v13;
  v15 = sub_1B0E45D88();
  v45 = *(v15 - 8);
  v16 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v43 - v17;
  v19 = type metadata accessor for TaskHistory.Previous(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0BB443C(a1, v22, type metadata accessor for TaskHistory.Previous);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *(v22 + 2);
    sub_1B03E1BE8(*v22);
    v25 = v47;
    v24 = v48;
    v26 = sub_1B0BB3114(v23, v43, a4, a5, v48, v47, v14);
    MEMORY[0x1EEE9AC00](v26);
    *(&v43 - 4) = a4;
    *(&v43 - 3) = a5;
    *(&v43 - 2) = v24;
    *(&v43 - 1) = v25;
    sub_1B03F1A20(sub_1B0BB4E2C, (&v43 - 6), v11, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v27, &v50);
    (*(v46 + 8))(v14, v11);
    if (v51)
    {
      v28 = v50;
    }

    else
    {
      v28 = 15932;
    }

    if (v51)
    {
      v29 = v51;
    }

    else
    {
      v29 = 0xE200000000000000;
    }

    v50 = 9000;
    v51 = 0xE200000000000000;
    v52 = v23;
    v30 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v30);

    MEMORY[0x1B2726E80](8233, 0xE200000000000000);
    MEMORY[0x1B2726E80](v28, v29);

    v32 = v50;
    v33 = v51;
  }

  else
  {
    v34 = *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
    v36 = v47;
    v35 = v48;
    v37 = sub_1B0BB2E6C(v34, v44, a4, a5, v48, v47, v18);
    MEMORY[0x1EEE9AC00](v37);
    *(&v43 - 4) = a4;
    *(&v43 - 3) = a5;
    *(&v43 - 2) = v35;
    *(&v43 - 1) = v36;
    sub_1B03F1A20(sub_1B0BB4E44, (&v43 - 6), v15, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v38, &v50);
    (*(v45 + 8))(v18, v15);
    if (v51)
    {
      v39 = v50;
    }

    else
    {
      v39 = 15932;
    }

    if (v51)
    {
      v40 = v51;
    }

    else
    {
      v40 = 0xE200000000000000;
    }

    v50 = 9000;
    v51 = 0xE200000000000000;
    v52 = v34;
    v41 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v41);

    MEMORY[0x1B2726E80](8233, 0xE200000000000000);
    MEMORY[0x1B2726E80](v39, v40);

    v32 = v50;
    v33 = v51;
    result = sub_1B0BB439C(v22);
  }

  v42 = v49;
  *v49 = v32;
  v42[1] = v33;
  return result;
}

uint64_t sub_1B0BB439C(uint64_t a1)
{
  v2 = type metadata accessor for ClientCommand(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0BB443C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0BB44BC@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  result = sub_1B0E469E8();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1B0BB4528@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_1B0E469E8();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1B0BB457C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B0BB45D0(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0BB4650(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
  }

  v8 = ((v6 + 4) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_1B0BB47B0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 4) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 4] & ~v8;

  v18(v19);
}

uint64_t sub_1B0BB49D4(uint64_t a1)
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

uint64_t sub_1B0BB4A54(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
  }

  v8 = ((v6 + 4) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_1B0BB4BB4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 4) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 4] & ~v8;

  v18(v19);
}

uint64_t sub_1B0BB4DD8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B0BB4EAC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](*&v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x1B2728DB0](*&v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0BB4F18()
{
  v1 = *(v0 + 8);
  MEMORY[0x1B2728D70](*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1B2728DB0](*&v2);
}

uint64_t sub_1B0BB4F64()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](*&v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x1B2728DB0](*&v3);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0BB4FFC()
{
  result = qword_1EB6E52B0;
  if (!qword_1EB6E52B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E52B0);
  }

  return result;
}

uint64_t Update.Kind.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0BB50E8()
{
  result = qword_1EB6E52B8;
  if (!qword_1EB6E52B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E52B8);
  }

  return result;
}

uint64_t sub_1B0BB513C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0BB5198(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1B0BB51F8(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1B0BB5244()
{
  v1 = type metadata accessor for UntaggedResponse(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0B7EAA4(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 12;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1B0B7EB08(v4);
      result = 2;
      break;
    case 2:
      sub_1B0B7EB08(v4);
      result = 3;
      break;
    case 3:
      sub_1B0B7EB08(v4);
      result = 4;
      break;
    case 4:
      sub_1B0B7EB08(v4);
      result = 5;
      break;
    case 5:
      sub_1B0B7EB08(v4);
      result = 6;
      break;
    case 6:
      sub_1B0B7EB08(v4);
      result = 20;
      break;
    case 7:
      sub_1B0B7EB08(v4);
      result = 7;
      break;
    case 8:
      sub_1B0B7EB08(v4);
      result = 8;
      break;
    case 9:
      sub_1B0B7EB08(v4);
      result = 9;
      break;
    case 10:
      sub_1B0B7EB08(v4);
      result = 19;
      break;
    case 11:
      sub_1B0B7EB08(v4);
      result = 10;
      break;
    case 12:
      sub_1B0B7EB08(v4);
      result = 18;
      break;
    case 13:
      sub_1B0B7EB08(v4);
      result = 11;
      break;
    case 14:
      sub_1B0B7EB08(v4);
      result = 23;
      break;
    case 15:
      return result;
    case 16:
      result = 13;
      break;
    case 17:
      result = 14;
      break;
    case 18:
      sub_1B0B7EB08(v4);
      result = 21;
      break;
    case 19:
      sub_1B0B7EB08(v4);
      result = 22;
      break;
    case 20:
      sub_1B0B7EB08(v4);
      result = 15;
      break;
    case 21:
      sub_1B0B7EB08(v4);
      result = 16;
      break;
    case 22:
      sub_1B0B7EB08(v4);
      result = 17;
      break;
    default:
      sub_1B0B7EB08(v4);
      result = 1;
      break;
  }

  return result;
}

uint64_t sub_1B0BB5448(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v64 = a1;
  v60 = a7;
  v58 = a3;
  v59 = a6;
  v62 = a5;
  v63 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v61 = &v52[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v52[-v16];
  v18 = sub_1B0E43868();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v52[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = tracingSignposter.unsafeMutableAddressor();
  (*(v19 + 16))(v22, v23, v18);
  sub_1B03B5C80(a8, v17, &unk_1EB6E2990, &qword_1B0E9B060);
  sub_1B03B2000(a9, a10);
  sub_1B03B2000(a9, a10);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v24 = sub_1B0E43858();
  v25 = sub_1B0E45AE8();

  if ((sub_1B0E45D38() & 1) == 0)
  {
    sub_1B0391D50(a9, a10);

    sub_1B0391D50(a9, a10);
    sub_1B0398EFC(v17, &unk_1EB6E2990, &qword_1B0E9B060);
    return (*(v19 + 8))(v22, v18);
  }

  v54 = v22;
  v55 = v24;
  v56 = v18;
  v57 = v17;
  v53 = v25;
  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v67 = v28;
  *v26 = 141559555;
  *(v26 + 4) = 0x786F626C69616DLL;
  *(v26 + 12) = 2085;
  v65 = a4;
  v66 = v62;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v29 = sub_1B0E44BA8();
  v31 = sub_1B0399D64(v29, v30, &v67);

  *(v26 + 14) = v31;
  *(v26 + 22) = 1040;
  v32 = v64;
  v33 = v63 - v64;
  if (!v64)
  {
    v33 = 0;
  }

  if (v33 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v33 > 0x7FFFFFFF)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v63 = v28;
  *(v26 + 24) = v33;
  *(v26 + 28) = 2096;
  if (v32)
  {
    *(v26 + 30) = v32;
    *(v26 + 38) = 2112;
    v34 = sub_1B0BB5A1C(v59 & 0xFFFF010101010101, v60 & 1);
    *(v26 + 40) = v34;
    v35 = v27;
    *v27 = v34;
    *(v26 + 48) = 2048;
    v36 = v57;
    v37 = v61;
    sub_1B03B5C80(v57, v61, &unk_1EB6E2990, &qword_1B0E9B060);
    v38 = sub_1B0E43108();
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v37, 1, v38) == 1)
    {
      sub_1B0398EFC(v36, &unk_1EB6E2990, &qword_1B0E9B060);
      sub_1B0398EFC(v37, &unk_1EB6E2990, &qword_1B0E9B060);
      v40 = 0;
    }

    else
    {
      sub_1B0E43028();
      v40 = v42;
      sub_1B0398EFC(v36, &unk_1EB6E2990, &qword_1B0E9B060);
      (*(v39 + 8))(v37, v38);
    }

    v43 = v19;
    *(v26 + 50) = v40;
    *(v26 + 58) = 2048;
    v44 = a10 >> 62;
    v46 = v55;
    v45 = v56;
    if ((a10 >> 62) > 1)
    {
      if (v44 != 2)
      {
        sub_1B0391D50(a9, a10);
        v47 = 0;
        goto LABEL_21;
      }

      v49 = *(a9 + 16);
      v48 = *(a9 + 24);
      sub_1B0391D50(a9, a10);
      v47 = v48 - v49;
      if (!__OFSUB__(v48, v49))
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    else if (!v44)
    {
      sub_1B0391D50(a9, a10);
      v47 = BYTE6(a10);
LABEL_21:
      *(v26 + 60) = v47;
      sub_1B0391D50(a9, a10);
      v50 = sub_1B0E43818();
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v46, v53, v50, "PersistenceEvent.update.messageDataForUpload", "mailbox %{sensitive,mask.mailbox}s, id %.*P, flags: %@, date %f, data %ld", v26, 0x44u);
      sub_1B0398EFC(v35, &unk_1EB6E2630, &qword_1B0E97970);
      MEMORY[0x1B272C230](v35, -1, -1);
      v51 = v63;
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x1B272C230](v51, -1, -1);
      MEMORY[0x1B272C230](v26, -1, -1);

      return (*(v43 + 8))(v54, v45);
    }

    sub_1B0391D50(a9, a10);
    LODWORD(v47) = HIDWORD(a9) - a9;
    if (!__OFSUB__(HIDWORD(a9), a9))
    {
      v47 = v47;
      goto LABEL_21;
    }

    goto LABEL_24;
  }

LABEL_25:
  sub_1B0391D50(a9, a10);
  sub_1B0391D50(a9, a10);
  result = sub_1B0398EFC(v57, &unk_1EB6E2990, &qword_1B0E9B060);
  __break(1u);
  return result;
}

uint64_t sub_1B0BB5A1C(unint64_t a1, char a2)
{
  if ((a1 & 1) == 0)
  {
    v4 = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v4 = sub_1B0AFF0E8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1B0AFF0E8((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[16 * v6];
  *(v7 + 4) = 0x646165726E75;
  *(v7 + 5) = 0xE600000000000000;
  if ((a1 & 0x100) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1B0AFF0E8(0, *(v4 + 2) + 1, 1, v4);
    }

    v9 = *(v4 + 2);
    v8 = *(v4 + 3);
    if (v9 >= v8 >> 1)
    {
      v4 = sub_1B0AFF0E8((v8 > 1), v9 + 1, 1, v4);
    }

    *(v4 + 2) = v9 + 1;
    v10 = &v4[16 * v9];
    *(v10 + 4) = 0x646574656C6564;
    *(v10 + 5) = 0xE700000000000000;
  }

LABEL_12:
  if ((a1 & 0x10000) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1B0AFF0E8(0, *(v4 + 2) + 1, 1, v4);
    }

    v12 = *(v4 + 2);
    v11 = *(v4 + 3);
    if (v12 >= v11 >> 1)
    {
      v4 = sub_1B0AFF0E8((v11 > 1), v12 + 1, 1, v4);
    }

    *(v4 + 2) = v12 + 1;
    v13 = &v4[16 * v12];
    *(v13 + 4) = 0x6465726577736E61;
    *(v13 + 5) = 0xE800000000000000;
    if ((a1 & 0x1000000) == 0)
    {
LABEL_14:
      if ((a1 & 0x100000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }
  }

  else if ((a1 & 0x1000000) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1B0AFF0E8(0, *(v4 + 2) + 1, 1, v4);
  }

  v15 = *(v4 + 2);
  v14 = *(v4 + 3);
  if (v15 >= v14 >> 1)
  {
    v4 = sub_1B0AFF0E8((v14 > 1), v15 + 1, 1, v4);
  }

  *(v4 + 2) = v15 + 1;
  v16 = &v4[16 * v15];
  *(v16 + 4) = 0x7466617264;
  *(v16 + 5) = 0xE500000000000000;
  if ((a1 & 0x100000000) == 0)
  {
LABEL_15:
    if ((a1 & 0x10000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_30:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1B0AFF0E8(0, *(v4 + 2) + 1, 1, v4);
  }

  v18 = *(v4 + 2);
  v17 = *(v4 + 3);
  if (v18 >= v17 >> 1)
  {
    v4 = sub_1B0AFF0E8((v17 > 1), v18 + 1, 1, v4);
  }

  *(v4 + 2) = v18 + 1;
  v19 = &v4[16 * v18];
  *(v19 + 4) = 0x6564726177726F66;
  *(v19 + 5) = 0xE900000000000064;
  if ((a1 & 0x10000000000) == 0)
  {
LABEL_16:
    if ((a1 & 0xFF000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_35:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1B0AFF0E8(0, *(v4 + 2) + 1, 1, v4);
  }

  v21 = *(v4 + 2);
  v20 = *(v4 + 3);
  if (v21 >= v20 >> 1)
  {
    v4 = sub_1B0AFF0E8((v20 > 1), v21 + 1, 1, v4);
  }

  *(v4 + 2) = v21 + 1;
  v22 = &v4[16 * v21];
  *(v22 + 4) = 0x7463657269646572;
  *(v22 + 5) = 0xEA00000000006465;
  if ((a1 & 0xFF000000000000) == 0)
  {
LABEL_17:
    if (!HIBYTE(a1))
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_40:
  v23 = sub_1B0E44B88();
  v25 = v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1B0AFF0E8(0, *(v4 + 2) + 1, 1, v4);
  }

  v27 = *(v4 + 2);
  v26 = *(v4 + 3);
  if (v27 >= v26 >> 1)
  {
    v4 = sub_1B0AFF0E8((v26 > 1), v27 + 1, 1, v4);
  }

  *(v4 + 2) = v27 + 1;
  v28 = &v4[16 * v27];
  *(v28 + 4) = v23;
  *(v28 + 5) = v25;
  if (!HIBYTE(a1))
  {
LABEL_18:
    if ((a2 & 1) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_50;
  }

LABEL_45:
  v29 = sub_1B0E44B88();
  v31 = v30;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1B0AFF0E8(0, *(v4 + 2) + 1, 1, v4);
  }

  v33 = *(v4 + 2);
  v32 = *(v4 + 3);
  if (v33 >= v32 >> 1)
  {
    v4 = sub_1B0AFF0E8((v32 > 1), v33 + 1, 1, v4);
  }

  *(v4 + 2) = v33 + 1;
  v34 = &v4[16 * v33];
  *(v34 + 4) = v29;
  *(v34 + 5) = v31;
  if (a2)
  {
LABEL_50:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1B0AFF0E8(0, *(v4 + 2) + 1, 1, v4);
    }

    v36 = *(v4 + 2);
    v35 = *(v4 + 3);
    if (v36 >= v35 >> 1)
    {
      v4 = sub_1B0AFF0E8((v35 > 1), v36 + 1, 1, v4);
    }

    *(v4 + 2) = v36 + 1;
    v37 = &v4[16 * v36];
    strcpy(v37 + 32, "iCloudCleanup");
    *(v37 + 23) = -4864;
  }

LABEL_55:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  sub_1B0E448E8();

  v38 = sub_1B0E44AC8();

  return v38;
}

uint64_t sub_1B0BB5F90(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v11, 0, 14);
      v6 = v11;
      goto LABEL_9;
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
  }

  else
  {
    if (!v5)
    {
      v11[0] = a3;
      LOWORD(v11[1]) = a4;
      BYTE2(v11[1]) = BYTE2(a4);
      BYTE3(v11[1]) = BYTE3(a4);
      BYTE4(v11[1]) = BYTE4(a4);
      BYTE5(v11[1]) = BYTE5(a4);
      v6 = v11 + BYTE6(a4);
LABEL_9:
      result = a1(v11, v6);
      goto LABEL_10;
    }

    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }
  }

  result = sub_1B0BB60C8(v7, v8, a1);
LABEL_10:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0BB60C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_1B0E42A98();
  v7 = result;
  if (result)
  {
    result = sub_1B0E42AC8();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1B0E42AB8();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

uint64_t sub_1B0BB6170(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = type metadata accessor for UntaggedResponse(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v138 - v9;
  v148 = sub_1B0E43868();
  v145 = *(v148 - 8);
  v11 = *(v145 + 64);
  v12 = MEMORY[0x1EEE9AC00](v148);
  v142 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v141 = &v138 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v143 = &v138 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v140 = &v138 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v139 = &v138 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v138 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v138 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v144 = &v138 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v138 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v138 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v138 - v36;
  v38 = sub_1B0E43828();
  v39 = *(v38 - 8);
  v146 = v38;
  v147 = v39;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v138 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E43838();
  v43 = a3 >> 60;
  if ((a3 >> 60) > 3)
  {
    if (v43 > 5)
    {
      v44 = v145;
      v45 = v148;
      if (v43 == 6)
      {
        v96 = tracingSignposter.unsafeMutableAddressor();
        v97 = v141;
        (*(v44 + 16))(v141, v96, v45);
        v98 = sub_1B0E43858();
        v99 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v100 = swift_slowAlloc();
          *v100 = 0;
          v101 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v98, v99, v101, "ConnectionEvent.pathAttributesDidChange", "", v100, 2u);
          MEMORY[0x1B272C230](v100, -1, -1);
        }

        v53 = *(v44 + 8);
        v54 = v97;
        goto LABEL_48;
      }

      if (v43 == 7)
      {
        v46 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v47 = tracingSignposter.unsafeMutableAddressor();
        v48 = v142;
        (*(v44 + 16))(v142, v47, v45);
        v49 = sub_1B0E43858();
        v50 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v51 = swift_slowAlloc();
          *v51 = 16777472;
          v51[4] = v46;
          v52 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v49, v50, v52, "ConnectionEvent.betterPathDidChange", "%hhu", v51, 5u);
          MEMORY[0x1B272C230](v51, -1, -1);
        }

        v53 = *(v44 + 8);
        v54 = v48;
        goto LABEL_48;
      }

      v118 = v143;
      if (a3 == 0x8000000000000000)
      {
        v131 = tracingSignposter.unsafeMutableAddressor();
        v132 = v139;
        (*(v44 + 16))(v139, v131, v45);
        v133 = sub_1B0E43858();
        v134 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v135 = swift_slowAlloc();
          *v135 = 0;
          v136 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v133, v134, v136, "ConnectionEvent.mailboxSelected", "no mailbox", v135, 2u);
          MEMORY[0x1B272C230](v135, -1, -1);
        }

        v53 = *(v44 + 8);
        v54 = v132;
        goto LABEL_48;
      }

      if (a3 == 0x8000000000000008)
      {
        v119 = tracingSignposter.unsafeMutableAddressor();
        v118 = v140;
        (*(v44 + 16))(v140, v119, v45);
        v120 = sub_1B0E43858();
        v121 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v122 = swift_slowAlloc();
          *v122 = 0;
          v123 = sub_1B0E43818();
          v124 = "ConnectionEvent.empty";
LABEL_46:
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v120, v121, v123, v124, "", v122, 2u);
          MEMORY[0x1B272C230](v122, -1, -1);
        }
      }

      else
      {
        v137 = tracingSignposter.unsafeMutableAddressor();
        (*(v44 + 16))(v118, v137, v45);
        v120 = sub_1B0E43858();
        v121 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v122 = swift_slowAlloc();
          *v122 = 0;
          v123 = sub_1B0E43818();
          v124 = "ConnectionEvent.stateDidChange";
          goto LABEL_46;
        }
      }

      v53 = *(v44 + 8);
      v54 = v118;
      goto LABEL_48;
    }

    v79 = v148;
    if (v43 != 4)
    {
      v125 = tracingSignposter.unsafeMutableAddressor();
      v126 = v145;
      (*(v145 + 16))(v27, v125, v79);
      v127 = sub_1B0E43858();
      v128 = sub_1B0E45AE8();
      if (sub_1B0E45D38())
      {
        v129 = swift_slowAlloc();
        *v129 = 0;
        v130 = sub_1B0E43818();
        _os_signpost_emit_with_name_impl(&dword_1B0389000, v127, v128, v130, "ConnectionEvent.mailboxSelectFailed", "", v129, 2u);
        MEMORY[0x1B272C230](v129, -1, -1);
      }

      (*(v126 + 8))(v27, v79);
      return (*(v147 + 8))(v42, v146);
    }

    v143 = v42;
    v141 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v80 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x14);
    v82 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v81 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v83 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v84 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v85 = tracingSignposter.unsafeMutableAddressor();
    v86 = v144;
    v87 = v145;
    (*(v145 + 16))(v144, v85, v79);
    sub_1B0A91FD0(v82, v81, v83, v84);
    sub_1B0A91FD0(v82, v81, v83, v84);
    v88 = sub_1B0E43858();
    LODWORD(v142) = sub_1B0E45AE8();
    if (sub_1B0E45D38())
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v149 = v90;
      *v89 = 136446466;
      v91 = Tag.debugDescription.getter(v141 | (v80 << 32));
      v93 = sub_1B0399D64(v91, v92, &v149);

      *(v89 + 4) = v93;
      *(v89 + 12) = 256;
      sub_1B0BB6FE0(v82, v81, v83, v84);
      *(v89 + 14) = v84 + 1;
      sub_1B0BB6FE0(v82, v81, v83, v84);
      v77 = v143;
      v94 = sub_1B0E43818();
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v88, v142, v94, "ConnectionEvent.commandDidComplete", "tag: %{public}s response: %hhu", v89, 0xFu);
      __swift_destroy_boxed_opaque_existential_0(v90);
      MEMORY[0x1B272C230](v90, -1, -1);
      MEMORY[0x1B272C230](v89, -1, -1);

      (*(v87 + 8))(v144, v148);
      return (*(v147 + 8))(v77, v146);
    }

    sub_1B0BB6FE0(v82, v81, v83, v84);

    sub_1B0BB6FE0(v82, v81, v83, v84);
    (*(v87 + 8))(v86, v79);
    return (*(v147 + 8))(v143, v146);
  }

  if (v43 > 1)
  {
    v61 = v145;
    if (v43 != 2)
    {
      v108 = swift_projectBox();
      v109 = v10;
      sub_1B0B7EAA4(v108, v10);
      v110 = tracingSignposter.unsafeMutableAddressor();
      v111 = v148;
      (*(v61 + 16))(v32, v110, v148);
      v112 = v8;
      sub_1B0B7EAA4(v10, v8);
      v113 = sub_1B0E43858();
      v114 = sub_1B0E45AE8();
      if (sub_1B0E45D38())
      {
        v115 = swift_slowAlloc();
        *v115 = 16777472;
        v116 = sub_1B0BB5244();
        sub_1B0B7EB08(v112);
        v115[4] = v116;
        v117 = sub_1B0E43818();
        _os_signpost_emit_with_name_impl(&dword_1B0389000, v113, v114, v117, "ConnectionEvent.untagged", "response: %hhu", v115, 5u);
        MEMORY[0x1B272C230](v115, -1, -1);
      }

      else
      {
        sub_1B0B7EB08(v112);
      }

      (*(v61 + 8))(v32, v111);
      sub_1B0B7EB08(v109);
      return (*(v147 + 8))(v42, v146);
    }

    v143 = v42;
    v62 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v63 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v64 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v65 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v66 = tracingSignposter.unsafeMutableAddressor();
    v67 = v148;
    (*(v61 + 16))(v24, v66, v148);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v68 = sub_1B0E43858();
    v69 = sub_1B0E45AE8();

    if (sub_1B0E45D38())
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v144 = v24;
      v72 = v61;
      v73 = v71;
      v151 = v71;
      *v70 = 141558275;
      *(v70 + 4) = 0x786F626C69616DLL;
      *(v70 + 12) = 2085;

      v149 = v62;
      v150 = v63;
      v74 = sub_1B0E44BA8();
      v76 = sub_1B0399D64(v74, v75, &v151);

      *(v70 + 14) = v76;
      v77 = v143;
      v78 = sub_1B0E43818();
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v68, v69, v78, "ConnectionEvent.mailboxSelected", "mailbox %{sensitive,mask.mailbox}s", v70, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x1B272C230](v73, -1, -1);
      MEMORY[0x1B272C230](v70, -1, -1);

      (*(v72 + 8))(v144, v148);
      return (*(v147 + 8))(v77, v146);
    }

    (*(v61 + 8))(v24, v67);
    return (*(v147 + 8))(v143, v146);
  }

  v55 = v145;
  if (v43)
  {
    v102 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v103 = tracingSignposter.unsafeMutableAddressor();
    (*(v55 + 16))(v35, v103, v148);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v104 = sub_1B0E43858();
    v105 = sub_1B0E45AE8();
    if (sub_1B0E45D38())
    {
      v106 = swift_slowAlloc();
      *v106 = 16777472;
      v106[4] = !CommandConnection.RecentErrors.isEmpty.getter(v102);

      v107 = sub_1B0E43818();
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v104, v105, v107, "ConnectionEvent.connectionDidFail", "error: %hhu", v106, 5u);
      MEMORY[0x1B272C230](v106, -1, -1);
    }

    else
    {
    }

    (*(v55 + 8))(v35, v148);
    return (*(v147 + 8))(v42, v146);
  }

  v56 = tracingSignposter.unsafeMutableAddressor();
  v45 = v148;
  (*(v55 + 16))(v37, v56, v148);
  v57 = sub_1B0E43858();
  v58 = sub_1B0E45AE8();
  if (sub_1B0E45D38())
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    v60 = sub_1B0E43818();
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v57, v58, v60, "ConnectionEvent.connectionDidAuthenticate", "", v59, 2u);
    MEMORY[0x1B272C230](v59, -1, -1);
  }

  v53 = *(v55 + 8);
  v54 = v37;
LABEL_48:
  v53(v54, v45);
  return (*(v147 + 8))(v42, v146);
}

unint64_t sub_1B0BB6FE0(unint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
    sub_1B0447F00(result);
  }

  return result;
}

uint64_t sub_1B0BB7028(uint64_t a1, uint64_t *a2)
{
  v3 = 256;
  if (!*(v2 + 37))
  {
    v3 = 0;
  }

  v4 = v3 | *(v2 + 36);
  v5 = 0x10000;
  if (!*(v2 + 38))
  {
    v5 = 0;
  }

  v6 = 0x1000000;
  if (!*(v2 + 39))
  {
    v6 = 0;
  }

  v7 = v4 | v5 | v6;
  v8 = 0x100000000;
  if (!*(v2 + 40))
  {
    v8 = 0;
  }

  v9 = 0x10000000000;
  if (!*(v2 + 41))
  {
    v9 = 0;
  }

  return sub_1B0BB5448(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v7 | v8 | v9 | (*(v2 + 42) << 48) | (*(v2 + 43) << 56), *(v2 + 44), *(v2 + 48), *(v2 + 56), *(v2 + 64));
}

uint64_t sub_1B0BB70E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 != 1 || v2 != v3)
      {
        return 0;
      }
    }

    else if (v4 != 2 || v3 != 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      v7 = 0;
    }

    else
    {
      v7 = v2 == v3;
    }

    if (!v7)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1B0BB714C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    return *a1 == v2;
  }

  if (*(a1 + 8) == 1)
  {
    if (v3 != 1)
    {
      return 0;
    }

    return *a1 == v2;
  }

  return v3 == 2 && v2 == 0;
}

uint64_t sub_1B0BB71A8()
{
  result = sub_1B03D0770(&unk_1F2710FC0);
  qword_1EB737D98 = result;
  return result;
}

void sub_1B0BB71D0(uint64_t a1)
{
  v3 = type metadata accessor for MailboxTaskLogger(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  if (*(v1 + 112) == 1)
  {
    sub_1B0A92638(a1, &v43 - v14);
    sub_1B0A92638(a1, v12);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v16 = sub_1B0E43988();
    v17 = sub_1B0E45908();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v46 = v19;
      *v18 = 68159235;
      *(v18 + 4) = 2;
      *(v18 + 8) = 256;
      v20 = &v12[*(v3 + 20)];
      *(v18 + 10) = *v20;
      *(v18 + 11) = 2082;
      v21 = &v15[*(v3 + 20)];
      *(v18 + 13) = sub_1B0399D64(*(v21 + 1), *(v21 + 2), &v46);
      *(v18 + 21) = 1040;
      *(v18 + 23) = 2;
      *(v18 + 27) = 512;
      v22 = *(v20 + 12);
      sub_1B0A9269C(v12);
      *(v18 + 29) = v22;
      *(v18 + 31) = 2160;
      *(v18 + 33) = 0x786F626C69616DLL;
      *(v18 + 41) = 2085;
      v23 = *(v21 + 4);
      v24 = *(v21 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v15);
      v44 = v23;
      v45 = v24;
      v25 = sub_1B0E44BA8();
      v27 = sub_1B0399D64(v25, v26, &v46);

      *(v18 + 43) = v27;
      _os_log_impl(&dword_1B0389000, v16, v17, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task.", v18, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v19, -1, -1);
      v28 = v18;
LABEL_6:
      MEMORY[0x1B272C230](v28, -1, -1);

      return;
    }

    sub_1B0A9269C(v12);

    v42 = v15;
  }

  else
  {
    v29 = *(v1 + 104);
    sub_1B0A92638(a1, v9);
    sub_1B0A92638(a1, v6);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v16 = sub_1B0E43988();
    v30 = sub_1B0E45908();
    if (os_log_type_enabled(v16, v30))
    {
      v31 = swift_slowAlloc();
      v43 = v29;
      v32 = v31;
      v33 = swift_slowAlloc();
      v46 = v33;
      *v32 = 68159491;
      *(v32 + 4) = 2;
      *(v32 + 8) = 256;
      v34 = &v6[*(v3 + 20)];
      *(v32 + 10) = *v34;
      *(v32 + 11) = 2082;
      v35 = &v9[*(v3 + 20)];
      *(v32 + 13) = sub_1B0399D64(*(v35 + 1), *(v35 + 2), &v46);
      *(v32 + 21) = 1040;
      *(v32 + 23) = 2;
      *(v32 + 27) = 512;
      v36 = *(v34 + 12);
      sub_1B0A9269C(v6);
      *(v32 + 29) = v36;
      *(v32 + 31) = 2160;
      *(v32 + 33) = 0x786F626C69616DLL;
      *(v32 + 41) = 2085;
      v37 = *(v35 + 4);
      v38 = *(v35 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v9);
      v44 = v37;
      v45 = v38;
      v39 = sub_1B0E44BA8();
      v41 = sub_1B0399D64(v39, v40, &v46);

      *(v32 + 43) = v41;
      *(v32 + 51) = 2048;
      *(v32 + 53) = v43;
      _os_log_impl(&dword_1B0389000, v16, v30, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task (XYHIGHESTMODSEQ %llu).", v32, 0x3Du);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v33, -1, -1);
      v28 = v32;
      goto LABEL_6;
    }

    sub_1B0A9269C(v6);

    v42 = v9;
  }

  sub_1B0A9269C(v42);
}

void sub_1B0BB7678(uint64_t a1, uint64_t a2)
{
  v98 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v98 - 8) + 64);
  MEMORY[0x1EEE9AC00](v98);
  v7 = &v90[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v97 = &v90[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v95 = &v90[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v96 = &v90[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v93 = &v90[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v94 = &v90[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v90[-v19];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v90[-v22];
  v109 = 0;
  v110 = 1;
  v100 = *(v2 + 40);
  v99 = *(v2 + 48);
  v101 = &v109;
  v102 = v2;
  if (*(a1 + 192) == 1)
  {
    v25 = v7;
    v27 = *(a1 + 176);
    v26 = *(a1 + 184);
    v106 = *(a1 + 168);
    v24 = v106;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(&v106, v100, v99, 0, sub_1B0BB84B0);
    v28 = v27;
    v7 = v25;
    sub_1B03BB638(v24, v28, v26, 1);
    v29 = v106;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = v29;
    *(a1 + 192) = 1;
  }

  if (*(*(v2 + 120) + 16))
  {
    sub_1B0A92638(a2, v23);
    sub_1B0A92638(a2, v20);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0B23CFC(v2, &v106);
    v30 = sub_1B0E43988();
    v31 = sub_1B0E45908();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v105 = v92;
      *v32 = 68159491;
      *(v32 + 4) = 2;
      *(v32 + 8) = 256;
      v33 = v98;
      v34 = &v20[*(v98 + 20)];
      *(v32 + 10) = *v34;
      *(v32 + 11) = 2082;
      v35 = *(v33 + 20);
      v91 = v31;
      v36 = &v23[v35];
      *(v32 + 13) = sub_1B0399D64(*&v23[v35 + 8], *&v23[v35 + 16], &v105);
      *(v32 + 21) = 1040;
      *(v32 + 23) = 2;
      *(v32 + 27) = 512;
      v37 = *(v34 + 12);
      sub_1B0A9269C(v20);
      *(v32 + 29) = v37;
      *(v32 + 31) = 2160;
      *(v32 + 33) = 0x786F626C69616DLL;
      *(v32 + 41) = 2085;
      v38 = *(v36 + 4);
      LODWORD(v36) = *(v36 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v23);
      v103 = v38;
      v104 = v36;
      v39 = sub_1B0E44BA8();
      v41 = sub_1B0399D64(v39, v40, &v105);

      *(v32 + 43) = v41;
      *(v32 + 51) = 2048;
      v42 = *(v108 + 16);
      sub_1B0B23D58(&v106);
      *(v32 + 53) = v42;
      _os_log_impl(&dword_1B0389000, v30, v91, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Sent %ld changes to the persistence.", v32, 0x3Du);
      v43 = v92;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v43, -1, -1);
      MEMORY[0x1B272C230](v32, -1, -1);
    }

    else
    {
      sub_1B0B23D58(&v106);
      sub_1B0A9269C(v20);

      sub_1B0A9269C(v23);
    }
  }

  v44 = v109;
  if (v110 != 1)
  {
    v60 = v97;
    sub_1B0A92638(a2, v97);
    sub_1B0A92638(a2, v7);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v61 = sub_1B0E43988();
    v62 = sub_1B0E45908();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v103 = v96;
      *v63 = 68159491;
      *(v63 + 4) = 2;
      *(v63 + 8) = 256;
      v64 = v98;
      v65 = &v7[*(v98 + 20)];
      *(v63 + 10) = *v65;
      *(v63 + 11) = 2082;
      v66 = &v60[*(v64 + 20)];
      *(v63 + 13) = sub_1B0399D64(*(v66 + 1), *(v66 + 2), &v103);
      *(v63 + 21) = 1040;
      *(v63 + 23) = 2;
      *(v63 + 27) = 512;
      v67 = *(v65 + 12);
      sub_1B0A9269C(v7);
      *(v63 + 29) = v67;
      *(v63 + 31) = 2160;
      *(v63 + 33) = 0x786F626C69616DLL;
      *(v63 + 41) = 2085;
      v68 = *(v66 + 4);
      v69 = *(v66 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v60);
      v106 = v68;
      v107 = v69;
      v70 = sub_1B0E44BA8();
      v72 = sub_1B0399D64(v70, v71, &v103);

      *(v63 + 43) = v72;
      *(v63 + 51) = 2048;
      *(v63 + 53) = v44;
      _os_log_impl(&dword_1B0389000, v61, v62, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Updating local HIGHESTMODSEQ to %llu.", v63, 0x3Du);
      v73 = v96;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v73, -1, -1);
      MEMORY[0x1B272C230](v63, -1, -1);
    }

    else
    {
      sub_1B0A9269C(v7);

      sub_1B0A9269C(v60);
    }

    v74 = v44;
    v75 = 0;
    goto LABEL_19;
  }

  if (v109)
  {
    v45 = v96;
    sub_1B0A92638(a2, v96);
    v46 = v95;
    sub_1B0A92638(a2, v95);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v47 = sub_1B0E43988();
    v48 = sub_1B0E45908();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v103 = v50;
      *v49 = 68159235;
      *(v49 + 4) = 2;
      *(v49 + 8) = 256;
      v51 = v98;
      v52 = &v46[*(v98 + 20)];
      *(v49 + 10) = *v52;
      *(v49 + 11) = 2082;
      v53 = &v45[*(v51 + 20)];
      *(v49 + 13) = sub_1B0399D64(*(v53 + 1), *(v53 + 2), &v103);
      *(v49 + 21) = 1040;
      *(v49 + 23) = 2;
      *(v49 + 27) = 512;
      v54 = *(v52 + 12);
      sub_1B0A9269C(v46);
      *(v49 + 29) = v54;
      *(v49 + 31) = 2160;
      *(v49 + 33) = 0x786F626C69616DLL;
      *(v49 + 41) = 2085;
      v55 = *(v53 + 4);
      v56 = *(v53 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v45);
      v106 = v55;
      v107 = v56;
      v57 = sub_1B0E44BA8();
      v59 = sub_1B0399D64(v57, v58, &v103);

      *(v49 + 43) = v59;
      _os_log_impl(&dword_1B0389000, v47, v48, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Clearing local HIGHESTMODSEQ.", v49, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v50, -1, -1);
      MEMORY[0x1B272C230](v49, -1, -1);
    }

    else
    {
      sub_1B0A9269C(v46);

      sub_1B0A9269C(v45);
    }

    v74 = 0;
    v75 = 1;
LABEL_19:
    sub_1B0B2C120(v74, v75, v100, v99);
    return;
  }

  v76 = v94;
  sub_1B0A92638(a2, v94);
  v77 = v93;
  sub_1B0A92638(a2, v93);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v78 = sub_1B0E43988();
  v79 = sub_1B0E45908();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v103 = v81;
    *v80 = 68159235;
    *(v80 + 4) = 2;
    *(v80 + 8) = 256;
    v82 = v98;
    v83 = &v77[*(v98 + 20)];
    *(v80 + 10) = *v83;
    *(v80 + 11) = 2082;
    v84 = &v76[*(v82 + 20)];
    *(v80 + 13) = sub_1B0399D64(*(v84 + 1), *(v84 + 2), &v103);
    *(v80 + 21) = 1040;
    *(v80 + 23) = 2;
    *(v80 + 27) = 512;
    v85 = *(v83 + 12);
    sub_1B0A9269C(v77);
    *(v80 + 29) = v85;
    *(v80 + 31) = 2160;
    *(v80 + 33) = 0x786F626C69616DLL;
    *(v80 + 41) = 2085;
    v86 = *(v84 + 4);
    LODWORD(v83) = *(v84 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v76);
    v106 = v86;
    v107 = v83;
    v87 = sub_1B0E44BA8();
    v89 = sub_1B0399D64(v87, v88, &v103);

    *(v80 + 43) = v89;
    _os_log_impl(&dword_1B0389000, v78, v79, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] No change to local HIGHESTMODSEQ.", v80, 0x33u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v81, -1, -1);
    MEMORY[0x1B272C230](v80, -1, -1);
  }

  else
  {
    sub_1B0A9269C(v77);

    sub_1B0A9269C(v76);
  }
}

uint64_t sub_1B0BB8134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 112))
  {
    v5 = (a1 + *(type metadata accessor for MailboxSyncState() + 48));
    v6 = v5[3];
    v7 = v5[4];
    __swift_project_boxed_opaque_existential_0(v5, v6);
    v8 = (*(v7 + 72))(v6, v7);
  }

  else
  {
    v9 = 0;
    v8 = *(a3 + 104);
  }

  *a2 = v8;
  *(a2 + 8) = v9 & 1;
  v10 = a1 + *(type metadata accessor for MailboxSyncState() + 48);
  v11 = *(v10 + 24);
  v12 = *(v10 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  (*(v12 + 48))(v11, v12);
  v13 = *(v10 + 24);
  v14 = *(v10 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v10, v13);
  return (*(v14 + 80))(v13, v14);
}