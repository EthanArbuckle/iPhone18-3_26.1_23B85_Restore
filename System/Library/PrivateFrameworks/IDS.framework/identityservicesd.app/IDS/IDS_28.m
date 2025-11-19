uint64_t sub_10078C684(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];
        sub_100715738(*v11, v13);
        sub_10078E458(v12, v13, &v14);
        sub_1007156D8(v12, v13);
        result = sub_10001C370(v14, *(&v14 + 1));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_10078C7C4(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v174 = 0;
  v6 = a1 + 56;
  v5 = *(a1 + 56);
  v7 = -1;
  v8 = -1 << *(a1 + 32);
  v179 = ~v8;
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v5;
  v11 = (63 - v8) >> 6;
  v189 = (a2 + 56);
  v13 = v201;
  v12 = v202;

  v16 = 0;
  v185 = v4;
  v178 = v6;
  v176 = v11;
  v177 = v14;
  if (!v10)
  {
LABEL_6:
    v17 = v16;
    do
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_318;
      }

      if (v18 >= v11)
      {
        v201 = v13;
        v202 = v12;
        goto LABEL_314;
      }

      v10 = *(v6 + 8 * v18);
      ++v17;
    }

    while (!v10);
    v16 = v18;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v20 = (*(v14 + 48) + ((v16 << 10) | (16 * v19)));
    v22 = *v20;
    v21 = v20[1];
    v182 = v16;
    v203 = v16;
    v204 = v10;
    sub_100937668();
    sub_100715738(v22, v21);
    v188 = v22;
    sub_100935EB8();
    v13 = __s1;
    v23 = sub_1009376C8();
    v24 = -1 << *(v4 + 32);
    v7 = v21;
    v3 = v23 & ~v24;
    v11 = v3 >> 6;
    v25 = v189;
    v2 = 1 << v3;
    if (((1 << v3) & v189[v3 >> 6]) != 0)
    {
      break;
    }

LABEL_156:
    sub_1007156D8(v188, v7);
    v12 = v179;
    v6 = v178;
    v13 = v178;
    v14 = v177;
    v16 = v182;
    v11 = v176;
    v7 = -1;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  v26 = ~v24;
  v27 = v21 >> 62;
  if (v188)
  {
    v28 = 0;
  }

  else
  {
    v28 = v7 == 0xC000000000000000;
  }

  v29 = !v28;
  LODWORD(v186) = v29;
  v173 = HIDWORD(v188);
  v30 = __OFSUB__(HIDWORD(v188), v188);
  v181 = v30;
  v180 = HIDWORD(v188) - v188;
  v187 = BYTE6(v7);
  v175 = v188;
  v172 = v188 >> 32;
  v171 = (v188 >> 32) - v188;
  v184 = v7;
  v183 = v26;
  while (1)
  {
    v31 = (*(v4 + 48) + 16 * v3);
    v6 = *v31;
    v32 = v31[1];
    v33 = v32 >> 62;
    if (v32 >> 62 == 3)
    {
      if (v6)
      {
        v34 = 0;
      }

      else
      {
        v34 = v32 == 0xC000000000000000;
      }

      v36 = !v34 || v27 < 3;
      if (((v36 | v186) & 1) == 0)
      {
        v6 = v178;
        v201 = v178;
        v202 = v179;
        v7 = v177;
        v200 = v177;
        v81 = 0;
        v82 = 0xC000000000000000;
LABEL_161:
        v83 = sub_1007156D8(v81, v82);
        goto LABEL_162;
      }

LABEL_46:
      v37 = 0;
      if (v27 <= 1)
      {
        goto LABEL_43;
      }

      goto LABEL_47;
    }

    if (v33 > 1)
    {
      if (v33 != 2)
      {
        goto LABEL_46;
      }

      v39 = *(v6 + 16);
      v38 = *(v6 + 24);
      v40 = __OFSUB__(v38, v39);
      v37 = v38 - v39;
      if (v40)
      {
        goto LABEL_327;
      }

      if (v27 <= 1)
      {
        goto LABEL_43;
      }
    }

    else if (v33)
    {
      LODWORD(v37) = HIDWORD(v6) - v6;
      if (__OFSUB__(HIDWORD(v6), v6))
      {
        goto LABEL_326;
      }

      v37 = v37;
      if (v27 <= 1)
      {
LABEL_43:
        v41 = v187;
        if (v27)
        {
          v41 = v180;
          if (v181)
          {
            goto LABEL_322;
          }
        }

        goto LABEL_49;
      }
    }

    else
    {
      v37 = BYTE6(v32);
      if (v27 <= 1)
      {
        goto LABEL_43;
      }
    }

LABEL_47:
    if (v27 != 2)
    {
      if (!v37)
      {
        goto LABEL_159;
      }

      goto LABEL_23;
    }

    v43 = *(v188 + 16);
    v42 = *(v188 + 24);
    v40 = __OFSUB__(v42, v43);
    v41 = v42 - v43;
    if (v40)
    {
      goto LABEL_321;
    }

LABEL_49:
    if (v37 != v41)
    {
      goto LABEL_23;
    }

    if (v37 < 1)
    {
      goto LABEL_159;
    }

    if (v33 > 1)
    {
      break;
    }

    if (v33)
    {
      v7 = v6;
      if (v6 > v6 >> 32)
      {
        goto LABEL_328;
      }

      sub_100715738(v6, v32);
      v49 = sub_100935BE8();
      if (v49)
      {
        v4 = v49;
        v50 = sub_100935C18();
        if (__OFSUB__(v6, v50))
        {
          goto LABEL_332;
        }

        v170 = v6 - v50 + v4;
      }

      else
      {
        v170 = 0;
      }

      v13 = v32 & 0x3FFFFFFFFFFFFFFFLL;
      sub_100935C08();
      v4 = v185;
      v7 = v184;
      if (v27 != 2)
      {
        if (v27 == 1)
        {
          if (v172 < v175)
          {
            goto LABEL_348;
          }

          v4 = sub_100935BE8();
          if (v4)
          {
            v59 = sub_100935C18();
            if (__OFSUB__(v175, v59))
            {
              goto LABEL_362;
            }

            v4 += v175 - v59;
          }

          v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
          v60 = sub_100935C08();
          v57 = v171;
          if (v60 < v171)
          {
            v57 = v60;
          }

          v58 = v170;
          if (!v170)
          {
            goto LABEL_388;
          }

          if (!v4)
          {
            goto LABEL_387;
          }

          goto LABEL_101;
        }

        v70 = v170;
        LODWORD(__s1[0]) = v188;
        BYTE4(__s1[0]) = v173;
        *(__s1 + 5) = *(&v188 + 5);
        HIBYTE(__s1[0]) = HIBYTE(v188);
        LODWORD(__s1[1]) = v184;
        WORD2(__s1[1]) = WORD2(v184);
        if (!v170)
        {
          goto LABEL_384;
        }

        goto LABEL_123;
      }

      v71 = *(v188 + 24);
      v169 = *(v188 + 16);
      v168 = v71;
      v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
      v4 = sub_100935BE8();
      if (v4)
      {
        v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
        v72 = sub_100935C18();
        v73 = v169;
        if (__OFSUB__(v169, v72))
        {
          goto LABEL_360;
        }

        v4 += v169 - v72;
      }

      else
      {
        v73 = v169;
      }

      v79 = v168 - v73;
      if (__OFSUB__(v168, v73))
      {
        goto LABEL_349;
      }

      v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
      v80 = sub_100935C08();
      if (v80 >= v79)
      {
        v57 = v79;
      }

      else
      {
        v57 = v80;
      }

      v58 = v170;
      if (!v170)
      {
        goto LABEL_377;
      }

      if (!v4)
      {
        goto LABEL_376;
      }

      goto LABEL_150;
    }

    __s1[0] = v6;
    LOWORD(__s1[1]) = v32;
    BYTE2(__s1[1]) = BYTE2(v32);
    BYTE3(__s1[1]) = BYTE3(v32);
    BYTE4(__s1[1]) = BYTE4(v32);
    BYTE5(__s1[1]) = BYTE5(v32);
    if (!v27)
    {
      goto LABEL_76;
    }

    if (v27 == 1)
    {
      if (v172 < v175)
      {
        goto LABEL_341;
      }

      sub_100715738(v6, v32);
      v44 = sub_100935BE8();
      if (!v44)
      {
        goto LABEL_378;
      }

      v4 = v44;
      v13 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      v45 = sub_100935C18();
      if (__OFSUB__(v175, v45))
      {
        goto LABEL_346;
      }

      v4 += v175 - v45;
      v46 = sub_100935C08();
      if (!v4)
      {
        goto LABEL_379;
      }

      goto LABEL_110;
    }

    v61 = *(v188 + 24);
    v170 = *(v188 + 16);
    v169 = v61;
    sub_100715738(v6, v32);
    v13 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v4 = sub_100935BE8();
    if (v4)
    {
      v13 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      v62 = sub_100935C18();
      v63 = v170;
      if (__OFSUB__(v170, v62))
      {
        v201 = v178;
        v202 = v179;
        __break(1u);
LABEL_358:
        v201 = v178;
        v202 = v179;
        __break(1u);
LABEL_359:
        v201 = v178;
        v202 = v179;
        __break(1u);
LABEL_360:
        v201 = v178;
        v202 = v179;
        __break(1u);
LABEL_361:
        v201 = v178;
        v202 = v179;
        __break(1u);
LABEL_362:
        v201 = v178;
        v202 = v179;
        __break(1u);
LABEL_363:
        __break(1u);
      }

      v4 += v170 - v62;
    }

    else
    {
      v63 = v170;
    }

    v74 = v169 - v63;
    if (__OFSUB__(v169, v63))
    {
      goto LABEL_344;
    }

    v75 = sub_100935C08();
    if (!v4)
    {
      goto LABEL_380;
    }

LABEL_131:
    if (v75 >= v74)
    {
      v76 = v74;
    }

    else
    {
      v76 = v75;
    }

    v13 = memcmp(__s1, v4, v76);
    sub_1007156D8(v6, v32);
    v4 = v185;
    v25 = v189;
    v7 = v184;
LABEL_154:
    v26 = v183;
    if (!v13)
    {
LABEL_159:
      v6 = v178;
      v201 = v178;
      v202 = v179;
      v82 = v7;
      v7 = v177;
      v200 = v177;
      v81 = v188;
      goto LABEL_161;
    }

LABEL_23:
    v3 = (v3 + 1) & v26;
    v11 = v3 >> 6;
    v2 = 1 << v3;
    if ((v25[v3 >> 6] & (1 << v3)) == 0)
    {
      goto LABEL_156;
    }
  }

  if (v33 != 2)
  {
    memset(__s1, 0, 14);
    if (!v27)
    {
LABEL_76:
      __s2 = v188;
      v191 = v173;
      v192 = *(&v188 + 5);
      v193 = HIBYTE(v188);
      v194 = v7;
      v195 = BYTE2(v7);
      v196 = BYTE3(v7);
      v197 = BYTE4(v7);
      v198 = BYTE5(v7);
      v54 = memcmp(__s1, &__s2, v187);
      v26 = v183;
      v25 = v189;
      if (!v54)
      {
        goto LABEL_159;
      }

      goto LABEL_23;
    }

    if (v27 != 2)
    {
      if (v172 < v175)
      {
        goto LABEL_340;
      }

      sub_100715738(v6, v32);
      v64 = sub_100935BE8();
      if (!v64)
      {
        goto LABEL_381;
      }

      v4 = v64;
      v13 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      v65 = sub_100935C18();
      if (__OFSUB__(v175, v65))
      {
        goto LABEL_345;
      }

      v4 += v175 - v65;
      v46 = sub_100935C08();
      if (!v4)
      {
        goto LABEL_383;
      }

LABEL_110:
      if (v46 >= v171)
      {
        v66 = v171;
      }

      else
      {
        v66 = v46;
      }

      v58 = __s1;
LABEL_152:
      v13 = memcmp(v58, v4, v66);
      sub_1007156D8(v6, v32);
      v4 = v185;
LABEL_153:
      v25 = v189;
      goto LABEL_154;
    }

    v51 = *(v188 + 24);
    v170 = *(v188 + 16);
    v169 = v51;
    sub_100715738(v6, v32);
    v13 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v4 = sub_100935BE8();
    if (v4)
    {
      v13 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      v52 = sub_100935C18();
      v53 = v170;
      if (__OFSUB__(v170, v52))
      {
        goto LABEL_358;
      }

      v4 += v170 - v52;
    }

    else
    {
      v53 = v170;
    }

    v74 = v169 - v53;
    if (__OFSUB__(v169, v53))
    {
      goto LABEL_343;
    }

    v75 = sub_100935C08();
    if (!v4)
    {
      goto LABEL_382;
    }

    goto LABEL_131;
  }

  v7 = *(v6 + 16);
  sub_100715738(v6, v32);
  v47 = sub_100935BE8();
  if (v47)
  {
    v4 = v47;
    v48 = sub_100935C18();
    if (__OFSUB__(v7, v48))
    {
      goto LABEL_331;
    }

    v170 = v7 - v48 + v4;
  }

  else
  {
    v170 = 0;
  }

  v13 = v32 & 0x3FFFFFFFFFFFFFFFLL;
  sub_100935C08();
  v4 = v185;
  v7 = v184;
  if (v27 != 2)
  {
    if (v27 == 1)
    {
      if (v172 < v175)
      {
        goto LABEL_342;
      }

      v4 = sub_100935BE8();
      if (v4)
      {
        v55 = sub_100935C18();
        if (__OFSUB__(v175, v55))
        {
          goto LABEL_361;
        }

        v4 += v175 - v55;
      }

      v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
      v56 = sub_100935C08();
      v57 = v171;
      if (v56 < v171)
      {
        v57 = v56;
      }

      v58 = v170;
      if (!v170)
      {
        goto LABEL_390;
      }

      if (!v4)
      {
        goto LABEL_389;
      }

LABEL_101:
      if (v58 == v4)
      {
        goto LABEL_316;
      }

LABEL_151:
      v66 = v57;
      goto LABEL_152;
    }

    v70 = v170;
    LODWORD(__s1[0]) = v188;
    BYTE4(__s1[0]) = v173;
    *(__s1 + 5) = *(&v188 + 5);
    HIBYTE(__s1[0]) = HIBYTE(v188);
    LODWORD(__s1[1]) = v184;
    WORD2(__s1[1]) = WORD2(v184);
    if (!v170)
    {
      goto LABEL_375;
    }

LABEL_123:
    v13 = memcmp(v70, __s1, v187);
    sub_1007156D8(v6, v32);
    goto LABEL_153;
  }

  v67 = *(v188 + 24);
  v169 = *(v188 + 16);
  v168 = v67;
  v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = sub_100935BE8();
  if (v4)
  {
    v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
    v68 = sub_100935C18();
    v69 = v169;
    if (__OFSUB__(v169, v68))
    {
      goto LABEL_359;
    }

    v4 += v169 - v68;
  }

  else
  {
    v69 = v169;
  }

  v77 = v168 - v69;
  if (__OFSUB__(v168, v69))
  {
    goto LABEL_347;
  }

  v13 = v184 & 0x3FFFFFFFFFFFFFFFLL;
  v78 = sub_100935C08();
  if (v78 >= v77)
  {
    v57 = v77;
  }

  else
  {
    v57 = v78;
  }

  v58 = v170;
  if (!v170)
  {
    goto LABEL_386;
  }

  if (!v4)
  {
    goto LABEL_385;
  }

LABEL_150:
  v7 = v184;
  if (v58 != v4)
  {
    goto LABEL_151;
  }

LABEL_316:
  v201 = v178;
  v202 = v179;
  v157 = v7;
  v7 = v177;
  v200 = v177;
  v158 = v6;
  v6 = v178;
  sub_1007156D8(v158, v32);
  v83 = sub_1007156D8(v188, v157);
  v4 = v185;
LABEL_162:
  v84 = *(v4 + 32);
  v166 = ((1 << v84) + 63) >> 6;
  v15 = 8 * v166;
  if ((v84 & 0x3Fu) > 0xD)
  {
    goto LABEL_333;
  }

