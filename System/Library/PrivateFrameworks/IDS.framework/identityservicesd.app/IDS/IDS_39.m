id sub_1008E5AE8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1008E4D5C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1008E5880(v13, a3 & 1);
      v8 = sub_1008E4D5C(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100014170(0, &qword_100CBA400);
        v8 = sub_1009375D8();
        __break(1u);
        return _objc_release_x1(v8, v20);
      }
    }

    else
    {
      v16 = v8;
      sub_1008E60A0();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return _objc_release_x1(v8, v20);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  return a2;
}

id sub_1008E5C60()
{
  v1 = v0;
  sub_100706B30(&qword_100CBB148);
  v2 = *v0;
  v3 = sub_100937408();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_100715738(v19, *(&v19 + 1));
        result = v18;
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

void *sub_1008E5DCC()
{
  v1 = v0;
  sub_100706B30(&qword_100CBAC78);
  v2 = *v0;
  v3 = sub_100937408();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

void *sub_1008E5F30()
{
  v1 = v0;
  sub_100706B30(&unk_100CBAC00);
  v2 = *v0;
  v3 = sub_100937408();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

id sub_1008E60A0()
{
  v1 = v0;
  sub_100706B30(&qword_100CBA568);
  v2 = *v0;
  v3 = sub_100937408();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

Swift::Int sub_1008E6200(void **a1)
{
  v2 = *(sub_100706B30(&unk_100CBB1F8) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1008EAA98(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1008E85A0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1008E62B4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1008EAAAC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1008E86E4(v6);
  return sub_1009372A8();
}

uint64_t sub_1008E6330(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v3 = a1;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v10 = 0;
    v97 = v9;
    v98 = v3;
    v89 = v2;
    v85 = v8;
    v86 = v4;
    if (!v7)
    {
      goto LABEL_6;
    }

    while (*(v3 + 16))
    {
      v88 = v10;
      v12 = (*(v2 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
      v13 = v9;
      v14 = *v12;
      v15 = v12[1];
      sub_100937668();
      sub_100715738(v14, v15);
      sub_100935EB8();
      v16 = sub_1009376C8();
      v17 = -1 << *(v3 + 32);
      v18 = v16 & ~v17;
      if (((*(v13 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {

        v82 = v14;
        v83 = v15;
LABEL_157:
        sub_1007156D8(v82, v83);
        return 0;
      }

      v87 = (v7 - 1) & v7;
      v19 = ~v17;
      v20 = v15 >> 62;
      if (v14)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15 == 0xC000000000000000;
      }

      v22 = !v21;
      v100 = v22;
      v92 = HIDWORD(v14);
      v23 = __OFSUB__(HIDWORD(v14), v14);
      v96 = v23;
      v94 = v14;
      v95 = HIDWORD(v14) - v14;
      v101 = v15;
      __n = BYTE6(v15);
      v93 = v14;
      v90 = (v14 >> 32) - v14;
      v91 = v14 >> 32;
      v99 = v19;
      v9 = v13;
      while (1)
      {
        v24 = (*(v3 + 48) + 16 * v18);
        v26 = *v24;
        v25 = v24[1];
        v27 = v25 >> 62;
        if (v25 >> 62 == 3)
        {
          if (v26)
          {
            v28 = 0;
          }

          else
          {
            v28 = v25 == 0xC000000000000000;
          }

          v30 = !v28 || v20 < 3;
          if (((v30 | v100) & 1) == 0)
          {
            v80 = 0;
            v81 = 0xC000000000000000;
LABEL_152:
            sub_1007156D8(v80, v81);
            v2 = v89;
            v8 = v85;
            v4 = v86;
            goto LABEL_153;
          }

LABEL_47:
          v31 = 0;
          if (v20 <= 1)
          {
            goto LABEL_44;
          }

          goto LABEL_48;
        }

        if (v27 > 1)
        {
          if (v27 != 2)
          {
            goto LABEL_47;
          }

          v33 = *(v26 + 16);
          v32 = *(v26 + 24);
          v34 = __OFSUB__(v32, v33);
          v31 = v32 - v33;
          if (v34)
          {
            goto LABEL_166;
          }

          if (v20 <= 1)
          {
            goto LABEL_44;
          }
        }

        else if (v27)
        {
          LODWORD(v31) = HIDWORD(v26) - v26;
          if (__OFSUB__(HIDWORD(v26), v26))
          {
            goto LABEL_165;
          }

          v31 = v31;
          if (v20 <= 1)
          {
LABEL_44:
            v35 = __n;
            if (v20)
            {
              v35 = v95;
              if (v96)
              {
                goto LABEL_164;
              }
            }

            goto LABEL_50;
          }
        }

        else
        {
          v31 = BYTE6(v25);
          if (v20 <= 1)
          {
            goto LABEL_44;
          }
        }

LABEL_48:
        if (v20 != 2)
        {
          if (!v31)
          {
            goto LABEL_151;
          }

          goto LABEL_24;
        }

        v37 = *(v14 + 16);
        v36 = *(v14 + 24);
        v34 = __OFSUB__(v36, v37);
        v35 = v36 - v37;
        if (v34)
        {
          goto LABEL_163;
        }

LABEL_50:
        if (v31 != v35)
        {
          goto LABEL_24;
        }

        if (v31 < 1)
        {
          goto LABEL_151;
        }

        if (v27 <= 1)
        {
          if (v27)
          {
            if (v26 > v26 >> 32)
            {
              goto LABEL_167;
            }

            sub_100715738(v26, v25);
            v48 = sub_100935BE8();
            if (v48)
            {
              v49 = v48;
              v50 = sub_100935C18();
              if (__OFSUB__(v26, v50))
              {
                goto LABEL_169;
              }

              v47 = (v26 - v50 + v49);
            }

            else
            {
              v47 = 0;
            }

            result = sub_100935C08();
            v9 = v97;
            v3 = v98;
            if (v20 == 2)
            {
              v76 = *(v14 + 16);
              v75 = *(v14 + 24);
              v58 = sub_100935BE8();
              if (v58)
              {
                v77 = sub_100935C18();
                if (__OFSUB__(v76, v77))
                {
                  goto LABEL_183;
                }

                v58 += v76 - v77;
              }

              v14 = v94;
              v34 = __OFSUB__(v75, v76);
              v78 = v75 - v76;
              if (v34)
              {
                goto LABEL_179;
              }

              result = sub_100935C08();
              if (result >= v78)
              {
                v60 = v78;
              }

              else
              {
                v60 = result;
              }

              if (!v47)
              {
                goto LABEL_192;
              }

              v3 = v98;
              if (!v58)
              {
                goto LABEL_191;
              }
            }

            else
            {
              if (v20 != 1)
              {
                *__s1 = v14;
                __s1[2] = BYTE2(v14);
                __s1[3] = BYTE3(v14);
                __s1[4] = v92;
                __s1[5] = BYTE5(v14);
                __s1[6] = BYTE6(v14);
                __s1[7] = HIBYTE(v14);
                *&__s1[8] = v101;
                *&__s1[12] = WORD2(v101);
                if (!v47)
                {
                  goto LABEL_194;
                }

LABEL_150:
                v79 = memcmp(v47, __s1, __n);
                sub_1007156D8(v26, v25);
                v19 = v99;
                if (!v79)
                {
                  goto LABEL_151;
                }

                goto LABEL_24;
              }

              if (v91 < v93)
              {
                goto LABEL_178;
              }

              v58 = sub_100935BE8();
              if (v58)
              {
                v61 = sub_100935C18();
                if (__OFSUB__(v93, v61))
                {
                  goto LABEL_185;
                }

                v58 += v93 - v61;
              }

              v14 = v94;
              result = sub_100935C08();
              v60 = v90;
              if (result < v90)
              {
                v60 = result;
              }

              if (!v47)
              {
                goto LABEL_196;
              }

              if (!v58)
              {
                goto LABEL_195;
              }
            }

            goto LABEL_145;
          }

          *__s1 = v26;
          *&__s1[8] = v25;
          __s1[10] = BYTE2(v25);
          __s1[11] = BYTE3(v25);
          __s1[12] = BYTE4(v25);
          __s1[13] = BYTE5(v25);
          if (!v20)
          {
LABEL_80:
            __s2 = v14;
            v104 = BYTE2(v14);
            v105 = BYTE3(v14);
            v106 = v92;
            v107 = BYTE5(v14);
            v108 = BYTE6(v14);
            v109 = HIBYTE(v14);
            v110 = v101;
            v111 = WORD2(v101);
            v57 = memcmp(__s1, &__s2, __n);
            v19 = v99;
            if (!v57)
            {
              goto LABEL_151;
            }

            goto LABEL_24;
          }

          if (v20 != 1)
          {
            v63 = *(v14 + 16);
            v62 = *(v14 + 24);
            sub_100715738(v26, v25);
            v53 = sub_100935BE8();
            if (v53)
            {
              v64 = sub_100935C18();
              if (__OFSUB__(v63, v64))
              {
                goto LABEL_180;
              }

              v53 += v63 - v64;
            }

            v14 = v94;
            v34 = __OFSUB__(v62, v63);
            v55 = v62 - v63;
            if (v34)
            {
              goto LABEL_173;
            }

            v56 = sub_100935C08();
            if (!v53)
            {
              goto LABEL_186;
            }

LABEL_111:
            if (v56 >= v55)
            {
              v65 = v55;
            }

            else
            {
              v65 = v56;
            }

            v66 = memcmp(__s1, v53, v65);
            sub_1007156D8(v26, v25);
            v3 = v98;
LABEL_147:
            v9 = v97;
            v19 = v99;
            if (!v66)
            {
              goto LABEL_151;
            }

            goto LABEL_24;
          }

          if (v91 < v93)
          {
            goto LABEL_171;
          }

          sub_100715738(v26, v25);
          v38 = sub_100935BE8();
          if (!v38)
          {
            goto LABEL_190;
          }

          v39 = v38;
          v40 = sub_100935C18();
          if (__OFSUB__(v93, v40))
          {
            goto LABEL_175;
          }

          v41 = (v93 - v40 + v39);
          result = sub_100935C08();
          if (!v41)
          {
            goto LABEL_193;
          }

          goto LABEL_119;
        }

        if (v27 == 2)
        {
          break;
        }

        *&__s1[6] = 0;
        *__s1 = 0;
        if (!v20)
        {
          goto LABEL_80;
        }

        if (v20 == 2)
        {
          v52 = *(v14 + 16);
          v51 = *(v14 + 24);
          sub_100715738(v26, v25);
          v53 = sub_100935BE8();
          if (v53)
          {
            v54 = sub_100935C18();
            if (__OFSUB__(v52, v54))
            {
              goto LABEL_181;
            }

            v53 += v52 - v54;
          }

          v14 = v94;
          v34 = __OFSUB__(v51, v52);
          v55 = v51 - v52;
          if (v34)
          {
            goto LABEL_174;
          }

          v56 = sub_100935C08();
          if (!v53)
          {
            goto LABEL_189;
          }

          goto LABEL_111;
        }

        if (v91 < v93)
        {
          goto LABEL_170;
        }

        sub_100715738(v26, v25);
        v67 = sub_100935BE8();
        if (!v67)
        {
          goto LABEL_187;
        }

        v68 = v67;
        v69 = sub_100935C18();
        if (__OFSUB__(v93, v69))
        {
          goto LABEL_176;
        }

        v41 = (v93 - v69 + v68);
        result = sub_100935C08();
        if (!v41)
        {
          goto LABEL_188;
        }

LABEL_119:
        if (result >= v90)
        {
          v70 = v90;
        }

        else
        {
          v70 = result;
        }

        v71 = memcmp(__s1, v41, v70);
        sub_1007156D8(v26, v25);
        v3 = v98;
        v14 = v94;
        v19 = v99;
        if (!v71)
        {
LABEL_151:
          v80 = v14;
          v81 = v101;
          goto LABEL_152;
        }

LABEL_24:
        v18 = (v18 + 1) & v19;
        if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {

          v82 = v14;
          v83 = v101;
          goto LABEL_157;
        }
      }

      v43 = *(v26 + 16);
      sub_100715738(v26, v25);
      v44 = sub_100935BE8();
      if (v44)
      {
        v45 = v44;
        v46 = sub_100935C18();
        if (__OFSUB__(v43, v46))
        {
          goto LABEL_168;
        }

        v47 = (v43 - v46 + v45);
      }

      else
      {
        v47 = 0;
      }

      sub_100935C08();
      v9 = v97;
      v3 = v98;
      if (v20 == 2)
      {
        v72 = *(v14 + 16);
        v84 = *(v14 + 24);
        v58 = sub_100935BE8();
        if (v58)
        {
          v73 = sub_100935C18();
          if (__OFSUB__(v72, v73))
          {
            goto LABEL_182;
          }

          v58 += v72 - v73;
        }

        v14 = v94;
        v34 = __OFSUB__(v84, v72);
        v74 = v84 - v72;
        if (v34)
        {
          goto LABEL_177;
        }

        result = sub_100935C08();
        if (result >= v74)
        {
          v60 = v74;
        }

        else
        {
          v60 = result;
        }

        if (!v47)
        {
          goto LABEL_200;
        }

        v3 = v98;
        if (!v58)
        {
          goto LABEL_199;
        }
      }

      else
      {
        if (v20 != 1)
        {
          *__s1 = v14;
          __s1[2] = BYTE2(v14);
          __s1[3] = BYTE3(v14);
          __s1[4] = v92;
          __s1[5] = BYTE5(v14);
          __s1[6] = BYTE6(v14);
          __s1[7] = HIBYTE(v14);
          *&__s1[8] = v101;
          *&__s1[12] = WORD2(v101);
          if (!v47)
          {
            __break(1u);
LABEL_186:
            __break(1u);
LABEL_187:
            sub_100935C08();
LABEL_188:
            __break(1u);
LABEL_189:
            __break(1u);
LABEL_190:
            result = sub_100935C08();
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
            __break(1u);
LABEL_197:
            __break(1u);
LABEL_198:
            __break(1u);
LABEL_199:
            __break(1u);
LABEL_200:
            __break(1u);
            return result;
          }

          goto LABEL_150;
        }

        if (v91 < v93)
        {
          goto LABEL_172;
        }

        v58 = sub_100935BE8();
        if (v58)
        {
          v59 = sub_100935C18();
          if (__OFSUB__(v93, v59))
          {
            goto LABEL_184;
          }

          v58 += v93 - v59;
        }

        v14 = v94;
        result = sub_100935C08();
        v60 = v90;
        if (result < v90)
        {
          v60 = result;
        }

        if (!v47)
        {
          goto LABEL_198;
        }

        if (!v58)
        {
          goto LABEL_197;
        }
      }

LABEL_145:
      if (v47 != v58)
      {
        v66 = memcmp(v47, v58, v60);
        sub_1007156D8(v26, v25);
        goto LABEL_147;
      }

      sub_1007156D8(v26, v25);
      sub_1007156D8(v14, v101);
      v2 = v89;
      v8 = v85;
      v4 = v86;
      v9 = v97;
LABEL_153:
      v7 = v87;
      v10 = v88;
      if (v87)
      {
        continue;
      }

LABEL_6:
      while (2)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
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
        }

        if (v11 >= v8)
        {

          return 1;
        }

        v7 = *(v4 + 8 * v11);
        ++v10;
        if (!v7)
        {
          continue;
        }

        break;
      }

      v10 = v11;
    }
  }

  return 0;
}

uint64_t sub_1008E6DCC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1008E7020((&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1008E6F90(v11, v6, a2, a1);
  }

  return v9;
}

void *sub_1008E6F90(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1008E7020(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1008E7020(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) < *(a3 + 16))
  {
    v212 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v227 = a3 + 56;
    v187 = v11;
    v193 = a4 + 56;
    while (1)
    {
      if (v10)
      {
        v12 = __clz(__rbit64(v10));
        v210 = (v10 - 1) & v10;
      }

      else
      {
        v13 = v6;
        do
        {
          v6 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_325;
          }

          if (v6 >= v11)
          {
LABEL_323:

            return sub_10078F164(a1, a2, v212, v5);
          }

          v14 = *(v7 + 8 * v6);
          ++v13;
        }

        while (!v14);
        v12 = __clz(__rbit64(v14));
        v210 = (v14 - 1) & v14;
      }

      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      sub_100937668();
      sub_100715738(v17, v16);
      v223 = v17;
      v225 = v16;
      sub_100935EB8();
      v18 = sub_1009376C8();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = 1 << v20;
      if (((1 << v20) & *(v227 + 8 * (v20 >> 6))) == 0)
      {
LABEL_6:
        sub_1007156D8(v223, v225);
        v4 = a4;
        v11 = v187;
        v7 = v193;
        v10 = v210;
        continue;
      }

      v23 = ~v19;
      v24 = v16 >> 62;
      if (v17)
      {
        v25 = 0;
      }

      else
      {
        v25 = v16 == 0xC000000000000000;
      }

      v26 = !v25;
      v220 = v26;
      v204 = HIDWORD(v17);
      v27 = __OFSUB__(HIDWORD(v17), v17);
      v214 = v27;
      v200 = (v17 >> 32) - v17;
      v202 = v17 >> 32;
      v215 = v23;
      v216 = v16 >> 62;
      while (1)
      {
        v28 = (*(v5 + 48) + 16 * v20);
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
          if (((v34 | v220) & 1) == 0)
          {
            v87 = 0;
            v88 = 0xC000000000000000;
            goto LABEL_162;
          }

LABEL_49:
          v35 = 0;
          if (v24 <= 1)
          {
            goto LABEL_46;
          }

          goto LABEL_50;
        }

        if (v31 > 1)
        {
          if (v31 != 2)
          {
            goto LABEL_49;
          }

          v37 = *(v30 + 16);
          v36 = *(v30 + 24);
          v38 = __OFSUB__(v36, v37);
          v35 = v36 - v37;
          if (v38)
          {
            goto LABEL_332;
          }

          if (v24 <= 1)
          {
            goto LABEL_46;
          }
        }

        else if (v31)
        {
          LODWORD(v35) = HIDWORD(v30) - v30;
          if (__OFSUB__(HIDWORD(v30), v30))
          {
            goto LABEL_333;
          }

          v35 = v35;
          if (v24 <= 1)
          {
LABEL_46:
            v39 = BYTE6(v225);
            if (v24)
            {
              v39 = HIDWORD(v223) - v223;
              if (v214)
              {
                goto LABEL_329;
              }
            }

            goto LABEL_52;
          }
        }

        else
        {
          v35 = BYTE6(v29);
          if (v24 <= 1)
          {
            goto LABEL_46;
          }
        }

LABEL_50:
        if (v24 != 2)
        {
          if (!v35)
          {
            goto LABEL_161;
          }

          goto LABEL_26;
        }

        v41 = *(v223 + 16);
        v40 = *(v223 + 24);
        v38 = __OFSUB__(v40, v41);
        v39 = v40 - v41;
        if (v38)
        {
          goto LABEL_328;
        }

LABEL_52:
        if (v35 != v39)
        {
          goto LABEL_26;
        }

        if (v35 < 1)
        {
          goto LABEL_161;
        }

        if (v31 > 1)
        {
          break;
        }

        if (v31)
        {
          if (v30 > v30 >> 32)
          {
            goto LABEL_335;
          }

          sub_100715738(v30, v29);
          v51 = sub_100935BE8();
          if (v51)
          {
            v52 = v51;
            v53 = sub_100935C18();
            if (__OFSUB__(v30, v53))
            {
              goto LABEL_339;
            }

            v196 = (v30 - v53 + v52);
          }

          else
          {
            v196 = 0;
          }

          sub_100935C08();
          v24 = v216;
          v5 = a3;
          if (v216 == 2)
          {
            v177 = *(v223 + 24);
            v183 = *(v223 + 16);
            v60 = sub_100935BE8();
            if (v60)
            {
              v73 = sub_100935C18();
              v74 = v183;
              if (__OFSUB__(v183, v73))
              {
                goto LABEL_368;
              }

              v60 += v183 - v73;
            }

            else
            {
              v74 = v183;
            }

            v84 = v177 - v74;
            if (__OFSUB__(v177, v74))
            {
              goto LABEL_358;
            }

            v85 = sub_100935C08();
            if (v85 >= v84)
            {
              v81 = v84;
            }

            else
            {
              v81 = v85;
            }

            v82 = v196;
            if (!v196)
            {
              goto LABEL_393;
            }

            v5 = a3;
            if (!v60)
            {
              goto LABEL_395;
            }
          }

          else
          {
            if (v216 != 1)
            {
              v72 = v196;
              *__s1 = v223;
              __s1[4] = v204;
              *&__s1[5] = *(&v223 + 5);
              __s1[7] = HIBYTE(v223);
              *&__s1[8] = v225;
              *&__s1[12] = WORD2(v225);
              if (!v196)
              {
                goto LABEL_378;
              }

LABEL_115:
              v69 = memcmp(v72, __s1, BYTE6(v225));
              sub_1007156D8(v30, v29);
              v23 = v215;
              goto LABEL_116;
            }

            if (v202 < v223)
            {
              goto LABEL_357;
            }

            v61 = sub_100935BE8();
            if (v61)
            {
              v180 = v61;
              v62 = sub_100935C18();
              if (__OFSUB__(v223, v62))
              {
                goto LABEL_369;
              }

              v60 = (v223 - v62 + v180);
            }

            else
            {
              v60 = 0;
            }

            v86 = sub_100935C08();
            v81 = (v223 >> 32) - v223;
            if (v86 < v200)
            {
              v81 = v86;
            }

            v82 = v196;
            if (!v196)
            {
              goto LABEL_396;
            }

            if (!v60)
            {
              goto LABEL_394;
            }
          }

          goto LABEL_156;
        }

        *__s1 = v30;
        *&__s1[8] = v29;
        __s1[10] = BYTE2(v29);
        __s1[11] = BYTE3(v29);
        __s1[12] = BYTE4(v29);
        __s1[13] = BYTE5(v29);
        if (!v24)
        {
          goto LABEL_79;
        }

        if (v24 == 1)
        {
          if (v202 < v223)
          {
            goto LABEL_350;
          }

          sub_100715738(v30, v29);
          v42 = sub_100935BE8();
          if (!v42)
          {
            goto LABEL_388;
          }

          v43 = v42;
          v44 = sub_100935C18();
          if (__OFSUB__(v223, v44))
          {
            goto LABEL_354;
          }

          v45 = (v223 - v44 + v43);
          v46 = sub_100935C08();
          if (!v45)
          {
            goto LABEL_381;
          }

          goto LABEL_102;
        }

        v198 = *(v223 + 16);
        v181 = *(v223 + 24);
        sub_100715738(v30, v29);
        v54 = sub_100935BE8();
        if (v54)
        {
          v63 = sub_100935C18();
          v64 = v198;
          if (__OFSUB__(v198, v63))
          {
            goto LABEL_364;
          }

          v54 = &v198[v54 - v63];
        }

        else
        {
          v64 = v198;
        }

        v75 = v181 - v64;
        if (__OFSUB__(v181, v64))
        {
          goto LABEL_351;
        }

        v76 = sub_100935C08();
        if (!v54)
        {
          goto LABEL_380;
        }

LABEL_125:
        if (v76 >= v75)
        {
          v77 = v75;
        }

        else
        {
          v77 = v76;
        }

        v78 = memcmp(__s1, v54, v77);
        sub_1007156D8(v30, v29);
        v5 = a3;
LABEL_158:
        v23 = v215;
        v24 = v216;
        if (!v78)
        {
          goto LABEL_161;
        }

LABEL_26:
        v20 = (v20 + 1) & v23;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if ((*(v227 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
        {
          goto LABEL_6;
        }
      }

      if (v31 != 2)
      {
        *&__s1[6] = 0;
        *__s1 = 0;
        if (!v24)
        {
LABEL_79:
          __s2 = v223;
          v230 = v204;
          v231 = *(&v223 + 5);
          v232 = HIBYTE(v223);
          v233 = v225;
          v234 = WORD2(v225);
          v57 = memcmp(__s1, &__s2, BYTE6(v225));
          v23 = v215;
          if (!v57)
          {
            goto LABEL_161;
          }

          goto LABEL_26;
        }

        if (v24 != 2)
        {
          if (v202 < v223)
          {
            goto LABEL_349;
          }

          sub_100715738(v30, v29);
          v65 = sub_100935BE8();
          if (!v65)
          {
            goto LABEL_382;
          }

          v66 = v65;
          v67 = sub_100935C18();
          if (__OFSUB__(v223, v67))
          {
            goto LABEL_355;
          }

          v45 = (v223 - v67 + v66);
          v46 = sub_100935C08();
          if (!v45)
          {
            goto LABEL_383;
          }

LABEL_102:
          if (v46 >= v200)
          {
            v68 = (v223 >> 32) - v223;
          }

          else
          {
            v68 = v46;
          }

          v69 = memcmp(__s1, v45, v68);
          sub_1007156D8(v30, v29);
          v5 = a3;
          v23 = v215;
          v24 = v216;
LABEL_116:
          if (!v69)
          {
            goto LABEL_161;
          }

          goto LABEL_26;
        }

        v197 = *(v223 + 16);
        v178 = *(v223 + 24);
        sub_100715738(v30, v29);
        v54 = sub_100935BE8();
        if (v54)
        {
          v55 = sub_100935C18();
          v56 = v197;
          if (__OFSUB__(v197, v55))
          {
            goto LABEL_365;
          }

          v54 = &v197[v54 - v55];
        }

        else
        {
          v56 = v197;
        }

        v75 = v178 - v56;
        if (__OFSUB__(v178, v56))
        {
          goto LABEL_352;
        }

        v76 = sub_100935C08();
        if (!v54)
        {
          goto LABEL_377;
        }

        goto LABEL_125;
      }

      v47 = *(v30 + 16);
      sub_100715738(v30, v29);
      v48 = sub_100935BE8();
      if (v48)
      {
        v49 = v48;
        v50 = sub_100935C18();
        if (__OFSUB__(v47, v50))
        {
          goto LABEL_338;
        }

        v195 = (v47 - v50 + v49);
      }

      else
      {
        v195 = 0;
      }

      sub_100935C08();
      v24 = v216;
      v5 = a3;
      if (v216 == 2)
      {
        v176 = *(v223 + 24);
        v182 = *(v223 + 16);
        v60 = sub_100935BE8();
        if (v60)
        {
          v70 = sub_100935C18();
          v71 = v182;
          if (__OFSUB__(v182, v70))
          {
            goto LABEL_366;
          }

          v60 += v182 - v70;
        }

        else
        {
          v71 = v182;
        }

        v79 = v176 - v71;
        if (__OFSUB__(v176, v71))
        {
          goto LABEL_356;
        }

        v80 = sub_100935C08();
        if (v80 >= v79)
        {
          v81 = v79;
        }

        else
        {
          v81 = v80;
        }

        v82 = v195;
        if (!v195)
        {
          goto LABEL_398;
        }

        v5 = a3;
        if (!v60)
        {
          goto LABEL_397;
        }
      }

      else
      {
        if (v216 != 1)
        {
          v72 = v195;
          *__s1 = v223;
          __s1[4] = v204;
          *&__s1[5] = *(&v223 + 5);
          __s1[7] = HIBYTE(v223);
          *&__s1[8] = v225;
          *&__s1[12] = WORD2(v225);
          if (!v195)
          {
            goto LABEL_379;
          }

          goto LABEL_115;
        }

        if (v202 < v223)
        {
          goto LABEL_353;
        }

        v58 = sub_100935BE8();
        if (v58)
        {
          v179 = v58;
          v59 = sub_100935C18();
          if (__OFSUB__(v223, v59))
          {
            goto LABEL_367;
          }

          v60 = (v223 - v59 + v179);
        }

        else
        {
          v60 = 0;
        }

        v83 = sub_100935C08();
        v81 = (v223 >> 32) - v223;
        if (v83 < v200)
        {
          v81 = v83;
        }

        v82 = v195;
        if (!v195)
        {
          goto LABEL_392;
        }

        if (!v60)
        {
          goto LABEL_391;
        }
      }

LABEL_156:
      if (v82 != v60)
      {
        v78 = memcmp(v82, v60, v81);
        sub_1007156D8(v30, v29);
        goto LABEL_158;
      }

      sub_1007156D8(v30, v29);
LABEL_161:
      v87 = v223;
      v88 = v225;
LABEL_162:
      sub_1007156D8(v87, v88);
      a1[v21] |= v22;
      v38 = __OFADD__(v212++, 1);
      v4 = a4;
      v11 = v187;
      v7 = v193;
      v10 = v210;
      if (v38)
      {
        __break(1u);
        break;
      }
    }
  }

  v212 = 0;
  v89 = 0;
  v194 = v5 + 56;
  v90 = 1 << *(v5 + 32);
  if (v90 < 64)
  {
    v91 = ~(-1 << v90);
  }

  else
  {
    v91 = -1;
  }

  v92 = v91 & *(v5 + 56);
  v93 = (v90 + 63) >> 6;
  v201 = v93;
  v94 = v4 + 56;
  v221 = v4 + 56;
  while (1)
  {
LABEL_170:
    if (v92)
    {
      v95 = __clz(__rbit64(v92));
      v96 = (v92 - 1) & v92;
      goto LABEL_177;
    }

    v97 = v89;
    do
    {
      v89 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        __break(1u);
LABEL_325:
        __break(1u);
LABEL_326:
        __break(1u);
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
LABEL_346:
        __break(1u);
LABEL_347:
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
LABEL_351:
        __break(1u);
LABEL_352:
        __break(1u);
LABEL_353:
        __break(1u);
LABEL_354:
        __break(1u);
LABEL_355:
        __break(1u);
LABEL_356:
        __break(1u);
LABEL_357:
        __break(1u);
LABEL_358:
        __break(1u);
LABEL_359:
        __break(1u);
LABEL_360:
        __break(1u);
LABEL_361:
        __break(1u);
LABEL_362:
        __break(1u);
LABEL_363:
        __break(1u);
LABEL_364:
        __break(1u);
LABEL_365:
        __break(1u);
LABEL_366:
        __break(1u);
LABEL_367:
        __break(1u);
LABEL_368:
        __break(1u);
LABEL_369:
        __break(1u);
      }

      if (v89 >= v93)
      {
        goto LABEL_323;
      }

      v98 = *(v194 + 8 * v89);
      ++v97;
    }

    while (!v98);
    v95 = __clz(__rbit64(v98));
    v96 = (v98 - 1) & v98;
LABEL_177:
    v99 = v95 | (v89 << 6);
    v213 = v96;
    v100 = (*(v5 + 48) + 16 * v99);
    v102 = *v100;
    v101 = v100[1];
    sub_100937668();
    sub_100715738(v102, v101);
    sub_100935EB8();
    v103 = sub_1009376C8();
    v104 = -1 << *(v4 + 32);
    v105 = v103 & ~v104;
    v106 = v94;
    v228 = v101;
    if ((*(v94 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105))
    {
      break;
    }

LABEL_169:
    v94 = v106;
    sub_1007156D8(v102, v228);
    v5 = a3;
    v93 = v201;
    v92 = v213;
  }

  v199 = v99;
  v107 = ~v104;
  v108 = v101 >> 62;
  if (v102)
  {
    v109 = 0;
  }

  else
  {
    v109 = v101 == 0xC000000000000000;
  }

  v110 = !v109;
  v224 = v110;
  v111 = __OFSUB__(HIDWORD(v102), v102);
  v217 = v111;
  v226 = BYTE6(v101);
  v211 = v102 >> 32;
  v203 = (v102 >> 32) - v102;
  __n = v107;
  while (1)
  {
    v112 = (*(v4 + 48) + 16 * v105);
    v113 = *v112;
    v114 = v112[1];
    v115 = v114 >> 62;
    if (v114 >> 62 == 3)
    {
      if (v113)
      {
        v116 = 0;
      }

      else
      {
        v116 = v114 == 0xC000000000000000;
      }

      v118 = !v116 || v108 < 3;
      if (((v118 | v224) & 1) == 0)
      {
        v94 = v106;
        v172 = 0;
        v173 = 0xC000000000000000;
LABEL_318:
        sub_1007156D8(v172, v173);
        v174 = v212;
        goto LABEL_319;
      }

LABEL_212:
      v119 = 0;
      if (v108 <= 1)
      {
        goto LABEL_209;
      }

      goto LABEL_213;
    }

    if (v115 > 1)
    {
      if (v115 != 2)
      {
        goto LABEL_212;
      }

      v121 = *(v113 + 16);
      v120 = *(v113 + 24);
      v38 = __OFSUB__(v120, v121);
      v119 = v120 - v121;
      if (v38)
      {
        goto LABEL_330;
      }

      if (v108 <= 1)
      {
        goto LABEL_209;
      }
    }

    else if (v115)
    {
      LODWORD(v119) = HIDWORD(v113) - v113;
      if (__OFSUB__(HIDWORD(v113), v113))
      {
        goto LABEL_331;
      }

      v119 = v119;
      if (v108 <= 1)
      {
LABEL_209:
        v122 = v226;
        if (v108)
        {
          v122 = HIDWORD(v102) - v102;
          if (v217)
          {
            goto LABEL_326;
          }
        }

        goto LABEL_215;
      }
    }

    else
    {
      v119 = BYTE6(v114);
      if (v108 <= 1)
      {
        goto LABEL_209;
      }
    }

LABEL_213:
    if (v108 != 2)
    {
      if (!v119)
      {
        goto LABEL_317;
      }

      goto LABEL_189;
    }

    v124 = *(v102 + 16);
    v123 = *(v102 + 24);
    v38 = __OFSUB__(v123, v124);
    v122 = v123 - v124;
    if (v38)
    {
      goto LABEL_327;
    }

LABEL_215:
    if (v119 != v122)
    {
      goto LABEL_189;
    }

    if (v119 < 1)
    {
      goto LABEL_317;
    }

    if (v115 > 1)
    {
      break;
    }

    if (v115)
    {
      if (v113 > v113 >> 32)
      {
        goto LABEL_334;
      }

      sub_100715738(v113, v114);
      v131 = sub_100935BE8();
      if (v131)
      {
        v132 = v131;
        v133 = sub_100935C18();
        if (__OFSUB__(v113, v133))
        {
          goto LABEL_337;
        }

        v206 = (v113 - v133 + v132);
      }

      else
      {
        v206 = 0;
      }

      sub_100935C08();
      v4 = a4;
      v107 = __n;
      if (v108 == 2)
      {
        v192 = *(v102 + 16);
        v185 = *(v102 + 24);
        v141 = sub_100935BE8();
        if (v141)
        {
          v157 = sub_100935C18();
          v158 = v192;
          if (__OFSUB__(v192, v157))
          {
            goto LABEL_362;
          }

          v141 += v192 - v157;
        }

        else
        {
          v158 = v192;
        }

        v168 = v185 - v158;
        if (__OFSUB__(v185, v158))
        {
          goto LABEL_348;
        }

        v169 = sub_100935C08();
        if (v169 >= v168)
        {
          v165 = v168;
        }

        else
        {
          v165 = v169;
        }

        v166 = v206;
        if (!v206)
        {
          goto LABEL_390;
        }

        v4 = a4;
        if (!v141)
        {
          goto LABEL_389;
        }

        goto LABEL_315;
      }

      if (v108 == 1)
      {
        if (v211 < v102)
        {
          goto LABEL_347;
        }

        v142 = sub_100935BE8();
        if (v142)
        {
          v190 = v142;
          v143 = sub_100935C18();
          if (__OFSUB__(v102, v143))
          {
            goto LABEL_363;
          }

          v141 = (v102 - v143 + v190);
        }

        else
        {
          v141 = 0;
        }

        v170 = sub_100935C08();
        v165 = (v102 >> 32) - v102;
        if (v170 < v203)
        {
          v165 = v170;
        }

        v166 = v206;
        if (!v206)
        {
          goto LABEL_385;
        }

        if (!v141)
        {
          goto LABEL_384;
        }

        goto LABEL_315;
      }

      v156 = v206;
      *__s1 = v102;
      *&__s1[8] = v228;
      *&__s1[12] = WORD2(v228);
      if (!v206)
      {
        goto LABEL_371;
      }

      goto LABEL_277;
    }

    *__s1 = v113;
    *&__s1[8] = v114;
    __s1[10] = BYTE2(v114);
    __s1[11] = BYTE3(v114);
    __s1[12] = BYTE4(v114);
    __s1[13] = BYTE5(v114);
    if (!v108)
    {
      goto LABEL_240;
    }

    if (v108 == 1)
    {
      if (v211 < v102)
      {
        goto LABEL_342;
      }

      sub_100715738(v113, v114);
      v125 = sub_100791AC0(v102, v211, v228 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (v209)
      {
        goto LABEL_399;
      }

      v126 = v125;
      sub_1007156D8(v113, v114);
    }

    else
    {
      v144 = *(v102 + 16);
      v145 = *(v102 + 24);
      sub_100715738(v113, v114);
      v146 = sub_100791AC0(v144, v145, v228 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (v209)
      {
        goto LABEL_399;
      }

      v126 = v146;
      sub_1007156D8(v113, v114);
      v4 = a4;
    }

    v106 = v221;
    if (v126)
    {
      goto LABEL_317;
    }

LABEL_189:
    v105 = (v105 + 1) & v107;
    if (((*(v106 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105) & 1) == 0)
    {
      goto LABEL_169;
    }
  }

  if (v115 == 2)
  {
    v127 = *(v113 + 16);
    sub_100715738(v113, v114);
    v128 = sub_100935BE8();
    if (v128)
    {
      v129 = v128;
      v130 = sub_100935C18();
      if (__OFSUB__(v127, v130))
      {
        goto LABEL_336;
      }

      v205 = (v127 - v130 + v129);
    }

    else
    {
      v205 = 0;
    }

    sub_100935C08();
    v4 = a4;
    v107 = __n;
    if (v108 == 2)
    {
      v191 = *(v102 + 16);
      v184 = *(v102 + 24);
      v141 = sub_100935BE8();
      if (v141)
      {
        v154 = sub_100935C18();
        v155 = v191;
        if (__OFSUB__(v191, v154))
        {
          goto LABEL_360;
        }

        v141 += v191 - v154;
      }

      else
      {
        v155 = v191;
      }

      v163 = v184 - v155;
      if (__OFSUB__(v184, v155))
      {
        goto LABEL_346;
      }

      v164 = sub_100935C08();
      if (v164 >= v163)
      {
        v165 = v163;
      }

      else
      {
        v165 = v164;
      }

      v166 = v205;
      if (!v205)
      {
        goto LABEL_376;
      }

      v4 = a4;
      if (!v141)
      {
        goto LABEL_375;
      }

      goto LABEL_315;
    }

    if (v108 == 1)
    {
      if (v211 < v102)
      {
        goto LABEL_344;
      }

      v139 = sub_100935BE8();
      if (v139)
      {
        v189 = v139;
        v140 = sub_100935C18();
        if (__OFSUB__(v102, v140))
        {
          goto LABEL_361;
        }

        v141 = (v102 - v140 + v189);
      }

      else
      {
        v141 = 0;
      }

      v167 = sub_100935C08();
      v165 = (v102 >> 32) - v102;
      if (v167 < v203)
      {
        v165 = v167;
      }

      v166 = v205;
      if (!v205)
      {
        goto LABEL_387;
      }

      if (!v141)
      {
        goto LABEL_386;
      }

LABEL_315:
      if (v166 == v141)
      {
        sub_1007156D8(v113, v114);
        sub_1007156D8(v102, v228);
        v174 = v212;
        v94 = v221;
LABEL_319:
        v92 = v213;
        *(a1 + ((v199 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v199;
        v212 = v174 + 1;
        v5 = a3;
        v93 = v201;
        if (__OFADD__(v174, 1))
        {
          goto LABEL_340;
        }

        goto LABEL_170;
      }

      v171 = memcmp(v166, v141, v165);
      sub_1007156D8(v113, v114);
      v106 = v221;
      v107 = __n;
      if (!v171)
      {
        goto LABEL_317;
      }

      goto LABEL_189;
    }

    v156 = v205;
    *__s1 = v102;
    *&__s1[8] = v228;
    *&__s1[12] = WORD2(v228);
    if (!v205)
    {
      goto LABEL_374;
    }

LABEL_277:
    v153 = memcmp(v156, __s1, v226);
    sub_1007156D8(v113, v114);
LABEL_278:
    v106 = v221;
    if (!v153)
    {
      goto LABEL_317;
    }

    goto LABEL_189;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v108)
  {
LABEL_240:
    LOWORD(__s2) = v102;
    BYTE2(__s2) = BYTE2(v102);
    HIBYTE(__s2) = BYTE3(v102);
    v230 = BYTE4(v102);
    LOBYTE(v231) = BYTE5(v102);
    HIBYTE(v231) = BYTE6(v102);
    v232 = HIBYTE(v102);
    v233 = v228;
    v234 = WORD2(v228);
    v137 = v106;
    v138 = memcmp(__s1, &__s2, v226);
    v106 = v137;
    if (!v138)
    {
      goto LABEL_317;
    }

    goto LABEL_189;
  }

  if (v108 != 2)
  {
    if (v211 < v102)
    {
      goto LABEL_341;
    }

    sub_100715738(v113, v114);
    v147 = sub_100935BE8();
    if (!v147)
    {
      goto LABEL_372;
    }

    v148 = v147;
    v149 = sub_100935C18();
    if (__OFSUB__(v102, v149))
    {
      goto LABEL_345;
    }

    v150 = (v102 - v149 + v148);
    v151 = sub_100935C08();
    if (!v150)
    {
      goto LABEL_373;
    }

    if (v151 >= v203)
    {
      v152 = (v102 >> 32) - v102;
    }

    else
    {
      v152 = v151;
    }

    v153 = memcmp(__s1, v150, v152);
    sub_1007156D8(v113, v114);
    v4 = a4;
    v107 = __n;
    goto LABEL_278;
  }

  v207 = *(v102 + 16);
  v188 = *(v102 + 24);
  sub_100715738(v113, v114);
  v134 = sub_100935BE8();
  if (v134)
  {
    v135 = sub_100935C18();
    v136 = v207;
    if (__OFSUB__(v207, v135))
    {
      goto LABEL_359;
    }

    v134 = &v207[v134 - v135];
  }

  else
  {
    v136 = v207;
  }

  v159 = v188 - v136;
  if (__OFSUB__(v188, v136))
  {
    goto LABEL_343;
  }

  v160 = sub_100935C08();
  if (v134)
  {
    if (v160 >= v159)
    {
      v161 = v159;
    }

    else
    {
      v161 = v160;
    }

    v162 = memcmp(__s1, v134, v161);
    sub_1007156D8(v113, v114);
    v4 = a4;
    v106 = v221;
    v107 = __n;
    if (!v162)
    {
LABEL_317:
      v94 = v106;
      v172 = v102;
      v173 = v228;
      goto LABEL_318;
    }

    goto LABEL_189;
  }

  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  sub_100935C08();
LABEL_373:
  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  __break(1u);
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  __break(1u);
LABEL_379:
  __break(1u);
LABEL_380:
  __break(1u);
LABEL_381:
  __break(1u);
LABEL_382:
  sub_100935C08();
LABEL_383:
  __break(1u);
LABEL_384:
  __break(1u);
LABEL_385:
  __break(1u);
LABEL_386:
  __break(1u);
LABEL_387:
  __break(1u);
LABEL_388:
  sub_100935C08();
  __break(1u);
LABEL_389:
  __break(1u);
LABEL_390:
  __break(1u);
LABEL_391:
  __break(1u);
LABEL_392:
  __break(1u);
LABEL_393:
  __break(1u);
LABEL_394:
  __break(1u);
LABEL_395:
  __break(1u);
LABEL_396:
  __break(1u);
LABEL_397:
  __break(1u);
LABEL_398:
  __break(1u);
LABEL_399:

  __break(1u);
  return result;
}

Swift::Int sub_1008E85A0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_100937538(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100706B30(&unk_100CBB1F8);
        v6 = sub_100936D28();
        v6[2] = v5;
      }

      v7 = *(sub_100706B30(&unk_100CBB1F8) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1008E8C3C(v8, v9, a1, v4);
      v6[2] = 0;
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
    return sub_1008E87E8(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_1008E86E4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_100937538(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
        v6 = sub_100936D28();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1008E95A4(v8, v9, a1, v4);
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
    return sub_1008E8A48(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1008E87E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_100706B30(&unk_100CBB1F8);
  v8 = __chkstk_darwin(v35);
  v34 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v25 - v11;
  result = __chkstk_darwin(v10);
  v16 = &v25 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v32 = -v18;
    v33 = v17;
    v20 = a1 - a3;
    v26 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v30 = v19;
    v31 = a3;
    v28 = v21;
    v29 = v20;
    while (1)
    {
      sub_100012D50(v21, v16, &unk_100CBB1F8);
      sub_100012D50(v19, v12, &unk_100CBB1F8);
      v22 = sub_100935F68();
      sub_100013814(v12, &unk_100CBB1F8);
      result = sub_100013814(v16, &unk_100CBB1F8);
      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v19 = v30 + v26;
        v20 = v29 - 1;
        v21 = v28 + v26;
        if (v31 + 1 == v27)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v23 = v34;
      sub_100021E3C(v21, v34, &unk_100CBB1F8);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_100021E3C(v23, v19, &unk_100CBB1F8);
      v19 += v32;
      v21 += v32;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1008E8A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v31 = sub_100936038();
  v8 = __chkstk_darwin(v31);
  v30 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v13 = &v25 - v12;
  v26 = a2;
  if (a3 != a2)
  {
    v14 = (v11 + 8);
    v32 = *a4;
    v15 = v32 + 8 * a3 - 8;
    v16 = a1 - a3;
LABEL_5:
    v28 = v15;
    v29 = a3;
    v27 = v16;
    v17 = v15;
    while (1)
    {

      sub_10075B2DC();
      v18 = v30;
      sub_10075B2DC();
      v19 = sub_100935F68();
      v20 = *v14;
      v21 = v18;
      v22 = v31;
      (*v14)(v21, v31);
      v20(v13, v22);

      if ((v19 & 1) == 0)
      {
LABEL_4:
        a3 = v29 + 1;
        v15 = v28 + 8;
        v16 = v27 - 1;
        if (v29 + 1 == v26)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v32)
      {
        break;
      }

      v23 = *v17;
      *v17 = v17[1];
      v17[1] = v23;
      --v17;
      if (__CFADD__(v16++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1008E8C3C(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v108 = a1;
  v6 = sub_100706B30(&unk_100CBB1F8);
  v118 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v112 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v121 = &v105 - v10;
  v11 = __chkstk_darwin(v9);
  v123 = &v105 - v12;
  result = __chkstk_darwin(v11);
  v122 = &v105 - v14;
  v119 = a3;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = &_swiftEmptyArrayStorage;
LABEL_100:
    a4 = *v108;
    if (!*v108)
    {
      goto LABEL_139;
    }

    v6 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v109;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v6;
LABEL_103:
      v125 = result;
      v6 = *(result + 16);
      if (v6 >= 2)
      {
        while (*v119)
        {
          v101 = *(result + 16 * v6);
          v102 = result;
          v103 = *(result + 16 * (v6 - 1) + 40);
          sub_1008E9D8C(*v119 + *(v118 + 72) * v101, *v119 + *(v118 + 72) * *(result + 16 * (v6 - 1) + 32), *v119 + *(v118 + 72) * v103, a4);
          if (v32)
          {
          }

          if (v103 < v101)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v102 = sub_1008495CC(v102);
          }

          if (v6 - 2 >= *(v102 + 2))
          {
            goto LABEL_127;
          }

          v104 = &v102[16 * v6];
          *v104 = v101;
          *(v104 + 1) = v103;
          v125 = v102;
          sub_100849540(v6 - 1);
          result = v125;
          v6 = *(v125 + 16);
          if (v6 <= 1)
          {
          }
        }

        goto LABEL_137;
      }
    }

LABEL_133:
    result = sub_1008495CC(v6);
    goto LABEL_103;
  }

  v106 = a4;
  v16 = 0;
  v17 = &_swiftEmptyArrayStorage;
  v18 = &unk_100CBB1F8;
  v124 = v6;
  while (1)
  {
    v19 = v16;
    v113 = v17;
    if (v16 + 1 >= v15)
    {
      v31 = v16 + 1;
      v32 = v109;
    }

    else
    {
      v20 = v16;
      v21 = *v119;
      v116 = v21;
      v22 = *(v118 + 72);
      a4 = v21 + v22 * (v16 + 1);
      v23 = v122;
      sub_100012D50(a4, v122, v18);
      v24 = v21 + v22 * v20;
      v25 = v123;
      sub_100012D50(v24, v123, v18);
      LODWORD(v117) = sub_100935F68();
      sub_100013814(v25, v18);
      result = sub_100013814(v23, v18);
      v107 = v20;
      v26 = v20 + 2;
      v120 = v22;
      v27 = v116 + v22 * (v20 + 2);
      while (v15 != v26)
      {
        v28 = v122;
        sub_100012D50(v27, v122, v18);
        v29 = v123;
        sub_100012D50(a4, v123, v18);
        v30 = sub_100935F68() & 1;
        sub_100013814(v29, v18);
        result = sub_100013814(v28, v18);
        ++v26;
        v27 += v120;
        a4 += v120;
        if ((v117 & 1) != v30)
        {
          v31 = v26 - 1;
          goto LABEL_12;
        }
      }

      v31 = v15;
LABEL_12:
      v6 = v124;
      v19 = v107;
      v32 = v109;
      if (v117)
      {
        if (v31 < v107)
        {
          goto LABEL_130;
        }

        if (v107 < v31)
        {
          v33 = v120 * (v31 - 1);
          v34 = v31;
          v35 = v31 * v120;
          v36 = v31;
          v37 = v107;
          a4 = v107 * v120;
          do
          {
            if (v37 != --v34)
            {
              v38 = *v119;
              if (!*v119)
              {
                goto LABEL_136;
              }

              sub_100021E3C(v38 + a4, v112, v18);
              if (a4 < v33 || v38 + a4 >= v38 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a4 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_100021E3C(v112, v38 + v33, v18);
            }

            ++v37;
            v33 -= v120;
            v35 -= v120;
            a4 += v120;
          }

          while (v37 < v34);
          v32 = v109;
          v6 = v124;
          v19 = v107;
          v31 = v36;
        }
      }
    }

    v39 = v119[1];
    if (v31 >= v39)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v31, v19))
    {
      goto LABEL_129;
    }

    if (v31 - v19 >= v106)
    {
LABEL_35:
      v16 = v31;
      if (v31 < v19)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v19, v106))
    {
      goto LABEL_131;
    }

    if (v19 + v106 >= v39)
    {
      v40 = v119[1];
    }

    else
    {
      v40 = v19 + v106;
    }

    if (v40 < v19)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v31 == v40)
    {
      goto LABEL_35;
    }

    v109 = v32;
    v87 = *v119;
    v88 = *(v118 + 72);
    v89 = *v119 + v88 * (v31 - 1);
    v90 = -v88;
    v107 = v19;
    v91 = v19 - v31;
    v117 = v31;
    v110 = v88;
    v111 = v40;
    v120 = v87;
    a4 = v87 + v31 * v88;
LABEL_90:
    v114 = a4;
    v115 = v91;
    v116 = v89;
    v92 = v89;
LABEL_91:
    v93 = v122;
    sub_100012D50(a4, v122, v18);
    v94 = v123;
    sub_100012D50(v92, v123, v18);
    v95 = sub_100935F68();
    sub_100013814(v94, v18);
    result = sub_100013814(v93, v18);
    if (v95)
    {
      break;
    }

    v6 = v124;
LABEL_89:
    v16 = v111;
    v89 = v116 + v110;
    v91 = v115 - 1;
    a4 = v114 + v110;
    if (++v117 != v111)
    {
      goto LABEL_90;
    }

    v32 = v109;
    v19 = v107;
    if (v111 < v107)
    {
      goto LABEL_128;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v17 = v113;
    }

    else
    {
      result = sub_100846FD8(0, *(v113 + 2) + 1, 1, v113);
      v17 = result;
    }

    v42 = *(v17 + 2);
    v41 = *(v17 + 3);
    a4 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_100846FD8((v41 > 1), v42 + 1, 1, v17);
      v17 = result;
    }

    *(v17 + 2) = a4;
    v43 = &v17[16 * v42];
    *(v43 + 4) = v19;
    *(v43 + 5) = v16;
    if (!*v108)
    {
      goto LABEL_138;
    }

    if (v42)
    {
      v44 = *v108;
      v6 = v124;
      while (1)
      {
        v45 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v46 = *(v17 + 4);
          v47 = *(v17 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_56:
          if (v49)
          {
            goto LABEL_117;
          }

          v62 = &v17[16 * a4];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_120;
          }

          v68 = &v17[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_124;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v72 = &v17[16 * a4];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_70:
        if (v67)
        {
          goto LABEL_119;
        }

        v75 = &v17[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_122;
        }

        if (v78 < v66)
        {
          goto LABEL_4;
        }

LABEL_77:
        v6 = v45 - 1;
        if (v45 - 1 >= a4)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*v119)
        {
          goto LABEL_135;
        }

        v83 = v17;
        a4 = *&v17[16 * v6 + 32];
        v84 = *&v17[16 * v45 + 40];
        sub_1008E9D8C(*v119 + *(v118 + 72) * a4, *v119 + *(v118 + 72) * *&v17[16 * v45 + 32], *v119 + *(v118 + 72) * v84, v44);
        if (v32)
        {
        }

        if (v84 < a4)
        {
          goto LABEL_113;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v85 = v83;
        }

        else
        {
          v85 = sub_1008495CC(v83);
        }

        if (v6 >= *(v85 + 2))
        {
          goto LABEL_114;
        }

        v86 = &v85[16 * v6];
        *(v86 + 4) = a4;
        *(v86 + 5) = v84;
        v125 = v85;
        result = sub_100849540(v45);
        v17 = v125;
        a4 = *(v125 + 16);
        v6 = v124;
        if (a4 <= 1)
        {
          goto LABEL_4;
        }
      }

      v50 = &v17[16 * a4 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_115;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_116;
      }

      v57 = &v17[16 * a4];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_118;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_121;
      }

      if (v61 >= v53)
      {
        v79 = &v17[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_125;
        }

        if (v48 < v82)
        {
          v45 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v6 = v124;
LABEL_4:
    v109 = v32;
    v15 = v119[1];
    if (v16 >= v15)
    {
      goto LABEL_100;
    }
  }

  if (v120)
  {
    v96 = v18;
    v97 = v121;
    sub_100021E3C(a4, v121, v96);
    v6 = v124;
    swift_arrayInitWithTakeFrontToBack();
    v98 = v97;
    v18 = v96;
    sub_100021E3C(v98, v92, v96);
    v92 += v90;
    a4 += v90;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_89;
    }

    goto LABEL_91;
  }

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
  return result;
}

uint64_t sub_1008E95A4(int64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v99 = a1;
  v108 = sub_100936038();
  v9 = __chkstk_darwin(v108);
  v107 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v106 = &v93 - v13;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = &_swiftEmptyArrayStorage;
LABEL_88:
    v17 = *v99;
    if (!*v99)
    {
      goto LABEL_127;
    }

    a4 = v16;
    v5 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_121:
      result = sub_1008495CC(a4);
    }

    v109 = result;
    v89 = *(result + 16);
    if (v89 >= 2)
    {
      while (*v5)
      {
        a4 = *(result + 16 * v89);
        v90 = result;
        v91 = *(result + 16 * (v89 - 1) + 40);
        sub_1008EA2A4((*v5 + 8 * a4), (*v5 + 8 * *(result + 16 * (v89 - 1) + 32)), (*v5 + 8 * v91), v17);
        if (v6)
        {
        }

        if (v91 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_1008495CC(v90);
        }

        if (v89 - 2 >= *(v90 + 2))
        {
          goto LABEL_115;
        }

        v92 = &v90[16 * v89];
        *v92 = a4;
        v92[1] = v91;
        v109 = v90;
        sub_100849540(v89 - 1);
        result = v109;
        v89 = *(v109 + 2);
        if (v89 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v15 = 0;
  v105 = (v12 + 8);
  v16 = &_swiftEmptyArrayStorage;
  v98 = a4;
  v94 = a3;
  while (1)
  {
    v17 = v15++;
    if (v15 < v14)
    {
      v103 = v14;
      v96 = v16;
      v97 = v6;
      v18 = *a3;
      v102 = 8 * v17;
      v5 = v18 + 8 * v17 + 16;

      v19 = v106;
      sub_10075B2DC();
      v20 = v107;
      sub_10075B2DC();
      LODWORD(v104) = sub_100935F68();
      v21 = *v105;
      v22 = v108;
      (*v105)(v20, v108);
      v21(v19, v22);

      v95 = v17;
      v23 = v17 + 2;
      while (1)
      {
        v15 = v103;
        if (v103 == v23)
        {
          break;
        }

        v24 = v106;
        sub_10075B2DC();
        v25 = v107;
        sub_10075B2DC();
        v26 = sub_100935F68() & 1;
        v27 = v25;
        v28 = v108;
        v21(v27, v108);
        v21(v24, v28);

        ++v23;
        v5 += 8;
        if ((v104 & 1) != v26)
        {
          v15 = v23 - 1;
          break;
        }
      }

      v16 = v96;
      v6 = v97;
      a4 = v98;
      v17 = v95;
      v29 = v102;
      if (v104)
      {
        if (v15 < v95)
        {
          goto LABEL_118;
        }

        a3 = v94;
        if (v95 < v15)
        {
          v30 = 8 * v15 - 8;
          v31 = v15;
          v32 = v95;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v29);
              *(v34 + v29) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            ++v32;
            v30 -= 8;
            v29 += 8;
          }

          while (v32 < v31);
        }
      }

      else
      {
        a3 = v94;
      }
    }

    v35 = a3[1];
    if (v15 < v35)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_117;
      }

      if (v15 - v17 < a4)
      {
        v36 = v17 + a4;
        if (__OFADD__(v17, a4))
        {
          goto LABEL_119;
        }

        if (v36 >= v35)
        {
          v36 = a3[1];
        }

        if (v36 < v17)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v15 != v36)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v15 < v17)
    {
      goto LABEL_116;
    }

    v45 = v16;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v16 = v45;
    }

    else
    {
      result = sub_100846FD8(0, *(v45 + 2) + 1, 1, v45);
      v16 = result;
    }

    v5 = *(v16 + 2);
    v46 = *(v16 + 3);
    a4 = v5 + 1;
    if (v5 >= v46 >> 1)
    {
      result = sub_100846FD8((v46 > 1), v5 + 1, 1, v16);
      v16 = result;
    }

    *(v16 + 2) = a4;
    v47 = &v16[16 * v5];
    *(v47 + 4) = v17;
    *(v47 + 5) = v15;
    v48 = *v99;
    if (!*v99)
    {
      goto LABEL_126;
    }

    if (v5)
    {
      while (1)
      {
        v17 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v49 = *(v16 + 4);
          v50 = *(v16 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_56:
          if (v52)
          {
            goto LABEL_105;
          }

          v65 = &v16[16 * a4];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_108;
          }

          v71 = &v16[16 * v17 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_112;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v17 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v75 = &v16[16 * a4];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_70:
        if (v70)
        {
          goto LABEL_107;
        }

        v78 = &v16[16 * v17];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
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

LABEL_77:
        v5 = v17 - 1;
        if (v17 - 1 >= a4)
        {
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v86 = v16;
        a4 = *&v16[16 * v5 + 32];
        v87 = *&v16[16 * v17 + 40];
        sub_1008EA2A4((*a3 + 8 * a4), (*a3 + 8 * *&v16[16 * v17 + 32]), (*a3 + 8 * v87), v48);
        if (v6)
        {
        }

        if (v87 < a4)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_1008495CC(v86);
        }

        if (v5 >= *(v86 + 2))
        {
          goto LABEL_102;
        }

        v88 = &v86[16 * v5];
        *(v88 + 4) = a4;
        *(v88 + 5) = v87;
        v109 = v86;
        result = sub_100849540(v17);
        v16 = v109;
        a4 = *(v109 + 2);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v16[16 * a4 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_103;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_104;
      }

      v60 = &v16[16 * a4];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_106;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_109;
      }

      if (v64 >= v56)
      {
        v82 = &v16[16 * v17 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_113;
        }

        if (v51 < v85)
        {
          v17 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v14 = a3[1];
    a4 = v98;
    if (v15 >= v14)
    {
      goto LABEL_88;
    }
  }

  v96 = v16;
  v97 = v6;
  v104 = *a3;
  v37 = (v104 + 8 * v15 - 8);
  v95 = v17;
  v38 = v17 - v15;
  v100 = v36;
LABEL_29:
  v102 = v37;
  v103 = v15;
  v101 = v38;
  while (1)
  {

    v5 = v106;
    sub_10075B2DC();
    v39 = v107;
    sub_10075B2DC();
    a4 = sub_100935F68();
    v40 = *v105;
    v41 = v39;
    v42 = v108;
    (*v105)(v41, v108);
    v40(v5, v42);

    if ((a4 & 1) == 0)
    {
LABEL_28:
      v15 = v103 + 1;
      v37 = (v102 + 8);
      v38 = v101 - 1;
      if (v103 + 1 != v100)
      {
        goto LABEL_29;
      }

      v15 = v100;
      v16 = v96;
      v6 = v97;
      a3 = v94;
      v17 = v95;
      goto LABEL_36;
    }

    if (!v104)
    {
      break;
    }

    v43 = *v37;
    *v37 = v37[1];
    v37[1] = v43;
    --v37;
    if (__CFADD__(v38++, 1))
    {
      goto LABEL_28;
    }
  }

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
  return result;
}

uint64_t sub_1008E9D8C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = a3;
  v44 = sub_100706B30(&unk_100CBB1F8);
  v7 = __chkstk_darwin(v44);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v11 = &v37 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = v45 - a2;
  if (v45 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v17 < 1)
    {
      v25 = a4 + v17;
    }

    else
    {
      v23 = -v13;
      v24 = a4 + v17;
      v25 = a4 + v17;
      v40 = a4;
      v41 = -v13;
      v39 = a1;
      do
      {
        v37 = v25;
        v26 = a2;
        v27 = a2 + v23;
        v42 = v26;
        while (1)
        {
          v29 = v45;
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v37;
            goto LABEL_60;
          }

          v38 = v25;
          v45 += v23;
          v30 = v24 + v23;
          sub_100012D50(v30, v11, &unk_100CBB1F8);
          v31 = v27;
          v32 = v27;
          v33 = v11;
          v34 = v43;
          sub_100012D50(v32, v43, &unk_100CBB1F8);
          v35 = sub_100935F68();
          v36 = v34;
          v11 = v33;
          sub_100013814(v36, &unk_100CBB1F8);
          sub_100013814(v33, &unk_100CBB1F8);
          if (v35)
          {
            break;
          }

          v25 = v30;
          if (v29 < v24 || v45 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v31;
            a1 = v39;
          }

          else
          {
            v27 = v31;
            a1 = v39;
            if (v29 != v24)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v30;
          v28 = v30 > v40;
          v23 = v41;
          v26 = v42;
          if (!v28)
          {
            a2 = v42;
            goto LABEL_59;
          }
        }

        if (v29 < v42 || v45 >= v42)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v38;
          a1 = v39;
          v23 = v41;
        }

        else
        {
          v25 = v38;
          a1 = v39;
          a2 = v31;
          v23 = v41;
          if (v29 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v40);
    }

LABEL_59:
    v48 = a2;
    v46 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < v45)
    {
      v41 = v13;
      do
      {
        sub_100012D50(a2, v11, &unk_100CBB1F8);
        v19 = v43;
        sub_100012D50(a4, v43, &unk_100CBB1F8);
        v20 = sub_100935F68();
        sub_100013814(v19, &unk_100CBB1F8);
        sub_100013814(v11, &unk_100CBB1F8);
        if (v20)
        {
          v21 = a2 + v13;
          if (a1 < a2 || a1 >= v21)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v21;
        }

        else
        {
          v22 = a4 + v13;
          if (a1 < a4 || a1 >= v22)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = v22;
          a4 = v22;
        }

        v13 = v41;
        a1 += v41;
        v48 = a1;
      }

      while (a4 < v42 && a2 < v45);
    }
  }

LABEL_60:
  sub_1008EA6E8(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_1008EA2A4(char *a1, char *a2, char *a3, char *a4)
{
  v47 = a4;
  v45 = sub_100936038();
  v7 = *(v45 - 8);
  v8 = __chkstk_darwin(v45);
  v44 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v43 = &v38 - v10;
  v11 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v11 = a2 - a1;
  }

  v12 = v11 >> 3;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v12 >= v13 >> 3)
  {
    if (v47 != a2 || &a2[8 * v14] <= v47)
    {
      memmove(v47, a2, 8 * v14);
    }

    v46 = &v47[8 * v14];
    if (a3 - a2 >= 8 && a2 > a1)
    {
      v39 = (v7 + 8);
      v42 = a1;
      do
      {
        v38 = a2;
        v25 = a3 - 8;
        v26 = v46;
        v40 = a2 - 8;
        while (1)
        {
          v41 = v25;
          v27 = v25 + 8;
          v26 -= 8;

          v28 = v43;
          sub_10075B2DC();
          v29 = v44;
          sub_10075B2DC();
          v30 = sub_100935F68();
          v31 = *v39;
          v32 = v29;
          v33 = v45;
          (*v39)(v32, v45);
          v31(v28, v33);

          if (v30)
          {
            break;
          }

          v34 = v41;
          if (v27 != v46)
          {
            *v41 = *v26;
          }

          v25 = v34 - 8;
          v46 = v26;
          if (v26 <= v47)
          {
            v46 = v26;
            a2 = v38;
            goto LABEL_39;
          }
        }

        a3 = v41;
        v35 = v42;
        v36 = v40;
        if (v27 != v38)
        {
          *v41 = *v40;
        }

        if (v46 <= v47)
        {
          break;
        }

        a2 = v36;
      }

      while (v36 > v35);
      a2 = v36;
    }
  }

  else
  {
    if (v47 != a1 || &a1[8 * v12] <= v47)
    {
      memmove(v47, a1, 8 * v12);
    }

    v46 = &v47[8 * v12];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v15 = (v7 + 8);
      while (1)
      {
        v42 = a1;

        v16 = v43;
        sub_10075B2DC();
        v17 = v44;
        sub_10075B2DC();
        v18 = sub_100935F68();
        v19 = *v15;
        v20 = v17;
        v21 = v45;
        (*v15)(v20, v45);
        v19(v16, v21);

        if ((v18 & 1) == 0)
        {
          break;
        }

        v22 = a2;
        v23 = v42;
        v24 = v42 == a2;
        a2 += 8;
        if (!v24)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v23 + 8;
        if (v47 >= v46 || a2 >= a3)
        {
          goto LABEL_20;
        }
      }

      v22 = v47;
      v23 = v42;
      v47 += 8;
      if (v42 == v22)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v23 = *v22;
      goto LABEL_18;
    }

LABEL_20:
    a2 = a1;
  }

LABEL_39:
  if (a2 != v47 || a2 >= &v47[(v46 - v47 + (v46 - v47 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a2, v47, 8 * ((v46 - v47) / 8));
  }

  return 1;
}

uint64_t sub_1008EA6E8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_100706B30(&unk_100CBB1F8);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t (*sub_1008EA7D8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100937268();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1008EA858;
  }

  __break(1u);
  return result;
}

void *sub_1008EA860(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1009373F8();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100788564(v3, 0);
  sub_1008EA8F4((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1008EA8F4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1009373F8();
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
      result = sub_1009373F8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100014C88(&unk_100CBB218, &qword_100CBB210);
          for (i = 0; i != v6; ++i)
          {
            sub_100706B30(&qword_100CBB210);
            v9 = sub_1008EA7D8(v13, i, a3);
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
        type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
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

void *sub_1008EAAC0(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
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
      v18 = *(*(a4 + 48) + ((v12 << 10) | (16 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        sub_100715738(v18, *(&v18 + 1));
        goto LABEL_24;
      }

      ++v11;
      sub_100715738(v18, *(&v18 + 1));
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

void *sub_1008EAC24(void *result, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v14 = 0;
    v23 = -1 << *(v8 + 32);
    v12 = v8 + 56;
    v13 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v15 = v25 & *(v8 + 56);
    v16 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v17 = 0;
    goto LABEL_32;
  }

  sub_100937118();
  sub_100014170(0, a5);
  sub_100746FD4(a7, a5);
  result = sub_100936E58();
  v8 = v31;
  v12 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v16)
  {
    v17 = 0;
    goto LABEL_32;
  }

  if (v16 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v17 = 0;
  v27 = v13;
  a5 = ((v13 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v8 < 0)
    {
      if (!sub_100937198())
      {
        goto LABEL_30;
      }

      sub_100014170(0, v28);
      swift_dynamicCast();
      result = v30;
      v16 = a3;
      if (!v30)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v14;
    if (!v15)
    {
      break;
    }

    v20 = v14;
LABEL_13:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    result = *(*(v8 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v16)
    {
      v17 = v16;
      goto LABEL_30;
    }

    ++a2;
    v17 = v18;
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

    v15 = *(v12 + 8 * v20);
    ++v19;
    if (v15)
    {
      v14 = v20;
      goto LABEL_13;
    }
  }

  v15 = 0;
  if (a5 <= (v14 + 1))
  {
    v26 = (v14 + 1);
  }

  else
  {
    v26 = a5;
  }

  v14 = v26 - 1;
LABEL_30:
  v13 = v27;
LABEL_32:
  *v10 = v8;
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
  v10[4] = v15;
  return v17;
}

uint64_t sub_1008EAE54(uint64_t a1, uint64_t a2)
{
  v3 = sub_100935DD8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v48 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v55 = &v45 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v45 - v10;
  __chkstk_darwin(v9);
  v13 = &v45 - v12;
  if (!a2)
  {
    return 0;
  }

  v47 = objc_opt_self();
  v14 = [v47 defaultManager];
  sub_100935D98();
  sub_100935DB8(v15);
  v17 = v16;
  v53 = *(v4 + 8);
  v54 = v4 + 8;
  v53(v13, v3);
  v57[0] = 0;
  v18 = [v14 contentsOfDirectoryAtURL:v17 includingPropertiesForKeys:0 options:0 error:v57];

  v19 = v57[0];
  if (!v18)
  {
    v34 = v57[0];
LABEL_24:
    sub_100935D78();

    swift_willThrow();

    return 0;
  }

  v20 = v3;
  v21 = sub_100936CE8();
  v22 = v19;

  v51 = *(v21 + 16);
  v52 = v20;
  if (v51)
  {
    v23 = 0;
    v49 = (v4 + 32);
    v50 = v4 + 16;
    v24 = &_swiftEmptyArrayStorage;
    v46 = v21;
    do
    {
      if (v23 >= *(v21 + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
      }

      v25 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v26 = *(v4 + 72);
      (*(v4 + 16))(v11, v21 + v25 + v26 * v23, v20);
      v57[0] = sub_100935DA8();
      v57[1] = v27;
      strcpy(v56, "ids-query.db");
      HIBYTE(v56[6]) = 0;
      v56[7] = -5120;
      sub_100796ADC();
      v28 = sub_100937088();

      if (v28)
      {
        v29 = *v49;
        (*v49)(v55, v11, v20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1008E445C(0, v24[2] + 1, 1);
          v24 = v58;
        }

        v32 = v24[2];
        v31 = v24[3];
        if (v32 >= v31 >> 1)
        {
          sub_1008E445C(v31 > 1, v32 + 1, 1);
          v24 = v58;
        }

        v24[2] = v32 + 1;
        v33 = v24 + v25 + v32 * v26;
        v20 = v52;
        v29(v33, v55, v52);
        v21 = v46;
      }

      else
      {
        v53(v11, v20);
      }

      ++v23;
    }

    while (v51 != v23);
  }

  else
  {
    v24 = &_swiftEmptyArrayStorage;
  }

  v35 = v24[2];
  if (v35)
  {
    v36 = 0;
    while (1)
    {
      if (v36 >= v24[2])
      {
        goto LABEL_27;
      }

      v37 = v48;
      v38 = v52;
      (*(v4 + 16))(v48, v24 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v36, v52);
      v39 = [v47 defaultManager];
      sub_100935DB8(v40);
      v42 = v41;
      v53(v37, v38);
      v57[0] = 0;
      LODWORD(v37) = [v39 removeItemAtURL:v42 error:v57];

      if (!v37)
      {
        break;
      }

      ++v36;
      v43 = v57[0];
      if (v35 == v36)
      {

        return 1;
      }
    }

    v34 = v57[0];

    goto LABEL_24;
  }

  return 0;
}

unint64_t sub_1008EB660(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100706B30(&qword_100CBB148);
    v3 = sub_100937438();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_100715738(v5, v6);
      v8 = v7;
      result = sub_1008E4CC8(v5, v6, &Data.hash(into:), sub_1007BCDC0);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1008EB790(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100706B30(&qword_100CBAC78);
    v3 = sub_100937438();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1007417B0(v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1008EB888(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100706B30(&unk_100CBAC00);
    v3 = sub_100937438();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1008E4CC8(v5, v6, &String.hash(into:), sub_10001375C);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1008EB9B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100706B30(&qword_100CBA568);
    v3 = sub_100937438();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1008E4D5C(v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_1008EBAAC(unint64_t a1, char a2, void *a3, unsigned __int8 a4)
{
  v8 = a4;
  v9 = [objc_allocWithZone(IDSEndpointTransparency) init];
  v10 = v9;
  if (v8 == 2)
  {
    [v9 setKtValidation:0];
    return v10;
  }

  if ((a4 & 1) == 0)
  {
    v11 = 0;
    if ((a2 & 1) != 0 || a1 > 3)
    {
      goto LABEL_13;
    }

    v12 = &unk_1009BF410;
LABEL_11:
    v11 = v12[a1];
    goto LABEL_13;
  }

  if ((a2 & 1) == 0)
  {
    if (a1 > 3)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v12 = &unk_1009BF430;
    goto LABEL_11;
  }

  v11 = 4;
LABEL_13:
  [v9 setKtValidation:v11];
  if (a3)
  {
    a3 = sub_100935D68();
  }

  [v10 setKtError:a3];

  return v10;
}

uint64_t sub_1008EBBAC(void *a1)
{
  v1 = a1;
  v2 = [a1 verifierResult];
  if (!v2 || (v3 = v2, v4 = [v2 loggableDatas], v3, !v4))
  {
    v8 = sub_1008EB660(&_swiftEmptyArrayStorage);
    goto LABEL_33;
  }

  sub_100014170(0, &qword_100CBB140);
  v5 = sub_100936CE8();

  if (v5 >> 62)
  {
LABEL_30:
    v6 = sub_1009373F8();
    if (v6)
    {
LABEL_5:
      v7 = 0;
      v8 = _swiftEmptyDictionarySingleton;
      while (2)
      {
        v9 = v7;
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v10 = sub_100937268();
          }

          else
          {
            if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v10 = *(v5 + 8 * v9 + 32);
          }

          v11 = v10;
          v7 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          v12 = [v10 deviceID];
          if (v12)
          {
            break;
          }

          ++v9;
          if (v7 == v6)
          {
            goto LABEL_32;
          }
        }

        v38 = v1;
        v13 = v12;
        v40 = sub_100935EA8();
        v15 = v14;

        v37 = v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v15;
        v17 = sub_1008E4CC8(v40, v15, &Data.hash(into:), sub_1007BCDC0);
        v19 = _swiftEmptyDictionarySingleton[2];
        v20 = (v18 & 1) == 0;
        v21 = __OFADD__(v19, v20);
        v22 = v19 + v20;
        if (v21)
        {
          __break(1u);
        }

        else
        {
          v23 = v18;
          if (_swiftEmptyDictionarySingleton[3] >= v22)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v30 = v17;
              sub_1008E5C60();
              v17 = v30;
            }
          }

          else
          {
            sub_1008E50C4(v22, isUniquelyReferenced_nonNull_native);
            v17 = sub_1008E4CC8(v40, v15, &Data.hash(into:), sub_1007BCDC0);
            if ((v23 & 1) != (v24 & 1))
            {
              goto LABEL_40;
            }
          }

          v1 = v38;
          if (v23)
          {
            v25 = _swiftEmptyDictionarySingleton[7];
            v26 = *(v25 + 8 * v17);
            *(v25 + 8 * v17) = v37;

            sub_1007156D8(v40, v39);
            if (v7 != v6)
            {
              continue;
            }

            goto LABEL_32;
          }

          _swiftEmptyDictionarySingleton[(v17 >> 6) + 8] |= 1 << v17;
          v27 = (_swiftEmptyDictionarySingleton[6] + 16 * v17);
          *v27 = v40;
          v27[1] = v39;
          *(_swiftEmptyDictionarySingleton[7] + 8 * v17) = v37;

          v28 = _swiftEmptyDictionarySingleton[2];
          v21 = __OFADD__(v28, 1);
          v29 = v28 + 1;
          if (!v21)
          {
            _swiftEmptyDictionarySingleton[2] = v29;
            if (v7 != v6)
            {
              continue;
            }

            goto LABEL_32;
          }
        }

        break;
      }

      __break(1u);
LABEL_40:
      result = sub_1009375D8();
      __break(1u);
      return result;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }
  }

  v8 = _swiftEmptyDictionarySingleton;
LABEL_32:

LABEL_33:
  v31 = [v1 verifierResult];
  if (!v31 || (v32 = v31, v33 = [v31 succeed], v32, v33 != 2))
  {
    v34 = [v1 verifierResult];
    if (v34)
    {
      v35 = v34;
      [v34 optedIn];
    }
  }

  return v8;
}

uint64_t sub_1008EBF4C(unint64_t a1, void *a2)
{
  result = sub_1008EBBAC(a2);
  v4 = result;
  v6 = v5;
  if (a1 >> 62)
  {
    result = sub_1009373F8();
    v7 = result;
    if (!result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return result;
  }

  v8 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = sub_100937268();
    }

    else
    {
      v14 = *(a1 + 8 * v8 + 32);
    }

    v15 = v14;

    v16 = [v15 pushToken];
    v17 = sub_100935EA8();
    v19 = v18;

    if (*(v4 + 16) && (v20 = sub_1008E4CC8(v17, v19, &Data.hash(into:), sub_1007BCDC0), (v21 & 1) != 0))
    {
      v11 = *(*(v4 + 56) + 8 * v20);
      sub_1007156D8(v17, v19);

      v22 = [v11 result];
      v9 = [v11 failure];
      v10 = v22;
      v12 = 0;
    }

    else
    {

      sub_1007156D8(v17, v19);
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 1;
    }

    ++v8;
    v13 = sub_1008EBAAC(v10, v12, v9, v6);

    [v15 updateTransparency:v13];
  }

  while (v7 != v8);
LABEL_14:
}

void sub_1008EC1B4(uint64_t a1)
{
  v3 = *(sub_100936038() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_1008B030C(a1, v4, v5, v6, v7);
}

id sub_1008EC230()
{
  v0 = sub_100936038();
  v93 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v94 = &v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v71 - v3;
  sub_10074E2C0();
  sub_10074DFD8();
  v5 = objc_allocWithZone(IDSURI);
  v6 = sub_100936B28();

  v7 = sub_100936B28();

  v8 = [v5 initWithPrefixedURI:v6 withServiceLoggingHint:v7];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_100751C10();
  v11 = v10;
  v12 = objc_allocWithZone(IDSPushToken);
  isa = sub_100935E78().super.isa;
  v14 = [v12 initWithData:isa];

  sub_1007156D8(v9, v11);
  if (!v14)
  {

    return 0;
  }

  v92 = v14;
  v87 = v0;
  type metadata accessor for ArchiveHelper();
  v15 = sub_100014170(0, &qword_100CBA320);
  v16 = sub_100751F00();
  v18 = v17;
  v19 = sub_10001C1E4(v15, v16, v17);
  sub_1007156D8(v16, v18);
  if (!v19)
  {

    return 0;
  }

  v86 = v19;
  v20 = sub_100014170(0, &qword_100CBA338);
  v21 = sub_1007532F8();
  v23 = v22;
  v85 = sub_10001C1E4(v20, v21, v22);
  sub_10001C370(v21, v23);
  v24 = sub_100014170(0, &qword_100CBA330);
  v25 = sub_100753208();
  v27 = v26;
  v83 = sub_10001C1E4(v24, v25, v26);
  sub_10001C370(v25, v27);
  sub_1007533E8(v95);
  v28 = sub_100014170(0, &qword_100CBA328);
  v29 = sub_1007527B0();
  v31 = v30;
  v90 = sub_10001C1E4(v28, v29, v30);
  sub_10001C370(v29, v31);
  v91 = [objc_allocWithZone(IDSEndpointURIProperties) init];
  sub_10074E5A8();
  if (v32)
  {
    v33 = sub_100936B28();

    [v91 setSenderCorrelationIdentifier:v33];
  }

  sub_10074E8E0();
  if (v34)
  {
    v35 = sub_100936B28();

    [v91 setShortHandle:v35];
  }

  v36 = v95[1];
  LODWORD(v82) = sub_1007521F0();
  LODWORD(v81) = sub_1007524D0();
  v89 = sub_100755FD8();
  v88 = v37;
  sub_1007562C8();
  sub_1007566C0();
  sub_100752BF0();
  v39 = v38;
  v78 = sub_100752F28();
  v40 = sub_100756AB8();
  if (v36 >> 60 == 15)
  {
    v80 = 0;
  }

  else
  {
    v80 = sub_100935E78().super.isa;
  }

  if (v95[3] >> 60 == 15)
  {
    v79 = 0;
  }

  else
  {
    v79 = sub_100935E78().super.isa;
  }

  v76 = sub_100935E78().super.isa;
  v75 = sub_100935F58().super.isa;
  v77 = sub_100935F58().super.isa;
  if (v39)
  {
    v42 = sub_100936B28();
  }

  else
  {
    v42 = 0;
  }

  if (v98 >> 60 == 15)
  {
    v43 = 0;
  }

  else
  {
    v43 = sub_100935E78().super.isa;
  }

  if (v99 >> 60 == 15)
  {
    v44 = 0;
  }

  else
  {
    v44 = sub_100935E78().super.isa;
  }

  if (v100 >> 60 == 15)
  {
    v45 = 0;
  }

  else
  {
    v45 = sub_100935E78().super.isa;
  }

  v84 = v4;
  if (v101 >> 60 == 15)
  {
    v46 = 0;
  }

  else
  {
    v46 = sub_100935E78().super.isa;
  }

  v73 = v46;
  v47 = v96;
  v48 = v97;
  v49 = objc_allocWithZone(IDSEndpoint);
  v50 = v83;
  v51 = v85;
  v70 = v46;
  v74 = v45;
  v69 = v45;
  v72 = v44;
  v68 = v44;
  v71 = v43;
  v67 = v43;
  LOBYTE(v66) = v78 & 1;
  v65 = v42;
  v52 = v77;
  v53 = v75;
  v54 = v76;
  v55 = v91;
  BYTE1(v64) = v81 & 1;
  LOBYTE(v64) = v82 & 1;
  v56 = v8;
  v81 = v42;
  v57 = v86;
  v58 = v47;
  v59 = v80;
  v82 = v8;
  v60 = v79;
  v41 = [v49 initWithURI:v56 capabilities:v86 ngmVersion:v58 legacyVersion:v48 KTLoggableData:v80 KTDeviceSignature:v79 mismatchedAccountFlag:v40 ktCapableFlag:v64 transparency:v90 pushTokenObject:v92 sessionToken:v76 expireDate:v75 refreshDate:v77 anonymizedSenderID:v65 verifiedBusiness:v66 serializedPublicMessageProtectionIdentity:v67 queryTimeInterval:v68 serializedNGMDeviceIdentity:v69 serializedNGMDevicePrekey:v70 serializedApplicationPublicKey:v91 endpointURIProperties:v85 familyEndpointData:v83 gameCenterData:?];

  sub_1007156D8(v89, v88);
  sub_100769CA8(v95);
  v61 = *(v93 + 8);
  v62 = v87;
  v61(v94, v87);
  v61(v84, v62);
  return v41;
}

uint64_t sub_1008ECC24(uint64_t a1)
{
  v2 = type metadata accessor for SenderKeyInfo(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_100014C40(&unk_100CBAD10, type metadata accessor for SenderKeyInfo);
  result = sub_100936E38();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_1008ED848(v11, v6, type metadata accessor for SenderKeyInfo);
      sub_100789ED0(v8, v6);
      sub_1008ED8B0(v8, type metadata accessor for SenderKeyInfo);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

BOOL sub_1008ECDB0(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1009373F8())
  {
    v3 = 0;
    v4 = IDSRegistrationPropertySenderKeyMessageVersion;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = sub_100937268();
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = [v5 capabilities];
      v9 = v4;
      v10 = [v8 valueForCapability:v9];

      result = v10 > 0;
      ++v3;
      if (v10 < 1 || v7 == i)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return 1;
}

uint64_t sub_1008ED0C4()
{

  sub_1007156D8(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1008ED14C()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_1008ED1A8(uint64_t a1, const char *a2)
{
  if (a1)
  {
    v4 = v2[4];
    v5 = v2[5];
    v6 = v2[3];
    swift_errorRetain();
    v7 = v6;
    v8 = v4;
    v9 = v5;
    oslog = sub_1009364B8();
    v10 = sub_100936EF8();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138413058;
      *(v11 + 4) = v7;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v7;
      v12[1] = v8;
      *(v11 + 22) = 2112;
      *(v11 + 24) = v9;
      v12[2] = v9;
      *(v11 + 32) = 2112;
      swift_errorRetain();
      v13 = v7;
      v14 = v8;
      v15 = v9;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 34) = v16;
      v12[3] = v16;
      _os_log_impl(&_mh_execute_header, oslog, v10, a2, v11, 0x2Au);
      sub_100706B30(&qword_100CB36B0);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_1008ED3B4(uint64_t a1)
{
  if (a1)
  {
    v2 = v1[4];
    v3 = v1[5];
    v4 = v1[3];
    swift_errorRetain();

    v5 = v2;
    v6 = v3;
    v7 = sub_1009364B8();
    v8 = sub_100936EF8();

    if (os_log_type_enabled(v7, v8))
    {
      v31 = v8;
      v9 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v9 = 136315906;
      log = v7;
      v33 = v29;
      v30 = v5;
      if (v4)
      {
        v10 = *(v4 + 16);
        if (v10)
        {
          v11 = (v4 + 40);
          v12 = &_swiftEmptyArrayStorage;
          do
          {
            v13 = *(v11 - 1);
            v14 = *v11;
            sub_100715738(v13, *v11);
            v15 = sub_100935E88(0);
            v17 = v16;
            sub_1007156D8(v13, v14);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_1000251F4(0, *(v12 + 2) + 1, 1, v12);
            }

            v19 = *(v12 + 2);
            v18 = *(v12 + 3);
            if (v19 >= v18 >> 1)
            {
              v12 = sub_1000251F4((v18 > 1), v19 + 1, 1, v12);
            }

            v11 += 2;
            *(v12 + 2) = v19 + 1;
            v20 = &v12[16 * v19];
            *(v20 + 4) = v15;
            *(v20 + 5) = v17;
            --v10;
          }

          while (v10);
        }
      }

      v21 = sub_100936CF8();
      v23 = v22;

      v24 = sub_10001273C(v21, v23, &v33);

      *(v9 + 4) = v24;
      *(v9 + 12) = 2112;
      *(v9 + 14) = v30;
      *(v9 + 22) = 2112;
      *(v9 + 24) = v6;
      *v28 = v30;
      v28[1] = v6;
      *(v9 + 32) = 2112;
      swift_errorRetain();
      v25 = v30;
      v26 = v6;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 34) = v27;
      v28[2] = v27;
      _os_log_impl(&_mh_execute_header, log, v31, "Failed to reset state for %s for senderURI: %@ receiverURI: %@ error: %@", v9, 0x2Au);
      sub_100706B30(&qword_100CB36B0);
      swift_arrayDestroy();

      sub_100012970(v29);
    }

    else
    {
    }
  }
}

unint64_t sub_1008ED6E8(uint64_t a1)
{
  v3 = *(v1 + 48);
  v2 = *(v1 + 56);
  v4 = *(v1 + 64);
  result = sub_1008C1000(*(v1 + 24), *(v1 + 32), *(v1 + 40), a1);
  v6 = result;
  if (!(result >> 62))
  {
    v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_12:

    *v3 = 0;
    return result;
  }

  result = sub_1009373F8();
  v7 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        sub_100937268();
      }

      else
      {
      }

      ++v8;
      sub_100715738(v2, v4);
      sub_10075B9C4(v2, v4);
    }

    while (v7 != v8);

    result = sub_1009366F8();
    if (result)
    {
      return sub_100936708();
    }
  }

  return result;
}

uint64_t sub_1008ED848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008ED8B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1008EDAA8()
{
  v1 = *(v0 + 16);
  v19 = *(v0 + 24);
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100937118();
    sub_100014170(0, &qword_100CBA2E0);
    sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
    sub_100936E58();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(v1 + 32);
    v2 = v1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(v1 + 56);

    v4 = 0;
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_100308C6C();
      return;
    }

    while (1)
    {
      type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle(0);
      v14 = [v13 prefixedURI];
      v20 = v13;
      v15 = sub_100936B38();
      v17 = v16;

      v18 = [v19 prefixedURI];
      sub_100936B38();

      sub_100760EE0(v15, v17);
      sub_100014C40(&unk_100CBABE0, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
      sub_100936768();

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_100937198())
      {
        sub_100014170(0, &qword_100CBA2E0);
        swift_dynamicCast();
        v13 = v26;
        v11 = v4;
        v12 = v5;
        if (v26)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = *(v2 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

double sub_1008EE03C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_100936B28();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_100937098();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100014170(0, &unk_100CBA300);
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_100013814(v8, &qword_100CB4A90);
  }

  return 6048000.0;
}

uint64_t sub_1008EE36C(uint64_t result)
{
  v2 = *(v1 + 24);
  if (result)
  {
    swift_errorRetain();
    v3 = sub_1009364B8();
    v4 = sub_100936EF8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "Error marking sender key entries for delete: %@", v5, 0xCu);
      sub_100013814(v6, &qword_100CB36B0);
    }

    if (v2)
    {
      v2(0);
    }
  }

  else if (v2)
  {
    return v2(1);
  }

  return result;
}

uint64_t sub_1008EE4F4()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1008EE594(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    oslog = sub_1009364B8();
    v1 = sub_100936EF8();
    if (os_log_type_enabled(oslog, v1))
    {
      v2 = swift_slowAlloc();
      v3 = swift_slowAlloc();
      *v2 = 138412290;
      swift_errorRetain();
      v4 = _swift_stdlib_bridgeErrorToNSError();
      *(v2 + 4) = v4;
      *v3 = v4;
      _os_log_impl(&_mh_execute_header, oslog, v1, "Error deleting unsent keyID: %@", v2, 0xCu);
      sub_100013814(v3, &qword_100CB36B0);
    }

    else
    {
    }
  }
}

uint64_t sub_1008EEC30()
{
  result = sub_1009364D8();
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

uint64_t sub_1008EECE4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1008EECF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1008EED40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for FTMessageDeliveryInterface()
{
  if (!qword_100CBA3E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100CBA3E0);
    }
  }
}

unint64_t sub_1008EEDF4()
{
  result = qword_100CD17A0[0];
  if (!qword_100CD17A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CD17A0);
  }

  return result;
}

uint64_t sub_1008EEE48()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1008EEF64()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1008EEFB4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1008EF01C()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1008EF0B4()
{

  sub_1007156D8(*(v0 + 32), *(v0 + 40));

  sub_1007156D8(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1008EF13C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1008EF1B0()
{

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_1008EF1F8()
{
  result = qword_100CBA438;
  if (!qword_100CBA438)
  {
    sub_1007147D0(&qword_100CBA430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA438);
  }

  return result;
}

uint64_t sub_1008EF27C(uint64_t result)
{
  v2 = *(v1 + 32);
  if (*(v1 + 16))
  {
    v3 = result;
    swift_errorRetain();
    v4 = sub_1009364B8();
    v5 = sub_100936EF8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, v3, v6, 0xCu);
      sub_100013814(v7, &qword_100CB36B0);
    }

    if (v2)
    {
      v2(0);
    }
  }

  else if (v2)
  {
    return v2(1);
  }

  return result;
}

unint64_t sub_1008EF3F4()
{
  result = qword_100CBA490;
  if (!qword_100CBA490)
  {
    sub_1007147D0(&qword_100CBA488);
    sub_1008EF478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA490);
  }

  return result;
}

unint64_t sub_1008EF478()
{
  result = qword_100CBA498;
  if (!qword_100CBA498)
  {
    sub_1007147D0(&qword_100CBA458);
    sub_1008EF504();
    sub_1008EF5D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA498);
  }

  return result;
}

unint64_t sub_1008EF504()
{
  result = qword_100CBA4A0;
  if (!qword_100CBA4A0)
  {
    sub_1007147D0(&qword_100CBA450);
    sub_100796030(&qword_100CB4F88);
    sub_100796030(&qword_100CB4B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA4A0);
  }

  return result;
}

unint64_t sub_1008EF5D8()
{
  result = qword_100CBA4A8;
  if (!qword_100CBA4A8)
  {
    sub_1007147D0(&qword_100CBA448);
    sub_100014C88(&qword_100CBA4B0, &qword_100CBA440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA4A8);
  }

  return result;
}

unint64_t sub_1008EF688()
{
  result = qword_100CBA4D0;
  if (!qword_100CBA4D0)
  {
    sub_1007147D0(&qword_100CBA4C8);
    sub_1008EF5D8();
    sub_1008EF714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA4D0);
  }

  return result;
}

unint64_t sub_1008EF714()
{
  result = qword_100CBA4D8;
  if (!qword_100CBA4D8)
  {
    sub_1007147D0(&qword_100CBA4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA4D8);
  }

  return result;
}

unint64_t sub_1008EF7B0()
{
  result = qword_100CBA4F0;
  if (!qword_100CBA4F0)
  {
    sub_1007147D0(&qword_100CBA4E8);
    sub_1008EF688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA4F0);
  }

  return result;
}

id sub_1008EF840()
{
  isa = sub_100935E78().super.isa;
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() identityWithData:isa error:&v5];

  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    sub_100935D78();

    swift_willThrow();
  }

  return v1;
}

id sub_1008EF90C()
{
  isa = sub_100935E78().super.isa;
  v1 = sub_100935E78().super.isa;
  v6 = 0;
  v2 = [swift_getObjCClassFromMetadata() identityWithIdentityData:isa prekeyData:v1 error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    sub_100935D78();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_1008EFA00()
{
  result = qword_100CBA540;
  if (!qword_100CBA540)
  {
    sub_1007147D0(&qword_100CBA538);
    sub_1008EFA8C();
    sub_1008EF714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA540);
  }

  return result;
}

unint64_t sub_1008EFA8C()
{
  result = qword_100CBA548;
  if (!qword_100CBA548)
  {
    sub_1007147D0(&qword_100CBA528);
    sub_100014C88(&qword_100CBA550, &qword_100CBA520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA548);
  }

  return result;
}

unint64_t sub_1008EFB88()
{
  result = qword_100CBA5F0;
  if (!qword_100CBA5F0)
  {
    sub_1007147D0(&qword_100CBA5E8);
    sub_1008EFC14();
    sub_1008EF714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA5F0);
  }

  return result;
}

unint64_t sub_1008EFC14()
{
  result = qword_100CBA5F8;
  if (!qword_100CBA5F8)
  {
    sub_1007147D0(&qword_100CBA5D8);
    sub_100014C88(&qword_100CBA600, &qword_100CBA5D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA5F8);
  }

  return result;
}

unint64_t sub_1008EFCCC()
{
  result = qword_100CBA650;
  if (!qword_100CBA650)
  {
    sub_1007147D0(&qword_100CBA648);
    sub_1008EFD58();
    sub_1008EFE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA650);
  }

  return result;
}

unint64_t sub_1008EFD58()
{
  result = qword_100CBA658;
  if (!qword_100CBA658)
  {
    sub_1007147D0(&qword_100CBA638);
    sub_100014C88(&qword_100CBA660, &qword_100CBA630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA658);
  }

  return result;
}

unint64_t sub_1008EFE08()
{
  result = qword_100CBA668;
  if (!qword_100CBA668)
  {
    sub_1007147D0(&qword_100CBA628);
    sub_100014C40(&unk_100CBA670, &type metadata accessor for Date);
    sub_100014C40(&qword_100CB3DA8, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA668);
  }

  return result;
}

unint64_t sub_1008EFEF8()
{
  result = qword_100CBA700;
  if (!qword_100CBA700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA700);
  }

  return result;
}

unint64_t sub_1008EFF4C()
{
  result = qword_100CBA730;
  if (!qword_100CBA730)
  {
    sub_1007147D0(&qword_100CBA728);
    sub_1008EFFD8();
    sub_1008F0304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA730);
  }

  return result;
}

unint64_t sub_1008EFFD8()
{
  result = qword_100CBA738;
  if (!qword_100CBA738)
  {
    sub_1007147D0(&qword_100CBA6D0);
    sub_1008F0064();
    sub_1008F0304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA738);
  }

  return result;
}

unint64_t sub_1008F0064()
{
  result = qword_100CBA740;
  if (!qword_100CBA740)
  {
    sub_1007147D0(&qword_100CBA6C8);
    sub_1008F00F0();
    sub_1008F0254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA740);
  }

  return result;
}

unint64_t sub_1008F00F0()
{
  result = qword_100CBA748;
  if (!qword_100CBA748)
  {
    sub_1007147D0(&qword_100CBA6C0);
    sub_1008F01DC(&unk_100CBA750, sub_100768AE4);
    sub_1008F01DC(&unk_100CBA760, sub_100768A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA748);
  }

  return result;
}

uint64_t sub_1008F01DC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1007147D0(&qword_100CBA6D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1008F0254()
{
  result = qword_100CBA770;
  if (!qword_100CBA770)
  {
    sub_1007147D0(&qword_100CBA6B8);
    sub_100014C88(&qword_100CBA778, &qword_100CBA6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA770);
  }

  return result;
}

unint64_t sub_1008F0304()
{
  result = qword_100CBA780;
  if (!qword_100CBA780)
  {
    sub_1007147D0(&qword_100CBA6A8);
    sub_1008F0390();
    sub_1008EF1F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA780);
  }

  return result;
}

unint64_t sub_1008F0390()
{
  result = qword_100CBA788;
  if (!qword_100CBA788)
  {
    sub_1007147D0(&qword_100CBA6A0);
    sub_100014C88(&qword_100CBA778, &qword_100CBA6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA788);
  }

  return result;
}

unint64_t sub_1008F04A4()
{
  result = qword_100CBA7B8;
  if (!qword_100CBA7B8)
  {
    sub_1007147D0(&qword_100CBA7B0);
    sub_1008F0528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA7B8);
  }

  return result;
}

unint64_t sub_1008F0528()
{
  result = qword_100CBA7C0;
  if (!qword_100CBA7C0)
  {
    sub_1007147D0(&qword_100CBA7A0);
    sub_1008F05E8();
    sub_100014C88(&qword_100CBA778, &qword_100CBA6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA7C0);
  }

  return result;
}

unint64_t sub_1008F05E8()
{
  result = qword_100CBA7C8;
  if (!qword_100CBA7C8)
  {
    sub_1007147D0(&qword_100CBA798);
    sub_100014C88(&qword_100CBA7D0, &qword_100CBA368);
    sub_100014C88(&qword_100CBA7D8, &qword_100CBA368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA7C8);
  }

  return result;
}

unint64_t sub_1008F06D4()
{
  result = qword_100CBA808;
  if (!qword_100CBA808)
  {
    sub_1007147D0(&qword_100CBA800);
    sub_1008F0760();
    sub_1008EFE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA808);
  }

  return result;
}

unint64_t sub_1008F0760()
{
  result = qword_100CBA810;
  if (!qword_100CBA810)
  {
    sub_1007147D0(&qword_100CBA7F0);
    sub_1008F07EC();
    sub_1008EFE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA810);
  }

  return result;
}

unint64_t sub_1008F07EC()
{
  result = qword_100CBA818;
  if (!qword_100CBA818)
  {
    sub_1007147D0(&qword_100CBA7E8);
    sub_100014C88(&qword_100CBA778, &qword_100CBA6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA818);
  }

  return result;
}

unint64_t sub_1008F089C()
{
  result = qword_100CBA868;
  if (!qword_100CBA868)
  {
    sub_1007147D0(&qword_100CBA860);
    sub_1008F0920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA868);
  }

  return result;
}

unint64_t sub_1008F0920()
{
  result = qword_100CBA870;
  if (!qword_100CBA870)
  {
    sub_1007147D0(&qword_100CBA840);
    sub_1008F09AC();
    sub_1008F0304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA870);
  }

  return result;
}

unint64_t sub_1008F09AC()
{
  result = qword_100CBA878;
  if (!qword_100CBA878)
  {
    sub_1007147D0(&qword_100CBA838);
    sub_1008F0A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA878);
  }

  return result;
}

unint64_t sub_1008F0A30()
{
  result = qword_100CBA880;
  if (!qword_100CBA880)
  {
    sub_1007147D0(&qword_100CBA830);
    sub_1008EF504();
    sub_1008F0ABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA880);
  }

  return result;
}

unint64_t sub_1008F0ABC()
{
  result = qword_100CBA888;
  if (!qword_100CBA888)
  {
    sub_1007147D0(&qword_100CBA828);
    sub_100014C88(&qword_100CBA778, &qword_100CBA6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA888);
  }

  return result;
}

unint64_t sub_1008F0B6C()
{
  result = qword_100CBA8B8;
  if (!qword_100CBA8B8)
  {
    sub_1007147D0(&qword_100CBA8B0);
    sub_1008F0BF8();
    sub_1008F0304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA8B8);
  }

  return result;
}

unint64_t sub_1008F0BF8()
{
  result = qword_100CBA8C0;
  if (!qword_100CBA8C0)
  {
    sub_1007147D0(&qword_100CBA8A0);
    sub_1008F0C84();
    sub_1008EFE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA8C0);
  }

  return result;
}

unint64_t sub_1008F0C84()
{
  result = qword_100CBA8C8;
  if (!qword_100CBA8C8)
  {
    sub_1007147D0(&qword_100CBA898);
    sub_100014C88(&qword_100CBA778, &qword_100CBA6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA8C8);
  }

  return result;
}

unint64_t sub_1008F0D68()
{
  result = qword_100CBA920;
  if (!qword_100CBA920)
  {
    sub_1007147D0(&qword_100CBA918);
    sub_1008F0DEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA920);
  }

  return result;
}

unint64_t sub_1008F0DEC()
{
  result = qword_100CBA928;
  if (!qword_100CBA928)
  {
    sub_1007147D0(&qword_100CBA8F0);
    sub_1008F0E78();
    sub_1008F0304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA928);
  }

  return result;
}

unint64_t sub_1008F0E78()
{
  result = qword_100CBA930;
  if (!qword_100CBA930)
  {
    sub_1007147D0(&qword_100CBA8E8);
    sub_1008F0F04();
    sub_1008F0ABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA930);
  }

  return result;
}

unint64_t sub_1008F0F04()
{
  result = qword_100CBA938;
  if (!qword_100CBA938)
  {
    sub_1007147D0(&qword_100CBA8E0);
    sub_1008F0F90();
    sub_1008F100C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA938);
  }

  return result;
}

