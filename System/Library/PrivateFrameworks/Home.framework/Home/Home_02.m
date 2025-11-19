uint64_t sub_20D9E86E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843848, &qword_20DD93F20);
  result = sub_20DD656B4();
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_20DD65A64();

      sub_20DD64F24();
      result = sub_20DD65AA4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_20D9E8918(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_20DD656B4();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_20DD65444();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_20D9E8B24(unint64_t a1, unint64_t a2)
{
  sub_20D9D7510(0, &qword_280E01EF0, 0x277CD1A60);
  if (a2 >> 62)
  {
    v4 = sub_20DD65854();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    sub_20DD65704();
    v6 = 0xD000000000000046;
    v5 = 0x800000020DD97EF0;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  sub_20DD65704();
  v5 = 0x800000020DD97EA0;
  v6 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x20F325E90](v6, v5);
  v8 = sub_20DD65B04();
  MEMORY[0x20F325E90](v8);

  MEMORY[0x20F325E90](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v9 = sub_20DD65B04();
  MEMORY[0x20F325E90](v9);

  result = sub_20DD65824();
  __break(1u);
  return result;
}

uint64_t sub_20D9E8D00(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_20DA73C60(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_20D9E8D7C(v6);
  return sub_20DD65764();
}

uint64_t sub_20D9E8D7C(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_20DD65924();
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
        sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
        v6 = sub_20DD65034();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_20D9E900C(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_20D9E8E90(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20D9E8E90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 name];
      v11 = sub_20DD64EB4();
      v13 = v12;

      v14 = [v9 name];
      v15 = sub_20DD64EB4();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = sub_20DD65974();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_20D9E900C(id **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_107:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = v4;
LABEL_110:
      v4 = *(v107 + 2);
      if (v4 >= 2)
      {
        do
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_144;
          }

          v6 = (v4 - 1);
          v109 = *&v107[16 * v4];
          v110 = v107;
          v111 = *&v107[16 * v4 + 24];
          sub_20D9E980C((v108 + 8 * v109), (v108 + 8 * *&v107[16 * v4 + 16]), (v108 + 8 * v111), v5);
          if (v126)
          {
            break;
          }

          if (v111 < v109)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_20DA73550(v110);
          }

          if (v4 - 2 >= *(v110 + 2))
          {
            goto LABEL_134;
          }

          v112 = &v110[16 * v4];
          *v112 = v109;
          *(v112 + 1) = v111;
          sub_20DA734C4(v4 - 1);
          v107 = v110;
          v4 = *(v110 + 2);
          v6 = a3;
        }

        while (v4 > 1);
      }

LABEL_118:

      return;
    }

LABEL_140:
    v107 = sub_20DA73550(v4);
    goto LABEL_110;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v122 = v7;
      v114 = v9;
      v116 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 name];
      v16 = sub_20DD64EB4();
      v18 = v17;

      v19 = [v14 name];
      v20 = sub_20DD64EB4();
      v5 = v21;

      if (v16 == v20 && v18 == v5)
      {
        v127 = 0;
      }

      else
      {
        v127 = sub_20DD65974();
      }

      v10 = v116;
      v8 = v116 + 2;
      if (v116 + 2 >= v122)
      {
        v6 = a3;
      }

      else
      {
        v4 += 8 * v116 + 16;
        do
        {
          v124 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 name];
          v5 = sub_20DD64EB4();
          v29 = v28;

          v30 = [v26 name];
          v31 = sub_20DD64EB4();
          v33 = v32;

          if (v5 == v31 && v29 == v33)
          {

            v8 = v124;
            if (v127)
            {
              v6 = a3;
              v9 = v114;
              v10 = v116;
              goto LABEL_26;
            }
          }

          else
          {
            v23 = sub_20DD65974();

            v8 = v124;
            if ((v127 ^ v23))
            {
              goto LABEL_24;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v122 != v8);
        v8 = v122;
LABEL_24:
        v6 = a3;
        v10 = v116;
      }

      v9 = v114;
      if (v127)
      {
LABEL_26:
        if (v8 < v10)
        {
          goto LABEL_137;
        }

        if (v10 < v8)
        {
          v35 = 8 * v8 - 8;
          v36 = 8 * v10;
          v37 = v8;
          v38 = v10;
          do
          {
            if (v38 != --v37)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_143;
              }

              v40 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v40;
            }

            ++v38;
            v35 -= 8;
            v36 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_136;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_135;
    }

    v60 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v60;
    }

    else
    {
      v9 = sub_20D9E014C(0, *(v60 + 2) + 1, 1, v60);
    }

    v4 = *(v9 + 2);
    v61 = *(v9 + 3);
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_20D9E014C((v61 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v62;
    v63 = &v9[16 * v4];
    *(v63 + 4) = v10;
    *(v63 + 5) = v8;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v4)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_75:
          if (v69)
          {
            goto LABEL_124;
          }

          v82 = &v9[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_127;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_131;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v92 = &v9[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_89:
        if (v87)
        {
          goto LABEL_126;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_129;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_96:
        v4 = v65 - 1;
        if (v65 - 1 >= v62)
        {
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

        if (!*v6)
        {
          goto LABEL_142;
        }

        v5 = v8;
        v103 = v9;
        v104 = *&v9[16 * v4 + 32];
        v105 = *&v9[16 * v65 + 40];
        sub_20D9E980C((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v105), v64);
        if (v126)
        {
          goto LABEL_118;
        }

        if (v105 < v104)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_20DA73550(v103);
        }

        if (v4 >= *(v103 + 2))
        {
          goto LABEL_121;
        }

        v106 = &v103[16 * v4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_20DA734C4(v65);
        v9 = v103;
        v62 = *(v103 + 2);
        v8 = v5;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_122;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_123;
      }

      v77 = &v9[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_125;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_128;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_132;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  v42 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_138;
  }

  if (v42 >= v41)
  {
    v42 = v6[1];
  }

  if (v42 < v10)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v8 == v42)
  {
    goto LABEL_55;
  }

  v115 = v9;
  v117 = v10;
  v128 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v43 = v10 - v8;
  v120 = v42;
LABEL_44:
  v123 = v4;
  v125 = v8;
  v44 = *(v128 + 8 * v8);
  v121 = v43;
  v45 = v43;
  while (1)
  {
    v46 = *v4;
    v47 = v44;
    v48 = v46;
    v49 = [v47 name];
    v5 = sub_20DD64EB4();
    v51 = v50;

    v52 = [v48 name];
    v53 = sub_20DD64EB4();
    v55 = v54;

    if (v5 == v53 && v51 == v55)
    {

LABEL_43:
      v8 = v125 + 1;
      v4 = v123 + 8;
      v43 = v121 - 1;
      if ((v125 + 1) == v120)
      {
        v8 = v120;
        v6 = a3;
        v9 = v115;
        v10 = v117;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v57 = sub_20DD65974();

    if ((v57 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v128)
    {
      break;
    }

    v58 = *v4;
    v44 = *(v4 + 8);
    *v4 = v44;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_43;
    }
  }

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
}

uint64_t sub_20D9E980C(void **__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[v12] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v29;
    }

    v54 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v49 = a4;
      v48 = v6;
LABEL_32:
      v30 = v5 - 1;
      v31 = v4;
      v32 = v54;
      v51 = v5 - 1;
      v53 = v5;
      do
      {
        v33 = *--v32;
        v34 = *v30;
        v35 = v33;
        v36 = v34;
        v37 = [v35 name];
        v38 = sub_20DD64EB4();
        v40 = v39;

        v41 = [v36 name];
        v42 = sub_20DD64EB4();
        v44 = v43;

        if (v38 == v42 && v40 == v44)
        {

          v4 = (v31 - 8);
        }

        else
        {
          v46 = sub_20DD65974();

          v4 = (v31 - 8);
          if (v46)
          {
            v13 = v49;
            if (v31 != v53)
            {
              *v4 = *v51;
            }

            if (v54 <= v49 || (v5 = v51, v51 <= v48))
            {
              v5 = v51;
              goto LABEL_49;
            }

            goto LABEL_32;
          }
        }

        v13 = v49;
        v30 = v51;
        if (v54 != v31)
        {
          *v4 = *v32;
        }

        v54 = v32;
        v31 = v4;
      }

      while (v32 > v49);
      v54 = v32;
      v5 = v53;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v54 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v50 = v4;
      while (1)
      {
        v52 = v5;
        v14 = *v13;
        v15 = *v5;
        v16 = v14;
        v17 = [v15 name];
        v18 = sub_20DD64EB4();
        v20 = v19;

        v21 = [v16 name];
        v22 = sub_20DD64EB4();
        v24 = v23;

        v25 = v18 == v22 && v20 == v24;
        if (v25)
        {
          break;
        }

        v26 = sub_20DD65974();

        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

        v27 = v52;
        v5 = v52 + 1;
        v28 = v50;
        if (v6 != v52)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v6;
        if (v13 >= v54 || v5 >= v28)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v27 = v13;
      v25 = v6 == v13++;
      v5 = v52;
      v28 = v50;
      if (v25)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v6 = *v27;
      goto LABEL_22;
    }

LABEL_24:
    v5 = v6;
  }

LABEL_49:
  if (v5 != v13 || v5 >= (v13 + ((v54 - v13 + (v54 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * ((v54 - v13) / 8));
  }

  return 1;
}

void sub_20D9E9C28(uint64_t a1, unint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t (*a5)(id))
{
  v8 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v8 < 0)
    {
      v9 = *v5;
    }

    if (!sub_20DD655B4())
    {
      return;
    }
  }

  else if (!*(v8 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    sub_20D9D7510(0, a2, a3);
    sub_20D9EC18C(a4, a2, a3);
    sub_20DD65284();
    a1 = v28;
    v10 = v29;
    v11 = v30;
    v12 = v31;
    v13 = v32;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v10 = a1 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(a1 + 56);

    v12 = 0;
  }

  v17 = (v11 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_18:
    v21 = (v19 - 1) & v19;
    v22 = *(*(a1 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v22)
    {
LABEL_24:
      sub_20D9C51CC();
      return;
    }

    while (1)
    {
      v23 = a5(v22);

      v12 = v20;
      v13 = v21;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (sub_20DD655F4())
      {
        sub_20D9D7510(0, a2, a3);
        swift_dynamicCast();
        v22 = v27;
        v20 = v12;
        v21 = v13;
        if (v27)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_24;
    }

    v19 = *(v10 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_20D9E9E58(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - v5;
  v7 = sub_20DD63744();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = sub_20D9D76EC(v6, &unk_27C843A70, &qword_20DD94260))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      sub_20D9EA40C(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20D9EA074(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_20DD65604();

    if (v7)
    {
      v8 = sub_20D9EA6E0(v4, v6, sub_20D9E3788, &qword_280E02100, 0x277CD1970);

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
  v11 = *(v3 + 40);
  v12 = sub_20DD65444();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_20DD65454();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_20D9E71B0(&qword_27C843978, &qword_20DD93FE0);
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_20D9EA850(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_20D9EA240(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_20DD65604();

    if (v7)
    {
      v8 = sub_20D9EA6E0(v4, v6, sub_20D9E3D58, &qword_27C843BB0, 0x277CD1B68);

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_20D9D7510(0, &qword_27C843BB0, 0x277CD1B68);
  v11 = *(v3 + 40);
  v12 = sub_20DD65444();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_20DD65454();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_20D9E71B0(&unk_27C843920, &qword_20DD93FA8);
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_20D9EA850(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_20D9EA40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_20DD63744();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_20D9EBA28(&qword_280E02290, 255, MEMORY[0x277CC95F0]);
  v35 = a1;
  v13 = sub_20DD64E24();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_20D9EBA28(&qword_280E02288, 255, MEMORY[0x277CC95F0]);
      v22 = sub_20DD64E64();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_20D9E6CCC(MEMORY[0x277CC95F0], &unk_27C843830, &unk_20DD93F10);
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_20D9EA9F0(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_20D9EA6E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4, uint64_t *a5)
{
  v9 = v5;
  v10 = *v5;

  v11 = sub_20DD655B4();
  v12 = swift_unknownObjectRetain();
  v13 = a3(v12, v11);
  v23 = v13;
  v14 = *(v13 + 40);

  v15 = sub_20DD65444();
  v16 = -1 << *(v13 + 32);
  v17 = v15 & ~v16;
  if ((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    sub_20D9D7510(0, a4, a5);
    while (1)
    {
      v19 = *(*(v13 + 48) + 8 * v17);
      v20 = sub_20DD65454();

      if (v20)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v21 = *(*(v13 + 48) + 8 * v17);
  sub_20D9EA850(v17);
  result = sub_20DD65454();
  if (result)
  {
    *v9 = v23;
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_20D9EA850(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_20DD65524();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_20DD65444();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_20D9EA9F0(int64_t a1)
{
  v3 = sub_20DD63744();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x28223BE20](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_20DD65524();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_20D9EBA28(&qword_280E02290, 255, MEMORY[0x277CC95F0]);
        v27 = sub_20DD64E24();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

void (*sub_20D9EACFC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F326680](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_20D9EAD7C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_20D9EAD84(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_20D9E8B24(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_20D9EF644;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_20D9EAE04(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F326680](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_20D9EF644;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_20D9EAE84(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x20F326680](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_20D9EAF04;
  }

  __break(1u);
  return result;
}

void *sub_20D9EAF28(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_20D9EB07C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_20D9EB224(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_20DD636C4();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_20D9EB4C8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {
        swift_unknownObjectRetain();
        goto LABEL_24;
      }

      ++v11;
      swift_unknownObjectRetain();
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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_20D9EB61C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t *sub_20D9EB790(uint64_t *result, uint64_t **a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_20DD65564();
  sub_20D9D7510(0, a5, a6);
  sub_20D9EC18C(a7, a5, a6);
  result = sub_20DD65284();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_20DD655F4())
      {
        goto LABEL_30;
      }

      sub_20D9D7510(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

uint64_t sub_20D9EB9C0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_20D9D7510(0, &qword_280E01EF0, 0x277CD1A60);
  return sub_20DD65454() & 1;
}

uint64_t sub_20D9EBA28(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_20D9EBA94()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9D77C4;

  return sub_20D9DDB00();
}

uint64_t sub_20D9EBB40()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9C76B4;

  return sub_20D9DDB00();
}

void sub_20D9EBC80()
{
  sub_20D9EBE34();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_20D9EBF3C();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_20D9EBFFC(319, &qword_27C843740, MEMORY[0x277D857B8]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_20D9EBFFC(319, &unk_27C843748, MEMORY[0x277D85788]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_20D9EBE34()
{
  if (!qword_27C843720)
  {
    sub_20DD63744();
    type metadata accessor for CharacteristicNotificationManager.RegistrationRequest(255);
    sub_20D9EBA28(&qword_280E02290, 255, MEMORY[0x277CC95F0]);
    v0 = sub_20DD64104();
    if (!v1)
    {
      atomic_store(v0, &qword_27C843720);
    }
  }
}

uint64_t sub_20D9EBF04(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20D9EBF3C()
{
  if (!qword_27C843730)
  {
    sub_20DD63744();
    sub_20D9D7510(255, &qword_280E01EF0, 0x277CD1A60);
    sub_20D9EBA28(&qword_280E02290, 255, MEMORY[0x277CC95F0]);
    v0 = sub_20DD64104();
    if (!v1)
    {
      atomic_store(v0, &qword_27C843730);
    }
  }
}

void sub_20D9EBFFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C843668, &qword_20DD93CB0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_20D9EC070()
{
  result = sub_20DD63744();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_20D9EC18C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_20D9D7510(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20D9EC1DC(unint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v3 = sub_20D9D4E78(MEMORY[0x277D84F90]);
  if (a1 >> 62)
  {
LABEL_28:
    v4 = sub_20DD655B4();
    if (v4)
    {
      goto LABEL_3;
    }

    return v3;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return v3;
  }

LABEL_3:
  v5 = 0;
  v28 = a1 & 0xFFFFFFFFFFFFFF8;
  v29 = a1 & 0xC000000000000001;
  v26 = v2 >> 62;
  v27 = a1;
  while (1)
  {
    if (v29)
    {
      v9 = MEMORY[0x20F326680](v5, a1);
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v5 >= *(v28 + 16))
      {
        goto LABEL_26;
      }

      v9 = *(a1 + 8 * v5 + 32);

      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    v30 = v10;
    v2 = v4;
    v11 = *(v9 + 16);
    v12 = OBJC_IVAR____TtCC4Home33CharacteristicNotificationManager19RegistrationRequest_subscribedCharacteristics;
    swift_beginAccess();
    v13 = *(v9 + v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a1 = v3;
    v16 = sub_20D9CB2EC(v11);
    v17 = v3[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_27;
    }

    v20 = v15;
    if (v3[3] < v19)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_20D9D2594();
      if ((v20 & 1) == 0)
      {
LABEL_17:
        if (v26 && (v23 = MEMORY[0x277D84F90], sub_20DD655B4()))
        {
          sub_20D9EE5C0(v23, &qword_27C843978, &qword_20DD93FE0, &qword_280E02100, 0x277CD1970);
          v6 = v24;
        }

        else
        {
          v6 = MEMORY[0x277D84FA0];
        }

        sub_20D9D1C80(v16, v11, v6, v3);
        v7 = v11;
      }
    }

LABEL_6:
    v8 = v3[7] + 8 * v16;
    sub_20D9DD3AC(v13, &qword_280E02100, 0x277CD1970, &unk_280E020F0, sub_20D9E10E0);

    ++v5;
    v4 = v2;
    a1 = v27;
    if (v30 == v2)
    {
      return v3;
    }
  }

  sub_20D9CC5EC(v19, isUniquelyReferenced_nonNull_native);
  sub_20D9D7510(0, &qword_280E01EF0, 0x277CD1A60);
  v21 = sub_20D9CB2EC(v11);
  if ((v20 & 1) == (v22 & 1))
  {
    v16 = v21;
    if ((v20 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  result = sub_20DD659E4();
  __break(1u);
  return result;
}

uint64_t sub_20D9EC494(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 152) = a2;
  *(v3 + 160) = a3;
  *(v3 + 184) = a1;
  if (qword_27C842410 != -1)
  {
    swift_once();
  }

  v4 = qword_27C843648;
  *(v3 + 168) = qword_27C843648;

  return MEMORY[0x2822009F8](sub_20D9EC534, v4, 0);
}

uint64_t sub_20D9EC534()
{
  v32 = v0;
  v1 = *(v0 + 160);
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *(v0 + 160);
    }

    if (sub_20DD655B4())
    {
      goto LABEL_5;
    }
  }

  else if (*(v1 + 16))
  {
LABEL_5:
    if (qword_27C842428 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 152);
    v4 = *(v0 + 160);
    v5 = sub_20DD64C44();
    __swift_project_value_buffer(v5, qword_27C843650);
    v6 = v3;

    v7 = sub_20DD64C24();
    v8 = sub_20DD65384();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = *(v0 + 152);
      v9 = *(v0 + 160);
      v11 = *(v0 + 184);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31 = v13;
      *v12 = 136315650;
      v14 = [v10 name];
      v15 = sub_20DD64EB4();
      v17 = v16;

      v18 = sub_20D9E0B38(v15, v17, &v31);

      *(v12 + 4) = v18;
      *(v12 + 12) = 2080;
      if (v11)
      {
        v19 = 0x676E696C62616E45;
      }

      else
      {
        v19 = 0x6E696C6261736944;
      }

      if (v11)
      {
        v20 = 0xE800000000000000;
      }

      else
      {
        v20 = 0xE900000000000067;
      }

      v21 = sub_20D9E0B38(v19, v20, &v31);

      *(v12 + 14) = v21;
      *(v12 + 22) = 2080;
      v22 = Set<>.groupedDescription.getter(v9);
      v24 = sub_20D9E0B38(v22, v23, &v31);

      *(v12 + 24) = v24;
      _os_log_impl(&dword_20D9BF000, v7, v8, "%s: %s notifications for %s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v13, -1, -1);
      MEMORY[0x20F327D10](v12, -1, -1);
    }

    v25 = *(v0 + 152);
    v26 = *(v0 + 184);
    sub_20DA54FA8(*(v0 + 160));
    sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
    v27 = sub_20DD64FB4();
    *(v0 + 176) = v27;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_20D9EC904;
    v28 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8439D8, &qword_20DD94070);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_20D9DD1F8;
    *(v0 + 104) = &block_descriptor;
    *(v0 + 112) = v28;
    [v25 enableNotification:v26 forCharacteristics:v27 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_20D9EC904()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20D9EC9F8, v1, 0);
}

uint64_t sub_20D9EC9F8()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20D9ECA60(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  if (qword_27C842410 != -1)
  {
    swift_once();
  }

  v3 = qword_27C843648;
  v2[4] = qword_27C843648;

  return MEMORY[0x2822009F8](sub_20D9ECAFC, v3, 0);
}

uint64_t sub_20D9ECAFC()
{
  v1 = sub_20D9DFEE4(*(v0 + 16), *(v0 + 24));
  *(v0 + 160) = v1 & 1;
  if ((v1 & 1) == 0)
  {
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v65 = MEMORY[0x277D84F90];
    v8 = -1;
    v9 = -1 << v6[32];
    if (-v9 < 64)
    {
      v8 = ~(-1 << -v9);
    }

    v10 = v8 & *(v6 + 8);
    v11 = (63 - v9) >> 6;

    v12 = 0;
    if (!v10)
    {
      while (1)
      {
LABEL_9:
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          goto LABEL_41;
        }

        if (v13 >= v11)
        {
          break;
        }

        v10 = *&v6[8 * v13 + 64];
        ++v12;
        if (v10)
        {
          v12 = v13;
          goto LABEL_13;
        }
      }

      v26 = *(v0 + 24);

      *(v0 + 40) = v65;
      if (v65 < 0 || (v65 & 0x4000000000000000) != 0)
      {
        v27 = sub_20DD655B4();
        *(v0 + 48) = v27;
        if (v27)
        {
LABEL_27:
          if (v27 >= 1)
          {
            *(v0 + 56) = 0;
            v28 = *(v0 + 40);
            if ((v28 & 0xC000000000000001) != 0)
            {
              v29 = MEMORY[0x20F326680](0);
            }

            else
            {
              v29 = *(v28 + 32);
            }

            v6 = v29;
            v30 = MEMORY[0x277D84F90];
            *(v0 + 64) = v29;
            if (*(*(v0 + 24) + 16))
            {
              v31 = sub_20D9CB2EC(v29);
              if (v32)
              {
                v33 = *(*(*(v0 + 24) + 56) + 8 * v31);

LABEL_36:
                *(v0 + 72) = v33;
                v34 = swift_task_alloc();
                *(v0 + 80) = v34;
                *v34 = v0;
                v34[1] = sub_20D9ED1C8;
                v35 = 0;
LABEL_37:

                return sub_20D9EC494(v35, v6, v33);
              }
            }

            if (!(v30 >> 62))
            {
LABEL_35:
              v33 = MEMORY[0x277D84FA0];
              goto LABEL_36;
            }

LABEL_81:
            if (sub_20DD655B4())
            {
              sub_20D9EE5C0(MEMORY[0x277D84F90], &qword_27C843978, &qword_20DD93FE0, &qword_280E02100, 0x277CD1970);
              v33 = v64;
              goto LABEL_36;
            }

            goto LABEL_35;
          }

LABEL_80:
          __break(1u);
          goto LABEL_81;
        }
      }

      else
      {
        v27 = *(v65 + 16);
        *(v0 + 48) = v27;
        if (v27)
        {
          goto LABEL_27;
        }
      }

      v37 = *(v0 + 40);
      v38 = *(v0 + 16);

      v39 = *(v38 + 32);
      *(v0 + 161) = v39;
      v40 = 1 << v39;
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      else
      {
        v41 = -1;
      }

      v42 = v41 & *(v38 + 64);

      v43 = 0;
      v44 = MEMORY[0x277D84FA0];
      v45 = MEMORY[0x277D84F90] >> 62;
      if (!v42)
      {
LABEL_48:
        while (1)
        {
          v47 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            break;
          }

          v46 = *(v0 + 16);
          if (v47 >= (((1 << *(v0 + 161)) + 63) >> 6))
          {

            goto LABEL_63;
          }

          v42 = *(v46 + 8 * v47 + 64);
          ++v43;
          if (v42)
          {
            v43 = v47;
            goto LABEL_52;
          }
        }

        __break(1u);
        goto LABEL_80;
      }

      while (1)
      {
        v46 = *(v0 + 16);
        *(v0 + 88) = v42;
        *(v0 + 96) = v43;
        v48 = *(v0 + 24);
        v49 = (v43 << 9) | (8 * __clz(__rbit64(v42)));
        v50 = *(*(v46 + 48) + v49);
        *(v0 + 104) = v50;
        v51 = *(*(v46 + 56) + v49);
        *(v0 + 112) = v51;
        v52 = *(v48 + 16);
        v6 = v50;

        if (!v52)
        {
          goto LABEL_55;
        }

LABEL_52:
        v53 = sub_20D9CB2EC(v6);
        if (v54)
        {
          v55 = *(*(*(v0 + 24) + 56) + 8 * v53);
        }

        else
        {
LABEL_55:
          if (v45 && (v56 = MEMORY[0x277D84F90], sub_20DD655B4()))
          {
            sub_20D9EE5C0(v56, &qword_27C843978, &qword_20DD93FE0, &qword_280E02100, 0x277CD1970);
            v55 = v57;
          }

          else
          {
            v55 = v44;
          }
        }

        *(v0 + 120) = v55;
        if ((sub_20DA2C03C(v51, v55) & 1) == 0)
        {
          break;
        }

        v42 &= v42 - 1;

        if (!v42)
        {
          goto LABEL_48;
        }
      }

      if ((v55 & 0xC000000000000001) != 0)
      {

        v60 = sub_20DD655B4();
      }

      else
      {
        v60 = *(v55 + 16);
      }

      if ((v51 & 0xC000000000000001) != 0)
      {
        if (v51 < 0)
        {
          v61 = v51;
        }

        else
        {
          v61 = v51 & 0xFFFFFFFFFFFFFF8;
        }

        if (v60 > sub_20DD655B4() / 8)
        {
          v62 = sub_20DD655B4();
          v51 = sub_20D9E3788(v61, v62);
LABEL_76:
          v33 = sub_20DA86820(v55, v51);
LABEL_78:
          *(v0 + 128) = v33;
          v63 = swift_task_alloc();
          *(v0 + 136) = v63;
          *v63 = v0;
          v63[1] = sub_20D9ED798;
          v35 = 1;
          goto LABEL_37;
        }
      }

      else if (v60 > *(v51 + 16) >> 3)
      {
        goto LABEL_76;
      }

      sub_20D9E9C28(v55, &qword_280E02100, 0x277CD1970, &unk_280E020F0, sub_20D9EA074);
      v33 = v51;
      goto LABEL_78;
    }

    while (1)
    {
LABEL_13:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = *(v7 + 16);
      v16 = *(*(v6 + 6) + ((v12 << 9) | (8 * v14)));
      v17 = v16;
      if (!v15)
      {
        goto LABEL_22;
      }

      v18 = *(v0 + 16);
      v19 = sub_20D9CB2EC(v16);
      if ((v20 & 1) == 0)
      {
        goto LABEL_22;
      }

      v21 = *(*(v7 + 56) + 8 * v19);
      if ((v21 & 0xC000000000000001) != 0)
      {
        if (v21 < 0)
        {
          v22 = *(*(v7 + 56) + 8 * v19);
        }

        v23 = *(*(v7 + 56) + 8 * v19);

        v24 = sub_20DD655B4();

        if (v24)
        {
          goto LABEL_19;
        }

LABEL_22:
        sub_20DD65754();
        v25 = *(v65 + 16);
        sub_20DD65784();
        sub_20DD65794();
        sub_20DD65764();
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (!*(v21 + 16))
        {
          goto LABEL_22;
        }

LABEL_19:

        if (!v10)
        {
          goto LABEL_9;
        }
      }
    }
  }

  if (qword_27C842428 != -1)
  {
LABEL_41:
    swift_once();
  }

  v2 = sub_20DD64C44();
  __swift_project_value_buffer(v2, qword_27C843650);
  v3 = sub_20DD64C24();
  v4 = sub_20DD65384();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20D9BF000, v3, v4, "Nothing changed", v5, 2u);
    MEMORY[0x20F327D10](v5, -1, -1);
  }

LABEL_63:
  v58 = *(v0 + 8);
  v59 = (*(v0 + 160) & 1) == 0;

  return v58(v59);
}

uint64_t sub_20D9ED1C8()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_20D9ED2F4, v3, 0);
}

uint64_t sub_20D9ED2F4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);

  if ((v1 + 1) != v2)
  {
    v24 = *(v0 + 56) + 1;
    *(v0 + 56) = v24;
    v25 = *(v0 + 40);
    if ((v25 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x20F326680]();
    }

    else
    {
      v26 = *(v25 + 8 * v24 + 32);
    }

    v2 = v26;
    *(v0 + 64) = v26;
    if (*(*(v0 + 24) + 16) && (v30 = sub_20D9CB2EC(v26), (v31 & 1) != 0))
    {
      v32 = *(*(*(v0 + 24) + 56) + 8 * v30);
    }

    else
    {
      if (MEMORY[0x277D84F90] >> 62)
      {
LABEL_49:
        if (sub_20DD655B4())
        {
          sub_20D9EE5C0(MEMORY[0x277D84F90], &qword_27C843978, &qword_20DD93FE0, &qword_280E02100, 0x277CD1970);
          v32 = v39;
          goto LABEL_32;
        }
      }

      v32 = MEMORY[0x277D84FA0];
    }

LABEL_32:
    *(v0 + 72) = v32;
    v33 = swift_task_alloc();
    *(v0 + 80) = v33;
    *v33 = v0;
    v33[1] = sub_20D9ED1C8;
    v34 = 0;
LABEL_33:

    return sub_20D9EC494(v34, v2, v32);
  }

  v3 = *(v0 + 40);
  v4 = *(v0 + 16);

  v5 = *(v4 + 32);
  *(v0 + 161) = v5;
  v6 = 1 << v5;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v4 + 64);

  v9 = 0;
  v10 = MEMORY[0x277D84FA0];
  v11 = MEMORY[0x277D84F90] >> 62;
  if (v8)
  {
    while (1)
    {
      v12 = *(v0 + 16);
      *(v0 + 88) = v8;
      *(v0 + 96) = v9;
      v14 = *(v0 + 24);
      v15 = (v9 << 9) | (8 * __clz(__rbit64(v8)));
      v16 = *(*(v12 + 48) + v15);
      *(v0 + 104) = v16;
      v17 = *(*(v12 + 56) + v15);
      *(v0 + 112) = v17;
      v18 = *(v14 + 16);
      v2 = v16;

      if (!v18)
      {
        goto LABEL_14;
      }

LABEL_11:
      v19 = sub_20D9CB2EC(v2);
      if (v20)
      {
        v21 = *(*(*(v0 + 24) + 56) + 8 * v19);
      }

      else
      {
LABEL_14:
        if (v11 && (v22 = MEMORY[0x277D84F90], sub_20DD655B4()))
        {
          sub_20D9EE5C0(v22, &qword_27C843978, &qword_20DD93FE0, &qword_280E02100, 0x277CD1970);
          v21 = v23;
        }

        else
        {
          v21 = v10;
        }
      }

      *(v0 + 120) = v21;
      if ((sub_20DA2C03C(v17, v21) & 1) == 0)
      {
        break;
      }

      v8 &= v8 - 1;

      if (!v8)
      {
        goto LABEL_7;
      }
    }

    if ((v21 & 0xC000000000000001) != 0)
    {

      v35 = sub_20DD655B4();
      if ((v17 & 0xC000000000000001) != 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v35 = *(v21 + 16);

      if ((v17 & 0xC000000000000001) != 0)
      {
LABEL_38:
        if (v17 < 0)
        {
          v36 = v17;
        }

        else
        {
          v36 = v17 & 0xFFFFFFFFFFFFFF8;
        }

        if (v35 > sub_20DD655B4() / 8)
        {
          v37 = sub_20DD655B4();
          v17 = sub_20D9E3788(v36, v37);
LABEL_45:
          v32 = sub_20DA86820(v21, v17);
LABEL_47:
          *(v0 + 128) = v32;
          v38 = swift_task_alloc();
          *(v0 + 136) = v38;
          *v38 = v0;
          v38[1] = sub_20D9ED798;
          v34 = 1;
          goto LABEL_33;
        }

LABEL_46:
        sub_20D9E9C28(v21, &qword_280E02100, 0x277CD1970, &unk_280E020F0, sub_20D9EA074);
        v32 = v17;
        goto LABEL_47;
      }
    }

    if (v35 > *(v17 + 16) >> 3)
    {
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  while (1)
  {
LABEL_7:
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    v12 = *(v0 + 16);
    if (v13 >= (((1 << *(v0 + 161)) + 63) >> 6))
    {
      break;
    }

    v8 = *(v12 + 8 * v13 + 64);
    ++v9;
    if (v8)
    {
      v9 = v13;
      goto LABEL_11;
    }
  }

  v27 = *(v0 + 8);
  v28 = (*(v0 + 160) & 1) == 0;

  return v27(v28);
}

uint64_t sub_20D9ED798()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_20D9ED8C4, v3, 0);
}

uint64_t sub_20D9ED8C4()
{
  v1 = v0[14];
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = v0[14];
    }

    v3 = sub_20DD655B4();
  }

  else
  {
    v3 = *(v1 + 16);
  }

  v4 = v0[15];
  if ((v4 & 0xC000000000000001) != 0)
  {
    if (v4 < 0)
    {
      v5 = v0[15];
    }

    else
    {
      v5 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3 > sub_20DD655B4() / 8)
    {
      v6 = sub_20DD655B4();
      v4 = sub_20D9E3788(v5, v6);
LABEL_13:
      v7 = sub_20DA86820(v0[14], v4);

      goto LABEL_16;
    }

    v4 = v0[15];
  }

  else if (v3 > *(v4 + 16) >> 3)
  {
    goto LABEL_13;
  }

  v11 = v4;
  sub_20D9E9C28(v0[14], &qword_280E02100, 0x277CD1970, &unk_280E020F0, sub_20D9EA074);

  v7 = v11;
LABEL_16:
  v0[18] = v7;
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_20D9EDA58;
  v9 = v0[13];

  return sub_20D9EC494(0, v9, v7);
}

uint64_t sub_20D9EDA58()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_20D9EDB84, v3, 0);
}

void sub_20D9EDB84()
{
  v1 = *(v0 + 96);
  v2 = (*(v0 + 88) - 1) & *(v0 + 88);
  v3 = MEMORY[0x277D84FA0];
  v4 = MEMORY[0x277D84F90] >> 62;
  if (v2)
  {
    while (1)
    {
      v5 = *(v0 + 16);
      *(v0 + 88) = v2;
      *(v0 + 96) = v1;
      v7 = *(v0 + 24);
      v8 = (v1 << 9) | (8 * __clz(__rbit64(v2)));
      v9 = *(*(v5 + 48) + v8);
      *(v0 + 104) = v9;
      v10 = *(*(v5 + 56) + v8);
      *(v0 + 112) = v10;
      v11 = *(v7 + 16);
      v12 = v9;

      if (!v11)
      {
        goto LABEL_10;
      }

LABEL_7:
      v13 = sub_20D9CB2EC(v12);
      if (v14)
      {
        v15 = *(*(*(v0 + 24) + 56) + 8 * v13);
      }

      else
      {
LABEL_10:
        if (v4 && (v16 = MEMORY[0x277D84F90], sub_20DD655B4()))
        {
          sub_20D9EE5C0(v16, &qword_27C843978, &qword_20DD93FE0, &qword_280E02100, 0x277CD1970);
          v15 = v17;
        }

        else
        {
          v15 = v3;
        }
      }

      *(v0 + 120) = v15;
      if ((sub_20DA2C03C(v10, v15) & 1) == 0)
      {
        break;
      }

      v2 &= v2 - 1;

      if (!v2)
      {
        goto LABEL_3;
      }
    }

    if ((v15 & 0xC000000000000001) != 0)
    {

      v20 = sub_20DD655B4();
      if ((v10 & 0xC000000000000001) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v20 = *(v15 + 16);

      if ((v10 & 0xC000000000000001) != 0)
      {
LABEL_22:
        if (v10 < 0)
        {
          v21 = v10;
        }

        else
        {
          v21 = v10 & 0xFFFFFFFFFFFFFF8;
        }

        if (v20 > sub_20DD655B4() / 8)
        {
          v22 = sub_20DD655B4();
          v10 = sub_20D9E3788(v21, v22);
LABEL_29:
          v23 = sub_20DA86820(v15, v10);
LABEL_31:
          *(v0 + 128) = v23;
          v24 = swift_task_alloc();
          *(v0 + 136) = v24;
          *v24 = v0;
          v24[1] = sub_20D9ED798;

          sub_20D9EC494(1, v12, v23);
          return;
        }

LABEL_30:
        sub_20D9E9C28(v15, &qword_280E02100, 0x277CD1970, &unk_280E020F0, sub_20D9EA074);
        v23 = v10;
        goto LABEL_31;
      }
    }

    if (v20 > *(v10 + 16) >> 3)
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  while (1)
  {
LABEL_3:
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    v5 = *(v0 + 16);
    if (v6 >= (((1 << *(v0 + 161)) + 63) >> 6))
    {
      break;
    }

    v2 = *(v5 + 8 * v6 + 64);
    ++v1;
    if (v2)
    {
      v1 = v6;
      goto LABEL_7;
    }
  }

  v18 = *(v0 + 8);
  v19 = (*(v0 + 160) & 1) == 0;

  v18(v19);
}

unint64_t sub_20D9EDED8(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  v6 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v6)
  {
    v7 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v8 = MEMORY[0x277D84F90];
    v31 = isUniquelyReferenced_nonNull_bridgeObject;
    v32 = v6;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x20F326680](v7, v31);
      }

      else
      {
        if (v7 >= *(v34 + 16))
        {
          goto LABEL_44;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v33 + 8 * v7);
      }

      v9 = isUniquelyReferenced_nonNull_bridgeObject;
      v10 = __OFADD__(v7++, 1);
      if (v10)
      {
        break;
      }

      v42 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = v5;
      sub_20D9DCD90(&v42, a2, a4, &v41);
      if (v5)
      {
        goto LABEL_42;
      }

      v12 = v41;
      v9 = (v41 >> 62);
      if (v41 >> 62)
      {
        v13 = sub_20DD655B4();
      }

      else
      {
        v13 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = v8 >> 62;
      if (v8 >> 62)
      {
        v28 = sub_20DD655B4();
        v16 = v28 + v13;
        if (__OFADD__(v28, v13))
        {
LABEL_41:
          __break(1u);
LABEL_42:

          return v8;
        }
      }

      else
      {
        v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v16 = v15 + v13;
        if (__OFADD__(v15, v13))
        {
          goto LABEL_41;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v39 = v13;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v14)
        {
          goto LABEL_22;
        }

        v17 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v14)
        {
LABEL_22:
          sub_20DD655B4();
          goto LABEL_23;
        }

        v17 = v8 & 0xFFFFFFFFFFFFFF8;
      }

      v18 = *(v17 + 16);
LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_20DD65734();
      v8 = isUniquelyReferenced_nonNull_bridgeObject;
      v17 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_20DD655B4();
        v21 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_4:

          if (v39 > 0)
          {
            goto LABEL_45;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v21)
        {
          goto LABEL_4;
        }
      }

      if (((v20 >> 1) - v19) < v39)
      {
        goto LABEL_46;
      }

      v38 = v8;
      v5 = v17 + 8 * v19 + 32;
      if (v9)
      {
        if (v21 < 1)
        {
          goto LABEL_48;
        }

        sub_20D9EF5F8(&qword_27C8439E8, &qword_27C8439E0, &qword_20DD94078);
        for (i = 0; i != v21; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8439E0, &qword_20DD94078);
          v23 = sub_20D9EACFC(v40, i, v12);
          v25 = *v24;
          (v23)(v40, 0);
          *(v5 + 8 * i) = v25;
        }
      }

      else
      {
        sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
        swift_arrayInitWithCopy();
      }

      v5 = v11;
      v8 = v38;
      if (v39 >= 1)
      {
        v26 = *(v17 + 16);
        v10 = __OFADD__(v26, v39);
        v27 = v26 + v39;
        if (v10)
        {
          goto LABEL_47;
        }

        *(v17 + 16) = v27;
      }

LABEL_5:
      if (v7 == v32)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v6 = sub_20DD655B4();
    isUniquelyReferenced_nonNull_bridgeObject = v29;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_20D9EE274(uint64_t a1)
{
  v2 = sub_20DD641A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843990, &qword_20DD93FF8);
    v10 = sub_20DD656D4();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_20D9EBA28(&qword_27C8435C0, 255, MEMORY[0x277D15F40]);
      v18 = sub_20DD64E24();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_20D9EBA28(&qword_27C8435D0, 255, MEMORY[0x277D15F40]);
          v25 = sub_20DD64E64();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_20D9EE5C0(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = sub_20DD655B4();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v7 = sub_20DD656D4();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_20DD655B4();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x277D84FA0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v48 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v44 = v5;
    while (1)
    {
      v15 = MEMORY[0x20F326680](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = *(v7 + 40);
      v19 = sub_20DD65444();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = *(v13 + 8 * (v21 >> 6));
      v24 = 1 << v21;
      if (((1 << v21) & v23) != 0)
      {
        v25 = ~v20;
        sub_20D9D7510(0, a4, a5);
        while (1)
        {
          v26 = *(*(v7 + 48) + 8 * v21);
          v27 = sub_20DD65454();

          if (v27)
          {
            break;
          }

          v21 = (v21 + 1) & v25;
          v22 = v21 >> 6;
          v23 = *(v13 + 8 * (v21 >> 6));
          v24 = 1 << v21;
          if (((1 << v21) & v23) == 0)
          {
            v9 = v48;
            v5 = v44;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v48;
        v5 = v44;
        if (v14 == v48)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v22) = v24 | v23;
        *(*(v7 + 48) + 8 * v21) = v17;
        v28 = *(v7 + 16);
        v16 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v29;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v30 = 0;
    v45 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v30 != v45)
    {
      v31 = *(v7 + 40);
      v32 = *(v5 + 32 + 8 * v30);
      v33 = sub_20DD65444();
      v34 = -1 << *(v7 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      v37 = *(v13 + 8 * (v35 >> 6));
      v38 = 1 << v35;
      if (((1 << v35) & v37) != 0)
      {
        v39 = ~v34;
        sub_20D9D7510(0, a4, a5);
        while (1)
        {
          v40 = *(*(v7 + 48) + 8 * v35);
          v41 = sub_20DD65454();

          if (v41)
          {
            break;
          }

          v35 = (v35 + 1) & v39;
          v36 = v35 >> 6;
          v37 = *(v13 + 8 * (v35 >> 6));
          v38 = 1 << v35;
          if (((1 << v35) & v37) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v36) = v38 | v37;
        *(*(v7 + 48) + 8 * v35) = v32;
        v42 = *(v7 + 16);
        v16 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v43;
      }

      if (++v30 == v48)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_20D9EE93C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843848, &qword_20DD93F20);
    v3 = sub_20DD656D4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_20DD65A64();

      sub_20DD64F24();
      result = sub_20DD65AA4();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_20DD65974();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
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
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_20D9EEAEC(uint64_t a1)
{
  v2 = sub_20DD64674();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8438B0, &qword_20DD93F68);
    v10 = sub_20DD656D4();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_20D9EBA28(&qword_27C8438A0, 255, MEMORY[0x277D17688]);
      v18 = sub_20DD64E24();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_20D9EBA28(&qword_27C8438A8, 255, MEMORY[0x277D17688]);
          v25 = sub_20DD64E64();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_20D9EEE3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843B60, &qword_20DD93ED8);
    v3 = sub_20DD656D4();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_20DD64EB4();
      sub_20DD65A64();
      v29 = v7;
      sub_20DD64F24();
      v9 = sub_20DD65AA4();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_20DD64EB4();
        v20 = v19;
        if (v18 == sub_20DD64EB4() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_20DD65974();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_20D9EF030(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_20DD655B4())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843800, &unk_20DD93EF0);
      v3 = sub_20DD656D4();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_20DD655B4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = MEMORY[0x20F326680](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_20DD65444();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        _s19ItemSearchContainerCMa();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_20DD65454();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = sub_20DD65444();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        _s19ItemSearchContainerCMa();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_20DD65454();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v9 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_20D9EF2FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D9D77C4;

  return sub_20DA206D0(a1, v5);
}

uint64_t sub_20D9EF3B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D9C76B4;

  return sub_20DA206D0(a1, v5);
}

uint64_t sub_20D9EF46C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_20D9EF478(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D9D77C4;

  return sub_20D9D94B0(a1, v4, v5, v6);
}

uint64_t sub_20D9EF52C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843668, &qword_20DD93CB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_20D9EF5F8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t HFItemManager.reloadAndUpdateAllItems(sender:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_20DD650F4();
  v2[6] = sub_20DD650E4();
  v4 = sub_20DD65094();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_20D9EF6F0, v4, v3);
}

uint64_t sub_20D9EF6F0()
{
  v1 = *(v0 + 40);
  v2 = [*(v0 + 32) reloadAndUpdateAllItemsFromSenderSelector_];
  *(v0 + 72) = v2;
  v3 = sub_20DD650E4();
  *(v0 + 80) = v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *(v4 + 16) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  v7 = sub_20D9EFC10();
  *v6 = v0;
  v6[1] = sub_20D9EF81C;
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v0 + 16, v3, v8, 0xD000000000000020, 0x800000020DD97F80, sub_20D9EFC08, v4, v7);
}

uint64_t sub_20D9EF81C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v10 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_20D9EF9C0;
  }

  else
  {
    v7 = v2[10];
    v8 = v2[11];

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_20D9EF940;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20D9EF940()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = ~(*(v0 + 16) >> 1) & 0x4000000000000000 | *(v0 + 16);

  return v2(v3);
}

uint64_t sub_20D9EF9C0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];
  v6 = v0[13];

  return v5();
}

void sub_20D9EFA48(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8439F8, &unk_20DD94090);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_20D9EFD14;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20DA1AA10;
  aBlock[3] = &block_descriptor_0;
  v11 = _Block_copy(aBlock);

  v12 = [a2 addCompletionBlock_];
  _Block_release(v11);
}

unint64_t sub_20D9EFC10()
{
  result = qword_27C8439F0;
  if (!qword_27C8439F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C8439F0);
  }

  return result;
}

id sub_20D9EFC5C(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8439F8, &unk_20DD94090);
    return sub_20DD650A4();
  }

  if (a1)
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8439F8, &unk_20DD94090);
    return sub_20DD650B4();
  }

  else
  {
    result = [objc_opt_self() na_genericError];
    if (result)
    {
      goto LABEL_3;
    }

    __break(1u);
  }

  return result;
}

id sub_20D9EFD14(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8439F8, &unk_20DD94090) - 8) + 80);

  return sub_20D9EFC5C(a1, a2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20D9EFDCC(uint64_t a1, uint64_t a2)
{
  v3 = sub_20DD641A4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_20D9F498C(&qword_27C8435C0, MEMORY[0x277D15F40]), v9 = sub_20DD64E24(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_20D9F498C(&qword_27C8435D0, MEMORY[0x277D15F40]);
      v17 = sub_20DD64E64();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_20D9EFFE4(uint64_t a1, uint64_t a2)
{
  v3 = sub_20DD641F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_20D9F498C(&qword_27C843998, MEMORY[0x277D16340]), v9 = sub_20DD64E24(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_20D9F498C(&unk_27C8439A0, MEMORY[0x277D16340]);
      v17 = sub_20DD64E64();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_20D9F0210(void *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = a1;
    v6 = sub_20DD65604();
  }

  else if (*(a2 + 16) && (sub_20D9D7510(0, a3, a4), v7 = *(a2 + 40), v8 = sub_20DD65444(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v11 = ~v9;
    do
    {
      v12 = *(*(a2 + 48) + 8 * v10);
      v6 = sub_20DD65454();

      if (v6)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t MatterAccessoryRepresentable.tilePath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath;
  v4 = sub_20DD63FE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_20D9F0398(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v14[-v9];
  sub_20D9D7558(a1, &v14[-v9], &qword_27C843A20, &qword_20DD940B0);
  v11 = *a2;
  v12 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  sub_20D9D7558(v11 + v12, v8, &qword_27C843A20, &qword_20DD940B0);
  swift_beginAccess();
  sub_20D9F0D50(v10, v11 + v12);
  swift_endAccess();
  sub_20D9F04E4(v8);
  sub_20D9D76EC(v8, &qword_27C843A20, &qword_20DD940B0);
  return sub_20D9D76EC(v10, &qword_27C843A20, &qword_20DD940B0);
}

uint64_t sub_20D9F04E4(uint64_t a1)
{
  v2 = v1;
  v37 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_20DD64294();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v34 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v33 = &v31[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v36 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v31[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843B18, &qword_20DD94178);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v31[-v18];
  v20 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  v21 = *(v16 + 56);
  sub_20D9D7558(v37, v19, &qword_27C843A20, &qword_20DD940B0);
  sub_20D9D7558(v2 + v20, &v19[v21], &qword_27C843A20, &qword_20DD940B0);
  v37 = v4;
  v22 = *(v4 + 48);
  if (v22(v19, 1, v3) == 1)
  {
    if (v22(&v19[v21], 1, v3) == 1)
    {
      return sub_20D9D76EC(v19, &qword_27C843A20, &qword_20DD940B0);
    }
  }

  else
  {
    sub_20D9D7558(v19, v14, &qword_27C843A20, &qword_20DD940B0);
    if (v22(&v19[v21], 1, v3) != 1)
    {
      v28 = v37;
      v29 = v33;
      (*(v37 + 32))(v33, &v19[v21], v3);
      sub_20D9F498C(&unk_27C843B20, MEMORY[0x277D16408]);
      v32 = sub_20DD64E64();
      v30 = *(v28 + 8);
      v30(v29, v3);
      v30(v14, v3);
      result = sub_20D9D76EC(v19, &qword_27C843A20, &qword_20DD940B0);
      if (v32)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v37 + 8))(v14, v3);
  }

  sub_20D9D76EC(v19, &qword_27C843B18, &qword_20DD94178);
LABEL_7:
  v24 = v36;
  sub_20D9D7558(v2 + v20, v36, &qword_27C843A20, &qword_20DD940B0);
  if (v22(v24, 1, v3) == 1)
  {
    sub_20D9D76EC(v24, &qword_27C843A20, &qword_20DD940B0);
    v39 = 0;
    memset(v38, 0, sizeof(v38));
  }

  else
  {
    v25 = v37;
    v26 = v34;
    (*(v37 + 32))(v34, v24, v3);
    sub_20D9F0980(v26, v38);
    (*(v25 + 8))(v26, v3);
  }

  v27 = OBJC_IVAR___HFMatterAccessoryRepresentable__tileInfo;
  swift_beginAccess();
  sub_20D9F4A38(v38, v2 + v27);
  return swift_endAccess();
}

uint64_t sub_20D9F0980@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_20DD64054();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = sub_20DD63F84();
  if ((v12 & 0x10000) == 0)
  {
    v13 = v12;
    v14 = sub_20DD64284();
    if (*(v14 + 16))
    {
      v15 = sub_20D9CB188(v13);
      if (v16)
      {
        (*(v5 + 16))(v9, *(v14 + 56) + *(v5 + 72) * v15, v4);

        v17 = *(v5 + 32);
        v17(v11, v9, v4);
        a2[3] = v4;
        a2[4] = sub_20D9F498C(&qword_27C843B10, MEMORY[0x277D15C38]);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
        return (v17)(boxed_opaque_existential_1, v11, v4);
      }
    }
  }

  v20 = sub_20DD64294();
  a2[3] = v20;
  a2[4] = sub_20D9F498C(&qword_27C843D60, MEMORY[0x277D16408]);
  v21 = __swift_allocate_boxed_opaque_existential_1(a2);
  v22 = *(*(v20 - 8) + 16);

  return v22(v21, a1, v20);
}

uint64_t sub_20D9F0BDC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  return sub_20D9D7558(v1 + v3, a1, &qword_27C843A20, &qword_20DD940B0);
}

uint64_t sub_20D9F0C44(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9[-v5];
  v7 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  sub_20D9D7558(v1 + v7, v6, &qword_27C843A20, &qword_20DD940B0);
  swift_beginAccess();
  sub_20D9F0D50(a1, v1 + v7);
  swift_endAccess();
  sub_20D9F04E4(v6);
  sub_20D9D76EC(a1, &qword_27C843A20, &qword_20DD940B0);
  return sub_20D9D76EC(v6, &qword_27C843A20, &qword_20DD940B0);
}

uint64_t sub_20D9F0D50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void (*sub_20D9F0DC0(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_20D9D7558(v1 + v9, v8, &qword_27C843A20, &qword_20DD940B0);
  return sub_20D9F0EF0;
}

void sub_20D9F0EF0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_20D9D7558(*(*a1 + 96), v6, &qword_27C843A20, &qword_20DD940B0);
    sub_20D9D7558(v7 + v4, v5, &qword_27C843A20, &qword_20DD940B0);
    swift_beginAccess();
    sub_20D9F0D50(v6, v7 + v4);
    swift_endAccess();
    sub_20D9F04E4(v5);
    sub_20D9D76EC(v5, &qword_27C843A20, &qword_20DD940B0);
  }

  else
  {
    sub_20D9D7558(v7 + v4, v6, &qword_27C843A20, &qword_20DD940B0);
    swift_beginAccess();
    sub_20D9F0D50(v3, v7 + v4);
    swift_endAccess();
    sub_20D9F04E4(v6);
  }

  sub_20D9D76EC(v6, &qword_27C843A20, &qword_20DD940B0);
  sub_20D9D76EC(v3, &qword_27C843A20, &qword_20DD940B0);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_20D9F105C@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15[-v5];
  v7 = sub_20DD64294();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR___HFMatterAccessoryRepresentable__tileInfo;
  swift_beginAccess();
  sub_20D9D7558(v1 + v12, &v16, &qword_27C843A30, &qword_20DD940B8);
  if (v17)
  {
    return sub_20D9C51D4(&v16, a1);
  }

  sub_20D9D76EC(&v16, &qword_27C843A30, &qword_20DD940B8);
  v14 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  sub_20D9D7558(v1 + v14, v6, &qword_27C843A20, &qword_20DD940B0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_20D9D76EC(v6, &qword_27C843A20, &qword_20DD940B0);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    sub_20D9F0980(v11, a1);
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

id MatterAccessoryRepresentable.__allocating_init(accessory:tilePath:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  v7 = sub_20DD64294();
  (*(*(v7 - 8) + 56))(&v5[v6], 1, 1, v7);
  v8 = &v5[OBJC_IVAR___HFMatterAccessoryRepresentable__tileInfo];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *&v5[OBJC_IVAR___HFMatterAccessoryRepresentable_accessory] = a1;
  v9 = OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath;
  v10 = sub_20DD63FE4();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v5[v9], a2, v10);
  v14.receiver = v5;
  v14.super_class = v2;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  (*(v11 + 8))(a2, v10);
  return v12;
}

id MatterAccessoryRepresentable.init(accessory:tilePath:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  v6 = sub_20DD64294();
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  v7 = &v2[OBJC_IVAR___HFMatterAccessoryRepresentable__tileInfo];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *&v2[OBJC_IVAR___HFMatterAccessoryRepresentable_accessory] = a1;
  v8 = OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath;
  v9 = sub_20DD63FE4();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v2[v8], a2, v9);
  v13.receiver = v2;
  v13.super_class = type metadata accessor for MatterAccessoryRepresentable();
  v11 = objc_msgSendSuper2(&v13, sel_init);
  (*(v10 + 8))(a2, v9);
  return v11;
}

uint64_t type metadata accessor for MatterAccessoryRepresentable()
{
  result = qword_27C843A90;
  if (!qword_27C843A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MatterAccessoryRepresentable.init(accessory:)(void *a1)
{
  v2 = v1;
  v4 = sub_20DD63744();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_20DD63FE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DD65334();
  if ((v11 & 1) != 0 || (v12 = [a1 home]) == 0)
  {

    swift_getObjectType();
    v25 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v26 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v13 = v12;
    v14 = a1;
    v15 = [v13 uniqueIdentifier];
    sub_20DD63714();

    sub_20DD63FB4();
    v16 = type metadata accessor for MatterAccessoryRepresentable();
    v17 = objc_allocWithZone(v16);
    v18 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
    v19 = sub_20DD64294();
    (*(*(v19 - 8) + 56))(&v17[v18], 1, 1, v19);
    v20 = &v17[OBJC_IVAR___HFMatterAccessoryRepresentable__tileInfo];
    *v20 = 0u;
    *(v20 + 1) = 0u;
    *(v20 + 4) = 0;
    *&v17[OBJC_IVAR___HFMatterAccessoryRepresentable_accessory] = v14;
    (*(v7 + 16))(&v17[OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath], v10, v6);
    v29.receiver = v17;
    v29.super_class = v16;
    v21 = objc_msgSendSuper2(&v29, sel_init);
    (*(v7 + 8))(v10, v6);
    swift_getObjectType();
    v22 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v23 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    v24 = v21;
    sub_20D9F18F4();
  }

  return v24;
}

uint64_t sub_20D9F18F4()
{
  v1 = v0;
  v2 = sub_20DD64354();
  v28 = *(v2 - 8);
  v29 = v2;
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  sub_20D9D7558(v0 + v15, v14, &qword_27C843A20, &qword_20DD940B0);
  v16 = sub_20DD64294();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v14, 1, v16);
  result = sub_20D9D76EC(v14, &qword_27C843A20, &qword_20DD940B0);
  if (v18 == 1)
  {
    sub_20DD63C84();
    v20 = sub_20DD63C64();
    sub_20DD63BF4();

    v21 = sub_20DD642E4();
    (*(v28 + 8))(v5, v29);
    v22 = sub_20DD63FD4();
    if (*(v21 + 16) && (v23 = sub_20D9CB2A8(v22), (v24 & 1) != 0))
    {
      (*(v17 + 16))(v12, *(v21 + 56) + *(v17 + 72) * v23, v16);
      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    (*(v17 + 56))(v12, v25, 1, v16);
    v26 = v30;
    sub_20D9D7558(v1 + v15, v30, &qword_27C843A20, &qword_20DD940B0);
    swift_beginAccess();
    sub_20D9F0D50(v12, v1 + v15);
    swift_endAccess();
    sub_20D9F04E4(v26);
    sub_20D9D76EC(v26, &qword_27C843A20, &qword_20DD940B0);
    return sub_20D9D76EC(v12, &qword_27C843A20, &qword_20DD940B0);
  }

  return result;
}

uint64_t sub_20D9F1C2C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20DD64054();
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = sub_20DD64294();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  sub_20D9D7558(v1 + v18, v12, &qword_27C843A20, &qword_20DD940B0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20D9D76EC(v12, &qword_27C843A20, &qword_20DD940B0);
    v19 = sub_20DD641A4();
    return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
  }

  (*(v14 + 32))(v17, v12, v13);
  v21 = sub_20DD63F84();
  if ((v21 & 0x10000) != 0)
  {
    sub_20DD64204();
    return (*(v14 + 8))(v17, v13);
  }

  v22 = v21;
  v23 = sub_20DD64284();
  if (*(v23 + 16))
  {
    v24 = sub_20D9CB188(v22);
    if (v25)
    {
      v27 = v30;
      v26 = v31;
      v28 = v32;
      (*(v31 + 16))(v30, *(v23 + 56) + *(v31 + 72) * v24, v32);

      (*(v26 + 32))(v8, v27, v28);
      sub_20DD64044();
      (*(v26 + 8))(v8, v28);
      return (*(v14 + 8))(v17, v13);
    }
  }

  (*(v14 + 8))(v17, v13);
  v29 = sub_20DD641A4();
  return (*(*(v29 - 8) + 56))(a1, 1, 1, v29);
}

id MatterAccessoryRepresentable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MatterAccessoryRepresentable.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MatterAccessoryRepresentable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20D9F2158()
{
  v0 = sub_20DD64C44();
  __swift_allocate_value_buffer(v0, qword_27C843A00);
  __swift_project_value_buffer(v0, qword_27C843A00);
  return sub_20DD64C34();
}

uint64_t MatterAccessoryRepresentable.__hf_canShowInControlCenter.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A38, &unk_20DD940C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v25 - v3;
  v5 = sub_20DD641A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D9F1C2C(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_20D9D76EC(v4, &unk_27C843A38, &unk_20DD940C0);
    if (qword_27C842430 != -1)
    {
      swift_once();
    }

    v10 = sub_20DD64C44();
    __swift_project_value_buffer(v10, qword_27C843A00);
    v11 = v0;
    v12 = sub_20DD64C24();
    v13 = sub_20DD65384();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v14 = 136315394;
      *(v14 + 4) = sub_20D9E0B38(0xD00000000000001BLL, 0x800000020DD98000, &v26);
      *(v14 + 12) = 2114;
      *(v14 + 14) = v11;
      *v15 = v11;
      v17 = v11;
      _os_log_impl(&dword_20D9BF000, v12, v13, "%s:%{public}@ deviceTypes is empty", v14, 0x16u);
      sub_20D9D76EC(v15, &unk_27C843630, &qword_20DD94080);
      MEMORY[0x20F327D10](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x20F327D10](v16, -1, -1);
      MEMORY[0x20F327D10](v14, -1, -1);
    }

    v18 = 0;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A48, &qword_20DD940D0);
    v19 = *(v6 + 72);
    v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_20DD93A70;
    (*(v6 + 104))(v21 + v20, *MEMORY[0x277D15EE8], v5);
    v22 = sub_20D9EE274(v21);
    swift_setDeallocating();
    v23 = *(v6 + 8);
    v23(v21 + v20, v5);
    swift_deallocClassInstance();
    LOBYTE(v21) = sub_20D9EFDCC(v9, v22);

    v23(v9, v5);
    v18 = v21 ^ 1;
  }

  return v18 & 1;
}

id MatterAccessoryRepresentable.__hf_safeRoom.getter()
{
  v1 = [*(v0 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) room];

  return v1;
}

id MatterAccessoryRepresentable.__hf_isIdentifiable.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A50, &qword_20DD940D8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A58, &unk_20DD940E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = sub_20DD64294();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  sub_20D9D7558(v0 + v18, v12, &qword_27C843A20, &qword_20DD940B0);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    (*(v14 + 32))(v17, v12, v13);
    sub_20DD64224();
    v20 = sub_20DD64054();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v4, 1, v20) == 1)
    {
      (*(v14 + 8))(v17, v13);
      sub_20D9D76EC(v4, &qword_27C843A50, &qword_20DD940D8);
      v22 = sub_20DD64004();
      (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
    }

    else
    {
      sub_20DD64024();
      (*(v14 + 8))(v17, v13);
      (*(v21 + 8))(v4, v20);
      v23 = sub_20DD64004();
      v19 = 1;
      if ((*(*(v23 - 8) + 48))(v8, 1, v23) != 1)
      {
LABEL_7:
        sub_20D9D76EC(v8, &qword_27C843A58, &unk_20DD940E0);
        return v19;
      }
    }

    v19 = 0;
    goto LABEL_7;
  }

  sub_20D9D76EC(v12, &qword_27C843A20, &qword_20DD940B0);
  return [*(v0 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) hf_isIdentifiable];
}

id sub_20D9F2BC4(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  if (MEMORY[0x277D84F90] >> 62 && sub_20DD655B4())
  {
    a3(MEMORY[0x277D84F90]);
  }

  sub_20D9D7510(0, a4, a5);
  sub_20D9EC18C(a6, a4, a5);
  v9 = sub_20DD651C4();

  return v9;
}

uint64_t sub_20D9F2CAC(uint64_t (*a1)(uint64_t))
{
  if (!(MEMORY[0x277D84F90] >> 62) || !sub_20DD655B4())
  {
    return MEMORY[0x277D84FA0];
  }

  v3 = MEMORY[0x277D84F90];

  return a1(v3);
}

uint64_t MatterAccessoryRepresentable.__hf_associatedAccessories.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD940A0;
  v2 = *(v0 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory);
  *(inited + 32) = v2;
  v3 = v2;
  sub_20D9EE8D0(inited);
  v5 = v4;
  swift_setDeallocating();
  v6 = *(inited + 16);
  swift_arrayDestroy();
  return v5;
}

Swift::Bool __swiftcall MatterAccessoryRepresentable.__hf_is(in:)(HMRoom in)
{
  isa = in.super.isa;
  v2 = sub_20DD63744();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A68, &unk_20DD940F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = [*(v1 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) room];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 uniqueIdentifier];

    sub_20DD63714();
    v22 = *(v3 + 56);
    v22(v18, 0, 1, v2);
  }

  else
  {
    v22 = *(v3 + 56);
    v22(v18, 1, 1, v2);
  }

  v23 = [(objc_class *)isa uniqueIdentifier];
  sub_20DD63714();

  v22(v16, 0, 1, v2);
  v24 = *(v6 + 48);
  sub_20D9D7558(v18, v9, &unk_27C843A70, &qword_20DD94260);
  sub_20D9D7558(v16, &v9[v24], &unk_27C843A70, &qword_20DD94260);
  v25 = *(v3 + 48);
  if (v25(v9, 1, v2) != 1)
  {
    v27 = v33;
    sub_20D9D7558(v9, v33, &unk_27C843A70, &qword_20DD94260);
    if (v25(&v9[v24], 1, v2) != 1)
    {
      v28 = v32;
      (*(v3 + 32))(v32, &v9[v24], v2);
      sub_20D9F498C(&qword_280E02288, MEMORY[0x277CC95F0]);
      v26 = sub_20DD64E64();
      v29 = *(v3 + 8);
      v29(v28, v2);
      sub_20D9D76EC(v16, &unk_27C843A70, &qword_20DD94260);
      sub_20D9D76EC(v18, &unk_27C843A70, &qword_20DD94260);
      v29(v27, v2);
      sub_20D9D76EC(v9, &unk_27C843A70, &qword_20DD94260);
      return v26 & 1;
    }

    sub_20D9D76EC(v16, &unk_27C843A70, &qword_20DD94260);
    sub_20D9D76EC(v18, &unk_27C843A70, &qword_20DD94260);
    (*(v3 + 8))(v27, v2);
    goto LABEL_9;
  }

  sub_20D9D76EC(v16, &unk_27C843A70, &qword_20DD94260);
  sub_20D9D76EC(v18, &unk_27C843A70, &qword_20DD94260);
  if (v25(&v9[v24], 1, v2) != 1)
  {
LABEL_9:
    sub_20D9D76EC(v9, &qword_27C843A68, &unk_20DD940F0);
    v26 = 0;
    return v26 & 1;
  }

  sub_20D9D76EC(v9, &unk_27C843A70, &qword_20DD94260);
  v26 = 1;
  return v26 & 1;
}

id MatterAccessoryRepresentable.__hf_move(to:)(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) hf:a1 moveToRoom:?];

  return v2;
}

id MatterAccessoryRepresentable.__hf_accessoryType.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A38, &unk_20DD940C0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - v7;
  v9 = sub_20DD641A4();
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v40 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v39 = &v38 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v38 - v16;
  v18 = sub_20DD64294();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  v41 = v1;
  sub_20D9D7558(v1 + v23, v17, &qword_27C843A20, &qword_20DD940B0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_20D9D76EC(v17, &qword_27C843A20, &qword_20DD940B0);
    v24 = v9;
    v25 = v42;
  }

  else
  {
    (*(v19 + 32))(v22, v17, v18);
    sub_20DD64204();
    v25 = v42;
    v24 = v9;
    if ((*(v42 + 48))(v8, 1, v9) != 1)
    {
      v35 = v39;
      (*(v25 + 32))(v39, v8, v9);
      v36 = objc_opt_self();
      sub_20DD64194();
      v37 = sub_20DD65AC4();
      v34 = [v36 matterDeviceType_];

      (*(v25 + 8))(v35, v24);
      (*(v19 + 8))(v22, v18);
      return v34;
    }

    (*(v19 + 8))(v22, v18);
    sub_20D9D76EC(v8, &unk_27C843A38, &unk_20DD940C0);
  }

  v26 = v41;
  sub_20D9F1C2C(v6);
  if ((*(v25 + 48))(v6, 1, v24) != 1)
  {
    v31 = v40;
    (*(v25 + 32))(v40, v6, v24);
    v32 = objc_opt_self();
    sub_20DD64194();
    v33 = sub_20DD65AC4();
    v34 = [v32 matterDeviceType_];

    (*(v25 + 8))(v31, v24);
    return v34;
  }

  sub_20D9D76EC(v6, &unk_27C843A38, &unk_20DD940C0);
  v27 = [*(v26 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) category];
  v28 = [v27 categoryType];

  if (!v28)
  {
    sub_20DD64EB4();
    v28 = sub_20DD64E74();
  }

  v29 = [objc_opt_self() categoryType_];

  return v29;
}

id MatterAccessoryRepresentable.hf_serviceNameComponents.getter()
{
  v1 = [*(v0 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) hf_serviceNameComponents];

  return v1;
}

id MatterAccessoryRepresentable.updateIsFavorite(_:)(char a1)
{
  v2 = [*(v1 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) hf:a1 & 1 updateIsFavorite:?];

  return v2;
}

id MatterAccessoryRepresentable.updateIsVisibleInHomeStatus(_:)(char a1)
{
  v2 = [*(v1 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) hf:a1 & 1 updateIsVisibleInHomeStatus:?];

  return v2;
}

id MatterAccessoryRepresentable.updateShowInHomeDashboard(_:)(char a1)
{
  v2 = [*(v1 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) hf:a1 & 1 updateShowInHomeDashboard:?];

  return v2;
}

id MatterAccessoryRepresentable.__hf_tileSize.getter()
{
  v1 = [*(v0 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) hf_tileSize];

  return v1;
}

id MatterAccessoryRepresentable.__hf_setTileSize(_:)(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) hf:a1 setTileSize:?];

  return v2;
}

uint64_t MatterAccessoryRepresentable.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_20DD63744();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  sub_20D9D7558(a1, v19, &unk_27C843A80, &qword_20DD94100);
  if (!v20)
  {
    sub_20D9D76EC(v19, &unk_27C843A80, &qword_20DD94100);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v15 = 0;
    return v15 & 1;
  }

  v11 = v18;
  v12 = [*&v18[OBJC_IVAR___HFMatterAccessoryRepresentable_accessory] uniqueIdentifier];
  sub_20DD63714();

  v13 = [*(v1 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) uniqueIdentifier];
  sub_20DD63714();

  LOBYTE(v13) = sub_20DD63704();
  v14 = *(v4 + 8);
  v14(v8, v3);
  v14(v10, v3);
  if ((v13 & 1) == 0)
  {

    goto LABEL_7;
  }

  v15 = MEMORY[0x20F324EF0](&v11[OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath], v1 + OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath);

  return v15 & 1;
}

uint64_t MatterAccessoryRepresentable.hash.getter()
{
  v1 = sub_20DD63744();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DD65AB4();
  sub_20DD63FA4();
  v6 = [*(v0 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) uniqueIdentifier];
  sub_20DD63714();

  sub_20DD63724();
  (*(v2 + 8))(v5, v1);
  return sub_20DD65A94();
}

uint64_t MatterAccessoryRepresentable.__hf_iconIdentifier.getter()
{
  v0 = sub_20DD645F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20DD64604();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D9F105C(&v12);
  if (v13)
  {
    sub_20D9C51D4(&v12, v14);
    __swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_20DD640C4();
    sub_20DD645B4();
    (*(v6 + 8))(v9, v5);
    v10 = sub_20DD645E4();
    (*(v1 + 8))(v4, v0);
    __swift_destroy_boxed_opaque_existential_0(v14);
    return v10;
  }

  else
  {
    sub_20D9D76EC(&v12, &qword_27C843A30, &qword_20DD940B8);
    return sub_20DD64EB4();
  }
}

void sub_20D9F46EC()
{
  v0 = sub_20DD63FE4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_20D9F4934();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_20D9F4934()
{
  if (!qword_27C843AA0)
  {
    sub_20DD64294();
    v0 = sub_20DD65494();
    if (!v1)
    {
      atomic_store(v0, &qword_27C843AA0);
    }
  }
}

uint64_t sub_20D9F498C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_20D9F4A38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A30, &qword_20DD940B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D9F4AB8(uint64_t a1)
{
  v2 = sub_20DD63744();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v26 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v26 - v11;
  v13 = *(a1 + 16);
  v14 = sub_20D9F96B0(&qword_280E02290, MEMORY[0x277CC95F0]);
  result = MEMORY[0x20F326190](v13, v2, v14);
  v16 = 0;
  v27 = a1;
  v28 = result;
  v19 = *(a1 + 64);
  v18 = a1 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v3 + 32;
  v26[3] = v3 + 16;
  v26[1] = v3 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v3 + 16))(v12, *(v27 + 48) + *(v3 + 72) * (v25 | (v24 << 6)), v2);
      (*(v3 + 32))(v7, v12, v2);
      sub_20D9E2834(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20D9F4D18(uint64_t a1)
{
  v2 = sub_20DD63FE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v26 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v26 - v11;
  v13 = *(a1 + 16);
  v14 = sub_20D9F96B0(&qword_27C844380, MEMORY[0x277D15B60]);
  result = MEMORY[0x20F326190](v13, v2, v14);
  v16 = 0;
  v27 = a1;
  v28 = result;
  v19 = *(a1 + 64);
  v18 = a1 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v3 + 32;
  v26[3] = v3 + 16;
  v26[1] = v3 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v3 + 16))(v12, *(v27 + 48) + *(v3 + 72) * (v25 | (v24 << 6)), v2);
      (*(v3 + 32))(v7, v12, v2);
      sub_20D9E2D34(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t static CharacteristicNotificationManager.characteristicsToEnableNotifications(for:)(void *a1)
{
  v1 = MEMORY[0x277D84FA0];
  v17 = MEMORY[0x277D84FA0];
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_0(a1, v2);
  v5 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v14);
  sub_20DD64F64();
  __swift_mutable_project_boxed_opaque_existential_1(v14, AssociatedTypeWitness);
  sub_20DD654A4();
  v9 = v13;
  if (v13)
  {
    do
    {
      static CharacteristicNotificationManager.characteristicsToEnableNotifications(for:)();
      sub_20D9DD25C(v10);

      __swift_mutable_project_boxed_opaque_existential_1(v14, AssociatedTypeWitness);
      sub_20DD654A4();
      v9 = v13;
    }

    while (v13);
    v1 = v17;
  }

  __swift_destroy_boxed_opaque_existential_0(v14);
  return v1;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void static CharacteristicNotificationManager.characteristicsToEnableNotifications(for:)()
{
  v219 = *MEMORY[0x277D85DE8];
  v1 = sub_20DD641F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = (&v190 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v190 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v190 - v11);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v190 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v190 - v16;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = [v18 actionSet];
    v20 = [v19 hf_affectedCharacteristics];

    sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
    sub_20D9EC18C(&unk_280E020F0, &qword_280E02100, 0x277CD1970);
    sub_20DD651E4();

    v21 = *MEMORY[0x277D85DE8];
    return;
  }

  v215 = &unk_28252AFF0;
  v22 = swift_dynamicCastObjCProtocolConditional();
  v210 = v1;
  v199 = v2;
  v209 = v15;
  if (!v22)
  {
    v208 = v0;
    HFItem.subscript.getter(v216, @"dependentHomeKitObjects");
    v60 = MEMORY[0x277D84F90];
    if (v217)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843B40, &qword_20DD94180);
      if (swift_dynamicCast())
      {
        v206 = v9;
        v207 = v6;
        v61 = v214;
        v213 = v60;
        v62 = (v214 + 56);
        v63 = 1 << *(v214 + 32);
        v64 = -1;
        if (v63 < 64)
        {
          v64 = ~(-1 << v63);
        }

        v65 = v60;
        v66 = v64 & *(v214 + 56);
        v67 = (v63 + 63) >> 6;

        v68 = 0;
        while (1)
        {
          v69 = v68;
          if (!v66)
          {
            break;
          }

LABEL_39:
          v70 = __clz(__rbit64(v66));
          v66 &= v66 - 1;
          sub_20D9D7288(*(v61 + 48) + 40 * (v70 | (v68 << 6)), v216);
          v71 = sub_20DD65644();
          sub_20D9D4298(v216);
          objc_opt_self();
          v72 = swift_dynamicCastObjCClass();
          if (v72)
          {
            v205 = v72;
            MEMORY[0x20F325F00]();
            if (*((v213 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v213 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v204 = v61;
              sub_20DD65014();
              v61 = v204;
            }

            sub_20DD65054();
            v65 = v213;
          }

          else
          {
          }
        }

        while (1)
        {
          v68 = v69 + 1;
          if (__OFADD__(v69, 1))
          {
            goto LABEL_150;
          }

          if (v68 >= v67)
          {
            break;
          }

          v66 = *&v62[8 * v68];
          ++v69;
          if (v66)
          {
            goto LABEL_39;
          }
        }

        v106 = sub_20D9F93BC(v65, &qword_280E02100, 0x277CD1970, &unk_280E020F0, sub_20D9E10E0);

        v214 = v106;
        HFItem.subscript.getter(v216, @"childItems");
        if (v217)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843B50, &qword_20DD94188);
          v107 = swift_dynamicCast();
          v108 = MEMORY[0x277D84F90];
          if (v107)
          {
            v109 = v213;
            if ((v213 & 0xC000000000000001) == 0)
            {
LABEL_76:
              v110 = 0;
              v111 = -1 << *(v109 + 32);
              v112 = v109 + 56;
              v113 = ~v111;
              v114 = -v111;
              if (v114 < 64)
              {
                v115 = ~(-1 << v114);
              }

              else
              {
                v115 = -1;
              }

              v116 = v115 & *(v109 + 56);
              goto LABEL_84;
            }

LABEL_83:
            sub_20DD65564();
            sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
            sub_20D9EC18C(&qword_280E01F00, &qword_280E01F10, off_277DEFBE0);
            sub_20DD65284();
            v109 = v216[0];
            v112 = v216[1];
            v113 = v216[2];
            v110 = v217;
            v116 = v218;
LABEL_84:
            v204 = v113;
            v205 = v109;
            v117 = (v113 + 64) >> 6;
            if ((v109 & 0x8000000000000000) == 0)
            {
              goto LABEL_88;
            }

LABEL_85:
            v118 = sub_20DD655F4();
            if (v118)
            {
              v212 = v118;
              sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
              swift_dynamicCast();
              v119 = v213;
              v120 = v110;
              v121 = v116;
              if (v213)
              {
                while (1)
                {
                  v124 = static CharacteristicNotificationManager.characteristicsToEnableNotifications(for:)(v119);
                  sub_20D9DD25C(v124);

                  v110 = v120;
                  v116 = v121;
                  v109 = v205;
                  if (v205 < 0)
                  {
                    goto LABEL_85;
                  }

LABEL_88:
                  v122 = v110;
                  v123 = v116;
                  v120 = v110;
                  if (!v116)
                  {
                    break;
                  }

LABEL_92:
                  v121 = (v123 - 1) & v123;
                  v119 = *(*(v109 + 48) + ((v120 << 9) | (8 * __clz(__rbit64(v123)))));
                  if (!v119)
                  {
                    goto LABEL_95;
                  }
                }

                while (1)
                {
                  v120 = v122 + 1;
                  if (__OFADD__(v122, 1))
                  {
                    goto LABEL_152;
                  }

                  if (v120 >= v117)
                  {
                    break;
                  }

                  v123 = *(v112 + 8 * v120);
                  ++v122;
                  if (v123)
                  {
                    goto LABEL_92;
                  }
                }
              }
            }

LABEL_95:
            v125 = sub_20D9C51CC();
            v126 = v214;
            if ((v214 & 0xC000000000000001) != 0)
            {
              v27 = MEMORY[0x277D84FA0];
              v213 = MEMORY[0x277D84FA0];
              v204 = sub_20DD65564();
              v127 = sub_20DD655F4();
              if (!v127)
              {
                goto LABEL_121;
              }

              v128 = v127;
              v202 = sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
              v129 = v128;
              v201 = v199 + 104;
              v208 = (v199 + 8);
              v205 = v199 + 16;
              v203 = MEMORY[0x277D84FA0];
              LODWORD(v200) = *MEMORY[0x277D162E8];
              while (1)
              {
                v211 = v129;
                swift_dynamicCast();
                sub_20DD653B4();
                (*v201)(v15, v200, v1);
                v206 = sub_20D9F96B0(&unk_27C8439A0, MEMORY[0x277D16340]);
                v130 = sub_20DD64E64();
                v131 = *v208;
                (*v208)(v15, v1);
                if ((v130 & 1) == 0)
                {
                  if (qword_27C842438 != -1)
                  {
                    swift_once();
                  }

                  v132 = off_27C843B30;
                  v133 = v207;
                  if (!*(off_27C843B30 + 2) || (v134 = *(off_27C843B30 + 5), sub_20D9F96B0(&qword_27C843998, MEMORY[0x277D16340]), v135 = sub_20DD64E24(), v136 = -1 << v132[32], v137 = v135 & ~v136, ((*&v132[((v137 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v137) & 1) == 0))
                  {
LABEL_108:
                    v1 = v210;
                    v131(v133, v210);
                    v144 = v212;
                    v145 = *(v203 + 16);
                    if (*(v203 + 24) <= v145)
                    {
                      sub_20D9F8364(v145 + 1, &qword_27C843978, &qword_20DD93FE0);
                    }

                    v146 = v213;
                    v147 = *(v213 + 40);
                    v148 = sub_20DD65444();
                    v149 = v146 + 56;
                    v150 = -1 << *(v146 + 32);
                    v151 = v148 & ~v150;
                    v152 = v151 >> 6;
                    v15 = v209;
                    if (((-1 << v151) & ~*(v146 + 56 + 8 * (v151 >> 6))) != 0)
                    {
                      v153 = __clz(__rbit64((-1 << v151) & ~*(v146 + 56 + 8 * (v151 >> 6)))) | v151 & 0x7FFFFFFFFFFFFFC0;
                    }

                    else
                    {
                      v154 = 0;
                      v155 = (63 - v150) >> 6;
                      do
                      {
                        if (++v152 == v155 && (v154 & 1) != 0)
                        {
                          goto LABEL_151;
                        }

                        v156 = v152 == v155;
                        if (v152 == v155)
                        {
                          v152 = 0;
                        }

                        v154 |= v156;
                        v157 = *(v149 + 8 * v152);
                      }

                      while (v157 == -1);
                      v153 = __clz(__rbit64(~v157)) + (v152 << 6);
                    }

                    *(v149 + ((v153 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v153;
                    *(*(v146 + 48) + 8 * v153) = v144;
                    v158 = *(v146 + 16) + 1;
                    v203 = v146;
                    *(v146 + 16) = v158;
                    goto LABEL_99;
                  }

                  v138 = ~v136;
                  v139 = *(v199 + 72);
                  v140 = *(v199 + 16);
                  while (1)
                  {
                    v142 = v209;
                    v141 = v210;
                    v140(v209, *(v132 + 6) + v139 * v137, v210);
                    v143 = sub_20DD64E64();
                    v131(v142, v141);
                    if (v143)
                    {
                      break;
                    }

                    v137 = (v137 + 1) & v138;
                    v133 = v207;
                    if (((*&v132[((v137 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v137) & 1) == 0)
                    {
                      goto LABEL_108;
                    }
                  }
                }

                v1 = v210;
                v131(v207, v210);

                v15 = v209;
LABEL_99:
                v129 = sub_20DD655F4();
                if (!v129)
                {
                  goto LABEL_122;
                }
              }
            }

            v160 = *(v214 + 32);
            v192 = ((1 << v160) + 63) >> 6;
            if ((v160 & 0x3Fu) > 0xD)
            {
              goto LABEL_163;
            }

LABEL_125:
            v191 = &v190;
            MEMORY[0x28223BE20](v125);
            v193 = &v190 - ((v161 + 15) & 0x3FFFFFFFFFFFFFF0);
            bzero(v193, v161);
            v194 = 0;
            v162 = 0;
            v163 = v126 + 56;
            v164 = 1 << *(v126 + 32);
            if (v164 < 64)
            {
              v165 = ~(-1 << v164);
            }

            else
            {
              v165 = -1;
            }

            v166 = v165 & *(v126 + 56);
            v167 = (v164 + 63) >> 6;
            v196 = *MEMORY[0x277D162E8];
            v195 = (v199 + 104);
            v208 = (v199 + 8);
            v204 = v199 + 16;
            v198 = v126 + 56;
            v197 = v167;
            v200 = v126;
            v168 = v209;
            while (1)
            {
              if (v166)
              {
                v169 = __clz(__rbit64(v166));
                v203 = (v166 - 1) & v166;
              }

              else
              {
                v170 = v162;
                do
                {
                  v162 = v170 + 1;
                  if (__OFADD__(v170, 1))
                  {
                    goto LABEL_153;
                  }

                  if (v162 >= v167)
                  {
                    v103 = v193;
                    v104 = v192;
                    v105 = v194;
                    v83 = v126;
LABEL_69:
                    sub_20D9F89E8(v103, v104, v105, v83, &qword_27C843978, &qword_20DD93FE0);
                    goto LABEL_123;
                  }

                  v171 = *(v163 + 8 * v162);
                  ++v170;
                }

                while (!v171);
                v169 = __clz(__rbit64(v171));
                v203 = (v171 - 1) & v171;
              }

              v172 = v169 | (v162 << 6);
              v173 = *(v126 + 48);
              v201 = v172;
              v202 = *(v173 + 8 * v172);
              sub_20DD653B4();
              (*v195)(v15, v196, v1);
              v205 = sub_20D9F96B0(&unk_27C8439A0, MEMORY[0x277D16340]);
              v174 = sub_20DD64E64();
              v207 = *v208;
              v207(v15, v1);
              if (v174)
              {
                goto LABEL_129;
              }

              if (qword_27C842438 != -1)
              {
                swift_once();
              }

              v175 = off_27C843B30;
              v176 = v206;
              if (*(off_27C843B30 + 2) && (v177 = *(off_27C843B30 + 5), sub_20D9F96B0(&qword_27C843998, MEMORY[0x277D16340]), v178 = sub_20DD64E24(), v179 = -1 << *(v175 + 32), v180 = v178 & ~v179, ((*(v175 + ((v180 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v180) & 1) != 0))
              {
                v181 = ~v179;
                v182 = *(v199 + 72);
                v183 = *(v199 + 16);
                while (1)
                {
                  v184 = v210;
                  v183(v168, v175[6] + v182 * v180, v210);
                  v185 = sub_20DD64E64();
                  v207(v168, v184);
                  if (v185)
                  {
                    break;
                  }

                  v180 = (v180 + 1) & v181;
                  v176 = v206;
                  if (((*(v175 + ((v180 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v180) & 1) == 0)
                  {
                    goto LABEL_145;
                  }
                }

LABEL_129:
                v1 = v210;
                v207(v206, v210);

                v15 = v209;
                v126 = v200;
                v163 = v198;
                v167 = v197;
                v166 = v203;
              }

              else
              {
LABEL_145:
                v1 = v210;
                v207(v176, v210);

                *&v193[(v201 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v201;
                v102 = __OFADD__(v194++, 1);
                v15 = v209;
                v126 = v200;
                v163 = v198;
                v167 = v197;
                v166 = v203;
                if (v102)
                {
                  __break(1u);
LABEL_163:
                  v189 = v126;

                  if (swift_stdlib_isStackAllocationSafe())
                  {

                    v15 = v209;
                    v1 = v210;
                    goto LABEL_125;
                  }

                  v186 = swift_slowAlloc();
                  v187 = v186;
                  v188 = v192;
LABEL_160:
                  sub_20D9F8EFC(v186, v188, v189, sub_20D9F9700, 0);

                  MEMORY[0x20F327D10](v187, -1, -1);
                  goto LABEL_123;
                }
              }
            }
          }
        }

        else
        {
          sub_20D9F8608(v216);
          v108 = MEMORY[0x277D84F90];
        }

        if (v108 >> 62)
        {
          if (sub_20DD655B4())
          {
            sub_20D9EE8F4(MEMORY[0x277D84F90]);
          }

          else
          {
            v109 = MEMORY[0x277D84FA0];
          }

          v15 = v209;
          v1 = v210;
          if ((v109 & 0xC000000000000001) == 0)
          {
            goto LABEL_76;
          }
        }

        else
        {
          v109 = MEMORY[0x277D84FA0];
          if ((MEMORY[0x277D84FA0] & 0xC000000000000001) == 0)
          {
            goto LABEL_76;
          }
        }

        goto LABEL_83;
      }
    }

    else
    {
      sub_20D9F8608(v216);
    }

    if (v60 >> 62)
    {
      goto LABEL_155;
    }

    goto LABEL_123;
  }

  v23 = [v22 accessoryRepresentableObject];
  ObjectType = swift_getObjectType();
  v25 = HFAccessoryRepresentable.containedCharacteristics.getter(ObjectType);
  v26 = swift_unknownObjectRelease();
  if ((v25 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x277D84FA0];
    v216[0] = MEMORY[0x277D84FA0];
    v204 = sub_20DD65564();
    v28 = sub_20DD655F4();
    if (v28)
    {
      v29 = v28;
      v202 = sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
      v30 = v29;
      v201 = v2 + 104;
      v208 = (v2 + 8);
      v205 = v2 + 16;
      v203 = MEMORY[0x277D84FA0];
      LODWORD(v200) = *MEMORY[0x277D162E8];
      v207 = v12;
      while (1)
      {
        v213 = v30;
        swift_dynamicCast();
        sub_20DD653B4();
        (*v201)(v15, v200, v1);
        v206 = sub_20D9F96B0(&unk_27C8439A0, MEMORY[0x277D16340]);
        v31 = sub_20DD64E64();
        v32 = *v208;
        (*v208)(v15, v1);
        if ((v31 & 1) == 0)
        {
          if (qword_27C842438 != -1)
          {
            swift_once();
          }

          v33 = off_27C843B30;
          v34 = v207;
          if (!*(off_27C843B30 + 2) || (v35 = *(off_27C843B30 + 5), sub_20D9F96B0(&qword_27C843998, MEMORY[0x277D16340]), v36 = sub_20DD64E24(), v37 = -1 << v33[32], v38 = v36 & ~v37, ((*&v33[((v38 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v38) & 1) == 0))
          {
LABEL_17:
            v1 = v210;
            v32(v34, v210);
            v45 = v214;
            v46 = *(v203 + 16);
            if (*(v203 + 24) <= v46)
            {
              sub_20D9F8364(v46 + 1, &qword_27C843978, &qword_20DD93FE0);
            }

            v47 = v216[0];
            v48 = *(v216[0] + 40);
            v49 = sub_20DD65444();
            v50 = v47 + 56;
            v51 = -1 << *(v47 + 32);
            v52 = v49 & ~v51;
            v53 = v52 >> 6;
            v15 = v209;
            if (((-1 << v52) & ~*(v47 + 56 + 8 * (v52 >> 6))) != 0)
            {
              v54 = __clz(__rbit64((-1 << v52) & ~*(v47 + 56 + 8 * (v52 >> 6)))) | v52 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v55 = 0;
              v56 = (63 - v51) >> 6;
              do
              {
                if (++v53 == v56 && (v55 & 1) != 0)
                {
                  __break(1u);
                  goto LABEL_149;
                }

                v57 = v53 == v56;
                if (v53 == v56)
                {
                  v53 = 0;
                }

                v55 |= v57;
                v58 = *(v50 + 8 * v53);
              }

              while (v58 == -1);
              v54 = __clz(__rbit64(~v58)) + (v53 << 6);
            }

            *(v50 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
            *(*(v47 + 48) + 8 * v54) = v45;
            v59 = *(v47 + 16) + 1;
            v203 = v47;
            *(v47 + 16) = v59;
            goto LABEL_8;
          }

          v39 = ~v37;
          v40 = *(v199 + 72);
          v41 = *(v199 + 16);
          while (1)
          {
            v43 = v209;
            v42 = v210;
            v41(v209, *(v33 + 6) + v40 * v38, v210);
            v44 = sub_20DD64E64();
            v32(v43, v42);
            if (v44)
            {
              break;
            }

            v38 = (v38 + 1) & v39;
            v34 = v207;
            if (((*&v33[((v38 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v38) & 1) == 0)
            {
              goto LABEL_17;
            }
          }
        }

        v1 = v210;
        v32(v207, v210);

        v15 = v209;
LABEL_8:
        v30 = sub_20DD655F4();
        if (!v30)
        {
          goto LABEL_122;
        }
      }
    }

LABEL_121:
    v203 = v27;
LABEL_122:

    goto LABEL_123;
  }

  v73 = *(v25 + 32);
  v192 = ((1 << v73) + 63) >> 6;
  v206 = v17;
  v201 = v25;
  if ((v73 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v186 = swift_slowAlloc();
      v187 = v186;
      v188 = v192;
      v189 = v201;
      goto LABEL_160;
    }

    v25 = v201;

    v15 = v209;
    v1 = v210;
    v2 = v199;
  }

  v191 = &v190;
  MEMORY[0x28223BE20](v26);
  v193 = &v190 - ((v74 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v193, v74);
  v194 = 0;
  v75 = 0;
  v78 = *(v25 + 56);
  v77 = v25 + 56;
  v76 = v78;
  v79 = 1 << *(v77 - 24);
  if (v79 < 64)
  {
    v80 = ~(-1 << v79);
  }

  else
  {
    v80 = -1;
  }

  v81 = v80 & v76;
  v82 = (v79 + 63) >> 6;
  v196 = *MEMORY[0x277D162E8];
  v195 = (v2 + 104);
  v208 = (v2 + 8);
  v204 = v2 + 16;
  v198 = v77;
  v197 = v82;
  while (1)
  {
    v83 = v201;
    if (!v81)
    {
      break;
    }

    v84 = __clz(__rbit64(v81));
    v203 = (v81 - 1) & v81;
LABEL_57:
    v87 = v84 | (v75 << 6);
    v88 = *(v201 + 48);
    v200 = v87;
    v202 = *(v88 + 8 * v87);
    sub_20DD653B4();
    (*v195)(v15, v196, v1);
    v205 = sub_20D9F96B0(&unk_27C8439A0, MEMORY[0x277D16340]);
    v89 = sub_20DD64E64();
    v207 = *v208;
    v207(v15, v1);
    if (v89)
    {
LABEL_49:
      v1 = v210;
      v207(v206, v210);

      v15 = v209;
      v77 = v198;
      v82 = v197;
      v81 = v203;
    }

    else
    {
      if (qword_27C842438 != -1)
      {
        swift_once();
      }

      v90 = off_27C843B30;
      v91 = v206;
      if (*(off_27C843B30 + 2))
      {
        v92 = *(off_27C843B30 + 5);
        sub_20D9F96B0(&qword_27C843998, MEMORY[0x277D16340]);
        v93 = sub_20DD64E24();
        v94 = -1 << v90[32];
        v95 = v93 & ~v94;
        if ((*&v90[((v95 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v95))
        {
          v96 = ~v94;
          v97 = *(v199 + 72);
          v98 = *(v199 + 16);
          do
          {
            v100 = v209;
            v99 = v210;
            v98(v209, *(v90 + 6) + v97 * v95, v210);
            v101 = sub_20DD64E64();
            v207(v100, v99);
            if (v101)
            {
              goto LABEL_49;
            }

            v95 = (v95 + 1) & v96;
            v91 = v206;
          }

          while (((*&v90[((v95 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v95) & 1) != 0);
        }
      }

      v1 = v210;
      v207(v91, v210);

      *&v193[(v200 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v200;
      v102 = __OFADD__(v194++, 1);
      v15 = v209;
      v77 = v198;
      v82 = v197;
      v81 = v203;
      if (v102)
      {
        goto LABEL_154;
      }
    }
  }

  v85 = v75;
  while (1)
  {
    v75 = v85 + 1;
    if (__OFADD__(v85, 1))
    {
      break;
    }

    if (v75 >= v82)
    {
      v103 = v193;
      v104 = v192;
      v105 = v194;
      goto LABEL_69;
    }

    v86 = *(v77 + 8 * v75);
    ++v85;
    if (v86)
    {
      v84 = __clz(__rbit64(v86));
      v203 = (v86 - 1) & v86;
      goto LABEL_57;
    }
  }

LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  if (sub_20DD655B4())
  {
    sub_20D9EBA70(MEMORY[0x277D84F90]);
  }

LABEL_123:
  v159 = *MEMORY[0x277D85DE8];
}

uint64_t sub_20D9F6B00(uint64_t a1)
{
  v2 = v1;
  v41 = sub_20DD641F4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C843BD0, &qword_20DD94010);
  result = sub_20DD656B4();
  v10 = result;
  if (*(v7 + 16))
  {
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
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_20D9F96B0(&qword_27C843998, MEMORY[0x277D16340]);
      result = sub_20DD64E24();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_20D9F6E5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843960, &qword_20DD93FC8);
  result = sub_20DD656B4();
  v6 = result;
  if (*(v3 + 16))
  {
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
    v29 = v2;
    v13 = result + 56;
    while (1)
    {
      if (!v11)
      {
        v16 = v7;
        while (1)
        {
          v7 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_39;
          }

          if (v7 >= v12)
          {
            break;
          }

          v17 = v8[v7];
          ++v16;
          if (v17)
          {
            v15 = __clz(__rbit64(v17));
            v11 = (v17 - 1) & v17;
            goto LABEL_17;
          }
        }

        v28 = 1 << *(v3 + 32);
        if (v28 >= 64)
        {
          bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v8 = -1 << v28;
        }

        v2 = v29;
        *(v3 + 16) = 0;
        goto LABEL_37;
      }

      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_20DD65A64();
      if (v18 == 5)
      {
        break;
      }

      if (v18 == 4)
      {
        v20 = 0;
LABEL_21:
        MEMORY[0x20F3269D0](v20);
        goto LABEL_22;
      }

      MEMORY[0x20F3269D0](2);
      sub_20DD65A84();
      if (v18 != 3)
      {
        sub_20DD64F24();
      }

LABEL_22:
      result = sub_20DD65AA4();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v20 = 1;
    goto LABEL_21;
  }

LABEL_37:

  *v2 = v6;
  return result;
}

uint64_t sub_20D9F719C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843BA0, &qword_20DD93FA0);
  result = sub_20DD656B4();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_20DD65A64();
      sub_20DD65A84();
      if (v18)
      {
        v20 = v18;
        sub_20DD65464();
      }

      result = sub_20DD65AA4();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_20D9F7410(uint64_t a1)
{
  v2 = v1;
  v41 = sub_20DD64674();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8438B0, &qword_20DD93F68);
  result = sub_20DD656B4();
  v10 = result;
  if (*(v7 + 16))
  {
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
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_20D9F96B0(&qword_27C8438A0, MEMORY[0x277D17688]);
      result = sub_20DD64E24();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_20D9F7794(uint64_t a1)
{
  v2 = v1;
  v41 = sub_20DD63744();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843830, &unk_20DD93F10);
  result = sub_20DD656B4();
  v10 = result;
  if (*(v7 + 16))
  {
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
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_20D9F96B0(&qword_280E02290, MEMORY[0x277CC95F0]);
      result = sub_20DD64E24();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_20D9F7B04(uint64_t a1)
{
  v2 = v1;
  v41 = sub_20DD63FE4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843B70, &qword_20DD93F30);
  result = sub_20DD656B4();
  v10 = result;
  if (*(v7 + 16))
  {
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
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_20D9F96B0(&qword_27C844380, MEMORY[0x277D15B60]);
      result = sub_20DD64E24();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_20D9F7E74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843B60, &qword_20DD93ED8);
  result = sub_20DD656B4();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_20DD64EB4();
      sub_20DD65A64();
      sub_20DD64F24();
      v20 = sub_20DD65AA4();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero(v8, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_20D9F80F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843848, &qword_20DD93F20);
  result = sub_20DD656B4();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_20DD65A64();
      sub_20DD64F24();
      result = sub_20DD65AA4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_20D9F8364(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_20DD656B4();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_20DD65444();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t sub_20D9F8584(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_20DD65444();
  v5 = -1 << *(a2 + 32);
  result = sub_20DD65534();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_20D9F8608(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A80, &qword_20DD94100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D9F86AC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_20DD63FE4();
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843B70, &qword_20DD93F30);
  result = sub_20DD656D4();
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
    sub_20D9F96B0(&qword_27C844380, MEMORY[0x277D15B60]);
    result = sub_20DD64E24();
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
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

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
      goto LABEL_28;
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20D9F89E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_20DD656D4();
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
    v18 = *(v11 + 40);
    v19 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_20DD65444();
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
    *(*(v11 + 48) + 8 * v23) = v19;
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

uint64_t sub_20D9F8BD4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_20DD63744();
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843830, &unk_20DD93F10);
  result = sub_20DD656D4();
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
    sub_20D9F96B0(&qword_280E02290, MEMORY[0x277CC95F0]);
    result = sub_20DD64E24();
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
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

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
      goto LABEL_28;
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_20D9F8EFC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_20DA68FC0(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_20D9F8F8C(uint64_t *a1)
{
  v2 = sub_20DD641F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = *a1;
  sub_20DD653B4();
  (*(v3 + 104))(v7, *MEMORY[0x277D162E8], v2);
  sub_20D9F96B0(&unk_27C8439A0, MEMORY[0x277D16340]);
  LOBYTE(v10) = sub_20DD64E64();
  v11 = *(v3 + 8);
  v11(v7, v2);
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    if (qword_27C842438 != -1)
    {
      swift_once();
    }

    v12 = sub_20D9EFFE4(v9, off_27C843B30) ^ 1;
  }

  v11(v9, v2);
  return v12 & 1;
}

uint64_t sub_20D9F922C(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20DD655B4())
  {
    v4 = type metadata accessor for MatterAccessoryLikeItem();
    v5 = sub_20D9F96B0(&qword_27C843B68, type metadata accessor for MatterAccessoryLikeItem);
    result = MEMORY[0x20F326190](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x20F326680](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_20D9E2B1C(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_20DD655B4();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_20D9F93BC(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20DD655B4())
  {
    v12 = sub_20D9D7510(0, a2, a3);
    v13 = sub_20D9EC18C(a4, a2, a3);
    result = MEMORY[0x20F326190](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x20F326680](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      ++a2;
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_20DD655B4();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_20D9F9514(uint64_t a1)
{
  v2 = sub_20DD63744();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_20D9F96B0(&qword_280E02290, MEMORY[0x277CC95F0]);
  result = MEMORY[0x20F326190](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_20D9E2834(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_20D9F96B0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20D9F971C(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_20D9D77C8(a1, v7);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_20D9D0070(v7, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v6;
  }

  else
  {
    sub_20D9D76EC(a1, &unk_27C843A80, &qword_20DD94100);
    sub_20DA27550(a2, v7);

    sub_20D9D76EC(v7, &unk_27C843A80, &qword_20DD94100);
  }
}

uint64_t sub_20D9F97D0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_20DD636C4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_20D9D76EC(a1, &unk_27C843810, &qword_20DD93F00);
    sub_20DA2761C(a2, v8);
    v14 = sub_20DD63744();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_20D9D76EC(v8, &unk_27C843810, &qword_20DD93F00);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_20D9D0514(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_20DD63744();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_20D9F99FC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_20DD64294();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_20D9D76EC(a1, &qword_27C843A20, &qword_20DD940B0);
    sub_20DA2765C(a2, v8);
    v14 = sub_20DD63744();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_20D9D76EC(v8, &qword_27C843A20, &qword_20DD940B0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_20D9D079C(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_20DD63744();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_20D9F9C28(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844270, &qword_20DD94228);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_20DD64544();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_20D9D76EC(a1, &qword_27C844270, &qword_20DD94228);
    sub_20DA278E0(a2, v8);
    v14 = sub_20DD63744();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_20D9D76EC(v8, &qword_27C844270, &qword_20DD94228);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_20D9D1300(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_20DD63744();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_20D9F9E54(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D40, &unk_20DD94230);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_20DD63FE4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_20D9D76EC(a1, &qword_27C843D40, &unk_20DD94230);
    sub_20DA27BA4(a2, v8);
    (*(v10 + 8))(a2, v9);
    return sub_20D9D76EC(v8, &qword_27C843D40, &unk_20DD94230);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_20D9D17FC(v13, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v10 + 8))(a2, v9);
    *v2 = v18;
  }

  return result;
}

uint64_t MatterAccessoryLikeItem.tilePath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath;
  v4 = sub_20DD63FE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *MatterAccessoryLikeItem.actionSetBuilder.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_actionSetBuilder);
  v2 = v1;
  return v1;
}

uint64_t sub_20D9FA0FC()
{
  v1 = sub_20DD64054();
  v28 = *(v1 - 8);
  v2 = *(v28 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v28 - v10;
  v12 = sub_20DD64294();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable);
  v18 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  sub_20D9FA458(v17 + v18, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_20D9D76EC(v11, &qword_27C843A20, &qword_20DD940B0);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v19 = sub_20DD63F84();
    if ((v19 & 0x10000) != 0)
    {
      v27 = sub_20DD64214();
      (*(v13 + 8))(v16, v12);
      return v27;
    }

    v20 = v19;
    v21 = sub_20DD64284();
    if (*(v21 + 16))
    {
      v22 = sub_20D9CB188(v20);
      if (v23)
      {
        v24 = v28;
        (*(v28 + 16))(v5, *(v21 + 56) + *(v28 + 72) * v22, v1);

        (*(v24 + 32))(v7, v5, v1);
        v25 = sub_20DD63FF4();
        (*(v24 + 8))(v7, v1);
        (*(v13 + 8))(v16, v12);
        return v25;
      }
    }

    (*(v13 + 8))(v16, v12);
  }

  return 0;
}

uint64_t sub_20D9FA458(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id MatterAccessoryLikeItem.__allocating_init(tilePath:matterSnapshotProvider:accessory:)(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_20D9FED40(a1, a2, a3, a4);

  return v5;
}

id MatterAccessoryLikeItem.__allocating_init(matterAccessoryRepresentable:actionSetBuilder:matterSnapshotProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath;
  v11 = OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath;
  v12 = sub_20DD63FE4();
  (*(*(v12 - 8) + 16))(&v9[v11], a1 + v10, v12);
  v13 = &v9[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterSnapshotProvider];
  *v13 = a3;
  *(v13 + 1) = a4;
  *&v9[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable] = a1;
  *&v9[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_actionSetBuilder] = a2;
  v15.receiver = v9;
  v15.super_class = v4;
  return objc_msgSendSuper2(&v15, sel_init);
}

id MatterAccessoryLikeItem.init(matterAccessoryRepresentable:actionSetBuilder:matterSnapshotProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath;
  v10 = OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath;
  v11 = sub_20DD63FE4();
  (*(*(v11 - 8) + 16))(&v4[v10], a1 + v9, v11);
  v12 = &v4[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterSnapshotProvider];
  *v12 = a3;
  *(v12 + 1) = a4;
  *&v4[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable] = a1;
  *&v4[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_actionSetBuilder] = a2;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for MatterAccessoryLikeItem();
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_20D9FA6DC()
{
  v1 = sub_20D9D4AFC(MEMORY[0x277D84F90]);
  *(v0 + 120) = MEMORY[0x277D839B0];
  *(v0 + 96) = 1;
  sub_20D9D77C8((v0 + 96), (v0 + 128));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_20D9D0070((v0 + 128), @"dependentOnMatterSnapshot", isUniquelyReferenced_nonNull_native);
  *(v0 + 160) = v1;
  v3 = swift_task_alloc();
  *(v0 + 176) = v3;
  *v3 = v0;
  v3[1] = sub_20D9FA7E0;
  v4 = *(v0 + 168);

  return sub_20D9FB850(v0 + 56);
}

uint64_t sub_20D9FA7E0()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20D9FA8DC, 0, 0);
}

uint64_t sub_20D9FA8DC()
{
  v1 = *(v0 + 168);
  if (*(v0 + 80))
  {
    sub_20D9C51D4((v0 + 56), v0 + 16);
    sub_20D9FB098(v0 + 160, (v0 + 16));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  else
  {
    sub_20D9D76EC(v0 + 56, &qword_27C843A30, &qword_20DD940B8);
    sub_20D9FAA84(v0 + 160);
  }

  v2 = *(v0 + 160);
  v3 = *(v0 + 8);

  return v3(v2);
}