LABEL_163:
  v167 = &v163;
  __chkstk_darwin(v83);
  v86 = &v163 - ((v85 + 15) & 0x3FFFFFFFFFFFFFF0);
  memcpy(v86, v189, v85);
  v87 = *&v86[8 * v11] & ~v2;
  v169 = v86;
  *&v86[8 * v11] = v87;
  v88 = *(v4 + 16) - 1;
  v12 = v182;
  v89 = v176;
  while (2)
  {
    v168 = v88;
    while (1)
    {
LABEL_165:
      if (v10)
      {
        goto LABEL_171;
      }

      v90 = v12;
      do
      {
        v91 = v90 + 1;
        if (__OFADD__(v90, 1))
        {
          __break(1u);
LABEL_318:
          v201 = v13;
          v202 = v12;
          __break(1u);
LABEL_319:
          __break(1u);
LABEL_320:
          __break(1u);
LABEL_321:
          v201 = v178;
          v202 = v179;
          __break(1u);
LABEL_322:
          v201 = v178;
          v202 = v179;
          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          __break(1u);
LABEL_325:
          __break(1u);
LABEL_326:
          v201 = v178;
          v202 = v179;
          __break(1u);
LABEL_327:
          v201 = v178;
          v202 = v179;
          __break(1u);
LABEL_328:
          v201 = v178;
          v202 = v179;
          __break(1u);
LABEL_329:
          __break(1u);
LABEL_330:
          __break(1u);
LABEL_331:
          v201 = v178;
          v202 = v179;
          __break(1u);
LABEL_332:
          v201 = v178;
          v202 = v179;
          __break(1u);
LABEL_333:
          v159 = v15;

          v13 = v159;
          if (!swift_stdlib_isStackAllocationSafe())
          {
            goto LABEL_355;
          }

          goto LABEL_163;
        }

        if (v91 >= v89)
        {
          v4 = sub_10078F164(v169, v166, v168, v4);
          goto LABEL_314;
        }

        v10 = *(v6 + 8 * v91);
        ++v90;
      }

      while (!v10);
      v12 = v91;
LABEL_171:
      v92 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v93 = (*(v7 + 48) + ((v12 << 10) | (16 * v92)));
      v95 = *v93;
      v94 = v93[1];
      v200 = v7;
      v201 = v6;
      v6 = v94;
      v202 = v179;
      v203 = v12;
      v182 = v12;
      v204 = v10;
      sub_100937668();
      sub_100715738(v95, v6);
      sub_100935EB8();
      v13 = __s1;
      v96 = sub_1009376C8();
      v97 = -1 << *(v4 + 32);
      v98 = v96 & ~v97;
      v11 = v98 >> 6;
      v99 = v189;
      v2 = 1 << v98;
      if (((1 << v98) & v189[v98 >> 6]) != 0)
      {
        break;
      }

      v104 = v95;
LABEL_304:
      sub_1007156D8(v104, v6);
      v6 = v178;
      v7 = v177;
      v12 = v182;
      v89 = v176;
    }

    v100 = ~v97;
    v7 = v6 >> 62;
    if (v95)
    {
      v101 = 0;
    }

    else
    {
      v101 = v6 == 0xC000000000000000;
    }

    v102 = !v101;
    LODWORD(v184) = v102;
    v173 = HIDWORD(v95);
    v103 = __OFSUB__(HIDWORD(v95), v95);
    v181 = v103;
    v180 = HIDWORD(v95) - v95;
    v188 = BYTE6(v6);
    v175 = v95;
    v172 = v95 >> 32;
    v170 = (v95 >> 32) - v95;
    v186 = v6;
    v104 = v95;
    v187 = v95;
    v183 = v100;
    while (2)
    {
      v105 = (*(v4 + 48) + 16 * v98);
      v106 = *v105;
      v3 = v105[1];
      v107 = v3 >> 62;
      if (v3 >> 62 != 3)
      {
        if (v107 <= 1)
        {
          if (v107)
          {
            LODWORD(v111) = HIDWORD(v106) - v106;
            if (__OFSUB__(HIDWORD(v106), v106))
            {
              goto LABEL_324;
            }

            v111 = v111;
            if (v7 > 1)
            {
              goto LABEL_207;
            }
          }

          else
          {
            v111 = BYTE6(v3);
            if (v7 > 1)
            {
              goto LABEL_207;
            }
          }

          goto LABEL_203;
        }

        if (v107 != 2)
        {
          goto LABEL_206;
        }

        v113 = *(v106 + 16);
        v112 = *(v106 + 24);
        v40 = __OFSUB__(v112, v113);
        v111 = v112 - v113;
        if (v40)
        {
          goto LABEL_323;
        }

        if (v7 <= 1)
        {
          goto LABEL_203;
        }

LABEL_207:
        if (v7 == 2)
        {
          v116 = *(v104 + 16);
          v115 = *(v104 + 24);
          v40 = __OFSUB__(v115, v116);
          v114 = v115 - v116;
          if (v40)
          {
            goto LABEL_319;
          }

          goto LABEL_209;
        }

        if (!v111)
        {
          goto LABEL_302;
        }

        goto LABEL_183;
      }

      if (v106)
      {
        v108 = 0;
      }

      else
      {
        v108 = v3 == 0xC000000000000000;
      }

      v110 = !v108 || v7 < 3;
      if (((v110 | v184) & 1) == 0)
      {
        v153 = 0;
        v154 = 0xC000000000000000;
        goto LABEL_305;
      }

LABEL_206:
      v111 = 0;
      if (v7 > 1)
      {
        goto LABEL_207;
      }

LABEL_203:
      v114 = v188;
      if (v7)
      {
        v114 = v180;
        if (v181)
        {
          goto LABEL_320;
        }
      }

LABEL_209:
      if (v111 != v114)
      {
        goto LABEL_183;
      }

      if (v111 < 1)
      {
        goto LABEL_302;
      }

      if (v107 <= 1)
      {
        if (!v107)
        {
          __s1[0] = v106;
          LOWORD(__s1[1]) = v3;
          BYTE2(__s1[1]) = BYTE2(v3);
          BYTE3(__s1[1]) = BYTE3(v3);
          BYTE4(__s1[1]) = BYTE4(v3);
          BYTE5(__s1[1]) = BYTE5(v3);
          if (v7)
          {
            if (v7 == 1)
            {
              v13 = v175;
              v117 = v172;
              if (v172 < v175)
              {
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
                v201 = v178;
                v202 = v179;
                __break(1u);
LABEL_341:
                v201 = v178;
                v202 = v179;
                __break(1u);
LABEL_342:
                v201 = v178;
                v202 = v179;
                __break(1u);
LABEL_343:
                v201 = v178;
                v202 = v179;
                __break(1u);
LABEL_344:
                v201 = v178;
                v202 = v179;
                __break(1u);
LABEL_345:
                v201 = v178;
                v202 = v179;
                __break(1u);
LABEL_346:
                v201 = v178;
                v202 = v179;
                __break(1u);
LABEL_347:
                v201 = v178;
                v202 = v179;
                __break(1u);
LABEL_348:
                v201 = v178;
                v202 = v179;
                __break(1u);
LABEL_349:
                v201 = v178;
                v202 = v179;
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
                v160 = swift_slowAlloc();
                memcpy(v160, v189, v13);
                v161 = v174;
                v162 = sub_10078E8A4(v160, v166, v4, v3, &v200);

                if (v161)
                {
                  goto LABEL_392;
                }

                v179 = v202;
                v4 = v162;
LABEL_314:
                sub_100308C6C();
                return v4;
              }
            }

            else
            {
              v13 = *(v104 + 16);
              v117 = *(v104 + 24);
            }

            sub_100715738(v106, v3);
            v133 = v117;
            v134 = v174;
            v135 = sub_100791AC0(v13, v133, v186 & 0x3FFFFFFFFFFFFFFFLL, __s1);
            v174 = v134;
            if (v134)
            {
              goto LABEL_391;
            }

            v13 = v135;
            sub_1007156D8(v106, v3);
            v99 = v189;
            v6 = v186;
            v104 = v187;
            v100 = v183;
            if (v13)
            {
              goto LABEL_302;
            }

LABEL_183:
            v98 = (v98 + 1) & v100;
            v11 = v98 >> 6;
            v2 = 1 << v98;
            if ((v99[v98 >> 6] & (1 << v98)) == 0)
            {
              goto LABEL_304;
            }

            continue;
          }

LABEL_232:
          LOWORD(__s2) = v104;
          BYTE2(__s2) = BYTE2(v104);
          HIBYTE(__s2) = BYTE3(v104);
          v191 = v173;
          LOBYTE(v192) = BYTE5(v104);
          HIBYTE(v192) = BYTE6(v104);
          v193 = HIBYTE(v104);
          v194 = v6;
          v195 = BYTE2(v6);
          v196 = BYTE3(v6);
          v197 = BYTE4(v6);
          v198 = BYTE5(v6);
          v126 = memcmp(__s1, &__s2, v188);
          v100 = v183;
          v104 = v187;
          v99 = v189;
          if (!v126)
          {
            goto LABEL_302;
          }

          goto LABEL_183;
        }

        v4 = v106;
        if (v106 > v106 >> 32)
        {
          goto LABEL_325;
        }

        sub_100715738(v106, v3);
        v120 = sub_100935BE8();
        if (v120)
        {
          v6 = v120;
          v121 = sub_100935C18();
          if (__OFSUB__(v106, v121))
          {
            goto LABEL_330;
          }

          v171 = v106 - v121 + v6;
        }

        else
        {
          v171 = 0;
        }

        v13 = v3 & 0x3FFFFFFFFFFFFFFFLL;
        sub_100935C08();
        v4 = v185;
        v6 = v186;
        if (v7 != 2)
        {
          if (v7 == 1)
          {
            if (v172 < v175)
            {
              goto LABEL_338;
            }

            v4 = sub_100935BE8();
            if (v4)
            {
              v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
              v131 = sub_100935C18();
              if (__OFSUB__(v175, v131))
              {
                goto LABEL_354;
              }

              v4 += v175 - v131;
            }

            v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
            v132 = sub_100935C08();
            v129 = v170;
            if (v132 < v170)
            {
              v129 = v132;
            }

            v130 = v171;
            if (!v171)
            {
              goto LABEL_369;
            }

            if (!v4)
            {
              goto LABEL_368;
            }

LABEL_257:
            if (v130 == v4)
            {
              goto LABEL_308;
            }

LABEL_299:
            v13 = memcmp(v130, v4, v129);
            sub_1007156D8(v106, v3);
            v4 = v185;
LABEL_300:
            v99 = v189;
LABEL_301:
            v104 = v187;
            v100 = v183;
            if (!v13)
            {
              goto LABEL_302;
            }

            goto LABEL_183;
          }

          v145 = v171;
          LODWORD(__s1[0]) = v187;
          BYTE4(__s1[0]) = v173;
          *(__s1 + 5) = *(&v187 + 5);
          HIBYTE(__s1[0]) = HIBYTE(v187);
          LODWORD(__s1[1]) = v186;
          WORD2(__s1[1]) = WORD2(v186);
          if (!v171)
          {
            goto LABEL_365;
          }

LABEL_282:
          v13 = memcmp(v145, __s1, v188);
          sub_1007156D8(v106, v3);
          goto LABEL_300;
        }

        v146 = *(v187 + 24);
        v165 = *(v187 + 16);
        v164 = v146;
        v13 = v186 & 0x3FFFFFFFFFFFFFFFLL;
        v4 = sub_100935BE8();
        if (v4)
        {
          v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
          v147 = sub_100935C18();
          v148 = v165;
          if (__OFSUB__(v165, v147))
          {
            goto LABEL_352;
          }

          v4 += v165 - v147;
        }

        else
        {
          v148 = v165;
        }

        v151 = v164 - v148;
        if (__OFSUB__(v164, v148))
        {
          goto LABEL_339;
        }

        v13 = v186 & 0x3FFFFFFFFFFFFFFFLL;
        v152 = sub_100935C08();
        if (v152 >= v151)
        {
          v129 = v151;
        }

        else
        {
          v129 = v152;
        }

        v130 = v171;
        if (!v171)
        {
          goto LABEL_373;
        }

        if (!v4)
        {
          goto LABEL_371;
        }

        goto LABEL_298;
      }

      break;
    }

    if (v107 == 2)
    {
      v4 = *(v106 + 16);
      sub_100715738(v106, v3);
      v118 = sub_100935BE8();
      if (v118)
      {
        v6 = v118;
        v119 = sub_100935C18();
        if (__OFSUB__(v4, v119))
        {
          goto LABEL_329;
        }

        v171 = v4 - v119 + v6;
      }

      else
      {
        v171 = 0;
      }

      v6 = v186;
      v13 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      sub_100935C08();
      v4 = v185;
      if (v7 != 2)
      {
        if (v7 == 1)
        {
          if (v172 < v175)
          {
            goto LABEL_336;
          }

          v4 = sub_100935BE8();
          if (v4)
          {
            v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
            v127 = sub_100935C18();
            if (__OFSUB__(v175, v127))
            {
              goto LABEL_353;
            }

            v4 += v175 - v127;
          }

          v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
          v128 = sub_100935C08();
          v129 = v170;
          if (v128 < v170)
          {
            v129 = v128;
          }

          v130 = v171;
          if (!v171)
          {
            goto LABEL_374;
          }

          if (!v4)
          {
            goto LABEL_372;
          }

          goto LABEL_257;
        }

        v145 = v171;
        LODWORD(__s1[0]) = v187;
        BYTE4(__s1[0]) = v173;
        *(__s1 + 5) = *(&v187 + 5);
        HIBYTE(__s1[0]) = HIBYTE(v187);
        LOWORD(__s1[1]) = v6;
        BYTE2(__s1[1]) = BYTE2(v6);
        BYTE3(__s1[1]) = BYTE3(v6);
        BYTE4(__s1[1]) = BYTE4(v6);
        BYTE5(__s1[1]) = BYTE5(v6);
        if (!v171)
        {
          goto LABEL_366;
        }

        goto LABEL_282;
      }

      v142 = *(v187 + 24);
      v165 = *(v187 + 16);
      v164 = v142;
      v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      v4 = sub_100935BE8();
      if (v4)
      {
        v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
        v143 = sub_100935C18();
        v144 = v165;
        if (__OFSUB__(v165, v143))
        {
          goto LABEL_350;
        }

        v4 += v165 - v143;
      }

      else
      {
        v144 = v165;
      }

      v149 = v164 - v144;
      if (__OFSUB__(v164, v144))
      {
        goto LABEL_337;
      }

      v13 = v186 & 0x3FFFFFFFFFFFFFFFLL;
      v150 = sub_100935C08();
      if (v150 >= v149)
      {
        v129 = v149;
      }

      else
      {
        v129 = v150;
      }

      v130 = v171;
      if (!v171)
      {
        goto LABEL_370;
      }

      if (!v4)
      {
        goto LABEL_367;
      }

LABEL_298:
      v6 = v186;
      if (v130 != v4)
      {
        goto LABEL_299;
      }

LABEL_308:
      sub_1007156D8(v106, v3);
      sub_1007156D8(v187, v6);
      v4 = v185;
LABEL_306:
      v12 = v182;
      v89 = v176;
      v155 = v169[v11];
      v169[v11] = v155 & ~v2;
      v6 = v178;
      v7 = v177;
      if ((v155 & v2) != 0)
      {
        v88 = v168 - 1;
        if (__OFSUB__(v168, 1))
        {
          goto LABEL_363;
        }

        if (v168 == 1)
        {

          v4 = &_swiftEmptySetSingleton;
          goto LABEL_314;
        }

        continue;
      }

      goto LABEL_165;
    }

    break;
  }

  memset(__s1, 0, 14);
  if (!v7)
  {
    goto LABEL_232;
  }

  if (v7 == 2)
  {
    v122 = *(v104 + 16);
    v123 = *(v104 + 24);
    sub_100715738(v106, v3);
    v124 = v123;
    v125 = v174;
    v13 = sub_100791AC0(v122, v124, v186 & 0x3FFFFFFFFFFFFFFFLL, __s1);
    v174 = v125;
    v6 = v186;
    sub_1007156D8(v106, v3);
    v100 = v183;
    v104 = v187;
    v99 = v189;
    if (v13)
    {
      goto LABEL_302;
    }

    goto LABEL_183;
  }

  if (v172 < v175)
  {
    goto LABEL_335;
  }

  sub_100715738(v106, v3);
  v136 = sub_100935BE8();
  v137 = v6;
  v138 = v136;
  if (v136)
  {
    v13 = v137 & 0x3FFFFFFFFFFFFFFFLL;
    v139 = sub_100935C18();
    if (__OFSUB__(v175, v139))
    {
      goto LABEL_351;
    }

    v138 += v175 - v139;
  }

  v13 = v186 & 0x3FFFFFFFFFFFFFFFLL;
  v140 = sub_100935C08();
  if (v140 >= v170)
  {
    v141 = v170;
  }

  else
  {
    v141 = v140;
  }

  if (v138)
  {
    if (__s1 != v138)
    {
      v13 = memcmp(__s1, v138, v141);
      sub_1007156D8(v106, v3);
      v99 = v189;
      v6 = v186;
      goto LABEL_301;
    }

    sub_1007156D8(v106, v3);
    v6 = v186;
    v104 = v187;
LABEL_302:
    v153 = v104;
    v154 = v6;
LABEL_305:
    sub_1007156D8(v153, v154);
    goto LABEL_306;
  }

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
LABEL_370:
  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_376:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_377:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_378:
  v201 = v178;
  v202 = v179;
  sub_100935C08();
  __break(1u);