unint64_t sub_1008F0F90()
{
  result = qword_100CBA940;
  if (!qword_100CBA940)
  {
    sub_1007147D0(&qword_100CBA8F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA940);
  }

  return result;
}

unint64_t sub_1008F100C()
{
  result = qword_100CBA948;
  if (!qword_100CBA948)
  {
    sub_1007147D0(&qword_100CBA8F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA948);
  }

  return result;
}

unint64_t sub_1008F1094()
{
  result = qword_100CBA988;
  if (!qword_100CBA988)
  {
    sub_1007147D0(&qword_100CBA980);
    sub_1008F1120();
    sub_1008EFE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA988);
  }

  return result;
}

unint64_t sub_1008F1120()
{
  result = qword_100CBA990;
  if (!qword_100CBA990)
  {
    sub_1007147D0(&qword_100CBA970);
    sub_100014C88(&qword_100CBA998, &qword_100CBA968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA990);
  }

  return result;
}

unint64_t sub_1008F1204()
{
  result = qword_100CBAA00;
  if (!qword_100CBAA00)
  {
    sub_1007147D0(&qword_100CBA9F8);
    sub_1008F1288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAA00);
  }

  return result;
}

unint64_t sub_1008F1288()
{
  result = qword_100CBAA08;
  if (!qword_100CBAA08)
  {
    sub_1007147D0(&qword_100CBA9E0);
    sub_1008F1314();
    sub_1008EF714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAA08);
  }

  return result;
}

