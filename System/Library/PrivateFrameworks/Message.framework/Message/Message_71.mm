uint64_t sub_1B0C20D6C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1B0E46208();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v20 = *(*(v5 + 48) + (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v20);
      result = sub_1B0E46CB8();
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
      *(*(v8 + 48) + v16) = v20;
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

    v4 = v30;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_1B0C20FB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5858, &qword_1B0ED90A8);
  result = sub_1B0E46208();
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
    v13 = result + 56;
    while (v11)
    {
LABEL_15:
      v16 = *(v6 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](0);
      result = sub_1B0E46CB8();
      v17 = -1 << *(v6 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v13 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v13 + 8 * v19);
          if (v23 != -1)
          {
            v14 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_9;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v18) & ~*(v13 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      v11 &= v11 - 1;
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      ++*(v6 + 16);
    }

    while (1)
    {
      v15 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v15 >= v12)
      {
        break;
      }

      v11 = v8[v15];
      ++v7;
      if (v11)
      {
        v7 = v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v3 + 32);
    if (v24 >= 64)
    {
      bzero((v3 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v24;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1B0C211CC(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 40);
  sub_1B0E46C28();
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      MEMORY[0x1B2728D70](3);
      goto LABEL_14;
    }

    if (a3 == 3)
    {
      MEMORY[0x1B2728D70](4);
      goto LABEL_14;
    }
  }

  else
  {
    if (!a3)
    {
      MEMORY[0x1B2728D70](1);
      goto LABEL_14;
    }

    if (a3 == 1)
    {
      MEMORY[0x1B2728D70](2);
      goto LABEL_14;
    }
  }

  MEMORY[0x1B2728D70](0);
  sub_1B0E46C68();
  if ((~a1 & 0xF000000000000007) != 0)
  {
    ResponseTextCode.hash(into:)(v12, a1);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
LABEL_14:
  sub_1B0E46CB8();
  v9 = -1 << *(a4 + 32);
  result = sub_1B0E460D8();
  *(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v11 = (*(a4 + 48) + 24 * result);
  *v11 = a1;
  v11[1] = a2;
  v11[2] = a3;
  ++*(a4 + 16);
  return result;
}

unint64_t sub_1B0C21330(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v26 = result;
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_39;
  }

  if (a5)
  {
    sub_1B0C2000C(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_1B0C238BC();
      goto LABEL_39;
    }

    sub_1B0C241D4(v9 + 1);
  }

  v11 = *v5;
  v12 = *(*v5 + 40);
  sub_1B0E46C28();
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      MEMORY[0x1B2728D70](3);
      goto LABEL_21;
    }

    if (a3 == 3)
    {
      MEMORY[0x1B2728D70](4);
      goto LABEL_21;
    }

LABEL_15:
    MEMORY[0x1B2728D70](0);
    sub_1B0E46C68();
    if ((~v8 & 0xF000000000000007) != 0)
    {
      ResponseTextCode.hash(into:)(v28, v8);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    goto LABEL_21;
  }

  if (!a3)
  {
    MEMORY[0x1B2728D70](1);
    goto LABEL_21;
  }

  if (a3 != 1)
  {
    goto LABEL_15;
  }

  MEMORY[0x1B2728D70](2);
LABEL_21:
  result = sub_1B0E46CB8();
  v13 = -1 << *(v11 + 32);
  a4 = result & ~v13;
  if (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
  {
    goto LABEL_39;
  }

  v14 = ~v13;
  while (1)
  {
    v15 = (*(v11 + 48) + 24 * a4);
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    if (v18 > 1)
    {
      break;
    }

    if (v18)
    {
      if (v18 != 1)
      {
        goto LABEL_34;
      }

      if (a3 == 1)
      {
        goto LABEL_38;
      }
    }

    else if (!a3)
    {
      goto LABEL_38;
    }

LABEL_24:
    a4 = (a4 + 1) & v14;
    if (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  if (v18 == 2)
  {
    if (a3 == 2)
    {
      goto LABEL_38;
    }

    goto LABEL_24;
  }

  if (v18 == 3)
  {
    if (a3 == 3)
    {
      goto LABEL_38;
    }

    goto LABEL_24;
  }

LABEL_34:
  if (a3 < 4)
  {
    goto LABEL_24;
  }

  sub_1B04420D8(*v15);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = static ResponseText.__derived_struct_equals(_:_:)(v16, v17);
  result = sub_1B0BD1488(v16, v17, v18);
  if ((v19 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_38:
  result = sub_1B0E46B98();
  __break(1u);
LABEL_39:
  v20 = *v25;
  *(*v25 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v21 = (*(v20 + 48) + 24 * a4);
  *v21 = v26;
  v21[1] = a2;
  v21[2] = a3;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

uint64_t sub_1B0C215F0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v262 = *MEMORY[0x1E69E9840];
  v6 = *(result + 48);
  v259 = *(result + 32);
  v260 = v6;
  v261 = *(result + 64);
  v7 = *(result + 16);
  v257 = *result;
  v258 = v7;
  v8 = *(*v3 + 16);
  v9 = *(*v3 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_398;
  }

  if (a3)
  {
    sub_1B0C2017C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1B0C23A24();
      goto LABEL_398;
    }

    sub_1B0C2432C(v8 + 1);
  }

  v233 = v3;
  v235 = *v3;
  v10 = *(*v3 + 40);
  sub_1B0E46C28();
  v12 = *v5;
  v11 = *(v5 + 8);
  v14 = *(v5 + 16);
  v13 = *(v5 + 24);
  v15 = *(v5 + 56);
  if ((v15 & 0x1000000000000000) != 0)
  {
    v16 = *(v5 + 48);
    v249 = *v5;
    v250 = v11;
    v251 = v14;
    v252 = v13;
    v253 = *(v5 + 32);
    v254 = v16;
    v255 = v15 & 0xEFFFFFFFFFFFFFFFLL;
    v256 = *(v5 + 64);
    MEMORY[0x1B2728D70](1);
    sub_1B0C0EF30();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  result = sub_1B0E46CB8();
  v17 = v235;
  v18 = v235 + 56;
  v19 = -1 << *(v235 + 32);
  a2 = result & ~v19;
  if ((*(v235 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v234 = ~v19;
    do
    {
      v21 = (*(v17 + 48) + 80 * a2);
      v244 = *v21;
      v23 = v21[3];
      v22 = v21[4];
      v24 = v21[2];
      v245 = v21[1];
      v246 = v24;
      v247 = v23;
      v248 = v22;
      v25 = *(&v244 + 1);
      result = v244;
      v26 = *(&v245 + 1);
      v27 = v245;
      v28 = *(&v23 + 1);
      if ((*(&v23 + 1) & 0x1000000000000000) != 0)
      {
        v31 = *(v5 + 56);
        if ((v31 & 0x1000000000000000) == 0)
        {
          goto LABEL_14;
        }

        v32 = *(&v248 + 1);
        v34 = *v5;
        v33 = *(v5 + 8);
        v35 = *(v5 + 16);
        v36 = *(v5 + 24);
        v37 = *(v5 + 72);
        v38 = (*(&v248 + 1) >> 59) & 6 | ((*(&v247 + 1) & 0x2000000000000000) != 0);
        if (v38 <= 2)
        {
          if (v38)
          {
            if (v38 == 1)
            {
              if (((v37 >> 59) & 6 | ((v31 & 0x2000000000000000) != 0)) != 1)
              {
                goto LABEL_14;
              }

              v229 = *(&v246 + 1);
              v231 = v246;
              v226 = v247;
              v227 = *(v5 + 32);
              v39 = *(v5 + 48);
              v228 = *(v5 + 40);
              v40 = *(&v244 + 1) >> 62;
              v221 = *(v5 + 64);
              v222 = v248;
              if (*(&v244 + 1) >> 62 == 3)
              {
                v41 = 0;
                if (v244 != __PAIR128__(0xC000000000000000, 0))
                {
                  goto LABEL_100;
                }

                if (v33 >> 62 != 3)
                {
                  goto LABEL_100;
                }

                v41 = 0;
                if (v34 || v33 != 0xC000000000000000)
                {
                  goto LABEL_100;
                }

                goto LABEL_114;
              }

              if (v40 > 1)
              {
                if (v40 == 2)
                {
                  v54 = *(v244 + 16);
                  v53 = *(v244 + 24);
                  v55 = __OFSUB__(v53, v54);
                  v41 = v53 - v54;
                  if (v55)
                  {
                    goto LABEL_414;
                  }
                }

                else
                {
                  v41 = 0;
                }
              }

              else if (v40)
              {
                LODWORD(v41) = DWORD1(v244) - v244;
                if (__OFSUB__(DWORD1(v244), v244))
                {
                  goto LABEL_413;
                }

                v41 = v41;
              }

              else
              {
                v41 = BYTE14(v244);
              }

LABEL_100:
              v62 = v33 >> 62;
              if ((v33 >> 62) > 1)
              {
                if (v62 != 2)
                {
                  if (v41)
                  {
                    goto LABEL_14;
                  }

                  goto LABEL_114;
                }

                v65 = *(v34 + 16);
                v64 = *(v34 + 24);
                v55 = __OFSUB__(v64, v65);
                v63 = v64 - v65;
                if (v55)
                {
                  goto LABEL_406;
                }

                v32 = *(&v248 + 1);
              }

              else if (v62)
              {
                LODWORD(v63) = HIDWORD(v34) - v34;
                if (__OFSUB__(HIDWORD(v34), v34))
                {
                  goto LABEL_404;
                }

                v63 = v63;
              }

              else
              {
                v63 = BYTE6(v33);
              }

              if (v41 != v63)
              {
                goto LABEL_14;
              }

              if (v41 < 1)
              {
LABEL_114:
                v216 = v32;
                v217 = *(v5 + 48);
                v240 = v246;
                v241 = v247;
                v243 = v248;
                v238 = v244;
                v239 = v245;
                v242 = *(&v247 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                v70 = v35;
                v71 = v37;
                sub_1B0BD1224(&v238, v237);
                v72 = v71;
                goto LABEL_115;
              }

              v223 = *(v5 + 24);
              v217 = *(v5 + 48);
              v218 = *(v5 + 16);
              v215 = *(v5 + 72);
              v216 = v32;
              if (v40 > 1)
              {
                if (v40 != 2)
                {
                  *&v237[6] = 0;
                  *v237 = 0;
                  v154 = v33;
                  v155 = v34;
                  sub_1B03B2000(v34, v33);
                  sub_1B0BD6700(&v244, &v238);
                  sub_1B03B2000(v155, v154);
                  sub_1B0AE2440(v237, v155, v154, &v238);
                  sub_1B0391D50(v155, v154);
                  v68 = v155;
                  v69 = v154;
                  goto LABEL_276;
                }

                v209 = *(v244 + 24);
                v211 = *(v244 + 16);
                v98 = *(v5 + 8);
                v99 = *v5;
                sub_1B03B2000(v34, v33);
                sub_1B03B2000(v99, v98);
                sub_1B0BD6700(&v244, &v238);
                sub_1B03B2000(v99, v98);
                v100 = v25 & 0x3FFFFFFFFFFFFFFFLL;
                v102 = v209;
                v101 = v211;
                v103 = v99;
                v104 = v98;
                v105 = v98;
              }

              else
              {
                if (!v40)
                {
                  *v237 = v244;
                  *&v237[8] = WORD4(v244);
                  *&v237[10] = *(&v244 + 10);
                  v66 = v33;
                  v67 = v34;
                  sub_1B03B2000(v34, v33);
                  sub_1B0BD6700(&v244, &v238);
                  sub_1B03B2000(v67, v66);
                  sub_1B0AE2440(v237, v67, v66, &v238);
                  sub_1B0391D50(v67, v66);
                  v68 = v67;
                  v69 = v66;
LABEL_276:
                  sub_1B0391D50(v68, v69);
                  v36 = v223;
                  v70 = v218;
                  v72 = v215;
                  if ((v238 & 1) == 0)
                  {
                    goto LABEL_392;
                  }

LABEL_115:
                  v73 = v26 >> 62;
                  if (v26 >> 62 == 3)
                  {
                    v74 = 0;
                    if (v27)
                    {
                      goto LABEL_232;
                    }

                    if (v26 != 0xC000000000000000)
                    {
                      goto LABEL_232;
                    }

                    if (v36 >> 62 != 3)
                    {
                      goto LABEL_232;
                    }

                    v74 = 0;
                    if (v70 || v36 != 0xC000000000000000)
                    {
                      goto LABEL_232;
                    }
                  }

                  else
                  {
                    if (v73 == 2)
                    {
                      v134 = *(v27 + 16);
                      v133 = *(v27 + 24);
                      v55 = __OFSUB__(v133, v134);
                      v74 = v133 - v134;
                      if (v55)
                      {
                        goto LABEL_424;
                      }
                    }

                    else if (v73 == 1)
                    {
                      LODWORD(v74) = HIDWORD(v27) - v27;
                      if (__OFSUB__(HIDWORD(v27), v27))
                      {
                        goto LABEL_425;
                      }

                      v74 = v74;
                    }

                    else
                    {
                      v74 = BYTE6(v26);
                    }

LABEL_232:
                    v137 = v36 >> 62;
                    if ((v36 >> 62) > 1)
                    {
                      if (v137 != 2)
                      {
                        if (v74)
                        {
                          goto LABEL_392;
                        }

                        goto LABEL_246;
                      }

                      v140 = *(v70 + 16);
                      v139 = *(v70 + 24);
                      v55 = __OFSUB__(v139, v140);
                      v138 = v139 - v140;
                      if (v55)
                      {
                        goto LABEL_418;
                      }
                    }

                    else if (v137)
                    {
                      LODWORD(v138) = HIDWORD(v70) - v70;
                      if (__OFSUB__(HIDWORD(v70), v70))
                      {
                        goto LABEL_417;
                      }

                      v138 = v138;
                    }

                    else
                    {
                      v138 = BYTE6(v36);
                    }

                    if (v74 != v138)
                    {
                      goto LABEL_392;
                    }

                    if (v74 >= 1)
                    {
                      v141 = v72;
                      sub_1B03B2000(v70, v36);
                      v142 = sub_1B0AB8610(v27, v26, v70, v36);
                      v72 = v141;
                      if ((v142 & 1) == 0)
                      {
                        goto LABEL_392;
                      }
                    }
                  }

LABEL_246:
                  v143 = v229 >> 62;
                  v144 = v228 >> 62;
                  if (v229 >> 62 == 3)
                  {
                    v145 = 0;
                    v146 = v231;
                    if (v231)
                    {
                      goto LABEL_318;
                    }

                    if (v229 != 0xC000000000000000)
                    {
                      goto LABEL_318;
                    }

                    if (v228 >> 62 != 3)
                    {
                      goto LABEL_318;
                    }

                    v145 = 0;
                    if (v227 || v228 != 0xC000000000000000)
                    {
                      goto LABEL_318;
                    }
                  }

                  else
                  {
                    v146 = v231;
                    if (v143 == 2)
                    {
                      v175 = *(v231 + 16);
                      v174 = *(v231 + 24);
                      v55 = __OFSUB__(v174, v175);
                      v145 = v174 - v175;
                      if (v55)
                      {
                        goto LABEL_436;
                      }
                    }

                    else if (v143 == 1)
                    {
                      LODWORD(v145) = HIDWORD(v231) - v231;
                      if (__OFSUB__(HIDWORD(v231), v231))
                      {
                        goto LABEL_437;
                      }

                      v145 = v145;
                    }

                    else
                    {
                      v145 = BYTE6(v229);
                    }

LABEL_318:
                    if (v144 > 1)
                    {
                      if (v144 != 2)
                      {
                        if (v145)
                        {
                          goto LABEL_392;
                        }

                        goto LABEL_332;
                      }

                      v178 = *(v227 + 16);
                      v177 = *(v227 + 24);
                      v55 = __OFSUB__(v177, v178);
                      v176 = v177 - v178;
                      if (v55)
                      {
                        goto LABEL_430;
                      }
                    }

                    else if (v144)
                    {
                      LODWORD(v176) = HIDWORD(v227) - v227;
                      if (__OFSUB__(HIDWORD(v227), v227))
                      {
                        goto LABEL_431;
                      }

                      v176 = v176;
                    }

                    else
                    {
                      v176 = BYTE6(v228);
                    }

                    if (v145 != v176)
                    {
                      goto LABEL_392;
                    }

                    if (v145 >= 1)
                    {
                      v179 = v72;
                      sub_1B03B2000(v227, v228);
                      v180 = sub_1B0AB8610(v146, v229, v227, v228);
                      v72 = v179;
                      if ((v180 & 1) == 0)
                      {
                        goto LABEL_392;
                      }
                    }
                  }

LABEL_332:
                  v181 = v28 & 0xCFFFFFFFFFFFFFFFLL;
                  v182 = v28 >> 62;
                  v183 = v31 >> 62;
                  if (v28 >> 62 == 3)
                  {
                    v184 = 0;
                    v185 = v226;
                    if (v226)
                    {
                      goto LABEL_355;
                    }

                    if (v181 != 0xC000000000000000)
                    {
                      goto LABEL_355;
                    }

                    if (v31 >> 62 != 3)
                    {
                      goto LABEL_355;
                    }

                    v184 = 0;
                    if (v217 || (v31 & 0xCFFFFFFFFFFFFFFFLL) != 0xC000000000000000)
                    {
                      goto LABEL_355;
                    }
                  }

                  else
                  {
                    if (v182 == 2)
                    {
                      v185 = v226;
                      v188 = *(v226 + 16);
                      v187 = *(v226 + 24);
                      v55 = __OFSUB__(v187, v188);
                      v184 = v187 - v188;
                      if (v55)
                      {
                        goto LABEL_444;
                      }
                    }

                    else if (v182 == 1)
                    {
                      v185 = v226;
                      LODWORD(v184) = HIDWORD(v226) - v226;
                      if (__OFSUB__(HIDWORD(v226), v226))
                      {
                        __break(1u);
LABEL_444:
                        __break(1u);
LABEL_445:
                        __break(1u);
LABEL_446:
                        __break(1u);
LABEL_447:
                        __break(1u);
LABEL_448:
                        __break(1u);
                        sub_1B0BD2F90(v5);
                        sub_1B0BD2F90(v5);
                        v240 = v259;
                        v241 = v260;
                        v243 = v261;
                        v238 = v257;
                        v239 = v258;
                        v242 = *(&v260 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                        sub_1B0BE8F74(&v238);

                        __break(1u);
LABEL_449:
                        sub_1B0BD2F90(&v244);
LABEL_450:
                        result = sub_1B0E46B98();
                        __break(1u);
                        return result;
                      }

                      v184 = v184;
                    }

                    else
                    {
                      v184 = BYTE6(v28);
                      v185 = v226;
                    }

LABEL_355:
                    if (v183 > 1)
                    {
                      if (v183 != 2)
                      {
                        if (v184)
                        {
                          goto LABEL_392;
                        }

                        goto LABEL_369;
                      }

                      v191 = *(v217 + 16);
                      v190 = *(v217 + 24);
                      v55 = __OFSUB__(v190, v191);
                      v189 = v190 - v191;
                      if (v55)
                      {
                        goto LABEL_441;
                      }
                    }

                    else if (v183)
                    {
                      LODWORD(v189) = HIDWORD(v217) - v217;
                      if (__OFSUB__(HIDWORD(v217), v217))
                      {
                        goto LABEL_442;
                      }

                      v189 = v189;
                    }

                    else
                    {
                      v189 = BYTE6(v31);
                    }

                    if (v184 != v189)
                    {
                      goto LABEL_392;
                    }

                    if (v184 >= 1)
                    {
                      v192 = v72;
                      sub_1B03B2000(v217, v31 & 0xCFFFFFFFFFFFFFFFLL);
                      v193 = sub_1B0AB8610(v185, v181, v217, v31 & 0xCFFFFFFFFFFFFFFFLL);
                      v72 = v192;
                      if ((v193 & 1) == 0)
                      {
                        goto LABEL_392;
                      }
                    }
                  }

LABEL_369:
                  v36 = v72 & 0xCFFFFFFFFFFFFFFFLL;
                  v194 = v216 >> 62;
                  v195 = v72 >> 62;
                  if (v216 >> 62 == 3)
                  {
                    v97 = 0;
                    if (!v222 && (v216 & 0xCFFFFFFFFFFFFFFFLL) == 0xC000000000000000 && v72 >> 62 == 3)
                    {
                      v97 = 0;
                      if (!v221 && v36 == 0xC000000000000000)
                      {
                        goto LABEL_449;
                      }
                    }
                  }

                  else if (v194 == 2)
                  {
                    v197 = *(v222 + 16);
                    v196 = *(v222 + 24);
                    v55 = __OFSUB__(v196, v197);
                    v97 = v196 - v197;
                    if (v55)
                    {
                      goto LABEL_448;
                    }
                  }

                  else if (v194 == 1)
                  {
                    LODWORD(v97) = HIDWORD(v222) - v222;
                    if (__OFSUB__(HIDWORD(v222), v222))
                    {
                      goto LABEL_447;
                    }

                    v97 = v97;
                  }

                  else
                  {
                    v97 = BYTE6(v216);
                  }

                  if (v195 > 1)
                  {
                    if (v195 != 2)
                    {
LABEL_391:
                      if (!v97)
                      {
                        goto LABEL_449;
                      }

                      goto LABEL_392;
                    }

                    v200 = *(v221 + 16);
                    v199 = *(v221 + 24);
                    v55 = __OFSUB__(v199, v200);
                    v198 = v199 - v200;
                    if (v55)
                    {
                      goto LABEL_445;
                    }
                  }

                  else if (v195)
                  {
                    LODWORD(v198) = HIDWORD(v221) - v221;
                    if (__OFSUB__(HIDWORD(v221), v221))
                    {
                      goto LABEL_446;
                    }

                    v198 = v198;
                  }

                  else
                  {
                    v198 = BYTE6(v72);
                  }

                  if (v97 != v198)
                  {
                    goto LABEL_392;
                  }

                  if (v97 < 1)
                  {
                    goto LABEL_449;
                  }

                  v150 = v221;
                  sub_1B03B2000(v221, v72 & 0xCFFFFFFFFFFFFFFFLL);
                  v151 = v222;
                  v152 = v216 & 0xCFFFFFFFFFFFFFFFLL;
LABEL_270:
                  v124 = sub_1B0AB8610(v151, v152, v150, v36);
                  result = sub_1B0BD2F90(&v244);
                  goto LABEL_345;
                }

                v210 = v244;
                v212 = v244 >> 32;
                if (v244 >> 32 < v244)
                {
                  goto LABEL_429;
                }

                v153 = *(v5 + 8);
                v99 = *v5;
                sub_1B03B2000(v34, v33);
                sub_1B03B2000(v99, v153);
                sub_1B0BD6700(&v244, &v238);
                sub_1B03B2000(v99, v153);
                v100 = v25 & 0x3FFFFFFFFFFFFFFFLL;
                v101 = v210;
                v102 = v212;
                v103 = v99;
                v105 = v153;
                v104 = v153;
              }

              v213 = sub_1B0AB87A0(v101, v102, v100, v103, v104);
              sub_1B0391D50(v99, v105);
              sub_1B0391D50(v99, v105);
              sub_1B0391D50(v99, v105);
              v36 = v223;
              v70 = v218;
              v72 = v215;
              if ((v213 & 1) == 0)
              {
                goto LABEL_392;
              }

              goto LABEL_115;
            }

            if (((v37 >> 59) & 6 | ((v31 & 0x2000000000000000) != 0)) != 2)
            {
              goto LABEL_14;
            }

            v46 = *(&v244 + 1) >> 62;
            if (*(&v244 + 1) >> 62 == 3)
            {
              v47 = 0;
              if (v244 == __PAIR128__(0xC000000000000000, 0) && v33 >> 62 == 3)
              {
                v47 = 0;
                if (!v34 && v33 == 0xC000000000000000)
                {
                  goto LABEL_450;
                }
              }
            }

            else if (v46 > 1)
            {
              if (v46 == 2)
              {
                v57 = *(v244 + 16);
                v56 = *(v244 + 24);
                v55 = __OFSUB__(v56, v57);
                v47 = v56 - v57;
                if (v55)
                {
                  goto LABEL_412;
                }
              }

              else
              {
                v47 = 0;
              }
            }

            else if (v46)
            {
              LODWORD(v47) = DWORD1(v244) - v244;
              if (__OFSUB__(DWORD1(v244), v244))
              {
                goto LABEL_410;
              }

              v47 = v47;
            }

            else
            {
              v47 = BYTE14(v244);
            }

            v75 = v33 >> 62;
            if ((v33 >> 62) > 1)
            {
              if (v75 != 2)
              {
                if (!v47)
                {
                  goto LABEL_450;
                }

                goto LABEL_14;
              }

              v78 = *(v34 + 16);
              v77 = *(v34 + 24);
              v55 = __OFSUB__(v77, v78);
              v76 = v77 - v78;
              if (v55)
              {
                goto LABEL_401;
              }
            }

            else if (v75)
            {
              LODWORD(v76) = HIDWORD(v34) - v34;
              if (__OFSUB__(HIDWORD(v34), v34))
              {
                goto LABEL_402;
              }

              v76 = v76;
            }

            else
            {
              v76 = BYTE6(v33);
            }

            if (v47 != v76)
            {
              goto LABEL_14;
            }

            if (v47 < 1)
            {
              goto LABEL_450;
            }

            if (v46 > 1)
            {
              v83 = *v5;
              v84 = *(v5 + 8);
              if (v46 == 2)
              {
                v85 = *(v244 + 16);
                v86 = *(v244 + 24);
LABEL_212:
                sub_1B0BD6700(v5, &v238);
                sub_1B0BD6700(v5, &v238);
                sub_1B0BD6700(&v244, &v238);
                sub_1B0BD6700(v5, &v238);
                v124 = sub_1B0AB87A0(v85, v86, v25 & 0x3FFFFFFFFFFFFFFFLL, v83, v84);
                sub_1B0BD2F90(v5);
                sub_1B0BD2F90(&v244);
                sub_1B0BD2F90(v5);
                result = sub_1B0BD2F90(v5);
                goto LABEL_345;
              }

              *&v237[6] = 0;
              *v237 = 0;
              sub_1B0BD6700(v5, &v238);
              sub_1B0BD6700(&v244, &v238);
              sub_1B0BD6700(v5, &v238);
              v81 = v83;
              v82 = v84;
            }

            else
            {
              if (v46)
              {
                v85 = v244;
                v86 = v244 >> 32;
                if (v244 >> 32 < v244)
                {
                  goto LABEL_421;
                }

                v83 = *v5;
                v84 = *(v5 + 8);
                goto LABEL_212;
              }

              *v237 = v244;
              *&v237[8] = DWORD2(v244);
              *&v237[12] = WORD6(v244);
              v79 = v33;
              v80 = v34;
              sub_1B0BD6700(v5, &v238);
              sub_1B0BD6700(&v244, &v238);
              sub_1B0BD6700(v5, &v238);
              v81 = v80;
              v82 = v79;
            }

            sub_1B0AE2440(v237, v81, v82, &v238);
            sub_1B0BD2F90(&v244);
            sub_1B0BD2F90(v5);
            result = sub_1B0BD2F90(v5);
            v125 = v238;
            goto LABEL_349;
          }

          if ((v37 >> 59) & 6 | ((v31 & 0x2000000000000000) != 0))
          {
            goto LABEL_14;
          }

          v44 = *(&v244 + 1) >> 62;
          if (*(&v244 + 1) >> 62 == 3)
          {
            v45 = 0;
            if (v244 != __PAIR128__(0xC000000000000000, 0))
            {
              goto LABEL_183;
            }

            if (v33 >> 62 != 3)
            {
              goto LABEL_183;
            }

            v45 = 0;
            if (v34 || v33 != 0xC000000000000000)
            {
              goto LABEL_183;
            }

            goto LABEL_199;
          }

          if (v44 > 1)
          {
            if (v44 == 2)
            {
              v61 = *(v244 + 16);
              v60 = *(v244 + 24);
              v55 = __OFSUB__(v60, v61);
              v45 = v60 - v61;
              if (v55)
              {
                goto LABEL_420;
              }
            }

            else
            {
              v45 = 0;
            }
          }

          else if (v44)
          {
            LODWORD(v45) = DWORD1(v244) - v244;
            if (__OFSUB__(DWORD1(v244), v244))
            {
              goto LABEL_419;
            }

            v45 = v45;
          }

          else
          {
            v45 = BYTE14(v244);
          }

LABEL_183:
          v113 = v33 >> 62;
          if ((v33 >> 62) > 1)
          {
            if (v113 != 2)
            {
              if (v45)
              {
                goto LABEL_14;
              }

              goto LABEL_199;
            }

            v116 = *(v34 + 16);
            v115 = *(v34 + 24);
            v55 = __OFSUB__(v115, v116);
            v114 = v115 - v116;
            if (v55)
            {
              goto LABEL_408;
            }
          }

          else if (v113)
          {
            LODWORD(v114) = HIDWORD(v34) - v34;
            if (__OFSUB__(HIDWORD(v34), v34))
            {
              goto LABEL_407;
            }

            v114 = v114;
          }

          else
          {
            v114 = BYTE6(v33);
          }

          if (v45 != v114)
          {
            goto LABEL_14;
          }

          if (v45 >= 1)
          {
            if (v44 > 1)
            {
              v128 = *v5;
              v232 = *(v5 + 8);
              v220 = *(v5 + 16);
              v225 = *(v5 + 24);
              if (v44 == 2)
              {
                v129 = *(v244 + 16);
                v230 = *(v244 + 24);
                v238 = v244;
                v239 = v245;
                v240 = v246;
                v241 = v247;
                v243 = v248;
                v242 = *(&v247 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                sub_1B0BD1224(&v238, v237);
                v130 = sub_1B0E42A98();
                if (v130)
                {
                  v131 = sub_1B0E42AC8();
                  if (__OFSUB__(v129, v131))
                  {
                    goto LABEL_439;
                  }

                  v130 += v129 - v131;
                }

                if (__OFSUB__(v230, v129))
                {
                  goto LABEL_435;
                }

                sub_1B0E42AB8();
                v132 = v130;
              }

              else
              {
                memset(v236, 0, 14);
                v240 = v246;
                v241 = v247;
                v243 = v248;
                v238 = v244;
                v239 = v245;
                v242 = *(&v247 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                sub_1B0BD1224(&v238, v237);
                v132 = v236;
              }

              v173 = v128;
            }

            else
            {
              v214 = *v5;
              if (!v44)
              {
                v117 = *(v5 + 16);
                v118 = *(v5 + 24);
                v236[0] = v244;
                LOWORD(v236[1]) = WORD4(v244);
                *(&v236[1] + 2) = *(&v244 + 10);
                v241 = v247;
                v243 = v248;
                v240 = v246;
                v238 = v244;
                v239 = v245;
                v242 = *(&v247 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                v119 = v33;
                sub_1B0BD1224(&v238, v237);
                sub_1B0AE2440(v236, v214, v119, v237);
                v36 = v118;
                v120 = v117;
                if ((v237[0] & 1) == 0)
                {
                  goto LABEL_392;
                }

                goto LABEL_200;
              }

              v232 = *(v5 + 8);
              v220 = *(v5 + 16);
              v225 = *(v5 + 24);
              v170 = v244;
              if (v244 >> 32 < v244)
              {
                goto LABEL_434;
              }

              v240 = v246;
              v241 = v247;
              v243 = v248;
              v238 = v244;
              v239 = v245;
              v242 = *(&v247 + 1) & 0xEFFFFFFFFFFFFFFFLL;
              sub_1B0BD1224(&v238, v237);
              v171 = sub_1B0E42A98();
              if (v171)
              {
                v172 = sub_1B0E42AC8();
                if (__OFSUB__(v170, v172))
                {
                  goto LABEL_440;
                }

                v171 += v170 - v172;
              }

              sub_1B0E42AB8();
              v132 = v171;
              v173 = v214;
            }

            sub_1B0AE2440(v132, v173, v232, v237);
            v36 = v225;
            v120 = v220;
            if ((v237[0] & 1) == 0)
            {
              goto LABEL_392;
            }

            goto LABEL_200;
          }

LABEL_199:
          v240 = v246;
          v241 = v247;
          v243 = v248;
          v238 = v244;
          v239 = v245;
          v242 = *(&v247 + 1) & 0xEFFFFFFFFFFFFFFFLL;
          v121 = v35;
          sub_1B0BD1224(&v238, v237);
          v120 = v121;
LABEL_200:
          v122 = v26 >> 62;
          if (v26 >> 62 == 3)
          {
            v123 = 0;
            if (!v27 && v26 == 0xC000000000000000 && v36 >> 62 == 3)
            {
              v123 = 0;
              if (!v120 && v36 == 0xC000000000000000)
              {
                goto LABEL_449;
              }
            }
          }

          else if (v122 > 1)
          {
            if (v122 == 2)
            {
              v127 = *(v27 + 16);
              v126 = *(v27 + 24);
              v55 = __OFSUB__(v126, v127);
              v123 = v126 - v127;
              if (v55)
              {
                goto LABEL_432;
              }
            }

            else
            {
              v123 = 0;
            }
          }

          else if (v122)
          {
            LODWORD(v123) = HIDWORD(v27) - v27;
            if (__OFSUB__(HIDWORD(v27), v27))
            {
              goto LABEL_433;
            }

            v123 = v123;
          }

          else
          {
            v123 = BYTE6(v26);
          }

          v162 = v36 >> 62;
          if ((v36 >> 62) > 1)
          {
            if (v162 != 2)
            {
              if (!v123)
              {
                goto LABEL_449;
              }

LABEL_392:
              result = sub_1B0BD2F90(&v244);
              v3 = v233;
              v20 = v234;
              v18 = v235 + 56;
              v17 = v235;
              goto LABEL_14;
            }

            v165 = *(v120 + 16);
            v164 = *(v120 + 24);
            v55 = __OFSUB__(v164, v165);
            v163 = v164 - v165;
            if (v55)
            {
              goto LABEL_422;
            }
          }

          else if (v162)
          {
            LODWORD(v163) = HIDWORD(v120) - v120;
            if (__OFSUB__(HIDWORD(v120), v120))
            {
              goto LABEL_423;
            }

            v163 = v163;
          }

          else
          {
            v163 = BYTE6(v36);
          }

          if (v123 != v163)
          {
            goto LABEL_392;
          }

          if (v123 < 1)
          {
            goto LABEL_449;
          }

          if (v122 > 1)
          {
            if (v122 == 2)
            {
              v167 = v36;
              v168 = *(v27 + 16);
              v169 = *(v27 + 24);
              goto LABEL_344;
            }

            *(&v238 + 6) = 0;
            *&v238 = 0;
            v166 = v120;
            sub_1B03B2000(v120, v36);
            sub_1B03B2000(v166, v36);
          }

          else
          {
            if (v122)
            {
              v167 = v36;
              v168 = v27;
              v169 = v27 >> 32;
              if (v27 >> 32 < v27)
              {
                goto LABEL_438;
              }

LABEL_344:
              v186 = v120;
              sub_1B03B2000(v120, v167);
              sub_1B03B2000(v186, v167);
              sub_1B03B2000(v186, v167);
              v124 = sub_1B0AB87A0(v168, v169, v26 & 0x3FFFFFFFFFFFFFFFLL, v186, v167);
              sub_1B0391D50(v186, v167);
              sub_1B0BD2F90(&v244);
              sub_1B0391D50(v186, v167);
              result = sub_1B0391D50(v186, v167);
LABEL_345:
              v3 = v233;
              v20 = v234;
              v18 = v235 + 56;
              v17 = v235;
              if (v124)
              {
                goto LABEL_450;
              }

              goto LABEL_14;
            }

            *&v238 = v27;
            WORD4(v238) = v26;
            BYTE10(v238) = BYTE2(v26);
            BYTE11(v238) = BYTE3(v26);
            BYTE12(v238) = BYTE4(v26);
            BYTE13(v238) = BYTE5(v26);
            v166 = v120;
            sub_1B03B2000(v120, v36);
            sub_1B03B2000(v166, v36);
          }

          sub_1B0AE2440(&v238, v166, v36, v237);
          sub_1B0BD2F90(&v244);
          sub_1B0391D50(v166, v36);
          result = sub_1B0391D50(v166, v36);
          v125 = v237[0];
LABEL_349:
          v3 = v233;
          v20 = v234;
          v18 = v235 + 56;
          v17 = v235;
          if (v125)
          {
            goto LABEL_450;
          }

          goto LABEL_14;
        }

        if (v38 > 4)
        {
          v42 = (v31 >> 61) & 1;
          v43 = v37 >> 59;
          if (v38 == 5)
          {
            if ((v43 & 6 | v42) != 5)
            {
              goto LABEL_14;
            }
          }

          else if ((v43 & 6 | v42) != 6)
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (v38 != 3)
          {
            if (((v37 >> 59) & 6 | ((v31 & 0x2000000000000000) != 0)) != 4)
            {
              goto LABEL_14;
            }

            v48 = *(&v244 + 1) >> 62;
            v49 = v33 >> 62;
            if (*(&v244 + 1) >> 62 == 3)
            {
              v50 = 0;
              if (v244 != __PAIR128__(0xC000000000000000, 0))
              {
                goto LABEL_148;
              }

              if (v33 >> 62 != 3)
              {
                goto LABEL_148;
              }

              v50 = 0;
              if (v34 || v33 != 0xC000000000000000)
              {
                goto LABEL_148;
              }

              goto LABEL_164;
            }

            if (v48 > 1)
            {
              if (v48 == 2)
              {
                v59 = *(v244 + 16);
                v58 = *(v244 + 24);
                v55 = __OFSUB__(v58, v59);
                v50 = v58 - v59;
                if (v55)
                {
                  goto LABEL_411;
                }
              }

              else
              {
                v50 = 0;
              }
            }

            else if (v48)
            {
              LODWORD(v50) = DWORD1(v244) - v244;
              if (__OFSUB__(DWORD1(v244), v244))
              {
                goto LABEL_409;
              }

              v50 = v50;
            }

            else
            {
              v50 = BYTE14(v244);
            }

LABEL_148:
            if (v49 > 1)
            {
              if (v49 != 2)
              {
                if (v50)
                {
                  goto LABEL_14;
                }

                goto LABEL_164;
              }

              v89 = *(v34 + 16);
              v88 = *(v34 + 24);
              v55 = __OFSUB__(v88, v89);
              v87 = v88 - v89;
              if (v55)
              {
                goto LABEL_405;
              }
            }

            else if (v49)
            {
              LODWORD(v87) = HIDWORD(v34) - v34;
              if (__OFSUB__(HIDWORD(v34), v34))
              {
                goto LABEL_403;
              }

              v87 = v87;
            }

            else
            {
              v87 = BYTE6(v33);
            }

            if (v50 != v87)
            {
              goto LABEL_14;
            }

            if (v50 >= 1)
            {
              v224 = *(v5 + 24);
              if (v48 > 1)
              {
                v219 = *(v5 + 16);
                if (v48 != 2)
                {
                  *&v237[6] = 0;
                  *v237 = 0;
                  v160 = v33;
                  v161 = v34;
                  sub_1B03B2000(v34, v33);
                  sub_1B0BD6700(&v244, &v238);
                  sub_1B03B2000(v161, v160);
                  sub_1B0AE2440(v237, v161, v160, &v238);
                  sub_1B0391D50(v161, v160);
                  sub_1B0391D50(v161, v160);
                  v36 = v224;
                  v93 = v219;
                  if ((v238 & 1) == 0)
                  {
                    goto LABEL_392;
                  }

                  goto LABEL_165;
                }

                v106 = *(v244 + 16);
                v107 = *(v244 + 24);
                v108 = *(v5 + 8);
                v109 = *v5;
                sub_1B03B2000(v34, v33);
                sub_1B03B2000(v109, v108);
                sub_1B0BD6700(&v244, &v238);
                sub_1B03B2000(v109, v108);
                v110 = sub_1B0AB87A0(v106, v107, v25 & 0x3FFFFFFFFFFFFFFFLL, v109, v108);
                sub_1B0391D50(v109, v108);
                sub_1B0391D50(v109, v108);
                v111 = v109;
                v112 = v108;
              }

              else
              {
                if (!v48)
                {
                  v90 = *(v5 + 16);
                  *v237 = v244;
                  *&v237[8] = WORD4(v244);
                  *&v237[10] = *(&v244 + 10);
                  v91 = v33;
                  v92 = v34;
                  sub_1B03B2000(v34, v33);
                  sub_1B0BD6700(&v244, &v238);
                  sub_1B03B2000(v92, v91);
                  sub_1B0AE2440(v237, v92, v91, &v238);
                  sub_1B0391D50(v92, v91);
                  sub_1B0391D50(v92, v91);
                  v36 = v224;
                  v93 = v90;
                  if ((v238 & 1) == 0)
                  {
                    goto LABEL_392;
                  }

                  goto LABEL_165;
                }

                v219 = *(v5 + 16);
                v156 = v244;
                v157 = v244 >> 32;
                if (v244 >> 32 < v244)
                {
                  goto LABEL_428;
                }

                v158 = *(v5 + 8);
                v159 = *v5;
                sub_1B03B2000(v34, v33);
                sub_1B03B2000(v159, v158);
                sub_1B0BD6700(&v244, &v238);
                sub_1B03B2000(v159, v158);
                v110 = sub_1B0AB87A0(v156, v157, v25 & 0x3FFFFFFFFFFFFFFFLL, v159, v158);
                sub_1B0391D50(v159, v158);
                sub_1B0391D50(v159, v158);
                v111 = v159;
                v112 = v158;
              }

              sub_1B0391D50(v111, v112);
              v36 = v224;
              v93 = v219;
              if ((v110 & 1) == 0)
              {
                goto LABEL_392;
              }

              goto LABEL_165;
            }

LABEL_164:
            v240 = v246;
            v241 = v247;
            v243 = v248;
            v238 = v244;
            v239 = v245;
            v242 = *(&v247 + 1) & 0xEFFFFFFFFFFFFFFFLL;
            v94 = v35;
            sub_1B0BD1224(&v238, v237);
            v93 = v94;
LABEL_165:
            v95 = v26 >> 62;
            v96 = v36 >> 62;
            if (v26 >> 62 == 3)
            {
              v97 = 0;
              if (!v27 && v26 == 0xC000000000000000 && v36 >> 62 == 3)
              {
                v97 = 0;
                if (!v93 && v36 == 0xC000000000000000)
                {
                  goto LABEL_449;
                }
              }
            }

            else if (v95 == 2)
            {
              v136 = *(v27 + 16);
              v135 = *(v27 + 24);
              v55 = __OFSUB__(v135, v136);
              v97 = v135 - v136;
              if (v55)
              {
                goto LABEL_426;
              }
            }

            else if (v95 == 1)
            {
              LODWORD(v97) = HIDWORD(v27) - v27;
              if (__OFSUB__(HIDWORD(v27), v27))
              {
                goto LABEL_427;
              }

              v97 = v97;
            }

            else
            {
              v97 = BYTE6(v26);
            }

            if (v96 > 1)
            {
              if (v96 != 2)
              {
                goto LABEL_391;
              }

              v149 = *(v93 + 16);
              v148 = *(v93 + 24);
              v55 = __OFSUB__(v148, v149);
              v147 = v148 - v149;
              if (v55)
              {
                goto LABEL_415;
              }
            }

            else if (v96)
            {
              LODWORD(v147) = HIDWORD(v93) - v93;
              if (__OFSUB__(HIDWORD(v93), v93))
              {
                goto LABEL_416;
              }

              v147 = v147;
            }

            else
            {
              v147 = BYTE6(v36);
            }

            if (v97 != v147)
            {
              goto LABEL_392;
            }

            if (v97 < 1)
            {
              goto LABEL_449;
            }

            v150 = v93;
            sub_1B03B2000(v93, v36);
            v151 = v27;
            v152 = v26;
            goto LABEL_270;
          }

          if (((v37 >> 59) & 6 | ((v31 & 0x2000000000000000) != 0)) != 3)
          {
            goto LABEL_14;
          }
        }

        if (v244 == __PAIR128__(v33, v34) || (v51 = *(v5 + 16), v52 = *v5, result = sub_1B0E46A78(), v35 = v51, v20 = v234, v18 = v235 + 56, v17 = v235, (result & 1) != 0))
        {
          if (v27 == v35 && v26 == v36)
          {
            goto LABEL_450;
          }

          goto LABEL_13;
        }
      }

      else if ((*(v5 + 63) & 0x10) == 0)
      {
        v29 = *(v5 + 16);
        v30 = *(v5 + 24);
        if (v244 == *v5 || (result = sub_1B0E46A78(), v20 = v234, v18 = v235 + 56, v17 = v235, (result & 1) != 0))
        {
          if (v27 == v29 && v26 == v30)
          {
            goto LABEL_450;
          }

LABEL_13:
          result = sub_1B0E46A78();
          v20 = v234;
          v18 = v235 + 56;
          v17 = v235;
          if (result)
          {
            goto LABEL_450;
          }
        }
      }

LABEL_14:
      a2 = (a2 + 1) & v20;
    }

    while (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_398:
  v201 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v202 = (*(v201 + 48) + 80 * a2);
  *v202 = *v5;
  v203 = *(v5 + 16);
  v204 = *(v5 + 32);
  v205 = *(v5 + 64);
  v202[3] = *(v5 + 48);
  v202[4] = v205;
  v202[1] = v203;
  v202[2] = v204;
  v206 = *(v201 + 16);
  v55 = __OFADD__(v206, 1);
  v207 = v206 + 1;
  if (v55)
  {
    __break(1u);
LABEL_401:
    __break(1u);
LABEL_402:
    __break(1u);
LABEL_403:
    __break(1u);
LABEL_404:
    __break(1u);
LABEL_405:
    __break(1u);
LABEL_406:
    __break(1u);
LABEL_407:
    __break(1u);
LABEL_408:
    __break(1u);
LABEL_409:
    __break(1u);
LABEL_410:
    __break(1u);
LABEL_411:
    __break(1u);
LABEL_412:
    __break(1u);
LABEL_413:
    __break(1u);
LABEL_414:
    __break(1u);
LABEL_415:
    __break(1u);
LABEL_416:
    __break(1u);
LABEL_417:
    __break(1u);
LABEL_418:
    __break(1u);
LABEL_419:
    __break(1u);
LABEL_420:
    __break(1u);
LABEL_421:
    __break(1u);
LABEL_422:
    __break(1u);
LABEL_423:
    __break(1u);
LABEL_424:
    __break(1u);
LABEL_425:
    __break(1u);
LABEL_426:
    __break(1u);
LABEL_427:
    __break(1u);
LABEL_428:
    __break(1u);
LABEL_429:
    __break(1u);
LABEL_430:
    __break(1u);
LABEL_431:
    __break(1u);
LABEL_432:
    __break(1u);
LABEL_433:
    __break(1u);
LABEL_434:
    __break(1u);
LABEL_435:
    __break(1u);
LABEL_436:
    __break(1u);
LABEL_437:
    __break(1u);
LABEL_438:
    __break(1u);
LABEL_439:
    __break(1u);
LABEL_440:
    __break(1u);
LABEL_441:
    __break(1u);
LABEL_442:
    __break(1u);
  }

  *(v201 + 16) = v207;
  v208 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C231B0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B0C20610(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1B0C23BAC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1B0C24814(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1B0E46C28();
  sub_1B0E46C88();
  result = sub_1B0E46CB8();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 4 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B0E46B98();
  __break(1u);
  return result;
}

uint64_t sub_1B0C232FC(uint64_t result, uint64_t a2, unint64_t a3, char a4, unint64_t a5, char a6)
{
  v7 = v6;
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a6)
  {
    sub_1B0C20860(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_1B0C23CEC();
      goto LABEL_23;
    }

    sub_1B0C24A34(v12 + 1);
  }

  v14 = *v6;
  v15 = *(*v6 + 40);
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1B0E46C68();
  if ((a4 & 1) == 0)
  {
    MEMORY[0x1B2728DB0](a3 >> 14);
  }

  result = sub_1B0E46CB8();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = result & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    do
    {
      v20 = v19 + 32 * a5;
      result = *v20;
      v21 = *(v20 + 16);
      v22 = *(v20 + 24);
      v23 = *v20 == v11 && *(v20 + 8) == a2;
      if (v23 || (result = sub_1B0E46A78(), (result & 1) != 0))
      {
        if (v22)
        {
          if (a4)
          {
            goto LABEL_22;
          }
        }

        else if ((a4 & 1) == 0 && !((v21 ^ a3) >> 14))
        {
LABEL_22:
          result = sub_1B0E46B98();
          __break(1u);
          break;
        }
      }

      a5 = (a5 + 1) & v18;
    }

    while (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_23:
  v24 = *v7;
  *(*v7 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v25 = *(v24 + 48) + 32 * a5;
  *v25 = v11;
  *(v25 + 8) = a2;
  *(v25 + 16) = a3;
  *(v25 + 24) = a4 & 1;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

uint64_t sub_1B0C234F0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B0C20B1C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1B0C23E58();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1B0C24CC8(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v4);
  result = sub_1B0E46CB8();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B0E46B98();
  __break(1u);
  return result;
}

uint64_t sub_1B0C2363C(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v6 = result;
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B0C20D6C(v7 + 1, a4, a5);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a2;
      result = sub_1B0C23F98(a4, a5);
      a2 = v9;
      goto LABEL_12;
    }

    sub_1B0C24EE8(v7 + 1, a4, a5);
  }

  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v6);
  result = sub_1B0E46CB8();
  v12 = -1 << *(v10 + 32);
  a2 = result & ~v12;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v10 + 48) + a2) != v6)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v6;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B0E46B98();
  __break(1u);
  return result;
}

unint64_t sub_1B0C237AC(unint64_t result, char a2)
{
  v3 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v4 <= v3 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_1B0C20FB4(v3 + 1);
      goto LABEL_8;
    }

    if (v4 <= v3)
    {
      sub_1B0C25100(v3 + 1);
LABEL_8:
      v6 = *v2;
      v7 = *(*v2 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](0);
      result = sub_1B0E46CB8() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = result;
    sub_1B0C240C8();
    result = v5;
  }

LABEL_9:
  v8 = *v2;
  *(*v2 + 8 * (result >> 6) + 56) |= 1 << result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (!v10)
  {
    *(v8 + 16) = v11;
    return result;
  }

  __break(1u);
LABEL_12:
  result = sub_1B0E46B98();
  __break(1u);
  return result;
}

void *sub_1B0C238BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5830, &qword_1B0ED9080);
  v2 = *v0;
  v3 = sub_1B0E461F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v20;
        v22[2] = v21;
        result = sub_1B0BD67B0(v19, v20, v21);
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1B0C23A24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5848, &qword_1B0ED9098);
  v2 = *v0;
  v3 = sub_1B0E461F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 80 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = v18[4];
        v23[3] = v18[3];
        v23[4] = v21;
        v23[0] = *v18;
        v23[1] = v20;
        v23[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x50uLL);
        result = sub_1B0BD6700(v23, &v22);
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1B0C23BAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E54B8, ":&\t");
  v2 = *v0;
  v3 = sub_1B0E461F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1B0C23CEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5568, &qword_1B0ED2730);
  v2 = *v0;
  v3 = sub_1B0E461F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        LOBYTE(v18) = *(v18 + 24);
        v22 = *(v4 + 48) + v17;
        *v22 = v20;
        *(v22 + 8) = v19;
        *(v22 + 16) = v21;
        *(v22 + 24) = v18;
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1B0C23E58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5850, &qword_1B0ED90A0);
  v2 = *v0;
  v3 = sub_1B0E461F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1B0C23F98(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1B0E461F8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1B0C240C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5858, &qword_1B0ED90A8);
  v2 = *v0;
  v3 = sub_1B0E461F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
LABEL_11:
      v11 &= v11 - 1;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_1B0C241D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5830, &qword_1B0ED9080);
  result = sub_1B0E46208();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_1B0C211CC(v16, v17, v18, v6))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v15 = (*(v3 + 48) + 24 * (v12 | (v7 << 6)));
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      sub_1B0BD67B0(*v15, v17, v18);
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= i)
      {
        goto LABEL_15;
      }

      v14 = *(v3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B0C2432C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5848, &qword_1B0ED9098);
  result = sub_1B0E46208();
  v6 = result;
  if (!*(v3 + 16))
  {

LABEL_46:
    *v2 = v6;
    return result;
  }

  v38 = v2;
  v7 = 0;
  v39 = v3 + 56;
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
  v40 = (v8 + 63) >> 6;
  v11 = result + 56;
  v41 = v3;
  v42 = result;
  while (v10)
  {
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v18 = (*(v3 + 48) + 80 * (v15 | (v7 << 6)));
    v20 = *v18;
    v19 = v18[1];
    v22 = v18[2];
    v21 = v18[3];
    v43 = v18[4];
    v44 = v18[5];
    v23 = v18[7];
    v45 = v18[6];
    v24 = v18[9];
    v48 = v18[8];
    v25 = *(v6 + 40);
    sub_1B0E46C28();
    v46 = v20;
    v47 = v24;
    if ((v23 & 0x1000000000000000) == 0)
    {
      MEMORY[0x1B2728D70](0);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v26 = v22;
      v28 = v43;
      v27 = v44;
      goto LABEL_35;
    }

    MEMORY[0x1B2728D70](1);
    v29 = (v24 >> 59) & 6 | ((v23 & 0x2000000000000000) != 0);
    if (v29 <= 2)
    {
      v26 = v22;
      v28 = v43;
      if (!v29)
      {
        MEMORY[0x1B2728D70](0);
        v50 = v46;
        v51 = v19;
        v52 = v26;
        v53 = v21;
        v54 = v43;
        v27 = v44;
LABEL_32:
        v55 = v27;
        v56 = v45;
        v57 = v23 & 0xEFFFFFFFFFFFFFFFLL;
        v58 = v48;
        v59 = v47;
        sub_1B0BD1224(&v50, v49);
        sub_1B0E42F48();
        sub_1B0E42F48();
        goto LABEL_35;
      }

      v27 = v44;
      if (v29 == 1)
      {
        MEMORY[0x1B2728D70](1);
        v50 = v46;
        v51 = v19;
        v52 = v26;
        v53 = v21;
        v54 = v43;
        v55 = v44;
        v56 = v45;
        v57 = v23 & 0xEFFFFFFFFFFFFFFFLL;
        v58 = v48;
        v59 = v47;
        sub_1B0BD1224(&v50, v49);
        sub_1B0E42F48();
        sub_1B0E42F48();
        sub_1B0E42F48();
        sub_1B0E42F48();
      }

      else
      {
        MEMORY[0x1B2728D70](2);
        v50 = v46;
        v51 = v19;
        v52 = v26;
        v53 = v21;
        v54 = v43;
        v55 = v44;
        v56 = v45;
        v57 = v23 & 0xEFFFFFFFFFFFFFFFLL;
        v58 = v48;
        v59 = v47;
        sub_1B0BD1224(&v50, v49);
      }

      sub_1B0E42F48();
    }

    else
    {
      v26 = v22;
      v28 = v43;
      if (v29 > 4)
      {
        v27 = v44;
        if (v29 == 5)
        {
          v30 = 5;
        }

        else
        {
          v30 = 6;
        }
      }

      else
      {
        v27 = v44;
        if (v29 != 3)
        {
          MEMORY[0x1B2728D70](4);
          v50 = v46;
          v51 = v19;
          v52 = v26;
          v53 = v21;
          v54 = v43;
          goto LABEL_32;
        }

        v30 = 3;
      }

      MEMORY[0x1B2728D70](v30);
      v50 = v46;
      v51 = v19;
      v52 = v26;
      v53 = v21;
      v54 = v43;
      v55 = v27;
      v56 = v45;
      v57 = v23 & 0xEFFFFFFFFFFFFFFFLL;
      v58 = v48;
      v59 = v47;
      sub_1B0BD1224(&v50, v49);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

LABEL_35:
    result = sub_1B0E46CB8();
    v6 = v42;
    v31 = -1 << *(v42 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v11 + 8 * (v32 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v31) >> 6;
      v13 = v46;
      while (++v33 != v35 || (v34 & 1) == 0)
      {
        v36 = v33 == v35;
        if (v33 == v35)
        {
          v33 = 0;
        }

        v34 |= v36;
        v37 = *(v11 + 8 * v33);
        if (v37 != -1)
        {
          v12 = __clz(__rbit64(~v37)) + (v33 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_48;
    }

    v12 = __clz(__rbit64((-1 << v32) & ~*(v11 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
    v13 = v46;
LABEL_9:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v14 = (*(v42 + 48) + 80 * v12);
    *v14 = v13;
    v14[1] = v19;
    v14[2] = v26;
    v14[3] = v21;
    v14[4] = v28;
    v14[5] = v27;
    v14[6] = v45;
    v14[7] = v23;
    v14[8] = v48;
    v14[9] = v47;
    ++*(v42 + 16);
    v3 = v41;
  }

  v16 = v7;
  while (1)
  {
    v7 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v7 >= v40)
    {

      v2 = v38;
      goto LABEL_46;
    }

    v17 = *(v39 + 8 * v7);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v10 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1B0C24814(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E54B8, ":&\t");
  result = sub_1B0E46208();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 4 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_1B0C24A34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5568, &qword_1B0ED2730);
  result = sub_1B0E46208();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v19 = *(v3 + 48) + 32 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v6 + 40);
      sub_1B0E46C28();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v35 = v23;
      if (v23 == 1)
      {
        v25 = v22;
        sub_1B0E46C68();
      }

      else
      {
        sub_1B0E46C68();
        v25 = v22;
        MEMORY[0x1B2728DB0](v22 >> 14);
      }

      result = sub_1B0E46CB8();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 32 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v25;
      *(v15 + 24) = v35;
      ++*(v6 + 16);
      v3 = v34;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v33;
        goto LABEL_31;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B0C24CC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5850, &qword_1B0ED90A0);
  result = sub_1B0E46208();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v17);
      result = sub_1B0E46CB8();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_1B0C24EE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1B0E46208();
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
      v19 = *(*(v5 + 48) + (v16 | (v9 << 6)));
      v20 = *(v8 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v19);
      result = sub_1B0E46CB8();
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
      *(*(v8 + 48) + v15) = v19;
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

uint64_t sub_1B0C25100(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5858, &qword_1B0ED90A8);
  result = sub_1B0E46208();
  v6 = result;
  if (*(v3 + 16))
  {
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
LABEL_15:
      v15 = *(v6 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](0);
      result = sub_1B0E46CB8();
      v16 = -1 << *(v6 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v12 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v12 + 8 * v18);
          if (v22 != -1)
          {
            v13 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_26;
      }

      v13 = __clz(__rbit64((-1 << v17) & ~*(v12 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      v10 &= v10 - 1;
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      ++*(v6 + 16);
    }

    while (1)
    {
      v14 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_24;
      }

      v10 = *(v3 + 56 + 8 * v14);
      ++v7;
      if (v10)
      {
        v7 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v6;
  }

  return result;
}

uint64_t _s15IMAP2Connection07CommandB0C12RecentErrorsV5ErrorV4KindO21__derived_enum_equalsySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  v3 = sub_1B0E441D8();
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v74 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v73 - v7;
  v8 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v75 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v73 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v73 - v16);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v73 - v19);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v73 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v73 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5840, &qword_1B0ED9090);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v30 = &v73 - v29;
  v31 = (&v73 + *(v28 + 56) - v29);
  sub_1B0446B60(a1, &v73 - v29, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  sub_1B0446B60(v78, v31, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B0446B60(v30, v23, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        v40 = *v23;
        v41 = v23[2];
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v42 = v23[1];
          v44 = *v31;
          v43 = v31[1];
          v45 = v31[2];
          v39 = static ResponseText.__derived_struct_equals(_:_:)(v40, v42);
          sub_1B0447F00(v44);

          sub_1B0447F00(v40);
          goto LABEL_10;
        }

        sub_1B0447F00(v40);

        goto LABEL_35;
      }

      sub_1B0446B60(v30, v20, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      v55 = *v20;
      v54 = v20[1];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_32;
      }

      v56 = v31[1];
      if (v54)
      {
        if (v56)
        {
          if (v55 == *v31 && v54 == v56)
          {

            goto LABEL_29;
          }

          v58 = v31[1];
          v59 = sub_1B0E46A78();

          if (v59)
          {
LABEL_29:
            sub_1B0438FB0(v30, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
            v39 = 1;
            return v39 & 1;
          }

LABEL_57:
          sub_1B0438FB0(v30, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
          goto LABEL_36;
        }
      }

      else
      {
        if (!v56)
        {
          goto LABEL_29;
        }

        v68 = v31[1];
      }

      goto LABEL_57;
    }

    sub_1B0446B60(v30, v25, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    v52 = *v25;
    v51 = v25[1];
    v53 = v25[2];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B0BD1488(v52, v51, v53);
      goto LABEL_35;
    }

    v65 = *v31;
    v66 = v31[1];
    v67 = v31[2];
    if (v53 > 1)
    {
      if (v53 == 2)
      {
        if (v67 == 2)
        {
          goto LABEL_29;
        }

        goto LABEL_56;
      }

      if (v53 == 3)
      {
        if (v67 == 3)
        {
          goto LABEL_29;
        }

        goto LABEL_56;
      }
    }

    else
    {
      if (!v53)
      {
        if (!v67)
        {
          goto LABEL_29;
        }

        goto LABEL_56;
      }

      if (v53 == 1)
      {
        if (v67 == 1)
        {
          goto LABEL_29;
        }

        goto LABEL_56;
      }
    }

    if (v67 >= 4)
    {
      v69 = *v31;
      v70 = v31[1];
      v71 = v67;
      v72 = static ResponseText.__derived_struct_equals(_:_:)(v52, v51);
      sub_1B0BD1488(v69, v70, v71);
      sub_1B0BD1488(v52, v51, v53);
      if (v72)
      {
        goto LABEL_29;
      }

      goto LABEL_57;
    }

    sub_1B0BD1488(v65, v66, v67);
    v65 = v52;
    v66 = v51;
    v67 = v53;
LABEL_56:
    sub_1B0BD1488(v65, v66, v67);
    goto LABEL_57;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v46 = v75;
      sub_1B0446B60(v30, v75, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v48 = v76;
        v47 = v77;
        v49 = v74;
        (*(v76 + 32))(v74, v31, v77);
        v39 = MEMORY[0x1B27262E0](v46, v49);
        v50 = *(v48 + 8);
        v50(v49, v47);
        v50(v46, v47);
        goto LABEL_27;
      }

      (*(v76 + 8))(v46, v77);
      goto LABEL_35;
    }

    if (swift_getEnumCaseMultiPayload() == 6)
    {
      goto LABEL_29;
    }

LABEL_35:
    sub_1B0398EFC(v30, &qword_1EB6E5840, &qword_1B0ED9090);
LABEL_36:
    v39 = 0;
    return v39 & 1;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_1B0446B60(v30, v14, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v61 = v76;
      v60 = v77;
      v62 = v73;
      (*(v76 + 32))(v73, v31, v77);
      v39 = MEMORY[0x1B27262E0](v14, v62);
      v63 = *(v61 + 8);
      v63(v62, v60);
      v63(v14, v60);
      goto LABEL_27;
    }

    (*(v76 + 8))(v14, v77);
    goto LABEL_35;
  }

  sub_1B0446B60(v30, v17, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  v33 = *v17;
  v34 = v17[2];
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1B0447F00(v33);
LABEL_32:

    goto LABEL_35;
  }

  v35 = v17[1];
  v37 = *v31;
  v36 = v31[1];
  v38 = v31[2];
  v39 = static ResponseText.__derived_struct_equals(_:_:)(v33, v35);
  sub_1B0447F00(v37);

  sub_1B0447F00(v33);
LABEL_10:

LABEL_27:
  sub_1B0438FB0(v30, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  return v39 & 1;
}

uint64_t sub_1B0C25A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0C25AD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0C25B44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL _s15IMAP2Connection07CommandB0C12RecentErrorsV10StatisticsV23__derived_struct_equalsySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1B0E441D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5838, &qword_1B0ED9088);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v37 - v22;
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || *(a1 + 3) != *(a2 + 3))
  {
    return 0;
  }

  v24 = *(a1 + 6);
  v25 = *(a2 + 6);
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    v42 = v21;
    v26 = *(a1 + 4);
    v39 = *(a1 + 5);
    v40 = v26;
    v27 = *(a2 + 5);
    v41 = *(a2 + 4);
    v37 = v24;
    v38 = v27;
    sub_1B04420D8(v41);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LODWORD(v40) = static ResponseText.__derived_struct_equals(_:_:)(v40, v39);
    sub_1B0447F00(v41);

    if ((v40 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v42 = v21;
    if (v25)
    {
      return 0;
    }
  }

  v39 = type metadata accessor for CommandConnection.RecentErrors.Statistics(0);
  v41 = *(v39 + 48);
  v28 = *(v42 + 48);
  sub_1B0C25AD4(&a1[v41], v23);
  v40 = v28;
  sub_1B0C25AD4(&a2[v41], &v28[v23]);
  v29 = *(v5 + 48);
  v41 = v5 + 48;
  if (v29(v23, 1, v4) != 1)
  {
    sub_1B0C25AD4(v23, v15);
    v38 = v29;
    if (v29(&v40[v23], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v40[v23], v4);
      sub_1B0C26430();
      LODWORD(v37) = sub_1B0E44A28();
      v40 = *(v5 + 8);
      (v40)(v8, v4);
      (v40)(v15, v4);
      sub_1B0398EFC(v23, &unk_1EB6E5A90, &unk_1B0EDC020);
      if ((v37 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_20;
    }

    (*(v5 + 8))(v15, v4);
LABEL_18:
    v30 = v23;
LABEL_26:
    sub_1B0398EFC(v30, &qword_1EB6E5838, &qword_1B0ED9088);
    return 0;
  }

  if (v29(&v40[v23], 1, v4) != 1)
  {
    goto LABEL_18;
  }

  v38 = v29;
  sub_1B0398EFC(v23, &unk_1EB6E5A90, &unk_1B0EDC020);
LABEL_20:
  v31 = *(v39 + 52);
  v32 = *(v42 + 48);
  sub_1B0C25AD4(&a1[v31], v19);
  sub_1B0C25AD4(&a2[v31], &v19[v32]);
  v33 = v38;
  if (v38(v19, 1, v4) == 1)
  {
    if (v33(&v19[v32], 1, v4) == 1)
    {
      sub_1B0398EFC(v19, &unk_1EB6E5A90, &unk_1B0EDC020);
      return 1;
    }

    goto LABEL_25;
  }

  sub_1B0C25AD4(v19, v12);
  if (v33(&v19[v32], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_25:
    v30 = v19;
    goto LABEL_26;
  }

  (*(v5 + 32))(v8, &v19[v32], v4);
  sub_1B0C26430();
  v35 = sub_1B0E44A28();
  v36 = *(v5 + 8);
  v36(v8, v4);
  v36(v12, v4);
  sub_1B0398EFC(v19, &unk_1EB6E5A90, &unk_1B0EDC020);
  return (v35 & 1) != 0;
}

unint64_t sub_1B0C26168()
{
  result = qword_1EB6E5828;
  if (!qword_1EB6E5828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5828);
  }

  return result;
}

uint64_t sub_1B0C261CC()
{
  result = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B0C26248()
{
  sub_1B0AD434C(319, &qword_1EB6DB6A8);
  if (v0 <= 0x3F)
  {
    sub_1B0E441D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B0C26308()
{
  sub_1B0AD434C(319, &qword_1EB6DE8F8);
  if (v0 <= 0x3F)
  {
    sub_1B0C263C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0C263C8()
{
  if (!qword_1EB6DB998)
  {
    sub_1B0E441D8();
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DB998);
    }
  }
}

unint64_t sub_1B0C26430()
{
  result = qword_1EB6DB9A8;
  if (!qword_1EB6DB9A8)
  {
    sub_1B0E441D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB9A8);
  }

  return result;
}

uint64_t sub_1B0C26488(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0C264D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0C2653C(uint64_t a1, uint64_t a2)
{
  v5 = _s6LoggerVMa_0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - v10;
  v12 = type metadata accessor for UntaggedResponse(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0C26C0C(a1, v15, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload() != 22)
  {
    v21 = type metadata accessor for UntaggedResponse;
    v22 = v15;
    return sub_1B0C26C74(v22, v21);
  }

  v17 = *v15;
  v16 = *(v15 + 1);
  v18 = *(v15 + 2);
  if (v15[24])
  {
    if (v15[24] == 1)
    {
      *(v2 + 80) = v17;
      *(v2 + 88) = 0;
      v19 = *(v2 + 104);

      *(v2 + 96) = v16;
      *(v2 + 104) = v18;
      return result;
    }

    sub_1B0C26C0C(a2, v11, _s6LoggerVMa_0);
    sub_1B0C26C0C(a2, v8, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();

    v28 = sub_1B0E43988();
    v29 = sub_1B0E458E8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v30 = 68158467;
      *(v30 + 4) = 2;
      *(v30 + 8) = 256;
      v31 = *(v5 + 20);
      v43 = v28;
      v32 = v8[v31];
      sub_1B0C26C74(v8, _s6LoggerVMa_0);
      *(v30 + 10) = v32;
      *(v30 + 11) = 2082;
      v33 = *&v11[*(v5 + 20) + 4];
      sub_1B0C26C74(v11, _s6LoggerVMa_0);
      v34 = ConnectionID.debugDescription.getter(v33);
      v36 = sub_1B0399D64(v34, v35, &v45);

      *(v30 + 13) = v36;
      *(v30 + 21) = 2085;
      v37 = String.init(buffer:)(v17, v16, v18 & 0xFFFFFFFFFFFFFFLL);
      v39 = sub_1B0399D64(v37, v38, &v45);

      *(v30 + 23) = v39;
      v40 = v43;
      _os_log_impl(&dword_1B0389000, v43, v29, "[%.*hhx-%{public}s] Ignoring invalid XAPPLEPUSHSERVICE response: %{sensitive}s", v30, 0x1Fu);
      v41 = v44;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v41, -1, -1);
      MEMORY[0x1B272C230](v30, -1, -1);

      return sub_1B0C26CD4(v17, v16, v18, 2u);
    }

    sub_1B0C26C74(v8, _s6LoggerVMa_0);
    sub_1B0C26CD4(v17, v16, v18, 2u);
    sub_1B0C26CD4(v17, v16, v18, 2u);

    v22 = v11;
    v21 = _s6LoggerVMa_0;
    return sub_1B0C26C74(v22, v21);
  }

  v23 = *(v2 + 72);
  v24 = *v15;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_1B0C0C328(0, *(v23 + 2) + 1, 1, v23);
  }

  v26 = *(v23 + 2);
  v25 = *(v23 + 3);
  if (v26 >= v25 >> 1)
  {
    v23 = sub_1B0C0C328((v25 > 1), v26 + 1, 1, v23);
  }

  *(v23 + 2) = v26 + 1;
  v27 = &v23[16 * v26];
  *(v27 + 4) = v17;
  *(v27 + 10) = v16;
  result = sub_1B0C26CD4(v17, v16, v18, 0);
  *(v2 + 72) = v23;
  return result;
}

double sub_1B0C2697C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v9[0] = *(v1 + 8);
  v9[1] = v3;
  v4 = *(v1 + 56);
  v10 = *(v1 + 40);
  v11 = v4;
  v12 = v9[0];
  v13 = v3;
  v14 = v10;
  v15 = v4;
  sub_1B0A1C2CC(v9, &v8);
  v5 = v13;
  *a1 = v12;
  *(a1 + 16) = v5;
  result = *&v14;
  v7 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v7;
  *(a1 + 64) = 4;
  return result;
}

void sub_1B0C269EC(char a1@<W3>, uint64_t a2@<X8>)
{
  if (a1 || (*(v2 + 88) & 1) != 0)
  {
    goto LABEL_7;
  }

  v4 = *(v2 + 80);
  if (v4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v4 <= 0x7FFFFFFF)
  {
    v5 = *(v2 + 104);
    if (v5)
    {
      v6 = *(v2 + 72);
      v7 = *(v2 + 96);
      LODWORD(v13) = *(v2 + 80);
      *(&v13 + 1) = v7;
      *&v14 = v5;
      *(&v14 + 1) = v6;
      sub_1B0C26C00(&v13);
      v33 = v21;
      v34 = v22;
      v35 = v23;
      v36 = v24;
      v29 = v17;
      v30 = v18;
      v31 = v19;
      v32 = v20;
      v25 = v13;
      v26 = v14;
      v27 = v15;
      v28 = v16;
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v25);
      v45 = v33;
      v46 = v34;
      v47 = v35;
      v48 = v36;
      v41 = v29;
      v42 = v30;
      v43 = v31;
      v44 = v32;
      v37 = v25;
      v38 = v26;
      v39 = v27;
      v40 = v28;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_8:
      v8 = v46;
      *(a2 + 128) = v45;
      *(a2 + 144) = v8;
      *(a2 + 160) = v47;
      *(a2 + 176) = v48;
      v9 = v42;
      *(a2 + 64) = v41;
      *(a2 + 80) = v9;
      v10 = v44;
      *(a2 + 96) = v43;
      *(a2 + 112) = v10;
      v11 = v38;
      *a2 = v37;
      *(a2 + 16) = v11;
      v12 = v40;
      *(a2 + 32) = v39;
      *(a2 + 48) = v12;
      return;
    }

LABEL_7:
    *&v14 = 0;
    v13 = 8uLL;
    BYTE8(v14) = -64;
    sub_1B0BD6CF8(&v13);
    v33 = v21;
    v34 = v22;
    v35 = v23;
    v36 = v24;
    v29 = v17;
    v30 = v18;
    v31 = v19;
    v32 = v20;
    v25 = v13;
    v26 = v14;
    v27 = v15;
    v28 = v16;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v25);
    v45 = v33;
    v46 = v34;
    v47 = v35;
    v48 = v36;
    v41 = v29;
    v42 = v30;
    v43 = v31;
    v44 = v32;
    v37 = v25;
    v38 = v26;
    v39 = v27;
    v40 = v28;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1B0C26C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0C26C74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0C26CD4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 == 2)
  {
  }

  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1B0C26D00(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1B0C26D48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0C26D98(uint64_t a1)
{
  v3 = sub_1B0C1AD1C();
  v4 = sub_1B0C1B22C();
  v5 = sub_1B0BD68AC();
  v6 = static MonotonicTime.now()();
  v8 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 16);
  sub_1B0C27278(v3, v5, *v1);

  if (v2)
  {
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0C0C57C(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
  }

  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  v13 = v9;
  if (v12 >= v11 >> 1)
  {
    result = sub_1B0C0C57C((v11 > 1), v12 + 1, 1, v8);
    v13 = v9;
    v8 = result;
    v16 = v5;
    v15 = v4;
    v14 = v6;
  }

  else
  {
    v14 = v6;
    v15 = v4;
    v16 = v5;
  }

  *(v8 + 16) = v12 + 1;
  v17 = v8 + 40 * v12;
  *(v17 + 32) = a1;
  *(v17 + 40) = v15;
  *(v17 + 48) = v16;
  *(v17 + 56) = 0;
  *(v17 + 64) = v14;
  *v1 = v8;
  if ((v13 & 1) == 0)
  {
    *(v1 + 8) = 0;
    *(v1 + 16) = 1;
  }

  return result;
}

uint64_t sub_1B0C26F08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 32;
  while (1)
  {
    v4 = (v3 + 40 * v2);
    v5 = v4[1];
    if (*(v5 + 16))
    {
      v6 = *v4;
      v7 = *(v5 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](7);
      v8 = sub_1B0E46CB8();
      v9 = -1 << *(v5 + 32);
      v10 = v8 & ~v9;
      if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
      {
        break;
      }
    }

LABEL_3:
    if (++v2 == v1)
    {
      return 0;
    }
  }

  v11 = ~v9;
  while (*(*(v5 + 48) + v10) != 7)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return v6;
}

uint64_t sub_1B0C2700C(unint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 16);
  if (!v3)
  {
    return 2;
  }

  v4 = 0;
  v5 = a1;
  v6 = HIDWORD(a1);
  v7 = (*v2 + 36);
  result = 2;
  while (*(v7 - 4) != v5 || *v7 != v6)
  {
    v7 += 10;
    if (v3 == ++v4)
    {
      return result;
    }
  }

  sub_1B0C0B434(v4, v14);
  if (v15)
  {
    if (v15 == 1)
    {
      sub_1B0C27248(v14);
      return 0;
    }

    else
    {
      sub_1B0C27248(v14);
      return 1;
    }
  }

  else
  {
    v11 = (*v2 + 56);
    v12 = *(*v2 + 16) + 1;
    while (--v12)
    {
      v13 = *v11;
      v11 += 40;
      if (!v13)
      {
        sub_1B0C27248(v14);
        return v14[0];
      }
    }

    sub_1B0C27248(v14);
    *(v2 + 8) = a2;
    *(v2 + 16) = 0;
    return v14[0];
  }
}

unint64_t *sub_1B0C27108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  result = (a1 + 16);
  v4 = v5;
  v6 = &result[5 * v5];
  while (v4)
  {
    --v4;
    v7 = *v6;
    v6 -= 5;
    if (v7 == 2)
    {
      MEMORY[0x1EEE9AC00](result);
      v11 = v8;
      result = sub_1B0C27228(&v11, v12);
      v9 = v12[0];
      v10 = v12[1];
      v4 = v13;
      goto LABEL_6;
    }
  }

  v9 = 0uLL;
  v10 = 0uLL;
LABEL_6:
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = v4;
  return result;
}

unint64_t *sub_1B0C271C8@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*a2 + 16))
  {
    v4 = *a2 + 40 * v3;
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = *(v4 + 56);
    v8 = *(v4 + 64);
    *a3 = *(v4 + 32);
    *(a3 + 8) = v5;
    *(a3 + 16) = v6;
    *(a3 + 24) = v7;
    *(a3 + 32) = v8;
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C27278(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3 > 9)
  {
    goto LABEL_7;
  }

  v4 = 0;
  v5 = a3 + 32;
  v6 = (a3 + 48);
  v7 = v3 + 1;
  while (--v7)
  {
    v8 = *v6;
    v6 += 5;
    v9 = __OFADD__(v4, v8);
    v4 += v8;
    if (v9)
    {
      __break(1u);
LABEL_7:
      sub_1B0C2785C();
      goto LABEL_81;
    }
  }

  if (v4)
  {
    v9 = __OFADD__(v4, a2);
    v10 = v4 + a2;
    if (v9)
    {
LABEL_84:
      __break(1u);
      return result;
    }

    if (v10 > 16)
    {
      sub_1B0C27904();
      goto LABEL_81;
    }
  }

  if (v3)
  {
    v11 = 0;
    v12 = result + 56;
    v66 = result;
    v64 = a3 + 32;
    do
    {
      v65 = v11;
      v13 = *(v5 + 40 * v11 + 8);
      if (*(v13 + 16))
      {
        v14 = *(v13 + 40);
        sub_1B0E46C28();
        MEMORY[0x1B2728D70](7);
        v15 = sub_1B0E46CB8();
        v16 = -1 << *(v13 + 32);
        v17 = v15 & ~v16;
        if ((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
        {
          v18 = ~v16;
          result = v66;
          while (*(*(v13 + 48) + v17) != 7)
          {
            v17 = (v17 + 1) & v18;
            if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_20;
            }
          }

LABEL_80:
          sub_1B0C278B0();
LABEL_81:
          swift_allocError();
          return swift_willThrow();
        }

        result = v66;
        if (*(v66 + 16))
        {
LABEL_23:
          v19 = 0;
          v20 = 1 << *(result + 32);
          if (v20 < 64)
          {
            v21 = ~(-1 << v20);
          }

          else
          {
            v21 = -1;
          }

          v22 = v21 & *(result + 56);
          v23 = (v20 + 63) >> 6;
          v24 = v13 + 56;
LABEL_27:
          while (v22)
          {
LABEL_32:
            v26 = __clz(__rbit64(v22));
            v22 &= v22 - 1;
            v27 = *(*(result + 48) + (v26 | (v19 << 6)));
            v28 = *(v13 + 16);
            if (v27 > 2)
            {
              if (v27 == 3)
              {
                if (v28)
                {
                  v44 = *(v13 + 40);
                  sub_1B0E46C28();
                  MEMORY[0x1B2728D70](4);
                  v45 = sub_1B0E46CB8();
                  v46 = -1 << *(v13 + 32);
                  v47 = v45 & ~v46;
                  result = v66;
                  if ((*(v24 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
                  {
                    v48 = ~v46;
                    while (*(*(v13 + 48) + v47) != 4)
                    {
                      v47 = (v47 + 1) & v48;
                      if (((*(v24 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
                      {
                        goto LABEL_27;
                      }
                    }

                    goto LABEL_80;
                  }
                }
              }

              else if (v27 == 4)
              {
                if (v28)
                {
                  v34 = *(v13 + 40);
                  sub_1B0E46C28();
                  MEMORY[0x1B2728D70](5);
                  v35 = sub_1B0E46CB8();
                  v36 = -1 << *(v13 + 32);
                  v37 = v35 & ~v36;
                  result = v66;
                  if ((*(v24 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
                  {
                    v38 = ~v36;
                    while (*(*(v13 + 48) + v37) != 5)
                    {
                      v37 = (v37 + 1) & v38;
                      if (((*(v24 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
                      {
                        goto LABEL_27;
                      }
                    }

                    goto LABEL_80;
                  }
                }
              }

              else if (v28)
              {
                v54 = *(v13 + 40);
                sub_1B0E46C28();
                MEMORY[0x1B2728D70](6);
                v55 = sub_1B0E46CB8();
                v56 = -1 << *(v13 + 32);
                v57 = v55 & ~v56;
                result = v66;
                if ((*(v24 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
                {
                  v58 = ~v56;
                  while (*(*(v13 + 48) + v57) != 6)
                  {
                    v57 = (v57 + 1) & v58;
                    if (((*(v24 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
                    {
                      goto LABEL_27;
                    }
                  }

                  goto LABEL_80;
                }
              }
            }

            else if (v27)
            {
              if (v27 == 1)
              {
                if (v28)
                {
                  v29 = *(v13 + 40);
                  sub_1B0E46C28();
                  MEMORY[0x1B2728D70](2);
                  v30 = sub_1B0E46CB8();
                  v31 = -1 << *(v13 + 32);
                  v32 = v30 & ~v31;
                  result = v66;
                  if ((*(v24 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
                  {
                    v33 = ~v31;
                    while (*(*(v13 + 48) + v32) != 2)
                    {
                      v32 = (v32 + 1) & v33;
                      if (((*(v24 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
                      {
                        goto LABEL_27;
                      }
                    }

                    goto LABEL_80;
                  }
                }
              }

              else if (v28)
              {
                v49 = *(v13 + 40);
                sub_1B0E46C28();
                MEMORY[0x1B2728D70](3);
                v50 = sub_1B0E46CB8();
                v51 = -1 << *(v13 + 32);
                v52 = v50 & ~v51;
                result = v66;
                if ((*(v24 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52))
                {
                  v53 = ~v51;
                  while (*(*(v13 + 48) + v52) != 3)
                  {
                    v52 = (v52 + 1) & v53;
                    if (((*(v24 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
                    {
                      goto LABEL_27;
                    }
                  }

                  goto LABEL_80;
                }
              }
            }

            else if (v28)
            {
              v39 = *(v13 + 40);
              sub_1B0E46C28();
              MEMORY[0x1B2728D70](0);
              v40 = sub_1B0E46CB8();
              v41 = -1 << *(v13 + 32);
              v42 = v40 & ~v41;
              if ((*(v24 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
              {
                v43 = ~v41;
                result = v66;
                while (*(*(v13 + 48) + v42))
                {
                  v42 = (v42 + 1) & v43;
                  if (((*(v24 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
                  {
                    goto LABEL_74;
                  }
                }

                goto LABEL_80;
              }

              result = v66;
LABEL_74:
              if (*(v13 + 16))
              {
                v59 = *(v13 + 40);
                sub_1B0E46C28();
                MEMORY[0x1B2728D70](1);
                v60 = sub_1B0E46CB8();
                v61 = -1 << *(v13 + 32);
                v62 = v60 & ~v61;
                result = v66;
                if ((*(v24 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62))
                {
                  v63 = ~v61;
                  while (*(*(v13 + 48) + v62) != 1)
                  {
                    v62 = (v62 + 1) & v63;
                    if (((*(v24 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
                    {
                      goto LABEL_27;
                    }
                  }

                  goto LABEL_80;
                }
              }
            }
          }

          while (1)
          {
            v25 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v25 >= v23)
            {
              goto LABEL_14;
            }

            v22 = *(v12 + 8 * v25);
            ++v19;
            if (v22)
            {
              v19 = v25;
              goto LABEL_32;
            }
          }

          __break(1u);
          goto LABEL_84;
        }
      }

      else
      {
LABEL_20:
        if (*(result + 16))
        {
          goto LABEL_23;
        }
      }

LABEL_14:
      v5 = v64;
      v11 = v65 + 1;
    }

    while (v65 + 1 != v3);
  }

  return result;
}

unint64_t sub_1B0C2785C()
{
  result = qword_1EB6DCE28;
  if (!qword_1EB6DCE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCE28);
  }

  return result;
}

unint64_t sub_1B0C278B0()
{
  result = qword_1EB6DCE20;
  if (!qword_1EB6DCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCE20);
  }

  return result;
}

unint64_t sub_1B0C27904()
{
  result = qword_1EB6DCE30;
  if (!qword_1EB6DCE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCE30);
  }

  return result;
}

uint64_t sub_1B0C27988(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1B0C279F4()
{
  result = qword_1EB6E5860;
  if (!qword_1EB6E5860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5860);
  }

  return result;
}

uint64_t SelectedMailbox.id.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0C27A74(unint64_t a1)
{
  v3 = type metadata accessor for UntaggedResponse(0);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 >> 60 == 3)
  {
    v8 = swift_projectBox();
    sub_1B0B7EAA4(v8, v7);
    result = swift_getEnumCaseMultiPayload();
    if (result > 14)
    {
      if (result == 15)
      {
        *(v1 + 24) = *v7;
      }

      else if (result != 16)
      {
        return sub_1B0B7EB08(v7);
      }
    }

    else
    {
      if (result)
      {
        if (result == 13)
        {
          v9 = *v7;
          v10 = *(v1 + 16);

          *(v1 + 16) = v9;
          return result;
        }

        return sub_1B0B7EB08(v7);
      }

      v11 = *v7;
      v12 = v7[2];
      if ((~v11 & 0xF000000000000007) == 0)
      {
      }

      v13 = (v11 >> 59) & 0x1E | (v11 >> 2) & 1;
      if (v13 > 3)
      {
        if (v13 == 4)
        {
          v21 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          sub_1B0447F00(v11);

          *(v1 + 56) = v21;
          *(v1 + 60) = 0;
        }

        else
        {
          if (v13 != 5)
          {
            goto LABEL_20;
          }

          v15 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          sub_1B0447F00(v11);

          *(v1 + 32) = v15;
          *(v1 + 36) = 0;
        }
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 3)
          {
            v14 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            sub_1B0447F00(v11);

            *(v1 + 48) = v14;
            *(v1 + 52) = 0;
            return result;
          }

LABEL_20:
          sub_1B0447F00(v11);
        }

        v16 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v17 = v11;
        v18 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v19 = sub_1B0B386A0(v18);

        v20 = *(v1 + 40);

        sub_1B0447F00(v17);

        *(v1 + 40) = v19;
      }
    }
  }

  return result;
}

__n128 SelectedMailbox.init(name:isReadOnly:flags:messageCount:firstUnseenMessage:permanentFlags:nextUID:uidValidity:modificationSequenceValue:)@<Q0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, char a11, uint64_t a12, __int16 a13)
{
  v16[84] = BYTE4(a6) & 1;
  v16[80] = BYTE4(a8) & 1;
  v16[76] = a11 & 1;
  v16[75] = HIBYTE(a13) & 1;
  *&v17 = a1;
  DWORD2(v17) = a2;
  v18.n128_u64[0] = a4;
  v18.n128_u64[1] = a5;
  LODWORD(v19) = a6;
  BYTE4(v19) = BYTE4(a6) & 1;
  *(&v19 + 1) = a7;
  *v20 = a8;
  v20[4] = BYTE4(a8) & 1;
  *&v20[8] = a10;
  v20[12] = a11 & 1;
  *&v20[16] = a12;
  *&v20[24] = a13 & 0x1FF;
  v20[26] = a3;
  v21 = a1;
  v22 = a2;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = BYTE4(a6) & 1;
  v27 = a7;
  v28 = a8;
  v29 = BYTE4(a8) & 1;
  v30 = a10;
  v31 = a11 & 1;
  v32 = a12;
  v33 = a13 & 0x1FF;
  v34 = a3;
  sub_1B0B37A20(&v17, v16);
  sub_1B0B37A7C(&v21);
  v14 = *v20;
  *(a9 + 32) = v19;
  *(a9 + 48) = v14;
  *(a9 + 59) = *&v20[11];
  result = v18;
  *a9 = v17;
  *(a9 + 16) = result;
  return result;
}

uint64_t SelectedMailbox.name.setter(uint64_t a1, int a2)
{
  v5 = *v2;

  *v2 = a1;
  *(v2 + 2) = a2;
  return result;
}

uint64_t SelectedMailbox.flags.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t SelectedMailbox.firstUnseenMessage.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

uint64_t SelectedMailbox.permanentFlags.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t SelectedMailbox.nextUID.setter(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 52) = BYTE4(result) & 1;
  return result;
}

uint64_t SelectedMailbox.uidValidity.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = BYTE4(result) & 1;
  return result;
}

uint64_t SelectedMailbox.modificationSequenceValue.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72) | (*(v0 + 73) << 8);
  return result;
}

uint64_t SelectedMailbox.modificationSequenceValue.setter(uint64_t result, __int16 a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2;
  *(v2 + 73) = HIBYTE(a2) & 1;
  return result;
}

uint64_t sub_1B0C2802C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0C28040(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 11) = *(a1 + 59);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 11) = *(a2 + 59);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return _s15IMAP2Connection15SelectedMailboxV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9) & 1;
}

BOOL static SelectedMailbox.ModificationSequence.__derived_enum_equals(_:_:)(_BOOL8 result, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  if (((a3 | result) & 0x8000000000000000) == 0)
  {
    return a3 == result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C280D0(uint64_t *a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    v6 = *a1;
    if ((*a2 | v6) < 0)
    {
      __break(1u);
    }

    else
    {
      return *a2 == v6;
    }
  }

  return result;
}

uint64_t _s15IMAP2Connection15SelectedMailboxV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t *a2)
{
  if ((*(result + 8) | (*(result + 8) << 32)) != (*(a2 + 2) | (*(a2 + 2) << 32)))
  {
    goto LABEL_40;
  }

  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    goto LABEL_40;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_11:
    v8 = result;
    result = sub_1B0AFE1EC(*(result + 16), a2[2]);
    if ((result & 1) == 0 || *(v8 + 24) != a2[3])
    {
      goto LABEL_40;
    }

    v4 = v8;
    v6 = a2;
    v10 = *(a2 + 36);
    if (*(v8 + 36))
    {
      if (!*(a2 + 36))
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (*(a2 + 8) != *(v8 + 32))
      {
        v10 = 1;
      }

      if (v10)
      {
        goto LABEL_40;
      }
    }

    v11 = *(v8 + 40);
    v12 = a2[5];
    if (v11)
    {
      if (!v12)
      {
        goto LABEL_40;
      }

      v13 = a2[5];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v14 = sub_1B0BE5598(v11, v12);

      v4 = v8;
      v6 = a2;
      if ((v14 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v12)
    {
      goto LABEL_40;
    }

    v15 = v6[52];
    if (*(v4 + 52))
    {
      if (!v6[52])
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (*(v6 + 12) != *(v4 + 48))
      {
        v15 = 1;
      }

      if (v15)
      {
        goto LABEL_40;
      }
    }

    v16 = v6[60];
    if (*(v4 + 60))
    {
      if (!v6[60])
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (*(v4 + 56) != *(v6 + 14))
      {
        v16 = 1;
      }

      if (v16)
      {
        goto LABEL_40;
      }
    }

    v17 = v6[73];
    if (*(v4 + 73))
    {
LABEL_37:
      if (v17)
      {
        goto LABEL_38;
      }

LABEL_40:
      v18 = 0;
      return v18 & 1;
    }

    if (v6[73])
    {
      goto LABEL_40;
    }
  }

  else
  {
    v6 = (v2 + 32);
    v7 = (v3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        goto LABEL_40;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  v17 = v6[72];
  if (*(v4 + 72))
  {
    goto LABEL_37;
  }

  if (v6[72])
  {
    goto LABEL_40;
  }

  v19 = *(v4 + 64);
  v20 = *(v6 + 8);
  if (((v20 | v19) & 0x8000000000000000) == 0)
  {
    if (v20 != v19)
    {
      goto LABEL_40;
    }

LABEL_38:
    v18 = *(v4 + 74) ^ v6[74] ^ 1;
    return v18 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C282E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 75))
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

uint64_t sub_1B0C28330(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 74) = 0;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 75) = 1;
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

    *(result + 75) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StartTLS(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

double sub_1B0C28460@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 5;
  return result;
}

double sub_1B0C28494@<D0>(char a1@<W3>, uint64_t a2@<X8>)
{
  if (a1 || *(v2 + 1) == 1)
  {
    *&v11 = 0;
    v10 = 5uLL;
    BYTE8(v11) = -64;
    sub_1B0BD6CF8(&v10);
  }

  else
  {
    sub_1B0C285C8(&v10);
  }

  v30 = v18;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v22);
  v42 = v30;
  v43 = v31;
  v44 = v32;
  v45 = v33;
  v38 = v26;
  v39 = v27;
  v40 = v28;
  v41 = v29;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v37 = v25;
  v4 = v31;
  *(a2 + 128) = v30;
  *(a2 + 144) = v4;
  *(a2 + 160) = v44;
  *(a2 + 176) = v45;
  v5 = v39;
  *(a2 + 64) = v38;
  *(a2 + 80) = v5;
  v6 = v41;
  *(a2 + 96) = v40;
  *(a2 + 112) = v6;
  v7 = v35;
  *a2 = v34;
  *(a2 + 16) = v7;
  result = *&v36;
  v9 = v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = v9;
  return result;
}

double sub_1B0C285C8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 176) = 7;
  return result;
}

uint64_t sub_1B0C285F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1B041D32C(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1B0E460B8();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 48) + 32 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v13 >= v14 >> 1)
    {
      result = sub_1B041D32C((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_1B0425168(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1B0425168(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
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

double sub_1B0C28818@<D0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v2 = type metadata accessor for UnauthenticatedState();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v79 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UnauthenticatedStateWithTasks();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v80 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B0E43DF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v78 - v14;
  v16 = type metadata accessor for ConnectionState();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA74(v1, v19, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v9 + 32))(v15, v19, v8);
      (*(v9 + 16))(v13, v15, v8);
      v24 = sub_1B0E44B88();
      v25 = v40;
      (*(v9 + 8))(v15, v8);

      v26 = 0;
      v27 = 0;
LABEL_10:
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v21 = v80;
      sub_1B0C2CC20(v19, v80);
      v22 = v79;
      sub_1B038CA74(v21 + *(v5 + 24), v79, type metadata accessor for UnauthenticatedState);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v26 = 0xD000000000000015;
          sub_1B038C764(v22, type metadata accessor for UnauthenticatedState);
          v77 = "requestingCredentials";
          goto LABEL_38;
        case 2u:
          sub_1B038C764(v21, type metadata accessor for UnauthenticatedStateWithTasks);

          sub_1B038C764(v22, type metadata accessor for UnauthenticatedState);
          v24 = 0;
          v25 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v39 = 2;
          v27 = 0xEE00676E69746163;
          v26 = 0x69746E6568747561;
          goto LABEL_23;
        case 3u:
          sub_1B038C764(v22, type metadata accessor for UnauthenticatedState);
          v27 = 0x80000001B0F2D360;
          sub_1B038C764(v21, type metadata accessor for UnauthenticatedStateWithTasks);

          v24 = 0;
          v25 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v26 = 0xD000000000000011;
          goto LABEL_22;
        case 4u:
          sub_1B038C764(v22, type metadata accessor for UnauthenticatedState);
          sub_1B038C764(v21, type metadata accessor for UnauthenticatedStateWithTasks);

          v24 = 0;
          v25 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v39 = 2;
          v27 = 0xEF796C6E4F444955;
          v26 = 0x676E696C62616E65;
          goto LABEL_23;
        case 5u:
          v26 = 0xD000000000000015;
          sub_1B038C764(v22, type metadata accessor for UnauthenticatedState);
          v77 = "requestingCompression";
LABEL_38:
          v27 = (v77 - 32) | 0x8000000000000000;
          sub_1B038C764(v21, type metadata accessor for UnauthenticatedStateWithTasks);

          v24 = 0;
          v25 = 0;
          goto LABEL_10;
        case 6u:
          sub_1B038C764(v22, type metadata accessor for UnauthenticatedState);
          v27 = 0x80000001B0F2D380;
          sub_1B038C764(v21, type metadata accessor for UnauthenticatedStateWithTasks);

          v24 = 0;
          v25 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v26 = 0xD000000000000013;
          goto LABEL_22;
        case 7u:
          sub_1B038C764(v22, type metadata accessor for UnauthenticatedState);
          v27 = 0x80000001B0F2D340;
          sub_1B038C764(v21, type metadata accessor for UnauthenticatedStateWithTasks);

          v24 = 0;
          v25 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v26 = 0xD00000000000001ELL;
          goto LABEL_22;
        case 8u:
          sub_1B038C764(v22, type metadata accessor for UnauthenticatedState);
          v27 = 0x80000001B0F2D320;
          sub_1B038C764(v21, type metadata accessor for UnauthenticatedStateWithTasks);

          v24 = 0;
          v25 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v26 = 0xD000000000000012;
          goto LABEL_22;
        case 9u:
          sub_1B038C764(v22, type metadata accessor for UnauthenticatedState);
          sub_1B038C764(v21, type metadata accessor for UnauthenticatedStateWithTasks);

          v24 = 0;
          v25 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v39 = 2;
          v27 = 0xE400000000000000;
          v26 = 1701736292;
          goto LABEL_23;
        case 0xAu:
          sub_1B038C764(v22, type metadata accessor for UnauthenticatedState);
          sub_1B038C764(v21, type metadata accessor for UnauthenticatedStateWithTasks);

          v24 = 0;
          v25 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v39 = 2;
          v27 = 0xE600000000000000;
          v26 = 0x64656C696166;
          goto LABEL_23;
        case 0xBu:
          sub_1B038C764(v21, type metadata accessor for UnauthenticatedStateWithTasks);

          v24 = 0;
          v25 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v39 = 2;
          v27 = 0xEA0000000000676ELL;
          v26 = 0x697463656E6E6F63;
          goto LABEL_23;
        case 0xCu:
          v23 = "gettingPreAuthCapabilities";
          goto LABEL_30;
        case 0xDu:
          sub_1B038C764(v21, type metadata accessor for UnauthenticatedStateWithTasks);

          v24 = 0;
          v25 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v39 = 2;
          v27 = 0xEB00000000534C54;
          v26 = 0x676E697472617473;
          goto LABEL_23;
        case 0xEu:
          sub_1B038C764(v21, type metadata accessor for UnauthenticatedStateWithTasks);

          v24 = 0;
          v25 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v39 = 2;
          v27 = 0xED0000534C54726FLL;
          v26 = 0x46676E6974696177;
          goto LABEL_23;
        case 0xFu:
          v27 = 0x80000001B0F2D3C0;
          sub_1B038C764(v21, type metadata accessor for UnauthenticatedStateWithTasks);

          v24 = 0;
          v25 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v26 = 0xD00000000000001BLL;
          goto LABEL_22;
        default:
          sub_1B038C764(v22, type metadata accessor for UnauthenticatedState);
          v23 = "checkingIfPreAuthIsAllowed";
LABEL_30:
          v27 = (v23 - 32) | 0x8000000000000000;
          sub_1B038C764(v21, type metadata accessor for UnauthenticatedStateWithTasks);

          v24 = 0;
          v25 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v26 = 0xD00000000000001ALL;
          break;
      }

      goto LABEL_22;
    }

    memcpy(v104, v19, sizeof(v104));
    v41 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v42 = sub_1B0C285F0(v41);

    v103 = v42;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C2A0EC(&v103);

    *&v105 = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B03B11C4();
    v43 = sub_1B0E448E8();
    v45 = v44;

    v113 = *&v104[136];
    v114 = *&v104[152];
    v115 = *&v104[168];
    v109 = *&v104[72];
    v110 = *&v104[88];
    v111 = *&v104[104];
    v112 = *&v104[120];
    v105 = *&v104[8];
    v106 = *&v104[24];
    v107 = *&v104[40];
    v108 = *&v104[56];
    v46 = ServerID.logDescription.getter();
    v79 = v47;
    v101[2] = *&v104[320];
    v101[3] = *&v104[336];
    v102 = *&v104[352];
    v99 = *&v104[256];
    v100 = *&v104[272];
    v101[0] = *&v104[288];
    v101[1] = *&v104[304];
    v95 = *&v104[192];
    v96 = *&v104[208];
    v97 = *&v104[224];
    v98 = *&v104[240];
    v48 = sub_1B0BE2780(&v95);
    v49 = sub_1B03DB9A4(&v95);
    if (v48)
    {
      if (v48 != 1)
      {
        v65 = *v49;
        v66 = *(v49 + 8);
        v67 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v68 = sub_1B0B979B4(v67, v66);
        v70 = v69;
        sub_1B0BE278C(v104);
        v56 = 0;
        v57 = 0;
        v53 = 0;
        v55 = 0;
LABEL_21:
        v80 = v70;
        v93[0] = v43;
        v93[1] = v45;
        v71 = v79;
        v93[2] = v46;
        v93[3] = v79;
        v93[4] = v56;
        v93[5] = v57;
        v93[6] = v53;
        v93[7] = v55;
        v93[8] = v68;
        v93[9] = v70;
        memset(v94, 0, sizeof(v94));
        v36 = v68;
        v35 = v55;
        v34 = v53;
        v33 = v57;
        v32 = v56;
        sub_1B0C2CBB8(v93, &v82);
        sub_1B0398EFC(v94, &qword_1EB6E5888, &qword_1B0ED9768);
        *&v82 = v43;
        *(&v82 + 1) = v45;
        *&v83 = v46;
        *(&v83 + 1) = v71;
        *&v84 = v32;
        *(&v84 + 1) = v33;
        *&v85 = v34;
        *(&v85 + 1) = v35;
        *&v86 = v36;
        *(&v86 + 1) = v80;
        sub_1B0C2CBF0(&v82);
        v37 = v80;
        v31 = v71;
        v30 = v46;
        v29 = v45;
        v28 = v43;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
LABEL_22:
        v39 = 2;
LABEL_23:
        v38 = 2;
        goto LABEL_24;
      }

      v50 = *v49;
      v51 = *(v49 + 8);
      v52 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v53 = sub_1B0B979B4(v52, v51);
      v55 = v54;
      sub_1B0BE278C(v104);
      v56 = 0;
      v57 = 0;
    }

    else
    {
      v55 = *v49;
      if (*v49)
      {
        v59 = *(v49 + 24);
        v80 = *(v49 + 32);
        v60 = *(v49 + 16);
        v61 = *(v49 + 8);
        v90 = *&v104[320];
        v91 = *&v104[336];
        v92 = *&v104[352];
        v86 = *&v104[256];
        v87 = *&v104[272];
        v88 = *&v104[288];
        v89 = *&v104[304];
        v82 = *&v104[192];
        v83 = *&v104[208];
        v84 = *&v104[224];
        v85 = *&v104[240];
        v62 = sub_1B03DB9A4(&v82);
        sub_1B0BE2DA8(*v62, *(v62 + 8), *(v62 + 16), *(v62 + 24), *(v62 + 32));
        v63 = sub_1B0B979B4(v55, v61);
        v57 = v64;
        sub_1B0B6DCF0(v60, v59, v80);
        sub_1B0BE278C(v104);
        v56 = v63;
        v53 = 0;
        v55 = 0;
      }

      else
      {
        sub_1B0BE278C(v104);
        v56 = 0;
        v57 = 0;
        v53 = 0;
      }
    }

    v68 = 0;
    v70 = 0;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1B038C764(v19, type metadata accessor for ConnectionState);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 2;
    v39 = 1;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 1;
    v39 = 2;
LABEL_24:
    v58 = 2;
    goto LABEL_25;
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v58 = 1;
  v39 = 2;
  v38 = 2;
LABEL_25:
  *&v95 = v24;
  *(&v95 + 1) = v25;
  *&v96 = v26;
  *(&v96 + 1) = v27;
  *&v97 = v28;
  *(&v97 + 1) = v29;
  *&v98 = v30;
  *(&v98 + 1) = v31;
  *&v99 = v32;
  *(&v99 + 1) = v33;
  *&v100 = v34;
  *(&v100 + 1) = v35;
  *&v101[0] = v36;
  *(&v101[0] + 1) = v37;
  LOBYTE(v101[1]) = v39;
  BYTE1(v101[1]) = v38;
  BYTE2(v101[1]) = v58;
  *v104 = v24;
  *&v104[8] = v25;
  *&v104[16] = v26;
  *&v104[24] = v27;
  *&v104[32] = v28;
  *&v104[40] = v29;
  *&v104[48] = v30;
  *&v104[56] = v31;
  *&v104[64] = v32;
  *&v104[72] = v33;
  *&v104[80] = v34;
  *&v104[88] = v35;
  *&v104[96] = v36;
  *&v104[104] = v37;
  v104[112] = v39;
  v104[113] = v38;
  v104[114] = v58;
  sub_1B0C2A704(&v95, &v82);
  sub_1B0BE2970(v104);
  v72 = v100;
  v73 = v81;
  *(v81 + 64) = v99;
  *(v73 + 80) = v72;
  *(v73 + 96) = v101[0];
  *(v73 + 111) = *(v101 + 15);
  v74 = v96;
  *v73 = v95;
  *(v73 + 16) = v74;
  result = *&v97;
  v76 = v98;
  *(v73 + 32) = v97;
  *(v73 + 48) = v76;
  return result;
}

int64_t sub_1B0C297B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a1;
  v71 = a2;
  v69 = sub_1B0E43BC8();
  v68 = *(v69 - 8);
  v3 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v62 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E58A0, &qword_1B0ED9780);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v62 - v11;
  v13 = sub_1B0E441A8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v64 = &v62 - v18;
  v19 = sub_1B0E441D8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5520, &qword_1B0ED0CE8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v62 - v29;
  v31 = *(v2 + OBJC_IVAR____TtC15IMAP2Connection10Connection_createdAt);
  result = static MonotonicTime.now()();
  v33 = __OFSUB__(v31, result);
  v34 = v31 - result;
  if (v31 < result)
  {
    if (__OFSUB__(result, v31))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v33 = __OFSUB__(0, result - v31);
    v34 = v31 - result;
    if (!v33)
    {
LABEL_7:
      v35 = v34 / 1000000000.0;
      if (COERCE__INT64(fabs(v35)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v35 > -9.22337204e18)
      {
        if (v35 < 9.22337204e18)
        {
          if (!__OFSUB__(0, v35))
          {
            v70 = -v35;
            v88 = 1;
            v36 = v72;
            if (!v72)
            {
              v42 = sub_1B0E43DF8();
              (*(*(v42 - 8) + 56))(v30, 1, 1, v42);
              sub_1B0398EFC(v30, &qword_1EB6E5520, &qword_1B0ED0CE8);
              (*(v14 + 56))(v12, 1, 1, v13);
              sub_1B0398EFC(v12, &qword_1EB6E58A0, &qword_1B0ED9780);
              v43 = 0;
              v44 = 0;
              v45 = 0;
              v46 = 0;
              v47 = 0;
              v48 = 0;
              v49 = 0;
              v50 = v71;
LABEL_23:
              v88 = v36 == 0;
              *&v74 = v70;
              *(&v74 + 1) = v45;
              *&v75 = v46;
              *(&v75 + 1) = v44;
              *&v76 = v43;
              *(&v76 + 1) = v47;
              *&v77 = v48;
              *(&v77 + 1) = v49;
              v78 = v36 == 0;
              v79 = v70;
              v80 = v45;
              v81 = v46;
              v82 = v44;
              v83 = v43;
              v84 = v47;
              v85 = v48;
              v86 = v49;
              v87 = v36 == 0;
              sub_1B0C2A73C(&v74, v73);
              result = sub_1B0C2A7C8(&v79);
              v60 = v77;
              *(v50 + 32) = v76;
              *(v50 + 48) = v60;
              *(v50 + 64) = v78;
              v61 = v75;
              *v50 = v74;
              *(v50 + 16) = v61;
              return result;
            }

            sub_1B0E43E18();
            v37 = sub_1B0E43DF8();
            v38 = *(v37 - 8);
            (*(v38 + 56))(v30, 0, 1, v37);
            sub_1B0C2CB48(v30, v27);
            v39 = (*(v38 + 88))(v27, v37);
            if (v39 == *MEMORY[0x1E6977C18])
            {
              (*(v38 + 96))(v27, v37);
              (*(v20 + 32))(v23, v27, v19);
              v79 = 0;
              v80 = 0xE000000000000000;
              v40 = 0x20676E6974696177;
              v41 = 0xE900000000000028;
            }

            else
            {
              if (v39 != *MEMORY[0x1E6977C10])
              {
                if (v39 != *MEMORY[0x1E6977C08])
                {
                  v50 = v71;
                  v51 = v67;
                  if (v39 == *MEMORY[0x1E6977C28])
                  {
                    v62 = 0xE900000000000067;
                    v45 = 0x6E69726170657270;
                  }

                  else if (v39 == *MEMORY[0x1E6977C00])
                  {
                    v62 = 0xE500000000000000;
                    v45 = 0x7964616572;
                  }

                  else if (v39 == *MEMORY[0x1E6977C20])
                  {
                    v62 = 0xE900000000000064;
                    v45 = 0x656C6C65636E6163;
                  }

                  else
                  {
                    (*(v38 + 8))(v27, v37);
                    v45 = 0;
                    v62 = 0;
                  }

LABEL_19:
                  sub_1B0E43C78();
                  if ((*(v14 + 48))(v12, 1, v13) == 1)
                  {
                    sub_1B0398EFC(v12, &qword_1EB6E58A0, &qword_1B0ED9780);
                    v43 = 0;
                    v44 = 0;
                  }

                  else
                  {
                    v52 = v64;
                    (*(v14 + 32))(v64, v12, v13);
                    (*(v14 + 16))(v63, v52, v13);
                    v44 = sub_1B0E44B88();
                    v43 = v53;
                    (*(v14 + 8))(v52, v13);
                  }

                  v54 = v65;
                  v36 = v72;
                  sub_1B0E43E48();
                  v55 = v68;
                  v56 = v66;
                  v57 = v54;
                  v58 = v69;
                  (*(v68 + 32))(v66, v57, v69);
                  (*(v55 + 16))(v51, v56, v58);
                  v47 = sub_1B0E44B88();
                  v48 = v59;
                  (*(v55 + 8))(v56, v58);
                  v49 = sub_1B0E43C68();
                  v46 = v62;
                  goto LABEL_23;
                }

                v62 = 0xE500000000000000;
                v45 = 0x7075746573;
LABEL_18:
                v50 = v71;
                v51 = v67;
                goto LABEL_19;
              }

              (*(v38 + 96))(v27, v37);
              (*(v20 + 32))(v23, v27, v19);
              v79 = 0;
              v80 = 0xE000000000000000;
              v40 = 0x282064656C696166;
              v41 = 0xE800000000000000;
            }

            MEMORY[0x1B2726E80](v40, v41);
            sub_1B0E46508();
            MEMORY[0x1B2726E80](41, 0xE100000000000000);
            v45 = v79;
            v62 = v80;
            (*(v20 + 8))(v23, v19);
            goto LABEL_18;
          }

          goto LABEL_36;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      __break(1u);
      goto LABEL_35;
    }

    __break(1u);
  }

  if (!v33)
  {
    goto LABEL_7;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1B0C2A0EC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0C0E064(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B0C2BF6C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B0C2A158()
{
  v1 = 25705;
  v2 = 0x6574617473;
  if (*v0 != 2)
  {
    v2 = 0x69796C7265646E75;
  }

  if (*v0)
  {
    v1 = 0x43676E696E6E7572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B0C2A1D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0C2C938(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0C2A1FC()
{
  sub_1B0C2A5D8();

  return sub_1B0E46F28();
}

uint64_t sub_1B0C2A238()
{
  sub_1B0C2A5D8();

  return sub_1B0E46F38();
}

uint64_t CommandConnection.CapturedValue.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5868, &qword_1B0ED9420);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0C2A5D8();
  sub_1B0E46D48();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v35) = 0;
  sub_1B0E46928();
  if (!v2)
  {
    *&v35 = v3[2];
    LOBYTE(v32[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5870, &qword_1B0ED9428);
    sub_1B0C2A62C();
    sub_1B0E46958();
    v13 = *(v3 + 13);
    v46[4] = *(v3 + 11);
    v46[5] = v13;
    v47[0] = *(v3 + 15);
    *(v47 + 15) = *(v3 + 135);
    v14 = *(v3 + 5);
    v46[0] = *(v3 + 3);
    v46[1] = v14;
    v15 = *(v3 + 9);
    v46[2] = *(v3 + 7);
    v46[3] = v15;
    v16 = *(v3 + 13);
    v39 = *(v3 + 11);
    v40 = v16;
    v41[0] = *(v3 + 15);
    *(v41 + 15) = *(v3 + 135);
    v17 = *(v3 + 5);
    v35 = *(v3 + 3);
    v36 = v17;
    v18 = *(v3 + 9);
    v37 = *(v3 + 7);
    v38 = v18;
    v34 = 2;
    sub_1B0C2A704(v46, v32);
    sub_1B0BE291C();
    sub_1B0E46958();
    v32[4] = v39;
    v32[5] = v40;
    *v33 = v41[0];
    *&v33[15] = *(v41 + 15);
    v32[0] = v35;
    v32[1] = v36;
    v32[2] = v37;
    v32[3] = v38;
    sub_1B0BE2970(v32);
    v19 = *(v3 + 10);
    v20 = *(v3 + 12);
    v43 = *(v3 + 11);
    v44 = v20;
    v21 = *(v3 + 10);
    v42[0] = *(v3 + 9);
    v42[1] = v21;
    v22 = *(v3 + 12);
    v29 = v43;
    v30 = v22;
    v45 = *(v3 + 208);
    v31 = *(v3 + 208);
    v27 = v42[0];
    v28 = v19;
    v26 = 3;
    sub_1B0C2A73C(v42, v24);
    sub_1B0C2A774();
    sub_1B0E46958();
    v24[2] = v29;
    v24[3] = v30;
    v25 = v31;
    v24[0] = v27;
    v24[1] = v28;
    sub_1B0C2A7C8(v24);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1B0C2A5D8()
{
  result = qword_1EB6DD070;
  if (!qword_1EB6DD070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD070);
  }

  return result;
}

unint64_t sub_1B0C2A62C()
{
  result = qword_1EB6DB448;
  if (!qword_1EB6DB448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E5870, &qword_1B0ED9428);
    sub_1B0C2A6B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB448);
  }

  return result;
}

unint64_t sub_1B0C2A6B0()
{
  result = qword_1EB6DCE38;
  if (!qword_1EB6DCE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCE38);
  }

  return result;
}

unint64_t sub_1B0C2A774()
{
  result = qword_1EB6DD008;
  if (!qword_1EB6DD008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD008);
  }

  return result;
}

__n128 CommandConnection.capturedValue.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionState();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = ConnectionID.debugDescription.getter(*(v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
  v10 = v9;
  v11 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
  swift_beginAccess();
  v12 = *(v2 + v11);
  v13 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = sub_1B0C2AA20(v13);

  v15 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038CA74(v2 + v15, v7, type metadata accessor for ConnectionState);
  sub_1B0C28818(v26);
  sub_1B038C764(v7, type metadata accessor for ConnectionState);
  sub_1B0C297B0(*(*(v2 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection), v23);
  *&v25[21] = v23[1];
  *&v25[37] = v23[2];
  *&v25[53] = v23[3];
  v25[69] = v24;
  *&v25[5] = v23[0];
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v14;
  v16 = v26[2];
  *(a1 + 72) = v26[3];
  *(a1 + 56) = v16;
  v17 = v26[0];
  *(a1 + 40) = v26[1];
  *(a1 + 24) = v17;
  *(a1 + 135) = *&v27[15];
  *(a1 + 120) = *v27;
  v18 = v26[4];
  *(a1 + 104) = v26[5];
  *(a1 + 88) = v18;
  *(a1 + 139) = *v25;
  result = *&v25[16];
  v20 = *&v25[32];
  v21 = *&v25[48];
  *(a1 + 201) = *&v25[62];
  *(a1 + 187) = v21;
  *(a1 + 171) = v20;
  *(a1 + 155) = result;
  return result;
}

uint64_t sub_1B0C2AA20(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1B0BFE5D4(0, v1, 0);
    v2 = v24;
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 8);
      v8 = *v4;
      v18[0] = *(v4 - 4);
      v18[1] = v5;
      v18[2] = v6;
      v19 = v7;
      v20 = v8;
      sub_1B0C2B184(v18, v21);
      v9 = v21[0];
      v10 = v21[1];
      v11 = v22;
      v12 = v23;
      v24 = v2;
      v14 = *(v2 + 16);
      v13 = *(v2 + 24);
      if (v14 >= v13 >> 1)
      {
        v17 = v22;
        sub_1B0BFE5D4((v13 > 1), v14 + 1, 1);
        v11 = v17;
        v2 = v24;
      }

      *(v2 + 16) = v14 + 1;
      v15 = v2 + 40 * v14;
      *(v15 + 32) = v9;
      *(v15 + 40) = v10;
      *(v15 + 48) = v11;
      *(v15 + 64) = v12;
      v4 += 5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection0B5StateO13CapturedValueV13AuthenticatedVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy209_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1B0C2AB98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 209))
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

uint64_t sub_1B0C2ABE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
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
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 209) = 1;
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

    *(result + 209) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B0C2AC8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1B0C2ACE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy115_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 111) = *(a2 + 111);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1B0C2ADAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 115))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1B0C2AE08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 114) = 0;
    *(result + 112) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 115) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 115) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1B0C2AE94()
{
  result = qword_1EB6E5878;
  if (!qword_1EB6E5878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5878);
  }

  return result;
}

uint64_t sub_1B0C2AEE8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5890, &qword_1B0ED9770);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0C2CAA0();
  sub_1B0E46D48();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_1B0E46928();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v17[14] = 1;
  sub_1B0E468C8();
  v16 = v3[4];
  v17[13] = 2;
  sub_1B0E46948();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B0C2B088()
{
  v1 = 1684957547;
  if (*v0 != 1)
  {
    v1 = 6645601;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6775156;
  }
}

uint64_t sub_1B0C2B0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0C2D078(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0C2B0F4()
{
  sub_1B0C2CAA0();

  return sub_1B0E46F28();
}

uint64_t sub_1B0C2B130()
{
  sub_1B0C2CAA0();

  return sub_1B0E46F38();
}

int64_t sub_1B0C2B184@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = qword_1B0ED9C28[v3];
  v5 = qword_1B0ED9C40[v3];
  v6 = *(a1 + 32);
  v11 = *a1;
  v12 = *(a1 + 4);
  sub_1B0E46508();
  result = static MonotonicTime.now()();
  v8 = __OFSUB__(v6, result);
  v9 = v6 - result;
  if (v6 < result)
  {
    if (__OFSUB__(result, v6))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v8 = __OFSUB__(0, result - v6);
    v9 = v6 - result;
    if (!v8)
    {
LABEL_7:
      v10 = v9 / 1000000000.0;
      if (COERCE__INT64(fabs(v10)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v10 > -9.22337204e18)
      {
        if (v10 < 9.22337204e18)
        {
          if (!__OFSUB__(0, v10))
          {
            *a2 = 0;
            a2[1] = 0xE000000000000000;
            a2[2] = v4;
            a2[3] = v5;
            a2[4] = -v10;
            return result;
          }

          goto LABEL_15;
        }

LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      __break(1u);
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1B0C2B2C8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E58C0, &qword_1B0ED9B18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0C2D57C();
  sub_1B0E46D48();
  v11 = *v3;
  v12 = v3[1];
  v22[15] = 0;
  sub_1B0E46928();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v22[14] = 1;
  sub_1B0E468C8();
  v15 = v3[4];
  v16 = v3[5];
  v22[13] = 2;
  sub_1B0E468C8();
  v17 = v3[6];
  v18 = v3[7];
  v22[12] = 3;
  sub_1B0E468C8();
  v20 = v3[8];
  v21 = v3[9];
  v22[11] = 4;
  sub_1B0E468C8();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B0C2B4A8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5880, &qword_1B0ED9760);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0C2BE54();
  sub_1B0E46D48();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v28) = 0;
  sub_1B0E468C8();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v28) = 1;
    sub_1B0E468C8();
    v16 = *(v3 + 4);
    v17 = *(v3 + 2);
    v34 = *(v3 + 3);
    v35 = v16;
    v18 = *(v3 + 4);
    v19 = *(v3 + 6);
    v36 = *(v3 + 5);
    v37 = v19;
    v20 = *(v3 + 2);
    v30 = v18;
    v31 = v36;
    v32 = *(v3 + 6);
    v33 = v20;
    v28 = v17;
    v29 = v34;
    v27 = 2;
    sub_1B0C2BEA8(&v33, v26);
    sub_1B0C2BF18();
    sub_1B0E468F8();
    v26[2] = v30;
    v26[3] = v31;
    v26[4] = v32;
    v26[0] = v28;
    v26[1] = v29;
    sub_1B0398EFC(v26, &qword_1EB6E5888, &qword_1B0ED9768);
    v21 = *(v3 + 112);
    v25 = 3;
    sub_1B0E468D8();
    v22 = *(v3 + 113);
    v25 = 4;
    sub_1B0E468D8();
    v23 = *(v3 + 114);
    v25 = 5;
    sub_1B0E468D8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B0C2B780()
{
  v1 = *v0;
  v2 = 0x696C696261706163;
  v3 = 0x614D64656C696166;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x64657463656C6573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4449726576726573;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B0C2B840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0C2D190(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0C2B868()
{
  sub_1B0C2D57C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0C2B8A4()
{
  sub_1B0C2D57C();

  return sub_1B0E46F38();
}

unint64_t sub_1B0C2B8F8()
{
  v1 = *v0;
  v2 = 0x697463656E6E6F63;
  v3 = 0xD000000000000014;
  v4 = 0x64656C696166;
  if (v1 != 4)
  {
    v4 = 0x656C6C65636E6163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E65687475616E75;
  if (v1 != 1)
  {
    v5 = 0x69746E6568747561;
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

uint64_t sub_1B0C2B9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0C2D35C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0C2B9FC()
{
  sub_1B0C2BE54();

  return sub_1B0E46F28();
}

uint64_t sub_1B0C2BA38()
{
  sub_1B0C2BE54();

  return sub_1B0E46F38();
}

uint64_t sub_1B0C2BA8C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5898, &qword_1B0ED9778);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0C2CAF4();
  sub_1B0E46D48();
  v11 = *v3;
  v21[15] = 0;
  sub_1B0E46948();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v13 = v3[2];
  v21[14] = 1;
  sub_1B0E468C8();
  v14 = v3[3];
  v15 = v3[4];
  v21[13] = 2;
  sub_1B0E468C8();
  v16 = v3[5];
  v17 = v3[6];
  v21[12] = 3;
  sub_1B0E468C8();
  v19 = v3[7];
  v20 = *(v3 + 64);
  v21[11] = 4;
  sub_1B0E46918();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B0C2BC70()
{
  v1 = *v0;
  v2 = 6645601;
  v3 = 1752457584;
  v4 = 0x746E696F70646E65;
  if (v1 != 3)
  {
    v4 = 30574;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574617473;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B0C2BCEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0C2D5D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0C2BD14()
{
  sub_1B0C2CAF4();

  return sub_1B0E46F28();
}

uint64_t sub_1B0C2BD50()
{
  sub_1B0C2CAF4();

  return sub_1B0E46F38();
}

unint64_t sub_1B0C2BDA8()
{
  result = qword_1EB6DD060;
  if (!qword_1EB6DD060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD060);
  }

  return result;
}

unint64_t sub_1B0C2BE00()
{
  result = qword_1EB6DD068;
  if (!qword_1EB6DD068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD068);
  }

  return result;
}

unint64_t sub_1B0C2BE54()
{
  result = qword_1EB6DCF38;
  if (!qword_1EB6DCF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCF38);
  }

  return result;
}

uint64_t sub_1B0C2BEA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5888, &qword_1B0ED9768);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B0C2BF18()
{
  result = qword_1EB6DCF08;
  if (!qword_1EB6DCF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCF08);
  }

  return result;
}

uint64_t sub_1B0C2BF6C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B0E469A8();
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
        v5 = sub_1B0E45278();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B0C2C134(v7, v8, a1, v4);
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
    return sub_1B0C2C064(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B0C2C064(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1B0E46A78(), (result & 1) == 0))
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

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0C2C134(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_1B0B9443C(v8);
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
        sub_1B0C2C710((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1B0E46A78();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1B0E46A78();
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
      result = sub_1B0AFF300(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1B0AFF300((v39 > 1), v40 + 1, 1, v8);
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
        sub_1B0C2C710((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B0B9443C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1B0B943B0(v44);
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
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1B0E46A78(), (result & 1) == 0))
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

uint64_t sub_1B0C2C710(char *__dst, char *__src, char *a3, char *a4)
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

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1B0E46A78() & 1) != 0)
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
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1B0E46A78() & 1) != 0)
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

uint64_t sub_1B0C2C938(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x43676E696E6E7572 && a2 == 0xEF73646E616D6D6FLL || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69796C7265646E75 && a2 == 0xEA0000000000676ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

unint64_t sub_1B0C2CAA0()
{
  result = qword_1EB6DCE50;
  if (!qword_1EB6DCE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCE50);
  }

  return result;
}

unint64_t sub_1B0C2CAF4()
{
  result = qword_1EB6DD020;
  if (!qword_1EB6DD020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD020);
  }

  return result;
}

uint64_t sub_1B0C2CB48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5520, &qword_1B0ED0CE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0C2CC20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnauthenticatedStateWithTasks();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0C2CCB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1B0C2CCFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0C2CD64()
{
  result = qword_1EB6E58A8;
  if (!qword_1EB6E58A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E58A8);
  }

  return result;
}

unint64_t sub_1B0C2CDBC()
{
  result = qword_1EB6E58B0;
  if (!qword_1EB6E58B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E58B0);
  }

  return result;
}

unint64_t sub_1B0C2CE14()
{
  result = qword_1EB6E58B8;
  if (!qword_1EB6E58B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E58B8);
  }

  return result;
}

unint64_t sub_1B0C2CE6C()
{
  result = qword_1EB6DD010;
  if (!qword_1EB6DD010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD010);
  }

  return result;
}

unint64_t sub_1B0C2CEC4()
{
  result = qword_1EB6DD018;
  if (!qword_1EB6DD018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD018);
  }

  return result;
}

unint64_t sub_1B0C2CF1C()
{
  result = qword_1EB6DCE40;
  if (!qword_1EB6DCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCE40);
  }

  return result;
}

unint64_t sub_1B0C2CF74()
{
  result = qword_1EB6DCE48;
  if (!qword_1EB6DCE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCE48);
  }

  return result;
}

unint64_t sub_1B0C2CFCC()
{
  result = qword_1EB6DCF28;
  if (!qword_1EB6DCF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCF28);
  }

  return result;
}

unint64_t sub_1B0C2D024()
{
  result = qword_1EB6DCF30;
  if (!qword_1EB6DCF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCF30);
  }

  return result;
}

uint64_t sub_1B0C2D078(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6775156 && a2 == 0xE300000000000000;
  if (v3 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6645601 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0C2D190(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696C696261706163 && a2 == 0xEC00000073656974;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449726576726573 && a2 == 0xE800000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614D64656C696166 && a2 == 0xED0000786F626C69 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B0F2D440 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xEF786F626C69614DLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0C2D35C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697463656E6E6F63 && a2 == 0xEA0000000000676ELL;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65687475616E75 && a2 == 0xEF64657461636974 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6568747561 && a2 == 0xED00006465746163 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B0F2C750 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B0E46A78();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1B0C2D57C()
{
  result = qword_1EB6DCF20;
  if (!qword_1EB6DCF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCF20);
  }

  return result;
}

uint64_t sub_1B0C2D5D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6645601 && a2 == 0xE300000000000000;
  if (v3 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1752457584 && a2 == 0xE400000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xE800000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 30574 && a2 == 0xE200000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B0E46A78();

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