LABEL_379:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_380:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_381:
  v201 = v178;
  v202 = v179;
  sub_100935C08();
  __break(1u);
LABEL_382:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_383:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_384:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_385:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_386:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_387:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_388:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_389:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_390:
  v201 = v178;
  v202 = v179;
  __break(1u);
LABEL_391:

  __break(1u);
LABEL_392:

  __break(1u);
  return result;
}

double sub_10078E458@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *v3;
  sub_100937668();
  sub_100935EB8();
  v7 = sub_1009376C8();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_64:
    result = 0.0;
    *a3 = xmmword_1009AD8D0;
    return result;
  }

  v11 = ~v9;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v45 = v13;
  v14 = a2 >> 62;
  v15 = __OFSUB__(HIDWORD(a1), a1);
  v42 = v15;
  v40 = a2;
  v41 = HIDWORD(a1) - a1;
  v43 = v11;
  v44 = BYTE6(a2);
  v39 = a1;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      break;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_67;
      }

      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_68;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_33:
        v27 = v44;
        if (v14)
        {
          v27 = v41;
          if (v42)
          {
            goto LABEL_66;
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_62;
      }

      goto LABEL_13;
    }

    v29 = *(a1 + 16);
    v28 = *(a1 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_62;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        *v47 = v18;
        *&v47[8] = v17;
        v47[10] = BYTE2(v17);
        v47[11] = BYTE3(v17);
        v47[12] = BYTE4(v17);
        v47[13] = BYTE5(v17);
        sub_100715738(v18, v17);
        v11 = v43;
        goto LABEL_61;
      }

      a2 = (v18 >> 32) - v18;
      if (v18 >> 32 < v18)
      {
        goto LABEL_69;
      }

      sub_100715738(v18, v17);
      v31 = sub_100935BE8();
      if (v31)
      {
        v33 = sub_100935C18();
        if (__OFSUB__(v18, v33))
        {
          goto LABEL_72;
        }

        v31 += v18 - v33;
      }

LABEL_58:
      sub_100935C08();
      a1 = v39;
      a2 = v40;
      sub_10071C670(v31, v39, v40, v47);
      sub_1007156D8(v18, v17);
      v8 = v6 + 56;
      v11 = v43;
      if (v47[0])
      {
        goto LABEL_62;
      }

      goto LABEL_13;
    }

    if (v19 == 2)
    {
      a2 = *(v18 + 16);
      v30 = *(v18 + 24);
      sub_100715738(v18, v17);
      v31 = sub_100935BE8();
      if (v31)
      {
        v32 = sub_100935C18();
        if (__OFSUB__(a2, v32))
        {
          goto LABEL_71;
        }

        v31 += a2 - v32;
      }

      v26 = __OFSUB__(v30, a2);
      a2 = v30 - a2;
      if (v26)
      {
        goto LABEL_70;
      }

      goto LABEL_58;
    }

    *&v47[6] = 0;
    *v47 = 0;
    sub_100715738(v18, v17);
LABEL_61:
    sub_10071C670(v47, a1, a2, &v46);
    sub_1007156D8(v18, v17);
    if (v46)
    {
      goto LABEL_62;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17 == 0xC000000000000000;
  }

  v22 = !v20 || v14 < 3;
  if ((v22 | v45))
  {
LABEL_36:
    v23 = 0;
    if (v14 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

LABEL_62:
  a2 = v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v37;
  *v47 = *v37;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_63;
  }

LABEL_73:
  sub_10078BD64();
  v35 = *v47;
LABEL_63:
  *a3 = *(*(v35 + 48) + 16 * v10);
  sub_10078F38C(v10);
  *a2 = *v47;
  return result;
}

void *sub_10078E8A4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a3;
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v88 = a3 + 56;
  v81 = a5;
LABEL_2:
  v76 = v7;
  while (1)
  {
LABEL_4:
    v8 = a5[3];
    v9 = a5[4];
    if (!v9)
    {
      v11 = (a5[2] + 64) >> 6;
      v12 = a5[3];
      while (1)
      {
        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v10 >= v11)
        {
          if (v11 <= v8 + 1)
          {
            v70 = v8 + 1;
          }

          else
          {
            v70 = (a5[2] + 64) >> 6;
          }

          a5[3] = v70 - 1;
          a5[4] = 0;

          return sub_10078F164(a1, a2, v76, v5);
        }

        v9 = *(a5[1] + 8 * v10);
        ++v12;
        if (v9)
        {
          goto LABEL_10;
        }
      }

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
    }

    v10 = a5[3];