unint64_t sub_1008F1314()
{
  result = qword_100CBAA10;
  if (!qword_100CBAA10)
  {
    sub_1007147D0(&qword_100CBA9D8);
    sub_100014C88(&qword_100CBAA18, &qword_100CBA9D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAA10);
  }

  return result;
}

unint64_t sub_1008F13C4()
{
  result = qword_100CBAA48;
  if (!qword_100CBAA48)
  {
    sub_1007147D0(&qword_100CBAA40);
    sub_1008F1450();
    sub_1008EFE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAA48);
  }

  return result;
}

unint64_t sub_1008F1450()
{
  result = qword_100CBAA50;
  if (!qword_100CBAA50)
  {
    sub_1007147D0(&qword_100CBAA30);
    sub_100014C88(&qword_100CBAA58, &qword_100CBAA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAA50);
  }

  return result;
}

unint64_t sub_1008F1578()
{
  result = qword_100CBAB00;
  if (!qword_100CBAB00)
  {
    sub_1007147D0(&qword_100CB3D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAB00);
  }

  return result;
}

unint64_t sub_1008F15F4()
{
  result = qword_100CBAB40;
  if (!qword_100CBAB40)
  {
    sub_1007147D0(&qword_100CBAB38);
    sub_1008F1680();
    sub_1008F1A34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAB40);
  }

  return result;
}

