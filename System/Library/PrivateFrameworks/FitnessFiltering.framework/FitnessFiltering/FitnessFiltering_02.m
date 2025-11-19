uint64_t sub_24B599168(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  __dst = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    __dst = *__dst;
    if (!__dst)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_24B59B888(v8);
      v8 = result;
    }

    v83 = v8 + 16;
    v84 = *(v8 + 2);
    if (v84 >= 2)
    {
      while (1)
      {
        v85 = *v5;
        if (!*v5)
        {
          goto LABEL_142;
        }

        v86 = &v8[16 * v84];
        v5 = *v86;
        v87 = &v83[2 * v84];
        v88 = v87[1];
        sub_24B59B068((v85 + 72 * *v86), (v85 + 72 * *v87), (v85 + 72 * v88), __dst);
        if (v4)
        {
        }

        if (v88 < v5)
        {
          goto LABEL_130;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_131;
        }

        *v86 = v5;
        *(v86 + 1) = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_132;
        }

        v84 = *v83 - 1;
        result = memmove(v87, v87 + 2, 16 * v89);
        *v83 = v84;
        v5 = a3;
        if (v84 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 72 * v7;
      result = *(v11 + 48);
      v12 = *(v11 + 56);
      v13 = *v5 + 72 * v9;
      if (result == *(v13 + 48) && v12 == *(v13 + 56))
      {
        v15 = 0;
      }

      else
      {
        result = sub_24B5FFECC();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 72 * v9 + 200);
        do
        {
          result = *(v16 - 1);
          if (result == *(v16 - 10) && *v16 == *(v16 - 9))
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_24B5FFECC();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          v16 += 9;
          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v18 = 72 * v7 - 72;
          v19 = v9;
          v20 = 72 * v9;
          v21 = v7;
          v90 = v19;
          do
          {
            if (v19 != --v21)
            {
              v23 = *v5;
              if (!*v5)
              {
                goto LABEL_141;
              }

              v22 = v23 + v18;
              v99 = *(v23 + v20 + 32);
              v101 = *(v23 + v20 + 48);
              v103 = *(v23 + v20 + 64);
              v95 = *(v23 + v20);
              v97 = *(v23 + v20 + 16);
              result = memmove((v23 + v20), (v23 + v18), 0x48uLL);
              *(v22 + 32) = v99;
              *(v22 + 48) = v101;
              *(v22 + 64) = v103;
              *v22 = v95;
              *(v22 + 16) = v97;
            }

            ++v19;
            v18 -= 72;
            v20 += 72;
          }

          while (v19 < v21);
          v9 = v90;
        }
      }
    }

    v24 = v5[1];
    if (v7 < v24)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_136;
        }

        if (v9 + a4 >= v24)
        {
          v25 = v5[1];
        }

        else
        {
          v25 = v9 + a4;
        }

        if (v25 < v9)
        {
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (v7 != v25)
        {
          break;
        }
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
      result = sub_24B595AD8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v37 = *(v8 + 2);
    v36 = *(v8 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_24B595AD8((v36 > 1), v37 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v38;
    v39 = &v8[16 * v37];
    *(v39 + 4) = v9;
    *(v39 + 5) = v7;
    v40 = *__dst;
    if (!*__dst)
    {
      goto LABEL_143;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v8 + 4);
          v43 = *(v8 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_75:
          if (v45)
          {
            goto LABEL_121;
          }

          v58 = &v8[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_124;
          }

          v64 = &v8[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_128;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v68 = &v8[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_89:
        if (v63)
        {
          goto LABEL_123;
        }

        v71 = &v8[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_126;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_96:
        v79 = v41 - 1;
        if (v41 - 1 >= v38)
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

        if (!*v5)
        {
          goto LABEL_140;
        }

        v80 = *&v8[16 * v79 + 32];
        v81 = *&v8[16 * v41 + 40];
        sub_24B59B068((*v5 + 72 * v80), (*v5 + 72 * *&v8[16 * v41 + 32]), (*v5 + 72 * v81), v40);
        if (v4)
        {
        }

        if (v81 < v80)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24B59B888(v8);
        }

        if (v79 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v82 = &v8[16 * v79];
        *(v82 + 4) = v80;
        *(v82 + 5) = v81;
        result = sub_24B59B7FC(v41);
        v38 = *(v8 + 2);
        if (v38 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v8[16 * v38 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_119;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_120;
      }

      v53 = &v8[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_122;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_125;
      }

      if (v57 >= v49)
      {
        v75 = &v8[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_129;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  v26 = *v5;
  v27 = *v5 + 72 * v7;
  v91 = v9;
  v28 = v9 - v7;
LABEL_44:
  v29 = v28;
  v30 = v27;
  while (1)
  {
    v31 = *(v30 + 48) == *(v30 - 24) && *(v30 + 56) == *(v30 - 16);
    if (v31 || (result = sub_24B5FFECC(), (result & 1) == 0))
    {
LABEL_43:
      ++v7;
      v27 += 72;
      --v28;
      if (v7 != v25)
      {
        goto LABEL_44;
      }

      v7 = v25;
      v5 = a3;
      v9 = v91;
      goto LABEL_55;
    }

    if (!v26)
    {
      break;
    }

    v32 = v30 - 72;
    v100 = *(v30 + 32);
    v102 = *(v30 + 48);
    v104 = *(v30 + 64);
    v96 = *v30;
    v98 = *(v30 + 16);
    v33 = *(v30 - 24);
    *(v30 + 32) = *(v30 - 40);
    *(v30 + 48) = v33;
    *(v30 + 64) = *(v30 - 8);
    v34 = *(v30 - 56);
    *v30 = *(v30 - 72);
    *(v30 + 16) = v34;
    *(v32 + 64) = v104;
    *(v32 + 32) = v100;
    *(v32 + 48) = v102;
    v30 -= 72;
    *v32 = v96;
    *(v32 + 16) = v98;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_43;
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

uint64_t sub_24B5997A8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v107 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_105:
    v107 = *v107;
    if (!v107)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_24B59B888(v8);
      v8 = result;
    }

    v99 = v8 + 16;
    v98 = *(v8 + 2);
    if (v98 >= 2)
    {
      while (1)
      {
        v100 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v101 = &v8[16 * v98];
        v5 = *v101;
        v102 = &v99[2 * v98];
        v103 = v102[1];
        sub_24B59B544((v100 + 56 * *v101), (v100 + 56 * *v102), v100 + 56 * v103, v107);
        if (v4)
        {
        }

        if (v103 < v5)
        {
          goto LABEL_129;
        }

        if (v98 - 2 >= *v99)
        {
          goto LABEL_130;
        }

        *v101 = v5;
        *(v101 + 1) = v103;
        v104 = *v99 - v98;
        if (*v99 < v98)
        {
          goto LABEL_131;
        }

        v98 = *v99 - 1;
        result = memmove(v102, v102 + 2, 16 * v104);
        *v99 = v98;
        v5 = a3;
        if (v98 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 56 * v7;
      result = *(v11 + 40);
      v12 = *(v11 + 48);
      v13 = *v5 + 56 * v9;
      if (result == *(v13 + 40) && v12 == *(v13 + 48))
      {
        v15 = 0;
      }

      else
      {
        result = sub_24B5FFECC();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 56 * v9 + 160);
        do
        {
          result = *(v16 - 1);
          if (result == *(v16 - 8) && *v16 == *(v16 - 7))
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_24B5FFECC();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          v16 += 7;
          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v18 = 56 * v7 - 24;
          v19 = 56 * v9 + 48;
          v20 = v7;
          v21 = v9;
          do
          {
            if (v21 != --v20)
            {
              v32 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v22 = (v32 + v19);
              v23 = *(v32 + v19 - 48);
              v24 = (v32 + v18);
              v25 = *(v22 - 3);
              v26 = *(v22 - 1);
              v27 = *v22;
              v28 = *(v22 - 5);
              v30 = *(v24 - 1);
              v29 = *v24;
              v31 = *(v24 - 2);
              *v22 = *(v24 + 2);
              *(v22 - 2) = v30;
              *(v22 - 1) = v29;
              *(v22 - 3) = v31;
              *(v24 - 4) = v23;
              *(v24 - 24) = v28;
              *(v24 - 8) = v25;
              *(v24 + 1) = v26;
              *(v24 + 2) = v27;
            }

            ++v21;
            v18 -= 56;
            v19 += 56;
          }

          while (v21 < v20);
        }
      }
    }

    v33 = v5[1];
    if (v7 < v33)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v33)
        {
          v34 = v5[1];
        }

        else
        {
          v34 = v9 + a4;
        }

        if (v34 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v34)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24B595AD8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v52 = *(v8 + 2);
    v51 = *(v8 + 3);
    v53 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      result = sub_24B595AD8((v51 > 1), v52 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v53;
    v54 = &v8[16 * v52];
    *(v54 + 4) = v9;
    *(v54 + 5) = v7;
    v55 = *v107;
    if (!*v107)
    {
      goto LABEL_142;
    }

    if (v52)
    {
      while (1)
      {
        v56 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v57 = *(v8 + 4);
          v58 = *(v8 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_74:
          if (v60)
          {
            goto LABEL_120;
          }

          v73 = &v8[16 * v53];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_123;
          }

          v79 = &v8[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_127;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v53 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v83 = &v8[16 * v53];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_88:
        if (v78)
        {
          goto LABEL_122;
        }

        v86 = &v8[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_125;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_95:
        v94 = v56 - 1;
        if (v56 - 1 >= v53)
        {
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
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v95 = *&v8[16 * v94 + 32];
        v96 = *&v8[16 * v56 + 40];
        sub_24B59B544((*v5 + 56 * v95), (*v5 + 56 * *&v8[16 * v56 + 32]), *v5 + 56 * v96, v55);
        if (v4)
        {
        }

        if (v96 < v95)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24B59B888(v8);
        }

        if (v94 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v97 = &v8[16 * v94];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        result = sub_24B59B7FC(v56);
        v53 = *(v8 + 2);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v8[16 * v53 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_118;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_119;
      }

      v68 = &v8[16 * v53];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_121;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_124;
      }

      if (v72 >= v64)
      {
        v90 = &v8[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_128;
        }

        if (v59 < v93)
        {
          v56 = v53 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v35 = *v5;
  v36 = *v5 + 56 * v7 - 56;
  v105 = v9;
  v37 = v9 - v7;
LABEL_43:
  v38 = v35 + 56 * v7;
  v39 = *(v38 + 40);
  v40 = *(v38 + 48);
  v41 = v37;
  v42 = v36;
  while (1)
  {
    v43 = v39 == *(v42 + 40) && v40 == *(v42 + 48);
    if (v43 || (result = sub_24B5FFECC(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v36 += 56;
      --v37;
      if (v7 != v34)
      {
        goto LABEL_43;
      }

      v7 = v34;
      v5 = a3;
      v9 = v105;
      goto LABEL_54;
    }

    if (!v35)
    {
      break;
    }

    v44 = *(v42 + 64);
    v45 = *(v42 + 16);
    v47 = *(v42 + 48);
    v46 = *(v42 + 56);
    *(v42 + 56) = *v42;
    v48 = *(v42 + 80);
    v49 = *(v42 + 88);
    v39 = *(v42 + 96);
    v40 = *(v42 + 104);
    *(v42 + 72) = v45;
    *(v42 + 88) = *(v42 + 32);
    *(v42 + 104) = v47;
    *v42 = v46;
    *(v42 + 8) = v44;
    *(v42 + 24) = v48;
    *(v42 + 32) = v49;
    *(v42 + 40) = v39;
    *(v42 + 48) = v40;
    v42 -= 56;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_24B599DD4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v100 = *v99;
    if (!*v99)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_24B59B888(v7);
      v7 = result;
    }

    v91 = (v7 + 16);
    v92 = *(v7 + 16);
    if (v92 >= 2)
    {
      while (*a3)
      {
        v93 = (v7 + 16 * v92);
        v94 = *v93;
        v95 = &v91[2 * v92];
        v96 = v95[1];
        sub_24B59B308((*a3 + 40 * *v93), (*a3 + 40 * *v95), *a3 + 40 * v96, v100);
        if (v4)
        {
        }

        if (v96 < v94)
        {
          goto LABEL_114;
        }

        if (v92 - 2 >= *v91)
        {
          goto LABEL_115;
        }

        *v93 = v94;
        v93[1] = v96;
        v97 = *v91 - v92;
        if (*v91 < v92)
        {
          goto LABEL_116;
        }

        v92 = *v91 - 1;
        result = memmove(v95, v95 + 2, 16 * v97);
        *v91 = v92;
        if (v92 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v98 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 40 * v6 + 24);
      v10 = *a3 + 40 * v8;
      v11 = *(v10 + 24);
      v12 = v8 + 2;
      v13 = (v10 + 104);
      v14 = v9;
      while (v5 != v12)
      {
        v15 = *v13;
        v13 += 5;
        v16 = v15 >= v14;
        ++v12;
        v14 = v15;
        if ((((v9 < v11) ^ v16) & 1) == 0)
        {
          v6 = v12 - 1;
          if (v9 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 40 * v6 - 8;
        v18 = 40 * v8 + 32;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v29 + v18);
            v22 = (v29 + v17);
            v23 = *(v21 - 4);
            v24 = *(v21 - 3);
            v25 = *v21;
            v26 = *(v21 - 1);
            v27 = *v22;
            v28 = *(v22 - 1);
            *(v21 - 2) = *(v22 - 2);
            *(v21 - 1) = v28;
            *v21 = v27;
            *(v22 - 4) = v23;
            *(v22 - 3) = v24;
            *(v22 - 1) = v26;
            *v22 = v25;
          }

          ++v20;
          v17 -= 40;
          v18 += 40;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24B595AD8(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v44 = *(v7 + 16);
    v43 = *(v7 + 24);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_24B595AD8((v43 > 1), v44 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v45;
    v46 = v7 + 32;
    v47 = (v7 + 32 + 16 * v44);
    *v47 = v8;
    v47[1] = v6;
    v100 = *v99;
    if (!*v99)
    {
      goto LABEL_127;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v7 + 32);
          v50 = *(v7 + 40);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_57:
          if (v52)
          {
            goto LABEL_104;
          }

          v65 = (v7 + 16 * v45);
          v67 = *v65;
          v66 = v65[1];
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_106;
          }

          v71 = (v46 + 16 * v48);
          v73 = *v71;
          v72 = v71[1];
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_111;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v45 < 2)
        {
          goto LABEL_112;
        }

        v75 = (v7 + 16 * v45);
        v77 = *v75;
        v76 = v75[1];
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_72:
        if (v70)
        {
          goto LABEL_108;
        }

        v78 = (v46 + 16 * v48);
        v80 = *v78;
        v79 = v78[1];
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_110;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v48 - 1 >= v45)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v86 = (v46 + 16 * (v48 - 1));
        v87 = *v86;
        v88 = (v46 + 16 * v48);
        v89 = v88[1];
        sub_24B59B308((*a3 + 40 * *v86), (*a3 + 40 * *v88), *a3 + 40 * v89, v100);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_99;
        }

        if (v48 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *(v7 + 16);
        if (v48 >= v90)
        {
          goto LABEL_101;
        }

        v45 = v90 - 1;
        result = memmove((v46 + 16 * v48), v88 + 2, 16 * (v90 - 1 - v48));
        *(v7 + 16) = v90 - 1;
        if (v90 <= 2)
        {
          goto LABEL_3;
        }
      }

      v53 = v46 + 16 * v45;
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_102;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_103;
      }

      v60 = (v7 + 16 * v45);
      v62 = *v60;
      v61 = v60[1];
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_105;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_107;
      }

      if (v64 >= v56)
      {
        v82 = (v46 + 16 * v48);
        v84 = *v82;
        v83 = v82[1];
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_113;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v98;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 40 * v6 - 40;
  v32 = v8 - v6;
LABEL_30:
  v33 = *(v30 + 40 * v6 + 24);
  v34 = v32;
  v35 = v31;
  while (1)
  {
    if (v33 >= *(v35 + 24))
    {
LABEL_29:
      ++v6;
      v31 += 40;
      --v32;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v37 = *(v35 + 40);
    v36 = *(v35 + 48);
    v38 = *(v35 + 56);
    v39 = *(v35 + 16);
    v40 = *(v35 + 32);
    *(v35 + 40) = *v35;
    v41 = *(v35 + 72);
    *(v35 + 56) = v39;
    *(v35 + 72) = v40;
    *v35 = v37;
    *(v35 + 8) = v36;
    *(v35 + 16) = v38;
    *(v35 + 24) = v33;
    *(v35 + 32) = v41;
    v35 -= 40;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_24B59A3B4(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 < v11)
  {
    v12 = 48 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 48)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_73;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v18 = v6[40];
      v19 = v4[40];
      if (v19 > 4)
      {
        if (v4[40] > 6u)
        {
          if (v19 == 7)
          {
            if (v18 < 7)
            {
              goto LABEL_33;
            }
          }

          else if (v18 < 8)
          {
            goto LABEL_33;
          }
        }

        else if (v19 == 5)
        {
          if (v18 < 5)
          {
            goto LABEL_33;
          }
        }

        else if (v18 < 6)
        {
          goto LABEL_33;
        }
      }

      else if (v4[40] > 2u)
      {
        if (v19 == 3)
        {
          if (v18 < 3)
          {
            goto LABEL_33;
          }
        }

        else if (v18 < 4)
        {
LABEL_33:
          v14 = v6;
          v15 = v7 == v6;
          v6 += 48;
          if (v15)
          {
            goto LABEL_9;
          }

LABEL_8:
          v16 = *v14;
          v17 = *(v14 + 2);
          *(v7 + 1) = *(v14 + 1);
          *(v7 + 2) = v17;
          *v7 = v16;
          goto LABEL_9;
        }
      }

      else if (v19 >= 2)
      {
        if (v18 < 2)
        {
          goto LABEL_33;
        }
      }

      else if (v18 < v19)
      {
        goto LABEL_33;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 48;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 48;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }
  }

  v20 = 48 * v11;
  if (a4 != __src || &__src[v20] <= a4)
  {
    memmove(a4, __src, 48 * v11);
  }

  v13 = &v4[v20];
  if (v10 >= 48 && v6 > v7)
  {
LABEL_41:
    v5 -= 48;
    do
    {
      v21 = *(v13 - 8);
      v22 = *(v6 - 8);
      if (v22 > 4)
      {
        if (*(v6 - 8) > 6u)
        {
          if (v22 == 7)
          {
            if (v21 < 7)
            {
              goto LABEL_67;
            }
          }

          else if (v21 < 8)
          {
            goto LABEL_67;
          }
        }

        else if (v22 == 5)
        {
          if (v21 < 5)
          {
            goto LABEL_67;
          }
        }

        else if (v21 < 6)
        {
          goto LABEL_67;
        }
      }

      else if (*(v6 - 8) > 2u)
      {
        if (v22 == 3)
        {
          if (v21 < 3)
          {
            goto LABEL_67;
          }
        }

        else if (v21 < 4)
        {
LABEL_67:
          v26 = v6 - 48;
          if (v5 + 48 != v6)
          {
            v27 = *v26;
            v28 = *(v6 - 1);
            *(v5 + 1) = *(v6 - 2);
            *(v5 + 2) = v28;
            *v5 = v27;
          }

          if (v13 <= v4 || (v6 -= 48, v26 <= v7))
          {
            v6 = v26;
            goto LABEL_73;
          }

          goto LABEL_41;
        }
      }

      else if (v22 >= 2)
      {
        if (v21 < 2)
        {
          goto LABEL_67;
        }
      }

      else if (v21 < v22)
      {
        goto LABEL_67;
      }

      v23 = v13 - 48;
      if (v5 + 48 != v13)
      {
        v24 = *v23;
        v25 = *(v13 - 1);
        *(v5 + 1) = *(v13 - 2);
        *(v5 + 2) = v25;
        *v5 = v24;
      }

      v5 -= 48;
      v13 -= 48;
    }

    while (v23 > v4);
    v13 = v23;
  }

LABEL_73:
  v29 = 48 * ((v13 - v4) / 48);
  if (v6 != v4 || v6 >= &v4[v29])
  {
    memmove(v6, v4, v29);
  }

  return 1;
}

uint64_t sub_24B59A6F4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 63;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 6;
  v11 = a3 - __src;
  v12 = a3 - __src + 63;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 6;
  if (v10 < v12 >> 6)
  {
    if (a4 != __dst || &__dst[64 * v10] <= a4)
    {
      memmove(a4, __dst, v10 << 6);
    }

    v14 = &v4[64 * v10];
    if (v8 < 64)
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

      v19 = *(v6 + 5) == *(v4 + 5) && *(v6 + 6) == *(v4 + 6);
      if (!v19 && (sub_24B5FFECC() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v19 = v7 == v4;
      v4 += 64;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 64;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v19 = v7 == v6;
    v6 += 64;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *v15;
    v17 = *(v15 + 1);
    v18 = *(v15 + 3);
    *(v7 + 2) = *(v15 + 2);
    *(v7 + 3) = v18;
    *v7 = v16;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[64 * v13] <= a4)
  {
    memmove(a4, __src, v13 << 6);
  }

  v14 = &v4[64 * v13];
  if (v11 >= 64 && v6 > v7)
  {
LABEL_28:
    v5 -= 64;
    do
    {
      v20 = *(v14 - 3) == *(v6 - 3) && *(v14 - 2) == *(v6 - 2);
      if (!v20 && (sub_24B5FFECC() & 1) != 0)
      {
        v25 = v6 - 64;
        if (v5 + 64 != v6)
        {
          v26 = *v25;
          v27 = *(v6 - 3);
          v28 = *(v6 - 1);
          *(v5 + 2) = *(v6 - 2);
          *(v5 + 3) = v28;
          *v5 = v26;
          *(v5 + 1) = v27;
        }

        if (v14 <= v4 || (v6 -= 64, v25 <= v7))
        {
          v6 = v25;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      v21 = v14 - 64;
      if (v5 + 64 != v14)
      {
        v22 = *v21;
        v23 = *(v14 - 3);
        v24 = *(v14 - 1);
        *(v5 + 2) = *(v14 - 2);
        *(v5 + 3) = v24;
        *v5 = v22;
        *(v5 + 1) = v23;
      }

      v5 -= 64;
      v14 -= 64;
    }

    while (v21 > v4);
    v14 = v21;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x3FuLL : 0)) & 0xFFFFFFFFFFFFFFC0])
  {
    memmove(v6, v4, ((v14 - v4) / 64) << 6);
  }

  return 1;
}

uint64_t sub_24B59A934(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 63;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 6;
  v11 = a3 - __src;
  v12 = a3 - __src + 63;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 6;
  if (v10 < v12 >> 6)
  {
    if (a4 != __dst || &__dst[64 * v10] <= a4)
    {
      memmove(a4, __dst, v10 << 6);
    }

    v14 = &v4[64 * v10];
    if (v8 < 64)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v6 + 7) < *(v4 + 7))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 64;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 64;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 64;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *v15;
    v18 = *(v15 + 1);
    v19 = *(v15 + 3);
    *(v7 + 2) = *(v15 + 2);
    *(v7 + 3) = v19;
    *v7 = v17;
    *(v7 + 1) = v18;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[64 * v13] <= a4)
  {
    memmove(a4, __src, v13 << 6);
  }

  v14 = &v4[64 * v13];
  if (v11 >= 64 && v6 > v7)
  {
LABEL_24:
    v5 -= 64;
    do
    {
      v20 = v5 + 64;
      if (*(v14 - 1) < *(v6 - 1))
      {
        v25 = v6 - 64;
        if (v20 != v6)
        {
          v26 = *v25;
          v27 = *(v6 - 3);
          v28 = *(v6 - 1);
          *(v5 + 2) = *(v6 - 2);
          *(v5 + 3) = v28;
          *v5 = v26;
          *(v5 + 1) = v27;
        }

        if (v14 <= v4 || (v6 -= 64, v25 <= v7))
        {
          v6 = v25;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v21 = v14 - 64;
      if (v20 != v14)
      {
        v22 = *v21;
        v23 = *(v14 - 3);
        v24 = *(v14 - 1);
        *(v5 + 2) = *(v14 - 2);
        *(v5 + 3) = v24;
        *v5 = v22;
        *(v5 + 1) = v23;
      }

      v5 -= 64;
      v14 -= 64;
    }

    while (v21 > v4);
    v14 = v21;
  }

LABEL_35:
  v29 = v14 - v4 + (v14 - v4 < 0 ? 0x3FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v29 & 0xFFFFFFFFFFFFFFC0])
  {
    memmove(v6, v4, v29 >> 6 << 6);
  }

  return 1;
}

uint64_t sub_24B59AB50(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 72;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 72;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[72 * v9] <= a4)
    {
      memmove(a4, __dst, 72 * v9);
    }

    v12 = &v4[72 * v9];
    if (v8 < 72)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v6 + 7) < *(v4 + 7))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 72;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 72;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 72;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x48uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[72 * v11] <= a4)
  {
    memmove(a4, __src, 72 * v11);
  }

  v12 = &v4[72 * v11];
  if (v10 >= 72 && v6 > v7)
  {
LABEL_20:
    v5 -= 72;
    do
    {
      v15 = v5 + 72;
      if (*(v12 - 2) < *(v6 - 2))
      {
        v17 = v6 - 72;
        if (v15 != v6)
        {
          memmove(v5, v6 - 72, 0x48uLL);
        }

        if (v12 <= v4 || (v6 -= 72, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 72);
      if (v15 != v12)
      {
        memmove(v5, v12 - 72, 0x48uLL);
      }

      v5 -= 72;
      v12 -= 72;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 72;
  if (v6 != v4 || v6 >= &v4[72 * v18])
  {
    memmove(v6, v4, 72 * v18);
  }

  return 1;
}

uint64_t sub_24B59ADC8(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 72;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 72;
  if (v9 < v11)
  {
    if (__dst != __src || &__src[72 * v9] <= __dst)
    {
      memmove(__dst, __src, 72 * v9);
    }

    v12 = &v4[72 * v9];
    if (v8 < 72 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_41;
    }

    while (1)
    {
      v13 = *(v6 + 7) == *(v4 + 7) && *(v6 + 8) == *(v4 + 8);
      if (v13 || (sub_24B5FFECC() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 72;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 72;
      if (v4 >= v12 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_41;
      }
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 72;
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    memmove(v7, v14, 0x48uLL);
    goto LABEL_17;
  }

  if (__dst != a2 || &a2[72 * v11] <= __dst)
  {
    memmove(__dst, a2, 72 * v11);
  }

  v12 = &v4[72 * v11];
  if (v10 >= 72 && v6 > v7)
  {
    do
    {
      v5 -= 72;
      while (1)
      {
        v15 = *(v12 - 2) == *(v6 - 2) && *(v12 - 1) == *(v6 - 1);
        if (!v15 && (sub_24B5FFECC() & 1) != 0)
        {
          break;
        }

        v16 = (v12 - 72);
        if (v5 + 72 != v12)
        {
          memmove(v5, v12 - 72, 0x48uLL);
        }

        v5 -= 72;
        v12 -= 72;
        if (v16 <= v4)
        {
          v12 = v16;
          goto LABEL_41;
        }
      }

      v17 = v6 - 72;
      if (v5 + 72 != v6)
      {
        memmove(v5, v6 - 72, 0x48uLL);
      }

      if (v12 <= v4)
      {
        break;
      }

      v6 -= 72;
    }

    while (v17 > v7);
    v6 = v17;
  }

LABEL_41:
  v18 = (v12 - v4) / 72;
  if (v6 != v4 || v6 >= &v4[72 * v18])
  {
    memmove(v6, v4, 72 * v18);
  }

  return 1;
}

uint64_t sub_24B59B068(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 72;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 72;
  if (v9 < v11)
  {
    if (__dst != __src || &__src[72 * v9] <= __dst)
    {
      memmove(__dst, __src, 72 * v9);
    }

    v12 = &v4[72 * v9];
    if (v8 < 72 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_41;
    }

    while (1)
    {
      v13 = *(v6 + 6) == *(v4 + 6) && *(v6 + 7) == *(v4 + 7);
      if (v13 || (sub_24B5FFECC() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 72;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 72;
      if (v4 >= v12 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_41;
      }
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 72;
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    memmove(v7, v14, 0x48uLL);
    goto LABEL_17;
  }

  if (__dst != a2 || &a2[72 * v11] <= __dst)
  {
    memmove(__dst, a2, 72 * v11);
  }

  v12 = &v4[72 * v11];
  if (v10 >= 72 && v6 > v7)
  {
    do
    {
      v5 -= 72;
      while (1)
      {
        v15 = *(v12 - 3) == *(v6 - 3) && *(v12 - 2) == *(v6 - 2);
        if (!v15 && (sub_24B5FFECC() & 1) != 0)
        {
          break;
        }

        v16 = (v12 - 72);
        if (v5 + 72 != v12)
        {
          memmove(v5, v12 - 72, 0x48uLL);
        }

        v5 -= 72;
        v12 -= 72;
        if (v16 <= v4)
        {
          v12 = v16;
          goto LABEL_41;
        }
      }

      v17 = v6 - 72;
      if (v5 + 72 != v6)
      {
        memmove(v5, v6 - 72, 0x48uLL);
      }

      if (v12 <= v4)
      {
        break;
      }

      v6 -= 72;
    }

    while (v17 > v7);
    v6 = v17;
  }

LABEL_41:
  v18 = (v12 - v4) / 72;
  if (v6 != v4 || v6 >= &v4[72 * v18])
  {
    memmove(v6, v4, 72 * v18);
  }

  return 1;
}

uint64_t sub_24B59B308(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[5 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[5 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[3] < v4[3])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 5;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 5;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v7[4] = v13[4];
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[5 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[5 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v17 = (v5 + 40);
      if (*(v12 - 2) < *(v6 - 2))
      {
        v21 = v6 - 5;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v22;
          *(v5 + 16) = v23;
        }

        if (v12 <= v4 || (v6 -= 5, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 5;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 3);
        *(v5 + 32) = *(v12 - 1);
        *v5 = v19;
        *(v5 + 16) = v20;
      }

      v5 -= 40;
      v12 -= 5;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v25 = (v24 >> 4) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[5 * v25])
  {
    memmove(v6, v4, 40 * v25);
  }

  return 1;
}

uint64_t sub_24B59B544(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[56 * v9] <= a4)
    {
      memmove(a4, __dst, 56 * v9);
    }

    v12 = &v4[56 * v9];
    if (v8 < 56)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v17 = *(v6 + 5) == *(v4 + 5) && *(v6 + 6) == *(v4 + 6);
      if (!v17 && (sub_24B5FFECC() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v17 = v7 == v4;
      v4 += 56;
      if (!v17)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 56;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v17 = v7 == v6;
    v6 += 56;
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = *(v13 + 2);
    *(v7 + 6) = *(v13 + 6);
    *(v7 + 1) = v15;
    *(v7 + 2) = v16;
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[56 * v11] <= a4)
  {
    memmove(a4, __src, 56 * v11);
  }

  v12 = &v4[56 * v11];
  if (v10 >= 56 && v6 > v7)
  {
LABEL_24:
    v5 -= 56;
    do
    {
      v18 = *(v12 - 2) == *(v6 - 2) && *(v12 - 1) == *(v6 - 1);
      if (!v18 && (sub_24B5FFECC() & 1) != 0)
      {
        v23 = v6 - 56;
        if ((v5 + 56) != v6)
        {
          v24 = *v23;
          v25 = *(v6 - 40);
          v26 = *(v6 - 24);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v25;
          *(v5 + 32) = v26;
          *v5 = v24;
        }

        if (v12 <= v4 || (v6 -= 56, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      v19 = v12 - 56;
      if ((v5 + 56) != v12)
      {
        v20 = *v19;
        v21 = *(v12 - 40);
        v22 = *(v12 - 24);
        *(v5 + 48) = *(v12 - 1);
        *(v5 + 16) = v21;
        *(v5 + 32) = v22;
        *v5 = v20;
      }

      v5 -= 56;
      v12 -= 56;
    }

    while (v19 > v4);
    v12 = v19;
  }

LABEL_39:
  v27 = (v12 - v4) / 56;
  if (v6 != v4 || v6 >= &v4[56 * v27])
  {
    memmove(v6, v4, 56 * v27);
  }

  return 1;
}

uint64_t sub_24B59B7FC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24B59B888(v3);
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
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_24B59B89C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24B596270(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24B59B990(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018CB0, &qword_24B601138);
  v38 = a2;
  result = sub_24B5FFD1C();
  v8 = result;
  if (*(v5 + 16))
  {
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
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_24B5FFEFC();
      sub_24B5FFB1C();
      result = sub_24B5FFF3C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_24B59BC30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018CB0, &qword_24B601138);
  v2 = *v0;
  v3 = sub_24B5FFD0C();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_24B59BD98(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = *(a4 + 48) + 48 * (__clz(__rbit64(v9)) | (v12 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v9 &= v9 - 1;
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      v22 = *(v17 + 32);
      v23 = *(v17 + 40);
      *v11 = *v17;
      *(v11 + 8) = v19;
      *(v11 + 16) = v20;
      *(v11 + 24) = v21;
      *(v11 + 32) = v22;
      *(v11 + 40) = v23;
      if (v14 == v10)
      {
        sub_24B57BA1C(v18, v19, v20, v21, v22, v23);
        goto LABEL_24;
      }

      v11 += 48;
      sub_24B57BA1C(v18, v19, v20, v21, v22, v23);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v25 = v12 + 1;
    }

    else
    {
      v25 = (63 - v7) >> 6;
    }

    v12 = v25 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_24B59BF08(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 72 * (v17 | (v12 << 6)));
      v25[0] = *v18;
      v20 = v18[2];
      v19 = v18[3];
      v21 = v18[1];
      v26 = *(v18 + 8);
      v25[2] = v20;
      v25[3] = v19;
      v25[1] = v21;
      memmove(v11, v18, 0x48uLL);
      if (v14 == v10)
      {
        sub_24B5A16FC(v25, v24);
        goto LABEL_24;
      }

      v11 += 72;
      sub_24B5A16FC(v25, v24);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_24B59C09C(void *result, char *__dst, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *, _BYTE *))
{
  v6 = result;
  v7 = a4 + 56;
  v8 = -1 << *(a4 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a4 + 56);
  if (!__dst)
  {
LABEL_18:
    v13 = 0;
    v11 = 0;
LABEL_24:
    *v6 = a4;
    v6[1] = v7;
    v6[2] = ~v8;
    v6[3] = v13;
    v6[4] = v10;
    return v11;
  }

  v11 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v12 = __dst;
    result = 0;
    v13 = 0;
    v14 = (63 - v8) >> 6;
    v15 = 1;
    while (v10)
    {
LABEL_14:
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v19 = (*(a4 + 48) + 72 * (v18 | (v13 << 6)));
      v27[0] = *v19;
      v21 = v19[2];
      v20 = v19[3];
      v22 = v19[1];
      v28 = *(v19 + 8);
      v27[2] = v21;
      v27[3] = v20;
      v27[1] = v22;
      memmove(v12, v19, 0x48uLL);
      if (v15 == v11)
      {
        a5(v27, v26);
        goto LABEL_24;
      }

      v12 += 72;
      a5(v27, v26);
      result = v15;
      if (__OFADD__(v15++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v16 = v13;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v17 >= v14)
      {
        break;
      }

      v10 = *(v7 + 8 * v17);
      ++v16;
      if (v10)
      {
        v13 = v17;
        goto LABEL_14;
      }
    }

    v10 = 0;
    if (v14 <= (v13 + 1))
    {
      v24 = v13 + 1;
    }

    else
    {
      v24 = (63 - v8) >> 6;
    }

    v13 = v24 - 1;
    v11 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_24B59C244(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 72 * (v17 | (v12 << 6)));
      v25[0] = *v18;
      v20 = v18[2];
      v19 = v18[3];
      v21 = v18[1];
      v26 = *(v18 + 8);
      v25[2] = v20;
      v25[3] = v19;
      v25[1] = v21;
      memmove(v11, v18, 0x48uLL);
      if (v14 == v10)
      {
        sub_24B5A0A70(v25, v24);
        goto LABEL_24;
      }

      v11 += 72;
      sub_24B5A0A70(v25, v24);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_24B59C3D8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 40 * (v17 | (v12 << 6));
      v19 = *(v18 + 8);
      v20 = *(v18 + 32);
      v21 = *(v18 + 16);
      *v11 = *v18;
      *(v11 + 8) = v19;
      *(v11 + 16) = v21;
      *(v11 + 32) = v20;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 40;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_24B59C540(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v9 = 0;
    a3 = 0;
LABEL_24:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v24 = result;
    v25 = a3;
    result = 0;
    v9 = 0;
    v23 = -1 << *(a4 + 32);
    v10 = (63 - v5) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_14:
      v14 = a4;
      v15 = *(a4 + 48) + 56 * (__clz(__rbit64(v7)) | (v9 << 6));
      v16 = *(v15 + 8);
      v7 &= v7 - 1;
      v18 = *(v15 + 32);
      v17 = *(v15 + 40);
      v19 = *(v15 + 48);
      v20 = *(v15 + 16);
      *v8 = *v15;
      *(v8 + 8) = v16;
      *(v8 + 16) = v20;
      *(v8 + 32) = v18;
      *(v8 + 40) = v17;
      *(v8 + 48) = v19;
      if (v11 == v25)
      {

        a4 = v14;
        v5 = v23;
        result = v24;
        a3 = v25;
        goto LABEL_24;
      }

      v8 += 56;

      result = v11;
      v21 = __OFADD__(v11++, 1);
      a4 = v14;
      if (v21)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v10 <= v9 + 1)
    {
      v22 = v9 + 1;
    }

    else
    {
      v22 = v10;
    }

    v9 = v22 - 1;
    a3 = result;
    v5 = v23;
    result = v24;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_24B59C8AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018CD8, &qword_24B601160);
    v3 = sub_24B5FFCCC();
    v4 = 0;
    v5 = v3 + 56;
    v80 = v1;
    v81 = a1 + 32;
    v83 = v3;
    while (1)
    {
      v6 = v81 + 48 * v4;
      v8 = *v6;
      v7 = *(v6 + 8);
      v86 = *(v6 + 16);
      v87 = *(v6 + 24);
      v88 = *(v6 + 32);
      v9 = *(v6 + 40);
      v10 = *(v3 + 40);
      sub_24B5FFEFC();
      v85 = v9;
      v82 = v4;
      if (v9 <= 3)
      {
        if (v9 > 1)
        {
          if (v9 == 2)
          {
            v11 = 2;
          }

          else
          {
            v11 = 3;
          }
        }

        else
        {
          if (v9)
          {
            MEMORY[0x24C243ED0](1);

            sub_24B5FFB1C();
            if ((*&v86 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v12 = v86;
            }

            else
            {
              v12 = 0.0;
            }

            MEMORY[0x24C243EF0](*&v12);
            if ((*&v87 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v13 = v87;
            }

            else
            {
              v13 = 0.0;
            }

            MEMORY[0x24C243EF0](*&v13);
            if ((*&v88 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v14 = v88;
            }

            else
            {
              v14 = 0.0;
            }

            MEMORY[0x24C243EF0](*&v14);
            goto LABEL_32;
          }

          v11 = 0;
        }

        goto LABEL_31;
      }

      if (v9 <= 5)
      {
        if (v9 == 4)
        {
          v11 = 4;
        }

        else
        {
          v11 = 5;
        }

        goto LABEL_31;
      }

      if (v9 == 6)
      {
        break;
      }

      if (v9 == 7)
      {
        v11 = 7;
LABEL_31:
        MEMORY[0x24C243ED0](v11);

        sub_24B5FFB1C();
        goto LABEL_32;
      }

      MEMORY[0x24C243ED0](8);
      sub_24B5FFB1C();

LABEL_32:
      result = sub_24B5FFF3C();
      v16 = -1 << *(v3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = *(v5 + 8 * (v17 >> 6));
      v20 = 1 << v17;
      if (((1 << v17) & v19) == 0)
      {
        LOBYTE(v21) = v9;
LABEL_174:
        *(v5 + 8 * v18) = v19 | v20;
        v70 = *(v3 + 48) + 48 * v17;
        *v70 = v8;
        *(v70 + 8) = v7;
        *(v70 + 16) = v86;
        *(v70 + 24) = v87;
        *(v70 + 32) = v88;
        *(v70 + 40) = v21;
        v71 = *(v3 + 16);
        v72 = __OFADD__(v71, 1);
        v73 = v71 + 1;
        if (!v72)
        {
          *(v3 + 16) = v73;
          goto LABEL_4;
        }

        __break(1u);
        return result;
      }

      v84 = ~v16;
      v21 = v9;
      while (1)
      {
        v27 = v5;
        v28 = *(v3 + 48) + 48 * v17;
        v30 = *v28;
        v29 = *(v28 + 8);
        v32 = *(v28 + 16);
        v31 = *(v28 + 24);
        v33 = *(v28 + 32);
        v34 = *(v28 + 40);
        v89[0] = v30;
        v89[1] = v29;
        v89[2] = v32;
        v89[3] = v31;
        v89[4] = v33;
        v90 = v34;
        v91 = v8;
        v92 = v7;
        v93 = v86;
        v94 = v87;
        v95 = v88;
        v96 = v21;
        if (v34 <= 3)
        {
          break;
        }

        if (v34 <= 5)
        {
          if (v34 == 4)
          {
            if (v21 != 4)
            {
              sub_24B57BA1C(v8, v7, *&v86, *&v87, *&v88, v21);
              v22 = v30;
              v23 = v29;
              v24 = v32;
              v25 = v31;
              v26 = v33;
              LOBYTE(v21) = 4;
              goto LABEL_35;
            }

            if (v30 == v8 && v29 == v7)
            {
              goto LABEL_3;
            }

            v40 = sub_24B5FFECC();
            sub_24B57BA1C(v8, v7, *&v86, *&v87, *&v88, 4u);
            sub_24B57BA1C(v30, v29, v32, v31, v33, 4u);
            result = sub_24B58090C(v89, &qword_27F018B40, &qword_24B600DD8);
            v5 = v27;
            if (v40)
            {
              v74 = v8;
              v75 = v7;
              v76 = *&v86;
              v77 = *&v87;
              v78 = *&v88;
              v79 = 4;
              goto LABEL_179;
            }
          }

          else
          {
            if (v21 != 5)
            {
              sub_24B57BA1C(v8, v7, *&v86, *&v87, *&v88, v21);
              v22 = v30;
              v23 = v29;
              v24 = v32;
              v25 = v31;
              v26 = v33;
              LOBYTE(v21) = 5;
              goto LABEL_35;
            }

            if (v30 == v8 && v29 == v7)
            {
              goto LABEL_3;
            }

            v53 = sub_24B5FFECC();
            sub_24B57BA1C(v8, v7, *&v86, *&v87, *&v88, 5u);
            sub_24B57BA1C(v30, v29, v32, v31, v33, 5u);
            result = sub_24B58090C(v89, &qword_27F018B40, &qword_24B600DD8);
            v5 = v27;
            if (v53)
            {
              v74 = v8;
              v75 = v7;
              v76 = *&v86;
              v77 = *&v87;
              v78 = *&v88;
              v79 = 5;
              goto LABEL_179;
            }
          }
        }

        else if (v34 == 6)
        {
          if (v21 != 6)
          {
            sub_24B57BA1C(v8, v7, *&v86, *&v87, *&v88, v21);
            v22 = v30;
            v23 = v29;
            v24 = v32;
            v25 = v31;
            v26 = v33;
            LOBYTE(v21) = 6;
LABEL_35:
            sub_24B57BA1C(v22, v23, v24, v25, v26, v21);
            v5 = v27;
            result = sub_24B58090C(v89, &qword_27F018B40, &qword_24B600DD8);
            goto LABEL_36;
          }

          if (v30 == v8 && v29 == v7)
          {
            goto LABEL_3;
          }

          v42 = sub_24B5FFECC();
          sub_24B57BA1C(v8, v7, *&v86, *&v87, *&v88, 6u);
          sub_24B57BA1C(v30, v29, v32, v31, v33, 6u);
          result = sub_24B58090C(v89, &qword_27F018B40, &qword_24B600DD8);
          v5 = v27;
          if (v42)
          {
            v74 = v8;
            v75 = v7;
            v76 = *&v86;
            v77 = *&v87;
            v78 = *&v88;
            v79 = 6;
            goto LABEL_179;
          }
        }

        else
        {
          if (v34 != 7)
          {
            if (v21 != 8)
            {
              v22 = v8;
              v23 = v7;
              v24 = *&v86;
              v25 = *&v87;
              v26 = *&v88;
              goto LABEL_35;
            }

            v5 = v27;
            if (v30 > 3u)
            {
              if (v30 <= 5u)
              {
                if (v30 == 4)
                {
                  v51 = 0xE700000000000000;
                  v50 = 0x7261655977656ELL;
                }

                else
                {
                  v51 = 0xE500000000000000;
                  v50 = 0x6564697270;
                }

                goto LABEL_142;
              }

              if (v30 == 6)
              {
                v50 = 0x576D6172676F7270;
                v51 = 0xEE0074756F6B726FLL;
                goto LABEL_142;
              }

              v50 = 0x6967736B6E616874;
              v58 = 1735289206;
            }

            else
            {
              if (v30 <= 1u)
              {
                v50 = 0x7053747369747261;
                v51 = 0xEF746867696C746FLL;
                if (v30)
                {
                  v50 = 0x6565776F6C6C6168;
                  v51 = 0xE90000000000006ELL;
                }

                goto LABEL_142;
              }

              if (v30 == 2)
              {
                v51 = 0xE700000000000000;
                v50 = 0x796164696C6F68;
LABEL_142:
                v59 = 0x6967736B6E616874;
                if (v8 == 6)
                {
                  v59 = 0x576D6172676F7270;
                }

                v60 = 0xEE0074756F6B726FLL;
                if (v8 != 6)
                {
                  v60 = 0xEC000000676E6976;
                }

                v61 = 0x7261655977656ELL;
                if (v8 != 4)
                {
                  v61 = 0x6564697270;
                }

                v62 = 0xE500000000000000;
                if (v8 == 4)
                {
                  v62 = 0xE700000000000000;
                }

                if (v8 <= 5u)
                {
                  v59 = v61;
                  v60 = v62;
                }

                v63 = 0x77654E72616E756CLL;
                if (v8 == 2)
                {
                  v63 = 0x796164696C6F68;
                }

                v64 = 0xEC00000072616559;
                if (v8 == 2)
                {
                  v64 = 0xE700000000000000;
                }

                v65 = 0x7053747369747261;
                if (v8)
                {
                  v65 = 0x6565776F6C6C6168;
                }

                v66 = 0xEF746867696C746FLL;
                if (v8)
                {
                  v66 = 0xE90000000000006ELL;
                }

                if (v8 <= 1u)
                {
                  v63 = v65;
                  v64 = v66;
                }

                if (v8 <= 3u)
                {
                  v67 = v63;
                }

                else
                {
                  v67 = v59;
                }

                if (v8 <= 3u)
                {
                  v68 = v64;
                }

                else
                {
                  v68 = v60;
                }

                if (v50 == v67 && v51 == v68)
                {

                  sub_24B58090C(v89, &qword_27F018B40, &qword_24B600DD8);
                  goto LABEL_180;
                }

                v69 = sub_24B5FFECC();

                result = sub_24B58090C(v89, &qword_27F018B40, &qword_24B600DD8);
                if (v69)
                {
                  goto LABEL_180;
                }

                goto LABEL_36;
              }

              v50 = 0x77654E72616E756CLL;
              v58 = 1918985561;
            }

            v51 = v58 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            goto LABEL_142;
          }

          if (v21 != 7)
          {
            sub_24B57BA1C(v8, v7, *&v86, *&v87, *&v88, v21);
            v22 = v30;
            v23 = v29;
            v24 = v32;
            v25 = v31;
            v26 = v33;
            LOBYTE(v21) = 7;
            goto LABEL_35;
          }

          if (v30 == v8 && v29 == v7)
          {
            goto LABEL_3;
          }

          v36 = sub_24B5FFECC();
          sub_24B57BA1C(v8, v7, *&v86, *&v87, *&v88, 7u);
          sub_24B57BA1C(v30, v29, v32, v31, v33, 7u);
          result = sub_24B58090C(v89, &qword_27F018B40, &qword_24B600DD8);
          v5 = v27;
          if (v36)
          {
            v74 = v8;
            v75 = v7;
            v76 = *&v86;
            v77 = *&v87;
            v78 = *&v88;
            v79 = 7;
            goto LABEL_179;
          }
        }

LABEL_36:
        v3 = v83;
        v17 = (v17 + 1) & v84;
        v18 = v17 >> 6;
        v20 = 1 << v17;
        v21 = v85;
        if ((*(v5 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
        {
          v19 = *(v5 + 8 * v18);
          v1 = v80;
          goto LABEL_174;
        }
      }

      if (v34 > 1)
      {
        if (v34 == 2)
        {
          if (v21 != 2)
          {
            sub_24B57BA1C(v8, v7, *&v86, *&v87, *&v88, v21);
            v22 = v30;
            v23 = v29;
            v24 = v32;
            v25 = v31;
            v26 = v33;
            LOBYTE(v21) = 2;
            goto LABEL_35;
          }

          if (v30 == v8 && v29 == v7)
          {
            goto LABEL_3;
          }

          v38 = sub_24B5FFECC();
          sub_24B57BA1C(v8, v7, *&v86, *&v87, *&v88, 2u);
          sub_24B57BA1C(v30, v29, v32, v31, v33, 2u);
          result = sub_24B58090C(v89, &qword_27F018B40, &qword_24B600DD8);
          v5 = v27;
          if (v38)
          {
            v74 = v8;
            v75 = v7;
            v76 = *&v86;
            v77 = *&v87;
            v78 = *&v88;
            v79 = 2;
            goto LABEL_179;
          }
        }

        else
        {
          if (v21 != 3)
          {
            sub_24B57BA1C(v8, v7, *&v86, *&v87, *&v88, v21);
            v22 = v30;
            v23 = v29;
            v24 = v32;
            v25 = v31;
            v26 = v33;
            LOBYTE(v21) = 3;
            goto LABEL_35;
          }

          if (v30 == v8 && v29 == v7)
          {
LABEL_3:

            sub_24B58090C(v89, &qword_27F018B40, &qword_24B600DD8);
            v1 = v80;
            v3 = v83;
            v5 = v27;
            goto LABEL_4;
          }

          v49 = sub_24B5FFECC();
          sub_24B57BA1C(v8, v7, *&v86, *&v87, *&v88, 3u);
          sub_24B57BA1C(v30, v29, v32, v31, v33, 3u);
          result = sub_24B58090C(v89, &qword_27F018B40, &qword_24B600DD8);
          v5 = v27;
          if (v49)
          {
            v74 = v8;
            v75 = v7;
            v76 = *&v86;
            v77 = *&v87;
            v78 = *&v88;
            v79 = 3;
            goto LABEL_179;
          }
        }

        goto LABEL_36;
      }

      if (!v34)
      {
        if (v21)
        {
          sub_24B57BA1C(v8, v7, *&v86, *&v87, *&v88, v21);
          v22 = v30;
          v23 = v29;
          v24 = v32;
          v25 = v31;
          v26 = v33;
          LOBYTE(v21) = 0;
          goto LABEL_35;
        }

        if (v30 == v8 && v29 == v7)
        {

          sub_24B58090C(v89, &qword_27F018B40, &qword_24B600DD8);
          v1 = v80;
          v5 = v27;
          goto LABEL_4;
        }

        v55 = sub_24B5FFECC();
        sub_24B57BA1C(v8, v7, *&v86, *&v87, *&v88, 0);
        sub_24B57BA1C(v30, v29, v32, v31, v33, 0);
        result = sub_24B58090C(v89, &qword_27F018B40, &qword_24B600DD8);
        v5 = v27;
        if (v55)
        {
          v74 = v8;
          v75 = v7;
          v76 = *&v86;
          v77 = *&v87;
          v78 = *&v88;
          v79 = 0;
          goto LABEL_179;
        }

        goto LABEL_36;
      }

      if (v21 != 1)
      {
        sub_24B57BA1C(v8, v7, *&v86, *&v87, *&v88, v21);
        v22 = v30;
        v23 = v29;
        v24 = v32;
        v25 = v31;
        v26 = v33;
        LOBYTE(v21) = 1;
        goto LABEL_35;
      }

      v43 = *&v32;
      if (v30 != v8 || v29 != v7)
      {
        v45 = sub_24B5FFECC();
        sub_24B57BA1C(v8, v7, *&v86, *&v87, *&v88, 1u);
        sub_24B57BA1C(v30, v29, v32, v31, v33, 1u);
        result = sub_24B58090C(v89, &qword_27F018B40, &qword_24B600DD8);
        v5 = v27;
        if (v45)
        {
          v46 = v43 == v86 && *&v31 == v87;
          if (v46 && *&v33 == v88)
          {
            goto LABEL_176;
          }
        }

        goto LABEL_36;
      }

      sub_24B57BA1C(v8, v7, *&v86, *&v87, *&v88, 1u);
      sub_24B57BA1C(v8, v7, v32, v31, v33, 1u);
      result = sub_24B58090C(v89, &qword_27F018B40, &qword_24B600DD8);
      v57 = *&v32 == v86 && *&v31 == v87 && *&v33 == v88;
      v5 = v27;
      if (!v57)
      {
        goto LABEL_36;
      }

LABEL_176:
      v74 = v8;
      v75 = v7;
      v76 = *&v86;
      v77 = *&v87;
      v78 = *&v88;
      v79 = 1;
LABEL_179:
      sub_24B57BA04(v74, v75, v76, v77, v78, v79);
LABEL_180:
      v1 = v80;
      v3 = v83;
LABEL_4:
      v4 = v82 + 1;
      if (v82 + 1 == v1)
      {
        return v3;
      }
    }

    v11 = 6;
    goto LABEL_31;
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24B59D768(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = a3;
  v5 = 0;
  v6 = a2 + 40;
  v41 = result + 32;
  v39 = a2 + 40;
  v40 = MEMORY[0x277D84F90];
  v37 = *(result + 16);
  while (v5 < v3)
  {
    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_64;
    }

    v8 = *(v41 + v5++);
    result = type metadata accessor for FilterState();
    v9 = *(v6 + *(result + 28));
    if (v9 <= 3)
    {
      if (*(v6 + *(result + 28)) > 1u)
      {
        if (v9 == 2)
        {
          if (v8 == 2)
          {
            goto LABEL_4;
          }
        }

        else if (v8 == 3)
        {
          goto LABEL_4;
        }
      }

      else if (*(v6 + *(result + 28)))
      {
        if (v8 == 1)
        {
          goto LABEL_4;
        }
      }

      else if (!v8)
      {
        goto LABEL_4;
      }
    }

    else if (*(v6 + *(result + 28)) <= 5u)
    {
      if (v9 == 4)
      {
        if (v8 == 4)
        {
          goto LABEL_4;
        }
      }

      else if (v8 == 5)
      {
        goto LABEL_4;
      }
    }

    else if (v9 == 6)
    {
      if (v8 == 6)
      {
        goto LABEL_4;
      }
    }

    else if (v9 == 7)
    {
      if (v8 == 7)
      {
        goto LABEL_4;
      }
    }

    else if (v8 == 8)
    {
      goto LABEL_4;
    }

    if (!*v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018CC8, &qword_24B601150);
      v15 = sub_24B5FFCCC();
      v16 = 0;
      v17 = v15 + 56;
      do
      {
        v21 = byte_285E87E08[v16 + 32];
        v22 = *(v15 + 40);
        sub_24B5FFEFC();
        MEMORY[0x24C243ED0](v21);
        result = sub_24B5FFF3C();
        v23 = ~(-1 << *(v15 + 32));
        v24 = result & v23;
        v25 = (result & v23) >> 6;
        v26 = *(v17 + 8 * v25);
        v27 = 1 << (result & v23);
        v28 = *(v15 + 48);
        if ((v27 & v26) != 0)
        {
          while (*(v28 + v24) != v21)
          {
            v24 = (v24 + 1) & v23;
            v25 = v24 >> 6;
            v26 = *(v17 + 8 * (v24 >> 6));
            v27 = 1 << v24;
            if (((1 << v24) & v26) == 0)
            {
              goto LABEL_40;
            }
          }
        }

        else
        {
LABEL_40:
          *(v17 + 8 * v25) = v27 | v26;
          *(v28 + v24) = v21;
          v18 = *(v15 + 16);
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            __break(1u);
            goto LABEL_63;
          }

          *(v15 + 16) = v20;
        }

        ++v16;
      }

      while (v16 != 4);
      v3 = v37;
      if (!*(v15 + 16) || (v29 = *(v15 + 40), sub_24B5FFEFC(), MEMORY[0x24C243ED0](v8), v30 = sub_24B5FFF3C(), v31 = -1 << *(v15 + 32), v32 = v30 & ~v31, ((*(v17 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0))
      {
LABEL_3:

        v4 = a3;
        v6 = v39;
        goto LABEL_4;
      }

      v33 = ~v31;
      while (*(*(v15 + 48) + v32) != v8)
      {
        v32 = (v32 + 1) & v33;
        if (((*(v17 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v4 = a3;
      goto LABEL_54;
    }

    v10 = v4[8];
    if (*(v10 + 16) && (v11 = *(v10 + 40), sub_24B5FFEFC(), MEMORY[0x24C243ED0](v8), result = sub_24B5FFF3C(), v12 = -1 << *(v10 + 32), v13 = result & ~v12, ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
    {
      v14 = ~v12;
      while (*(*(v10 + 48) + v13) != v8)
      {
        v13 = (v13 + 1) & v14;
        if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

LABEL_54:
      v34 = v40;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24B5947B8(0, *(v40 + 16) + 1, 1);
        v34 = v40;
      }

      v36 = *(v34 + 16);
      v35 = *(v34 + 24);
      if (v36 >= v35 >> 1)
      {
        result = sub_24B5947B8((v35 > 1), v36 + 1, 1);
        v34 = v40;
      }

      *(v34 + 16) = v36 + 1;
      v40 = v34;
      *(v34 + v36 + 32) = v8;
      v6 = v39;
      if (v7 == v3)
      {
        return v40;
      }
    }

    else
    {
LABEL_4:
      if (v7 == v3)
      {
        return v40;
      }
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_24B59DB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v58 = MEMORY[0x277D84F90];
    v42 = v3;
    sub_24B594978(0, v3, 0);
    v8 = v42;
    v9 = 0;
    v4 = v58;
    v45 = a3;
    v46 = a1 + 32;
    v41 = a3 + 56;
    v43 = a2 + 56;
    v44 = a2;
    do
    {
      v10 = (v46 + 56 * v9);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[3];
      v15 = v10[4];
      v14 = v10[5];
      v48 = v14;
      v49 = v10[2];
      v47 = v10[6];
      if (a3 && *(a3 + 16))
      {
        v16 = *(a3 + 40);
        sub_24B5FFEFC();

        sub_24B5FFB1C();
        v17 = sub_24B5FFF3C();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        if ((*(v41 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
        {
          v20 = ~v18;
          while (1)
          {
            v21 = (*(a3 + 48) + 16 * v19);
            v22 = *v21 == v13 && v21[1] == v15;
            if (v22 || (sub_24B5FFECC() & 1) != 0)
            {
              break;
            }

            v19 = (v19 + 1) & v20;
            if (((*(v41 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          if (!v44)
          {
            goto LABEL_21;
          }

          v50[0] = v13;
          v50[1] = v15;
          memset(&v50[2], 0, 24);
          v51 = 0;
          if (!*(v44 + 16))
          {
            goto LABEL_21;
          }

          v26 = *(v44 + 40);
          sub_24B5FFEFC();
          FilterItem.hash(into:)();
          v27 = sub_24B5FFF3C();
          v28 = -1 << *(v44 + 32);
          v29 = v27 & ~v28;
          if ((*(v43 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
          {
            v30 = ~v28;
            while (1)
            {
              v31 = *(v44 + 48) + 48 * v29;
              v32 = *(v31 + 8);
              v33 = *(v31 + 16);
              v34 = *(v31 + 24);
              v35 = *(v31 + 32);
              v52 = *v31;
              v53 = v32;
              v54 = v33;
              v55 = v34;
              v56 = v35;
              v57 = *(v31 + 40);
              sub_24B57BA1C(v52, v32, v33, v34, v35, v57);
              v36 = _s16FitnessFiltering10FilterItemO2eeoiySbAC_ACtFZ_0(&v52, v50);
              sub_24B57BA04(v52, v53, v54, v55, v56, v57);
              if (v36)
              {
                break;
              }

              v29 = (v29 + 1) & v30;
              if (((*(v43 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
              {
                goto LABEL_21;
              }
            }

            v23 = v12;
            v24 = v11;
            v25 = 2;
          }

          else
          {
LABEL_21:
            v23 = v12;
            v24 = v11;
            v25 = 1;
          }
        }

        else
        {
LABEL_13:
          v23 = v12;
          v24 = v11;
          v25 = 0;
        }

        v8 = v42;
      }

      else
      {
        v23 = v10[1];

        v24 = v11;

        v25 = 0;
      }

      v58 = v4;
      v38 = *(v4 + 16);
      v37 = *(v4 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_24B594978((v37 > 1), v38 + 1, 1);
        v8 = v42;
        v4 = v58;
      }

      ++v9;
      *(v4 + 16) = v38 + 1;
      v39 = v4 + (v38 << 6);
      *(v39 + 32) = v24;
      *(v39 + 40) = v23;
      *(v39 + 48) = v49;
      *(v39 + 56) = v13;
      *(v39 + 64) = v15;
      *(v39 + 72) = v48;
      *(v39 + 80) = v47;
      *(v39 + 88) = v25;
      a3 = v45;
    }

    while (v9 != v8);
  }

  return v4;
}

uint64_t sub_24B59DEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v52 = MEMORY[0x277D84F90];
    v40 = v3;
    sub_24B594958(0, v3, 0);
    v8 = v40;
    v9 = 0;
    v4 = v52;
    v42 = a2;
    v43 = a1 + 32;
    v10 = a3 + 56;
    v41 = a2 + 56;
    do
    {
      v11 = (v43 + 40 * v9);
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      v15 = v11[3];
      v16 = v11[4];
      if (a3 && *(a3 + 16))
      {
        v17 = *(a3 + 40);
        sub_24B5FFEFC();

        sub_24B5FFB1C();
        v18 = sub_24B5FFF3C();
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        if ((*(v10 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          v21 = ~v19;
          while (1)
          {
            v22 = (*(a3 + 48) + 16 * v20);
            v23 = *v22 == v12 && v22[1] == v13;
            if (v23 || (sub_24B5FFECC() & 1) != 0)
            {
              break;
            }

            v20 = (v20 + 1) & v21;
            if (((*(v10 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          if (!v42)
          {
            goto LABEL_21;
          }

          v44[0] = v12;
          v44[1] = v13;
          v44[2] = v14;
          v44[3] = v15;
          v44[4] = v16;
          v45 = 1;
          if (!*(v42 + 16))
          {
            goto LABEL_21;
          }

          v25 = *(v42 + 40);
          sub_24B5FFEFC();
          FilterItem.hash(into:)();
          v26 = sub_24B5FFF3C();
          v27 = -1 << *(v42 + 32);
          v28 = v26 & ~v27;
          if ((*(v41 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
          {
            v29 = ~v27;
            while (1)
            {
              v30 = *(v42 + 48) + 48 * v28;
              v31 = *(v30 + 8);
              v32 = *(v30 + 16);
              v33 = *(v30 + 24);
              v34 = *(v30 + 32);
              v46 = *v30;
              v47 = v31;
              v48 = v32;
              v49 = v33;
              v50 = v34;
              v51 = *(v30 + 40);
              sub_24B57BA1C(v46, v31, v32, v33, v34, v51);
              v35 = _s16FitnessFiltering10FilterItemO2eeoiySbAC_ACtFZ_0(&v46, v44);
              sub_24B57BA04(v46, v47, v48, v49, v50, v51);
              if (v35)
              {
                break;
              }

              v28 = (v28 + 1) & v29;
              if (((*(v41 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
              {
                goto LABEL_21;
              }
            }

            v24 = 2;
          }

          else
          {
LABEL_21:
            v24 = 1;
          }
        }

        else
        {
LABEL_13:
          v24 = 0;
        }

        v8 = v40;
      }

      else
      {

        v24 = 0;
      }

      v52 = v4;
      v37 = *(v4 + 16);
      v36 = *(v4 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_24B594958((v36 > 1), v37 + 1, 1);
        v8 = v40;
        v4 = v52;
      }

      ++v9;
      *(v4 + 16) = v37 + 1;
      v38 = v4 + 48 * v37;
      *(v38 + 32) = v12;
      *(v38 + 40) = v13;
      *(v38 + 48) = v14;
      *(v38 + 56) = v15;
      *(v38 + 64) = v16;
      *(v38 + 72) = v24;
    }

    while (v9 != v8);
  }

  return v4;
}

uint64_t sub_24B59E1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v57 = MEMORY[0x277D84F90];
    v42 = v3;
    sub_24B5948D8(0, v3, 0);
    v8 = v42;
    v9 = 0;
    v10 = a1 + 32;
    v4 = v57;
    v11 = a3 + 56;
    v43 = a2 + 56;
    v44 = a2;
    do
    {
      v12 = (v10 + 72 * v9);
      v13 = v12[3];
      v54 = v12[2];
      v55 = v13;
      v56 = *(v12 + 8);
      v14 = v12[1];
      v52 = *v12;
      v53 = v14;
      if (a3 && *(a3 + 16))
      {
        v15 = v54;
        v16 = *(a3 + 40);
        sub_24B5FFEFC();
        sub_24B5A0A70(&v52, v45);
        sub_24B5FFB1C();
        v17 = sub_24B5FFF3C();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        if ((*(v11 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
        {
          v20 = ~v18;
          while (1)
          {
            v21 = (*(a3 + 48) + 16 * v19);
            v22 = *v21 == v15 && v21[1] == *(&v15 + 1);
            if (v22 || (sub_24B5FFECC() & 1) != 0)
            {
              break;
            }

            v19 = (v19 + 1) & v20;
            if (((*(v11 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          if (!v44)
          {
            goto LABEL_21;
          }

          *v45 = v15;
          memset(&v45[2], 0, 24);
          v46 = 3;
          if (!*(v44 + 16))
          {
            goto LABEL_21;
          }

          v24 = *(v44 + 40);
          sub_24B5FFEFC();
          FilterItem.hash(into:)();
          v25 = sub_24B5FFF3C();
          v26 = -1 << *(v44 + 32);
          v27 = v25 & ~v26;
          if ((*(v43 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
          {
            v28 = ~v26;
            while (1)
            {
              v29 = *(v44 + 48) + 48 * v27;
              v30 = *(v29 + 8);
              v31 = *(v29 + 16);
              v32 = *(v29 + 24);
              v33 = *(v29 + 32);
              *&v47 = *v29;
              *(&v47 + 1) = v30;
              *&v48 = v31;
              *(&v48 + 1) = v32;
              *&v49 = v33;
              BYTE8(v49) = *(v29 + 40);
              sub_24B57BA1C(v47, v30, v31, v32, v33, BYTE8(v49));
              v34 = _s16FitnessFiltering10FilterItemO2eeoiySbAC_ACtFZ_0(&v47, v45);
              sub_24B57BA04(v47, *(&v47 + 1), v48, *(&v48 + 1), v49, BYTE8(v49));
              if (v34)
              {
                break;
              }

              v27 = (v27 + 1) & v28;
              if (((*(v43 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
              {
                goto LABEL_21;
              }
            }

            v23 = 2;
          }

          else
          {
LABEL_21:
            v23 = 1;
          }
        }

        else
        {
LABEL_13:
          v23 = 0;
        }

        v8 = v42;
      }

      else
      {
        sub_24B5A0A70(&v52, &v47);
        v23 = 0;
      }

      v51 = v56;
      v49 = v54;
      v50 = v55;
      v47 = v52;
      v48 = v53;
      v57 = v4;
      v36 = *(v4 + 16);
      v35 = *(v4 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_24B5948D8((v35 > 1), v36 + 1, 1);
        v8 = v42;
        v4 = v57;
      }

      ++v9;
      *(v4 + 16) = v36 + 1;
      v37 = v4 + 80 * v36;
      *(v37 + 32) = v47;
      v38 = v48;
      v39 = v49;
      v40 = v50;
      *(v37 + 96) = v51;
      *(v37 + 64) = v39;
      *(v37 + 80) = v40;
      *(v37 + 48) = v38;
      *(v37 + 104) = v23;
    }

    while (v9 != v8);
  }

  return v4;
}

uint64_t sub_24B59E4C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(BOOL, unint64_t, uint64_t), char a5)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v59 = MEMORY[0x277D84F90];
    v43 = v5;
    a4(0, v5, 0);
    v10 = v43;
    v11 = 0;
    v6 = v59;
    v45 = a1 + 32;
    v46 = a2;
    v12 = a3 + 56;
    v41 = a2 + 56;
    do
    {
      v13 = (v45 + 56 * v11);
      v14 = v13[3];
      v16 = v13[4];
      v15 = v13[5];
      v47 = v15;
      v48 = v13[2];
      v17 = v13[6];
      v49 = v13[1];
      v50 = *v13;
      if (a3 && *(a3 + 16))
      {
        v18 = *(a3 + 40);
        sub_24B5FFEFC();

        sub_24B5FFB1C();
        v19 = sub_24B5FFF3C();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        if ((*(v12 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
        {
          v22 = ~v20;
          while (1)
          {
            v23 = (*(a3 + 48) + 16 * v21);
            v24 = *v23 == v14 && v23[1] == v16;
            if (v24 || (sub_24B5FFECC() & 1) != 0)
            {
              break;
            }

            v21 = (v21 + 1) & v22;
            if (((*(v12 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          if (!a2)
          {
            goto LABEL_21;
          }

          v51[0] = v14;
          v51[1] = v16;
          memset(&v51[2], 0, 24);
          v52 = a5;
          if (!*(a2 + 16))
          {
            goto LABEL_21;
          }

          v26 = *(a2 + 40);
          sub_24B5FFEFC();
          FilterItem.hash(into:)();
          v27 = sub_24B5FFF3C();
          v28 = -1 << *(a2 + 32);
          v29 = v27 & ~v28;
          if ((*(v41 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
          {
            v44 = ~v28;
            while (1)
            {
              v30 = *(a2 + 48) + 48 * v29;
              v31 = *(v30 + 8);
              v32 = *(v30 + 16);
              v33 = *(v30 + 24);
              v34 = *(v30 + 32);
              v53 = *v30;
              v54 = v31;
              v55 = v32;
              v56 = v33;
              v57 = v34;
              v58 = *(v30 + 40);
              sub_24B57BA1C(v53, v31, v32, v33, v34, v58);
              v35 = _s16FitnessFiltering10FilterItemO2eeoiySbAC_ACtFZ_0(&v53, v51);
              sub_24B57BA04(v53, v54, v55, v56, v57, v58);
              if (v35)
              {
                break;
              }

              v29 = (v29 + 1) & v44;
              if (((*(v41 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
              {
                goto LABEL_21;
              }
            }

            v25 = 2;
          }

          else
          {
LABEL_21:
            v25 = 1;
          }
        }

        else
        {
LABEL_13:
          v25 = 0;
        }

        v10 = v43;
      }

      else
      {

        v25 = 0;
      }

      v59 = v6;
      v37 = *(v6 + 16);
      v36 = *(v6 + 24);
      if (v37 >= v36 >> 1)
      {
        a4(v36 > 1, v37 + 1, 1);
        v10 = v43;
        v6 = v59;
      }

      ++v11;
      *(v6 + 16) = v37 + 1;
      v38 = v6 + (v37 << 6);
      *(v38 + 32) = v50;
      *(v38 + 40) = v49;
      *(v38 + 48) = v48;
      *(v38 + 56) = v14;
      *(v38 + 64) = v16;
      *(v38 + 72) = v47;
      *(v38 + 80) = v17;
      *(v38 + 88) = v25;
      a2 = v46;
      v12 = a3 + 56;
    }

    while (v11 != v10);
  }

  return v6;
}

uint64_t sub_24B59E804(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v4 = a1;
  v59 = MEMORY[0x277D84F90];
  sub_24B5949D8(0, v2, 0);
  v3 = v59;
  v5 = -1 << *(v4 + 32);
  v54 = v4 + 56;
  result = sub_24B5FFC7C();
  if ((result & 0x8000000000000000) == 0)
  {
    v7 = result;
    if (result < 1 << *(v4 + 32))
    {
      v8 = *(v4 + 36);
      v47 = v4 + 64;
      v9 = 1;
      v51 = v2;
      v52 = v4;
      while (1)
      {
        v53 = v8;
        v10 = v7 >> 6;
        if ((*(v54 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          goto LABEL_34;
        }

        v11 = *(v4 + 48) + 72 * v7;
        v12 = *(v11 + 64);
        v13 = *(v11 + 16);
        v14 = *(v11 + 48);
        *v57 = *(v11 + 32);
        *&v57[16] = v14;
        *v56 = *v11;
        *&v56[16] = v13;
        v58 = v12;
        v15 = v14;
        if (v14)
        {
          v16 = v3;
          v17 = *(a2 + 32);
          if (*(v17 + 16))
          {
            v49 = *&v57[8];
            sub_24B5A15F8(v56, v55);

            v18 = sub_24B5EA2D0(v49, v15);
            if (v19)
            {
              v20 = (*(v17 + 56) + 16 * v18);
              v21 = *v20;
              v22 = v20[1];
              v23 = *&v56[24];
              v24 = *v57;

              result = sub_24B5A1654(v56);
              v25 = v22;
              v26 = v23;
              v27 = v21;
              v28 = 0uLL;
              v29 = MEMORY[0x277D84FA0];
              v3 = v16;
              v30 = v49;
              goto LABEL_15;
            }
          }

          else
          {
            result = sub_24B5A15F8(v56, v55);
          }

          v3 = v16;
        }

        else
        {
          result = sub_24B5A15F8(v56, v55);
        }

        v29 = *v56;
        v28 = *&v56[8];
        v26 = *&v56[24];
        v24 = *v57;
        v30 = *&v57[8];
        v27 = *&v57[24];
        v25 = v58;
LABEL_15:
        v59 = v3;
        v32 = *(v3 + 16);
        v31 = *(v3 + 24);
        if (v32 >= v31 >> 1)
        {
          v44 = v25;
          v45 = v26;
          v50 = v30;
          v46 = v27;
          v43 = v28;
          result = sub_24B5949D8((v31 > 1), v32 + 1, 1);
          v28 = v43;
          v25 = v44;
          v26 = v45;
          v27 = v46;
          v30 = v50;
          v3 = v59;
        }

        *(v3 + 16) = v32 + 1;
        v33 = v3 + 72 * v32;
        *(v33 + 32) = v29;
        *(v33 + 40) = v28;
        *(v33 + 56) = v26;
        *(v33 + 64) = v24;
        *(v33 + 72) = v30;
        *(v33 + 88) = v27;
        *(v33 + 96) = v25;
        v4 = v52;
        v34 = 1 << *(v52 + 32);
        if (v7 >= v34)
        {
          goto LABEL_35;
        }

        v35 = *(v54 + 8 * v10);
        if ((v35 & (1 << v7)) == 0)
        {
          goto LABEL_36;
        }

        if (v53 != *(v52 + 36))
        {
          goto LABEL_37;
        }

        v36 = v35 & (-2 << (v7 & 0x3F));
        if (v36)
        {
          v7 = __clz(__rbit64(v36)) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v37 = v3;
          v38 = v10 << 6;
          v39 = v10 + 1;
          v40 = (v47 + 8 * v10);
          while (v39 < (v34 + 63) >> 6)
          {
            v42 = *v40++;
            v41 = v42;
            v38 += 64;
            ++v39;
            if (v42)
            {
              result = sub_24B5A1948(v7, v53, 0);
              v7 = __clz(__rbit64(v41)) + v38;
              goto LABEL_27;
            }
          }

          result = sub_24B5A1948(v7, v53, 0);
          v7 = v34;
LABEL_27:
          v3 = v37;
        }

        if (v9 == v51)
        {
          return v3;
        }

        if ((v7 & 0x8000000000000000) == 0)
        {
          v8 = *(v52 + 36);
          ++v9;
          if (v7 < 1 << *(v52 + 32))
          {
            continue;
          }
        }

        break;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_24B59EB70(char *__src, char *a2, char *a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = a2 - __src;
  v10 = (a2 - __src) / 72;
  v11 = a3 - a2;
  v12 = (a3 - a2) / 72;
  if (v10 >= v12)
  {
    if (a4 != a2 || &a2[72 * v12] <= a4)
    {
      v35 = a2;
      memmove(a4, a2, 72 * v12);
      a2 = v35;
    }

    v36 = a2;
    v14 = &v6[72 * v12];
    if (v11 >= 72 && a2 > v8)
    {
LABEL_27:
      v67 = v36;
      v37 = v36 - 72;
      v7 -= 72;
      v38 = v14;
      do
      {
        v14 = v38;
        v57 = *(v38 - 72);
        v39 = *(v38 - 56);
        v40 = *(v38 - 40);
        v41 = *(v38 - 24);
        v61 = *(v38 - 8);
        v59 = v40;
        v60 = v41;
        v58 = v39;
        v42 = *(v37 + 3);
        v64 = *(v37 + 2);
        v65 = v42;
        v66 = *(v37 + 8);
        v43 = *(v37 + 1);
        v62 = *v37;
        v63 = v43;
        v44 = v41;
        if (v41)
        {
          v45 = v65;
          if (v65)
          {
            if (*(a5 + 16))
            {
              v46 = *(&v59 + 1);
              v55 = *(&v64 + 1);
              sub_24B5A15F8(&v57, v56);
              sub_24B5A15F8(&v62, v56);
              v47 = sub_24B5EA2D0(v46, v44);
              if (v48 & 1) != 0 && *(a5 + 16) && (v49 = *(*(a5 + 56) + 8 * v47), v50 = sub_24B5EA2D0(v55, v45), (v51))
              {
                v52 = *(*(a5 + 56) + 8 * v50);
                sub_24B5A1654(&v62);
                sub_24B5A1654(&v57);
                if (v49 < v52)
                {
                  if ((v7 + 72) < v67 || v7 >= v67 || v7 + 72 != v67)
                  {
                    memmove(v7, v37, 0x48uLL);
                  }

                  if (v14 <= v6 || (v36 = v37, v37 <= v8))
                  {
                    v36 = v37;
                    goto LABEL_52;
                  }

                  goto LABEL_27;
                }
              }

              else
              {
                sub_24B5A1654(&v62);
                sub_24B5A1654(&v57);
              }
            }
          }
        }

        v38 = v14 - 72;
        if ((v7 + 72) < v14 || v7 >= v14 || v7 + 72 != v14)
        {
          memmove(v7, (v14 - 72), 0x48uLL);
        }

        v7 -= 72;
      }

      while (v38 > v6);
      v14 -= 72;
      v36 = v67;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[72 * v10] <= a4)
    {
      memmove(a4, __src, 72 * v10);
    }

    v14 = &v6[72 * v10];
    if (v9 >= 72)
    {
      v15 = v13;
      do
      {
        if (v15 >= v7)
        {
          break;
        }

        v57 = *v15;
        v18 = *(v15 + 16);
        v19 = *(v15 + 32);
        v20 = *(v15 + 48);
        v61 = *(v15 + 64);
        v59 = v19;
        v60 = v20;
        v58 = v18;
        v22 = *(v6 + 2);
        v21 = *(v6 + 3);
        v23 = *(v6 + 1);
        v66 = *(v6 + 8);
        v64 = v22;
        v65 = v21;
        v63 = v23;
        v62 = *v6;
        v24 = v60;
        if (v60)
        {
          v25 = v65;
          if (v65)
          {
            if (*(a5 + 16))
            {
              v67 = v15;
              v26 = *(&v59 + 1);
              v27 = *(&v64 + 1);
              sub_24B5A15F8(&v57, v56);
              sub_24B5A15F8(&v62, v56);
              v28 = sub_24B5EA2D0(v26, v24);
              if (v29 & 1) != 0 && *(a5 + 16) && (v30 = *(*(a5 + 56) + 8 * v28), v31 = sub_24B5EA2D0(v27, v25), (v32))
              {
                v33 = *(*(a5 + 56) + 8 * v31);
                sub_24B5A1654(&v62);
                sub_24B5A1654(&v57);
                v34 = v30 < v33;
                v15 = v67;
                if (v34)
                {
                  v16 = v67;
                  v15 = v67 + 72;
                  if (v8 == v67)
                  {
                    goto LABEL_10;
                  }

LABEL_9:
                  memmove(v8, v16, 0x48uLL);
                  goto LABEL_10;
                }
              }

              else
              {
                sub_24B5A1654(&v62);
                sub_24B5A1654(&v57);
                v15 = v67;
              }
            }
          }
        }

        v16 = v6;
        v17 = v8 == v6;
        v6 += 72;
        if (!v17)
        {
          goto LABEL_9;
        }

LABEL_10:
        v8 += 72;
      }

      while (v6 < v14);
    }

    v36 = v8;
  }

LABEL_52:
  v53 = (v14 - v6) / 72;
  if (v36 != v6 || v36 >= &v6[72 * v53])
  {
    memmove(v36, v6, 72 * v53);
  }

  return 1;
}

uint64_t sub_24B59EFAC(char *a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_24B59B888(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v6 = &v24[16 * v9];
      v12 = *v6;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 72 * *v6);
      v15 = (v10 + 72 * *v13);
      v16 = (v10 + 72 * v14);

      sub_24B59EB70(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v12)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v6 = v12;
      *(v6 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_24B59F158(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  v185 = MEMORY[0x277D84F90];
  if (v6 >= 1)
  {
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v186 = a5;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      v155 = v7;
      if (v7 + 1 >= v6)
      {
        goto LABEL_47;
      }

      v11 = *a3;
      v12 = *a3 + 72 * (v7 + 1);
      v175 = *v12;
      v13 = *(v12 + 16);
      v14 = *(v12 + 32);
      v15 = *(v12 + 48);
      v179 = *(v12 + 64);
      v177 = v14;
      v178 = v15;
      v176 = v13;
      v16 = v11 + 72 * v9;
      v18 = *(v16 + 32);
      v17 = *(v16 + 48);
      v19 = *(v16 + 16);
      v184 = *(v16 + 64);
      v182 = v18;
      v183 = v17;
      v181 = v19;
      v180 = *v16;
      v20 = v178;
      if (v178 && (v21 = v183) != 0 && *(a5 + 16))
      {
        v22 = *(&v177 + 1);
        v23 = *(&v182 + 1);
        sub_24B5A15F8(&v175, &v170);
        sub_24B5A15F8(&v180, &v170);
        v24 = sub_24B5EA2D0(v22, v20);
        if (v25 & 1) != 0 && *(a5 + 16) && (v26 = *(*(a5 + 56) + 8 * v24), v27 = sub_24B5EA2D0(v23, v21), (v28))
        {
          v29 = *(*(a5 + 56) + 8 * v27);
          sub_24B5A1654(&v180);
          sub_24B5A1654(&v175);
          v30 = v26 < v29;
        }

        else
        {
          sub_24B5A1654(&v180);
          sub_24B5A1654(&v175);
          v30 = 0;
        }
      }

      else
      {
        v30 = 0;
      }

      v31 = v155 + 2;
      if (v155 + 2 >= v6)
      {
LABEL_34:
        v10 = v31;
        if (!v30)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v32 = v11 + 72 * v155 + 144;
        do
        {
          v166[0] = *v32;
          v33 = *(v32 + 16);
          v34 = *(v32 + 32);
          v35 = *(v32 + 48);
          v169 = *(v32 + 64);
          v167 = v34;
          v168 = v35;
          v166[1] = v33;
          v36 = *(v32 - 40);
          v37 = *(v32 - 24);
          v38 = *(v32 - 56);
          v174 = *(v32 - 8);
          v172 = v36;
          v173 = v37;
          v171 = v38;
          v170 = *(v32 - 72);
          v39 = v168;
          if (v168)
          {
            v40 = v173;
            if (v173 && *(a5 + 16))
            {
              v41 = *(&v167 + 1);
              v161 = *(&v172 + 1);
              sub_24B5A15F8(v166, v165);
              sub_24B5A15F8(&v170, v165);
              v42 = sub_24B5EA2D0(v41, v39);
              if (v43 & 1) != 0 && *(a5 + 16) && (v44 = *(*(a5 + 56) + 8 * v42), v45 = sub_24B5EA2D0(v161, v40), (v46))
              {
                v47 = v8;
                v48 = *(*(a5 + 56) + 8 * v45);
                sub_24B5A1654(&v170);
                sub_24B5A1654(v166);
                v49 = v44 < v48;
                v8 = v47;
                v50 = !v49;
                if (((v30 ^ v50) & 1) == 0)
                {
                  goto LABEL_34;
                }
              }

              else
              {
                sub_24B5A1654(&v170);
                sub_24B5A1654(v166);
                if (v30)
                {
LABEL_33:
                  v10 = v31;
                  goto LABEL_37;
                }
              }
            }

            else if (v30)
            {
              goto LABEL_33;
            }
          }

          else if (v30)
          {
            goto LABEL_33;
          }

          v32 += 72;
          ++v31;
        }

        while (v6 != v31);
        v10 = v6;
        if (!v30)
        {
          goto LABEL_46;
        }
      }

LABEL_37:
      v9 = v155;
      if (v10 < v155)
      {
        goto LABEL_149;
      }

      if (v155 < v10)
      {
        v51 = v8;
        v52 = 72 * v10 - 72;
        v53 = 72 * v155;
        v54 = v10;
        v55 = v10;
        v56 = v155;
        do
        {
          if (v56 != --v55)
          {
            v58 = *a3;
            if (!*a3)
            {
              goto LABEL_154;
            }

            v57 = v58 + v52;
            v171 = *(v58 + v53 + 16);
            v172 = *(v58 + v53 + 32);
            v173 = *(v58 + v53 + 48);
            v174 = *(v58 + v53 + 64);
            v170 = *(v58 + v53);
            memmove((v58 + v53), (v58 + v52), 0x48uLL);
            *(v57 + 16) = v171;
            *(v57 + 32) = v172;
            *(v57 + 48) = v173;
            *(v57 + 64) = v174;
            *v57 = v170;
          }

          ++v56;
          v52 -= 72;
          v53 += 72;
        }

        while (v56 < v55);
        v8 = v51;
        v10 = v54;
LABEL_46:
        v9 = v155;
      }

LABEL_47:
      v59 = a3[1];
      if (v10 < v59)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_148;
        }

        if (v10 - v9 < a4)
        {
          v60 = v9 + a4;
          if (__OFADD__(v9, a4))
          {
            goto LABEL_150;
          }

          if (v60 >= v59)
          {
            v60 = a3[1];
          }

          if (v60 < v9)
          {
LABEL_151:
            __break(1u);
LABEL_152:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_153:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_154:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_155:
            swift_bridgeObjectRelease_n();
            __break(1u);
            goto LABEL_156;
          }

          if (v10 != v60)
          {
            v152 = v8;
            v162 = *a3;
            v61 = *a3 + 72 * v10 - 72;
            v62 = v9 - v10;
            v156 = v60;
            do
            {
              v158 = v10;
              v63 = v162 + 72 * v10;
              v175 = *v63;
              v64 = *(v63 + 16);
              v65 = *(v63 + 32);
              v66 = *(v63 + 48);
              v179 = *(v63 + 64);
              v177 = v65;
              v178 = v66;
              v176 = v64;
              v67 = *(v63 - 40);
              v68 = *(v63 - 24);
              v69 = *(v63 - 56);
              v184 = *(v63 - 8);
              v182 = v67;
              v183 = v68;
              v181 = v69;
              v180 = *(v63 - 72);
              v70 = v178;
              if (v178)
              {
                v71 = *(&v177 + 1);
                v72 = v62;
                v73 = v61;
                while (1)
                {
                  v74 = v183;
                  if (!v183 || !*(a5 + 16))
                  {
                    break;
                  }

                  v75 = *(&v182 + 1);
                  sub_24B5A15F8(&v175, &v170);
                  sub_24B5A15F8(&v180, &v170);
                  v76 = sub_24B5EA2D0(v71, v70);
                  a5 = v186;
                  if ((v77 & 1) == 0 || !*(v186 + 16) || (v78 = *(*(v186 + 56) + 8 * v76), v79 = sub_24B5EA2D0(v75, v74), a5 = v186, (v80 & 1) == 0))
                  {
                    sub_24B5A1654(&v180);
                    sub_24B5A1654(&v175);
                    break;
                  }

                  v81 = *(*(v186 + 56) + 8 * v79);
                  sub_24B5A1654(&v180);
                  sub_24B5A1654(&v175);
                  if (v78 >= v81)
                  {
                    break;
                  }

                  if (!v162)
                  {
                    goto LABEL_152;
                  }

                  v171 = *(v73 + 88);
                  v172 = *(v73 + 104);
                  v173 = *(v73 + 120);
                  v174 = *(v73 + 136);
                  v170 = *(v73 + 72);
                  v82 = *v73;
                  *(v73 + 88) = *(v73 + 16);
                  v83 = *(v73 + 48);
                  *(v73 + 104) = *(v73 + 32);
                  *(v73 + 120) = v83;
                  *(v73 + 136) = *(v73 + 64);
                  *(v73 + 72) = v82;
                  *v73 = v170;
                  v84 = v171;
                  v85 = v172;
                  v86 = v173;
                  *(v73 + 64) = v174;
                  *(v73 + 32) = v85;
                  *(v73 + 48) = v86;
                  *(v73 + 16) = v84;
                  if (!__CFADD__(v72++, 1))
                  {
                    v175 = *v73;
                    v88 = *(v73 + 16);
                    v89 = *(v73 + 32);
                    v90 = *(v73 + 48);
                    v179 = *(v73 + 64);
                    v177 = v89;
                    v178 = v90;
                    v176 = v88;
                    v91 = *(v73 - 40);
                    v92 = *(v73 - 24);
                    v93 = *(v73 - 56);
                    v184 = *(v73 - 8);
                    v182 = v91;
                    v183 = v92;
                    v181 = v93;
                    v94 = *(v73 - 72);
                    v73 -= 72;
                    v180 = v94;
                    v71 = *(&v177 + 1);
                    v70 = v178;
                    if (v178)
                    {
                      continue;
                    }
                  }

                  break;
                }
              }

              v10 = v158 + 1;
              v61 += 72;
              --v62;
            }

            while (v158 + 1 != v156);
            v10 = v156;
            v8 = v152;
            v9 = v155;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_147;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_24B595AD8(0, *(v8 + 2) + 1, 1, v8);
      }

      v96 = *(v8 + 2);
      v95 = *(v8 + 3);
      v97 = v96 + 1;
      if (v96 >= v95 >> 1)
      {
        v8 = sub_24B595AD8((v95 > 1), v96 + 1, 1, v8);
      }

      *(v8 + 2) = v97;
      v98 = v8 + 32;
      v99 = &v8[16 * v96 + 32];
      *v99 = v9;
      *(v99 + 1) = v10;
      v163 = *a1;
      if (!*a1)
      {
        goto LABEL_155;
      }

      v159 = v10;
      if (v96)
      {
        v157 = v8 + 32;
        while (1)
        {
          v100 = v97 - 1;
          if (v97 >= 4)
          {
            break;
          }

          if (v97 == 3)
          {
            v101 = *(v8 + 4);
            v102 = *(v8 + 5);
            v111 = __OFSUB__(v102, v101);
            v103 = v102 - v101;
            v104 = v111;
LABEL_92:
            if (v104)
            {
              goto LABEL_137;
            }

            v117 = &v8[16 * v97];
            v119 = *v117;
            v118 = *(v117 + 1);
            v120 = __OFSUB__(v118, v119);
            v121 = v118 - v119;
            v122 = v120;
            if (v120)
            {
              goto LABEL_139;
            }

            v123 = &v98[16 * v100];
            v125 = *v123;
            v124 = *(v123 + 1);
            v111 = __OFSUB__(v124, v125);
            v126 = v124 - v125;
            if (v111)
            {
              goto LABEL_142;
            }

            if (__OFADD__(v121, v126))
            {
              goto LABEL_144;
            }

            if (v121 + v126 >= v103)
            {
              if (v103 < v126)
              {
                v100 = v97 - 2;
              }

              goto LABEL_114;
            }

            goto LABEL_107;
          }

          if (v97 < 2)
          {
            goto LABEL_145;
          }

          v127 = &v8[16 * v97];
          v129 = *v127;
          v128 = *(v127 + 1);
          v111 = __OFSUB__(v128, v129);
          v121 = v128 - v129;
          v122 = v111;
LABEL_107:
          if (v122)
          {
            goto LABEL_141;
          }

          v130 = &v98[16 * v100];
          v132 = *v130;
          v131 = *(v130 + 1);
          v111 = __OFSUB__(v131, v132);
          v133 = v131 - v132;
          if (v111)
          {
            goto LABEL_143;
          }

          if (v133 < v121)
          {
            goto LABEL_3;
          }

LABEL_114:
          if (v100 - 1 >= v97)
          {
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
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
            goto LABEL_151;
          }

          v138 = *a3;
          if (!*a3)
          {
            goto LABEL_153;
          }

          v139 = v8;
          v140 = &v98[16 * v100 - 16];
          v141 = *v140;
          v142 = v100;
          v143 = &v98[16 * v100];
          v144 = *(v143 + 1);
          v145 = (v138 + 72 * *v140);
          v146 = (v138 + 72 * *v143);
          v147 = (v138 + 72 * v144);
          v148 = v186;

          sub_24B59EB70(v145, v146, v147, v163, v148);
          if (v164)
          {

            v185 = v139;
            goto LABEL_127;
          }

          if (v144 < v141)
          {
            goto LABEL_132;
          }

          v164 = 0;
          v149 = *(v139 + 2);
          if (v142 > v149)
          {
            goto LABEL_133;
          }

          *v140 = v141;
          *(v140 + 1) = v144;
          if (v142 >= v149)
          {
            goto LABEL_134;
          }

          v97 = v149 - 1;
          memmove(v143, v143 + 16, 16 * (v149 - 1 - v142));
          v8 = v139;
          *(v139 + 2) = v149 - 1;
          v98 = v157;
          if (v149 <= 2)
          {
            goto LABEL_3;
          }
        }

        v105 = &v98[16 * v97];
        v106 = *(v105 - 8);
        v107 = *(v105 - 7);
        v111 = __OFSUB__(v107, v106);
        v108 = v107 - v106;
        if (v111)
        {
          goto LABEL_135;
        }

        v110 = *(v105 - 6);
        v109 = *(v105 - 5);
        v111 = __OFSUB__(v109, v110);
        v103 = v109 - v110;
        v104 = v111;
        if (v111)
        {
          goto LABEL_136;
        }

        v112 = &v8[16 * v97];
        v114 = *v112;
        v113 = *(v112 + 1);
        v111 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v111)
        {
          goto LABEL_138;
        }

        v111 = __OFADD__(v103, v115);
        v116 = v103 + v115;
        if (v111)
        {
          goto LABEL_140;
        }

        if (v116 >= v108)
        {
          v134 = &v98[16 * v100];
          v136 = *v134;
          v135 = *(v134 + 1);
          v111 = __OFSUB__(v135, v136);
          v137 = v135 - v136;
          if (v111)
          {
            goto LABEL_146;
          }

          if (v103 < v137)
          {
            v100 = v97 - 2;
          }

          goto LABEL_114;
        }

        goto LABEL_92;
      }

LABEL_3:
      v7 = v159;
      v6 = a3[1];
      a5 = v186;
      if (v159 >= v6)
      {
        v185 = v8;
        goto LABEL_124;
      }
    }
  }

  swift_bridgeObjectRetain_n();
LABEL_124:
  v150 = *a1;
  if (*a1)
  {

    sub_24B59EFAC(&v185, v150, a3, a5);
    if (v164)
    {

LABEL_127:
      swift_bridgeObjectRelease_n();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
LABEL_156:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B59FB5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v57 = *a4;
    v41 = v57 + 72 * a3 - 72;
    v7 = result - a3;
    do
    {
      v8 = (v57 + 72 * v6);
      v47 = *v8;
      v9 = v8[1];
      v10 = v8[2];
      v11 = v8[3];
      v51 = *(v8 + 8);
      v49 = v10;
      v50 = v11;
      v48 = v9;
      v12 = *(v8 - 40);
      v13 = *(v8 - 24);
      v14 = *(v8 - 56);
      v56 = *(v8 - 1);
      v54 = v12;
      v55 = v13;
      v53 = v14;
      v52 = *(v8 - 72);
      v15 = v50;
      if (v50)
      {
        v16 = *(&v49 + 1);
        v17 = v7;
        v18 = v41;
        while (1)
        {
          v19 = v55;
          if (!v55 || !*(a5 + 16))
          {
            break;
          }

          v20 = *(&v54 + 1);
          sub_24B5A15F8(&v47, &v42);
          sub_24B5A15F8(&v52, &v42);
          v21 = sub_24B5EA2D0(v16, v15);
          if ((v22 & 1) == 0 || !*(a5 + 16) || (v23 = *(*(a5 + 56) + 8 * v21), v24 = sub_24B5EA2D0(v20, v19), (v25 & 1) == 0))
          {
            sub_24B5A1654(&v52);
            result = sub_24B5A1654(&v47);
            break;
          }

          v26 = *(*(a5 + 56) + 8 * v24);
          sub_24B5A1654(&v52);
          result = sub_24B5A1654(&v47);
          if (v23 >= v26)
          {
            break;
          }

          if (!v57)
          {
            __break(1u);
            return result;
          }

          v43 = *(v18 + 88);
          v44 = *(v18 + 104);
          v45 = *(v18 + 120);
          v46 = *(v18 + 136);
          v42 = *(v18 + 72);
          v27 = *v18;
          *(v18 + 88) = *(v18 + 16);
          v28 = *(v18 + 48);
          *(v18 + 104) = *(v18 + 32);
          *(v18 + 120) = v28;
          *(v18 + 136) = *(v18 + 64);
          *(v18 + 72) = v27;
          *v18 = v42;
          v29 = v43;
          v30 = v44;
          v31 = v45;
          *(v18 + 64) = v46;
          *(v18 + 32) = v30;
          *(v18 + 48) = v31;
          *(v18 + 16) = v29;
          if (!__CFADD__(v17++, 1))
          {
            v47 = *v18;
            v33 = *(v18 + 16);
            v34 = *(v18 + 32);
            v35 = *(v18 + 48);
            v51 = *(v18 + 64);
            v49 = v34;
            v50 = v35;
            v48 = v33;
            v36 = *(v18 - 40);
            v37 = *(v18 - 24);
            v38 = *(v18 - 56);
            v56 = *(v18 - 8);
            v54 = v36;
            v55 = v37;
            v53 = v38;
            v39 = *(v18 - 72);
            v18 -= 72;
            v52 = v39;
            v16 = *(&v49 + 1);
            v15 = v50;
            if (v50)
            {
              continue;
            }
          }

          break;
        }
      }

      ++v6;
      v41 += 72;
      --v7;
    }

    while (v6 != a2);
  }

  return result;
}

uint64_t sub_24B59FDB8(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_24B5FFEAC();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = sub_24B5FFB9C();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_24B59F158(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_24B59FB5C(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_24B59FF00(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_24B59C784(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_24B59FDB8(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_24B59FFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v54 = MEMORY[0x277D84F90];
    sub_24B594838(0, v3, 0);
    v8 = 0;
    v4 = v54;
    v9 = a1 + 32;
    v10 = a3 + 56;
    v42 = a2 + 56;
    v43 = a2;
    do
    {
      v11 = (v9 + (v8 << 6));
      v12 = v11[1];
      v50 = *v11;
      v51 = v12;
      v13 = v11[3];
      v52 = v11[2];
      v53 = v13;
      if (a3 && *(a3 + 16))
      {
        v14 = *(&v51 + 1);
        v15 = v52;
        v16 = *(a3 + 40);
        sub_24B5FFEFC();
        sub_24B5A1888(&v50, v44);
        sub_24B5FFB1C();
        v17 = sub_24B5FFF3C();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        if ((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
        {
          v20 = ~v18;
          while (1)
          {
            v21 = (*(a3 + 48) + 16 * v19);
            v22 = *v21 == v14 && v21[1] == v15;
            if (v22 || (sub_24B5FFECC() & 1) != 0)
            {
              break;
            }

            v19 = (v19 + 1) & v20;
            if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          if (!v43)
          {
            goto LABEL_21;
          }

          v44[0] = v14;
          v44[1] = v15;
          memset(&v44[2], 0, 24);
          v45 = 6;
          if (!*(v43 + 16))
          {
            goto LABEL_21;
          }

          v24 = *(v43 + 40);
          sub_24B5FFEFC();
          FilterItem.hash(into:)();
          v25 = sub_24B5FFF3C();
          v26 = -1 << *(v43 + 32);
          v27 = v25 & ~v26;
          if ((*(v42 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
          {
            v28 = ~v26;
            while (1)
            {
              v29 = *(v43 + 48) + 48 * v27;
              v30 = *(v29 + 8);
              v31 = *(v29 + 16);
              v32 = *(v29 + 24);
              v33 = *(v29 + 32);
              *&v46 = *v29;
              *(&v46 + 1) = v30;
              *&v47 = v31;
              *(&v47 + 1) = v32;
              *&v48 = v33;
              BYTE8(v48) = *(v29 + 40);
              sub_24B57BA1C(v46, v30, v31, v32, v33, BYTE8(v48));
              v34 = _s16FitnessFiltering10FilterItemO2eeoiySbAC_ACtFZ_0(&v46, v44);
              sub_24B57BA04(v46, *(&v46 + 1), v47, *(&v47 + 1), v48, BYTE8(v48));
              if (v34)
              {
                break;
              }

              v27 = (v27 + 1) & v28;
              if (((*(v42 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
              {
                goto LABEL_21;
              }
            }

            v23 = 2;
          }

          else
          {
LABEL_21:
            v23 = 1;
          }
        }

        else
        {
LABEL_13:
          v23 = 0;
        }
      }

      else
      {
        sub_24B5A1888(&v50, &v46);
        v23 = 0;
      }

      v48 = v52;
      v49 = v53;
      v46 = v50;
      v47 = v51;
      v54 = v4;
      v36 = *(v4 + 16);
      v35 = *(v4 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_24B594838((v35 > 1), v36 + 1, 1);
        v4 = v54;
      }

      ++v8;
      *(v4 + 16) = v36 + 1;
      v37 = v4 + 72 * v36;
      v38 = v46;
      v39 = v47;
      v40 = v49;
      *(v37 + 64) = v48;
      *(v37 + 80) = v40;
      *(v37 + 32) = v38;
      *(v37 + 48) = v39;
      *(v37 + 96) = v23;
    }

    while (v8 != v3);
  }

  return v4;
}

uint64_t sub_24B5A0298(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(BOOL, unint64_t, uint64_t), void (*a5)(__int128 *, __int128 *), char a6)
{
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v64 = MEMORY[0x277D84F90];
    a4(0, v6, 0);
    v11 = a5;
    v12 = 0;
    v7 = v64;
    v50 = a2;
    v51 = a1 + 32;
    v13 = a3 + 56;
    v49 = a2 + 56;
    do
    {
      v14 = (v51 + 72 * v12);
      v15 = v14[3];
      v61 = v14[2];
      v62 = v15;
      v63 = *(v14 + 8);
      v16 = v14[1];
      v59 = *v14;
      v60 = v16;
      if (a3 && *(a3 + 16))
      {
        v17 = *(&v60 + 1);
        v18 = v61;
        v19 = *(a3 + 40);
        sub_24B5FFEFC();
        v11(&v59, v52);
        sub_24B5FFB1C();
        v20 = sub_24B5FFF3C();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        if ((*(v13 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
        {
          v23 = ~v21;
          while (1)
          {
            v24 = (*(a3 + 48) + 16 * v22);
            v25 = *v24 == v17 && v24[1] == v18;
            if (v25 || (sub_24B5FFECC() & 1) != 0)
            {
              break;
            }

            v22 = (v22 + 1) & v23;
            if (((*(v13 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          if (!v50)
          {
            goto LABEL_21;
          }

          v52[0] = v17;
          v52[1] = v18;
          memset(&v52[2], 0, 24);
          v53 = a6;
          if (!*(v50 + 16))
          {
            goto LABEL_21;
          }

          v27 = *(v50 + 40);
          sub_24B5FFEFC();
          FilterItem.hash(into:)();
          v28 = sub_24B5FFF3C();
          v29 = v50;
          v30 = -1 << *(v50 + 32);
          v31 = v28 & ~v30;
          if ((*(v49 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
          {
            v32 = ~v30;
            while (1)
            {
              v33 = *(v29 + 48) + 48 * v31;
              v34 = *(v33 + 8);
              v35 = *(v33 + 16);
              v36 = *(v33 + 24);
              v37 = *(v33 + 32);
              *&v54 = *v33;
              *(&v54 + 1) = v34;
              *&v55 = v35;
              *(&v55 + 1) = v36;
              *&v56 = v37;
              BYTE8(v56) = *(v33 + 40);
              sub_24B57BA1C(v54, v34, v35, v36, v37, BYTE8(v56));
              v38 = _s16FitnessFiltering10FilterItemO2eeoiySbAC_ACtFZ_0(&v54, v52);
              sub_24B57BA04(v54, *(&v54 + 1), v55, *(&v55 + 1), v56, BYTE8(v56));
              if (v38)
              {
                break;
              }

              v31 = (v31 + 1) & v32;
              v29 = v50;
              if (((*(v49 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
              {
                goto LABEL_21;
              }
            }

            v26 = 2;
          }

          else
          {
LABEL_21:
            v26 = 1;
          }
        }

        else
        {
LABEL_13:
          v26 = 0;
        }

        v11 = a5;
      }

      else
      {
        v11(&v59, &v54);
        v26 = 0;
      }

      v58 = v63;
      v56 = v61;
      v57 = v62;
      v54 = v59;
      v55 = v60;
      v64 = v7;
      v40 = *(v7 + 16);
      v39 = *(v7 + 24);
      if (v40 >= v39 >> 1)
      {
        a4(v39 > 1, v40 + 1, 1);
        v11 = a5;
        v7 = v64;
      }

      ++v12;
      *(v7 + 16) = v40 + 1;
      v41 = v7 + 80 * v40;
      *(v41 + 32) = v54;
      v42 = v55;
      v43 = v56;
      v44 = v57;
      *(v41 + 96) = v58;
      *(v41 + 64) = v43;
      *(v41 + 80) = v44;
      *(v41 + 48) = v42;
      *(v41 + 104) = v26;
    }

    while (v12 != v6);
  }

  return v7;
}

uint64_t sub_24B5A05D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24B5A1954();
  result = MEMORY[0x24C243BF0](v2, &type metadata for FilterItem, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[1];
      v10 = *v5;
      v11[0] = v6;
      *(v11 + 9) = *(v5 + 25);
      sub_24B58FF20(&v10, v7);
      sub_24B5F0AA8(v7, &v10);
      sub_24B57BA04(v7[0], v7[1], v7[2], v7[3], v7[4], v8);
      v5 += 3;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_24B5A067C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B5A19AC;

  return sub_24B5922BC(a1, v4, v5, v6, v7);
}

uint64_t sub_24B5A0740(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B5A19AC;

  return sub_24B5922BC(a1, v4, v5, v6, v7);
}

uint64_t sub_24B5A0804(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B5A19AC;

  return sub_24B5922BC(a1, v4, v5, v6, v7);
}

uint64_t sub_24B5A08C8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B5A19AC;

  return sub_24B5925E4(a1, v1 + 16);
}

uint64_t sub_24B5A0960(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24B5A09AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B5A19AC;

  return sub_24B5922BC(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_3Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  if (v0[6])
  {

    v3 = v0[8];
  }

  v4 = v0[11];

  v5 = v0[13];

  v6 = v0[15];

  v7 = v0[17];

  v8 = v0[19];

  v9 = v0[21];

  v10 = v0[23];

  v11 = v0[24];

  return swift_deallocObject();
}

uint64_t sub_24B5A0C88(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B5A19AC;

  return sub_24B58FA9C(a1, v1 + 16);
}

uint64_t sub_24B5A0D20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B5A19AC;

  return sub_24B58D4B4(a1, v4, v1 + 24);
}

uint64_t objectdestroy_7Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_24B5A0E08(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B5A19AC;

  return sub_24B58D120(a1, v4, v5, v6, v7);
}

uint64_t sub_24B5A0ED4(uint64_t a1)
{
  v4 = *(v1 + 200);
  v5 = *(v1 + 208);
  v6 = *(v1 + 216);
  v7 = *(v1 + 224);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B5A19AC;

  return sub_24B58C8DC(a1, v1 + 16, v4, v5, v6, v7);
}

uint64_t sub_24B5A0F9C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_24B5A1070()
{
  result = qword_27F018B88;
  if (!qword_27F018B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018B88);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16FitnessFiltering6FilterVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
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
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_24B5A1160(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_24B5A11A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FilterFeature.TaskIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FilterFeature.TaskIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B5A1378()
{
  result = qword_27F018B98;
  if (!qword_27F018B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018B98);
  }

  return result;
}

uint64_t sub_24B5A13CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B5A1434(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B5A149C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B5A14FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B5A17AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24B5A1810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BD0, &unk_24B6022F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B5A18E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24B5A1948(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_24B5A1954()
{
  result = qword_27F018CE0;
  if (!qword_27F018CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018CE0);
  }

  return result;
}

__n128 SelectedFilterItem.init(filterItem:name:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  result = *a1;
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v7;
  *(a4 + 32) = v4;
  *(a4 + 40) = v5;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  return result;
}

uint64_t SelectedFilterItem.filterItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(v1 + 40);
  *(a1 + 40) = v7;
  return sub_24B57BA1C(v2, v3, v4, v5, v6, v7);
}

uint64_t SelectedFilterItem.name.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_24B5A1A30()
{
  if (*v0)
  {
    result = 1701667182;
  }

  else
  {
    result = 0x74497265746C6966;
  }

  *v0;
  return result;
}

uint64_t sub_24B5A1A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74497265746C6966 && a2 == 0xEA00000000006D65;
  if (v6 || (sub_24B5FFECC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B5FFECC();

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

uint64_t sub_24B5A1B58(uint64_t a1)
{
  v2 = sub_24B5A1DB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5A1B94(uint64_t a1)
{
  v2 = sub_24B5A1DB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SelectedFilterItem.encode(to:)(void *a1)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018D00, &qword_24B601180);
  v20 = *(v18 - 8);
  v3 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v5 = v17 - v4;
  v7 = *v1;
  v6 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 48);
  v17[0] = *(v1 + 56);
  v17[1] = v11;
  v12 = a1[3];
  v17[2] = a1[4];
  v13 = *(v1 + 40);
  v27 = v13;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24B57BA1C(v7, v6, v8, v9, v10, v13);
  sub_24B5A1DB0();
  v14 = v18;
  sub_24B5FFF5C();
  v21 = v7;
  v22 = v6;
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = v27;
  v28 = 0;
  sub_24B57C03C();
  v15 = v19;
  sub_24B5FFE8C();
  sub_24B57BA04(v21, v22, v23, v24, v25, v26);
  if (!v15)
  {
    LOBYTE(v21) = 1;
    sub_24B5FFE3C();
  }

  return (*(v20 + 8))(v5, v14);
}

unint64_t sub_24B5A1DB0()
{
  result = qword_27F018D08;
  if (!qword_27F018D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018D08);
  }

  return result;
}

uint64_t SelectedFilterItem.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018D10, &qword_24B601188);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5A1DB0();
  sub_24B5FFF4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v28) = 0;
  sub_24B57C4CC();
  sub_24B5FFDDC();
  v11 = v32;
  v12 = v33;
  v25 = v35;
  v26 = v36;
  v27 = v34;
  v40 = v37;
  v41 = 1;
  v13 = sub_24B5FFD8C();
  v14 = v9;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  v24 = v11;
  *&v28 = v11;
  *(&v28 + 1) = v12;
  v17 = v12;
  v18 = v26;
  v19 = v25;
  *&v29 = v27;
  *(&v29 + 1) = v25;
  *&v30 = v26;
  LOBYTE(v12) = v40;
  BYTE8(v30) = v40;
  *&v31 = v13;
  *(&v31 + 1) = v16;
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  v21 = v31;
  a2[2] = v30;
  a2[3] = v21;
  sub_24B5A208C(&v28, &v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32 = v24;
  v33 = v17;
  v34 = v27;
  v35 = v19;
  v36 = v18;
  v37 = v12;
  v38 = v13;
  v39 = v16;
  return sub_24B5A20C4(&v32);
}

uint64_t SelectedFilterItem.hash(into:)()
{
  v1 = *(v0 + 6);
  v2 = *(v0 + 7);
  v4 = *v0;
  v5 = v0[1];
  v6 = *(v0 + 4);
  v7 = *(v0 + 40);
  FilterItem.hash(into:)();

  return sub_24B5FFB1C();
}

uint64_t SelectedFilterItem.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  sub_24B5FFEFC();
  v7 = v0[1];
  v6 = *v0;
  FilterItem.hash(into:)();
  sub_24B5FFB1C();
  return sub_24B5FFF3C();
}

uint64_t sub_24B5A221C()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  sub_24B5FFEFC();
  v7 = v0[1];
  v6 = *v0;
  FilterItem.hash(into:)();
  sub_24B5FFB1C();
  return sub_24B5FFF3C();
}

uint64_t sub_24B5A22A0()
{
  v1 = *(v0 + 6);
  v2 = *(v0 + 7);
  v4 = *v0;
  v5 = v0[1];
  v6 = *(v0 + 4);
  v7 = *(v0 + 40);
  FilterItem.hash(into:)();

  return sub_24B5FFB1C();
}

uint64_t sub_24B5A2310()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  sub_24B5FFEFC();
  v7 = v0[1];
  v6 = *v0;
  FilterItem.hash(into:)();
  sub_24B5FFB1C();
  return sub_24B5FFF3C();
}

uint64_t _s16FitnessFiltering18SelectedFilterItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  v15 = *(a1 + 40);
  v16 = *(a2 + 40);
  v24 = *a1;
  v25 = v2;
  v26 = v3;
  v27 = v4;
  v28 = v5;
  v29 = v15;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v16;
  sub_24B57BA1C(v24, v2, v3, v4, v5, v15);
  sub_24B57BA1C(v8, v9, v10, v11, v12, v16);
  LOBYTE(v8) = _s16FitnessFiltering10FilterItemO2eeoiySbAC_ACtFZ_0(&v24, &v18);
  sub_24B57BA04(v18, v19, v20, v21, v22, v23);
  sub_24B57BA04(v24, v25, v26, v27, v28, v29);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if (v6 == v13 && v7 == v14)
  {
    return 1;
  }

  return sub_24B5FFECC();
}

unint64_t sub_24B5A24E8()
{
  result = qword_27F018D18;
  if (!qword_27F018D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018D18);
  }

  return result;
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

uint64_t sub_24B5A255C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B5A25A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SelectedFilterItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SelectedFilterItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B5A2758()
{
  result = qword_27F018D20;
  if (!qword_27F018D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018D20);
  }

  return result;
}

unint64_t sub_24B5A27B0()
{
  result = qword_27F018D28;
  if (!qword_27F018D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018D28);
  }

  return result;
}

unint64_t sub_24B5A2808()
{
  result = qword_27F018D30;
  if (!qword_27F018D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018D30);
  }

  return result;
}

unint64_t sub_24B5A285C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x796C707061;
    v7 = 0x7373696D736964;
    v8 = 0xD000000000000012;
    if (a1 != 3)
    {
      v8 = 0x704F646564616F6CLL;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000010;
    v2 = 0xD000000000000014;
    if (a1 != 9)
    {
      v2 = 0x6570704177656976;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6C69467465736572;
    v4 = 0xD000000000000014;
    if (a1 != 6)
    {
      v4 = 0xD000000000000012;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24B5A2A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B5FFECC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B5A2A8C(uint64_t a1)
{
  v2 = sub_24B5A4DF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5A2AC8(uint64_t a1)
{
  v2 = sub_24B5A4DF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5A2B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B5AAD9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B5A2B40(uint64_t a1)
{
  v2 = sub_24B5A490C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5A2B7C(uint64_t a1)
{
  v2 = sub_24B5A490C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5A2BC4(uint64_t a1)
{
  v2 = sub_24B5A4DA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5A2C00(uint64_t a1)
{
  v2 = sub_24B5A4DA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5A2C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000024B60A8F0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24B5FFECC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24B5A2CEC(uint64_t a1)
{
  v2 = sub_24B5A4D50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5A2D28(uint64_t a1)
{
  v2 = sub_24B5A4D50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5A2D64()
{
  if (*v0)
  {
    result = 0x65527265746C6966;
  }

  else
  {
    result = 0x7265746C6966;
  }

  *v0;
  return result;
}

uint64_t sub_24B5A2DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7265746C6966 && a2 == 0xE600000000000000;
  if (v6 || (sub_24B5FFECC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65527265746C6966 && a2 == 0xEC000000746C7573)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B5FFECC();

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

uint64_t sub_24B5A2E80(uint64_t a1)
{
  v2 = sub_24B5A4CA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5A2EBC(uint64_t a1)
{
  v2 = sub_24B5A4CA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5A2F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x704F7265746C6966 && a2 == 0xED0000736E6F6974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B5FFECC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B5A2FAC(uint64_t a1)
{
  v2 = sub_24B5A4C00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5A2FE8(uint64_t a1)
{
  v2 = sub_24B5A4C00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5A3030(uint64_t a1)
{
  v2 = sub_24B5A4BAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5A306C(uint64_t a1)
{
  v2 = sub_24B5A4BAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5A30A8(uint64_t a1)
{
  v2 = sub_24B5A4B58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5A30E4(uint64_t a1)
{
  v2 = sub_24B5A4B58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5A3134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B5AB128(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B5A3168(uint64_t a1)
{
  v2 = sub_24B5A4AB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5A31A4(uint64_t a1)
{
  v2 = sub_24B5A4AB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5A31E0(uint64_t a1)
{
  v2 = sub_24B5A4A5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5A321C(uint64_t a1)
{
  v2 = sub_24B5A4A5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5A3258()
{
  sub_24B5FFEFC();
  MEMORY[0x24C243ED0](0);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5A329C()
{
  sub_24B5FFEFC();
  MEMORY[0x24C243ED0](0);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5A32DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B5FFECC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B5A335C(uint64_t a1)
{
  v2 = sub_24B5A49B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5A3398(uint64_t a1)
{
  v2 = sub_24B5A49B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5A33D4(uint64_t a1)
{
  v2 = sub_24B5A4960();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5A3410(uint64_t a1)
{
  v2 = sub_24B5A4960();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FilterAction.encode(to:)(void *a1)
{
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018D38, &qword_24B6014A0);
  v125 = *(v126 - 8);
  v2 = *(v125 + 64);
  MEMORY[0x28223BE20](v126);
  v124 = &v106 - v3;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018D40, &qword_24B6014A8);
  v109 = *(v128 - 8);
  v4 = *(v109 + 64);
  MEMORY[0x28223BE20](v128);
  v127 = &v106 - v5;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018D48, &qword_24B6014B0);
  v108 = *(v123 - 8);
  v6 = *(v108 + 64);
  MEMORY[0x28223BE20](v123);
  v122 = &v106 - v7;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018D50, &qword_24B6014B8);
  v110 = *(v130 - 8);
  v8 = *(v110 + 64);
  MEMORY[0x28223BE20](v130);
  v129 = &v106 - v9;
  v133 = sub_24B5FEE4C();
  v131 = *(v133 - 8);
  v10 = *(v131 + 64);
  MEMORY[0x28223BE20](v133);
  v132 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018D58, &qword_24B6014C0);
  v120 = *(v121 - 8);
  v12 = *(v120 + 64);
  MEMORY[0x28223BE20](v121);
  v119 = &v106 - v13;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018D60, &qword_24B6014C8);
  v117 = *(v118 - 8);
  v14 = *(v117 + 64);
  MEMORY[0x28223BE20](v118);
  v116 = &v106 - v15;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018D68, &qword_24B6014D0);
  v106 = *(v115 - 8);
  v16 = *(v106 + 64);
  MEMORY[0x28223BE20](v115);
  v138 = &v106 - v17;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018D70, &qword_24B6014D8);
  v107 = *(v114 - 8);
  v18 = *(v107 + 64);
  MEMORY[0x28223BE20](v114);
  v137 = &v106 - v19;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018D78, &qword_24B6014E0);
  v135 = *(v136 - 8);
  v20 = *(v135 + 64);
  MEMORY[0x28223BE20](v136);
  v134 = &v106 - v21;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018D80, &qword_24B6014E8);
  v113 = *(v111 - 8);
  v22 = *(v113 + 64);
  MEMORY[0x28223BE20](v111);
  v24 = &v106 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018D88, &qword_24B6014F0);
  v112 = *(v25 - 8);
  v26 = *(v112 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v106 - v27;
  v29 = type metadata accessor for FilterAction();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018D90, &unk_24B6014F8);
  v139 = *(v154 - 8);
  v33 = *(v139 + 64);
  MEMORY[0x28223BE20](v154);
  v35 = &v106 - v34;
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5A490C();
  v142 = v35;
  sub_24B5FFF5C();
  sub_24B5AB228(v140, v32, type metadata accessor for FilterAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      v60 = v154;
      v61 = v142;
      if (EnumCaseMultiPayload == 8)
      {
        LOBYTE(v149) = 5;
        sub_24B5A4BAC();
        v83 = v116;
        sub_24B5FFE0C();
        (*(v117 + 8))(v83, v118);
        return (*(v139 + 8))(v61, v60);
      }

      if (EnumCaseMultiPayload == 9)
      {
        LOBYTE(v149) = 6;
        sub_24B5A4B58();
        v62 = v119;
        sub_24B5FFE0C();
        (*(v120 + 8))(v62, v121);
      }

      else
      {
        LOBYTE(v149) = 10;
        sub_24B5A4960();
        v101 = v124;
        sub_24B5FFE0C();
        (*(v125 + 8))(v101, v126);
      }
    }

    else
    {
      v38 = v154;
      v39 = v142;
      if (EnumCaseMultiPayload != 5)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v40 = *v32;
          LOBYTE(v149) = 8;
          sub_24B5A4A5C();
          v41 = v122;
          sub_24B5FFE0C();
          LOBYTE(v149) = v40;
          sub_24B57C0E4();
          v42 = v123;
          sub_24B5FFE8C();
          (*(v108 + 8))(v41, v42);
          return (*(v139 + 8))(v39, v38);
        }

        v97 = *(v32 + 2);
        v152 = *(v32 + 3);
        v153 = *(v32 + 8);
        v98 = *v32;
        v150 = *(v32 + 1);
        v151 = v97;
        v149 = v98;
        LOBYTE(v144) = 9;
        sub_24B5A49B4();
        v99 = v127;
        sub_24B5FFE0C();
        v146 = v151;
        v147 = v152;
        v148 = v153;
        v144 = v149;
        v145 = v150;
        sub_24B5A4A08();
        v100 = v128;
        sub_24B5FFE8C();
        (*(v109 + 8))(v99, v100);
        (*(v139 + 8))(v39, v38);
        return sub_24B5A0B20(&v149);
      }

      v72 = *v32;
      v73 = *(v32 + 1);
      v74 = *(v32 + 3);
      v136 = *(v32 + 2);
      v75 = *(v32 + 4);
      LODWORD(v135) = v32[40];
      LODWORD(v134) = v32[41];
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B38, &qword_24B600DD0);
      v77 = v131;
      (*(v131 + 32))(v132, &v32[*(v76 + 64)], v133);
      LOBYTE(v149) = 7;
      sub_24B5A4AB0();
      v78 = v129;
      sub_24B5FFE0C();
      v138 = v72;
      *&v149 = v72;
      *(&v149 + 1) = v73;
      v140 = v73;
      v79 = v136;
      *&v150 = v136;
      *(&v150 + 1) = v74;
      v137 = v75;
      *&v151 = v75;
      v80 = v135;
      BYTE8(v151) = v135;
      LOBYTE(v144) = 0;
      sub_24B57C03C();
      v81 = v130;
      v82 = v141;
      sub_24B5FFE8C();
      if (v82)
      {
        (*(v110 + 8))(v78, v81);
        (*(v77 + 8))(v132, v133);
        (*(v139 + 8))(v142, v154);
        return sub_24B57BA04(v138, v140, v79, v74, v137, v80);
      }

      sub_24B57BA04(v138, v140, v79, v74, v137, v80);
      LOBYTE(v149) = v134;
      LOBYTE(v144) = 1;
      sub_24B5A4B04();
      sub_24B5FFE8C();
      v102 = v78;
      LOBYTE(v149) = 2;
      sub_24B5AB290(&qword_27F018DD0, MEMORY[0x277CC9AF8]);
      v103 = v132;
      v104 = v133;
      sub_24B5FFE8C();
      v60 = v154;
      v61 = v142;
      v105 = v131;
      (*(v110 + 8))(v102, v81);
      (*(v105 + 8))(v103, v104);
    }

    return (*(v139 + 8))(v61, v60);
  }

  v44 = v134;
  v45 = v135;
  v46 = v136;
  v47 = v138;
  v48 = v137;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v68 = *v32;
      LOBYTE(v149) = 2;
      sub_24B5A4D50();
      v69 = v44;
      v70 = v154;
      v71 = v142;
      sub_24B5FFE0C();
      sub_24B5FFE4C();
      (*(v45 + 8))(v69, v46);
      return (*(v139 + 8))(v71, v70);
    }

    v49 = v154;
    v50 = v142;
    if (EnumCaseMultiPayload != 3)
    {
      v84 = *(v32 + 2);
      v152 = *(v32 + 3);
      v153 = *(v32 + 8);
      v85 = *v32;
      v150 = *(v32 + 1);
      v151 = v84;
      v149 = v85;
      LOBYTE(v144) = 4;
      sub_24B5A4C00();
      sub_24B5FFE0C();
      v146 = v151;
      v147 = v152;
      v148 = v153;
      v144 = v149;
      v145 = v150;
      sub_24B5A4C54();
      v86 = v115;
      sub_24B5FFE8C();
      (*(v106 + 8))(v47, v86);
      (*(v139 + 8))(v50, v49);
      return sub_24B5A0ACC(&v149);
    }

    v51 = *v32;
    v52 = v32[8];
    v53 = *(v32 + 2);
    v54 = v154;
    v55 = v32[24];
    v56 = *(v32 + 4);
    v152 = *(v32 + 5);
    v153 = *(v32 + 12);
    v57 = *(v32 + 2);
    v150 = *(v32 + 3);
    v151 = v56;
    v149 = v57;
    LOBYTE(v144) = 3;
    sub_24B5A4CA8();
    sub_24B5FFE0C();
    *&v144 = v51;
    BYTE8(v144) = v52;
    *&v145 = v53;
    BYTE8(v145) = v55;
    v143 = 0;
    sub_24B5A4CFC();
    v58 = v114;
    v59 = v141;
    sub_24B5FFE8C();
    if (v59)
    {
      sub_24B5A0B20(&v149);
      (*(v107 + 8))(v48, v58);
      (*(v139 + 8))(v50, v54);
    }

    v146 = v151;
    v147 = v152;
    v148 = v153;
    v144 = v149;
    v145 = v150;
    v143 = 1;
    sub_24B5A4A08();
    sub_24B5FFE8C();
    (*(v107 + 8))(v48, v58);
    (*(v139 + 8))(v50, v54);
    return sub_24B5A0B20(&v149);
  }

  if (EnumCaseMultiPayload)
  {
    v137 = *v32;
    v87 = v137;
    v88 = *(v32 + 2);
    v136 = *(v32 + 1);
    v140 = v88;
    v138 = *(v32 + 3);
    v89 = v138;
    v135 = *(v32 + 4);
    v90 = v32[40];
    LOBYTE(v149) = 1;
    sub_24B5A4DA4();
    v91 = v24;
    v92 = v154;
    v93 = v142;
    sub_24B5FFE0C();
    *&v149 = v87;
    v94 = v136;
    *(&v149 + 1) = v136;
    *&v150 = v88;
    *(&v150 + 1) = v89;
    v95 = v135;
    *&v151 = v135;
    BYTE8(v151) = v90;
    sub_24B57C03C();
    v96 = v111;
    sub_24B5FFE8C();
    (*(v113 + 8))(v91, v96);
    (*(v139 + 8))(v93, v92);
    return sub_24B57BA04(v137, v94, v140, v138, v95, v90);
  }

  else
  {
    v140 = *v32;
    v63 = v140;
    LODWORD(v138) = v32[8];
    v64 = *(v32 + 2);
    v65 = v32[24];
    LOBYTE(v149) = 0;
    sub_24B5A4DF8();
    v66 = v154;
    v67 = v142;
    sub_24B5FFE0C();
    *&v149 = v63;
    BYTE8(v149) = v138;
    *&v150 = v64;
    BYTE8(v150) = v65;
    sub_24B5A4CFC();
    sub_24B5FFE8C();
    (*(v112 + 8))(v28, v25);
    (*(v139 + 8))(v67, v66);
  }
}

uint64_t type metadata accessor for FilterAction()
{
  result = qword_27F018EC0;
  if (!qword_27F018EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24B5A490C()
{
  result = qword_27F018D98;
  if (!qword_27F018D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018D98);
  }

  return result;
}

unint64_t sub_24B5A4960()
{
  result = qword_27F018DA0;
  if (!qword_27F018DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018DA0);
  }

  return result;
}

unint64_t sub_24B5A49B4()
{
  result = qword_27F018DA8;
  if (!qword_27F018DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018DA8);
  }

  return result;
}

unint64_t sub_24B5A4A08()
{
  result = qword_27F018DB0;
  if (!qword_27F018DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018DB0);
  }

  return result;
}

unint64_t sub_24B5A4A5C()
{
  result = qword_27F018DB8;
  if (!qword_27F018DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018DB8);
  }

  return result;
}

unint64_t sub_24B5A4AB0()
{
  result = qword_27F018DC0;
  if (!qword_27F018DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018DC0);
  }

  return result;
}

unint64_t sub_24B5A4B04()
{
  result = qword_27F018DC8;
  if (!qword_27F018DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018DC8);
  }

  return result;
}

unint64_t sub_24B5A4B58()
{
  result = qword_27F018DD8;
  if (!qword_27F018DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018DD8);
  }

  return result;
}

unint64_t sub_24B5A4BAC()
{
  result = qword_27F018DE0;
  if (!qword_27F018DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018DE0);
  }

  return result;
}

unint64_t sub_24B5A4C00()
{
  result = qword_27F018DE8;
  if (!qword_27F018DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018DE8);
  }

  return result;
}

unint64_t sub_24B5A4C54()
{
  result = qword_27F018DF0;
  if (!qword_27F018DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018DF0);
  }

  return result;
}

unint64_t sub_24B5A4CA8()
{
  result = qword_27F018DF8;
  if (!qword_27F018DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018DF8);
  }

  return result;
}

unint64_t sub_24B5A4CFC()
{
  result = qword_27F018E00;
  if (!qword_27F018E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018E00);
  }

  return result;
}

unint64_t sub_24B5A4D50()
{
  result = qword_27F018E08;
  if (!qword_27F018E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018E08);
  }

  return result;
}

unint64_t sub_24B5A4DA4()
{
  result = qword_27F018E10;
  if (!qword_27F018E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018E10);
  }

  return result;
}

unint64_t sub_24B5A4DF8()
{
  result = qword_27F018E18;
  if (!qword_27F018E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018E18);
  }

  return result;
}

uint64_t FilterAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v178 = a2;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018E20, &qword_24B601508);
  v160 = *(v161 - 8);
  v3 = *(v160 + 64);
  MEMORY[0x28223BE20](v161);
  v170 = &v134 - v4;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018E28, &qword_24B601510);
  v159 = *(v162 - 8);
  v5 = *(v159 + 64);
  MEMORY[0x28223BE20](v162);
  v171 = &v134 - v6;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018E30, &qword_24B601518);
  v146 = *(v158 - 8);
  v7 = *(v146 + 64);
  MEMORY[0x28223BE20](v158);
  v177 = &v134 - v8;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018E38, &qword_24B601520);
  v147 = *(v163 - 8);
  v9 = *(v147 + 64);
  MEMORY[0x28223BE20](v163);
  v172 = &v134 - v10;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018E40, &qword_24B601528);
  v155 = *(v156 - 8);
  v11 = *(v155 + 64);
  MEMORY[0x28223BE20](v156);
  v168 = &v134 - v12;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018E48, &qword_24B601530);
  v152 = *(v153 - 8);
  v13 = *(v152 + 64);
  MEMORY[0x28223BE20](v153);
  v176 = &v134 - v14;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018E50, &qword_24B601538);
  v144 = *(v154 - 8);
  v15 = *(v144 + 64);
  MEMORY[0x28223BE20](v154);
  v167 = &v134 - v16;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018E58, &qword_24B601540);
  v145 = *(v157 - 8);
  v17 = *(v145 + 64);
  MEMORY[0x28223BE20](v157);
  v169 = &v134 - v18;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018E60, &qword_24B601548);
  v143 = *(v151 - 8);
  v19 = *(v143 + 64);
  MEMORY[0x28223BE20](v151);
  v166 = &v134 - v20;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018E68, &qword_24B601550);
  v142 = *(v150 - 8);
  v21 = *(v142 + 64);
  MEMORY[0x28223BE20](v150);
  v175 = &v134 - v22;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018E70, &qword_24B601558);
  v148 = *(v149 - 8);
  v23 = *(v148 + 64);
  MEMORY[0x28223BE20](v149);
  v165 = &v134 - v24;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018E78, &unk_24B601560);
  v179 = *(v174 - 8);
  v25 = *(v179 + 64);
  MEMORY[0x28223BE20](v174);
  v27 = &v134 - v26;
  v173 = type metadata accessor for FilterAction();
  v28 = *(*(v173 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v173);
  v141 = &v134 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v139 = &v134 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v164 = &v134 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v140 = &v134 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v134 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v134 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = &v134 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v134 - v47;
  MEMORY[0x28223BE20](v46);
  v50 = &v134 - v49;
  v52 = a1[3];
  v51 = a1[4];
  v181 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v52);
  sub_24B5A490C();
  v53 = v180;
  sub_24B5FFF4C();
  if (v53)
  {
    goto LABEL_13;
  }

  v135 = v42;
  v136 = v48;
  v137 = v45;
  v134 = v39;
  v54 = v175;
  v55 = v176;
  v56 = v177;
  v138 = v50;
  v180 = 0;
  v57 = v178;
  v58 = v174;
  v59 = sub_24B5FFDEC();
  if (*(v59 + 16) != 1 || (v60 = *(v59 + 32), v60 == 11))
  {
    v67 = sub_24B5FFCFC();
    swift_allocError();
    v69 = v68;
    v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018E80, &qword_24B602460) + 48);
    *v69 = v173;
    sub_24B5FFD5C();
    sub_24B5FFCEC();
    (*(*(v67 - 8) + 104))(v69, *MEMORY[0x277D84160], v67);
    swift_willThrow();
    goto LABEL_11;
  }

  if (*(v59 + 32) > 4u)
  {
    v61 = v27;
    if (*(v59 + 32) <= 7u)
    {
      v62 = v57;
      if (v60 == 5)
      {
        v182[0] = 5;
        sub_24B5A4BAC();
        v87 = v180;
        sub_24B5FFD4C();
        if (!v87)
        {
          v180 = 0;
          (*(v152 + 8))(v55, v153);
          (*(v179 + 8))(v61, v58);
          swift_unknownObjectRelease();
          v66 = v138;
          goto LABEL_50;
        }

        goto LABEL_41;
      }

      v63 = v58;
      if (v60 == 6)
      {
        v182[0] = 6;
        sub_24B5A4B58();
        v64 = v168;
        v65 = v180;
        sub_24B5FFD4C();
        if (!v65)
        {
          v180 = 0;
          (*(v155 + 8))(v64, v156);
          (*(v179 + 8))(v61, v58);
          swift_unknownObjectRelease();
          v66 = v138;
LABEL_50:
          swift_storeEnumTagMultiPayload();
LABEL_54:
          v115 = v181;
          goto LABEL_55;
        }

        goto LABEL_41;
      }

      v182[0] = 7;
      sub_24B5A4AB0();
      v93 = v172;
      v94 = v180;
      sub_24B5FFD4C();
      if (v94)
      {
        (*(v179 + 8))(v61, v63);
        goto LABEL_39;
      }

      v182[0] = 0;
      sub_24B57C4CC();
      v108 = v163;
      sub_24B5FFDDC();
      v182[0] = 1;
      sub_24B5A69BC();
      sub_24B5FFDDC();
      v125 = v93;
      v126 = v147;
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B38, &qword_24B600DD0);
      v180 = 0;
      v177 = *(v132 + 64);
      sub_24B5FEE4C();
      v182[0] = 2;
      sub_24B5AB290(&qword_27F018E98, MEMORY[0x277CC9AF8]);
      v133 = v180;
      sub_24B5FFDDC();
      if (v133)
      {
        (*(v126 + 8))(v125, v108);
        (*(v179 + 8))(v61, v63);
        swift_unknownObjectRelease();
        sub_24B57BA04(*v164, *(v164 + 1), *(v164 + 2), *(v164 + 3), *(v164 + 4), v164[40]);
        goto LABEL_13;
      }

      v180 = 0;
      (*(v126 + 8))(v125, v108);
      (*(v179 + 8))(v61, v63);
      swift_unknownObjectRelease();
      v123 = v164;
      goto LABEL_52;
    }

    v62 = v57;
    if (v60 == 8)
    {
      v182[0] = 8;
      sub_24B5A4A5C();
      v88 = v180;
      sub_24B5FFD4C();
      if (v88)
      {
        (*(v179 + 8))(v61, v58);
        swift_unknownObjectRelease();
        v71 = v181;
        return __swift_destroy_boxed_opaque_existential_1(v71);
      }

      sub_24B57C574();
      v100 = v158;
      sub_24B5FFDDC();
      v180 = 0;
      (*(v146 + 8))(v56, v100);
      (*(v179 + 8))(v61, v58);
      swift_unknownObjectRelease();
      v123 = v139;
      *v139 = v182[0];
      goto LABEL_52;
    }

    if (v60 != 9)
    {
      v182[0] = 10;
      sub_24B5A4960();
      v95 = v170;
      v96 = v180;
      sub_24B5FFD4C();
      if (!v96)
      {
        v180 = 0;
        (*(v160 + 8))(v95, v161);
        (*(v179 + 8))(v61, v58);
        swift_unknownObjectRelease();
        v66 = v138;
        goto LABEL_50;
      }

LABEL_41:
      (*(v179 + 8))(v61, v58);
      goto LABEL_12;
    }

    v182[0] = 9;
    sub_24B5A49B4();
    v77 = v171;
    v78 = v61;
    v79 = v180;
    sub_24B5FFD4C();
    if (!v79)
    {
      sub_24B5A6968();
      v80 = v162;
      sub_24B5FFDDC();
      v81 = (v179 + 8);
      v180 = 0;
      (*(v159 + 8))(v77, v80);
      (*v81)(v61, v58);
      swift_unknownObjectRelease();
      v122 = *&v182[48];
      v123 = v141;
      *(v141 + 2) = *&v182[32];
      *(v123 + 3) = v122;
      *(v123 + 8) = *&v182[64];
      v124 = *&v182[16];
      *v123 = *v182;
      *(v123 + 1) = v124;
LABEL_52:
      swift_storeEnumTagMultiPayload();
      v131 = v123;
      goto LABEL_53;
    }

LABEL_36:
    (*(v179 + 8))(v78, v58);
LABEL_39:
    swift_unknownObjectRelease();
    v71 = v181;
    return __swift_destroy_boxed_opaque_existential_1(v71);
  }

  if (*(v59 + 32) <= 1u)
  {
    v82 = v27;
    v62 = v57;
    if (*(v59 + 32))
    {
      v182[0] = 1;
      sub_24B5A4DA4();
      v78 = v82;
      v92 = v180;
      sub_24B5FFD4C();
      if (!v92)
      {
        sub_24B57C4CC();
        v107 = v150;
        sub_24B5FFDDC();
        v180 = 0;
        (*(v142 + 8))(v54, v107);
        (*(v179 + 8))(v82, v58);
        swift_unknownObjectRelease();
        v119 = *&v182[32];
        v120 = v182[40];
        v121 = *&v182[16];
        v123 = v137;
        *v137 = *v182;
        *(v123 + 1) = v121;
        *(v123 + 4) = v119;
        v123[40] = v120;
        goto LABEL_52;
      }

      goto LABEL_36;
    }

    v182[0] = 0;
    sub_24B5A4DF8();
    v83 = v165;
    v84 = v180;
    sub_24B5FFD4C();
    if (!v84)
    {
      sub_24B5A6A64();
      v103 = v149;
      sub_24B5FFDDC();
      (*(v148 + 8))(v83, v103);
      (*(v179 + 8))(v82, v58);
      swift_unknownObjectRelease();
      v180 = 0;
      v104 = v182[8];
      v105 = *&v182[16];
      v106 = v182[24];
      v123 = v136;
      *v136 = *v182;
      v123[8] = v104;
      *(v123 + 2) = v105;
      v123[24] = v106;
      goto LABEL_52;
    }

    (*(v179 + 8))(v82, v58);
LABEL_12:
    swift_unknownObjectRelease();
LABEL_13:
    v71 = v181;
    return __swift_destroy_boxed_opaque_existential_1(v71);
  }

  if (v60 == 2)
  {
    v182[0] = 2;
    sub_24B5A4D50();
    v85 = v166;
    v86 = v180;
    sub_24B5FFD4C();
    if (!v86)
    {
      v97 = v151;
      v98 = sub_24B5FFD9C();
      v99 = v179;
      v180 = 0;
      v109 = v98;
      (*(v143 + 8))(v85, v97);
      (*(v99 + 8))(v27, v58);
      swift_unknownObjectRelease();
      v110 = v109 & 1;
      v112 = v135;
      *v135 = v110;
      goto LABEL_51;
    }

LABEL_11:
    (*(v179 + 8))(v27, v58);
    goto LABEL_12;
  }

  v73 = v59;
  if (v60 == 3)
  {
    v182[0] = 3;
    sub_24B5A4CA8();
    v74 = v169;
    v75 = v180;
    sub_24B5FFD4C();
    v76 = v27;
    if (!v75)
    {
      v62 = v57;
      v101 = v76;
      v182[0] = 0;
      sub_24B5A6A64();
      v102 = v157;
      sub_24B5FFDDC();
      v177 = v73;
      v116 = v188;
      LODWORD(v176) = v189;
      v117 = v190;
      LODWORD(v175) = v191;
      v192 = 1;
      sub_24B5A6968();
      sub_24B5FFDDC();
      v118 = (v179 + 8);
      v180 = 0;
      (*(v145 + 8))(v74, v102);
      (*v118)(v101, v58);
      swift_unknownObjectRelease();
      *&v182[7] = v183;
      *&v182[23] = v184;
      *&v182[39] = v185;
      *&v182[55] = v186;
      *&v182[71] = v187;
      v127 = v134;
      *v134 = v116;
      *(v127 + 8) = v176;
      v127[2] = v117;
      *(v127 + 24) = v175;
      *(v127 + 25) = *v182;
      v129 = *&v182[16];
      v128 = *&v182[32];
      v130 = *&v182[48];
      *(v127 + 11) = *&v182[63];
      *(v127 + 73) = v130;
      *(v127 + 57) = v128;
      *(v127 + 41) = v129;
      swift_storeEnumTagMultiPayload();
      v131 = v127;
LABEL_53:
      v66 = v138;
      sub_24B5A6904(v131, v138);
      goto LABEL_54;
    }

    goto LABEL_11;
  }

  v182[0] = 4;
  sub_24B5A4C00();
  v89 = v167;
  v90 = v180;
  sub_24B5FFD4C();
  if (v90)
  {
    goto LABEL_11;
  }

  sub_24B5A6A10();
  v91 = v154;
  sub_24B5FFDDC();
  v180 = 0;
  (*(v144 + 8))(v89, v91);
  (*(v179 + 8))(v27, v58);
  swift_unknownObjectRelease();
  v111 = *&v182[48];
  v112 = v140;
  *(v140 + 2) = *&v182[32];
  *(v112 + 3) = v111;
  *(v112 + 8) = *&v182[64];
  v113 = *&v182[16];
  *v112 = *v182;
  *(v112 + 1) = v113;
LABEL_51:
  swift_storeEnumTagMultiPayload();
  v114 = v112;
  v66 = v138;
  sub_24B5A6904(v114, v138);
  v115 = v181;
  v62 = v57;
LABEL_55:
  sub_24B5A6904(v66, v62);
  return __swift_destroy_boxed_opaque_existential_1(v115);
}