LABEL_10:
    v13 = (*(*a5 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v9)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v10;
    a5[4] = (v9 - 1) & v9;
    sub_100937668();
    sub_100715738(v15, v14);
    sub_100935EB8();
    v16 = sub_1009376C8();
    v17 = -1 << *(v5 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    v20 = v88;
    v21 = 1 << v18;
    v93 = v14;
    v94 = v15;
    if (((1 << v18) & *(v88 + 8 * (v18 >> 6))) != 0)
    {
      break;
    }

LABEL_3:
    sub_1007156D8(v94, v93);
    a5 = v81;
  }

  v22 = ~v17;
  v23 = v14 >> 62;
  if (v15)
  {
    v24 = 0;
  }

  else
  {
    v24 = v14 == 0xC000000000000000;
  }

  v25 = !v24;
  v91 = v25;
  v80 = HIDWORD(v15);
  v26 = __OFSUB__(HIDWORD(v15), v15);
  v86 = v26;
  v85 = HIDWORD(v15) - v15;
  v92 = BYTE6(v14);
  v82 = v15;
  v78 = (v15 >> 32) - v15;
  v79 = v15 >> 32;
  v90 = v22;
  while (1)
  {
    v27 = (*(v5 + 48) + 16 * v18);
    v28 = *v27;
    v29 = v27[1];
    v30 = v29 >> 62;
    if (v29 >> 62 == 3)
    {
      if (v28)
      {
        v31 = 0;
      }

      else
      {
        v31 = v29 == 0xC000000000000000;
      }

      v33 = !v31 || v23 < 3;
      if (((v33 | v91) & 1) == 0)
      {
        v66 = 0;
        v67 = 0xC000000000000000;
        goto LABEL_124;
      }

LABEL_45:
      v34 = 0;
      if (v23 <= 1)
      {
        goto LABEL_42;
      }

      goto LABEL_46;
    }

    if (v30 > 1)
    {
      if (v30 != 2)
      {
        goto LABEL_45;
      }

      v36 = *(v28 + 16);
      v35 = *(v28 + 24);
      v37 = __OFSUB__(v35, v36);
      v34 = v35 - v36;
      if (v37)
      {
        goto LABEL_135;
      }

      if (v23 <= 1)
      {
        goto LABEL_42;
      }
    }

    else if (v30)
    {
      LODWORD(v34) = HIDWORD(v28) - v28;
      if (__OFSUB__(HIDWORD(v28), v28))
      {
        goto LABEL_136;
      }

      v34 = v34;
      if (v23 <= 1)
      {
LABEL_42:
        v38 = v92;
        if (v23)
        {
          v38 = v85;
          if (v86)
          {
            goto LABEL_134;
          }
        }

        goto LABEL_48;
      }
    }

    else
    {
      v34 = BYTE6(v29);
      if (v23 <= 1)
      {
        goto LABEL_42;
      }
    }

LABEL_46:
    if (v23 != 2)
    {
      if (!v34)
      {
        goto LABEL_123;
      }

      goto LABEL_22;
    }

    v40 = *(v94 + 16);
    v39 = *(v94 + 24);
    v37 = __OFSUB__(v39, v40);
    v38 = v39 - v40;
    if (v37)
    {
      goto LABEL_133;
    }

LABEL_48:
    if (v34 != v38)
    {
      goto LABEL_22;
    }

    if (v34 < 1)
    {
      goto LABEL_123;
    }

    if (v30 <= 1)
    {
      if (!v30)
      {
        *v96 = v28;
        *&v96[8] = v29;
        v96[10] = BYTE2(v29);
        v96[11] = BYTE3(v29);
        v96[12] = BYTE4(v29);
        v96[13] = BYTE5(v29);
        sub_100715738(v28, v29);
        sub_10071C670(v96, v94, v93, &v95);
        if (v89)
        {
          goto LABEL_158;
        }

        sub_1007156D8(v28, v29);
        v22 = v90;
        if (v95)
        {
          goto LABEL_123;
        }

        goto LABEL_22;
      }

      if (v28 > v28 >> 32)
      {
        goto LABEL_137;
      }

      sub_100715738(v28, v29);
      v45 = sub_100935BE8();
      if (v45)
      {
        v46 = v45;
        v47 = sub_100935C18();
        if (__OFSUB__(v28, v47))
        {
          goto LABEL_139;
        }

        __s1a = (v28 - v47 + v46);
      }

      else
      {
        __s1a = 0;
      }

      sub_100935C08();
      v5 = a3;
      if (v23 != 2)
      {
        if (v23 == 1)
        {
          if (v79 < v82)
          {
            goto LABEL_142;
          }

          v48 = sub_100935BE8();
          if (v48)
          {
            v53 = sub_100935C18();
            if (__OFSUB__(v82, v53))
            {
              goto LABEL_147;
            }

            v48 += v82 - v53;
          }

          v54 = sub_100935C08();
          v51 = v78;
          if (v54 < v78)
          {
            v51 = v54;
          }

          v5 = a3;
          v52 = __s1a;
          if (!__s1a)
          {
            goto LABEL_150;
          }

          v20 = v88;
          if (!v48)
          {
            goto LABEL_152;
          }

          goto LABEL_118;
        }

        v20 = v88;
        v52 = __s1a;
        *v96 = v94;
        v96[4] = v80;
        *&v96[5] = *(&v94 + 5);
        v96[7] = HIBYTE(v94);
        *&v96[8] = v93;
        *&v96[12] = WORD2(v93);
        if (!__s1a)
        {
          goto LABEL_149;
        }

LABEL_102:
        v59 = v96;
        v60 = v92;
LABEL_120:
        v65 = memcmp(v52, v59, v60);
        sub_1007156D8(v28, v29);
        v22 = v90;
        if (!v65)
        {
          goto LABEL_123;
        }

        goto LABEL_22;
      }

      v72 = *(v94 + 24);
      v74 = *(v94 + 16);
      v48 = sub_100935BE8();
      if (v48)
      {
        v57 = sub_100935C18();
        v58 = v74;
        if (__OFSUB__(v74, v57))
        {
          goto LABEL_146;
        }

        v48 += v74 - v57;
      }

      else
      {
        v58 = v74;
      }

      v63 = v72 - v58;
      if (__OFSUB__(v72, v58))
      {
        goto LABEL_143;
      }

      v64 = sub_100935C08();
      if (v64 >= v63)
      {
        v51 = v63;
      }

      else
      {
        v51 = v64;
      }

      v52 = __s1a;
      if (!__s1a)
      {
        goto LABEL_157;
      }

      v5 = a3;
      v20 = v88;
      if (!v48)
      {
        goto LABEL_156;
      }

LABEL_118:
      if (v52 == v48)
      {
        sub_1007156D8(v28, v29);
LABEL_123:
        v67 = v93;
        v66 = v94;
LABEL_124:
        sub_1007156D8(v66, v67);
        v68 = a1[v19];
        a1[v19] = v68 & ~v21;
        a5 = v81;
        if ((v68 & v21) == 0)
        {
          goto LABEL_4;
        }

        v7 = v76 - 1;
        if (__OFSUB__(v76, 1))
        {
          goto LABEL_148;
        }

        if (v76 == 1)
        {
          return &_swiftEmptySetSingleton;
        }

        goto LABEL_2;
      }

      v60 = v51;
      v59 = v48;
      goto LABEL_120;
    }

    if (v30 == 2)
    {
      break;
    }

    *&v96[6] = 0;
    *v96 = 0;
    sub_100715738(v28, v29);
    sub_10071C670(v96, v94, v93, &v95);
    if (v89)
    {
      goto LABEL_158;
    }

    sub_1007156D8(v28, v29);
    v22 = v90;
    if (v95)
    {
      goto LABEL_123;
    }

LABEL_22:
    v18 = (v18 + 1) & v22;
    v19 = v18 >> 6;
    v21 = 1 << v18;
    if ((*(v20 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
    {
      goto LABEL_3;
    }
  }

  v41 = *(v28 + 16);
  sub_100715738(v28, v29);
  v42 = sub_100935BE8();
  if (v42)
  {
    v43 = v42;
    v44 = sub_100935C18();
    if (__OFSUB__(v41, v44))
    {
      goto LABEL_138;
    }

    __s1 = (v41 - v44 + v43);
  }

  else
  {
    __s1 = 0;
  }

  sub_100935C08();
  v5 = a3;
  if (v23 == 2)
  {
    v71 = *(v94 + 24);
    v73 = *(v94 + 16);
    v48 = sub_100935BE8();
    if (v48)
    {
      v55 = sub_100935C18();
      v56 = v73;
      if (__OFSUB__(v73, v55))
      {
        goto LABEL_144;
      }

      v48 += v73 - v55;
    }

    else
    {
      v56 = v73;
    }

    v61 = v71 - v56;
    if (__OFSUB__(v71, v56))
    {
      goto LABEL_141;
    }

    v62 = sub_100935C08();
    if (v62 >= v61)
    {
      v51 = v61;
    }

    else
    {
      v51 = v62;
    }

    v52 = __s1;
    if (!__s1)
    {
      goto LABEL_154;
    }

    v5 = a3;
    v20 = v88;
    if (!v48)
    {
      goto LABEL_155;
    }

    goto LABEL_118;
  }

  if (v23 == 1)
  {
    if (v79 < v82)
    {
      goto LABEL_140;
    }

    v48 = sub_100935BE8();
    if (v48)
    {
      v49 = sub_100935C18();
      if (__OFSUB__(v82, v49))
      {
        goto LABEL_145;
      }

      v48 += v82 - v49;
    }

    v50 = sub_100935C08();
    v51 = v78;
    if (v50 < v78)
    {
      v51 = v50;
    }

    v5 = a3;
    v52 = __s1;
    if (!__s1)
    {
      goto LABEL_151;
    }

    v20 = v88;
    if (!v48)
    {
      goto LABEL_153;
    }

    goto LABEL_118;
  }

  v20 = v88;
  v52 = __s1;
  *v96 = v94;
  v96[4] = v80;
  *&v96[5] = *(&v94 + 5);
  v96[7] = HIBYTE(v94);
  *&v96[8] = v93;
  *&v96[12] = WORD2(v93);
  if (__s1)
  {
    goto LABEL_102;
  }

  __break(1u);
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
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:

  __break(1u);
  return result;
}

uint64_t sub_10078F164(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100706B30(&qword_100CB4FA0);
  result = sub_100937228();
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_100937668();
    sub_100715738(v17, v18);
    sub_100935EB8();
    result = sub_1009376C8();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
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

unint64_t sub_10078F38C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1009370D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = (*(v3 + 48) + 16 * v6);
        v11 = *v10;
        v12 = v10[1];
        sub_100937668();
        sub_100715738(v11, v12);
        sub_100935EB8();
        v13 = sub_1009376C8();
        sub_1007156D8(v11, v12);
        v14 = v13 & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 16 * v2);
          v17 = (v15 + 16 * v6);
          if (v2 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v2 = v6;
          }
        }

LABEL_5:
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10078F560(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10078F60C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100014C88(&unk_100CB5038, &qword_100CB5030);
          for (i = 0; i != v6; ++i)
          {
            sub_100706B30(&qword_100CB5030);
            v9 = sub_10078F9FC(v13, i, a3);
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
        sub_100014170(0, &qword_100CBA2E0);
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

uint64_t sub_10078F7C0(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100014C88(&unk_100CB4FE0, &qword_100CB4A38);
          for (i = 0; i != v6; ++i)
          {
            sub_100706B30(&qword_100CB4A38);
            v9 = sub_10078F974(v13, i, a3);
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
        sub_100014170(0, &qword_100CB4AD0);
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

void (*sub_10078F974(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10078F9F4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10078F9FC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
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
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100796BC0;
  }

  __break(1u);
  return result;
}

uint64_t sub_10078FA7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SenderKeyInfo(0);
  v33 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v31 = &v28 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    result = 0;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_1007927DC(*(a4 + 48) + a1 * (v22 | (v17 << 6)), v32, type metadata accessor for SenderKeyInfo);
      v24 = v23;
      v25 = v31;
      sub_100792048(v24, v31, type metadata accessor for SenderKeyInfo);
      sub_100792048(v25, a2, type metadata accessor for SenderKeyInfo);
      if (v19 == v30)
      {
        a1 = v29;
        a3 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      result = v19;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
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
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a3 = result;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_10078FCE0(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_10078FE38(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    v23 = v7;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v7 = 0;
    goto LABEL_32;
  }

  sub_100937118();
  sub_100014170(0, &qword_100CBA2E0);
  sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
  result = sub_100936E58();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v23 = v7;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v7 = 0;
    goto LABEL_32;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v7 = 0;
  v22 = v9;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_100937198())
      {
        goto LABEL_30;
      }

      sub_100014170(0, &qword_100CBA2E0);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v13 == a3)
    {
      v7 = a3;
      goto LABEL_30;
    }

    ++a2;
    v7 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v12 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v12;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
LABEL_32:
  *v23 = v4;
  v23[1] = v8;
  v23[2] = v9;
  v23[3] = v10;
  v23[4] = v11;
  return v7;
}

uint64_t sub_100790078(uint64_t a1, uint64_t a2)
{
  if ((sub_10071CAE8(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_10071CAE8(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SenderKeyInfo(0);
  if ((sub_100935FD8() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = a1 + v5;
  v7 = *(a1 + v5);
  v8 = *(a1 + v5 + 8);
  v9 = *(a1 + v5 + 16);
  v10 = *(v6 + 24);
  v11 = (a2 + v5);
  v12 = v11[2];
  v13 = v11[3];
  v14 = v7 == *v11 && v8 == v11[1];
  if (!v14 && (sub_100937598() & 1) == 0)
  {
    return 0;
  }

  if (v9 == v12 && v10 == v13)
  {
    return 1;
  }

  return sub_100937598();
}

uint64_t sub_100790168(void *a1, void *a2, void *a3, void *a4)
{
  v7 = [a1 prefixedURI];
  v8 = sub_100936B38();
  v10 = v9;

  v11 = [a3 prefixedURI];
  v12 = sub_100936B38();
  v14 = v13;

  if (v8 == v12 && v10 == v14)
  {
  }

  else
  {
    v16 = sub_100937598();

    v17 = 0;
    if ((v16 & 1) == 0)
    {
      return v17 & 1;
    }
  }

  v18 = [a2 prefixedURI];
  v19 = sub_100936B38();
  v21 = v20;

  v22 = [a4 prefixedURI];
  v23 = sub_100936B38();
  v25 = v24;

  if (v19 == v23 && v21 == v25)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_100937598();
  }

  return v17 & 1;
}

uint64_t sub_1007902E4(uint64_t a1, uint64_t a2)
{
  if ((sub_10071CAE8(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_10071CAE8(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SenderKeyInfo(0);
  if ((sub_100935FD8() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = *(a1 + v5 + 16);
  v9 = *(a1 + v5 + 24);
  v10 = (a2 + v5);
  v11 = v10[2];
  v12 = v10[3];
  v13 = v6 == *v10 && v7 == v10[1];
  if (!v13 && (sub_100937598() & 1) == 0)
  {
    return 0;
  }

  v14 = v8 == v11 && v9 == v12;
  if (!v14 && (sub_100937598() & 1) == 0)
  {
    return 0;
  }

  v15 = *(type metadata accessor for SenderKeyAndState(0) + 20);
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *v18;
  v20 = v18[1];

  return sub_10071CAE8(v16, v17, v19, v20);
}

double sub_1007903FC()
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
  if (!*(&v7 + 1))
  {
    sub_100013814(v8, &qword_100CB4A90);
    return 432000.0;
  }

  sub_100014170(0, &unk_100CBA300);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 432000.0;
  }

  v3 = [v5 integerValue];

  result = v3;
  if (v3 > 864000.0)
  {
    return 864000.0;
  }

  return result;
}

id sub_100790560(void *a1)
{
  result = [a1 prefixedURI];
  if (result)
  {
    v3 = result;
    if (([result _appearsToBeDSID] & 1) != 0 || objc_msgSend(v3, "_appearsToBePseudonymID") || objc_msgSend(v3, "_appearsToBeTemporaryID"))
    {

      return 0;
    }

    else
    {
      v4 = [a1 tokenFreeURI];

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100790608(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100706B30(&qword_100CB5028);
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

unint64_t sub_100790700(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100706B30(&unk_100CB4FB0);
    v3 = sub_100937438();

    for (i = (a1 + 48); ; i += 3)
    {
      v13 = *(i - 1);
      v5 = *i;
      v6 = v13;
      v7 = *(&v13 + 1);

      result = sub_1007885EC(v6, v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 16 * result) = v13;
      *(v3[7] + 8 * result) = v5;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100790844(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  v13 = v10[2];
  v14 = v10[4];
  v125 = v10[5];
  v15 = a1;

  v16 = sub_1009364B8();
  v17 = sub_100936F18();

  v126 = v14;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    *__s1 = v138;
    *v18 = 136315906;
    swift_beginAccess();
    sub_100014170(0, &qword_100CBA2E0);

    v19 = sub_100936CF8();
    v21 = v20;

    v22 = sub_10001273C(v19, v21, __s1);
    v14 = v126;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v15;
    *v135 = a1;
    *(v18 + 22) = 1024;
    *(v18 + 24) = a6 & 1;
    *(v18 + 28) = 1024;
    *(v18 + 30) = a9 & 1;
    v23 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "Finished query for uris %s fromURI: %@ { success: %{BOOL}d offline: %{BOOL}d }", v18, 0x22u);
    sub_100013814(v135, &qword_100CB36B0);

    sub_100012970(v138);
  }

  if (!a10)
  {
    goto LABEL_178;
  }

  v24 = a10 + 64;
  v25 = 1 << *(a10 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(a10 + 64);
  v127 = (v25 + 63) >> 6;
  v133 = IDSRegistrationPropertySupportsSenderKey;

  v29 = 0;
  v132 = v13;
  while (1)
  {
    if (v27)
    {
      goto LABEL_14;
    }

    do
    {
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_181;
      }

      if (v32 >= v127)
      {

LABEL_178:
        swift_beginAccess();

        v125(v118);
      }

      v27 = *(v24 + 8 * v32);
      ++v29;
    }

    while (!v27);
    v29 = v32;
LABEL_14:
    v128 = v29;
    v33 = (v29 << 9) | (8 * __clz(__rbit64(v27)));
    v34 = *(*(v28 + 48) + v33);
    v35 = *(*(v28 + 56) + v33);
    v146 = &_swiftEmptyArrayStorage;
    v36 = v35 >> 62 ? sub_1009373F8() : *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v37 = v34;

    v129 = v37;
    if (v36)
    {
      break;
    }

    v30 = &_swiftEmptyArrayStorage;
LABEL_8:
    v27 &= v27 - 1;

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    __s2 = *(v14 + 16);
    *(v14 + 16) = 0x8000000000000000;
    sub_1007891C8(v30, v129, isUniquelyReferenced_nonNull_native);

    *(v14 + 16) = __s2;
    swift_endAccess();
    v28 = a10;
    v29 = v128;
    v24 = a10 + 64;
  }

  v137 = v35 & 0xFFFFFFFFFFFFFF8;
  v139 = v35 & 0xC000000000000001;
  v38 = 4;
  v131 = v27;
  v136 = v36;
  while (1)
  {
    v39 = v38 - 4;
    if (v139)
    {
      v40 = sub_100937268();
    }

    else
    {
      if (v39 >= *(v137 + 16))
      {
        goto LABEL_180;
      }

      v40 = *(v35 + 8 * v38);
    }

    v41 = v40;
    v42 = v38 - 3;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    v43 = (*((swift_isaMask & *v13) + 0xE0))();
    if (v44 >> 60 != 15)
    {
      v45 = v43;
      v46 = v44;
      v47 = v35;
      v48 = [v41 capabilities];
      v49 = [v48 valueForCapability:v133];

      if (v49 <= 0)
      {

        sub_10001C370(v45, v46);
        v35 = v47;
        v13 = v132;
        goto LABEL_19;
      }

      v50 = [v41 pushToken];
      v51 = sub_100935EA8();
      v53 = v52;

      v54 = v53;
      v55 = v53 >> 62;
      v56 = v46 >> 62;
      v57 = v53 >> 62 == 3;
      v35 = v47;
      v134 = v51;
      if (v57)
      {
        v57 = v46 >> 62 == 3 && v51 == 0;
        if (!v57 || v54 != 0xC000000000000000)
        {
          v59 = 0;
          v60 = v45;
          if (v56 > 1)
          {
            goto LABEL_36;
          }

          goto LABEL_53;
        }

        if (v45)
        {
          v65 = 0;
        }

        else
        {
          v65 = v46 == 0xC000000000000000;
        }

        if (v65)
        {

          sub_10001C370(0, 0xC000000000000000);
          v74 = 0;
          v75 = 0xC000000000000000;
          goto LABEL_82;
        }

        v60 = v45;
      }

      else
      {
        if (v55 <= 1)
        {
          v60 = v45;
          if (!v55)
          {
            v59 = BYTE6(v54);
            if (v56 > 1)
            {
              goto LABEL_36;
            }

LABEL_53:
            if (!v56)
            {
              v64 = BYTE6(v46);
              goto LABEL_55;
            }

            if (__OFSUB__(HIDWORD(v60), v60))
            {
              goto LABEL_183;
            }

            if (v59 != HIDWORD(v60) - v60)
            {
              goto LABEL_75;
            }

LABEL_63:
            if (v59 < 1)
            {
LABEL_77:

              sub_10001C370(v60, v46);
              v74 = v134;
              v75 = v54;
LABEL_82:
              sub_1007156D8(v74, v75);
              v27 = v131;
              v13 = v132;
              goto LABEL_19;
            }

            if (v55 > 1)
            {
              if (v55 == 2)
              {
                v76 = *(v134 + 16);
                v77 = sub_100935BE8();
                v130 = v54;
                if (v77)
                {
                  v121 = v76;
                  v78 = v77;
                  v79 = sub_100935C18();
                  if (__OFSUB__(v121, v79))
                  {
                    goto LABEL_187;
                  }

                  v80 = (v121 - v79 + v78);
                }

                else
                {
                  v80 = 0;
                }

                result = sub_100935C08();
                if (v56 != 2)
                {
                  v35 = v47;
                  if (v56 != 1)
                  {
                    v13 = v132;
                    *__s1 = v60;
                    *&__s1[8] = v46;
                    __s1[10] = BYTE2(v46);
                    __s1[11] = BYTE3(v46);
                    __s1[12] = BYTE4(v46);
                    __s1[13] = BYTE5(v46);
                    v27 = v131;
                    if (!v80)
                    {
                      goto LABEL_214;
                    }

                    goto LABEL_159;
                  }

                  v13 = v132;
                  if (v60 >> 32 < v60)
                  {
                    goto LABEL_191;
                  }

                  v94 = sub_100935BE8();
                  if (v94)
                  {
                    v119 = v80;
                    v95 = v94;
                    v96 = sub_100935C18();
                    if (__OFSUB__(v60, v96))
                    {
                      goto LABEL_203;
                    }

                    v71 = (v60 - v96 + v95);
                    v80 = v119;
                  }

                  else
                  {
                    v71 = 0;
                  }

                  result = sub_100935C08();
                  v112 = (v60 >> 32) - v60;
                  if (result < v112)
                  {
                    v112 = result;
                  }

                  if (!v80)
                  {
                    goto LABEL_216;
                  }

                  if (!v71)
                  {
                    goto LABEL_215;
                  }

LABEL_172:
                  if (v80 == v71)
                  {
LABEL_173:

                    sub_1007156D8(v134, v130);
                    sub_10001C370(v60, v46);
                    v27 = v131;
                    goto LABEL_19;
                  }

LABEL_155:
                  v73 = v112;
                  v107 = v80;
                  goto LABEL_156;
                }

                v108 = *(v60 + 16);
                v123 = *(v60 + 24);
                v71 = sub_100935BE8();
                if (v71)
                {
                  v109 = sub_100935C18();
                  if (__OFSUB__(v108, v109))
                  {
                    goto LABEL_201;
                  }

                  v71 += v108 - v109;
                }

                v63 = __OFSUB__(v123, v108);
                v110 = v123 - v108;
                if (v63)
                {
                  goto LABEL_196;
                }

                v111 = sub_100935C08();
                if (v111 >= v110)
                {
                  v112 = v110;
                }

                else
                {
                  v112 = v111;
                }

                if (!v80)
                {
                  goto LABEL_209;
                }

                if (!v71)
                {
                  goto LABEL_207;
                }

LABEL_154:
                v35 = v47;
                v13 = v132;
                if (v80 == v71)
                {
                  goto LABEL_173;
                }

                goto LABEL_155;
              }

              *&__s1[6] = 0;
              *__s1 = 0;
              if (!v56)
              {
                goto LABEL_99;
              }

              v130 = v54;
              if (v56 != 2)
              {
                v13 = v132;
                if (v60 >> 32 < v60)
                {
                  goto LABEL_190;
                }

                v104 = sub_100935BE8();
                if (!v104)
                {
                  goto LABEL_212;
                }

                v105 = v104;
                v106 = sub_100935C18();
                if (__OFSUB__(v60, v106))
                {
                  goto LABEL_195;
                }

                v71 = (v60 - v106 + v105);
                result = sub_100935C08();
                if (!v71)
                {
                  goto LABEL_213;
                }

                if (result >= (v60 >> 32) - v60)
                {
                  v73 = (v60 >> 32) - v60;
                }

                else
                {
                  v73 = result;
                }

LABEL_132:
                v107 = __s1;
LABEL_156:
                v116 = memcmp(v107, v71, v73);
                sub_1007156D8(v134, v130);
                sub_10001C370(v60, v46);
                v27 = v131;
                if (v116)
                {
                  goto LABEL_76;
                }

                goto LABEL_18;
              }

              v84 = *(v60 + 16);
              v85 = *(v60 + 24);
              v86 = sub_100935BE8();
              if (v86)
              {
                v87 = sub_100935C18();
                if (__OFSUB__(v84, v87))
                {
                  goto LABEL_200;
                }

                v86 += v84 - v87;
              }

              v63 = __OFSUB__(v85, v84);
              v88 = v85 - v84;
              if (v63)
              {
                goto LABEL_192;
              }

              v89 = sub_100935C08();
              if (!v86)
              {
                goto LABEL_211;
              }

LABEL_119:
              if (v89 >= v88)
              {
                v103 = v88;
              }

              else
              {
                v103 = v89;
              }

              v92 = memcmp(__s1, v86, v103);
              sub_1007156D8(v134, v130);
              sub_10001C370(v60, v46);
              v27 = v131;
              v35 = v47;
            }

            else
            {
              if (v55)
              {
                if (v134 > v134 >> 32)
                {
                  goto LABEL_186;
                }

                v81 = sub_100935BE8();
                v130 = v54;
                if (v81)
                {
                  v122 = v60;
                  v82 = v81;
                  v83 = sub_100935C18();
                  if (__OFSUB__(v134, v83))
                  {
                    goto LABEL_188;
                  }

                  v80 = (v134 - v83 + v82);
                  v60 = v122;
                }

                else
                {
                  v80 = 0;
                }

                sub_100935C08();
                if (v56 != 2)
                {
                  v35 = v47;
                  if (v56 != 1)
                  {
                    v13 = v132;
                    *__s1 = v60;
                    *&__s1[8] = v46;
                    __s1[10] = BYTE2(v46);
                    __s1[11] = BYTE3(v46);
                    __s1[12] = BYTE4(v46);
                    __s1[13] = BYTE5(v46);
                    v27 = v131;
                    if (!v80)
                    {
                      goto LABEL_210;
                    }

LABEL_159:
                    v117 = memcmp(v80, __s1, BYTE6(v46));
                    sub_1007156D8(v134, v130);
                    sub_10001C370(v60, v46);
                    if (v117)
                    {
                      goto LABEL_76;
                    }

                    goto LABEL_18;
                  }

                  v13 = v132;
                  if (v60 >> 32 < v60)
                  {
                    goto LABEL_197;
                  }

                  v97 = sub_100935BE8();
                  if (v97)
                  {
                    v120 = v80;
                    v98 = v97;
                    v99 = sub_100935C18();
                    if (__OFSUB__(v60, v99))
                    {
                      goto LABEL_204;
                    }

                    v71 = (v60 - v99 + v98);
                    v80 = v120;
                  }

                  else
                  {
                    v71 = 0;
                  }

                  result = sub_100935C08();
                  v112 = (v60 >> 32) - v60;
                  if (result < v112)
                  {
                    v112 = result;
                  }

                  if (!v80)
                  {
                    goto LABEL_217;
                  }

                  if (!v71)
                  {
                    goto LABEL_220;
                  }

                  goto LABEL_172;
                }

                v113 = *(v60 + 16);
                v124 = *(v60 + 24);
                v71 = sub_100935BE8();
                if (v71)
                {
                  v114 = sub_100935C18();
                  if (__OFSUB__(v113, v114))
                  {
                    goto LABEL_202;
                  }

                  v71 += v113 - v114;
                }

                v63 = __OFSUB__(v124, v113);
                v115 = v124 - v113;
                if (v63)
                {
                  goto LABEL_198;
                }

                result = sub_100935C08();
                if (result >= v115)
                {
                  v112 = v115;
                }

                else
                {
                  v112 = result;
                }

                if (!v80)
                {
                  goto LABEL_219;
                }

                if (!v71)
                {
                  goto LABEL_218;
                }

                goto LABEL_154;
              }

              *__s1 = v134;
              *&__s1[8] = v54;
              __s1[10] = BYTE2(v54);
              __s1[11] = BYTE3(v54);
              __s1[12] = BYTE4(v54);
              __s1[13] = BYTE5(v54);
              if (v56)
              {
                v130 = v54;
                if (v56 == 1)
                {
                  if (v60 >> 32 < v60)
                  {
                    goto LABEL_189;
                  }

                  v68 = sub_100935BE8();
                  if (!v68)
                  {
                    goto LABEL_205;
                  }

                  v69 = v68;
                  v70 = sub_100935C18();
                  v13 = v132;
                  if (__OFSUB__(v60, v70))
                  {
                    goto LABEL_194;
                  }

                  v71 = (v60 - v70 + v69);
                  v72 = sub_100935C08();
                  if (!v71)
                  {
                    goto LABEL_206;
                  }

                  if (v72 >= (v60 >> 32) - v60)
                  {
                    v73 = (v60 >> 32) - v60;
                  }

                  else
                  {
                    v73 = v72;
                  }

                  goto LABEL_132;
                }

                v100 = *(v60 + 16);
                v101 = *(v60 + 24);
                v86 = sub_100935BE8();
                if (v86)
                {
                  v102 = sub_100935C18();
                  if (__OFSUB__(v100, v102))
                  {
                    goto LABEL_199;
                  }

                  v86 += v100 - v102;
                }

                v63 = __OFSUB__(v101, v100);
                v88 = v101 - v100;
                if (v63)
                {
                  goto LABEL_193;
                }

                v89 = sub_100935C08();
                if (!v86)
                {
                  goto LABEL_208;
                }

                goto LABEL_119;
              }

LABEL_99:
              __s2 = v60;
              v141 = v46;
              v142 = BYTE2(v46);
              v143 = BYTE3(v46);
              v144 = BYTE4(v46);
              v145 = BYTE5(v46);
              v90 = memcmp(__s1, &__s2, BYTE6(v46));
              v91 = v54;
              v92 = v90;
              sub_1007156D8(v134, v91);
              sub_10001C370(v60, v46);
              v27 = v131;
            }

            v13 = v132;
            if (v92)
            {
              goto LABEL_76;
            }

            goto LABEL_18;
          }

          LODWORD(v59) = HIDWORD(v134) - v134;
          if (__OFSUB__(HIDWORD(v134), v134))
          {
            goto LABEL_184;
          }

          v59 = v59;
          if (v56 <= 1)
          {
            goto LABEL_53;
          }

LABEL_36:
          if (v56 != 2)
          {
            if (!v59)
            {
              goto LABEL_77;
            }

LABEL_75:
            sub_10001C370(v60, v46);
            sub_1007156D8(v134, v54);
            v27 = v131;
            v13 = v132;
LABEL_76:
            sub_100937298();
            sub_1009372C8();
            sub_1009372D8();
            sub_1009372A8();
            goto LABEL_19;
          }

          v62 = *(v60 + 16);
          v61 = *(v60 + 24);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          if (v63)
          {
            goto LABEL_182;
          }

LABEL_55:
          if (v59 != v64)
          {
            goto LABEL_75;
          }

          goto LABEL_63;
        }

        v60 = v45;
        if (v55 == 2)
        {
          v67 = *(v134 + 16);
          v66 = *(v134 + 24);
          v63 = __OFSUB__(v66, v67);
          v59 = v66 - v67;
          if (v63)
          {
            goto LABEL_185;
          }

          if (v56 <= 1)
          {
            goto LABEL_53;
          }

          goto LABEL_36;
        }
      }

      v59 = 0;
      if (v56 > 1)
      {
        goto LABEL_36;
      }

      goto LABEL_53;
    }

LABEL_18:

LABEL_19:
    ++v38;
    if (v42 == v136)
    {
      v30 = v146;
      v14 = v126;
      goto LABEL_8;
    }
  }

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
LABEL_189:
  __break(1u);
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
LABEL_205:
  sub_100935C08();
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  result = sub_100935C08();
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
  return result;
}

uint64_t sub_100791640()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v18 = *(v1 + 32);
  v19 = *(v1 + 24);
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v8 = *(v1 + 72);
  v7 = *(v1 + 80);
  v9 = *(v1 + 88);
  v17 = (*((swift_isaMask & *v2) + 0xC8))();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *(v12 + 32) = v4;
  *(v12 + 40) = v2;
  *(v12 + 48) = v3;
  *(v12 + 56) = v5;
  *(v12 + 64) = v7;
  *(v12 + 72) = v9;
  v13 = *((swift_isaMask & *v2) + 0x1F0);

  v14 = v4;
  v15 = v2;

  v13(v19, v18, v14, v17, v11, v3, v5, sub_100796BF0, v12);
}

unint64_t sub_1007917EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100706B30(&unk_100CB5000);
    v3 = sub_100937438();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000136E4(v5, v6);
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

uint64_t sub_1007918F0(uint64_t a1)
{
  v2 = type metadata accessor for SenderKeyInfo(0) - 8;
  v3 = __chkstk_darwin(v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v3);
  v9 = &v13 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    do
    {
      sub_1007927DC(v11, v5, type metadata accessor for SenderKeyInfo);
      sub_100789ED0(v9, v5);
      result = sub_100791FE8(v9, type metadata accessor for SenderKeyInfo);
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_100791A24(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10079609C();
  result = sub_100936E38();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_100715738(v6, *v4);
      sub_100789A48(v7, v6, v5);
      sub_1007156D8(v7[0], v7[1]);
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100791AC0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_100935BE8();
  v8 = result;
  if (result)
  {
    result = sub_100935C18();
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

  result = sub_100935C08();
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

uint64_t sub_100791B78(uint64_t a1)
{
  v2 = type metadata accessor for SenderKeyInfo(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100935B88();
  swift_allocObject();
  v6 = sub_100935B78();
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    v10 = &_swiftEmptyArrayStorage;
    v35[1] = v2;
    v35[2] = v6;
    do
    {
      sub_1007927DC(v8, v5, type metadata accessor for SenderKeyInfo);
      sub_1007924D8(&qword_100CB4B18, type metadata accessor for SenderKeyInfo);
      v11 = sub_100935B68();
      v13 = v12;
      sub_100791FE8(v5, type metadata accessor for SenderKeyInfo);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100787FB8(0, *(v10 + 2) + 1, 1, v10);
      }

      v15 = *(v10 + 2);
      v14 = *(v10 + 3);
      if (v15 >= v14 >> 1)
      {
        v10 = sub_100787FB8((v14 > 1), v15 + 1, 1, v10);
      }

      *(v10 + 2) = v15 + 1;
      v16 = &v10[16 * v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v13;
      v8 += v9;
      --v7;
    }

    while (v7);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v17 = *(v10 + 2);
  if (v17)
  {
    v36[0] = &_swiftEmptyArrayStorage;
    sub_10071DE64(0, v17, 0);
    v18 = v36[0];
    v19 = (v10 + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      sub_100715738(v20, *v19);
      v22 = sub_100935E88(0);
      v24 = v23;
      sub_1007156D8(v20, v21);
      v36[0] = v18;
      v26 = v18[2];
      v25 = v18[3];
      if (v26 >= v25 >> 1)
      {
        sub_10071DE64((v25 > 1), v26 + 1, 1);
        v18 = v36[0];
      }

      v19 += 2;
      v18[2] = v26 + 1;
      v27 = &v18[2 * v26];
      v27[4] = v22;
      v27[5] = v24;
      --v17;
    }

    while (v17);
  }

  v28 = objc_opt_self();
  isa = sub_100936CD8().super.isa;

  v36[0] = 0;
  v30 = [v28 dataWithJSONObject:isa options:0 error:v36];

  v31 = v36[0];
  if (v30)
  {
    v32 = sub_100935EA8();
  }

  else
  {
    v33 = v31;
    sub_100935D78();

    swift_willThrow();

    return 0;
  }

  return v32;
}

uint64_t sub_100791FE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100792048(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1007920B0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v38 = v5;
    v39 = v4;
    v40 = v6;
    v9 = v1;
    v10 = v2;
    v11 = sub_1009364B8();
    v12 = sub_100936F18();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412546;
      *(v13 + 4) = v9;
      *(v13 + 12) = 2112;
      *(v13 + 14) = v10;
      *v14 = v9;
      v14[1] = v10;
      v15 = v9;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "Dispatching existing recovery work item for toURI: %@ fromURI: %@", v13, 0x16u);
      sub_100706B30(&qword_100CB36B0);
      swift_arrayDestroy();
    }

    v37 = v10;

    v17 = 0;
    v18 = *(v3 + 16);
    v19 = v3 + 40;
    v20 = &_swiftEmptyArrayStorage;
    v36 = v3 + 40;
LABEL_5:
    v21 = v19 + 16 * v17;
    while (1)
    {
      if (v18 == v17)
      {
        (*((swift_isaMask & *v8) + 0x290))(v20, v37, v9);

        sub_100706B30(&qword_100CB4A30);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1009AD920;
        *(v29 + 32) = v9;
        v30 = *(v38 + 16) != 0;
        v31 = swift_allocObject();
        v31[2] = v8;
        v31[3] = v9;
        v31[4] = v37;
        v32 = *((swift_isaMask & *v8) + 0x200);
        v33 = v9;
        v34 = v37;
        v35 = v8;
        v32(v29, v34, 0x766F63655279654BLL, 0xEB00000000797265, v30, v38, sub_100796BEC, v31);

        swift_beginAccess();
        sub_100775020(0, v39, v40);
        swift_endAccess();

        return;
      }

      if (v17 >= v18)
      {
        break;
      }

      v22 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_18;
      }

      v23 = sub_100935E28();
      v25 = v24;

      v21 += 16;
      ++v17;
      if (v25 >> 60 != 15)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100787FB8(0, *(v20 + 2) + 1, 1, v20);
        }

        v27 = *(v20 + 2);
        v26 = *(v20 + 3);
        if (v27 >= v26 >> 1)
        {
          v20 = sub_100787FB8((v26 > 1), v27 + 1, 1, v20);
        }

        *(v20 + 2) = v27 + 1;
        v28 = &v20[16 * v27];
        *(v28 + 4) = v23;
        *(v28 + 5) = v25;
        v17 = v22;
        v19 = v36;
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }
}

uint64_t sub_1007924D8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100792520()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v21 = v4;
    v7 = v1;
    v8 = v2;
    v9 = sub_1009364B8();
    v10 = sub_100936F18();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412546;
      *(v11 + 4) = v7;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v7;
      v12[1] = v8;
      v13 = v7;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "Dispatching existing device update work item for remoteURI: %@ localURI: %@", v11, 0x16u);
      sub_100706B30(&qword_100CB36B0);
      swift_arrayDestroy();
    }

    sub_100706B30(&qword_100CB4A30);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1009AD920;
    *(v15 + 32) = v7;
    v16 = swift_allocObject();
    v16[2] = v6;
    v16[3] = v7;
    v16[4] = v8;
    v17 = *((swift_isaMask & *v6) + 0x1F8);
    v18 = v7;
    v19 = v8;
    v20 = v6;
    v17(v15, v19, 0xD000000000000012, 0x8000000100B011A0, sub_1007960F0, v16);

    swift_beginAccess();
    sub_100775020(0, v3, v21);
    swift_endAccess();
  }
}

uint64_t sub_1007927DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100792844()
{
  result = qword_100CB4AD8;
  if (!qword_100CB4AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4AD8);
  }

  return result;
}

unint64_t sub_100792898()
{
  result = qword_100CB4AE0;
  if (!qword_100CB4AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4AE0);
  }

  return result;
}

void sub_1007928EC(char a1)
{
  v3 = *(v1 + 32);

  v4 = v3;
  oslog = sub_1009364B8();
  v5 = sub_100936F18();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v6 = 136315650;
    sub_100014170(0, &qword_100CBA2E0);
    v9 = sub_100936CF8();
    v11 = sub_10001273C(v9, v10, &v14);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    *(v6 + 14) = v4;
    *v7 = v4;
    *(v6 + 22) = 1024;
    *(v6 + 24) = a1 & 1;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Did roll and send new sender key to donated handle { URI: %s fromURI: %@} with success %{BOOL}d }", v6, 0x1Cu);
    sub_100013814(v7, &qword_100CB36B0);

    sub_100012970(v8);
  }
}

void sub_100792AA8(unint64_t a1, void *a2, void *a3, const void *a4)
{
  v135 = a3;
  v136 = a2;
  v6 = sub_100706B30(&unk_100CB4A50);
  __chkstk_darwin(v6 - 8);
  v8 = &v120[-v7];
  v133 = type metadata accessor for SenderKeyAndState(0);
  v125 = *(v133 - 8);
  __chkstk_darwin(v133);
  v10 = &v120[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v126 = swift_allocObject();
  v129 = a4;
  *(v126 + 16) = a4;
  v138 = &_swiftEmptyArrayStorage;
  v11 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_140:
    v12 = sub_1009373F8();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  _Block_copy(v129);
  v134 = v8;
  v130 = v10;
  if (!v12)
  {
    v8 = &_swiftEmptyArrayStorage;
    goto LABEL_25;
  }

  v13 = 0;
  v8 = &_swiftEmptyArrayStorage;
  v10 = a1 & 0xC000000000000001;
  do
  {
    v14 = v13;
    while (1)
    {
      if (v10)
      {
        v15 = sub_100937268();
      }

      else
      {
        if (v14 >= *(v11 + 16))
        {
          goto LABEL_133;
        }

        v15 = *(a1 + 8 * v14 + 32);
      }

      v16 = v15;
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_133:
        __break(1u);
        goto LABEL_134;
      }

      v17 = [v15 prefixedURI];
      if (!v17)
      {
        goto LABEL_156;
      }

      v18 = v17;
      if (([v17 _appearsToBeDSID] & 1) == 0 && (objc_msgSend(v18, "_appearsToBePseudonymID") & 1) == 0 && (objc_msgSend(v18, "_appearsToBeTemporaryID") & 1) == 0)
      {
        break;
      }

LABEL_7:
      ++v14;
      if (v13 == v12)
      {
        goto LABEL_25;
      }
    }

    v19 = [v16 tokenFreeURI];

    if (!v19)
    {
      goto LABEL_7;
    }

    sub_100936CC8();
    if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100936D18();
    }

    sub_100936D38();
    v8 = v138;
  }

  while (v13 != v12);
LABEL_25:
  v20 = sub_100746E48(v8);

  a1 = sub_100788910(v20);

  v138 = &_swiftEmptyArrayStorage;
  if ((a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
  {
    v21 = sub_1009373F8();
  }

  else
  {
    v21 = *(a1 + 16);
  }

  v22 = &_swiftEmptyArrayStorage;
  if (v21)
  {
    v23 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v24 = sub_100937268();
      }

      else
      {
        if (v23 >= *(a1 + 16))
        {
          goto LABEL_135;
        }

        v24 = *(a1 + 8 * v23 + 32);
      }

      v25 = v24;
      v10 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      v8 = sub_100014170(0, &qword_100CBA2E0);
      if (sub_100937038())
      {
      }

      else
      {
        v8 = &v138;
        sub_100937298();
        v11 = *(v138 + 16);
        sub_1009372C8();
        sub_1009372D8();
        sub_1009372A8();
      }

      ++v23;
      if (v10 == v21)
      {
        v22 = v138;
        goto LABEL_40;
      }
    }

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
    goto LABEL_140;
  }

LABEL_40:

  v26 = sub_100790560(v136);
  if (!v26)
  {
    goto LABEL_144;
  }

  v27 = v26;
  if ((v22 & 0x8000000000000000) == 0 && (v22 & 0x4000000000000000) == 0)
  {
    v28 = *(v22 + 16);
    v29 = v135;
    if (v28)
    {
      goto LABEL_44;
    }

LABEL_143:

LABEL_144:

    (*(v129 + 2))(v129, 0);

    return;
  }

  v28 = sub_1009373F8();
  v29 = v135;
  if (!v28)
  {
    goto LABEL_143;
  }

LABEL_44:
  v132 = v28;
  v10 = &swift_isaMask;
  v131 = (*((swift_isaMask & *v29) + 0x1D8))();
  sub_100706B30(&qword_100CB4A30);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1009AD920;
  *(v30 + 32) = v27;
  v11 = sub_100014170(0, &qword_100CBA2E0);
  v123 = v27;
  v31 = v27;
  isa = sub_100936CD8().super.isa;

  (*((swift_isaMask & *v29) + 0xC8))(v33);
  v34 = sub_100936B28();

  sub_100706B30(&unk_100CBA2F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1009AC700;
  *(inited + 32) = sub_100936B38();
  *(inited + 40) = v36;
  v37 = objc_allocWithZone(NSNumber);
  v38 = v31;
  *(inited + 48) = [v37 initWithInteger:1];
  sub_1007917EC(inited);
  swift_setDeallocating();
  sub_100013814(inited + 32, &unk_100CB4A60);
  sub_100014170(0, &unk_100CBA300);
  v39 = sub_100936A58().super.isa;
  v40 = v131;

  v41 = [v40 endpointsForURIs:isa service:v34 fromURI:v38 withCapabilities:v39];

  v136 = v38;
  if (!v41)
  {
    goto LABEL_157;
  }

  swift_unknownObjectRelease();
  sub_100706B30(&qword_100CB4A38);
  sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
  v8 = sub_100936A78();

  v42 = v8[2];
  v43 = v135;
  a1 = &swift_isaMask;
  v122 = v11;
  if (v42 && (v44 = sub_1007417B0(v136), (v45 & 1) != 0))
  {
    v10 = *(v8[7] + 8 * v44);

    v138 = &_swiftEmptyArrayStorage;
    if (v10 >> 62)
    {
      goto LABEL_149;
    }

    v8 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      while (2)
      {
        v46 = 0;
        v124 = 0;
        v131 = v10 & 0xC000000000000001;
        v128 = (v10 & 0xFFFFFFFFFFFFFF8);
        v127 = v10;
        while (1)
        {
          if (v131)
          {
            v47 = sub_100937268();
          }

          else
          {
            if (v46 >= v128[2])
            {
              goto LABEL_139;
            }

            v47 = *(v10 + 8 * v46 + 32);
          }

          v48 = v47;
          v11 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            goto LABEL_138;
          }

          v10 = v8;
          v49 = [v47 pushToken];
          v50 = sub_100935EA8();
          v52 = v51;

          v53 = (*((swift_isaMask & *v43) + 0xE0))();
          if (v52 >> 60 != 15)
          {
            break;
          }

          if (v54 >> 60 != 15)
          {
            goto LABEL_60;
          }

          sub_10001C370(v50, v52);
LABEL_51:
          v8 = v10;
          v10 = v127;
          ++v46;
          if (v11 == v8)
          {
            v72 = v138;
            goto LABEL_151;
          }
        }

        if (v54 >> 60 == 15)
        {
LABEL_60:
          v55 = v53;
          v56 = v54;
          sub_10001C370(v50, v52);
          v57 = v55;
          v58 = v56;
          goto LABEL_61;
        }

        v59 = v52 >> 62;
        v60 = v54 >> 62;
        if (v52 >> 62 == 3)
        {
          v61 = 0;
          if (!v50 && v52 == 0xC000000000000000 && v54 >> 62 == 3)
          {
            if (v53)
            {
              v62 = 0;
            }

            else
            {
              v62 = v54 == 0xC000000000000000;
            }

            if (!v62)
            {
              v61 = 0;
              goto LABEL_79;
            }

            v53 = 0;
            v54 = 0xC000000000000000;
LABEL_95:
            sub_10001C370(v53, v54);
            sub_10001C370(v50, v52);
LABEL_96:

LABEL_63:
            v43 = v135;
            a1 = &swift_isaMask;
            goto LABEL_51;
          }
        }

        else if (v59)
        {
          if (v59 == 1)
          {
            LODWORD(v61) = HIDWORD(v50) - v50;
            if (__OFSUB__(HIDWORD(v50), v50))
            {
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              _Block_release(v129);
              __break(1u);
LABEL_157:
              _Block_release(v129);
              __break(1u);
              return;
            }

            v61 = v61;
          }

          else
          {
            v64 = *(v50 + 16);
            v63 = *(v50 + 24);
            v65 = __OFSUB__(v63, v64);
            v61 = v63 - v64;
            if (v65)
            {
              goto LABEL_155;
            }
          }
        }

        else
        {
          v61 = BYTE6(v52);
        }

LABEL_79:
        if (v60 > 1)
        {
          if (v60 == 2)
          {
            v67 = *(v53 + 16);
            v66 = *(v53 + 24);
            v65 = __OFSUB__(v66, v67);
            v68 = v66 - v67;
            if (v65)
            {
              goto LABEL_148;
            }

            if (v61 != v68)
            {
              goto LABEL_93;
            }

            goto LABEL_89;
          }

          if (!v61)
          {
            goto LABEL_95;
          }

LABEL_93:
          sub_10001C370(v53, v54);
          v57 = v50;
          v58 = v52;
LABEL_61:
          sub_10001C370(v57, v58);
        }

        else
        {
          if (v60)
          {
            if (__OFSUB__(HIDWORD(v53), v53))
            {
              __break(1u);
LABEL_148:
              __break(1u);
LABEL_149:
              v8 = sub_1009373F8();
              if (!v8)
              {
                goto LABEL_150;
              }

              continue;
            }

            if (v61 != HIDWORD(v53) - v53)
            {
              goto LABEL_93;
            }
          }

          else if (v61 != BYTE6(v54))
          {
            goto LABEL_93;
          }

LABEL_89:
          if (v61 < 1)
          {
            goto LABEL_95;
          }

          v69 = v53;
          v70 = v54;
          sub_1007483B0(v53, v54);
          sub_100715738(v50, v52);
          sub_1007483B0(v69, v70);
          v71 = v124;
          v121 = sub_10071C8A0(v50, v52, v69, v70);
          v124 = v71;
          sub_10001C370(v69, v70);
          sub_1007156D8(v50, v52);
          sub_10001C370(v69, v70);
          sub_10001C370(v50, v52);
          if (v121)
          {
            goto LABEL_96;
          }
        }

        break;
      }

      sub_100937298();
      sub_1009372C8();
      sub_1009372D8();
      sub_1009372A8();
      goto LABEL_63;
    }

LABEL_150:
    v124 = 0;
    v72 = &_swiftEmptyArrayStorage;
LABEL_151:

    if (v72 >> 62)
    {
LABEL_152:
      if (!sub_1009373F8())
      {
        goto LABEL_153;
      }

      goto LABEL_100;
    }
  }

  else
  {

    v124 = 0;
    v72 = &_swiftEmptyArrayStorage;
    if (&_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_152;
    }
  }

  if (!*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_153:

    (*(v129 + 2))(v129, 0);

    return;
  }

LABEL_100:
  v127 = v72;
  a1 = 0;
  v131 = v22 & 0xC000000000000001;
  v73 = (v125 + 48);
  v128 = &_swiftEmptyArrayStorage;
  while (2)
  {
    v74 = a1;
    while (2)
    {
      if (v131)
      {
        v75 = sub_100937268();
      }

      else
      {
        if (v74 >= *(v22 + 16))
        {
          goto LABEL_137;
        }

        v75 = *(v22 + 8 * v74 + 32);
      }

      v76 = v75;
      a1 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        goto LABEL_136;
      }

      v11 = v22;
      v10 = v135;
      v8 = (*((swift_isaMask & *v135) + 0xB0))();
      v77 = v134;
      v78 = v136;
      (*((swift_isaMask & *v8) + 0x108))(v136, v76);

      if ((*v73)(v77, 1, v133) == 1)
      {

        sub_100013814(v77, &unk_100CB4A50);
        goto LABEL_103;
      }

      v79 = v77;
      v80 = v130;
      sub_100792048(v79, v130, type metadata accessor for SenderKeyAndState);
      v8 = v10;
      if ((*((swift_isaMask & *v10) + 0x210))(v78, v76))
      {

        sub_100791FE8(v80, type metadata accessor for SenderKeyAndState);
LABEL_103:
        v22 = v11;
        ++v74;
        if (a1 == v132)
        {
          goto LABEL_117;
        }

        continue;
      }

      break;
    }

    v81 = sub_100935E88(0);
    v83 = v82;
    sub_100791FE8(v80, type metadata accessor for SenderKeyAndState);
    v22 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v128 = sub_10078829C(0, v128[2] + 1, 1, v128);
    }

    v10 = v128[2];
    v84 = v128[3];
    v8 = (v10 + 1);
    v85 = v132;
    if (v10 >= v84 >> 1)
    {
      v128 = sub_10078829C((v84 > 1), v10 + 1, 1, v128);
      v85 = v132;
    }

    v86 = v128;
    v128[2] = v8;
    v87 = &v86[3 * v10];
    v87[4] = v76;
    v87[5] = v81;
    v87[6] = v83;
    if (a1 != v85)
    {
      continue;
    }

    break;
  }

LABEL_117:
  v88 = v128;
  v89 = v128[2];
  if (!v89)
  {
LABEL_125:

    goto LABEL_153;
  }

  v138 = &_swiftEmptyArrayStorage;
  sub_10071DE64(0, v89, 0);
  v90 = v138;
  v91 = v88 + 6;
  do
  {
    v92 = *(v91 - 1);
    v93 = *v91;
    v138 = v90;
    v94 = *(v90 + 16);
    v95 = *(v90 + 24);

    if (v94 >= v95 >> 1)
    {
      sub_10071DE64((v95 > 1), v94 + 1, 1);
      v90 = v138;
    }

    *(v90 + 16) = v94 + 1;
    v96 = v90 + 16 * v94;
    *(v96 + 32) = v92;
    *(v96 + 40) = v93;
    v91 += 3;
    --v89;
  }

  while (v89);
  v97 = sub_100747820(v90);

  v98 = *(v97 + 16);
  if (v98)
  {
    v99 = sub_1007884E0(*(v97 + 16), 0);
    v100 = sub_10078FCE0(&v138, v99 + 4, v98, v97);
    sub_100308C6C();
    if (v100 != v98)
    {
      __break(1u);
      goto LABEL_125;
    }
  }

  else
  {

    v99 = &_swiftEmptyArrayStorage;
  }

  v101 = v135;
  v138 = 2;
  LOBYTE(v139) = 3;
  v140 = &_swiftEmptyArrayStorage;
  v141 = &_swiftEmptyArrayStorage;
  v142 = v99;
  v102 = v136;

  v103 = sub_1009364B8();
  v104 = sub_100936F18();

  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v137 = v136;
    *v105 = 138412802;
    *(v105 + 4) = v102;
    *v106 = v123;
    *(v105 + 12) = 2080;
    v107 = v102;
    v108 = sub_100936CF8();
    v110 = v109;

    v111 = sub_10001273C(v108, v110, &v137);

    *(v105 + 14) = v111;
    *(v105 + 22) = 2080;
    v112 = sub_100936CF8();
    v114 = v113;

    v115 = sub_10001273C(v112, v114, &v137);

    *(v105 + 24) = v115;
    v101 = v135;
    _os_log_impl(&_mh_execute_header, v103, v104, "Will send self key check message to myURI: %@ for filteredPeerURIs: %s with keyIDsToCheck: %s", v105, 0x20u);
    sub_100013814(v106, &qword_100CB36B0);
    v88 = v128;

    swift_arrayDestroy();
  }

  else
  {
  }

  v116 = swift_allocObject();
  v116[2] = v88;
  v116[3] = v101;
  v116[4] = v102;
  v116[5] = sub_100795E20;
  v116[6] = v126;
  v117 = *((swift_isaMask & *v101) + 0x238);
  v118 = v102;
  v119 = v101;

  v117(v118, v118, &v138, &_swiftEmptyArrayStorage, v127, 51, sub_100796BE8, v116);
}

uint64_t sub_100793E78(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100937598() & 1;
  }
}

uint64_t sub_100793EF8()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100793F40(char a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);

  v5 = v4;
  oslog = sub_1009364B8();
  v6 = sub_100936F18();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136315650;
    sub_100788910(v3);
    sub_100014170(0, &qword_100CBA2E0);
    v10 = sub_100936CF8();
    v12 = v11;

    v13 = sub_10001273C(v10, v12, &v16);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    *(v7 + 14) = v5;
    *v8 = v5;
    *(v7 + 22) = 1024;
    *(v7 + 24) = a1 & 1;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v6, "Did generateAndSendKeyIfNeeded to donated handles {URIs: %s fromURI: %@} with success %{BOOL}d", v7, 0x1Cu);
    sub_100013814(v8, &qword_100CB36B0);

    sub_100012970(v9);
  }
}

void sub_100794124(void *a1)
{
  if (!a1)
  {
    return;
  }

  v3 = [a1 uris];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = sub_100936CE8();

  v6 = [a1 serviceIdentifier];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = sub_100936B38();
  v10 = v9;

  if (v8 == sub_100936B38() && v10 == v11)
  {
  }

  else
  {
    v13 = sub_100937598();

    if ((v13 & 1) == 0)
    {

LABEL_10:

      return;
    }
  }

  v46 = v1;
  v14 = sub_1009364B8();
  v15 = sub_100936F18();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *&v49[0] = swift_slowAlloc();
    *v16 = 136315394;
    v17 = sub_100936CF8();
    v19 = sub_10001273C(v17, v18, v49);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v20 = sub_10001273C(v8, v10, v49);

    *(v16 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "Received deregistrationWillStart with uris: %s service: %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v21 = &_swiftEmptyArrayStorage;
  v50 = &_swiftEmptyArrayStorage;
  v22 = sub_100785148(v5);
  if (v22)
  {
    v23 = v22;
    v24 = *(v5 + 16);
    if (v24)
    {
      v25 = 0;
      v26 = v5 + 32;
      while (v25 < *(v5 + 16))
      {
        sub_100012914(v26, v49);
        sub_100308C74(v49, v48);
        if (!swift_dynamicCast())
        {

          goto LABEL_33;
        }

        ++v25;

        v26 += 32;
        if (v24 == v25)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_23:

      v27 = 0;
      *&v49[0] = &_swiftEmptyArrayStorage;
      v28 = v23[2];
      v29 = v23 + 5;
LABEL_24:
      v30 = &v29[2 * v27];
      while (1)
      {
        if (v28 == v27)
        {

          v35 = v21;
          goto LABEL_40;
        }

        if (v27 >= v23[2])
        {
          break;
        }

        ++v27;
        v31 = v30 + 2;
        v32 = objc_allocWithZone(IDSURI);

        v33 = sub_100936B28();

        v34 = [v32 initWithPrefixedURI:v33];

        v30 = v31;
        if (v34)
        {
          sub_100936CC8();
          if (*((*&v49[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v49[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100936D18();
          }

          sub_100936D38();
          v21 = *&v49[0];
          v29 = v23 + 5;
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_33:
  v36 = sub_10078525C(v5);
  if (v36)
  {
    v37 = v36;
    v38 = *(v5 + 16);
    v39 = v46;
    if (v38)
    {
      v40 = 0;
      v41 = v5 + 32;
      while (v40 < *(v5 + 16))
      {
        sub_100012914(v41, v49);
        sub_100308C74(v49, v48);
        sub_100014170(0, &qword_100CBA2E0);
        if (!swift_dynamicCast())
        {

          goto LABEL_43;
        }

        ++v40;

        v41 += 32;
        if (v38 == v40)
        {
          goto LABEL_39;
        }
      }

LABEL_48:
      __break(1u);
      return;
    }

LABEL_39:

    v35 = v37;
LABEL_40:
    v42 = sub_1007838E4(v35, sub_10078F60C);
  }

  else
  {
  }

  v39 = v46;
LABEL_43:
  v43 = (*((swift_isaMask & *v39) + 0xB0))(v42);
  v44 = v50;
  v45 = (*((swift_isaMask & *v39) + 0x340))();
  sub_1008D292C(v44, 0, 0, v45);
}

uint64_t sub_1007946DC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100BE7510;
  v6._object = a2;
  v4 = sub_100937458(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100794728(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100BE7590;
  v6._object = a2;
  v4 = sub_100937458(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100794774@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100706B30(&qword_100CB4F70);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000226D4(a1, a1[3]);
  sub_100794B0C();
  sub_1009376E8();
  if (v2)
  {
    return sub_100012970(a1);
  }

  LOBYTE(v18) = 0;
  v17 = sub_100937488();
  v20 = 1;
  sub_100795F40();
  sub_100937498();
  v9 = v18;
  sub_100706B30(&qword_100CB4A98);
  v20 = 2;
  sub_100795F94(&qword_100CB4F80, &qword_100CB4AF0);
  sub_100937498();
  v19 = v9;
  v16 = v18;
  sub_100706B30(&qword_100CBA460);
  v20 = 3;
  v15 = sub_100796030(&qword_100CB4F88);
  sub_100937498();
  v14 = v18;
  v20 = 4;
  sub_100937468();
  if (v18)
  {
    v11 = v18;
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  (*(v6 + 8))(v8, v5);
  result = sub_100012970(a1);
  *a2 = v17;
  *(a2 + 8) = v19;
  v12 = v14;
  *(a2 + 16) = v16;
  *(a2 + 24) = v12;
  *(a2 + 32) = v11;
  return result;
}

unint64_t sub_100794B0C()
{
  result = qword_100CB4B00;
  if (!qword_100CB4B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4B00);
  }

  return result;
}

unint64_t sub_100794B60()
{
  result = qword_100CB4B08;
  if (!qword_100CB4B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4B08);
  }

  return result;
}

unint64_t sub_100794BB4()
{
  result = qword_100CC2C78;
  if (!qword_100CC2C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC2C78);
  }

  return result;
}

uint64_t sub_100794C08(void *a1)
{
  v3 = sub_100706B30(&qword_100CB4F68);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_1000226D4(a1, a1[3]);
  sub_100794BB4();
  sub_1009376E8();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_100937478();
    v10 = 1;
    sub_100937478();
    (*(v4 + 8))(v6, v3);
  }

  sub_100012970(a1);
  return v7;
}

unint64_t sub_100794DEC()
{
  result = qword_100CC2C80;
  if (!qword_100CC2C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC2C80);
  }

  return result;
}

unint64_t sub_100794E40()
{
  result = qword_100CB4B50;
  if (!qword_100CB4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4B50);
  }

  return result;
}

unint64_t sub_100794E94()
{
  result = qword_100CB4B70;
  if (!qword_100CB4B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4B70);
  }

  return result;
}

unint64_t sub_100794EE8()
{
  result = qword_100CC2C88[0];
  if (!qword_100CC2C88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CC2C88);
  }

  return result;
}

uint64_t sub_100794F60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6174614479656BLL && a2 == 0xE700000000000000;
  if (v4 || (sub_100937598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444979656BLL && a2 == 0xE500000000000000 || (sub_100937598() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (sub_100937598() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100B01A00 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_100937598();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1007950D0(unint64_t a1)
{
  if (a1 >= 8)
  {
    return 7;
  }

  else
  {
    return (0x605040302010007uLL >> (8 * a1));
  }
}

unint64_t sub_1007950FC()
{
  result = qword_100CB4B88;
  if (!qword_100CB4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4B88);
  }

  return result;
}

unint64_t sub_100795154()
{
  result = qword_100CB4B90;
  if (!qword_100CB4B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4B90);
  }

  return result;
}

unint64_t sub_1007951AC()
{
  result = qword_100CB4B98;
  if (!qword_100CB4B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4B98);
  }

  return result;
}

unint64_t sub_100795204()
{
  result = qword_100CB4BA0;
  if (!qword_100CB4BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4BA0);
  }

  return result;
}

unint64_t sub_10079525C()
{
  result = qword_100CB4BA8;
  if (!qword_100CB4BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4BA8);
  }

  return result;
}

unint64_t sub_1007952B4()
{
  result = qword_100CB4BB0;
  if (!qword_100CB4BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4BB0);
  }

  return result;
}

unint64_t sub_100795354()
{
  result = qword_100CB4BC0;
  if (!qword_100CB4BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4BC0);
  }

  return result;
}

uint64_t sub_1007953B0()
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

__n128 sub_1007954C0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1007954D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10079551C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for SenderKeyMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SenderKeyMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_1007956D4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100795718()
{
  result = sub_100936038();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1007957C4()
{
  result = type metadata accessor for SenderKeyInfo(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SenderKeyDistributionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SenderKeyDistributionError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1007959A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100795A38(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100795B0C()
{
  result = qword_100CC3CC0[0];
  if (!qword_100CC3CC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CC3CC0);
  }

  return result;
}

unint64_t sub_100795B64()
{
  result = qword_100CC3ED0[0];
  if (!qword_100CC3ED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CC3ED0);
  }

  return result;
}

unint64_t sub_100795BBC()
{
  result = qword_100CC40E0[0];
  if (!qword_100CC40E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CC40E0);
  }

  return result;
}

unint64_t sub_100795C14()
{
  result = qword_100CC41F0;
  if (!qword_100CC41F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC41F0);
  }

  return result;
}

unint64_t sub_100795C6C()
{
  result = qword_100CC41F8[0];
  if (!qword_100CC41F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CC41F8);
  }

  return result;
}

unint64_t sub_100795CC4()
{
  result = qword_100CC4280;
  if (!qword_100CC4280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4280);
  }

  return result;
}

unint64_t sub_100795D1C()
{
  result = qword_100CC4288[0];
  if (!qword_100CC4288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CC4288);
  }

  return result;
}