unint64_t sub_1008F1680()
{
  result = qword_100CBAB48;
  if (!qword_100CBAB48)
  {
    sub_1007147D0(&qword_100CBAAD8);
    sub_1008F170C();
    sub_1008F18CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAB48);
  }

  return result;
}

unint64_t sub_1008F170C()
{
  result = qword_100CBAB50;
  if (!qword_100CBAB50)
  {
    sub_1007147D0(&qword_100CBAAD0);
    sub_1008F1798();
    sub_1008F1848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAB50);
  }

  return result;
}

unint64_t sub_1008F1798()
{
  result = qword_100CBAB58;
  if (!qword_100CBAB58)
  {
    sub_1007147D0(&qword_100CBAAC8);
    sub_100014C88(&qword_100CBA4B0, &qword_100CBA440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAB58);
  }

  return result;
}

unint64_t sub_1008F1848()
{
  result = qword_100CBAB60;
  if (!qword_100CBAB60)
  {
    sub_1007147D0(&qword_100CBAAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAB60);
  }

  return result;
}

unint64_t sub_1008F18CC()
{
  result = qword_100CBAB68;
  if (!qword_100CBAB68)
  {
    sub_1007147D0(&qword_100CBAAB8);
    sub_1008F1984();
    sub_100014C88(&qword_100CBAB78, &qword_100CBAAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAB68);
  }

  return result;
}