unint64_t sub_100795D74()
{
  result = qword_100CC4310;
  if (!qword_100CC4310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC4310);
  }

  return result;
}

unint64_t sub_100795DCC()
{
  result = qword_100CC4318[0];
  if (!qword_100CC4318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CC4318);
  }

  return result;
}

uint64_t sub_100795E38()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100795E98()
{
  result = qword_100CB4F50;
  if (!qword_100CB4F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4F50);
  }

  return result;
}

unint64_t sub_100795EEC()
{
  result = qword_100CB4F60;
  if (!qword_100CB4F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4F60);
  }

  return result;
}

unint64_t sub_100795F40()
{
  result = qword_100CB4F78;
  if (!qword_100CB4F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4F78);
  }

  return result;
}

uint64_t sub_100795F94(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1007147D0(&qword_100CB4A98);
    sub_1007924D8(a2, type metadata accessor for SenderKeyInfo);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100796030(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1007147D0(&qword_100CBA460);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10079609C()
{
  result = qword_100CB4FA8;
  if (!qword_100CB4FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4FA8);
  }

  return result;
}

void sub_1007960FC()
{
  v1 = v0;
  v2 = 0;
  v3 = v0[2];
  v4 = v1[3];
  v23 = v1[4];
  v5 = v1[5];
  v6 = *(v4 + 16);
  v7 = v4 + 40;
  v8 = &_swiftEmptyArrayStorage;
  v22 = v4 + 40;
LABEL_2:
  v9 = v7 + 16 * v2;
  while (v6 != v2)
  {
    if (v2 >= v6)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_16;
    }

    v11 = sub_100935E28();
    v13 = v12;

    v9 += 16;
    ++v2;
    if (v13 >> 60 != 15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100787FB8(0, *(v8 + 2) + 1, 1, v8);
      }

      v15 = *(v8 + 2);
      v14 = *(v8 + 3);
      if (v15 >= v14 >> 1)
      {
        v8 = sub_100787FB8((v14 > 1), v15 + 1, 1, v8);
      }

      *(v8 + 2) = v15 + 1;
      v16 = &v8[16 * v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v13;
      v2 = v10;
      v7 = v22;
      goto LABEL_2;
    }
  }

  (*((swift_isaMask & *v3) + 0x290))(v8, v23, v5);

  sub_100706B30(&qword_100CB4A30);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1009AD920;
  *(v17 + 32) = v5;
  v18 = swift_allocObject();
  v18[2] = v3;
  v18[3] = v5;
  v18[4] = v23;
  v19 = *((swift_isaMask & *v3) + 0x200);
  v20 = v5;
  v21 = v3;
  v19(v17, v23, 0x766F63655279654BLL, 0xEB00000000797265, 2, &_swiftEmptyArrayStorage, sub_1007963EC, v18);
}

uint64_t sub_1007963A4()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1007963F8(char a1, const char *a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = v5;
  v8 = v6;
  oslog = sub_1009364B8();
  v9 = sub_100936F18();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412802;
    *(v10 + 4) = v7;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v8;
    *v11 = v7;
    v11[1] = v8;
    *(v10 + 22) = 1024;
    *(v10 + 24) = a1 & 1;
    v12 = v7;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, oslog, v9, a2, v10, 0x1Cu);
    sub_100706B30(&qword_100CB36B0);
    swift_arrayDestroy();
  }
}

uint64_t sub_100796558(uint64_t a1, uint64_t a2)
{
  v4 = sub_100706B30(&unk_100CB4A50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100796618()
{
  sub_100936038();
  type metadata accessor for SenderKeyInfo(0);
  sub_1007924D8(&qword_100CB4FD0, &type metadata accessor for Date);
  return sub_100936B08() & 1;
}

uint64_t sub_1007966BC()
{

  return _swift_deallocObject(v0, 73, 7);
}

unint64_t sub_10079674C()
{
  result = qword_100CB5048;
  if (!qword_100CB5048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5048);
  }

  return result;
}

uint64_t sub_1007967A0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((swift_isaMask & *Strong) + 0xB0))();
    v3 = sub_10001E2FC();
    sub_1008CDA60(0, v3 & 1);

    *(swift_allocObject() + 16) = v1;
    sub_100796ADC();
    v4 = v1;
    sub_100937078();
  }

  return 0;
}