unint64_t sub_1008F1984()
{
  result = qword_100CBAB70;
  if (!qword_100CBAB70)
  {
    sub_1007147D0(&qword_100CBAAB0);
    sub_100014C88(&qword_100CBA4B0, &qword_100CBA440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAB70);
  }

  return result;
}

unint64_t sub_1008F1A34()
{
  result = qword_100CBAB80;
  if (!qword_100CBAB80)
  {
    sub_1007147D0(&qword_100CBAAA0);
    sub_1008F1AC0();
    sub_1008F1BD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAB80);
  }

  return result;
}

unint64_t sub_1008F1AC0()
{
  result = qword_100CBAB88;
  if (!qword_100CBAB88)
  {
    sub_1007147D0(&qword_100CBAA98);
    sub_1008F1B4C();
    sub_1008F1BD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAB88);
  }

  return result;
}

unint64_t sub_1008F1B4C()
{
  result = qword_100CBAB90;
  if (!qword_100CBAB90)
  {
    sub_1007147D0(&qword_100CBAA90);
    sub_1008F1984();
    sub_1008F1BD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAB90);
  }

  return result;
}

unint64_t sub_1008F1BD8()
{
  result = qword_100CBAB98;
  if (!qword_100CBAB98)
  {
    sub_1007147D0(&qword_100CBAA88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAB98);
  }

  return result;
}

void sub_1008F1C68()
{
  sub_10075AD04();
  v0 = objc_allocWithZone(IDSURI);
  v1 = sub_100936B28();

  v2 = [v0 initWithPrefixedURI:v1];

  if (v2)
  {
    sub_100741A18(&v3, v2, &qword_100CBA2E0, IDSURI_ptr, &qword_100CB3A78, &unk_1009B0C80);
  }
}

unint64_t sub_1008F1D78()
{
  result = qword_100CBAC48;
  if (!qword_100CBAC48)
  {
    sub_1007147D0(&qword_100CBAC40);
    sub_1008F1E04();
    sub_1008F1F1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAC48);
  }

  return result;
}

unint64_t sub_1008F1E04()
{
  result = qword_100CBAC50;
  if (!qword_100CBAC50)
  {
    sub_1007147D0(&qword_100CBAC30);
    sub_1008F1E90();
    sub_1008F0304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAC50);
  }

  return result;
}

unint64_t sub_1008F1E90()
{
  result = qword_100CBAC58;
  if (!qword_100CBAC58)
  {
    sub_1007147D0(&qword_100CBAC28);
    sub_1008F0ABC();
    sub_1008EF714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAC58);
  }

  return result;
}

unint64_t sub_1008F1F1C()
{
  result = qword_100CBAC60;
  if (!qword_100CBAC60)
  {
    sub_1007147D0(&qword_100CBAC20);
    sub_1008F0390();
    sub_1008EF1F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAC60);
  }

  return result;
}