void sub_1007968C8(void (*a1)(unint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (*((swift_isaMask & *Strong) + 0xB0))();
    v5 = sub_10001E2FC();
    v6 = sub_1008CDA60(0, v5 & 1);
    v8 = v7;

    a1(v6, v8);
  }

  else
  {
    a1(0, 0);
  }
}

void sub_1007969BC(uint64_t a1, unint64_t a2)
{

  oslog = sub_1009364B8();
  v4 = sub_100936F18();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10001273C(a1, a2, &v8);
    _os_log_impl(&_mh_execute_header, oslog, v4, "%s", v5, 0xCu);
    sub_100012970(v6);
  }
}

unint64_t sub_100796ADC()
{
  result = qword_100CB5050;
  if (!qword_100CB5050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5050);
  }

  return result;
}

uint64_t sub_100796E64()
{
  v1 = v0 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    v4 = result;
    ObjectType = swift_getObjectType();
    v6 = (*(v3 + 24))(v0, ObjectType, v3);

    return v6;
  }

  return result;
}

uint64_t sub_100796EDC()
{
  v1 = OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_typeAccordingToServer;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100796F20(char a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_typeAccordingToServer;
  result = swift_beginAccess();
  *(v1 + v3) = a1 & 1;
  return result;
}

uint64_t sub_1007970D4@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return sub_100797130(v3 + v6, a3, a2);
}

uint64_t sub_100797130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007971B8(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  sub_10079721C(a1, v3 + v6, a3);
  return swift_endAccess();
}

uint64_t sub_10079721C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007972E4(uint64_t a1)
{
  sub_10071A680(a1, v6);
  if (!v7)
  {
    sub_100013814(v6, &qword_100CB4A90);
    goto LABEL_6;
  }

  type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v2 = 0;
    return v2 & 1;
  }

  if (*&v5[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_participantID] == *(v1 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_participantID))
  {

    v2 = 1;
  }

  else
  {
    sub_100014170(0, &qword_100CB4A70);
    v4 = *&v5[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_pushToken];
    v2 = sub_100937038();
  }

  return v2 & 1;
}

id sub_1007974D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a2;
  v29 = a5;
  v30 = a6;
  v27 = a3;
  v28 = a4;
  v26 = a1;
  v23 = sub_100936F78();
  v7 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100936F38();
  __chkstk_darwin(v10);
  v11 = sub_100936528();
  __chkstk_darwin(v11 - 8);
  v12 = objc_allocWithZone(v6);
  v22 = OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_q;
  v13 = sub_100014170(0, &qword_100CB3510);
  v21[0] = "identityservicesd";
  v21[1] = v13;
  sub_100936508();
  v32 = &_swiftEmptyArrayStorage;
  sub_100014AD8(&qword_100CB2AB8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100706B30(&unk_100CB3520);
  sub_10071499C(&qword_100CB2AC0, &unk_100CB3520);
  sub_1009370B8();
  (*(v7 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v23);
  *&v12[v22] = sub_100936F98();
  v14 = &v12[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_delegate];
  *&v12[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_typeAccordingToServer] = 1;
  type metadata accessor for IDSGroupEncryptionControllerParticipantPreKeyState(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryState(0);
  swift_storeEnumTagMultiPayload();
  v12[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_hasScheduledKeyRecovery] = 0;
  v15 = v26;
  *(v14 + 1) = v25;
  swift_unknownObjectWeakAssign();
  v16 = v28;
  *&v12[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_participantID] = v27;
  *&v12[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_pushToken] = v16;
  v17 = &v12[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_allocatedURI];
  v18 = v30;
  *v17 = v29;
  v17[1] = v18;
  v31.receiver = v12;
  v31.super_class = v24;
  v19 = objc_msgSendSuper2(&v31, "init");

  return v19;
}

uint64_t sub_1007978AC()
{
  sub_100937248(33);

  strcpy(v6, "<Participant ");
  HIWORD(v6[1]) = -4864;
  v7._countAndFlagsBits = sub_100937548();
  sub_100936C08(v7);

  v8._countAndFlagsBits = 0x3D69727520;
  v8._object = 0xE500000000000000;
  sub_100936C08(v8);
  sub_100936C08(*(v0 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_allocatedURI));
  v9._countAndFlagsBits = 0x3D6E656B6F74203BLL;
  v9._object = 0xE800000000000000;
  sub_100936C08(v9);
  v1 = [*(v0 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_pushToken) description];
  v2 = sub_100936B38();
  v4 = v3;

  v10._countAndFlagsBits = v2;
  v10._object = v4;
  sub_100936C08(v10);

  v11._countAndFlagsBits = 62;
  v11._object = 0xE100000000000000;
  sub_100936C08(v11);
  return v6[0];
}

void sub_100797A04(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(v3 + 8);
    v9 = Strong;
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(v1, ObjectType, v5);
  }

  else
  {
    v7 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
    v8 = *(*(v7 - 8) + 56);

    v8(a1, 1, 1, v7);
  }
}

uint64_t sub_100797AF0(uint64_t result, uint64_t a2, char a3, char a4)
{
  v7 = result;
  if (a3)
  {
    result = (*((swift_isaMask & *v4) + 0x118))(0, result, a2);
  }

  if (a4)
  {
    v8 = *((swift_isaMask & *v4) + 0x118);

    return v8(1, v7, a2);
  }

  return result;
}

uint64_t sub_100797CE8(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17 = type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryState(0);
  __chkstk_darwin(v17);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100797F0C(v4, a2, a3);
  v11 = sub_10079810C(v4, a2, a3);
  v12 = sub_10079830C(v4, a2, a3);
  v25 = a1 & 1;
  v24 = 1;
  sub_100798574();
  result = sub_100936B18();
  if ((result & 1) == 0 || (v11 & 1) == 0 || v12)
  {
    v23 = a1 & 1;
    v22 = 0;
    result = sub_100936B18();
    if (result)
    {
      if (v10)
      {
        if (!v12)
        {
          return result;
        }

LABEL_9:
        v14 = 1;
        v15 = 1;
        if (v11)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    else if (v10)
    {
      goto LABEL_9;
    }

    v21 = a1 & 1;
    v20 = 0;
    v14 = sub_100936B18();
    v15 = 1;
    if (v11)
    {
LABEL_13:
      *v9 = a2;
      *(v9 + 1) = a3;
      v9[16] = v14 & 1;
      v9[17] = v15 & 1;
      swift_storeEnumTagMultiPayload();
      v16 = *((swift_isaMask & *v4) + 0xF0);

      v16(v9);
      return sub_1007985C8();
    }

LABEL_12:
    v19 = a1 & 1;
    v18 = 1;
    v15 = sub_100936B18();
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100797F0C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryRequest(0);
  __chkstk_darwin(v6);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryState(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *a1) + 0xE8))(v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    if (v12[16] == 1)
    {
      if (*v12 == a2 && *(v12 + 1) == a3)
      {

        v15 = 1;
      }

      else
      {
        v15 = sub_100937598();
      }

      return v15 & 1;
    }

LABEL_17:
    v15 = 0;
    return v15 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_17;
  }

  sub_1007998AC(v12, v8);
  if (*(v8 + *(v6 + 28)) == 1)
  {
    if (*v8 == a2 && v8[1] == a3)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_100937598();
    }
  }

  else
  {
    v15 = 0;
  }

  sub_1007994B4(v8, type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryRequest);
  return v15 & 1;
}

uint64_t sub_10079810C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryRequest(0);
  __chkstk_darwin(v6);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryState(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *a1) + 0xE8))(v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    if (v12[17] == 1)
    {
      if (*v12 == a2 && *(v12 + 1) == a3)
      {

        v15 = 1;
      }

      else
      {
        v15 = sub_100937598();
      }

      return v15 & 1;
    }

LABEL_17:
    v15 = 0;
    return v15 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_17;
  }

  sub_1007998AC(v12, v8);
  if (*(v8 + *(v6 + 32)) == 1)
  {
    if (*v8 == a2 && v8[1] == a3)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_100937598();
    }
  }

  else
  {
    v15 = 0;
  }

  sub_1007994B4(v8, type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryRequest);
  return v15 & 1;
}

BOOL sub_10079830C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100936038();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryRequest(0);
  __chkstk_darwin(v10);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryState(0);
  v14 = __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *a1) + 0xE8))(v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1007998AC(v16, v12);
    v17 = *v12 == a2 && v12[1] == a3;
    if (v17 || (v18 = 0, (sub_100937598() & 1) != 0))
    {
      sub_100936028();
      sub_100935F38();
      v20 = v19;
      (*(v7 + 8))(v9, v6);
      v18 = v20 > 3.0;
    }

    sub_1007994B4(v12, type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryRequest);
  }

  else
  {
    sub_1007994B4(v16, type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryState);
    return 0;
  }

  return v18;
}