unint64_t sub_1008F1FDC()
{
  result = qword_100CBACA8;
  if (!qword_100CBACA8)
  {
    sub_1007147D0(&qword_100CBACA0);
    sub_1008F2068();
    sub_1008F2118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBACA8);
  }

  return result;
}

unint64_t sub_1008F2068()
{
  result = qword_100CBACB0;
  if (!qword_100CBACB0)
  {
    sub_1007147D0(&qword_100CBAC90);
    sub_100014C88(&qword_100CBACB8, &qword_100CBAC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBACB0);
  }

  return result;
}

unint64_t sub_1008F2118()
{
  result = qword_100CBACC0;
  if (!qword_100CBACC0)
  {
    sub_1007147D0(&qword_100CBAC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBACC0);
  }

  return result;
}

uint64_t sub_1008F219C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1008F21F0(const char *a1)
{
  v2 = *(v1 + 32);
  if (!*(v1 + 16))
  {
    return v2(1);
  }

  swift_errorRetain();
  v4 = sub_1009364B8();
  v5 = sub_100936EF8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, a1, v6, 0xCu);
    sub_100013814(v7, &qword_100CB36B0);
  }

  v2(0);
}

uint64_t sub_1008F2358()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1008F23B4()
{
  result = qword_100CBACF8;
  if (!qword_100CBACF8)
  {
    sub_1007147D0(&qword_100CBACF0);
    sub_1008F2440();
    sub_1008F0304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBACF8);
  }

  return result;
}

unint64_t sub_1008F2440()
{
  result = qword_100CBAD00;
  if (!qword_100CBAD00)
  {
    sub_1007147D0(&qword_100CBACE8);
    sub_1008F1E90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAD00);
  }

  return result;
}

uint64_t sub_1008F24C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1008F2534()
{
  result = qword_100CBAD48;
  if (!qword_100CBAD48)
  {
    sub_1007147D0(&qword_100CBAD40);
    sub_1008F25C0();
    sub_1008F0304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAD48);
  }

  return result;
}

unint64_t sub_1008F25C0()
{
  result = qword_100CBAD50;
  if (!qword_100CBAD50)
  {
    sub_1007147D0(&qword_100CBAD30);
    sub_1008F0254();
    sub_1008F264C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAD50);
  }

  return result;
}

unint64_t sub_1008F264C()
{
  result = qword_100CBAD58;
  if (!qword_100CBAD58)
  {
    sub_1007147D0(&qword_100CBAD28);
    sub_100768AE4();
    sub_100768A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAD58);
  }

  return result;
}

unint64_t sub_1008F26F0()
{
  result = qword_100CBAD78;
  if (!qword_100CBAD78)
  {
    sub_1007147D0(&qword_100CBAD70);
    sub_1008F23B4();
    sub_1008F25C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAD78);
  }

  return result;
}

void sub_1008F277C()
{
  v1 = v0[7];
  if (v0[2])
  {
    v2 = v0[5];
    v3 = v0[6];
    swift_errorRetain();

    v4 = v2;
    v5 = v3;
    v6 = sub_1009364B8();
    v7 = sub_100936EF8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = v16;
      *v8 = 136315906;
      v10 = sub_100936CF8();
      v12 = sub_10001273C(v10, v11, &v17);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2112;
      *(v8 + 14) = v4;
      *(v8 + 22) = 2112;
      *(v8 + 24) = v5;
      *v9 = v4;
      v9[1] = v5;
      *(v8 + 32) = 2112;
      swift_errorRetain();
      v13 = v4;
      v14 = v5;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 34) = v15;
      v9[2] = v15;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to mark keyIDs: %s as didSend for senderURI: %@ receiverURI: %@ error: %@", v8, 0x2Au);
      sub_100706B30(&qword_100CB36B0);
      swift_arrayDestroy();

      sub_100012970(v16);
    }

    if (v1)
    {
      v1(0);
    }
  }

  else if (v1)
  {
    v1(1);
  }
}

void sub_1008F29C4()
{
  v1 = v0[6];
  if (v0[2])
  {
    v2 = v0[5];
    swift_errorRetain();

    v3 = v2;
    v4 = sub_1009364B8();
    v5 = sub_100936EF8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v8 = v14;
      *v6 = 136315650;
      v9 = sub_100936CF8();
      v11 = sub_10001273C(v9, v10, &v14);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2112;
      *(v6 + 14) = v3;
      *v7 = v3;
      *(v6 + 22) = 2112;
      swift_errorRetain();
      v12 = v3;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 24) = v13;
      v7[1] = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to mark keyIDs %s as certified delivered for receiverPushToken %@ error: %@", v6, 0x20u);
      sub_100706B30(&qword_100CB36B0);
      swift_arrayDestroy();

      sub_100012970(v8);
    }

    if (v1)
    {
      v1(0);
    }
  }

  else if (v1)
  {
    v1(1);
  }
}

unint64_t sub_1008F2BEC()
{
  result = qword_100CBADA8;
  if (!qword_100CBADA8)
  {
    sub_1007147D0(&qword_100CBADA0);
    sub_1008F2C78();
    sub_1008F2D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBADA8);
  }

  return result;
}

unint64_t sub_1008F2C78()
{
  result = qword_100CBADB0;
  if (!qword_100CBADB0)
  {
    sub_1007147D0(&qword_100CBAD98);
    sub_100014C88(&qword_100CBA998, &qword_100CBA968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBADB0);
  }

  return result;
}

unint64_t sub_1008F2D28()
{
  result = qword_100CBADB8;
  if (!qword_100CBADB8)
  {
    sub_1007147D0(&qword_100CBAD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBADB8);
  }

  return result;
}

unint64_t sub_1008F2DAC()
{
  result = qword_100CBADD8;
  if (!qword_100CBADD8)
  {
    sub_1007147D0(&qword_100CBADD0);
    sub_1008F23B4();
    sub_1008F0304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBADD8);
  }

  return result;
}

uint64_t sub_1008F2E5C()
{
  v0 = sub_10075AFEC();
  sub_100789A48(v3, v0, v1);
  return sub_1007156D8(v3[0], v3[1]);
}

unint64_t sub_1008F2EC0()
{
  result = qword_100CBAE00;
  if (!qword_100CBAE00)
  {
    sub_1007147D0(&qword_100CBADF8);
    sub_1008F2F4C();
    sub_1008F0304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAE00);
  }

  return result;
}

unint64_t sub_1008F2F4C()
{
  result = qword_100CBAE08;
  if (!qword_100CBAE08)
  {
    sub_1007147D0(&qword_100CBADE8);
    sub_1008F2FD8();
    sub_1008F1E90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAE08);
  }

  return result;
}

unint64_t sub_1008F2FD8()
{
  result = qword_100CBAE10;
  if (!qword_100CBAE10)
  {
    sub_1007147D0(&qword_100CBADE0);
    sub_1008F0064();
    sub_1008F1E90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAE10);
  }

  return result;
}

unint64_t sub_1008F3064()
{
  result = qword_100CBAE28;
  if (!qword_100CBAE28)
  {
    sub_1007147D0(&qword_100CBAE20);
    sub_1008F0064();
    sub_1008F25C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAE28);
  }

  return result;
}

unint64_t sub_1008F30F0()
{
  result = qword_100CBAE90;
  if (!qword_100CBAE90)
  {
    sub_1007147D0(&qword_100CBAE88);
    sub_1008F317C();
    sub_1008F32B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAE90);
  }

  return result;
}

unint64_t sub_1008F317C()
{
  result = qword_100CBAE98;
  if (!qword_100CBAE98)
  {
    sub_1007147D0(&qword_100CBAE68);
    sub_1008F3208();
    sub_1008EF714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAE98);
  }

  return result;
}

unint64_t sub_1008F3208()
{
  result = qword_100CBAEA0;
  if (!qword_100CBAEA0)
  {
    sub_1007147D0(&qword_100CBAE60);
    sub_100014C88(&qword_100CBAEA8, &qword_100CBAE58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAEA0);
  }

  return result;
}

unint64_t sub_1008F32B8()
{
  result = qword_100CBAEB0;
  if (!qword_100CBAEB0)
  {
    sub_1007147D0(&qword_100CBAE50);
    sub_1008F3344();
    sub_1008EFE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAEB0);
  }

  return result;
}

unint64_t sub_1008F3344()
{
  result = qword_100CBAEB8;
  if (!qword_100CBAEB8)
  {
    sub_1007147D0(&qword_100CBAE48);
    sub_100014C88(&qword_100CBAEA8, &qword_100CBAE58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAEB8);
  }

  return result;
}

unint64_t sub_1008F33F4()
{
  result = qword_100CBAEF8;
  if (!qword_100CBAEF8)
  {
    sub_1007147D0(&qword_100CBAEF0);
    sub_1008F3480();
    sub_1008F3504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAEF8);
  }

  return result;
}

unint64_t sub_1008F3480()
{
  result = qword_100CBAF00;
  if (!qword_100CBAF00)
  {
    sub_1007147D0(&qword_100CBAEE0);
    sub_1008F317C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAF00);
  }

  return result;
}

unint64_t sub_1008F3504()
{
  result = qword_100CBAF08;
  if (!qword_100CBAF08)
  {
    sub_1007147D0(&qword_100CBAED8);
    sub_1008F3590();
    sub_1008F264C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAF08);
  }

  return result;
}

unint64_t sub_1008F3590()
{
  result = qword_100CBAF10;
  if (!qword_100CBAF10)
  {
    sub_1007147D0(&qword_100CBAED0);
    sub_100014C88(&qword_100CBAEA8, &qword_100CBAE58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAF10);
  }

  return result;
}

unint64_t sub_1008F3640()
{
  result = qword_100CBAF58;
  if (!qword_100CBAF58)
  {
    sub_1007147D0(&qword_100CBAF50);
    sub_1008F36CC();
    sub_1008F13C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAF58);
  }

  return result;
}

unint64_t sub_1008F36CC()
{
  result = qword_100CBAF60;
  if (!qword_100CBAF60)
  {
    sub_1007147D0(&qword_100CBAF38);
    sub_1008F3750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAF60);
  }

  return result;
}

unint64_t sub_1008F3750()
{
  result = qword_100CBAF68;
  if (!qword_100CBAF68)
  {
    sub_1007147D0(&qword_100CBAF30);
    sub_1008F37DC();
    sub_1008EF714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAF68);
  }

  return result;
}

unint64_t sub_1008F37DC()
{
  result = qword_100CBAF70;
  if (!qword_100CBAF70)
  {
    sub_1007147D0(&qword_100CBAF28);
    sub_100014C88(&qword_100CBAA58, &qword_100CBAA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAF70);
  }

  return result;
}

unint64_t sub_1008F388C()
{
  result = qword_100CBAF90;
  if (!qword_100CBAF90)
  {
    sub_1007147D0(&qword_100CBAF88);
    sub_1008F36CC();
    sub_1008F3750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAF90);
  }

  return result;
}

unint64_t sub_1008F3918()
{
  result = qword_100CBAFD8;
  if (!qword_100CBAFD8)
  {
    sub_1007147D0(&qword_100CBAFD0);
    sub_1008F39A4();
    sub_1008F3B6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAFD8);
  }

  return result;
}

unint64_t sub_1008F39A4()
{
  result = qword_100CBAFE0;
  if (!qword_100CBAFE0)
  {
    sub_1007147D0(&qword_100CBAFB0);
    sub_1008F388C();
    sub_1008F3A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAFE0);
  }

  return result;
}

unint64_t sub_1008F3A30()
{
  result = qword_100CBAFE8;
  if (!qword_100CBAFE8)
  {
    sub_1007147D0(&qword_100CBAFA8);
    sub_1008F3ABC();
    sub_1008F264C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAFE8);
  }

  return result;
}

unint64_t sub_1008F3ABC()
{
  result = qword_100CBAFF0;
  if (!qword_100CBAFF0)
  {
    sub_1007147D0(&qword_100CBAFA0);
    sub_100014C88(&qword_100CBAA58, &qword_100CBAA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAFF0);
  }

  return result;
}

unint64_t sub_1008F3B6C()
{
  result = qword_100CBAFF8;
  if (!qword_100CBAFF8)
  {
    sub_1007147D0(&qword_100CBAF98);
    sub_1008EF1F8();
    sub_1008F13C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBAFF8);
  }

  return result;
}

unint64_t sub_1008F3BF8()
{
  result = qword_100CBB030;
  if (!qword_100CBB030)
  {
    sub_1007147D0(&qword_100CBB028);
    sub_1008F3C84();
    sub_1008F264C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB030);
  }

  return result;
}

unint64_t sub_1008F3C84()
{
  result = qword_100CBB038;
  if (!qword_100CBB038)
  {
    sub_1007147D0(&qword_100CBB018);
    sub_100014C88(&qword_100CBB040, &qword_100CBB010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB038);
  }

  return result;
}

unint64_t sub_1008F3D34()
{
  result = qword_100CBB070;
  if (!qword_100CBB070)
  {
    sub_1007147D0(&qword_100CBB068);
    sub_1008F3DC0();
    sub_1008F3BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB070);
  }

  return result;
}

unint64_t sub_1008F3DC0()
{
  result = qword_100CBB078;
  if (!qword_100CBB078)
  {
    sub_1007147D0(&qword_100CBB058);
    sub_1008F3E4C();
    sub_1008EF714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB078);
  }

  return result;
}

unint64_t sub_1008F3E4C()
{
  result = qword_100CBB080;
  if (!qword_100CBB080)
  {
    sub_1007147D0(&qword_100CBB050);
    sub_100014C88(&qword_100CBB040, &qword_100CBB010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB080);
  }

  return result;
}

unint64_t sub_1008F3EFC()
{
  result = qword_100CBB0B8;
  if (!qword_100CBB0B8)
  {
    sub_1007147D0(&qword_100CBB0B0);
    sub_1008F3F88();
    sub_1008F3B6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB0B8);
  }

  return result;
}

unint64_t sub_1008F3F88()
{
  result = qword_100CBB0C0;
  if (!qword_100CBB0C0)
  {
    sub_1007147D0(&qword_100CBB0A0);
    sub_1008F388C();
    sub_1008F4014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB0C0);
  }

  return result;
}

unint64_t sub_1008F4014()
{
  result = qword_100CBB0C8;
  if (!qword_100CBB0C8)
  {
    sub_1007147D0(&qword_100CBB098);
    sub_1008F00F0();
    sub_1008F3ABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB0C8);
  }

  return result;
}

unint64_t sub_1008F40E8()
{
  result = qword_100CBB0F0;
  if (!qword_100CBB0F0)
  {
    sub_1007147D0(&qword_100CBB0E8);
    sub_1008F4174();
    sub_1008F4224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB0F0);
  }

  return result;
}

unint64_t sub_1008F4174()
{
  result = qword_100CBB0F8;
  if (!qword_100CBB0F8)
  {
    sub_1007147D0(&qword_100CBB0E0);
    sub_100014C88(&qword_100CBA660, &qword_100CBA630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB0F8);
  }

  return result;
}

unint64_t sub_1008F4224()
{
  result = qword_100CBB100;
  if (!qword_100CBB100)
  {
    sub_1007147D0(&qword_100CBB0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB100);
  }

  return result;
}

uint64_t sub_1008F42A8()
{
  v1 = v0[7];
  if (!v0[2])
  {
    return v1(1, 0);
  }

  v2 = v0[4];
  v4 = v0[5];
  v3 = v0[6];
  swift_errorRetain();

  v5 = v3;
  v6 = sub_1009364B8();
  v7 = sub_100936EF8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = v1;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25[0] = v11;
    *v8 = 136315650;
    *(v8 + 4) = sub_10001273C(v2, v4, v25);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v10 = v5;
    *(v8 + 22) = 2112;
    swift_errorRetain();
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v13;
    v10[1] = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "updateKeyTransparencyContext failed %s/%@ - %@", v8, 0x20u);
    sub_100706B30(&qword_100CB36B0);
    swift_arrayDestroy();
    v1 = v9;

    sub_100012970(v11);
  }

  sub_10083F070();

  v14 = sub_10083F07C(5u);
  sub_100706B30(&unk_100CBB120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1009AC700;
  *(inited + 32) = sub_100936B38();
  *(inited + 40) = v16;
  swift_getErrorValue();
  *(inited + 72) = v24;
  v17 = sub_100014250((inited + 48));
  (*(*(v24 - 8) + 16))(v17);
  sub_100746D18(inited);
  swift_setDeallocating();
  sub_100013814(inited + 32, &qword_100CB36E8);
  v18 = objc_allocWithZone(NSError);
  v19 = sub_100936B28();

  isa = sub_100936A58().super.isa;

  v21 = [v18 initWithDomain:v19 code:v14 userInfo:isa];

  v22 = v21;
  v1(0, v21);
}

unint64_t sub_1008F460C()
{
  result = qword_100CBB138;
  if (!qword_100CBB138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB138);
  }

  return result;
}

unint64_t sub_1008F4688()
{
  result = qword_100CBB160;
  if (!qword_100CBB160)
  {
    sub_1007147D0(&qword_100CBB158);
    sub_1008F470C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB160);
  }

  return result;
}

unint64_t sub_1008F470C()
{
  result = qword_100CBB168;
  if (!qword_100CBB168)
  {
    sub_1007147D0(&qword_100CBB150);
    sub_1008EF504();
    sub_1008F37DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB168);
  }

  return result;
}

unint64_t sub_1008F4798()
{
  result = qword_100CBB188;
  if (!qword_100CBB188)
  {
    sub_1007147D0(&qword_100CBB180);
    sub_1008F481C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB188);
  }

  return result;
}

unint64_t sub_1008F481C()
{
  result = qword_100CBB190;
  if (!qword_100CBB190)
  {
    sub_1007147D0(&qword_100CBB178);
    sub_1008EF504();
    sub_1008F1314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB190);
  }

  return result;
}

unint64_t sub_1008F48E4()
{
  result = qword_100CBB1B0;
  if (!qword_100CBB1B0)
  {
    sub_1007147D0(&qword_100CBB1A8);
    sub_1008F4970();
    sub_1008F3750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB1B0);
  }

  return result;
}

unint64_t sub_1008F4970()
{
  result = qword_100CBB1B8;
  if (!qword_100CBB1B8)
  {
    sub_1007147D0(&qword_100CBB1A0);
    sub_1008F470C();
    sub_1008F3750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB1B8);
  }

  return result;
}

unint64_t sub_1008F49FC()
{
  result = qword_100CBB1D0;
  if (!qword_100CBB1D0)
  {
    sub_1007147D0(&qword_100CBB1C8);
    sub_1008F481C();
    sub_1008F1288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB1D0);
  }

  return result;
}

uint64_t sub_1008F4ABC()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1008F4B04()
{
  result = qword_100CBB1E0;
  if (!qword_100CBB1E0)
  {
    sub_1007147D0(&qword_100CBB1D8);
    sub_1008F32B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB1E0);
  }

  return result;
}

unint64_t sub_1008F4B88()
{
  result = qword_100CBB238;
  if (!qword_100CBB238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB238);
  }

  return result;
}

uint64_t sub_1008F50AC()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB260, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB268, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1008F51B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB260, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB268, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1008F52BC()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB260, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_1008F5394()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB260, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB268, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1008F5498@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB260, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB268, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1008F55A4()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB260, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_1008F567C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB260, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB268, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1008F5780@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB260, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB268, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1008F588C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB260, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_1008F5964()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB260, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB268, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_1008F5A90@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB260, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB268, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008F5BC4()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB260, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_1008F5C9C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB260, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB268, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_1008F5DC8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB260, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB268, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008F5EFC()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB260, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_1008F5FD4()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB260, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB268, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4);
  sub_1009368A8();

  return v0;
}

double sub_1008F610C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB260, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB268, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008F624C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB260, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_1008F6324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_10090C044(a5, a6);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18);
  sub_1009368C8();
}

uint64_t sub_1008F63F0()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB260, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice(0);
  sub_10090C044(&qword_100CBB268, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_10090C2B4();
  sub_100936898();

  return v0;
}

uint64_t sub_1008F6508@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB260, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice(0);
  sub_10090C044(&qword_100CBB268, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_10090C2B4();
  sub_100936898();

  *a2 = v4;
  return result;
}

uint64_t sub_1008F6628()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB260, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_1008F66F4()
{
  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice(0);
  sub_10090C044(&qword_100CBB268, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  sub_10090C2B4();
  sub_1009368B8();
}

uint64_t sub_1008F67A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v12._countAndFlagsBits = a3;
  v12._object = a4;
  v10 = swift_allocObject();
  *(v10 + 48) = sub_100706B30(&qword_100CBB288);
  sub_10090C044(&qword_100CBB268, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  *(v10 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v10 + 24));
  sub_100936858();
  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_100706B30(&unk_100CBA310);
  sub_100022AC0(&qword_100CB3CD8);
  sub_1009366D8();

  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB3CE8);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18);
  sub_1009366D8();

  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CBB270);
  type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice(0);
  sub_10090C2B4();
  sub_1009366C8();

  sub_100936158();
  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v10 + 16) = 0;
  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v10 + 17) = 0;
  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_1007483B0(a9, a10);
  sub_1009366D8();

  sub_10001C370(a9, a10);
  *(v10 + 18) = 0;

  sub_100936C08(v12);

  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_1009366D8();
  sub_10001C370(a9, a10);

  return v10;
}

uint64_t sub_1008F6D5C(__int128 *a1)
{
  v2 = v1;
  *(v1 + 48) = sub_100706B30(&qword_100CBB288);
  sub_10090C044(&qword_100CBB268, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v1 + 24));
  sub_100936858();
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&unk_100CBA310);
  sub_100022AC0(&qword_100CB3CD8);
  sub_1009366D8();

  *(v1 + 16) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v1 + 17) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB3CE8);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18);
  sub_1009366D8();

  *(v1 + 18) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CBB270);
  type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice(0);
  sub_10090C2B4();
  sub_1009366C8();

  sub_100936158();
  *(v1 + 16) = 0;
  *(v1 + 18) = 0;
  swift_beginAccess();
  sub_100012970(v1 + 24);
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1008F70BC()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1008F71C4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008F72D4()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1008F73AC()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1008F74B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1008F75BC()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1008F7694()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1008F779C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008F78AC()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1008F7984()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1008F7A8C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008F7B9C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1008F7C74()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_1009368A8();

  return v1;
}

uint64_t sub_1008F7D78@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_1008F7E84()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1008F7F54()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_1009368A8();

  return v1;
}

uint64_t sub_1008F8058@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_1008F8164()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1008F8234()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_1008F8360@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008F8494()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1008F856C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_1009368A8();

  return v1;
}

uint64_t sub_1008F8670@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_1008F877C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1008F8858()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4);
  sub_1009368A8();

  return v0;
}

double sub_1008F8994@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008F8AD0()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1008F8BC0()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936138();
}

__n128 sub_1008F8C98@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_10090CCF8();
  sub_1009368A8();

  result = v4;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

__n128 sub_1008F8DE8@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_10090CCF8();
  sub_1009368A8();

  result = v4;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1008F8F38()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1008F9024()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_10090CC74();
  sub_1009368C8();
}

uint64_t sub_1008F90E0()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable(0);
  sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_10090CDB0();
  sub_100936898();

  return v0;
}

uint64_t sub_1008F91F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable(0);
  sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_10090CDB0();
  sub_100936898();

  *a2 = v4;
  return result;
}

uint64_t sub_1008F9318()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB290, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1008F93E4()
{
  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable(0);
  sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  sub_10090CDB0();
  sub_1009368B8();
}

uint64_t sub_1008F9494(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, __int128 a9, char a10, __int128 a11, __int128 a12, uint64_t a13)
{
  *&v26 = a5;
  *(&v26 + 1) = a6;
  *&v25 = a3;
  *(&v25 + 1) = a4;
  v14 = swift_allocObject();
  *(v14 + 48) = sub_100706B30(&qword_100CBB2B8);
  *&v29 = v13;
  *(&v29 + 1) = v13;
  *&v30 = sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  *(&v30 + 1) = v30;
  *(v14 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v14 + 24));
  sub_100936858();
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  LOBYTE(v29) = 0;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  LOBYTE(v29) = 0;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v29 = 0uLL;
  sub_100706B30(&unk_100CBA310);
  sub_100022AC0(&qword_100CB3CD8);
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  LOBYTE(v29) = 0;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v29 = xmmword_1009AD8D0;
  sub_100706B30(&qword_100CB3CE8);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18);
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v29 = xmmword_1009AD8D0;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  *&v29 = &_swiftEmptyArrayStorage;
  sub_100706B30(&qword_100CBB2A8);
  type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable(0);
  sub_10090CDB0();
  sub_1009366C8();

  sub_100936158();
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  *&v29 = a1;
  *(&v29 + 1) = a2;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v29 = v25;
  sub_100715738(v25, *(&v25 + 1));
  sub_100768A18();
  sub_1009366D8();

  sub_1007156D8(v25, *(&v25 + 1));
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v29 = v26;
  sub_100715738(v26, *(&v26 + 1));
  sub_1009366D8();

  sub_1007156D8(v26, *(&v26 + 1));
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  LOBYTE(v29) = a7;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  LOBYTE(v29) = a8;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v29 = a9;
  sub_1009366D8();

  *(v14 + 16) = 0;
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  LOBYTE(v29) = a10;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v29 = a11;
  sub_1007483B0(a11, *(&a11 + 1));
  sub_1009366D8();

  sub_10001C370(a11, *(&a11 + 1));
  *(v14 + 17) = 0;
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v29 = a12;
  sub_1007483B0(a12, *(&a12 + 1));
  sub_1009366D8();

  sub_10001C370(a12, *(&a12 + 1));
  *(v14 + 18) = 0;
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v15 = *(a13 + 80);
  v33 = *(a13 + 64);
  v34 = v15;
  v35 = *(a13 + 96);
  v16 = *(a13 + 16);
  v29 = *a13;
  v30 = v16;
  v17 = *(a13 + 48);
  v31 = *(a13 + 32);
  v32 = v17;
  sub_10090CD78(a13, v28);
  sub_10090CC74();
  sub_1009366D8();

  sub_10090CCC8(a13);
  v18 = sub_100716518(a1, a2);
  v20 = v19;

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  *&v29 = v18;
  *(&v29 + 1) = v20;
  sub_1009366D8();
  sub_10090CCC8(a13);
  sub_10001C370(a12, *(&a12 + 1));
  sub_10001C370(a11, *(&a11 + 1));
  sub_1007156D8(v26, *(&v26 + 1));
  sub_1007156D8(v25, *(&v25 + 1));

  sub_1007156D8(v18, v20);
  return v14;
}