unint64_t sub_100798574()
{
  result = qword_100CB5170;
  if (!qword_100CB5170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5170);
  }

  return result;
}

uint64_t sub_1007985C8()
{
  v1 = sub_1009364F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100936528();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v0[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_hasScheduledKeyRecovery] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_hasScheduledKeyRecovery] = 1;
    v13[1] = *&v0[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_q];
    v14 = result;
    v10 = swift_allocObject();
    *(v10 + 16) = v0;
    aBlock[4] = sub_1007998A4;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000154AC;
    aBlock[3] = &unk_100BE80F8;
    v11 = _Block_copy(aBlock);
    v12 = v0;
    sub_100936508();
    v15 = &_swiftEmptyArrayStorage;
    sub_100014AD8(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100706B30(&unk_100CB3550);
    sub_10071499C(&qword_100CB4AB0, &unk_100CB3550);
    sub_1009370B8();
    sub_100936F88();
    _Block_release(v11);
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v9, v14);
  }

  return result;
}

uint64_t sub_100798898(void *a1)
{
  v2 = type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryRequest(0);
  __chkstk_darwin(v2);
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryState(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v19 - v10;
  *(a1 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_hasScheduledKeyRecovery) = 0;
  (*((swift_isaMask & *a1) + 0xE8))(v9);
  if (swift_getEnumCaseMultiPayload())
  {
    v12 = type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryState;
    v13 = v11;
  }

  else
  {
    v14 = *v11;
    v15 = *(v11 + 1);
    v16 = v11[16];
    v17 = v11[17];
    sub_100936028();
    *v4 = v14;
    v4[1] = v15;
    v4[2] = 0;
    *(v4 + *(v2 + 28)) = v16;
    *(v4 + *(v2 + 32)) = v17;
    sub_100797130(v4, v8, type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryRequest);
    swift_storeEnumTagMultiPayload();
    (*((swift_isaMask & *a1) + 0xF0))(v8);
    (*((swift_isaMask & *a1) + 0x148))(v4);
    v13 = v4;
    v12 = type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryRequest;
  }

  return sub_1007994B4(v13, v12);
}

void sub_100798AE8(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(v3 + 8);
    v7 = Strong;
    ObjectType = swift_getObjectType();
    (*(v5 + 32))(a1, v1, ObjectType, v5);
  }
}

void sub_100798B8C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v47 = type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryState(0);
  __chkstk_darwin(v47);
  v46 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for IDSGroupEncryptionControllerParticipantPreKeyState(0);
  __chkstk_darwin(v45);
  v44[1] = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v3;

  v9 = sub_1009364B8();
  v10 = sub_100936F18();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v11 = 136315906;
    *(v11 + 4) = sub_10001273C(a2, a3, &v50);
    *(v11 + 12) = 2048;
    *(v11 + 14) = *&v8[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_participantID];

    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_10001273C(*&v8[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_allocatedURI], *&v8[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_allocatedURI + 8], &v50);
    *(v11 + 32) = 2112;
    v13 = *&v8[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_pushToken];
    *(v11 + 34) = v13;
    *v12 = v13;
    v14 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "%sParticipant %llu: uri=%s; token=%@", v11, 0x2Au);
    sub_100013814(v12, &qword_100CB36B0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v15 = v8;

  v16 = sub_1009364B8();
  v17 = sub_100936F18();

  v18 = os_log_type_enabled(v16, v17);
  v48 = a2;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = sub_10001273C(a2, a3, &v50);
    *(v19 + 12) = 2080;
    v49 = (*((swift_isaMask & *v15) + 0xB8))() & 1;
    v20 = sub_100936B88();
    v22 = sub_10001273C(v20, v21, &v50);

    *(v19 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s    typeAccordingToServer: %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  v23 = v15;

  v24 = sub_1009364B8();
  v25 = sub_100936F18();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v26 = 136315394;
    *(v26 + 4) = sub_10001273C(v48, a3, &v50);
    *(v26 + 12) = 2080;
    (*((swift_isaMask & *v23) + 0xD0))();
    v27 = sub_100936B88();
    v29 = sub_10001273C(v27, v28, &v50);

    *(v26 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v24, v25, "%s    preKeyState: %s", v26, 0x16u);
    swift_arrayDestroy();
  }

  v30 = v23;

  v31 = sub_1009364B8();
  v32 = sub_100936F18();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v33 = 136315394;
    *(v33 + 4) = sub_10001273C(v48, a3, &v50);
    *(v33 + 12) = 2080;
    (*((swift_isaMask & *v30) + 0xE8))();
    v34 = sub_100936B88();
    v36 = sub_10001273C(v34, v35, &v50);

    *(v33 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v31, v32, "%s    keyRecoveryState: %s", v33, 0x16u);
    swift_arrayDestroy();
  }

  v37 = v30;

  v38 = sub_1009364B8();
  v39 = sub_100936F18();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v40 = 136315394;
    *(v40 + 4) = sub_10001273C(v48, a3, &v50);
    *(v40 + 12) = 2080;
    if (v37[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_hasScheduledKeyRecovery])
    {
      v41 = 1702195828;
    }

    else
    {
      v41 = 0x65736C6166;
    }

    if (v37[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_hasScheduledKeyRecovery])
    {
      v42 = 0xE400000000000000;
    }

    else
    {
      v42 = 0xE500000000000000;
    }

    v43 = sub_10001273C(v41, v42, &v50);

    *(v40 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v38, v39, "%s    hasScheduledKeyRecvory: %s", v40, 0x16u);
    swift_arrayDestroy();
  }
}

id sub_100799374()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1007994B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10079951C()
{
  sub_10079974C(319, &unk_100CB51E8, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_1007995C0()
{
  result = sub_100936038();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100799654()
{
  sub_1007996E4();
  if (v0 <= 0x3F)
  {
    sub_10079974C(319, &unk_100CB5320, type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryRequest);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1007996E4()
{
  if (!qword_100CB5318)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100CB5318);
    }
  }
}

void sub_10079974C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1007997A0()
{
  result = type metadata accessor for IDSGroupEncryptionControllerParticipantPreKeyState(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryState(319);
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1007998AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t UUID.getData.getter()
{
  v2[0] = sub_100936088();
  v2[1] = v0;
  return sub_10072E1C8(v2, &v3);
}

uint64_t static UUID.initFrom(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_16;
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 16)
      {
        goto LABEL_8;
      }

LABEL_16:
      v12 = sub_1009360A8();
      v13 = *(*(v12 - 8) + 56);

      return v13(a3, 1, 1, v12);
    }

    goto LABEL_28;
  }

  if (BYTE6(a2) != 16)
  {
    goto LABEL_16;
  }

LABEL_8:
  if (v4 == 2)
  {
    v15 = *(a1 + 16);
    v16 = *(a1 + 24);
    v10 = sub_100935BE8();
    if (v10)
    {
      v17 = sub_100935C18();
      if (__OFSUB__(v15, v17))
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v10 += v15 - v17;
    }

    if (!__OFSUB__(v16, v15))
    {
      goto LABEL_23;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v4 != 1)
  {
    v20 = a1;
    v21 = a2;
    v22 = BYTE2(a2);
    v23 = BYTE3(a2);
    v24 = BYTE4(a2);
    v25 = BYTE5(a2);
    v18 = [objc_allocWithZone(NSUUID) initWithUUIDBytes:&v20];
    sub_100936078();

    v19 = sub_1009360A8();
    return (*(*(v19 - 8) + 56))(a3, 0, 1, v19);
  }

  v9 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v10 = sub_100935BE8();
  if (v10)
  {
    v11 = sub_100935C18();
    if (!__OFSUB__(v9, v11))
    {
      v10 += v9 - v11;
      goto LABEL_23;
    }

LABEL_32:
    __break(1u);
  }

LABEL_23:
  sub_100935C08();

  return sub_100799C60(v10, a3);
}

uint64_t sub_100799C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = [objc_allocWithZone(NSUUID) initWithUUIDBytes:a1];
    sub_100936078();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_1009360A8();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

id sub_100799D0C()
{
  result = im_primary_queue();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void registerSysdiagnoseBlock(title:queue:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = a4;
  v8[5] = a5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100799E0C;
  v8[3] = &unk_100BE8120;
  v6 = _Block_copy(v8);

  v7 = sub_100936B28();
  sub_1006085C4(v6, v7, a3);

  _Block_release(v6);
}

id sub_100799E0C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
  v4 = v3;

  if (v4)
  {
    v5 = sub_100936B28();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

Swift::Int sub_100799E90()
{
  sub_100937668();
  sub_100937678(0);
  return sub_1009376C8();
}

Swift::Int sub_100799EFC()
{
  sub_100937668();
  sub_100937678(0);
  return sub_1009376C8();
}

unint64_t sub_100799F40()
{
  result = qword_100CB5378;
  if (!qword_100CB5378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5378);
  }

  return result;
}

uint64_t sub_100799FCC()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5380, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5388, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10079A0D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5380, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5388, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10079A1DC()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5380, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_10079A2B4()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5380, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5388, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10079A3B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5380, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5388, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10079A4C4()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5380, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_10079A59C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5380, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5388, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10079A6A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5380, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5388, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10079A7AC()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5380, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_10079A884()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5380, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5388, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_10079A9B0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5380, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5388, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10079AAE4()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5380, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_10079ABBC()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5380, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5388, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_10079ACE8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5380, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5388, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10079AE1C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5380, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_10079AEF4()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5380, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5388, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4);
  sub_1009368A8();

  return v0;
}

double sub_10079B02C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5380, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5388, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10079B16C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5380, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_10079B244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1007B1924(a5, a6);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18);
  sub_1009368C8();
}

uint64_t sub_10079B310()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5380, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice(0);
  sub_1007B1924(&qword_100CB5388, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_1007B1B94();
  sub_100936898();

  return v0;
}

uint64_t sub_10079B428@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5380, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice(0);
  sub_1007B1924(&qword_100CB5388, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_1007B1B94();
  sub_100936898();

  *a2 = v4;
  return result;
}

uint64_t sub_10079B548()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5380, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_100936138();
}

uint64_t sub_10079B614()
{
  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice(0);
  sub_1007B1924(&qword_100CB5388, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  sub_1007B1B94();
  sub_1009368B8();
}

uint64_t sub_10079B6C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v17 = swift_allocObject();
  sub_10079B76C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return v17;
}

uint64_t sub_10079B76C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v11 = v10;
  v13._countAndFlagsBits = a3;
  v13._object = a4;
  *(v10 + 48) = sub_100706B30(&qword_100CB53B8);
  sub_1007B1924(&qword_100CB5388, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  *(v10 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v10 + 24));
  sub_100936858();
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_100706B30(&unk_100CBA310);
  sub_100022AC0(&qword_100CB3CD8);
  sub_1009366D8();

  *(v10 + 16) = 0;
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v10 + 17) = 0;
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB3CE8);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18);
  sub_1009366D8();

  *(v10 + 18) = 0;
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB5390);
  type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice(0);
  sub_1007B1B94();
  sub_1009366C8();

  *(v10 + 19) = 0;
  sub_100936158();
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v10 + 16) = 0;
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v10 + 17) = 0;
  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1007483B0(a9, a10);
  sub_1009366D8();

  sub_10001C370(a9, a10);
  *(v10 + 18) = 0;

  sub_100936C08(v13);

  sub_1000226D4((v11 + 24), *(v11 + 48));
  swift_getKeyPath();
  sub_1009366D8();
  sub_10001C370(a9, a10);

  return v10;
}

uint64_t sub_10079BD4C(__int128 *a1)
{
  v2 = v1;
  *(v1 + 48) = sub_100706B30(&qword_100CB53B8);
  sub_1007B1924(&qword_100CB5388, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
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
  sub_100706B30(&qword_100CB5390);
  type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice(0);
  sub_1007B1B94();
  sub_1009366C8();

  *(v1 + 19) = 0;
  sub_100936158();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100012970(v1 + 24);
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_10079C0AC()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_10079C1B4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10079C2C4()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_10079C39C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10079C4A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10079C5AC()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_10079C684()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_10079C78C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10079C89C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_10079C974()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_10079CA7C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10079CB8C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_10079CC64()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_1009368A8();

  return v1;
}

uint64_t sub_10079CD68@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_10079CE74()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_10079CF44()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_1009368A8();

  return v1;
}

uint64_t sub_10079D048@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_10079D154()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_10079D230()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4);
  sub_1009368A8();

  return v0;
}

double sub_10079D36C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10079D4A8()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_10079D580()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_10079D6AC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10079D7E0()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_10079D8B8()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_1009368A8();

  return v1;
}

uint64_t sub_10079D9BC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_10079DAC8()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_10079DBB0()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_10079DCA0()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936138();
}

__n128 sub_10079DD78@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_1007B2660();
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

__n128 sub_10079DEC8@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_1007B2660();
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

uint64_t sub_10079E018()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_10079E104()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_1007B25DC();
  sub_1009368C8();
}

uint64_t sub_10079E1C0()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable(0);
  sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_1007B2718();
  sub_100936898();

  return v0;
}

uint64_t sub_10079E2D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable(0);
  sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_1007B2718();
  sub_100936898();

  *a2 = v4;
  return result;
}

uint64_t sub_10079E3F8()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB53C0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_10079E4C4()
{
  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable(0);
  sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  sub_1007B2718();
  sub_1009368B8();
}

uint64_t sub_10079E574(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, __int128 a9, __int128 a10, char a11, __int128 a12, __int128 a13, uint64_t a14)
{
  *&v27 = a5;
  *(&v27 + 1) = a6;
  *&v26 = a3;
  *(&v26 + 1) = a4;
  v15 = swift_allocObject();
  *(v15 + 48) = sub_100706B30(&qword_100CB53F8);
  *&v30 = v14;
  *(&v30 + 1) = v14;
  *&v31 = sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  *(&v31 + 1) = v31;
  *(v15 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v15 + 24));
  sub_100936858();
  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  LOBYTE(v30) = 0;
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  LOBYTE(v30) = 0;
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = xmmword_1009AD8D0;
  sub_100706B30(&qword_100CB3CE8);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18);
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = 0uLL;
  sub_100706B30(&unk_100CBA310);
  sub_100022AC0(&qword_100CB3CD8);
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  LOBYTE(v30) = 0;
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = xmmword_1009AD8D0;
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  *&v30 = &_swiftEmptyArrayStorage;
  sub_100706B30(&qword_100CB53D8);
  type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable(0);
  sub_1007B2718();
  sub_1009366C8();

  *(v15 + 20) = 0;
  sub_100936158();
  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  *&v30 = a1;
  *(&v30 + 1) = a2;
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = v26;
  sub_100715738(v26, *(&v26 + 1));
  sub_100768A18();
  sub_1009366D8();

  sub_1007156D8(v26, *(&v26 + 1));
  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = v27;
  sub_100715738(v27, *(&v27 + 1));
  sub_1009366D8();

  sub_1007156D8(v27, *(&v27 + 1));
  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  LOBYTE(v30) = a7;
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  LOBYTE(v30) = a8;
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = a9;
  sub_1007483B0(a9, *(&a9 + 1));
  sub_1009366D8();

  sub_10001C370(a9, *(&a9 + 1));
  *(v15 + 16) = 0;
  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = a10;
  sub_1009366D8();

  *(v15 + 17) = 0;
  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  LOBYTE(v30) = a11;
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = a12;
  sub_1007483B0(a12, *(&a12 + 1));
  sub_1009366D8();

  sub_10001C370(a12, *(&a12 + 1));
  *(v15 + 18) = 0;
  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = a13;
  sub_1007483B0(a13, *(&a13 + 1));
  sub_1009366D8();

  sub_10001C370(a13, *(&a13 + 1));
  *(v15 + 19) = 0;
  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v16 = *(a14 + 80);
  v34 = *(a14 + 64);
  v35 = v16;
  v36 = *(a14 + 96);
  v17 = *(a14 + 16);
  v30 = *a14;
  v31 = v17;
  v18 = *(a14 + 48);
  v32 = *(a14 + 32);
  v33 = v18;
  sub_1007B26E0(a14, v29);
  sub_1007B25DC();
  sub_1009366D8();

  sub_1007B2630(a14);
  v19 = sub_100716518(a1, a2);
  v21 = v20;

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  *&v30 = v19;
  *(&v30 + 1) = v21;
  sub_1009366D8();
  sub_1007B2630(a14);
  sub_10001C370(a13, *(&a13 + 1));
  sub_10001C370(a12, *(&a12 + 1));
  sub_10001C370(a9, *(&a9 + 1));
  sub_1007156D8(v27, *(&v27 + 1));
  sub_1007156D8(v26, *(&v26 + 1));

  sub_1007156D8(v19, v21);
  return v15;
}