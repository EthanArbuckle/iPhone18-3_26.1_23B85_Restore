uint64_t sub_1D5BDB10C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
    goto LABEL_2;
  }

  v12 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v12;
LABEL_2:
    MEMORY[0x1EEE9AC00](a1, v8);
    v10 = v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_1D5BDB26C(v10, v7, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = v2;
  v15 = sub_1D62FF93C(v13, v7, v3);
  result = MEMORY[0x1DA6FD500](v13, -1, -1);
  if (!v14)
  {
    return v15;
  }

  return result;
}

uint64_t sub_1D5BDB26C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = (*(a3 + 48) + 16 * v15);
    result = *v16;
    if (*v16 != 42 || v16[1] != 0xE100000000000000)
    {
      result = sub_1D72646CC();
      if ((result & 1) == 0)
      {
        *(v4 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        if (__OFADD__(v5++, 1))
        {
          __break(1u);
          return sub_1D5BDB3B0(v4, a2, v5, a3);
        }
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_1D5BDB3B0(v4, a2, v5, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5BDB3B0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1D62D574C();
  result = sub_1D726412C();
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
  v39 = v4;
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
    v21 = (v17 + (v16 << 6));
    v23 = *v21;
    v22 = v21[1];
    v24 = v21[3];
    v43 = v21[2];
    v44 = v24;
    v41 = v23;
    v42 = v22;
    sub_1D7264A0C();

    sub_1D5E3FA60(&v41, v40);
    sub_1D72621EC();
    result = sub_1D7264A5C();
    v25 = -1 << *(v9 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v9 + 48) + 16 * v28);
    *v33 = v19;
    v33[1] = v20;
    v34 = (*(v9 + 56) + (v28 << 6));
    v35 = v41;
    v36 = v42;
    v37 = v44;
    v34[2] = v43;
    v34[3] = v37;
    *v34 = v35;
    v34[1] = v36;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v39;
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D5BDB60C(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_1D725AA4C() == *a2 && v3 == a2[1])
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1D5BDB698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) == 1)
  {
    return sub_1D5B68374(a1 + 32, a2);
  }

  sub_1D5B49474(0, qword_1EDF22AA0);
  result = sub_1D72626AC();
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v7 = result + 32;
    do
    {
      if (v5 >= v3[2])
      {
        __break(1u);
        goto LABEL_37;
      }

      sub_1D5B68374(v7, &v36);
      v8 = v37;
      v9 = v38;
      __swift_project_boxed_opaque_existential_1(&v36, v37);
      sub_1D5C15304(v8, v9);
      v10 = v32;
      if (v3[2])
      {
        v11 = v3[7];
        v12 = v3[8];
        __swift_project_boxed_opaque_existential_1(v3 + 4, v11);
        sub_1D5C15304(v11, v12);
        if (v10 == 4)
        {
          if (v35 == 4)
          {
            goto LABEL_16;
          }
        }

        else if (v35 != 4 && v10 == v35)
        {
LABEL_16:
          sub_1D5B63F14(&v36, &v32);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v39 = v6;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D5C14860(0, *(v6 + 16) + 1, 1);
            v6 = v39;
          }

          v15 = *(v6 + 16);
          v14 = *(v6 + 24);
          if (v15 >= v14 >> 1)
          {
            sub_1D5C14860((v14 > 1), v15 + 1, 1);
            v6 = v39;
          }

          *(v6 + 16) = v15 + 1;
          result = sub_1D5B63F14(&v32, v6 + 40 * v15 + 32);
          goto LABEL_6;
        }
      }

      else if (v32 == 4)
      {
        goto LABEL_16;
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v36);
LABEL_6:
      ++v5;
      v7 += 40;
    }

    while (v4 != v5);
  }

  v16 = sub_1D72626AC();

  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    v20 = v16 + 32;
    while (v18 < *(v16 + 16))
    {
      sub_1D5B68374(v20, &v36);
      v21 = v37;
      v22 = v38;
      __swift_project_boxed_opaque_existential_1(&v36, v37);
      v23 = *((*(v22 + 16))(v21, v22) + 16);

      if (!*(v16 + 16))
      {
        goto LABEL_38;
      }

      sub_1D5B68374(v16 + 32, &v32);
      v24 = v33;
      v25 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, v33);
      v26 = *((*(v25 + 16))(v24, v25) + 16);

      __swift_destroy_boxed_opaque_existential_1(&v32);
      if (v23 == v26)
      {
        sub_1D5B63F14(&v36, &v32);
        v27 = swift_isUniquelyReferenced_nonNull_native();
        v39 = v19;
        if ((v27 & 1) == 0)
        {
          sub_1D5C14860(0, *(v19 + 16) + 1, 1);
          v19 = v39;
        }

        v29 = *(v19 + 16);
        v28 = *(v19 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1D5C14860((v28 > 1), v29 + 1, 1);
          v19 = v39;
        }

        *(v19 + 16) = v29 + 1;
        result = sub_1D5B63F14(&v32, v19 + 40 * v29 + 32);
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(&v36);
      }

      ++v18;
      v20 += 40;
      if (v17 == v18)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
LABEL_33:

    v30 = sub_1D72626AC();

    if (*(v30 + 16))
    {
      sub_1D5B68374(v30 + 32, a2);
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

uint64_t sub_1D5BDBB00(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v1 = sub_1D725AA4C();
  sub_1D5BDBB64(v1, v2);
}

uint64_t sub_1D5BDBB64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*v2 + 160);
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (*(v7 + 16) && (v8 = sub_1D5B69D90(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v10 = 0;
  }

  result = swift_endAccess();
  if (v10 == -1)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v3 + v6);
    *(v3 + v6) = 0x8000000000000000;
    sub_1D5BDBC60(v10 + 1, a1, a2, isUniquelyReferenced_nonNull_native);
    *(v3 + v6) = v13;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1D5BDBC78@<X0>(uint64_t (*a1)()@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v261 = a1;
  v229 = a3;
  v226 = sub_1D725895C();
  v225 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](v226, v5);
  v223 = &v201 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GroupLayoutBindingContext();
  v228 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v227 = &v201 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BF0FE4();
  v244 = v10;
  v235 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v240 = (&v201 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1E69E6720];
  sub_1D5BDD37C(0, &qword_1EDF1ACC8, sub_1D5BF0FE4, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v210 = &v201 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v209 = (&v201 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v242 = (&v201 - v22);
  MEMORY[0x1EEE9AC00](v23, v24);
  v239 = (&v201 - v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  v231 = &v201 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v232 = (&v201 - v31);
  MEMORY[0x1EEE9AC00](v32, v33);
  v238 = (&v201 - v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = (&v201 - v37);
  sub_1D5BDD3E0();
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v207 = &v201 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v208 = &v201 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v211 = &v201 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v214 = &v201 - v50;
  sub_1D5BDD37C(0, &qword_1EDF34B00, type metadata accessor for FeedBannerAd, v13);
  MEMORY[0x1EEE9AC00](v51 - 8, v52);
  v230 = &v201 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54, v55);
  v234 = &v201 - v56;
  v245 = type metadata accessor for FeedBannerAd();
  v243 = *(v245 - 8);
  MEMORY[0x1EEE9AC00](v245, v57);
  v237 = &v201 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = &v201 - v61;
  MEMORY[0x1EEE9AC00](v63, v64);
  v213 = &v201 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v212 = &v201 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v233 = &v201 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v222 = &v201 - v74;
  v221 = type metadata accessor for GroupLayoutContext();
  v220 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221, v75);
  v219 = &v201 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v77, v78);
  v80 = &v201 - v79;
  v81 = *v3;
  v82 = *(v3 + 1);
  LODWORD(v13) = v3[16];
  v259 = &_s2AdVN;
  v215 = sub_1D5BD6184();
  v260 = v215;
  v216 = v81;
  LOBYTE(v257) = v81;
  *(&v257 + 1) = v82;
  v258 = v13;
  v224 = a2;
  v83 = a2;
  v84 = v261;
  v246 = v80;
  sub_1D5BF038C(v83, v80, type metadata accessor for GroupLayoutContext);
  v236 = v7;
  v85 = *(v84 + *(v7 + 56));
  v86 = *(v85 + 16);
  v218 = v82;
  v217 = v13;
  sub_1D5BEE8A0(v82, v13);
  if (!v86 || (v87 = sub_1D5BCF83C(0x6E6E614264656546, 0xEC00000064417265, 0, 0), (v88 & 1) == 0) || (v89 = *(*(v85 + 56) + 8 * v87), !*(v89 + 16)))
  {
    sub_1D5ED8048();
    swift_allocError();
    strcpy(v93, "FeedBannerAd");
    *(v93 + 13) = 0;
    *(v93 + 14) = -5120;
LABEL_7:
    *(v93 + 16) = 0;
    *(v93 + 24) = 0;
    *(v93 + 32) = 0;
    *(v93 + 40) = 1;
    *(v93 + 48) = 0;
    *(v93 + 56) = 0;
    *(v93 + 64) = 0;
    swift_willThrow();
    goto LABEL_8;
  }

  v91 = v241;
  v92 = sub_1D5BF08EC(v90, 0, 0);
  if (v91)
  {

LABEL_8:
    sub_1D5BE786C(v246, type metadata accessor for GroupLayoutContext);
    return __swift_destroy_boxed_opaque_existential_1(&v257);
  }

  v95 = sub_1D5BF1050(v92);

  if (!v95)
  {
LABEL_21:

    sub_1D5ED8048();
    swift_allocError();
    strcpy(v93, "FeedBannerAd");
    *(v93 + 13) = 0;
    *(v93 + 14) = -5120;
    goto LABEL_7;
  }

  result = v95;
  v96 = *(v95 + 16);
  if (!v96)
  {

    goto LABEL_21;
  }

  v203 = v89;
  v97 = v236;
  v98 = *(v84 + *(v236 + 68));
  v201 = *(v236 + 76);
  v99 = *(v84 + v201);
  v241 = v95;
  v204 = 0;
  v202 = v99;
  if (v99 >= v98)
  {
LABEL_23:
    v110 = *(v84 + *(v97 + 72));
    v111 = __OFSUB__(v110, v99);
    v112 = v110 - v99;
    if (!v111)
    {
      v113 = *(result + 16);
      v114 = v244;
      v115 = v242;
      if (v112 < 1)
      {
        v122 = (v235 + 56);
        v238 = (v235 + 48);

        i = 0;
        if (v113)
        {
          goto LABEL_29;
        }

LABEL_28:
        v124 = 1;
        for (i = v113; ; ++i)
        {
          v130 = *v122;
          (*v122)(v115, v124, 1, v114);
          v131 = v239;
          sub_1D5BDD4EC(v115, v239);
          v132 = *v238;
          if ((*v238)(v131, 1, v114) == 1)
          {
            break;
          }

          v133 = v114;
          v134 = *v131;
          v135 = v131 + *(v133 + 48);
          v136 = v237;
          sub_1D5BDD484(v135, v237, type metadata accessor for FeedBannerAd);
          if ((*(v136 + *(v245 + 24) + 1) & 0x10) == 0)
          {
            v138 = v245;
            v159 = v241;

            v253[0] = v159;
            v160 = v208;
            sub_1D5BF1348(v134, v208);
            sub_1D5BE786C(v136, type metadata accessor for FeedBannerAd);

            v161 = v230;
            sub_1D5BDD484(v160, v230, type metadata accessor for FeedBannerAd);
            v137 = v243;
            v162 = *(v243 + 56);
            v162(v161, 0, 1, v138);
            v163 = v161;
            v164 = v234;
            sub_1D5BDD484(v163, v234, type metadata accessor for FeedBannerAd);
            v162(v164, 0, 1, v138);
            v146 = v164;
            v84 = v261;
            goto LABEL_50;
          }

          result = sub_1D5BE786C(v136, type metadata accessor for FeedBannerAd);
          v114 = v244;
          v115 = v242;
          if (i == v113)
          {
            goto LABEL_28;
          }

LABEL_29:
          if ((i & 0x8000000000000000) != 0)
          {
            goto LABEL_59;
          }

          if (i >= *(v241 + 16))
          {
            goto LABEL_60;
          }

          v125 = v244;
          v126 = v241 + ((*(v243 + 80) + 32) & ~*(v243 + 80)) + *(v243 + 72) * i;
          v127 = *(v244 + 48);
          v128 = v240;
          *v240 = i;
          sub_1D5BF038C(v126, v128 + v127, type metadata accessor for FeedBannerAd);
          v129 = v128;
          v115 = v242;
          sub_1D5BDD484(v129, v242, sub_1D5BF0FE4);
          v124 = 0;
          v114 = v125;
        }

        v151 = v241;

        v152 = v243;
        v153 = 1;
        v242 = *(v243 + 56);
        (v242)(v230, 1, 1, v245);
        if (*(v151 + 16))
        {
          v154 = (*(v152 + 80) + 32) & ~*(v152 + 80);
          v155 = v244;
          v156 = *(v244 + 48);
          v157 = v240;
          *v240 = 0;
          sub_1D5BF038C(v151 + v154, v157 + v156, type metadata accessor for FeedBannerAd);
          v158 = v210;
          sub_1D5BDD484(v157, v210, sub_1D5BF0FE4);
          v153 = 0;
        }

        else
        {
          v155 = v244;
          v158 = v210;
        }

        v130(v158, v153, 1, v155);
        v165 = v158;
        v166 = v209;
        sub_1D5BDD4EC(v165, v209);
        if (v132(v166, 1, v155) == 1)
        {

          v167 = 1;
          v146 = v234;
        }

        else
        {
          v168 = *v166;
          sub_1D5BE786C(v166 + *(v155 + 48), type metadata accessor for FeedBannerAd);
          v253[0] = v241;
          v169 = v207;
          sub_1D5BF1348(v168, v207);

          v146 = v234;
          sub_1D5BDD484(v169, v234, type metadata accessor for FeedBannerAd);
          v167 = 0;
        }

        v170 = v230;
        v138 = v245;
        (v242)(v146, v167, 1, v245);
        v137 = v243;
        v171 = (*(v243 + 48))(v170, 1, v138);
        v84 = v261;
        if (v171 != 1)
        {
          sub_1D5EF30F8(v170);
        }
      }

      else
      {
        if (v113)
        {
          v116 = (*(v243 + 80) + 32) & ~*(v243 + 80);
          v117 = *(v244 + 48);
          v118 = v240;
          *v240 = 0;
          sub_1D5BF038C(result + v116, v118 + v117, type metadata accessor for FeedBannerAd);
          v119 = v231;
          sub_1D5BDD484(v118, v231, sub_1D5BF0FE4);
          v120 = 0;
          v121 = v232;
        }

        else
        {
          v120 = 1;
          v121 = v232;
          v119 = v231;
        }

        v147 = v235;
        (*(v235 + 56))(v119, v120, 1, v114);
        sub_1D5BDD4EC(v119, v121);
        if ((*(v147 + 48))(v121, 1, v114) == 1)
        {

          v146 = v234;
          (*(v243 + 56))(v234, 1, 1, v245);
LABEL_52:
          sub_1D5EF30F8(v146);
          sub_1D5ED8048();
          swift_allocError();
          strcpy(v93, "FeedBannerAd");
          *(v93 + 13) = 0;
          *(v93 + 14) = -5120;
          goto LABEL_7;
        }

        v148 = v114;
        v149 = *v121;
        sub_1D5BE786C(v121 + *(v148 + 48), type metadata accessor for FeedBannerAd);
        v253[0] = v241;
        v150 = v211;
        sub_1D5BF1348(v149, v211);

        v146 = v234;
        sub_1D5BDD484(v150, v234, type metadata accessor for FeedBannerAd);
        v137 = v243;
        v138 = v245;
        (*(v243 + 56))(v146, 0, 1, v245);
      }

      goto LABEL_50;
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v206 = (v235 + 56);
  v205 = (v235 + 48);

  v100 = 0;
  v101 = v244;
LABEL_13:
  if ((v100 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_58;
  }

  if (v100 >= *(v241 + 16))
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v102 = v241 + ((*(v243 + 80) + 32) & ~*(v243 + 80)) + *(v243 + 72) * v100;
  v103 = *(v101 + 48);
  v104 = v240;
  *v240 = v100;
  sub_1D5BF038C(v102, v104 + v103, type metadata accessor for FeedBannerAd);
  v105 = v104;
  v106 = v238;
  sub_1D5BDD484(v105, v238, sub_1D5BF0FE4);
  v107 = 0;
  ++v100;
  while (1)
  {
    (*v206)(v106, v107, 1, v101);
    sub_1D5BDD4EC(v106, v38);
    if ((*v205)(v38, 1, v101) == 1)
    {
      v109 = v241;

      result = v109;
      v97 = v236;
      v99 = v202;
      goto LABEL_23;
    }

    v108 = *v38;
    sub_1D5BDD484(v38 + *(v101 + 48), v62, type metadata accessor for FeedBannerAd);
    if ((v62[*(v245 + 24) + 1] & 0x10) != 0)
    {
      break;
    }

    result = sub_1D5BE786C(v62, type metadata accessor for FeedBannerAd);
    if (v100 != v96)
    {
      goto LABEL_13;
    }

    v107 = 1;
    v100 = v96;
  }

  v137 = v243;
  v138 = v245;
  v139 = v241;

  v253[0] = v139;
  v140 = v214;
  sub_1D5BF1348(v108, v214);
  sub_1D5BE786C(v62, type metadata accessor for FeedBannerAd);

  v141 = v140;
  v142 = v213;
  sub_1D5BDD484(v141, v213, type metadata accessor for FeedBannerAd);
  v143 = v142;
  v144 = v212;
  sub_1D5BDD484(v143, v212, type metadata accessor for FeedBannerAd);
  v145 = v144;
  v146 = v234;
  sub_1D5BDD484(v145, v234, type metadata accessor for FeedBannerAd);
  (*(v137 + 56))(v146, 0, 1, v138);
LABEL_50:
  if ((*(v137 + 48))(v146, 1, v138) == 1)
  {

    goto LABEL_52;
  }

  v172 = v146;
  v173 = v233;
  result = sub_1D5BDD484(v172, v233, type metadata accessor for FeedBannerAd);
  if ((*(v173 + *(v138 + 24) + 1) & 0x10) == 0)
  {
    goto LABEL_56;
  }

  if (!__OFADD__(v202, 1))
  {
    *(v84 + v201) = v202 + 1;
LABEL_56:
    MEMORY[0x1EEE9AC00](result, v174);
    v175 = v233;
    v199 = v233;
    v176 = v204;
    v177 = sub_1D5BF5F6C(sub_1D5BF619C, v198, v203);
    v204 = v176;
    strcpy(v253, "FeedBannerAd");
    BYTE5(v253[1]) = 0;
    HIWORD(v253[1]) = -5120;
    v254 = 0;
    v255 = 0;
    sub_1D5BDACA8(v253, v177);

    v261 = type metadata accessor for FeedBannerAd;
    v178 = v222;
    sub_1D5BDD484(v175, v222, type metadata accessor for FeedBannerAd);
    v179 = v227;
    sub_1D5BF038C(v84, v227, type metadata accessor for GroupLayoutBindingContext);
    v180 = v219;
    sub_1D5BF038C(v224, v219, type metadata accessor for GroupLayoutContext);
    v181 = v223;
    sub_1D725894C();
    v182 = sub_1D725893C();
    v184 = v183;
    (*(v225 + 8))(v181, v226);
    v255 = &_s2AdVN;
    v256 = v215;
    LOBYTE(v253[0]) = v216;
    v185 = v218;
    v253[1] = v218;
    v186 = v217;
    LOBYTE(v254) = v217;
    type metadata accessor for GroupLayoutKey();
    v187 = swift_allocObject();
    sub_1D5BEE8A0(v185, v186);
    v251 = sub_1D7264C5C();
    v252 = v188;
    v249 = 95;
    v250 = 0xE100000000000000;
    v247 = 45;
    v248 = 0xE100000000000000;
    v199 = sub_1D5BF4D9C();
    v200 = v199;
    v198[0] = MEMORY[0x1E69E6158];
    v198[1] = v199;
    v189 = sub_1D7263A6C();
    v191 = v190;

    *(v187 + 16) = v189;
    *(v187 + 24) = v191;
    v192 = (v187 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
    *v192 = v182;
    v192[1] = v184;
    sub_1D5B68374(v253, v187 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
    v193 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
    sub_1D5BDD484(v179, v187 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
    (*(v228 + 56))(v187 + v193, 0, 1, v236);
    v194 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
    sub_1D5BDD484(v180, v187 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
    (*(v220 + 56))(v187 + v194, 0, 1, v221);
    __swift_destroy_boxed_opaque_existential_1(v253);
    v195 = _s2AdV5BoundVMa();
    v196 = v229;
    v229[3] = v195;
    v196[4] = sub_1D5BF1388(&qword_1EDF33D48, _s2AdV5BoundVMa);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v196);
    sub_1D5B63F14(&v257, boxed_opaque_existential_1);
    sub_1D5BDD484(v246, boxed_opaque_existential_1 + v195[5], type metadata accessor for GroupLayoutContext);
    result = sub_1D5BDD484(v178, boxed_opaque_existential_1 + v195[6], v261);
    *(boxed_opaque_existential_1 + v195[7]) = v187;
    return result;
  }

LABEL_62:
  __break(1u);
  return result;
}

void sub_1D5BDD37C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5BDD3E0()
{
  if (!qword_1EDF34B18[0])
  {
    type metadata accessor for FeedBannerAd();
    sub_1D5BDD37C(255, &qword_1EDF1B468, type metadata accessor for FeedBannerAd, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDF34B18);
    }
  }
}

uint64_t sub_1D5BDD484(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BDD4EC(uint64_t a1, uint64_t a2)
{
  sub_1D5BDD37C(0, &qword_1EDF1ACC8, sub_1D5BF0FE4, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s2AdV5BoundVMa()
{
  result = qword_1EDF33D38;
  if (!qword_1EDF33D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5BDD5CC()
{
  result = sub_1D5B49474(319, &qword_1EDF3FA20);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for GroupLayoutContext();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for FeedBannerAd();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for GroupLayoutKey();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D5BDD690(uint64_t a1)
{
  sub_1D5BDEE4C();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7273AE0;
  v4 = *(a1 + 24);
  *(v3 + 56) = type metadata accessor for FeedBannerAd();
  *(v3 + 64) = sub_1D5BF1388(&qword_1EDF34B08, type metadata accessor for FeedBannerAd);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 32));
  sub_1D5BF038C(v1 + v4, boxed_opaque_existential_1, type metadata accessor for FeedBannerAd);
  return v3;
}

unint64_t sub_1D5BDD78C()
{
  result = qword_1EDF37288[0];
  if (!qword_1EDF37288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF37288);
  }

  return result;
}

unint64_t sub_1D5BDD7E8()
{
  result = qword_1EDF37280;
  if (!qword_1EDF37280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF37280);
  }

  return result;
}

uint64_t sub_1D5BDD860(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D725891C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1D72585BC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1D5BDD98C()
{
  sub_1D5BE5D04();
  if (v0 <= 0x3F)
  {
    sub_1D5BE5D60();
    if (v1 <= 0x3F)
    {
      sub_1D5BE5DC4();
      if (v2 <= 0x3F)
      {
        sub_1D72585BC();
        if (v3 <= 0x3F)
        {
          sub_1D5B5D6A0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t FeedContext.premiumBadge(for:hasAccess:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v7 = type metadata accessor for FeedContext();
  if (*(v3 + *(v7 + 36)))
  {
    result = 1;
  }

  else
  {
    v9 = v7;
    result = [*v3 containsHeadline_];
    if (result && (a2 & 1) != 0)
    {
      result = *(v3 + *(v9 + 32));
    }
  }

  *a3 = result;
  return result;
}

uint64_t sub_1D5BDDB20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BDDB88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BDDBE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BDDC48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BDDCA8(uint64_t a1)
{
  v2 = type metadata accessor for FeedItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5BDDD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v73 = a7;
  v74 = a4;
  v75 = a5;
  v65 = a3;
  v12 = sub_1D7259F5C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v66 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v63 - v18;
  v20 = sub_1D7259CFC();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *v74;
  v25 = v75;
  v74 = a1;
  v75 = a6;
  sub_1D5BDE170(a1, v25, a6, v73, v76);
  v26 = v76[3];
  *(a8 + 32) = v76[2];
  *(a8 + 48) = v26;
  *(a8 + 64) = v76[4];
  v27 = v76[1];
  *a8 = v76[0];
  *(a8 + 16) = v27;
  v28 = *(v21 + 16);
  v71 = a2;
  v28(v24, a2, v20);
  v64 = *(v13 + 16);
  v29 = v65;
  v64(v19, v65, v12);
  v73 = sub_1D7259CCC();
  sub_1D7259E6C();
  v31 = v30;
  v33 = v32;
  sub_1D7259E7C();
  v35 = v34;
  v37 = v36;
  sub_1D7259E8C();
  v39 = v38;
  v41 = v40;
  sub_1D7259E9C();
  v43 = v42;
  v45 = v44;
  v46 = *(v13 + 8);
  v72 = v13 + 8;
  v68 = v46;
  v46(v19, v12);
  v47 = *(v21 + 8);
  v69 = v20;
  v67 = v47;
  v47(v24, v20);
  *(a8 + 80) = v73;
  *(a8 + 88) = v31;
  *(a8 + 96) = v33;
  *(a8 + 104) = v35;
  *(a8 + 112) = v37;
  *(a8 + 120) = v39;
  *(a8 + 128) = v41;
  *(a8 + 136) = v43;
  *(a8 + 144) = v45;
  v48 = v66;
  v73 = v12;
  v64(v66, v29, v12);
  v49 = (a8 + *(type metadata accessor for FeedLayoutCacheKey() + 24));
  sub_1D7259F2C();
  *v49 = v50;
  v49[1] = v51;
  v52 = sub_1D7259EBC();
  v53 = [v52 preferredContentSizeCategory];

  v54 = UIContentSizeCategory.description.getter();
  v56 = v55;

  v49[2] = v54;
  v49[3] = v56;
  v57 = type metadata accessor for FeedLayoutCacheDynamicKey();
  sub_1D7259EDC();
  *(v49 + v57[7]) = UIAccessibilityIsInvertColorsEnabled();
  v58 = sub_1D7259EBC();
  v59 = [v58 legibilityWeight];

  if (v59 >= 2)
  {
    LOBYTE(v59) = UIAccessibilityIsBoldTextEnabled();
  }

  v60 = v73;
  v61 = v68;
  v68(v29, v73);
  v67(v71, v69);
  (*(*(v75 - 8) + 8))(v74);
  result = v61(v48, v60);
  *(v49 + v57[8]) = v59;
  *(v49 + v57[9]) = v70;
  return result;
}

uint64_t sub_1D5BDE170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v48 = a1;
  v49 = a3;
  v46 = a5;
  v47 = a2;
  v7 = type metadata accessor for FeedItem(0);
  v38 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*(a4 + 88))(a3, a4, v9);
  v43 = v13;
  v44 = v12;
  v42 = sub_1D725AA4C();
  v41 = v14;
  (*(a4 + 32))(v57, a3, a4);
  v15 = v57[0];
  v50 = v57[0];
  v51 = v57[1];
  v52 = v57[2];
  v53 = v57[3];
  v54 = v57[4];
  v55 = v57[5];
  v56 = v57[6];
  v40 = FeedGroupKind.identifier.getter();
  v39 = v16;
  sub_1D5BC6C20(v15);
  v17 = *(a4 + 16);
  v45 = a4;
  v18 = v17(v49, a4);
  v19 = *(v18 + 16);
  if (v19)
  {
    v57[0] = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v19, 0);
    v20 = v57[0];
    v21 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v37 = v18;
    v22 = v18 + v21;
    v23 = *(v38 + 72);
    do
    {
      sub_1D5BC8CF4(v22, v11);
      v24 = FeedItem.identifier.getter();
      v26 = v25;
      sub_1D5BDDCA8(v11);
      v57[0] = v20;
      v28 = *(v20 + 16);
      v27 = *(v20 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1D5BFC364((v27 > 1), v28 + 1, 1);
        v20 = v57[0];
      }

      *(v20 + 16) = v28 + 1;
      v29 = v20 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v22 += v23;
      --v19;
    }

    while (v19);
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  v30 = v47;
  result = (*(v45 + 48))(v49);
  v32 = v46;
  v33 = v43;
  *v46 = v44;
  v32[1] = v33;
  v34 = v41;
  v32[2] = v42;
  v32[3] = v34;
  v35 = v39;
  v32[4] = v40;
  v32[5] = v35;
  v32[6] = v20;
  v32[7] = result;
  v32[8] = v36;
  v32[9] = v30;
  return result;
}

uint64_t UIContentSizeCategory.description.getter()
{
  v0 = 0x4C5858585F5841;
  v1 = sub_1D726207C();
  v3 = v2;
  if (v1 == sub_1D726207C() && v3 == v4)
  {
LABEL_12:

    return v0;
  }

  v6 = sub_1D72646CC();

  if ((v6 & 1) == 0)
  {
    v0 = 0x4C58585F5841;
    v7 = sub_1D726207C();
    v9 = v8;
    if (v7 == sub_1D726207C() && v9 == v10)
    {
      goto LABEL_12;
    }

    v12 = sub_1D72646CC();

    if (v12)
    {
      return v0;
    }

    v0 = 0x4C585F5841;
    v14 = sub_1D726207C();
    v16 = v15;
    if (v14 == sub_1D726207C() && v16 == v17)
    {
      goto LABEL_12;
    }

    v18 = sub_1D72646CC();

    if (v18)
    {
      return v0;
    }

    v0 = 1281316929;
    v19 = sub_1D726207C();
    v21 = v20;
    if (v19 == sub_1D726207C() && v21 == v22)
    {
      goto LABEL_12;
    }

    v23 = sub_1D72646CC();

    if (v23)
    {
      return v0;
    }

    v0 = 1298094145;
    v24 = sub_1D726207C();
    v26 = v25;
    if (v24 == sub_1D726207C() && v26 == v27)
    {
      goto LABEL_12;
    }

    v28 = sub_1D72646CC();

    if (v28)
    {
      return v0;
    }

    v0 = 1280858200;
    v29 = sub_1D726207C();
    v31 = v30;
    if (v29 == sub_1D726207C() && v31 == v32)
    {
      goto LABEL_12;
    }

    v33 = sub_1D72646CC();

    if (v33)
    {
      return v0;
    }

    v0 = 5003352;
    v34 = sub_1D726207C();
    v36 = v35;
    if (v34 == sub_1D726207C() && v36 == v37)
    {
      goto LABEL_12;
    }

    v38 = sub_1D72646CC();

    if (v38)
    {
      return v0;
    }

    v39 = sub_1D726207C();
    v41 = v40;
    if (v39 == sub_1D726207C() && v41 == v42)
    {

      return 19544;
    }

    v43 = sub_1D72646CC();

    if (v43)
    {
      return 19544;
    }

    v44 = sub_1D726207C();
    v46 = v45;
    if (v44 == sub_1D726207C() && v46 == v47)
    {

      return 76;
    }

    v48 = sub_1D72646CC();

    if (v48)
    {
      return 76;
    }

    v49 = sub_1D726207C();
    v51 = v50;
    if (v49 == sub_1D726207C() && v51 == v52)
    {

      return 77;
    }

    v53 = sub_1D72646CC();

    if (v53)
    {
      return 77;
    }

    v54 = sub_1D726207C();
    v56 = v55;
    if (v54 == sub_1D726207C() && v56 == v57)
    {

      return 83;
    }

    v58 = sub_1D72646CC();

    if (v58)
    {
      return 83;
    }

    v59 = sub_1D726207C();
    v61 = v60;
    if (v59 == sub_1D726207C() && v61 == v62)
    {

      return 21336;
    }

    else
    {
      v63 = sub_1D72646CC();

      if (v63)
      {
        return 21336;
      }

      else
      {
        return 0x6669636570736E75;
      }
    }
  }

  return v0;
}

void *BlueprintSection<>.feedSlots.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FeedItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725D61C();
  v17 = (*(a2 + 24))(v11, a2);
  (*(v12 + 8))(v16, v11);
  result = v17;
  if (!*(v17 + 16))
  {

    sub_1D5B58150(0, &unk_1EDF19A00, &type metadata for FeedSlot, MEMORY[0x1E69E6F90]);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1D7273AE0;
    v19 = BlueprintSection<>.feedItems.getter(a1, a2, a3);
    v20 = *(v19 + 16);
    v21 = MEMORY[0x1E69E7CC0];
    if (v20)
    {
      v39 = MEMORY[0x1E69E7CC0];
      sub_1D5BFC364(0, v20, 0);
      v22 = v39;
      v23 = *(v7 + 80);
      v37[1] = v19;
      v24 = v19 + ((v23 + 32) & ~v23);
      v25 = *(v7 + 72);
      do
      {
        sub_1D5BC8CF4(v24, v10);
        v26 = FeedItem.identifier.getter();
        v28 = v27;
        sub_1D5BCA9EC(v10, type metadata accessor for FeedItem);
        v39 = v22;
        v30 = *(v22 + 16);
        v29 = *(v22 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1D5BFC364((v29 > 1), v30 + 1, 1);
          v22 = v39;
        }

        *(v22 + 16) = v30 + 1;
        v31 = v22 + 16 * v30;
        *(v31 + 32) = v26;
        *(v31 + 40) = v28;
        v24 += v25;
        --v20;
      }

      while (v20);

      v21 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v22 = MEMORY[0x1E69E7CC0];
    }

    v32 = sub_1D5B86020(v22);

    v33 = sub_1D5BCABCC(v21);
    v34 = sub_1D5BCACF4(v21);
    v35 = sub_1D5BCAE1C(v21);
    result = v38;
    *(v38 + 32) = 42;
    result[5] = 0xE100000000000000;
    result[6] = v32;
    result[7] = v33;
    result[8] = v34;
    result[9] = v35;
    v36 = MEMORY[0x1E69E7CD0];
    result[10] = v21;
    result[11] = v36;
  }

  return result;
}

void sub_1D5BDEE4C()
{
  if (!qword_1EDF199E0)
  {
    sub_1D5B49474(255, &qword_1EDF41FC0);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF199E0);
    }
  }
}

unint64_t sub_1D5BDEEB4()
{
  result = qword_1EDF05F78;
  if (!qword_1EDF05F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F78);
  }

  return result;
}

uint64_t sub_1D5BDEF08@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28();
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A6_V1.Bound() + 24);
  result = type metadata accessor for GroupLayoutContext();
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D5BDEFF8()
{
  result = qword_1EDF363B0;
  if (!qword_1EDF363B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF363B0);
  }

  return result;
}

uint64_t FeedItemLayoutAttributes.identifier.getter()
{
  v1 = type metadata accessor for PluginLayout.Context(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v34[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EngagementBannerViewLayout.Context();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = (&v34[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (&v34[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for HeadlineViewLayout.Context(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v34[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FeedBannerAdViewLayout.Context(0);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v21 = (&v34[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *v0;
  v23 = *v0 >> 60;
  if (v23 > 5)
  {
    if (v23 <= 8)
    {
      if (v23 == 6)
      {
        sub_1D6EB3D34((v22 & 0xFFFFFFFFFFFFFFFLL) + 16, &v33);
        sub_1D5EE5AF8(v34, &v35);
        sub_1D6CB9F0C(&v33);
        v24 = v35;

        sub_1D5EE5B54(&v35);
        return v24;
      }

      if (v23 != 7)
      {
        sub_1D6C561EC((v22 & 0xFFFFFFFFFFFFFFFLL) + 16, &v33);
        sub_1D5F76D3C(v34, &v35);
        sub_1D6C92B8C(&v33);
        v24 = v35;

        sub_1D5F76DEC(&v35);
        return v24;
      }

      sub_1D6CCCC8C();
      v24 = *(*(*(swift_projectBox() + *(v25 + 48)) + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes) + 48);
      goto LABEL_17;
    }

    if (v23 == 9)
    {
      sub_1D6EB21C8(0, &qword_1EDF0B9E0, type metadata accessor for EngagementBannerViewLayout.Context);
      v31 = swift_projectBox();
      sub_1D6EB3C6C(v31, v8, type metadata accessor for EngagementBannerViewLayout.Context);
      v24 = *v8;

      v27 = type metadata accessor for FeedEngagementBanner;
      v28 = v8;
    }

    else
    {
      if (v23 != 10)
      {
        v33 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        return FeedItemLayoutAttributes.identifier.getter(v19);
      }

      sub_1D6EB21C8(0, &qword_1EDF11FE0, type metadata accessor for PluginLayout.Context);
      v29 = swift_projectBox();
      sub_1D6EB3C6C(v29, v4, type metadata accessor for PluginLayout.Context);
      v24 = _s5TeaUI11PluginModelC8NewsFeedE15debugIdentifierSSvg_0();
      v27 = type metadata accessor for PluginLayout.Context;
      v28 = v4;
    }

LABEL_21:
    sub_1D6EB3CD4(v28, v27);
    return v24;
  }

  if (v23 > 2)
  {
    if (v23 == 3)
    {
      sub_1D5EF31B8();
      v30 = swift_projectBox();
      sub_1D6EB3C6C(v30, v21, type metadata accessor for FeedBannerAdViewLayout.Context);
      v24 = *v21;

      v27 = type metadata accessor for FeedBannerAd;
      v28 = v21;
    }

    else
    {
      if (v23 != 4)
      {
        sub_1D5EF92B8((v22 & 0xFFFFFFFFFFFFFFFLL) + 16, &v33);
        v24 = v34[1];

        sub_1D5EF93F0(&v33);
        return v24;
      }

      sub_1D5BE5E28();
      v26 = swift_projectBox();
      sub_1D6EB3C6C(v26, v16, type metadata accessor for HeadlineViewLayout.Context);
      sub_1D6EB3C6C(&v16[*(v13 + 20)], v12, type metadata accessor for FeedHeadline);
      sub_1D6EB3CD4(v16, type metadata accessor for HeadlineViewLayout.Context);
      v24 = *v12;

      v27 = type metadata accessor for FeedHeadline;
      v28 = v12;
    }

    goto LABEL_21;
  }

  if (!v23)
  {
    v24 = *(v22 + 16);
LABEL_17:

    return v24;
  }

  if (v23 == 1)
  {
    sub_1D5C21540((v22 & 0xFFFFFFFFFFFFFFFLL) + 16, &v33);
    v24 = v33;

    sub_1D5BDA528(&v33);
  }

  else
  {
    sub_1D69DE4F8((v22 & 0xFFFFFFFFFFFFFFFLL) + 16, &v33);
    v24 = v33;

    sub_1D69DE554(&v33);
  }

  return v24;
}

char *sub_1D5BDF58C(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1D5B5A7F0(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1D5BDF6B0(char *a1, int64_t a2, char a3)
{
  result = sub_1D5BDF58C(a1, a2, a3, *v3, &qword_1EDF19A30, &type metadata for FeedItemLayoutAttributes);
  *v3 = result;
  return result;
}

uint64_t sub_1D5BDF73C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v6)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_1D72646CC();
    result = 0;
    if ((v9 & 1) == 0 || v2 != v6)
    {
      return result;
    }
  }

  if (v3 == v5 && v4 == v7)
  {
    return 1;
  }

  return sub_1D72646CC();
}

void sub_1D5BDF860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    v6 = *(a1 + 32);
    CGRectGetHeight(*a1);
    if (__OFADD__(a4, *(v6 + 16)))
    {
      __break(1u);
    }
  }
}

__n128 FeedItemLayoutAttributes.frame.getter()
{
  v1 = sub_1D7260C5C();
  v2 = *(v1 - 8);
  v5 = MEMORY[0x1EEE9AC00](v1, v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  v9 = *v0 >> 60;
  if (v9 <= 5)
  {
    if (v9 <= 2)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          return *((v8 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
        }

        else
        {
          return *((v8 & 0xFFFFFFFFFFFFFFFLL) + 0x98);
        }
      }

      else
      {
        return 0;
      }
    }

    if (v9 != 3)
    {
      if (v9 != 4)
      {
        v16 = (v8 & 0xFFFFFFFFFFFFFFFLL) + 408;
        return *v16;
      }

      sub_1D5BE5E28();
      goto LABEL_21;
    }

    v17 = v4;
    sub_1D5EF31B8();
    v19 = v18;
    v20 = swift_projectBox();
    (*(v2 + 16))(v7, v20 + *(v19 + 48), v17);
    sub_1D7260C3C();
    v26 = v22;
    v27 = v21;
    v28 = v24;
    v29 = v23;
    (*(v2 + 8))(v7, v17);
    result.n128_u64[0] = v27;
    v25 = v29;
LABEL_27:
    result.n128_u64[1] = v25;
    return result;
  }

  if (v9 > 8)
  {
    if (v9 == 9)
    {
      v14 = &qword_1EDF0B9E0;
      v15 = type metadata accessor for EngagementBannerViewLayout.Context;
    }

    else
    {
      if (v9 != 10)
      {
        v30 = *((v8 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        FeedItemLayoutAttributes.frame.getter(v5);
        goto LABEL_27;
      }

      v14 = &qword_1EDF11FE0;
      v15 = type metadata accessor for PluginLayout.Context;
    }

    sub_1D6EB21C8(0, v14, v15);
LABEL_21:
    v16 = swift_projectBox() + *(v13 + 48);
    return *v16;
  }

  if (v9 == 6)
  {
    v16 = (v8 & 0xFFFFFFFFFFFFFFFLL) + 264;
    return *v16;
  }

  if (v9 == 7)
  {
    sub_1D6CCCC8C();
    v12 = *(*(swift_projectBox() + *(v11 + 48)) + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
    swift_beginAccess();
    return v12[1];
  }

  else
  {
    return *((v8 & 0xFFFFFFFFFFFFFFFLL) + 0x160);
  }
}

uint64_t FeedBannerAd.cacheIdentifier.getter()
{
  v1 = sub_1D726035C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D72604BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0[1];
  v17[0] = *v0;
  v17[1] = v11;

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  type metadata accessor for FeedBannerAd();
  sub_1D7260DBC();
  sub_1D5BD58C4(&unk_1EDF3AA80, MEMORY[0x1E69B3EE0]);
  v12 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v12);

  (*(v7 + 8))(v10, v6);
  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  sub_1D7260DCC();
  v13 = sub_1D72602BC();
  v15 = v14;
  (*(v2 + 8))(v5, v1);
  MEMORY[0x1DA6F9910](v13, v15);

  return v17[0];
}

uint64_t sub_1D5BDFDB0(uint64_t a1)
{
  result = sub_1D5BD58C4(&qword_1EDF34B10, type metadata accessor for FeedBannerAd);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D5BDFE0C(uint64_t a1)
{
  *(a1 + 8) = sub_1D5BDFE3C();
  result = sub_1D5BD61D8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D5BDFE3C()
{
  result = qword_1EDF33CA0;
  if (!qword_1EDF33CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33CA0);
  }

  return result;
}

uint64_t type metadata accessor for FeedBannerAdRequester.ScheduledRequest()
{
  result = qword_1EDF37A10;
  if (!qword_1EDF37A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FeedBannerAdRequester.unscheduleRequests(where:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D7261ABC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D7261B2C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = sub_1D5BBE584;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_12_0;
  v17 = _Block_copy(aBlock);

  sub_1D7261AEC();
  v19[1] = MEMORY[0x1E69E7CC0];
  sub_1D5B73758(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
  sub_1D5B73908();
  sub_1D5B73758(&qword_1EDF1B560, sub_1D5B73908);
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v15, v10, v17);
  _Block_release(v17);
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
}

void sub_1D5BE0218()
{
  if (!qword_1EDF1ACF0)
  {
    type metadata accessor for FeedBannerAdRequester.ScheduledRequest();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1ACF0);
    }
  }
}

uint64_t sub_1D5BE0298(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FeedBannerAd();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1D7260A9C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D5BE03A0(uint64_t a1, uint64_t a2)
{
  sub_1D5B5E1BC(0, &qword_1EDF1ACE8, sub_1D5BE0218, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5BE0448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FeedBannerAd();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1D7260A9C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t FeedCursor.reachedEnd.getter()
{
  type metadata accessor for FeedCursorGroup();
  if (sub_1D726279C() == *(v0 + qword_1EDFFCF00))
  {
    return 1;
  }

  type metadata accessor for FeedDatabaseGroup();
  sub_1D72627FC();
  swift_getWitnessTable();
  if ((sub_1D7262CCC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FeedGroupEmitter();
  sub_1D72627FC();
  swift_getWitnessTable();
  if ((sub_1D7262CCC() & 1) == 0)
  {
    return 0;
  }

  v2 = *(v0 + qword_1EDFFCF08);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
LABEL_15:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v2 + 48) + ((v7 << 9) | (8 * v9)));

    if (v10 < FeedCursor.nextSlotIndex.getter())
    {
    }

    else
    {
      v11 = sub_1D7262CCC();

      if ((v11 & 1) == 0)
      {
        v12 = 0;
LABEL_19:

        return v12;
      }
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      v12 = 1;
      goto LABEL_19;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t FeedCursor.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v3 = *(*v1 + 272);
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    sub_1D5BFCA08(0, &qword_1EDF19560, sub_1D5BE1388, MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D727C500;
    *(v5 + 32) = 0x696669746E656469;
    v7 = *(v1 + 16);
    v6 = *(v1 + 24);
    v8 = MEMORY[0x1E69E6158];
    *(v5 + 40) = 0xEA00000000007265;
    *(v5 + 48) = v7;
    *(v5 + 56) = v6;
    *(v5 + 72) = v8;
    *(v5 + 80) = 1684957547;
    *(v5 + 88) = 0xE400000000000000;
    *(v5 + 96) = *(v1 + 32);
    *(v5 + 120) = &type metadata for FeedCursorKind;
    *(v5 + 128) = 0x65646F4D64656566;
    *(v5 + 136) = 0xE800000000000000;
    v9 = *(*v1 + 80);
    v10 = *(*v1 + 88);

    FeedServiceConfigType.feedMode.getter(v9, v10, &v44);
    v11 = 0x746C7561666564;
    if (v44)
    {
      v11 = 0x656E696C66666FLL;
    }

    *(v5 + 144) = v11;
    *(v5 + 152) = 0xE700000000000000;
    v12 = *(v1 + qword_1EDFFCF00);
    v13 = MEMORY[0x1E69E6530];
    *(v5 + 168) = v8;
    *(v5 + 176) = 0x6F72476C61746F74;
    *(v5 + 184) = 0xEF746E756F437075;
    *(v5 + 192) = v12;
    *(v5 + 216) = v13;
    strcpy((v5 + 224), "openEmitters");
    *(v5 + 237) = 0;
    *(v5 + 238) = -5120;
    v14 = *(v1 + qword_1EDFFCF48);
    type metadata accessor for FeedGroupEmitter();
    v15 = sub_1D72627FC();
    *(v5 + 240) = v14;
    *(v5 + 264) = v15;
    strcpy((v5 + 272), "stagedEmitters");
    v16 = *(v2 + qword_1EDFFCF10);
    v42 = v4;
    *(v5 + 287) = -18;
    *(v5 + 288) = v16;
    *(v5 + 312) = v15;
    *(v5 + 320) = 0x45646574746F6C73;
    *(v5 + 328) = 0xEF7372657474696DLL;
    v17 = *(v2 + qword_1EDFFCF08);
    v18 = sub_1D7261E1C();
    *(v5 + 336) = v17;
    v19 = *(v2 + qword_1EDFFCF20);
    *(v5 + 360) = v18;
    strcpy((v5 + 368), "expandEmitters");
    *(v5 + 383) = -18;
    *(v5 + 384) = v19;
    *(v5 + 408) = v15;
    strcpy((v5 + 416), "nextSlotIndex");
    *(v5 + 430) = -4864;

    *(v5 + 432) = FeedCursor.nextSlotIndex.getter();
    v20 = MEMORY[0x1E69E6530];
    *(v5 + 456) = MEMORY[0x1E69E6530];
    *(v5 + 464) = 0x4564656863616572;
    *(v5 + 472) = 0xEA0000000000646ELL;
    v21 = FeedCursor.reachedEnd.getter();
    v22 = MEMORY[0x1E69E6370];
    *(v5 + 480) = v21 & 1;
    *(v5 + 504) = v22;
    *(v5 + 512) = 0xD000000000000012;
    *(v5 + 520) = 0x80000001D73C0C90;
    type metadata accessor for FeedCursorGroup();
    v23 = sub_1D726279C();
    *(v5 + 552) = v20;
    *(v5 + 528) = v23;
    *(v5 + 560) = 0xD000000000000013;
    *(v5 + 568) = 0x80000001D73C0CB0;
    type metadata accessor for FeedDatabaseGroup();
    v24 = sub_1D726279C();
    *(v5 + 600) = v20;
    *(v5 + 576) = v24;
    *(v5 + 608) = 0x737275437478656ELL;
    *(v5 + 616) = 0xEA0000000000726FLL;
    *(v5 + 648) = type metadata accessor for FeedNextCursor();
    *(v5 + 624) = v42;

    sub_1D5BE1168(v5);
    swift_setDeallocating();
    sub_1D5BE1388();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    a1[3] = sub_1D725B0DC();
    a1[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a1);
    sub_1D725B0CC();
  }

  else
  {
    sub_1D5BFCA08(0, &qword_1EDF19560, sub_1D5BE1388, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D73032E0;
    *(inited + 32) = 0x696669746E656469;
    *(inited + 40) = 0xEA00000000007265;
    v27 = *(v1 + 24);
    v28 = MEMORY[0x1E69E6158];
    *(inited + 48) = *(v1 + 16);
    *(inited + 56) = v27;
    *(inited + 72) = v28;
    *(inited + 80) = 1684957547;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = *(v1 + 32);
    *(inited + 120) = &type metadata for FeedCursorKind;
    *(inited + 128) = 0x65646F4D64656566;
    *(inited + 136) = 0xE800000000000000;
    v29 = *(*v1 + 80);
    v30 = *(*v1 + 88);

    FeedServiceConfigType.feedMode.getter(v29, v30, &v44);
    v31 = 0x746C7561666564;
    if (v44)
    {
      v31 = 0x656E696C66666FLL;
    }

    *(inited + 144) = v31;
    *(inited + 152) = 0xE700000000000000;
    *(inited + 168) = v28;
    *(inited + 176) = 0x6F72476C61746F74;
    *(inited + 184) = 0xEF746E756F437075;
    v32 = MEMORY[0x1E69E6530];
    *(inited + 192) = *(v1 + qword_1EDFFCF00);
    *(inited + 216) = v32;
    strcpy((inited + 224), "openEmitters");
    *(inited + 237) = 0;
    *(inited + 238) = -5120;
    v33 = *(v1 + qword_1EDFFCF48);
    type metadata accessor for FeedGroupEmitter();
    v34 = sub_1D72627FC();
    *(inited + 240) = v33;
    *(inited + 264) = v34;
    *(inited + 272) = 0x45646574746F6C73;
    *(inited + 280) = 0xEF7372657474696DLL;
    v35 = *(v2 + qword_1EDFFCF08);
    v36 = sub_1D7261E1C();
    *(inited + 288) = v35;
    *(inited + 312) = v36;
    strcpy((inited + 320), "stagedEmitters");
    *(inited + 335) = -18;
    *(inited + 336) = *(v2 + qword_1EDFFCF10);
    *(inited + 360) = v34;
    strcpy((inited + 368), "expandEmitters");
    *(inited + 383) = -18;
    *(inited + 384) = *(v2 + qword_1EDFFCF20);
    *(inited + 408) = v34;
    strcpy((inited + 416), "nextSlotIndex");
    *(inited + 430) = -4864;

    *(inited + 432) = FeedCursor.nextSlotIndex.getter();
    v37 = MEMORY[0x1E69E6530];
    *(inited + 456) = MEMORY[0x1E69E6530];
    *(inited + 464) = 0x4564656863616572;
    *(inited + 472) = 0xEA0000000000646ELL;
    v38 = FeedCursor.reachedEnd.getter();
    v39 = MEMORY[0x1E69E6370];
    *(inited + 480) = v38 & 1;
    *(inited + 504) = v39;
    *(inited + 512) = 0xD000000000000012;
    *(inited + 520) = 0x80000001D73C0C90;
    type metadata accessor for FeedCursorGroup();
    v40 = sub_1D726279C();
    *(inited + 552) = v37;
    *(inited + 528) = v40;
    *(inited + 560) = 0xD000000000000013;
    *(inited + 568) = 0x80000001D73C0CB0;
    type metadata accessor for FeedDatabaseGroup();
    v41 = sub_1D726279C();
    *(inited + 600) = v37;
    *(inited + 576) = v41;
    sub_1D5BE1168(inited);
    swift_setDeallocating();
    sub_1D5BE1388();
    swift_arrayDestroy();
    a1[3] = sub_1D725B0DC();
    a1[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_1D725B0CC();
  }
}

unint64_t sub_1D5BE1168(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5BBDECC(0, &qword_1EDF1A300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D5BE12C0(v4, &v13, &qword_1EDF1B5F0);
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
      result = sub_1D5B7C390(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_1D5BE12C0(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_1D5BE1330(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D5BE1330(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D5BE1388()
{
  if (!qword_1EDF1B5F0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1B5F0);
    }
  }
}

void sub_1D5BE1404()
{
  if (!qword_1EDF43B70)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF43B70);
    }
  }
}

void sub_1D5BE1458(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D5BE14C0()
{
  result = qword_1EDF2D5F8;
  if (!qword_1EDF2D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D5F8);
  }

  return result;
}

void sub_1D5BE1514()
{
  if (!qword_1EDF3AA58)
  {
    type metadata accessor for FeedBannerAd();
    sub_1D72609CC();
    sub_1D7260A9C();
    sub_1D5B48940(qword_1EDF42200, type metadata accessor for FeedBannerAd);
    sub_1D5B48940(&qword_1EDF43930, MEMORY[0x1E69B41B0]);
    v0 = sub_1D726055C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3AA58);
    }
  }
}

uint64_t sub_1D5BE1620(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_1D7261ABC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D7261B2C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v4 + 64);
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  MinX = CGRectGetMinX(v32);
  v33.origin.x = a1;
  v33.origin.y = a2;
  v33.size.width = a3;
  v33.size.height = a4;
  v21 = MinX - CGRectGetWidth(v33) * v19;
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  MinY = CGRectGetMinY(v34);
  v35.origin.x = a1;
  v35.origin.y = a2;
  v35.size.width = a3;
  v35.size.height = a4;
  v23 = MinY - CGRectGetHeight(v35) * v19;
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  v24 = v19 + v19;
  v25 = v24 * CGRectGetWidth(v36);
  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  v26 = v24 * CGRectGetHeight(v37);
  v27 = swift_allocObject();
  *(v27 + 16) = v4;
  *(v27 + 24) = v21;
  *(v27 + 32) = v23;
  *(v27 + 40) = v25;
  *(v27 + 48) = v26;
  aBlock[4] = sub_1D5BE0214;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_21;
  v28 = _Block_copy(aBlock);

  sub_1D7261AEC();
  v30[1] = MEMORY[0x1E69E7CC0];
  sub_1D5B73758(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
  sub_1D5B73908();
  sub_1D5B73758(&qword_1EDF1B560, sub_1D5B73908);
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v18, v13, v28);
  _Block_release(v28);
  (*(v10 + 8))(v13, v9);
  (*(v15 + 8))(v18, v14);
}

uint64_t sub_1D5BE19BC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5BE1A00()
{
  sub_1D725A76C();
  Strong = swift_weakLoadStrong();
  sub_1D725A77C();
  return Strong;
}

char *sub_1D5BE1A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 *a21, uint64_t *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v27 = v26;
  v97 = a8;
  v104 = a7;
  v105 = a6;
  v71 = a4;
  v78 = a3;
  v88 = a1;
  v89 = a2;
  v103 = a26;
  v83 = a25;
  v82 = a23;
  v102 = a24;
  v87 = a20;
  v100 = a18;
  v101 = a19;
  v98 = a16;
  v99 = a17;
  v95 = a14;
  v96 = a15;
  v93 = a12;
  v94 = a13;
  v91 = a10;
  v92 = a11;
  v90 = a9;
  v29 = *v26;
  v30 = *(*v26 + 88);
  v31 = *(*v26 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v80 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v32);
  v74 = &v69[-v33];
  v72 = swift_checkMetadataState();
  v73 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v34);
  v36 = &v69[-v35];
  v37 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v70 = *a5;
  v84 = *(a21 + 2);
  v86 = *a22;
  v85 = *(a22 + 8);
  v75 = *(v29 + 224);
  v39 = v75;
  v76 = swift_getAssociatedTypeWitness();
  v40 = *(*(v76 - 8) + 56);
  v81 = *a21;
  v40(&v26[v39], 1, 1, v76);
  *&v26[*(*v26 + 272)] = 0;
  v41 = *(*v26 + 296);
  sub_1D725A78C();
  sub_1D725A7BC();
  swift_allocObject();
  *&v26[v41] = sub_1D725A7AC();
  swift_weakInit();
  v42 = v89;
  *(v26 + 2) = v88;
  *(v26 + 3) = v42;
  (*(*(v31 - 8) + 16))(&v27[*(*v27 + 256)], v78, v31);
  *&v26[*(*v26 + 264)] = v71;
  v26[32] = v70;
  v43 = qword_1EDFFCF50;
  v44 = sub_1D725891C();
  v88 = *(v44 - 8);
  v45 = *(v88 + 16);
  v45(&v27[v43], v105, v44);
  v89 = v44;
  v45(&v27[qword_1EDFFCF58], v104, v44);
  v46 = *(v30 + 64);

  v47 = v30;
  v48 = v83;
  v46(v31, v47);
  v49 = v82;
  v50 = v74;
  v51 = v72;
  (*(AssociatedConformanceWitness + 48))(v72, AssociatedConformanceWitness);
  v52 = v36;
  v53 = v87;
  (*(v73 + 8))(v52, v51);
  v54 = AssociatedTypeWitness;
  v55 = swift_getAssociatedConformanceWitness();
  v56 = (*(v55 + 16))(v54, v55);
  (*(v80 + 8))(v50, v54);
  *&v27[qword_1EDFFCF00] = v56;
  *&v27[qword_1EDFFCF48] = v97;
  v57 = v91;
  *&v27[qword_1EDFFCF08] = v90;
  *&v27[qword_1EDFFCF10] = v57;
  v58 = v93;
  *&v27[qword_1EDFFCF20] = v92;
  *&v27[qword_1EDFFCF40] = v58;
  v59 = v95;
  *&v27[qword_1EDFFCF38] = v94;
  *&v27[qword_1EDFFCEF8] = v59;
  *&v27[qword_1EDFFCF60] = v96;
  v60 = v99;
  *&v27[qword_1EDFFCF18] = v98;
  *&v27[qword_1EDFFCF30] = v60;
  *&v27[qword_1EDFFCF28] = v100;
  v61 = v75;
  swift_beginAccess();
  v62 = sub_1D726393C();
  (*(*(v62 - 8) + 24))(&v27[v61], v101, v62);
  swift_endAccess();
  sub_1D5BE6814(v53, &v27[*(*v27 + 232)]);
  v63 = &v27[*(*v27 + 240)];
  *v63 = v81;
  *(v63 + 2) = v84;
  v64 = &v27[*(*v27 + 248)];
  *v64 = v86;
  v64[8] = v85;
  *&v27[*(*v27 + 280)] = v49;
  *&v27[*(*v27 + 288)] = v102;
  v65 = *(*v27 + 272);
  swift_beginAccess();
  *&v27[v65] = v48;

  sub_1D5BE232C();

  if (v48)
  {

    swift_weakAssign();
    sub_1D5BD9EBC();
  }

  else
  {
  }

  sub_1D5BE23B0(v53);
  v66 = v89;
  v67 = *(v88 + 8);
  v67(v104, v89);
  v67(v105, v66);
  return v27;
}

uint64_t sub_1D5BE232C()
{
  sub_1D725A76C();
  swift_weakAssign();
  return sub_1D725A77C();
}

uint64_t sub_1D5BE23B0(uint64_t a1)
{
  v2 = type metadata accessor for FeedContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5BE240C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1D7264A0C();
  sub_1D72621EC();
  v6 = sub_1D7264A5C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1D72646CC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D5BE251C(uint64_t a1, uint64_t a2)
{
  sub_1D7264A5C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1DA6FC0B0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_1D7264A0C();

        sub_1D72621EC();
        v11 = sub_1D7264A5C();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5BE2678(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for FeedLayoutCacheKey();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v64 = a1;
  v63 = v3;
  v62 = v8;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_50;
  }

  if (a3)
  {
    sub_1D5BD590C(v12 + 1, type metadata accessor for FeedLayoutCacheKey, sub_1D5BCA088, type metadata accessor for FeedLayoutCacheKey, sub_1D5BD5B18);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1D6001500(type metadata accessor for FeedLayoutCacheKey, sub_1D5BCA088, type metadata accessor for FeedLayoutCacheKey, type metadata accessor for FeedLayoutCacheKey);
      goto LABEL_50;
    }

    sub_1D5C0F230(v12 + 1, type metadata accessor for FeedLayoutCacheKey, sub_1D5BCA088, type metadata accessor for FeedLayoutCacheKey, sub_1D5BD5B18);
  }

  v74 = *v3;
  sub_1D7264A0C();
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v66 = *(a1 + 56);
  v21 = *(a1 + 72);
  v65 = *(a1 + 64);
  v61 = v21;
  v76 = v15;
  v77 = v14;
  sub_1D72621EC();
  v75 = v16;
  v70 = v17;
  sub_1D72621EC();
  v69 = v18;
  v68 = v19;
  sub_1D72621EC();
  MEMORY[0x1DA6FC0B0](*(v20 + 16));
  v67 = v20;
  v22 = *(v20 + 16);
  if (v22)
  {
    v23 = v67 + 40;
    do
    {

      sub_1D72621EC();

      v23 += 16;
      --v22;
    }

    while (v22);
  }

  sub_1D72621EC();
  sub_1D5BE251C(v78, v61);
  v24 = *(a1 + 80);
  v60 = *(a1 + 136);
  v59 = *(a1 + 120);
  v58 = *(a1 + 104);
  v57 = *(a1 + 88);
  v56 = v24;
  MEMORY[0x1DA6FC0B0]();
  sub_1D5BE7138(v57.f64[0], v57.f64[1]);
  sub_1D5BE7138(v58.f64[0], v58.f64[1]);
  v25 = v59.f64[0];
  if (v59.f64[0] == 0.0)
  {
    v25 = 0.0;
  }

  MEMORY[0x1DA6FC0E0](*&v25);
  v26 = v59.f64[1];
  if (v59.f64[1] == 0.0)
  {
    v26 = 0.0;
  }

  MEMORY[0x1DA6FC0E0](*&v26);
  v27 = v60.f64[0];
  if (v60.f64[0] == 0.0)
  {
    v27 = 0.0;
  }

  MEMORY[0x1DA6FC0E0](*&v27);
  v28 = v60.f64[1];
  if (v60.f64[1] == 0.0)
  {
    v28 = 0.0;
  }

  MEMORY[0x1DA6FC0E0](*&v28);
  v29 = (a1 + *(v7 + 24));
  sub_1D5BE7138(*v29, v29[1]);
  sub_1D72621EC();
  v30 = type metadata accessor for FeedLayoutCacheDynamicKey();
  sub_1D725A19C();
  sub_1D5D51EB4(&qword_1EDF3BFB0, 255, MEMORY[0x1E69D7280]);
  sub_1D7261E8C();
  sub_1D7264A2C();
  sub_1D7264A2C();
  v31 = *(v30 + 36);
  v54 = v29;
  sub_1D5BE71D0(v78, *(v29 + v31));
  v32 = sub_1D7264A5C();
  v33 = -1 << *(v74 + 32);
  a2 = v32 & ~v33;
  v73 = v74 + 56;
  if ((*(v74 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v52 = v7;
    v71 = ~v33;
    v72 = *(v8 + 72);
    v55 = (v67 + 40);
    v53 = xmmword_1D728D640;
    do
    {
      sub_1D5BE7354(*(v74 + 48) + v72 * a2, v11, type metadata accessor for FeedLayoutCacheKey);
      v35 = *(v11 + 2);
      v34 = *(v11 + 3);
      v36 = *(v11 + 4);
      v37 = *(v11 + 5);
      v39 = *(v11 + 6);
      v38 = *(v11 + 7);
      v40 = *(v11 + 8);
      v41 = *(v11 + 9);
      if (*v11 == v77 && *(v11 + 1) == v76 || (sub_1D72646CC()) && (v35 == v75 && v34 == v70 || (sub_1D72646CC()) && (v36 == v69 && v37 == v68 || (sub_1D72646CC()))
      {
        v42 = *(v39 + 16);
        if (v42 == *(v67 + 16))
        {
          if (!v42 || v39 == v67)
          {
LABEL_42:
            if (v38 == v66 && v40 == v65 || (sub_1D72646CC()) && (sub_1D5BFC390(v41, v61) & 1) != 0 && *(v11 + 10) == v56 && vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(v11 + 88), v57), vceqq_f64(*(v11 + 104), v58)), vuzp1q_s32(vceqq_f64(*(v11 + 120), v59), vceqq_f64(*(v11 + 136), v60))), v53)) == 255 && (sub_1D5C1968C(&v11[*(v52 + 24)], v54))
            {
              sub_1D5BF1AEC(v11, type metadata accessor for FeedLayoutCacheKey);
              sub_1D726492C();
              __break(1u);
              break;
            }
          }

          else
          {
            v43 = (v39 + 40);
            v44 = v55;
            while (1)
            {
              v45 = *(v43 - 1) == *(v44 - 1) && *v43 == *v44;
              if (!v45 && (sub_1D72646CC() & 1) == 0)
              {
                break;
              }

              v43 += 2;
              v44 += 2;
              if (!--v42)
              {
                goto LABEL_42;
              }
            }
          }
        }
      }

      sub_1D5BF1AEC(v11, type metadata accessor for FeedLayoutCacheKey);
      a2 = (a2 + 1) & v71;
    }

    while (((*(v73 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_50:
  v46 = *v63;
  *(*v63 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D5BE7424(v64, *(v46 + 48) + *(v62 + 72) * a2, type metadata accessor for FeedLayoutCacheKey);
  v48 = *(v46 + 16);
  v49 = __OFADD__(v48, 1);
  v50 = v48 + 1;
  if (v49)
  {
    __break(1u);
  }

  else
  {
    *(v46 + 16) = v50;
  }

  return result;
}

uint64_t sub_1D5BE2EB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE2F1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE2F84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE2FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE3054(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE30BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE3124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE318C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE31F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v93 = a2;
  v82 = a3;
  v7 = type metadata accessor for FeedHeadline(0);
  v102 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v94 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v96 = &v82 - v12;
  v13 = sub_1D725895C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for GroupLayoutContext();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v18);
  v92 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v82 - v22;
  v86 = &v82 - v22;
  v95 = type metadata accessor for GroupLayoutBindingContext();
  v87 = *(v95 - 1);
  MEMORY[0x1EEE9AC00](v95, v24);
  v26 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v5;
  v28 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  v91 = a1;
  sub_1D5BE3ED8(a1, v26, type metadata accessor for GroupLayoutBindingContext);
  v88 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v93, v23, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v85 = sub_1D725893C();
  v84 = v29;
  (*(v14 + 8))(v17, v13);
  v100 = &type metadata for A6_V1;
  v30 = sub_1D5C0F454();
  v101 = v30;
  LOBYTE(v98) = v27;
  LOBYTE(v23) = v27;
  *(&v98 + 1) = v28;
  v31 = v5;
  v99 = v5;
  type metadata accessor for GroupLayoutKey();
  v32 = swift_allocObject();
  sub_1D5BEE8A0(v28, v5);
  v97[0] = sub_1D7264C5C();
  v97[1] = v33;
  v97[9] = 95;
  v97[10] = 0xE100000000000000;
  v97[7] = 45;
  v97[8] = 0xE100000000000000;
  sub_1D5BF4D9C();
  v34 = sub_1D7263A6C();
  v36 = v35;

  *(v32 + 16) = v34;
  *(v32 + 24) = v36;
  v37 = (v32 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v38 = v84;
  *v37 = v85;
  v37[1] = v38;
  sub_1D5B68374(&v98, v32 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v39 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA904(v26, v32 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v87 + 56))(v32 + v39, 0, 1, v95);
  v40 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v86, v32 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v41 = *(v89 + 56);
  v89 = v32;
  v41(v32 + v40, 0, 1, v90);
  __swift_destroy_boxed_opaque_existential_1(&v98);
  v100 = &type metadata for A6_V1;
  v101 = v30;
  LOBYTE(v98) = v23;
  *(&v98 + 1) = v28;
  v99 = v5;
  sub_1D5BE3ED8(v93, v92, v88);
  v42 = swift_allocObject();
  *(v42 + 16) = 4;
  sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  inited = swift_initStackObject();
  v44 = MEMORY[0x1E69E7CC0];
  v93 = inited;
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v45 = (inited + 16);
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1D613DB68;
  *(v46 + 24) = v42;
  swift_beginAccess();
  sub_1D5BEE8A0(v28, v31);

  v47 = sub_1D5C0F8FC(0, 1, 1, v44);
  v49 = v47[2];
  v48 = v47[3];
  v50 = v49 + 1;
  if (v49 >= v48 >> 1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v47[2] = v50;
    v51 = &v47[2 * v49];
    v51[4] = sub_1D613DB70;
    v51[5] = v46;
    *v45 = v47;
    swift_endAccess();

    if (!*(*&v91[v95[14]] + 16) || (sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v52 & 1) == 0) || (v53 = , v50 = sub_1D5C14D80(v53), , !v50))
    {
      sub_1D5BEE168(0, &unk_1EDF19500, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
      v62 = swift_allocObject();
      v63 = _swift_stdlib_malloc_size(v62);
      v64 = v63 - 32;
      if (v63 < 32)
      {
        v64 = v63 - 25;
      }

      v62[2] = 6;
      v62[3] = 2 * (v64 >> 3);
      if (sub_1D5C10670(v97, (v62 + 4), 6, 1, 6) == 6)
      {
        v97[0] = v62;
        v4 = v83;
        sub_1D5E239F4(v97);
        if (v4)
        {
          goto LABEL_41;
        }

        if (*(v97[0] + 2))
        {
LABEL_19:
          v65 = *(v97[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v66, "FeedHeadline");
          v66[13] = 0;
          *(v66 + 7) = -5120;
          *(v66 + 2) = 0;
          *(v66 + 3) = 0;
          *(v66 + 4) = 0;
          *(v66 + 5) = v65;
          *(v66 + 6) = 0;
          *(v66 + 7) = 0;
          v66[64] = 0;
          swift_willThrow();
          swift_setDeallocating();

          sub_1D5BE798C(v92, type metadata accessor for GroupLayoutContext);
          return __swift_destroy_boxed_opaque_existential_1(&v98);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_38;
    }

    v49 = *(v50 + 16);
    if (!v49)
    {
      break;
    }

    v46 = 0;
    v54 = MEMORY[0x1E69E7CC0];
    v55 = v94;
    while (1)
    {
      v48 = *(v50 + 16);
      if (v46 >= v48)
      {
        break;
      }

      v56 = (*(v102 + 80) + 32) & ~*(v102 + 80);
      v57 = *(v102 + 72);
      v58 = v96;
      sub_1D5BE3ED8(v50 + v56 + v57 * v46, v96, type metadata accessor for FeedHeadline);
      sub_1D5BDA904(v58, v55, type metadata accessor for FeedHeadline);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97[0] = v54;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D5C0F91C(0, *(v54 + 2) + 1, 1);
        v55 = v94;
        v54 = v97[0];
      }

      v61 = *(v54 + 2);
      v60 = *(v54 + 3);
      v45 = (v61 + 1);
      if (v61 >= v60 >> 1)
      {
        sub_1D5C0F91C(v60 > 1, v61 + 1, 1);
        v55 = v94;
        v54 = v97[0];
      }

      ++v46;
      *(v54 + 2) = v45;
      sub_1D5BDA904(v55, &v54[v56 + v61 * v57], type metadata accessor for FeedHeadline);
      if (v49 == v46)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_35:
    v47 = sub_1D5C0F8FC((v48 > 1), v50, 1, v47);
  }

  v54 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v68 = v91;
  if ((*v91 & 1) == 0)
  {

    v69 = sub_1D62F071C(v54);

    v54 = v69;
  }

  v70 = *&v68[v95[18]];
  v71 = *&v68[v95[19]];
  if (__OFSUB__(v70, v71))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v72 = sub_1D5C0FAD4(v54, v70 - v71);
  v73 = sub_1D5C1009C(1, 6, v72, v50);

  if (v73)
  {

    goto LABEL_27;
  }

  v73 = sub_1D5C1009C(1, 6, v54, v50);

  if (v73)
  {
LABEL_27:
    strcpy(v97, "FeedHeadline");
    BYTE5(v97[1]) = 0;
    HIWORD(v97[1]) = -5120;
    v97[2] = 0;
    v97[3] = 0;

    v75 = sub_1D5C107C4(v74);

    sub_1D5BDACA8(v97, v75);
    swift_setDeallocating();

    v76 = type metadata accessor for A6_V1.Bound();
    v77 = v82;
    v82[3] = v76;
    v77[4] = sub_1D5BD3A4C(&qword_1EDF1BE98, type metadata accessor for A6_V1.Bound);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v77);
    *boxed_opaque_existential_1 = v89;
    sub_1D5B63F14(&v98, (boxed_opaque_existential_1 + 1));
    result = sub_1D5BDA904(v92, boxed_opaque_existential_1 + *(v76 + 24), type metadata accessor for GroupLayoutContext);
    *(boxed_opaque_existential_1 + *(v76 + 28)) = v73;
    return result;
  }

  sub_1D5BEE168(0, &unk_1EDF19500, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
  v79 = swift_allocObject();
  v80 = _swift_stdlib_malloc_size(v79);
  v81 = v80 - 32;
  if (v80 < 32)
  {
    v81 = v80 - 25;
  }

  v79[2] = 6;
  v79[3] = 2 * (v81 >> 3);
  if (sub_1D5C10670(v97, (v79 + 4), 6, 1, 6) != 6)
  {
    goto LABEL_39;
  }

  v97[0] = v79;
  v4 = v83;
  sub_1D5E239F4(v97);
  if (v4)
  {
    goto LABEL_41;
  }

  if (*(v97[0] + 2))
  {
    goto LABEL_19;
  }

LABEL_40:
  __break(1u);
LABEL_41:

  __break(1u);
  return result;
}

uint64_t sub_1D5BE3E38()
{

  return swift_deallocObject();
}

uint64_t sub_1D5BE3E70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE3ED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE3F40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE3FA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE4010(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE4078(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE40E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE4148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE41B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t FeedModel.identifier.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    sub_1D5B5D58C(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D7270C10;
    *(v5 + 32) = v4;
    *(v5 + 40) = v3;

    *(v5 + 48) = sub_1D725AA4C();
    *(v5 + 56) = v6;
    sub_1D5B5D58C(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
    sub_1D5BB0AB8();
    v7 = sub_1D7261F3C();

    return v7;
  }

  else
  {

    return sub_1D725AA4C();
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed0B8PlatformO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

id sub_1D5BE437C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(void *, char *, uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  v185 = a6;
  v186 = a7;
  v180 = a5;
  v216 = a3;
  v181 = a2;
  v187 = a1;
  v8 = type metadata accessor for FormatItemNodeLayoutContext();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (&v178 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for PluginLayout.Context(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v178 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for EngagementBannerViewLayout.Context();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v178 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for FeedItemDimmingType();
  MEMORY[0x1EEE9AC00](v178, v20);
  v179 = (&v178 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for HeadlineViewLayout.Context(0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v178 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v178 - v28;
  v30 = sub_1D7260C5C();
  v183 = *(v30 - 8);
  v184 = v30;
  MEMORY[0x1EEE9AC00](v30, v31);
  v182 = &v178 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for FeedBannerAdViewLayout.Context(0);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v37 = &v178 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *a4;
  v39 = *a4 >> 60;
  if (v39 > 5)
  {
    if (v39 <= 8)
    {
      if (v39 == 6)
      {
        v105 = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x198);
        v210[8] = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x188);
        v210[9] = v105;
        v106 = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x1B8);
        v210[10] = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x1A8);
        v210[11] = v106;
        v107 = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x158);
        v210[4] = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x148);
        v210[5] = v107;
        v108 = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x178);
        v210[6] = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x168);
        v210[7] = v108;
        v109 = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x118);
        v210[0] = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x108);
        v210[1] = v109;
        v110 = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x138);
        v210[2] = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x128);
        v210[3] = v110;
        sub_1D6EB3D34((v38 & 0xFFFFFFFFFFFFFFFLL) + 16, &v190);
        sub_1D5BBB23C();
        v111 = v216;
        v112 = swift_dynamicCastClass();
        if (v112)
        {
          v113 = v112;
          [v111 setHidden_];
          v189[8] = v210[8];
          v189[9] = v210[9];
          v189[10] = v210[10];
          v189[11] = v210[11];
          v189[4] = v210[4];
          v189[5] = v210[5];
          v189[6] = v210[6];
          v189[7] = v210[7];
          v189[0] = v210[0];
          v189[1] = v210[1];
          v189[2] = v210[2];
          v189[3] = v210[3];
          sub_1D7018944(v113, &v190, v189);
        }

        else
        {
          [v111 setHidden_];
          sub_1D6FB6A7C();
          swift_allocError();
          swift_willThrow();
        }

        return sub_1D6CB9F0C(&v190);
      }

      else
      {
        if (v39 == 7)
        {
          sub_1D6CCCC8C();
          v52 = v51;
          v53 = swift_projectBox();
          v54 = *(v53 + *(v52 + 48));
          sub_1D5BFDCF8(v53, v11, type metadata accessor for FormatItemNodeLayoutContext);
          sub_1D5BBB4FC();
          v55 = v216;
          v56 = swift_dynamicCastClass();

          if (v56)
          {
            [v55 setHidden_];
            sub_1D7019240(v187, v56, v181, v11, v54, v185, v186);
          }

          else
          {
            [v55 setHidden_];
            sub_1D6FB6A7C();
            swift_allocError();
            swift_willThrow();
          }

          v57 = type metadata accessor for FormatItemNodeLayoutContext;
          v58 = v11;
          return sub_1D5B88E30(v58, v57);
        }

        v153 = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0xE8);
        v210[0] = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0xD8);
        v210[1] = v153;
        v154 = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0xF8);
        v155 = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x148);
        v156 = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x168);
        v210[8] = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x158);
        v210[9] = v156;
        v157 = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x108);
        v158 = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x118);
        v210[2] = v154;
        v210[3] = v157;
        v159 = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x128);
        v160 = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x138);
        v210[4] = v158;
        v210[5] = v159;
        *&v210[10] = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x178);
        v210[6] = v160;
        v210[7] = v155;
        sub_1D6C561EC((v38 & 0xFFFFFFFFFFFFFFFLL) + 16, &v190);
        sub_1D5BBAFE4();
        v161 = v216;
        v162 = swift_dynamicCastClass();
        if (v162)
        {
          v163 = v162;
          [v161 setHidden_];
          v189[8] = v210[8];
          v189[9] = v210[9];
          *&v189[10] = *&v210[10];
          v189[4] = v210[4];
          v189[5] = v210[5];
          v189[6] = v210[6];
          v189[7] = v210[7];
          v189[0] = v210[0];
          v189[1] = v210[1];
          v189[2] = v210[2];
          v189[3] = v210[3];
          sub_1D7018D44(v163, &v190, v189);
        }

        else
        {
          [v161 setHidden_];
          sub_1D6FB6A7C();
          swift_allocError();
          swift_willThrow();
        }

        return sub_1D6C92B8C(&v190);
      }
    }

    if (v39 == 9)
    {
      sub_1D6EB21C8(0, &qword_1EDF0B9E0, type metadata accessor for EngagementBannerViewLayout.Context);
      v137 = v136;
      v138 = swift_projectBox();
      v139 = (v138 + *(v137 + 48));
      v193 = v139[3];
      v190 = *v139;
      v191 = v139[1];
      v192 = v139[2];
      sub_1D5BFDCF8(v138, v19, type metadata accessor for EngagementBannerViewLayout.Context);
      sub_1D5BBB3D0();
      v140 = v216;
      v141 = swift_dynamicCastClass();
      if (!v141)
      {
        [v140 setHidden_];
        sub_1D6FB6A7C();
        swift_allocError();
        swift_willThrow();
        v171 = type metadata accessor for EngagementBannerViewLayout.Context;
LABEL_53:
        v57 = v171;
        v58 = v19;
        return sub_1D5B88E30(v58, v57);
      }

      v142 = v141;
      [v140 setHidden_];
      v210[0] = v190;
      v210[1] = v191;
      v210[2] = v192;
      v210[3] = v193;
      sub_1D7019074(v142, v19, v210);
      v57 = type metadata accessor for EngagementBannerViewLayout.Context;
      v58 = v19;
    }

    else
    {
      if (v39 != 10)
      {
        v167 = *v180;
        *&v190 = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        LOBYTE(v210[0]) = v167;
        return sub_1D5BE437C(v187, v181, v216, &v190, v210, v185, v186, v35);
      }

      sub_1D6EB21C8(0, &qword_1EDF11FE0, type metadata accessor for PluginLayout.Context);
      v98 = swift_projectBox();
      sub_1D5BFDCF8(v98, v15, type metadata accessor for PluginLayout.Context);
      sub_1D5BBB368();
      v99 = v216;
      if (swift_dynamicCastClass())
      {
        [v99 setHidden_];
        sub_1D725CBDC();
        sub_1D725C94C();
        v100 = type metadata accessor for PluginLayout.Context;
LABEL_62:
        v57 = v100;
        v58 = v15;
        return sub_1D5B88E30(v58, v57);
      }

      [v99 setHidden_];
      sub_1D6FB6A7C();
      swift_allocError();
      swift_willThrow();
      v57 = type metadata accessor for PluginLayout.Context;
      v58 = v15;
    }

    return sub_1D5B88E30(v58, v57);
  }

  if (v39 <= 2)
  {
    if (v39)
    {
      if (v39 == 1)
      {
        v40 = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
        v210[0] = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
        v210[1] = v40;
        v41 = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0xA0);
        v210[2] = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
        v210[3] = v41;
        sub_1D5C21540((v38 & 0xFFFFFFFFFFFFFFFLL) + 16, &v190);
        sub_1D5BBACEC();
        v42 = v216;
        v43 = swift_dynamicCastClass();
        if (v43)
        {
          v44 = v43;
          [v42 setHidden_];
          v45 = [objc_opt_self() clearColor];
          v46 = v188;
          sub_1D726349C();

          v47 = v46[13];
          ObjectType = swift_getObjectType();
          v189[0] = v210[0];
          v189[1] = v210[1];
          v189[2] = v210[2];
          v189[3] = v210[3];
          v49 = sub_1D725DBEC();
          (*(v47 + 8))(&v190, v189, v49, ObjectType, v47);

          [v44 setFocusEffect_];
        }

        else
        {
          [v42 setHidden_];
          sub_1D6FB6A7C();
          swift_allocError();
          swift_willThrow();
        }

        return sub_1D5BDA528(&v190);
      }

      else
      {
        v143 = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0xA8);
        v210[0] = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x98);
        v210[1] = v143;
        v144 = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0xC8);
        v210[2] = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0xB8);
        v210[3] = v144;
        sub_1D69DE4F8((v38 & 0xFFFFFFFFFFFFFFFLL) + 16, &v190);
        sub_1D5BB9648();
        v145 = v216;
        v146 = swift_dynamicCastClass();
        if (v146)
        {
          v147 = v146;
          [v145 setHidden_];
          v148 = [objc_opt_self() clearColor];
          v149 = v188;
          sub_1D726349C();

          v150 = v149[15];
          v151 = swift_getObjectType();
          v189[0] = v210[0];
          v189[1] = v210[1];
          v189[2] = v210[2];
          v189[3] = v210[3];
          v152 = sub_1D725DBEC();
          (*(v150 + 8))(&v190, v189, v152, v151, v150);

          [v147 setFocusEffect_];
        }

        else
        {
          [v145 setHidden_];
          sub_1D6FB6A7C();
          swift_allocError();
          swift_willThrow();
        }

        return sub_1D69DE554(&v190);
      }
    }

    else
    {
      sub_1D5BBB4FC();
      v101 = v216;
      v102 = swift_dynamicCastClass();
      if (v102)
      {
        v103 = v102;
        [v101 setHidden_];
        v104 = [objc_opt_self() clearColor];
        sub_1D726349C();

        sub_1D726345C();
        return [v103 setFocusEffect_];
      }

      else
      {
        [v101 setHidden_];
        sub_1D6FB6A7C();
        swift_allocError();
        return swift_willThrow();
      }
    }
  }

  if (v39 == 3)
  {
    v19 = v37;
    sub_1D5EF31B8();
    v115 = v114;
    v116 = swift_projectBox();
    v117 = *(v115 + 48);
    sub_1D5BFDCF8(v116, v19, type metadata accessor for FeedBannerAdViewLayout.Context);
    v119 = v182;
    v118 = v183;
    v120 = v116 + v117;
    v121 = v184;
    (*(v183 + 16))(v182, v120, v184);
    sub_1D5BBAEB8();
    v122 = v216;
    v123 = swift_dynamicCastClass();
    if (v123)
    {
      v124 = v123;
      [v122 setHidden_];
      sub_1D7260C3C();
      CGRectGetWidth(v217);
      v125 = v187;
      [v187 bounds];
      CGRectGetHeight(v218);
      v126 = sub_1D725DBEC();
      sub_1D726025C();
      [v125 safeAreaInsets];
      [v124 frame];
      sub_1D7260C4C();
      v216 = v19;
      v127 = sub_1D72609AC();
      v129 = v128;

      sub_1D617DCE0(v127);
      v130 = &v126[OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView_bannerView];
      swift_beginAccess();
      v131 = *v130;
      *v130 = v127;
      *(v130 + 1) = v129;
      v132 = v127;

      if (*v130)
      {
        v133 = *v130;
        v134 = [v133 superview];
        if (!v134 || (v135 = v134, v134, v135 != v126))
        {
          [v126 addSubview_];
        }

        v126 = v132;
      }

      else
      {
        v133 = v132;
      }

      v172 = v188;

      __swift_project_boxed_opaque_existential_1(v172 + 16, v172[19]);
      *(&v191 + 1) = type metadata accessor for FeedBannerAd();
      *&v192 = sub_1D5C16C60(qword_1EDF42200, type metadata accessor for FeedBannerAd);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v190);
      v15 = v216;
      sub_1D5BFDCF8(v216, boxed_opaque_existential_1, type metadata accessor for FeedBannerAd);
      v174 = sub_1D725DBEC();
      sub_1D5C16C60(&unk_1EDF394D0, type metadata accessor for FeedBannerAdView);
      v175 = v182;
      sub_1D7260B5C();

      __swift_destroy_boxed_opaque_existential_1(&v190);
      v176 = [objc_allocWithZone(MEMORY[0x1E69DCA28]) init];
      v177 = sub_1D725DBEC();
      [v176 setReferenceView_];

      [v124 setFocusEffect_];
      (*(v183 + 8))(v175, v184);
      v100 = type metadata accessor for FeedBannerAdViewLayout.Context;
      goto LABEL_62;
    }

    [v122 setHidden_];
    sub_1D6FB6A7C();
    swift_allocError();
    swift_willThrow();
    (*(v118 + 8))(v119, v121);
    v171 = type metadata accessor for FeedBannerAdViewLayout.Context;
    goto LABEL_53;
  }

  if (v39 == 4)
  {
    sub_1D5BE5E28();
    v60 = v59;
    v61 = swift_projectBox();
    v62 = v61 + *(v60 + 48);
    v64 = *v62;
    v63 = *(v62 + 8);
    v66 = *(v62 + 16);
    v65 = *(v62 + 24);
    v210[6] = *(v62 + 128);
    v210[5] = *(v62 + 112);
    v210[4] = *(v62 + 96);
    v210[3] = *(v62 + 80);
    v210[10] = *(v62 + 192);
    v210[9] = *(v62 + 176);
    v210[8] = *(v62 + 160);
    v210[7] = *(v62 + 144);
    *&v210[14] = *(v62 + 256);
    v210[13] = *(v62 + 240);
    v210[12] = *(v62 + 224);
    v210[11] = *(v62 + 208);
    v210[0] = *(v62 + 32);
    v210[1] = *(v62 + 48);
    v210[2] = *(v62 + 64);
    v67 = *(v62 + 264);
    v68 = *(v62 + 288);
    v189[0] = *(v62 + 272);
    v189[1] = v68;
    v69 = v29;
    sub_1D5BFDCF8(v61, v29, type metadata accessor for HeadlineViewLayout.Context);
    v70 = &v29[*(v22 + 20)];
    v71 = *(v70 + 40);
    if ([v71 hasVideo])
    {
      sub_1D5BB032C(0, &qword_1EDF3B5B0, &qword_1EDF33558, type metadata accessor for VideoView, &unk_1EDF33560);
      v72 = v216;
      v73 = swift_dynamicCastClass();
      if (v73)
      {
        v74 = v73;
        [v72 setHidden_];
        v75 = [objc_opt_self() clearColor];
        v216 = v69;
        v76 = v188;
        sub_1D726349C();

        v187 = v74;
        v181 = v71;
        v77 = v76[31];
        v78 = v76[32];
        __swift_project_boxed_opaque_existential_1(v76 + 28, v77);
        v184 = v70;
        v180 = *(v78 + 8);
        sub_1D5BB0F34(0, &qword_1EDF33558, type metadata accessor for VideoView, type metadata accessor for HeadlineView);
        v80 = v79;
        v182 = v79;
        v183 = sub_1D5BAFA28(&unk_1EDF33560, &qword_1EDF33558, type metadata accessor for VideoView);
        v81 = v187;
        v180(v187, v80, v183, v77, v78);
        v211 = 1;
        v212 = 0u;
        v213 = 0u;
        v214 = 0u;
        v215 = 0;
        sub_1D5BFDE8C(v81, &v211);
        v82 = v76[11];
        v83 = swift_getObjectType();
        *&v190 = v64;
        *(&v190 + 1) = v63;
        *&v191 = v66;
        *(&v191 + 1) = v65;
        v204 = v210[12];
        v205 = v210[13];
        v206 = *&v210[14];
        v200 = v210[8];
        v201 = v210[9];
        v202 = v210[10];
        v203 = v210[11];
        v196 = v210[4];
        v197 = v210[5];
        v198 = v210[6];
        v199 = v210[7];
        v192 = v210[0];
        v193 = v210[1];
        v194 = v210[2];
        v195 = v210[3];
        v207 = v67;
        v208 = v189[0];
        v209 = v189[1];
        v84 = sub_1D725DBEC();
        (*(v82 + 40))(v216, &v190, v84, v185, v186, v83, v82);

        [v81 bounds];
        v186 = v65;
        v89 = [objc_opt_self() effectWithRoundedRect:*MEMORY[0x1E69796E8] cornerRadius:v85 curve:{v86, v87, v88, v67}];
        v90 = sub_1D725DBEC();
        [v89 setReferenceView_];

        [v81 setFocusEffect_];
        v91 = v76[51];
        v92 = v76[52];
        __swift_project_boxed_opaque_existential_1(v76 + 48, v91);
        v93 = v179;
        *v179 = v181;
        swift_storeEnumTagMultiPayload();
        v94 = *(v92 + 8);
        swift_unknownObjectRetain();
        LOBYTE(v90) = v94(v93, v91, v92);
        sub_1D5B88E30(v93, type metadata accessor for FeedItemDimmingType);
        v95 = v76[31];
        v96 = v76[32];
        __swift_project_boxed_opaque_existential_1(v76 + 28, v95);
        *(&v191 + 1) = type metadata accessor for FeedHeadline(0);
        *&v192 = sub_1D5C16C60(&qword_1EDF34AD0, type metadata accessor for FeedHeadline);
        v97 = __swift_allocate_boxed_opaque_existential_1(&v190);
        sub_1D5BFDCF8(v184, v97, type metadata accessor for FeedHeadline);
        (*(v96 + 16))(&v190, v187, v90 & 1, v182, v183, v95, v96, v64, v63, v66, *&v186);

        __swift_destroy_boxed_opaque_existential_1(&v190);
        v57 = type metadata accessor for HeadlineViewLayout.Context;
        v58 = v216;
      }

      else
      {
        [v72 setHidden_];
        sub_1D6FB6A7C();
        swift_allocError();
        swift_willThrow();
        v57 = type metadata accessor for HeadlineViewLayout.Context;
        v58 = v69;
      }
    }

    else
    {
      sub_1D5B88E30(v29, type metadata accessor for HeadlineViewLayout.Context);
      sub_1D5BFDCF8(v61, v25, type metadata accessor for HeadlineViewLayout.Context);
      sub_1D5BB032C(0, &qword_1EDF3B5B8, &qword_1EDF33570, MEMORY[0x1E69D8868], qword_1EDF33578);
      v168 = v216;
      v169 = swift_dynamicCastClass();
      if (v169)
      {
        v170 = v169;
        [v168 setHidden_];
        *&v190 = v64;
        *(&v190 + 1) = v63;
        *&v191 = v66;
        *(&v191 + 1) = v65;
        v204 = v210[12];
        v205 = v210[13];
        v206 = *&v210[14];
        v200 = v210[8];
        v201 = v210[9];
        v202 = v210[10];
        v203 = v210[11];
        v196 = v210[4];
        v197 = v210[5];
        v198 = v210[6];
        v199 = v210[7];
        v192 = v210[0];
        v193 = v210[1];
        v194 = v210[2];
        v195 = v210[3];
        v207 = v67;
        v208 = v189[0];
        v209 = v189[1];
        sub_1D5BF7B48(v170, v25, &v190);
      }

      else
      {
        [v168 setHidden_];
        sub_1D6FB6A7C();
        swift_allocError();
        swift_willThrow();
      }

      v57 = type metadata accessor for HeadlineViewLayout.Context;
      v58 = v25;
    }

    return sub_1D5B88E30(v58, v57);
  }

  memcpy(v210, ((v38 & 0xFFFFFFFFFFFFFFFLL) + 408), sizeof(v210));
  sub_1D5EF92B8((v38 & 0xFFFFFFFFFFFFFFFLL) + 16, &v190);
  sub_1D5BBB110();
  v164 = v216;
  v165 = swift_dynamicCastClass();
  if (v165)
  {
    v166 = v165;
    [v164 setHidden_];
    memcpy(v189, v210, sizeof(v189));
    sub_1D7018354(v166, &v190, v189);
  }

  else
  {
    [v164 setHidden_];
    sub_1D6FB6A7C();
    swift_allocError();
    swift_willThrow();
  }

  return sub_1D5EF93F0(&v190);
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed0B4ItemO4KindO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D5BE5B1C()
{
  v1 = *v0;
  v2 = *v0 >> 60;
  if (v2 > 5)
  {
    v1 &= 0xFFFFFFFFFFFFFFFuLL;
    if (v2 > 8)
    {
      if (v2 == 9)
      {
        v3 = &unk_1EDF3B5F0;
        v4 = sub_1D5BBB4FC;
      }

      else
      {
        if (v2 != 10)
        {
          sub_1D6A558E0();
          return v1;
        }

        v3 = &unk_1EDF170B8;
        v4 = sub_1D5BBB3D0;
      }
    }

    else if (v2 == 6)
    {
      v3 = &unk_1EC8906D8;
      v4 = sub_1D5BBAFE4;
    }

    else if (v2 == 7)
    {
      v3 = &unk_1EC8906D0;
      v4 = sub_1D5BBB110;
    }

    else
    {
      v3 = &unk_1EC8906C8;
      v4 = sub_1D5BBB23C;
    }

    goto LABEL_22;
  }

  if (v2 <= 2)
  {
    if (v2)
    {
      v1 &= 0xFFFFFFFFFFFFFFFuLL;
      if (v2 == 1)
      {
        v3 = &unk_1EDF3B5D8;
        v4 = sub_1D5BBACEC;
      }

      else
      {
        v3 = &unk_1EDF170C0;
        v4 = sub_1D5BB9648;
      }
    }

    else
    {
      v3 = &unk_1EC8906F0;
      v4 = sub_1D6A55AB4;
    }

    goto LABEL_22;
  }

  v1 &= 0xFFFFFFFFFFFFFFFuLL;
  if (v2 == 3)
  {
    v3 = &unk_1EDF3B5A8;
    v4 = sub_1D5BBAEB8;
LABEL_22:
    sub_1D5BBADA4(v3, v4);
    return v1;
  }

  if (v2 == 4)
  {
    sub_1D5BFCD74();
  }

  else
  {
    sub_1D6A55968();
  }

  return v1;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed0B14ItemVisibilityO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 2;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_1D5BE5D04()
{
  if (!qword_1EDF3C4B0)
  {
    sub_1D5BDA5B0();
    v0 = sub_1D725739C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C4B0);
    }
  }
}

void sub_1D5BE5D60()
{
  if (!qword_1EDF3C4A0)
  {
    sub_1D5B58D88();
    sub_1D5BD865C();
    v0 = sub_1D725739C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C4A0);
    }
  }
}

void sub_1D5BE5DC4()
{
  if (!qword_1EDF3C490)
  {
    sub_1D5BDA604();
    sub_1D5BDA678();
    v0 = sub_1D725739C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C490);
    }
  }
}

void sub_1D5BE5E28()
{
  if (!qword_1EDF2D520[0])
  {
    type metadata accessor for HeadlineViewLayout.Context(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, qword_1EDF2D520);
    }
  }
}

uint64_t sub_1D5BE5EFC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NoopBundleSessionManager();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &protocol witness table for NoopBundleSessionManager;
  *a1 = result;
  return result;
}

uint64_t sub_1D5BE5F8C()
{
  sub_1D5B7DF00(0, &unk_1EDF3B400, sub_1D5B7DF64, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B7DF00(0, &qword_1EDF3B278, sub_1D5B7DF64, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16BB8 = result;
  return result;
}

uint64_t sub_1D5BE6104()
{
  sub_1D5B7DF00(0, &unk_1EDF3B400, sub_1D5B7DF64, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B7DF00(0, &qword_1EDF3B278, sub_1D5B7DF64, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16BD0 = result;
  return result;
}

uint64_t type metadata accessor for FeedItemSupplementaryAttributes()
{
  result = qword_1EDF42740;
  if (!qword_1EDF42740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5BE62C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_1D5BE6378(uint64_t a1, void *a2, void (*a3)(), uint64_t a4, void (*a5)(), uint64_t a6, unint64_t *a7)
{
  swift_unknownObjectRetain();
  v11 = a2;
  sub_1D5B5534C(0, a7);
  sub_1D725B9DC();
  if (v13)
  {
    a5();
  }

  else
  {
    a3();
  }

  sub_1D5BE6440(v12, v13);
}

void sub_1D5BE6440(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D5BE6458(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE64C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE6528(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed0B19LayoutSolverOptionsV010IssueStripE0V10SeparatorsO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D5BE65BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725E23C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5BE6628(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1D5BE6684(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE66EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE6754(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BE67B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BE6814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_1D5BE6878(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D5B5A7F0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D5BE699C(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v4 = type metadata accessor for FeedLayoutCacheKey();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v57 = &v53 - v11;
  v58 = v2;
  v77 = *v2;
  sub_1D7264A0C();
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  v18 = *(a2 + 48);
  v69 = *(a2 + 56);
  v19 = *(a2 + 72);
  v68 = *(a2 + 64);
  v67 = v19;
  v80 = v13;
  v81 = v12;
  sub_1D72621EC();
  v79 = v14;
  v73 = v15;
  sub_1D72621EC();
  v72 = v16;
  v71 = v17;
  sub_1D72621EC();
  MEMORY[0x1DA6FC0B0](*(v18 + 16));
  v70 = v18;
  v20 = *(v18 + 16);
  if (v20)
  {
    v21 = v70 + 40;
    do
    {

      sub_1D72621EC();

      v21 += 16;
      --v20;
    }

    while (v20);
  }

  sub_1D72621EC();
  sub_1D5BE251C(&v82, v67);
  v22 = *(a2 + 80);
  v66 = *(a2 + 136);
  v65 = *(a2 + 120);
  v64 = *(a2 + 104);
  v63 = *(a2 + 88);
  v62 = v22;
  MEMORY[0x1DA6FC0B0]();
  sub_1D5BE7138(v63.f64[0], v63.f64[1]);
  sub_1D5BE7138(v64.f64[0], v64.f64[1]);
  v23 = v65.f64[0];
  if (v65.f64[0] == 0.0)
  {
    v23 = 0.0;
  }

  MEMORY[0x1DA6FC0E0](*&v23);
  v24 = v65.f64[1];
  if (v65.f64[1] == 0.0)
  {
    v24 = 0.0;
  }

  MEMORY[0x1DA6FC0E0](*&v24);
  v25 = v66.f64[0];
  if (v66.f64[0] == 0.0)
  {
    v25 = 0.0;
  }

  MEMORY[0x1DA6FC0E0](*&v25);
  v26 = v66.f64[1];
  if (v66.f64[1] == 0.0)
  {
    v26 = 0.0;
  }

  MEMORY[0x1DA6FC0E0](*&v26);
  v27 = *(v4 + 24);
  v59 = a2;
  v28 = a2 + v27;
  sub_1D5BE7138(*(a2 + v27), *(a2 + v27 + 8));
  sub_1D72621EC();
  v29 = type metadata accessor for FeedLayoutCacheDynamicKey();
  sub_1D725A19C();
  sub_1D5D51EB4(&qword_1EDF3BFB0, 255, MEMORY[0x1E69D7280]);
  sub_1D7261E8C();
  sub_1D7264A2C();
  sub_1D7264A2C();
  v30 = *(v29 + 36);
  v56 = v28;
  sub_1D5BE71D0(&v82, *(v28 + v30));
  v31 = sub_1D7264A5C();
  v32 = -1 << *(v77 + 32);
  v33 = v31 & ~v32;
  v76 = v77 + 56;
  if ((*(v77 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
  {
    v54 = v4;
    v74 = ~v32;
    v75 = *(v5 + 72);
    v61 = (v70 + 40);
    v55 = xmmword_1D728D640;
    do
    {
      v34 = v75 * v33;
      sub_1D5BE7354(*(v77 + 48) + v75 * v33, v8, type metadata accessor for FeedLayoutCacheKey);
      v35 = *v8;
      v36 = *(v8 + 1);
      v38 = *(v8 + 2);
      v37 = *(v8 + 3);
      v40 = *(v8 + 4);
      v39 = *(v8 + 5);
      v41 = *(v8 + 6);
      v42 = *(v8 + 7);
      v43 = *(v8 + 8);
      v78 = *(v8 + 9);
      if (v35 == v81 && v36 == v80 || (sub_1D72646CC()) && (v38 == v79 && v37 == v73 || (sub_1D72646CC()) && (v40 == v72 && v39 == v71 || (sub_1D72646CC()))
      {
        v44 = *(v41 + 16);
        if (v44 == *(v70 + 16))
        {
          if (!v44 || v41 == v70)
          {
LABEL_35:
            if (v42 == v69 && v43 == v68 || (sub_1D72646CC()) && (sub_1D5BFC390(v78, v67) & 1) != 0 && *(v8 + 10) == v62 && vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(v8 + 88), v63), vceqq_f64(*(v8 + 104), v64)), vuzp1q_s32(vceqq_f64(*(v8 + 120), v65), vceqq_f64(*(v8 + 136), v66))), v55)) == 255 && (sub_1D5C1968C(&v8[*(v54 + 24)], v56))
            {
              sub_1D5BF1AEC(v8, type metadata accessor for FeedLayoutCacheKey);
              sub_1D5BF1AEC(v59, type metadata accessor for FeedLayoutCacheKey);
              sub_1D5BE7354(*(v77 + 48) + v34, v60, type metadata accessor for FeedLayoutCacheKey);
              return 0;
            }
          }

          else
          {
            v45 = (v41 + 40);
            v46 = v61;
            while (1)
            {
              v47 = *(v45 - 1) == *(v46 - 1) && *v45 == *v46;
              if (!v47 && (sub_1D72646CC() & 1) == 0)
              {
                break;
              }

              v45 += 2;
              v46 += 2;
              if (!--v44)
              {
                goto LABEL_35;
              }
            }
          }
        }
      }

      sub_1D5BF1AEC(v8, type metadata accessor for FeedLayoutCacheKey);
      v33 = (v33 + 1) & v74;
    }

    while (((*(v76 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0);
  }

  v49 = v58;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = v59;
  v52 = v57;
  sub_1D5BE7354(v59, v57, type metadata accessor for FeedLayoutCacheKey);
  v82 = *v49;
  sub_1D5BE2678(v52, v33, isUniquelyReferenced_nonNull_native);
  *v49 = v82;
  sub_1D5BE7424(v51, v60, type metadata accessor for FeedLayoutCacheKey);
  return 1;
}

uint64_t sub_1D5BE7138(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1DA6FC0E0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1DA6FC0E0](*&v3);
}

uint64_t sub_1D5BE7188(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5BE71D0(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = (*(a2 + 56) + ((v11 << 10) | (16 * v12)));
    v14 = *v13;
    v15 = v13[1];

    sub_1D72621EC();

    if (v14 == 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v14;
    }

    MEMORY[0x1DA6FC0E0](*&v16);
    if (v15 == 0.0)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = v15;
    }

    MEMORY[0x1DA6FC0E0](*&v17);
    result = sub_1D7264A5C();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1DA6FC0B0](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5BE7354(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE73BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE7424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE748C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE74F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE755C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE75C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE762C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE76A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D7260DDC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5BE7760(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D7260DDC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5BE780C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BE786C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BE78CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BE792C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BE798C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BE79EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BE7A4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BE7AAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BE7B0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BE7B6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BE7BCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BE7C2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BE7C8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BE7CEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BE7D4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for A6_V1.Bound()
{
  result = qword_1EDF1BE88;
  if (!qword_1EDF1BE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5BE7DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v93 = a1;
  v92 = sub_1D725A36C();
  v99 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v5);
  v91 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v90 = sub_1D725A19C();
  v7 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v8);
  v89 = &v68[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v88, v10);
  v12 = &v68[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5BE8F38(0, &qword_1EDF17F78, sub_1D5C0B754, &type metadata for A6_V1.Layout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v68[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19, v20);
  v87 = &v68[-v21];
  v86 = type metadata accessor for HeadlineViewLayout.Context(0);
  v22 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v23);
  v25 = &v68[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = *(a2 + 16);
  if (v26)
  {
    v27 = *(type metadata accessor for A6_V1.Bound() + 24);
    v94 = v25;
    v28 = a3 + v27;
    v29 = type metadata accessor for GroupLayoutContext();
    v30 = v94;
    v83 = *(v28 + *(v29 + 24) + 17);
    v31 = *MEMORY[0x1E69DDCE0];
    v32 = *(MEMORY[0x1E69DDCE0] + 8);
    v33 = *(MEMORY[0x1E69DDCE0] + 16);
    v34 = *(MEMORY[0x1E69DDCE0] + 24);
    v82 = *MEMORY[0x1E69DDC70];
    v35 = a2 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v81 = *(v22 + 72);
    v80 = v94 + 40;
    v79 = *MEMORY[0x1E69D6F50];
    v78 = (v15 + 104);
    v36 = (v15 + 8);
    v76 = (v99 + 104);
    v75 = *MEMORY[0x1E69D73C0];
    v74 = (v7 + 8);
    v73 = *MEMORY[0x1E69D73D8];
    v72 = *MEMORY[0x1E69D70D0];
    v71 = *MEMORY[0x1E69D7348];
    v70 = xmmword_1D7273AE0;
    v69 = *MEMORY[0x1E69D7378];
    v84 = v18;
    v85 = v14;
    v77 = v36;
    do
    {
      v98 = v35;
      v99 = v26;
      sub_1D5BE3ED8(v35, v30, type metadata accessor for HeadlineViewLayout.Context);
      v43 = v93;
      v100 = v93;
      v44 = v36;
      v45 = sub_1D725994C();
      v46 = swift_allocBox();
      (*(*(v45 - 8) + 104))(v47, v79, v45);
      v48 = v87;
      *v87 = v46;
      v49 = *v78;
      (*v78)(v48, v75, v14);
      v50 = MEMORY[0x1E69D6F38];
      sub_1D5BED980(0, &qword_1EDF18128, MEMORY[0x1E69D6F38]);
      v96 = sub_1D5BEDA04(&qword_1EDF18130, &qword_1EDF18128, v50);
      sub_1D7259A9C();
      v97 = *v44;
      v97(v48, v14);
      v100 = v43;
      KeyPath = swift_getKeyPath();
      v51 = swift_allocObject();
      *(v51 + 16) = 0x4060200000000000;
      *v18 = v51;
      v49(v18, v73, v14);
      sub_1D5BE8EA8();
      sub_1D5BE8F38(0, &qword_1EDF180C0, sub_1D5C0B754, &type metadata for A6_V1.Layout, MEMORY[0x1E69D70D8]);
      v53 = v52;
      v54 = *(v52 - 8);
      v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v56 = swift_allocObject();
      *(v56 + 16) = v70;
      *(v56 + v55) = 0x4058C00000000000;
      (*(v54 + 104))(v56 + v55, v72, v53);
      v57 = v88;
      v58 = *(v88 + 20);
      v59 = sub_1D725A34C();
      v60 = *(v59 - 8);
      (*(v60 + 104))(&v12[v58], v71, v59);
      (*(v60 + 56))(&v12[v58], 0, 1, v59);
      *v12 = v83;
      *&v12[*(v57 + 24)] = 0;
      v61 = v82;
      *&v12[*(v57 + 28)] = v82;
      v62 = *&v80[*(v86 + 20)];
      v63 = v61;
      if ([v62 hasThumbnail])
      {
        v37 = v89;
        if (qword_1EDF386E8 != -1)
        {
          swift_once();
        }

        sub_1D725972C();

        v40 = MEMORY[0x1EEE9AC00](v38, v39);
        *&v68[-64] = v31;
        *&v68[-56] = v32;
        *&v68[-48] = v33;
        *&v68[-40] = v34;
        *&v68[-32] = v12;
        *&v68[-24] = v37;
        v41 = v94;
        v67 = v94;
        (*v76)(v91, v69, v92, v40);
        sub_1D5BED904();
        swift_allocObject();
      }

      else
      {
        v37 = v89;
        if (qword_1EDF386E8 != -1)
        {
          swift_once();
        }

        sub_1D725972C();

        v66 = MEMORY[0x1EEE9AC00](v64, v65);
        *&v68[-64] = v31;
        *&v68[-56] = v32;
        *&v68[-48] = v33;
        *&v68[-40] = v34;
        v41 = v94;
        *&v68[-32] = v37;
        *&v68[-24] = v41;
        v67 = v12;
        (*v76)(v91, v69, v92, v66);
        sub_1D5BED904();
        swift_allocObject();
      }

      sub_1D725A4CC();
      v42 = v99;
      (*v74)(v37, v90);
      sub_1D5BE798C(v12, type metadata accessor for HeadlineViewLayout.Options);
      v67 = sub_1D5BE8850();
      v18 = v84;
      sub_1D7259A4C();

      v14 = v85;
      v36 = v77;
      v97(v18, v85);
      sub_1D5BE798C(v41, type metadata accessor for HeadlineViewLayout.Context);
      v35 = v98 + v81;
      v26 = v42 - 1;
      v30 = v41;
    }

    while (v26);
  }
}

unint64_t sub_1D5BE8850()
{
  result = qword_1EDF3BFF0;
  if (!qword_1EDF3BFF0)
  {
    sub_1D5BE1458(255, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3BFF0);
  }

  return result;
}

uint64_t sub_1D5BE88E0@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1D725A36C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for A6_V1.Bound();
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext();
  v11 = *(*(v9 + *(v10 + 40)) + 16);
  v12 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v11 + 16, v41);
  sub_1D5B68374(v11 + 56, v40);
  v13 = v12 * *(v11 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  inited = swift_initStackObject();
  sub_1D5B63F14(v41, inited + 16);
  sub_1D5B63F14(v40, inited + 56);
  *(inited + 96) = v13;
  v39[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v39, v43);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(inited + 16);
  __swift_destroy_boxed_opaque_existential_1(inited + 56);
  v15 = *(v2 + *(v8 + 28));
  v38[2] = v2;
  v38[3] = v43;
  v16 = sub_1D5ECA650(sub_1D5C0C7B0, v38, v15);
  v17 = *MEMORY[0x1E69D7130];
  v18 = sub_1D7259D1C();
  (*(*(v18 - 8) + 104))(v7, v17, v18);
  (*(v4 + 104))(v7, *MEMORY[0x1E69D7370], v3);
  v34 = v16;
  v36 = v16;
  v37 = v2;
  sub_1D5BED980(0, &qword_1EDF17FB0, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v33 = sub_1D725A4CC();
  sub_1D725A4DC();
  v19 = v42;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  v32 = v20;
  v21 = MEMORY[0x1E69E62F8];
  sub_1D5BEE168(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69E62F8]);
  sub_1D5BD48FC();
  v22 = sub_1D5BD49DC(&qword_1EDF1B260, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v30 = v41[1];
  v31 = v41[0];
  *&v41[0] = v34;
  *&v40[0] = v19;
  MEMORY[0x1EEE9AC00](v22, v23);

  v24 = sub_1D725C00C();

  v25 = v35;
  *v35 = 0;
  v26 = v31;
  *(v25 + 24) = v30;
  *(v25 + 8) = v26;
  *&v41[0] = v24;
  sub_1D5BEE168(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes, v21);
  sub_1D5BD49DC(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5BDEFF8();
  v27 = sub_1D72623BC();

  v28 = MEMORY[0x1E69E7CC0];
  *(v25 + 5) = v27;
  *(v25 + 6) = v28;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t sub_1D5BE8D70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE8DD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BE8E40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D5BE8EA8()
{
  if (!qword_1EDF023F8)
  {
    sub_1D5BE8F38(255, &qword_1EDF180C0, sub_1D5C0B754, &type metadata for A6_V1.Layout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF023F8);
    }
  }
}

void sub_1D5BE8F38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D5BE8FA0(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  sub_1D5BEABF0(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v37 - v8);
  v38 = a1;
  v44 = a1;
  KeyPath = swift_getKeyPath();
  v10 = swift_allocObject();
  v11 = type metadata accessor for HeadlineViewLayout.Context(0);
  v12 = (a2 + *(v11 + 24));
  v13 = v12[3];
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v13);
  *(v10 + 16) = (*(v14 + 16))(v13, v14);
  *v9 = v10;
  v15 = *MEMORY[0x1E69D7488];
  v37 = *(v6 + 104);
  v37(v9, v15, v5);
  v16 = MEMORY[0x1E69D6F38];
  sub_1D5BEAB60(0, &qword_1EDF3C1C8, MEMORY[0x1E69D6F38]);
  v18 = v17;
  v19 = sub_1D5BEAD1C(&qword_1EDF3C1D0, &qword_1EDF3C1C8, v16);
  v20 = sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4);
  v42 = v19;
  v43 = v18;
  v39 = v20;
  sub_1D7259A7C();

  v21 = *(v6 + 8);
  v22 = v5;
  v21(v9, v5);
  v23 = v41 + *(v11 + 20);
  result = type metadata accessor for FeedHeadline(0);
  v25 = (v23 + *(result + 40));
  if (v25[1] != 1 || *v25 <= 1u)
  {
    v26 = v38;
    v44 = v38;
    v27 = swift_allocObject();
    *(v27 + 16) = 0x4010000000000000;
    *v9 = v27;
    v37(v9, *MEMORY[0x1E69D7480], v5);
    sub_1D7259A9C();
    v21(v9, v5);
    v44 = v26;
    swift_getKeyPath();
    v28 = v12[3];
    v29 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v28);
    (*(v29 + 24))(v28, v29);
    sub_1D5BEB9A0();
    sub_1D725A51C();
    sub_1D5BEADA4();
    sub_1D5BEABF0(0, &qword_1EDF3C0C8, MEMORY[0x1E69D70D8]);
    v31 = v30;
    v32 = *(v30 - 8);
    v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1D7273AE0;
    v35 = *MEMORY[0x1E69D7070];
    sub_1D5BEABF0(0, &qword_1EDF3C0F0, MEMORY[0x1E69D7078]);
    (*(*(v36 - 8) + 104))(v34 + v33, v35, v36);
    (*(v32 + 104))(v34 + v33, *MEMORY[0x1E69D7080], v31);
    sub_1D7259A7C();

    return (v21)(v9, v22);
  }

  return result;
}

id sub_1D5BE94B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a1;
  v37 = a4;
  v33 = a2;
  v34 = a3;
  sub_1D5BEABF0(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v6 = v5;
  v32 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = (v31 - v9);
  v41 = a1;
  v11 = sub_1D725A35C();
  v12 = swift_allocBox();
  *v13 = 0x3FF0000000000000;
  (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69D7330], v11);
  *v10 = v12;
  v14 = *MEMORY[0x1E69D7478];
  v35 = *(v7 + 104);
  v31[1] = v7 + 104;
  v35(v10, v14, v6);
  sub_1D5BEADA4();
  sub_1D5BEABF0(0, &qword_1EDF3C0C8, MEMORY[0x1E69D70D8]);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7270C10;
  v21 = v20 + v19;
  v22 = *(v17 + 104);
  v22(v21, *MEMORY[0x1E69D7088], v16);
  sub_1D725A28C();
  v22(v21 + v18, *MEMORY[0x1E69D6FC0], v16);
  v38 = v33;
  v39 = v34;
  v40 = v37;
  v23 = MEMORY[0x1E69D6F38];
  sub_1D5BEAB60(0, &qword_1EDF3C1C8, MEMORY[0x1E69D6F38]);
  sub_1D5BEAD1C(&qword_1EDF3C1D0, &qword_1EDF3C1C8, v23);
  sub_1D7259A2C();

  v24 = *(v7 + 8);
  v25 = v32;
  v24(v10, v32);
  v26 = v36;
  v41 = v36;
  v27 = swift_allocObject();
  *(v27 + 16) = 0x4030000000000000;
  *v10 = v27;
  v28 = v35;
  v35(v10, *MEMORY[0x1E69D7480], v25);
  sub_1D7259A9C();
  v24(v10, v25);
  v41 = v26;
  swift_getKeyPath();
  v29 = *MEMORY[0x1E69D7460];
  v28(v10, v29, v25);
  sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4);
  sub_1D7259A7C();

  v24(v10, v25);
  result = [*(v37 + *(type metadata accessor for HeadlineViewLayout.Context(0) + 20) + 40) hasVideo];
  if (result)
  {
    v41 = v36;
    v35(v10, v29, v25);
    sub_1D7259B2C();
    return (v24)(v10, v25);
  }

  return result;
}

uint64_t FeedItemRenderer.render(in:at:options:layoutAttributes:actionSenderHandler:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  v45 = a7;
  v42 = sub_1D7258DBC();
  v13 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v14);
  v37 = v15;
  v40 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a3;
  v47 = *a4;
  v17 = v47;
  sub_1D5C093B0(a1, a2, &v47, &v48);
  v18 = v48;
  v19 = sub_1D5BE5B1C();
  v47 = v17;
  v39 = v16;
  v46 = v16;
  v20 = v19;
  v38 = a1;
  v41 = a2;
  v43 = a5;
  v44 = a6;
  sub_1D5BE437C(a1, a2, v20, &v47, &v46, a5, a6);

  v36 = v18;
  v48 = v18;
  v21 = sub_1D5BE5B1C();
  v35[1] = v22;
  v35[0] = swift_getObjectType();
  v47 = v21;
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = v40;
  v26 = v42;
  (*(v13 + 16))(v40, v41, v42);
  v27 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v28 = v27 + v37;
  v29 = (v27 + v37) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = v23;
  *(v30 + 24) = v24;
  (*(v13 + 32))(v30 + v27, v25, v26);
  *(v30 + v28) = v39;
  v31 = v30 + v29;
  v32 = v44;
  *(v31 + 8) = v43;
  *(v31 + 16) = v32;
  v33 = v21;

  sub_1D725C9BC();

  *v45 = v36;
  return result;
}

uint64_t sub_1D5BE9CE0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5BE9D18()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5BE9D54(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D7261B9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v88 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BEABF0(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v12 = *(v11 - 8);
  v93 = v11;
  v94 = v12;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = (v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v81 - v18;
  v90 = a2;
  v91 = a1;
  v20 = *a2;
  v92 = a4;
  if ((v20 & 4) == 0)
  {
    KeyPath = v8;
    v96 = a1;
    swift_getKeyPath();
    sub_1D725A18C();
    v22 = v21;
    if (qword_1EDF34BB8 != -1)
    {
      swift_once();
    }

    sub_1D7264C3C();
    v23 = round(v22 * 56.0 * 0.25);
    if (v95)
    {
      v24 = v23;
    }

    else
    {
      v24 = 14.0;
    }

    v25 = [*(a4 + *(type metadata accessor for HeadlineViewLayout.Context(0) + 20) + 40) sourceChannel];
    v87 = v7;
    if (v25)
    {
      v26 = [v25 theme];
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0;
    }

    v27 = [objc_opt_self() defaultMetrics];
    sub_1D5BEAE2C(v26, v27, v19, v24);

    swift_unknownObjectRelease();
    v28 = MEMORY[0x1E69D6F38];
    sub_1D5BEAB60(0, &qword_1EDF3C1C8, MEMORY[0x1E69D6F38]);
    v30 = v29;
    v31 = sub_1D5BEAD1C(&qword_1EDF3C1D0, &qword_1EDF3C1C8, v28);
    sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4);
    v85 = v30;
    sub_1D7259A7C();

    v33 = v93;
    v32 = v94;
    v34 = *(v94 + 8);
    v34(v19, v93);
    v35 = v91;
    v96 = v91;
    v36 = swift_allocObject();
    *(v36 + 16) = 0x4010000000000000;
    *v15 = v36;
    v37 = *(v32 + 104);
    v37(v15, *MEMORY[0x1E69D7488], v33);
    v38 = v31;
    sub_1D7259A9C();
    v39 = (v34)(v15, v33);
    v86 = v81;
    v96 = v35;
    v41 = MEMORY[0x1EEE9AC00](v39, v40);
    a4 = v92;
    v79 = v92;
    (v37)(v15, *MEMORY[0x1E69D7460], v33, v41);
    v80 = v38;
    v78[1] = v78;
    v79 = v85;
    v78[0] = sub_1D5BEB6DC;
    sub_1D7259B2C();
    v42 = v33;
    a1 = v35;
    v34(v15, v42);
    v7 = v87;
    v8 = KeyPath;
  }

  v96 = a1;
  KeyPath = swift_getKeyPath();
  v43 = type metadata accessor for HeadlineViewLayout.Context(0);
  v44 = *(a4 + *(v43 + 28));
  if (*(v44 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), v45 = sub_1D726308C(), v46 = v88, *v88 = v45, (*(v8 + 13))(v46, *MEMORY[0x1E69E8018], v7), v47 = sub_1D7261BBC(), result = (*(v8 + 1))(v46, v7), (v47))
  {
    v49 = swift_allocObject();
    v50 = *(*v44 + 136);
    v87 = v43;
    v51 = *(v44 + v50);
    *(v49 + 16) = v51;
    *v15 = v49;
    v52 = *MEMORY[0x1E69D7440];
    v53 = *(v94 + 104);
    v85 = v94 + 104;
    v88 = v53;
    (v53)(v15, v52, v93);
    sub_1D5BEADA4();
    v84 = v54;
    sub_1D5BEABF0(0, &qword_1EDF3C0C8, MEMORY[0x1E69D70D8]);
    v56 = v55;
    v86 = v55;
    v57 = *(v55 - 1);
    v83 = *(v57 + 72);
    v58 = v57;
    v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v60 = swift_allocObject();
    v82 = xmmword_1D7273AE0;
    *(v60 + 16) = xmmword_1D7273AE0;
    *(v60 + v59) = *&v90[*(type metadata accessor for HeadlineViewLayout.Options(0) + 24)];
    v61 = *MEMORY[0x1E69D6FE0];
    v62 = *(v58 + 104);
    v81[0] = v58 + 104;
    v90 = v62;
    (v62)(v60 + v59, v61, v56);
    v63 = MEMORY[0x1E69D6F38];
    sub_1D5BEAB60(0, &qword_1EDF3C1C8, MEMORY[0x1E69D6F38]);
    v81[1] = v64;
    v65 = sub_1D5BEAD1C(&qword_1EDF3C1D0, &qword_1EDF3C1C8, v63);
    sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4);
    v66 = v51;
    sub_1D7259A7C();

    v67 = v93;
    v68 = *(v94 + 8);
    v94 += 8;
    KeyPath = v68;
    v68(v15, v93);
    v96 = v91;
    v69 = swift_allocObject();
    v70 = (v92 + *(v87 + 24));
    v71 = v70[3];
    v72 = v70[4];
    __swift_project_boxed_opaque_existential_1(v70, v71);
    *(v69 + 16) = (*(v72 + 16))(v71, v72);
    *v15 = v69;
    (v88)(v15, *MEMORY[0x1E69D7488], v67);
    v73 = swift_allocObject();
    *(v73 + 16) = v82;
    v74 = *MEMORY[0x1E69D7050];
    sub_1D5BEABF0(0, &qword_1EDF3C0F0, MEMORY[0x1E69D7078]);
    (*(*(v75 - 8) + 104))(v73 + v59, v74, v75);
    v76 = (v90)(v73 + v59, *MEMORY[0x1E69D7080], v86);
    MEMORY[0x1EEE9AC00](v76, v77);
    v79 = v65;
    sub_1D72599EC();

    return KeyPath(v15, v67);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5BEA738()
{

  return swift_deallocObject();
}

uint64_t sub_1D5BEA770(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BEA7D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BEA830(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BEA8DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5BEA924(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5BEA96C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5BEA9B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5BEA9FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5BEAA44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5BEAA8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5BEAAD4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5BEAB18(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D5BEAB60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for HeadlineViewLayout;
    v8[1] = &type metadata for HeadlineViewLayout.Attributes;
    v8[2] = sub_1D5BEB9A0();
    v8[3] = sub_1D5C0B958();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D5BEABF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5BEB9A0();
    v7 = a3(a1, &type metadata for HeadlineViewLayout, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D5BEAC54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5BEB9A0();
    v7 = a3(a1, &type metadata for HeadlineViewLayout, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D5BEACB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5BEB9A0();
    v7 = a3(a1, &type metadata for HeadlineViewLayout, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D5BEAD1C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D5BEAB60(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5BEAD60(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D5C203B4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5BEADA4()
{
  if (!qword_1EDF19B70)
  {
    sub_1D5BEABF0(255, &qword_1EDF3C0C8, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19B70);
    }
  }
}

uint64_t sub_1D5BEAE2C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v37 = a3;
  sub_1D5BEB674(0, &qword_1EDF3C0C8, sub_1D5BEB9A0, &type metadata for HeadlineViewLayout, MEMORY[0x1E69D70D8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = (v35 - v11);
  sub_1D5BEB674(0, &qword_1EDF3BF00, sub_1D5BEB9A0, &type metadata for HeadlineViewLayout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = (v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v21 = MEMORY[0x1EEE9AC00](v19, v20).n128_u64[0];
  v23 = v35 - v22;
  if (a1)
  {
    [a1 bannerImageScale];
    v25 = v24;
    [a1 bannerImageBaselineOffsetPercentage];
    v27 = v26;
  }

  else
  {
    v25 = 1.0;
    v27 = 0;
  }

  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  *(v28 + 24) = a4;
  *v18 = v28;
  (*(v15 + 104))(v18, *MEMORY[0x1E69D7418], v14);
  *v12 = v25;
  v29 = *MEMORY[0x1E69D7038];
  v36 = *(v9 + 104);
  v36(v12, v29, v8);
  v35[1] = sub_1D5BEB9A0();
  v30 = a2;
  sub_1D725A21C();
  v31 = v23;
  v32 = *(v9 + 8);
  v32(v12, v8);
  v33 = *(v15 + 8);
  v33(v18, v14);
  *v12 = 0.0;
  *(v12 + 1) = v27;
  v36(v12, *MEMORY[0x1E69D6FC8], v8);
  sub_1D725A21C();
  v32(v12, v8);
  return (v33)(v31, v14);
}

uint64_t sub_1D5BEB184(uint64_t a1, uint64_t a2)
{
  sub_1D5BEABF0(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (v27 - v8);
  v10 = sub_1D7261B9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27[1] = a1;
  swift_getKeyPath();
  v15 = *(a2 + *(type metadata accessor for HeadlineViewLayout.Context(0) + 36));
  if (*(v15 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), *v14 = sub_1D726308C(), (*(v11 + 104))(v14, *MEMORY[0x1E69E8018], v10), v16 = sub_1D7261BBC(), result = (*(v11 + 8))(v14, v10), (v16))
  {
    v18 = swift_allocObject();
    v19 = *(v15 + *(*v15 + 136));
    *(v18 + 16) = v19;
    *v9 = v18;
    (*(v6 + 104))(v9, *MEMORY[0x1E69D73E8], v5);
    sub_1D5BEADA4();
    sub_1D5BEABF0(0, &qword_1EDF3C0C8, MEMORY[0x1E69D70D8]);
    v21 = v20;
    v22 = *(v20 - 8);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D7273AE0;
    *(v24 + v23) = 1;
    (*(v22 + 104))(v24 + v23, *MEMORY[0x1E69D6FE0], v21);
    v25 = MEMORY[0x1E69D6F38];
    sub_1D5BEAB60(0, &qword_1EDF3C1C8, MEMORY[0x1E69D6F38]);
    sub_1D5BEAD1C(&qword_1EDF3C1D0, &qword_1EDF3C1C8, v25);
    sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4);
    v26 = v19;
    sub_1D7259A7C();

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D5BEB610(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5EB5218();
    v7 = a3(a1, &type metadata for FormatLayout, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D5BEB674(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D5BEB6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  sub_1D5BEABF0(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v17 = v16;
  v18 = *(v16 - 8);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v30[-v21];
  v34 = a1;
  (*(v18 + 104))(&v30[-v21], *MEMORY[0x1E69D7460], v17, v20);
  sub_1D5BEADA4();
  sub_1D5BEABF0(0, &qword_1EDF3C0C8, MEMORY[0x1E69D70D8]);
  v24 = *(v23 - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D7273AE0;
  v27 = (v26 + v25);
  *v27 = a5;
  v27[1] = a6;
  v27[2] = a7;
  v27[3] = a8;
  (*(v24 + 104))();
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v28 = MEMORY[0x1E69D7150];
  sub_1D5BEAB60(0, &qword_1EDF3C068, MEMORY[0x1E69D7150]);
  sub_1D5BEAD1C(&qword_1EDF3C070, &qword_1EDF3C068, v28);
  sub_1D72599EC();

  return (*(v18 + 8))(v22, v17);
}

unint64_t sub_1D5BEB9A0()
{
  result = qword_1EDF2D480[0];
  if (!qword_1EDF2D480[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF2D480);
  }

  return result;
}

uint64_t sub_1D5BEB9F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v273 = a1;
  v272 = a4;
  v7 = sub_1D725C14C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v270 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D725A27C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = (&v270 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v270 - v20;
  v22 = *v4;
  switch((*v4 >> 59) & 0x1E | (*v4 >> 2) & 1)
  {
    case 1uLL:
      v96 = v22 & 0xFFFFFFFFFFFFFFBLL;
      v97 = *(v96 + 16);
      v98 = *(v96 + 24);
      v271 = v19;
      if (!v98)
      {
        v211 = *MEMORY[0x1E69D6F50];
        v212 = v19;
        v213 = sub_1D725994C();
        (*(*(v213 - 8) + 104))(v21, v211, v213);
        (*(v13 + 104))(v21, *MEMORY[0x1E69D72C8], v212);
        goto LABEL_77;
      }

      if (v98 == 1)
      {
        v99 = *MEMORY[0x1E69D6F48];
        v100 = sub_1D725994C();
        (*(*(v100 - 8) + 104))(v21, v99, v100);
        (*(v13 + 104))(v21, *MEMORY[0x1E69D72C8], v271);
LABEL_77:

        goto LABEL_78;
      }

      v275 = v273;
      v228 = off_1F51AF338[0];

      sub_1D5C07390(v98);
      type metadata accessor for FormatNodeContext();
      v229 = v228();
      v230 = v274;
      v231 = sub_1D5E02AFC(v229, v98);
      sub_1D5C08648(v98);

      if (v230)
      {
      }

      v274 = 0;
      *v16 = v231;
      v256 = v271;
      (*(v13 + 104))(v16, *MEMORY[0x1E69D72D0], v271);
      (*(v13 + 32))(v21, v16, v256);
LABEL_78:
      v214 = v97;
      sub_1D71E8954();
      v216 = v215;
      v270 = swift_allocBox();
      v218 = v217;
      v275 = v273;
      v219 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v220 = v219();
      v221 = v274;
      v222 = sub_1D5E02AFC(v220, v214);
      if (!v221)
      {
        v236 = v222;

        v237 = *(v216 + 48);

        *v218 = v236;
        (*(v13 + 32))(&v218[v237], v21, v271);
        v66 = v272;
        *v272 = v270;
        v67 = MEMORY[0x1E69D73F0];
        goto LABEL_99;
      }

      (*(v13 + 8))(v21, v271);
      return swift_deallocBox();
    case 2uLL:
      v73 = v22 & 0xFFFFFFFFFFFFFFBLL;
      v74 = *(v73 + 16);
      v75 = *(v73 + 24);
      v275 = v74;
      v276 = v75;
      sub_1D5D0A048(v74);
      sub_1D5D0A048(v75);
      sub_1D6C80CE0(a2, a3, v273, v272);
      sub_1D5D09FB0(v74);
      return sub_1D5D09FB0(v75);
    case 3uLL:
      v79 = *((v22 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v80 = swift_allocObject();
      v275 = v273;
      v81 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();

      v82 = v81();
      v83 = v274;
      v84 = sub_1D5E02AFC(v82, v79);
      if (v83)
      {
        goto LABEL_53;
      }

      v85 = v84;

      *(v80 + 16) = v85;
      v66 = v272;
      *v272 = v80;
      v67 = MEMORY[0x1E69D7480];
      goto LABEL_99;
    case 4uLL:
      v50 = *((v22 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v51 = swift_allocObject();
      v275 = v273;
      v52 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();

      v53 = v52();
      v54 = v274;
      v55 = sub_1D5E02AFC(v53, v50);
      if (v54)
      {
        goto LABEL_53;
      }

      v56 = v55;

      goto LABEL_70;
    case 5uLL:
      v117 = *((v22 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v118 = swift_allocObject();
      v275 = v273;
      v119 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();

      v120 = v119();
      v121 = v274;
      v122 = sub_1D5E02AFC(v120, v117);
      if (v121)
      {
        goto LABEL_53;
      }

      v123 = v122;

      *(v118 + 16) = v123;
      v66 = v272;
      *v272 = v118;
      v67 = MEMORY[0x1E69D73D0];
      goto LABEL_99;
    case 6uLL:
      v143 = *((v22 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v144 = swift_allocObject();
      v275 = v273;
      v145 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();

      v146 = v145();
      v147 = v274;
      v148 = sub_1D5E02AFC(v146, v143);
      if (v147)
      {
        goto LABEL_53;
      }

      v149 = v148;

      *(v144 + 16) = v149;
      v66 = v272;
      *v272 = v144;
      v67 = MEMORY[0x1E69D73D8];
      goto LABEL_99;
    case 7uLL:
      v86 = v22 & 0xFFFFFFFFFFFFFFBLL;
      v87 = *(v86 + 16);
      v88 = *(v86 + 24);
      if (v88 == 12)
      {
        v89 = swift_allocObject();
        v90 = objc_opt_self();

        *(v89 + 16) = [v90 defaultMetrics];
        v275 = v273;
        v91 = off_1F51AF338[0];
        type metadata accessor for FormatNodeContext();
        v92 = v91();
        v93 = v274;
        v94 = sub_1D5E02AFC(v92, v87);
        if (v93)
        {
          goto LABEL_46;
        }

        v95 = v94;
      }

      else
      {
        LOBYTE(v275) = v88;

        v191 = sub_1D6F8A788();
        v89 = swift_allocObject();
        *(v89 + 16) = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
        v275 = v273;
        v192 = off_1F51AF338[0];
        type metadata accessor for FormatNodeContext();
        v193 = v192();
        v194 = v274;
        v195 = sub_1D5E02AFC(v193, v87);
        if (v194)
        {
          goto LABEL_64;
        }

        v95 = v195;
      }

      *(v89 + 24) = v95;
      v66 = v272;
      *v272 = v89;
      v67 = MEMORY[0x1E69D7400];
      goto LABEL_99;
    case 8uLL:
      v170 = v22 & 0xFFFFFFFFFFFFFFBLL;
      v171 = *(v170 + 16);
      v172 = *(v170 + 24);
      if (v172 == 12)
      {
        v89 = swift_allocObject();
        v173 = objc_opt_self();

        *(v89 + 16) = [v173 defaultMetrics];
        v275 = v273;
        v174 = off_1F51AF338[0];
        type metadata accessor for FormatNodeContext();
        v175 = v174();
        v176 = v274;
        v177 = sub_1D5E02AFC(v175, v171);
        if (v176)
        {
LABEL_46:

LABEL_65:

          return swift_deallocUninitializedObject();
        }

        v254 = v177;
      }

      else
      {
        LOBYTE(v275) = v172;

        v191 = sub_1D6F8A788();
        v89 = swift_allocObject();
        *(v89 + 16) = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
        v275 = v273;
        v196 = off_1F51AF338[0];
        type metadata accessor for FormatNodeContext();
        v197 = v196();
        v198 = v274;
        v199 = sub_1D5E02AFC(v197, v171);
        if (v198)
        {
LABEL_64:

          goto LABEL_65;
        }

        v254 = v199;
      }

      *(v89 + 24) = v254;
      v66 = v272;
      *v272 = v89;
      v67 = MEMORY[0x1E69D7418];
      goto LABEL_99;
    case 9uLL:
      v68 = v22 & 0xFFFFFFFFFFFFFFBLL;
      v69 = *(v68 + 16);
      v70 = *(v68 + 24);
      v51 = swift_allocObject();
      v275 = v69;
      v276 = v70;

      v71 = v274;
      sub_1D6B026D4(v273);
      if (v71)
      {

        return swift_deallocUninitializedObject();
      }

      v56 = v72;

LABEL_70:
      *(v51 + 16) = v56;
      v66 = v272;
      *v272 = v51;
      v67 = MEMORY[0x1E69D7488];
      goto LABEL_99;
    case 0xAuLL:
      v157 = v22 & 0xFFFFFFFFFFFFFFBLL;
      v158 = *(v157 + 16);
      v159 = *(v157 + 24);
      v160 = sub_1D725A35C();
      v161 = swift_allocBox();
      v163 = v162;
      if (v159)
      {
        if (v159 == 1)
        {
          v275 = v273;
          v164 = off_1F51AF338[0];
          type metadata accessor for FormatNodeContext();

          v165 = v164();
          v166 = v274;
          v167 = sub_1D5E02AFC(v165, v158);
          if (!v166)
          {
            v168 = v167;

            *v163 = v168;
            v169 = MEMORY[0x1E69D7368];
            goto LABEL_97;
          }

LABEL_85:

          return swift_deallocBox();
        }

        v275 = v273;
        v232 = off_1F51AF338[0];
        type metadata accessor for FormatNodeContext();

        v233 = v232();
        v234 = v274;
        v235 = sub_1D5E02AFC(v233, v158);
        if (v234)
        {
          goto LABEL_85;
        }

        v257 = v235;

        *v163 = v257;
        v258 = *MEMORY[0x1E69D7350];
        v259 = sub_1D725A34C();
        (*(*(v259 - 8) + 104))(v163, v258, v259);
        v169 = MEMORY[0x1E69D7360];
      }

      else
      {
        v275 = v273;
        v223 = off_1F51AF338[0];
        type metadata accessor for FormatNodeContext();

        v224 = v223();
        v225 = v274;
        v226 = sub_1D5E02AFC(v224, v158);
        if (v225)
        {
          goto LABEL_85;
        }

        v227 = v226;

        *v163 = v227;
        v169 = MEMORY[0x1E69D7330];
      }

LABEL_97:
      (*(*(v160 - 8) + 104))(v163, *v169, v160);
      v66 = v272;
      *v272 = v161;
LABEL_98:
      v67 = MEMORY[0x1E69D7478];
      goto LABEL_99;
    case 0xBuLL:
      v41 = v22 & 0xFFFFFFFFFFFFFFBLL;
      v42 = *(v41 + 16);
      v43 = *(v41 + 24);
      v44 = swift_allocObject();
      *(v44 + 16) = v42;
      v45 = v272;
      *v272 = v44;
      sub_1D5BEB674(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
      v47 = v46;
      v48 = *(*(v46 - 8) + 104);
      if (v43)
      {
        v49 = MEMORY[0x1E69D7490];
      }

      else
      {
        v49 = MEMORY[0x1E69D7438];
      }

      v185 = *v49;
      v186 = v45;
      return v48(v186, v185, v47);
    case 0xCuLL:
      v57 = v22 & 0xFFFFFFFFFFFFFFBLL;
      v58 = *(v57 + 16);
      v59 = *(v57 + 24);
      v60 = swift_allocObject();
      if (v59)
      {
        v275 = v273;
        v61 = off_1F51AF338[0];
        type metadata accessor for FormatNodeContext();

        v62 = v61();
        v63 = v274;
        v64 = sub_1D5E02AFC(v62, v58);
        if (!v63)
        {
          v65 = v64;

          *(v60 + 16) = v65;
          v66 = v272;
          *v272 = v60;
          v67 = MEMORY[0x1E69D7408];
          goto LABEL_99;
        }

        goto LABEL_53;
      }

      v275 = v273;
      v187 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();

      v188 = v187();
      v189 = v274;
      v190 = sub_1D5E02AFC(v188, v58);
      if (v189)
      {
LABEL_53:

        goto LABEL_54;
      }

      v253 = v190;

      *(v60 + 16) = v253;
      v66 = v272;
      *v272 = v60;
      v67 = MEMORY[0x1E69D7450];
      goto LABEL_99;
    case 0xDuLL:
      v131 = v22 & 0xFFFFFFFFFFFFFFBLL;
      v132 = *(v131 + 16);
      v133 = *(v131 + 24);
      sub_1D60DF7C0();
      v135 = v134;
      v136 = swift_allocBox();
      v138 = v137;
      *v137 = v132;
      v275 = v273;
      v139 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();

      v140 = v139();
      v141 = v274;
      v142 = sub_1D5E02AFC(v140, v133);
      if (v141)
      {

        return swift_deallocBox();
      }

      v206 = *(v135 + 48);
      v207 = v142;

      *&v138[v206] = v207;
      v208 = *MEMORY[0x1E69D7350];
      v209 = sub_1D725A34C();
      (*(*(v209 - 8) + 104))(&v138[v206], v208, v209);
      v66 = v272;
      *v272 = v136;
      v67 = MEMORY[0x1E69D73E0];
      goto LABEL_99;
    case 0xEuLL:
      v38 = v22 & 0xFFFFFFFFFFFFFFBLL;
      v39 = *(v38 + 24);
      v40 = *(v38 + 32);
      sub_1D5DEA234(v39);
      sub_1D71E86E4(v273, v39, v40, v272);
      return sub_1D5CBF568(v39);
    case 0xFuLL:
      v76 = v22 & 0xFFFFFFFFFFFFFFBLL;
      v78 = *(v76 + 16);
      v77 = *(v76 + 24);
      v275 = v78;
      v276 = v77;
      sub_1D5C82CD8(v78);
      sub_1D62B48BC(v77);
      sub_1D70439C8(v273, a2, a3, v272);
      sub_1D5C92A8C(v78);
      return sub_1D62B48D0(v77);
    case 0x10uLL:
      v29 = v22 & 0xFFFFFFFFFFFFFFBLL;
      v31 = *(v29 + 16);
      v30 = *(v29 + 24);
      v32 = swift_allocObject();
      v33 = swift_allocObject();
      v33[2] = v31;
      v33[3] = v30;
      v34 = v272;
      v33[4] = v273;
      v33[5] = a2;
      v33[6] = a3;
      *(v32 + 16) = sub_1D71E8930;
      *(v32 + 24) = v33;
      *v34 = v32;
      v35 = *MEMORY[0x1E69D7498];
      sub_1D5BEB674(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
      (*(*(v36 - 8) + 104))(v34, v35, v36);

      sub_1D5C82CD8(v30);

    case 0x11uLL:
      v101 = *((v22 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v102 = swift_allocObject();
      v275 = v273;
      v103 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();

      v104 = v103();
      v105 = v274;
      v106 = sub_1D5E02AFC(v104, v101);
      if (v105)
      {
        goto LABEL_53;
      }

      v107 = v106;

      *(v102 + 16) = v107;
      v66 = v272;
      *v272 = v102;
      v67 = MEMORY[0x1E69D7430];
      goto LABEL_99;
    case 0x12uLL:
      v150 = *((v22 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v151 = swift_allocObject();
      v275 = v273;
      v152 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();

      v153 = v152();
      v154 = v274;
      v155 = sub_1D5E02AFC(v153, v150);
      if (v154)
      {
        goto LABEL_53;
      }

      v156 = v155;

      *(v151 + 16) = v156;
      v66 = v272;
      *v272 = v151;
      v67 = MEMORY[0x1E69D7428];
      goto LABEL_99;
    case 0x13uLL:
      v179 = *((v22 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v180 = swift_allocObject();
      v275 = v273;
      v181 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();

      v182 = v181();
      v183 = v274;
      v184 = sub_1D5E02AFC(v182, v179);
      if (v183)
      {
        goto LABEL_53;
      }

      v210 = v184;

      *(v180 + 16) = v210;
      v66 = v272;
      *v272 = v180;
      v67 = MEMORY[0x1E69D7410];
      goto LABEL_99;
    case 0x14uLL:
      v108 = v22 & 0xFFFFFFFFFFFFFFBLL;
      v109 = *(v108 + 16);
      v110 = *(v108 + 24);
      v111 = swift_allocObject();
      v112 = v273;
      v275 = v273;
      v113 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();

      v114 = v113();
      v115 = v274;
      v116 = sub_1D5E02AFC(v114, v109);
      if (!v115)
      {
        v201 = v116;

        *(v111 + 16) = v201;
        v275 = v112;
        v202 = v113();
        v255 = sub_1D5E02AFC(v202, v110);

        *(v111 + 24) = v255;
        v66 = v272;
        *v272 = v111;
        v67 = MEMORY[0x1E69D73F8];
        goto LABEL_99;
      }

LABEL_54:

      return swift_deallocUninitializedObject();
    case 0x15uLL:
      v124 = *((v22 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v125 = sub_1D725A35C();
      v126 = swift_allocBox();
      v128 = v127;
      v277 = type metadata accessor for FormatNodeContext();
      v278 = &off_1F51AF328;
      v275 = v273;
      v279 = v124;

      v129 = v274;
      v130 = sub_1D6768880(&v275);
      if (!v129)
      {
        v203 = v130;
        __swift_destroy_boxed_opaque_existential_1(&v275);
        *v128 = v203;
        v204 = *MEMORY[0x1E69D7350];
        v205 = sub_1D725A34C();
        (*(*(v205 - 8) + 104))(v128, v204, v205);
        (*(*(v125 - 8) + 104))(v128, *MEMORY[0x1E69D7360], v125);
        v66 = v272;
        *v272 = v126;
        goto LABEL_98;
      }

      __swift_destroy_boxed_opaque_existential_1(&v275);
      return swift_deallocBox();
    case 0x16uLL:
      v178 = __ROR8__(v22 + 0x5000000000000000, 3);
      if (v178 > 3)
      {
        if (v178 <= 5)
        {
          if (v178 == 4)
          {
            v247 = sub_1D725994C();
            v248 = swift_allocBox();
            (*(*(v247 - 8) + 104))(v249, *MEMORY[0x1E69D6F48], v247);
            v250 = v272;
            *v272 = v248;
            v251 = *MEMORY[0x1E69D73C0];
            sub_1D5BEB674(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
            v47 = v252;
            v48 = *(*(v252 - 8) + 104);
            v186 = v250;
            goto LABEL_109;
          }

          v268 = MEMORY[0x1E69D7470];
        }

        else
        {
          if (v178 == 6)
          {
            v262 = sub_1D7259EEC();
            sub_1D725C13C();
            (*(v8 + 104))(v11, *MEMORY[0x1E69C6170], v7);
            MEMORY[0x1DA6F37C0](v11, v262, 0.0, 0.0);

            (*(v8 + 8))(v11, v7);
            goto LABEL_102;
          }

          if (v178 == 7)
          {
            sub_1D6E95E48(v273);
LABEL_102:
            sub_1D5EB5218();
            return sub_1D725A51C();
          }

          v268 = MEMORY[0x1E69D74A0];
        }

        v251 = *v268;
        sub_1D5BEB674(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
        v47 = v269;
        v48 = *(*(v269 - 8) + 104);
        v186 = v272;
LABEL_109:
        v185 = v251;
        return v48(v186, v185, v47);
      }

      if (v178 > 1)
      {
        if (v178 == 2)
        {
          sub_1D5EF9444();
          v239 = v238;
          v240 = swift_allocBox();
          v242 = v241;
          v243 = *(v239 + 48);
          v244 = *MEMORY[0x1E69D71E0];
          v245 = sub_1D725A09C();
          v246 = *(*(v245 - 8) + 104);
          v246(v242, v244, v245);
          v246(v242 + v243, v244, v245);
          v66 = v272;
          *v272 = v240;
          v67 = MEMORY[0x1E69D7468];
        }

        else
        {
          v265 = sub_1D725994C();
          v266 = swift_allocBox();
          (*(*(v265 - 8) + 104))(v267, *MEMORY[0x1E69D6F50], v265);
          v66 = v272;
          *v272 = v266;
          v67 = MEMORY[0x1E69D73C0];
        }

LABEL_99:
        v260 = *v67;
        sub_1D5BEB674(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
        return (*(*(v261 - 8) + 104))(v66, v260, v261);
      }

      if (v178)
      {
        v200 = MEMORY[0x1E69D74A8];
      }

      else
      {
        v200 = MEMORY[0x1E69D7460];
      }

      v263 = *v200;
      sub_1D5BEB674(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
      return (*(*(v264 - 8) + 104))(v272, v263, v264);
    default:
      v23 = *(v22 + 16);
      v24 = swift_allocObject();
      v275 = v273;
      v25 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();

      v26 = v25();
      v27 = v274;
      v28 = sub_1D5E02AFC(v26, v23);

      if (v27)
      {
        return swift_deallocUninitializedObject();
      }

      *(v24 + 16) = v28;
      v66 = v272;
      *v272 = v24;
      v67 = MEMORY[0x1E69D73C8];
      goto LABEL_99;
  }
}

uint64_t sub_1D5BED614()
{

  return swift_deallocObject();
}

uint64_t sub_1D5BED64C()
{

  sub_1D5C92A8C(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D5BED69C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5BED6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5BE8F38(0, &qword_1EDF17F78, sub_1D5C0B754, &type metadata for A6_V1.Layout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15[-v10];
  v18 = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = 6;
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D7490], v7);
  v16 = a2;
  v17 = a3;
  v13 = MEMORY[0x1E69D7150];
  sub_1D5BED980(0, &qword_1EDF18040, MEMORY[0x1E69D7150]);
  sub_1D5BEDA04(&qword_1EDF18048, &qword_1EDF18040, v13);
  sub_1D7259A2C();
  return (*(v8 + 8))(v11, v7);
}

void sub_1D5BED904()
{
  if (!qword_1EDF3BF50)
  {
    sub_1D5BEB9A0();
    sub_1D5C0B958();
    v0 = sub_1D725A4FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BF50);
    }
  }
}

void sub_1D5BED980(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A6_V1.Layout;
    v8[1] = &type metadata for A6_V1.Layout.Attributes;
    v8[2] = sub_1D5C0B754();
    v8[3] = sub_1D5C0B7A8();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D5BEDA04(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D5BED980(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5BEDA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D725891C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1D72585BC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

void sub_1D5BEDBA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t HeadlineViewLayout.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  *a1 = sub_1D725996C();
  swift_allocObject();
  a1[1] = sub_1D725996C();
  swift_allocObject();
  a1[2] = sub_1D725996C();
  swift_allocObject();
  a1[3] = sub_1D725996C();
  swift_allocObject();
  a1[4] = sub_1D725996C();
  swift_allocObject();
  a1[5] = sub_1D725996C();
  swift_allocObject();
  a1[6] = sub_1D725996C();
  sub_1D5BEDE70();
  swift_allocObject();
  a1[7] = sub_1D725996C();
  sub_1D5BEDBA8(0, &qword_1EDF3C190, sub_1D5BEE088, MEMORY[0x1E69E7DE0], MEMORY[0x1E69D6F58]);
  swift_allocObject();
  a1[8] = sub_1D725996C();
  swift_allocObject();
  a1[9] = sub_1D725996C();
  swift_allocObject();
  result = sub_1D725996C();
  a1[10] = result;
  return result;
}

void sub_1D5BEDE70()
{
  if (!qword_1EDF3C148)
  {
    type metadata accessor for UIRectCorner(255);
    sub_1D5BEA9FC(&qword_1EDF1AC08, type metadata accessor for UIRectCorner);
    v0 = sub_1D725995C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C148);
    }
  }
}

uint64_t sub_1D5BEDF04@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D5BE8F38(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D5BEDFC4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void sub_1D5BEDFF4()
{
  if (!qword_1EDF3C138)
  {
    type metadata accessor for CGRect(255);
    sub_1D5ED2540(&unk_1EDF1A748, type metadata accessor for CGRect);
    v0 = sub_1D725995C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C138);
    }
  }
}

unint64_t sub_1D5BEE088()
{
  result = qword_1EDF3BEC8;
  if (!qword_1EDF3BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3BEC8);
  }

  return result;
}

uint64_t sub_1D5BEE0DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 304) = v3;
  return result;
}

void sub_1D5BEE168(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D5BEE1B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D5BEE208()
{
  result = qword_1EDF2D5E0;
  if (!qword_1EDF2D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D5E0);
  }

  return result;
}

uint64_t sub_1D5BEE25C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D5B4A02C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5BEE2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v16[2] = a5;
  v16[4] = a1;
  v16[5] = a2;
  v11 = sub_1D5BEE384(sub_1D5BEE6EC, v16, a3);
  v12 = sub_1D5BEEC68(a1, a2, v11, a4, a5);
  v14 = v13;

  result = sub_1D5BDB698(v12, (a6 + 2));
  *a6 = v12;
  a6[1] = v14;
  return result;
}

void *sub_1D5BEE384(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = MEMORY[0x1E69E7CC0];
  v7 = a3 + 32;
  a1(&v11, a3 + 32);
  while (!v3)
  {
    if (v12)
    {
      sub_1D5B63F14(&v11, v13);
      sub_1D5B63F14(v13, &v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1D5BEEC40(0, v6[2] + 1, 1, v6);
      }

      v9 = v6[2];
      v8 = v6[3];
      if (v9 >= v8 >> 1)
      {
        v6 = sub_1D5BEEC40((v8 > 1), v9 + 1, 1, v6);
      }

      v6[2] = v9 + 1;
      sub_1D5B63F14(&v11, &v6[5 * v9 + 4]);
    }

    else
    {
      sub_1D5BFB774(&v11, &unk_1EDF27C10, &qword_1EDF3FA20);
    }

    v7 += 40;
    if (!--v4)
    {
      return v6;
    }

    a1(&v11, v7);
  }

  return v6;
}

uint64_t sub_1D5BEE4E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1D5BEE70C(a2, v11, v12);
  if (!v5)
  {
    return sub_1D5B68374(a1, a5);
  }

  sub_1D5BAB064(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7279970;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1D5B7E2C0();
  *(v13 + 64) = v14;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  v15 = sub_1D725AA4C();
  v16 = MEMORY[0x1E69E6158];
  *(v13 + 96) = MEMORY[0x1E69E6158];
  *(v13 + 104) = v14;
  *(v13 + 72) = v15;
  *(v13 + 80) = v17;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  *(v13 + 136) = v16;
  *(v13 + 144) = v14;
  *(v13 + 112) = 0;
  *(v13 + 120) = 0xE000000000000000;
  sub_1D7262EDC();
  sub_1D725C30C();

  *(a5 + 32) = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  return result;
}

uint64_t sub_1D5BEE70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D5BEE810(a2, a3);
  v10 = *(v4 + 24);
  v11 = *(v4 + 32);
  sub_1D5BEE8A0(v10, v11);
  v5 = sub_1D7259EEC();
  v6 = sub_1D5BEE8E4();

  sub_1D5BEEACC(v10, v11);
  if (v6)
  {
    sub_1D5BEEB24(a1);
  }

  else
  {
    sub_1D5C17350();
    swift_allocError();
    v8 = v7;
    *v7 = sub_1D7259EEC();
    *(v8 + 40) = 1;
    swift_willThrow();
  }
}

id sub_1D5BEE7FC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  v3 = *(v1 + 16);
  *(a1 + 8) = v3;
  return sub_1D5BEE8A0(v2, v3);
}

uint64_t sub_1D5BEE810(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 24))();
  (*(a2 + 40))(&v8, a1, a2);
  v5 = v8;
  v6 = v9;
  type metadata accessor for GroupLayoutFactoryValidator();
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v5;
  *(result + 32) = v6;
  return result;
}

id sub_1D5BEE8A0(id result, unsigned __int8 a2)
{
  if (a2 <= 5u)
  {
    return result;
  }

  return result;
}

uint64_t sub_1D5BEE8E4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 > 2)
  {
    if (*(v0 + 8) <= 4u)
    {
      if (v2 == 3)
      {
        goto LABEL_33;
      }

      v11 = sub_1D726207C();
      v13 = v12;
      if (v11 != sub_1D726207C() || v13 != v14)
      {
        v16 = sub_1D72646CC();

        return v16 & 1;
      }

      goto LABEL_31;
    }

    if (v2 == 5)
    {
      v4 = sub_1D726207C();
      v6 = v5;
      if (v4 == sub_1D726207C() && v6 == v7)
      {

        v10 = 0;
      }

      else
      {
        v9 = sub_1D72646CC();

        v10 = v9 ^ 1;
      }

      return v10 & 1;
    }

    if (!v1)
    {
LABEL_31:
      v10 = 1;
      return v10 & 1;
    }

    if (v1 != 1)
    {
LABEL_33:

      return sub_1D72631EC();
    }

    goto LABEL_26;
  }

  if (*(v0 + 8))
  {
    if (v2 == 1)
    {
LABEL_26:

      return sub_1D72631FC();
    }

    return sub_1D72631CC();
  }

  else
  {

    return sub_1D72631DC();
  }
}

void sub_1D5BEEACC(id a1, unsigned __int8 a2)
{
  if (a2 <= 5u)
  {
  }
}

uint64_t sub_1D5BEEAE0()
{

  sub_1D5BEEACC(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1D5BEEB24(uint64_t result)
{
  v3 = *(v1 + 16);
  v14 = *(v3 + 16);
  if (v14)
  {
    v4 = result;
    v5 = 0;
    v6 = (v3 + 40);
    while (v5 < *(v3 + 16))
    {
      v8 = *v6;
      v12 = *(v6 - 1);
      v7 = v12;
      v13 = v8;
      v9 = *(type metadata accessor for GroupLayoutContext() + 20);
      v10 = objc_opt_self();
      sub_1D5ECEDDC(v7, v8);
      v11 = [v10 mainBundle];
      sub_1D6C07488(&v12, v4, v4 + v9, v11);

      if (v2)
      {
        return sub_1D5ECEDE8(v7, v8);
      }

      ++v5;
      result = sub_1D5ECEDE8(v7, v8);
      v6 += 16;
      if (v14 == v5)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D5BEEC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v136 = a5;
  v135 = a4;
  v134 = a2;
  v133 = a1;
  v114 = sub_1D7259CFC();
  v6 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v7);
  v117 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BFCA6C(0, &unk_1EDF3C080, MEMORY[0x1E69D7138]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v113 - v11;
  v126 = sub_1D7259D1C();
  v138 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126, v13);
  v120 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v119 = &v113 - v17;
  v122 = type metadata accessor for GroupLayoutContext();
  MEMORY[0x1EEE9AC00](v122, v18);
  v121 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = 0;
  v131 = type metadata accessor for GroupLayoutBindingContext();
  MEMORY[0x1EEE9AC00](v131, v20);
  v22 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a3 + 16);
  v137 = v22;
  v139 = v6;
  if (v23)
  {
    v127 = MEMORY[0x1E69E7CC8];
    v24 = MEMORY[0x1E69E7CC0];
    v25 = a3 + 32;
    v141 = xmmword_1D7273AE0;
    while (1)
    {
      sub_1D5B68374(v25, &v143);
      v26 = *(&v144 + 1);
      v27 = v145;
      __swift_project_boxed_opaque_existential_1(&v143, *(&v144 + 1));
      (*(v27 + 32))(&v146, v26, v27);
      v28 = v127;
      if (v127[2] && (v29 = sub_1D5BEFB80(v146), (v30 & 1) != 0))
      {
        v31 = *(v28[7] + 8 * v29);
      }

      else
      {
        v31 = v24;
      }

      v32 = *(&v144 + 1);
      v33 = v145;
      __swift_project_boxed_opaque_existential_1(&v143, *(&v144 + 1));
      (*(v33 + 32))(&v142, v32, v33);
      v34 = v142;
      sub_1D5BAB064(0, &qword_1EDF19760, &qword_1EDF3FA20, &protocol descriptor for GroupLayoutFactoryType, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = v141;
      sub_1D5B68374(&v143, inited + 32);
      v146 = v31;
      sub_1D5BEFB58(inited);
      v36 = v146;
      v37 = v127;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v146 = v37;
      v40 = sub_1D5BEFB80(v34);
      v41 = v37[2];
      v42 = (v39 & 1) == 0;
      v43 = v41 + v42;
      if (__OFADD__(v41, v42))
      {
        break;
      }

      v44 = v39;
      if (v37[3] >= v43)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D6D87284();
        }
      }

      else
      {
        sub_1D5BEFB88(v43, isUniquelyReferenced_nonNull_native);
        v45 = sub_1D5BEFB80(v34);
        if ((v44 & 1) != (v46 & 1))
        {
          goto LABEL_51;
        }

        v40 = v45;
      }

      v22 = v137;
      v47 = v146;
      v127 = v146;
      if (v44)
      {
        *(v146[7] + 8 * v40) = v36;
      }

      else
      {
        v146[(v40 >> 6) + 8] |= 1 << v40;
        *(v47[6] + v40) = v34;
        *(v47[7] + 8 * v40) = v36;
        v48 = v47[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_50;
        }

        v47[2] = v50;
      }

      __swift_destroy_boxed_opaque_existential_1(&v143);
      v25 += 40;
      if (!--v23)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    result = sub_1D726493C();
    __break(1u);
  }

  else
  {
    v127 = MEMORY[0x1E69E7CC8];
LABEL_19:
    v51 = *&v132[*(*v132 + 168)];
    sub_1D5BAB064(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v130 = v52;
    v53 = swift_allocObject();
    v129 = xmmword_1D7279970;
    *(v53 + 16) = xmmword_1D7279970;
    *(v53 + 56) = MEMORY[0x1E69E6158];
    v128 = sub_1D5B7E2C0();
    *(v53 + 64) = v128;
    v54 = v134;
    *(v53 + 32) = v133;
    *(v53 + 40) = v54;
    v55 = v135;
    v56 = *(*(v135 + *(v131 + 56)) + 16);
    v57 = MEMORY[0x1E69E6530];
    v58 = MEMORY[0x1E69E65A8];
    *(v53 + 96) = MEMORY[0x1E69E6530];
    *(v53 + 104) = v58;
    *(v53 + 72) = v56;
    v59 = *(*(v55 + 64) + 16);
    *(v53 + 136) = v57;
    *(v53 + 144) = v58;
    *(v53 + 112) = v59;

    sub_1D7262EDC();
    v131 = v51;
    sub_1D725C30C();

    v60 = 0;
    v125 = (v138 + 6);
    v118 = (v138 + 4);
    v123 = (v138 + 1);
    v113 = (v139 + 40);
    v61 = MEMORY[0x1E69E7CC0];
    v62 = v136;
    v132 = v12;
    v63 = v121;
    v64 = v127;
    do
    {
      if (v64[2])
      {
        v66 = sub_1D5BEFB80(byte_1F5119DE8[v60 + 32]);
        if (v67)
        {
          v68 = *(v64[7] + 8 * v66);
          if (*(v68 + 16))
          {
            *&v141 = *(v68 + 16);
            v116 = v60;
            v69 = v68 + 32;
            v115 = v68;

            v124 = MEMORY[0x1E69E7CC0];
            do
            {
              v139 = v69;
              sub_1D5B68374(v69, &v146);
              v73 = v135;
              sub_1D5BE6528(v135, v22, type metadata accessor for GroupLayoutBindingContext);
              sub_1D5BE6528(v62, v63, type metadata accessor for GroupLayoutContext);
              v75 = v147;
              v74 = v148;
              __swift_project_boxed_opaque_existential_1(&v146, v147);
              v76 = v73;
              v77 = v140;
              (*(v74 + 48))(v76, v62, v75, v74);
              if (v77)
              {
                v138 = v61;
                sub_1D5BE67B4(v22, type metadata accessor for GroupLayoutBindingContext);
                v140 = 0;
                v86 = v63;
                sub_1D5BE67B4(v63, type metadata accessor for GroupLayoutContext);
                v87 = swift_allocObject();
                *(v87 + 16) = v129;
                v88 = MEMORY[0x1E69E6158];
                v89 = v128;
                *(v87 + 56) = MEMORY[0x1E69E6158];
                *(v87 + 64) = v89;
                v90 = v134;
                *(v87 + 32) = v133;
                *(v87 + 40) = v90;
                __swift_project_boxed_opaque_existential_1(&v146, v147);

                v91 = sub_1D725AA4C();
                *(v87 + 96) = v88;
                *(v87 + 104) = v89;
                *(v87 + 72) = v91;
                *(v87 + 80) = v92;
                *&v143 = 0;
                *(&v143 + 1) = 0xE000000000000000;
                *&v142 = v77;
                sub_1D5B49474(0, &qword_1EDF3C5D0);
                sub_1D7263F9C();
                v93 = v143;
                *(v87 + 136) = v88;
                *(v87 + 144) = v89;
                *(v87 + 112) = v93;
                sub_1D7262EDC();
                sub_1D725C30C();

                sub_1D5B68374(&v146, &v143);
                *(&v145 + 1) = v77;
                v61 = v138;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v61 = sub_1D6996C38(0, v61[2] + 1, 1, v61);
                }

                v94 = v139;
                v96 = v61[2];
                v95 = v61[3];
                v62 = v136;
                v12 = v132;
                v22 = v137;
                v63 = v86;
                if (v96 >= v95 >> 1)
                {
                  v61 = sub_1D6996C38((v95 > 1), v96 + 1, 1, v61);
                }

                v61[2] = v96 + 1;
                v70 = &v61[6 * v96];
                v71 = v143;
                v72 = v145;
                v70[3] = v144;
                v70[4] = v72;
                v70[2] = v71;
              }

              else
              {
                v78 = v126;
                if ((*v125)(v12, 1, v126) == 1)
                {
                  sub_1D5BF00B8(v12, &unk_1EDF3C080, MEMORY[0x1E69D7138]);
                }

                else
                {
                  v79 = v119;
                  (*v118)(v119, v12, v78);
                  v80 = v120;
                  sub_1D7259BFC();
                  sub_1D5D64C80(&unk_1EDF3C090, MEMORY[0x1E69D7138]);
                  v81 = sub_1D7261FBC();
                  v82 = *v123;
                  (*v123)(v80, v78);
                  if (v81)
                  {
                    v82(v79, v78);
                    v63 = v121;
                    v22 = v137;
                  }

                  else
                  {
                    v83 = v117;
                    sub_1D7259D0C();
                    v22 = v137;
                    v82(v79, v78);
                    v63 = v121;
                    (*v113)(&v121[*(v122 + 20)], v83, v114);
                  }
                }

                v84 = v147;
                v85 = v148;
                __swift_project_boxed_opaque_existential_1(&v146, v147);
                (*(v85 + 56))(&v143, v22, v63, v84, v85);
                sub_1D5B68374(&v143, &v142);
                v97 = v124;
                v98 = swift_isUniquelyReferenced_nonNull_native();
                v140 = 0;
                if ((v98 & 1) == 0)
                {
                  v97 = sub_1D5BDB0E4(0, v97[2] + 1, 1, v97);
                }

                v100 = v97[2];
                v99 = v97[3];
                v101 = v63;
                if (v100 >= v99 >> 1)
                {
                  v97 = sub_1D5BDB0E4((v99 > 1), v100 + 1, 1, v97);
                }

                v97[2] = v100 + 1;
                v124 = v97;
                sub_1D5B63F14(&v142, &v97[5 * v100 + 4]);
                v102 = swift_allocObject();
                *(v102 + 16) = v129;
                v103 = v128;
                *(v102 + 56) = MEMORY[0x1E69E6158];
                *(v102 + 64) = v103;
                v104 = v134;
                *(v102 + 32) = v133;
                *(v102 + 40) = v104;
                v105 = *(&v144 + 1);
                v106 = v145;
                __swift_project_boxed_opaque_existential_1(&v143, *(&v144 + 1));
                v107 = *(v106 + 16);

                v108 = *(v107(v105, v106) + 16);

                *(v102 + 96) = MEMORY[0x1E69E6530];
                *(v102 + 104) = MEMORY[0x1E69E65A8];
                *(v102 + 72) = v108;
                __swift_project_boxed_opaque_existential_1(&v146, v147);
                v109 = sub_1D725AA4C();
                *(v102 + 136) = MEMORY[0x1E69E6158];
                *(v102 + 144) = v103;
                *(v102 + 112) = v109;
                *(v102 + 120) = v110;
                sub_1D7262EDC();
                sub_1D725C30C();

                v22 = v137;
                sub_1D5BE67B4(v137, type metadata accessor for GroupLayoutBindingContext);
                __swift_destroy_boxed_opaque_existential_1(&v143);
                v63 = v101;
                sub_1D5BE67B4(v101, type metadata accessor for GroupLayoutContext);
                v62 = v136;
                v12 = v132;
                v94 = v139;
              }

              __swift_destroy_boxed_opaque_existential_1(&v146);
              v69 = v94 + 40;
              *&v141 = v141 - 1;
            }

            while (v141);

            v64 = v127;
            v60 = v116;
            v65 = v124;
            if (v124[2])
            {
LABEL_46:
              v111 = v65;
              goto LABEL_48;
            }
          }

          else
          {
            v65 = MEMORY[0x1E69E7CC0];
            if (*(MEMORY[0x1E69E7CC0] + 16))
            {
              goto LABEL_46;
            }
          }
        }
      }

      ++v60;
    }

    while (v60 != 4);
    v111 = MEMORY[0x1E69E7CC0];
LABEL_48:

    return v111;
  }

  return result;
}

unint64_t sub_1D5BEFBA0(unsigned __int8 a1)
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](a1);
  v2 = sub_1D7264A5C();
  return sub_1D5BEFC08(a1, v2);
}

unint64_t sub_1D5BEFC08(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1D5BEFC78(uint64_t a1, char a2, void (*a3)(void))
{
  v4 = v3;
  v6 = *v3;
  a3(0);
  v31 = a2;
  result = sub_1D726410C();
  v8 = result;
  if (*(v6 + 16))
  {
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((v31 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](v21);
      result = sub_1D7264A5C();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v3;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1D5BEFF30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5B7B3C8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5BEFF8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5BFC9B4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5BEFFE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D70A2554(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5BF0058(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BF00B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5BFCA6C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5BF0114(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5BFCAC0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5BF0184(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D725A0AC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5BF023C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1D7259F5C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1D7259CFC();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for FeedLayoutSolverOptions(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[10]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D5BF038C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BF03F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BF045C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BF04C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BF052C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BF0594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BF05FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5BF0664(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1D5BF06CC()
{
  v1 = v0;
  sub_1D5BCFD1C(0, &unk_1EDF1A520, sub_1D5B7F110, sub_1D5B7F178);
  v2 = *v0;
  v3 = sub_1D72640FC();
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v21 = v18[2];
        v20 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v21;
        v23[3] = v20;
        *(*(v4 + 56) + 8 * v17) = v22;
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

void sub_1D5BF0880()
{
  if (!qword_1EDF196D0)
  {
    sub_1D5B483C4(255, qword_1EDF22AA0);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF196D0);
    }
  }
}

uint64_t sub_1D5BF08EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (a3 && (a2 != 42 || a3 != 0xE100000000000000) && (sub_1D72646CC() & 1) == 0)
  {
    v9 = *(v3 + 72);
    v10 = *(v9 + 16);

    if (v10)
    {
      v11 = sub_1D5B69D90(a2, a3);
      if (v12)
      {
        v13 = v11;
        v73 = v5;

        v14 = *(*(v9 + 56) + (v13 << 6) + 16);
        v15 = *(a1 + 16);

        if (v15)
        {
          v16 = 0;
          v74 = a1 + 32;
          v17 = v14 + 56;
          a1 = MEMORY[0x1E69E7CC0];
          do
          {
            sub_1D5B68374(v74 + 40 * v16, &v78);
            __swift_project_boxed_opaque_existential_1(&v78, v79);
            v18 = sub_1D725AA4C();
            v20 = v19;
            if (*(v14 + 16) && (v21 = v18, sub_1D7264A0C(), sub_1D72621EC(), v22 = sub_1D7264A5C(), v23 = -1 << *(v14 + 32), v24 = v22 & ~v23, ((*(v17 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0))
            {
              v25 = ~v23;
              while (1)
              {
                v26 = (*(v14 + 48) + 16 * v24);
                v27 = *v26 == v21 && v26[1] == v20;
                if (v27 || (sub_1D72646CC() & 1) != 0)
                {
                  break;
                }

                v24 = (v24 + 1) & v25;
                if (((*(v17 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
                {
                  goto LABEL_9;
                }
              }

              sub_1D5B63F14(&v78, &v75);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v80 = a1;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1D5BD0BA0(0, *(a1 + 16) + 1, 1);
                a1 = v80;
              }

              v30 = *(a1 + 16);
              v29 = *(a1 + 24);
              if (v30 >= v29 >> 1)
              {
                sub_1D5BD0BA0((v29 > 1), v30 + 1, 1);
              }

              v31 = *(&v76 + 1);
              v32 = v77;
              v33 = __swift_mutable_project_boxed_opaque_existential_1(&v75, *(&v76 + 1));
              v34 = MEMORY[0x1EEE9AC00](v33, v33);
              v36 = &v73 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v37 + 16))(v36, v34);
              sub_1D5BD0BE4(v30, v36, &v80, v31, v32);
              __swift_destroy_boxed_opaque_existential_1(&v75);
              a1 = v80;
            }

            else
            {
LABEL_9:

              __swift_destroy_boxed_opaque_existential_1(&v78);
            }

            ++v16;
          }

          while (v16 != v15);
          goto LABEL_54;
        }

LABEL_53:
        a1 = MEMORY[0x1E69E7CC0];
LABEL_54:

        return a1;
      }
    }

    if ((*(v3 + *(type metadata accessor for GroupLayoutBindingContext() + 64)) & 1) == 0)
    {
      sub_1D5ED8048();
      swift_allocError();
      *v70 = a2;
      *(v70 + 8) = a3;
      v72 = v76;
      v71 = v77;
      *(v70 + 16) = v75;
      *(v70 + 32) = v72;
      *(v70 + 48) = v71;
      *(v70 + 64) = 3;
      swift_willThrow();
      return a1;
    }
  }

  if (*(v3 + *(type metadata accessor for GroupLayoutBindingContext() + 64)) == 1)
  {

    return a1;
  }

  v38 = sub_1D5BDB10C(*(v3 + 72));
  v39 = sub_1D5BF5B8C(v38);

  v41 = MEMORY[0x1E69E7CC0];
  *&v75 = MEMORY[0x1E69E7CC0];
  v42 = *(v39 + 16);
  if (!v42)
  {
LABEL_35:
    v73 = v5;

    v46 = sub_1D5B86020(v41);

    v47 = *(a1 + 16);
    if (v47)
    {
      v48 = 0;
      v74 = a1 + 32;
      v49 = v46 + 56;
      a1 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1D5B68374(v74 + 40 * v48, &v78);
        __swift_project_boxed_opaque_existential_1(&v78, v79);
        v50 = sub_1D725AA4C();
        v52 = v51;
        if (*(v46 + 16) && (v53 = v50, sub_1D7264A0C(), sub_1D72621EC(), v54 = sub_1D7264A5C(), v55 = -1 << *(v46 + 32), v56 = v54 & ~v55, ((*(v49 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) != 0))
        {
          v57 = ~v55;
          while (1)
          {
            v58 = (*(v46 + 48) + 16 * v56);
            v59 = *v58 == v53 && v58[1] == v52;
            if (v59 || (sub_1D72646CC() & 1) != 0)
            {
              break;
            }

            v56 = (v56 + 1) & v57;
            if (((*(v49 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          __swift_destroy_boxed_opaque_existential_1(&v78);
        }

        else
        {
LABEL_48:

          sub_1D5B63F14(&v78, &v75);
          v60 = swift_isUniquelyReferenced_nonNull_native();
          v80 = a1;
          if ((v60 & 1) == 0)
          {
            sub_1D5BD0BA0(0, *(a1 + 16) + 1, 1);
            a1 = v80;
          }

          v62 = *(a1 + 16);
          v61 = *(a1 + 24);
          if (v62 >= v61 >> 1)
          {
            sub_1D5BD0BA0((v61 > 1), v62 + 1, 1);
          }

          v63 = *(&v76 + 1);
          v64 = v77;
          v65 = __swift_mutable_project_boxed_opaque_existential_1(&v75, *(&v76 + 1));
          v66 = MEMORY[0x1EEE9AC00](v65, v65);
          v68 = &v73 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v69 + 16))(v68, v66);
          sub_1D5BD0BE4(v62, v68, &v80, v63, v64);
          __swift_destroy_boxed_opaque_existential_1(&v75);
          a1 = v80;
        }

        ++v48;
      }

      while (v48 != v47);
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  v43 = 0;
  while (v43 < *(v39 + 16))
  {
    v44 = v43 + 1;

    result = sub_1D5D55274(v45);
    v43 = v44;
    if (v42 == v44)
    {
      v41 = v75;
      goto LABEL_35;
    }
  }

  __break(1u);
  return result;
}

void sub_1D5BF0FE4()
{
  if (!qword_1EDF1ACD0)
  {
    type metadata accessor for FeedBannerAd();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1ACD0);
    }
  }
}

uint64_t sub_1D5BF1050(uint64_t a1)
{
  sub_1D5BDAC44(0, &qword_1EDF34B00, type metadata accessor for FeedBannerAd, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v23 - v4;
  v6 = type metadata accessor for FeedBannerAd();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v24 = &v23 - v13;
  v14 = *(a1 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  sub_1D5C17E04(0, v14, 0);
  v15 = v26;
  if (v14)
  {
    v16 = a1 + 32;
    v17 = (v7 + 56);
    while (1)
    {
      sub_1D5B68374(v16, v25);
      sub_1D5B49474(0, &qword_1EDF41FC0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v18 = v6;
      (*v17)(v5, 0, 1, v6);
      v19 = v24;
      sub_1D5BF5B24(v5, v24, type metadata accessor for FeedBannerAd);
      sub_1D5BF5B24(v19, v10, type metadata accessor for FeedBannerAd);
      v26 = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1D5C17E04(v20 > 1, v21 + 1, 1);
        v15 = v26;
      }

      *(v15 + 16) = v21 + 1;
      sub_1D5BF5B24(v10, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21, type metadata accessor for FeedBannerAd);
      v16 += 40;
      --v14;
      v6 = v18;
      if (!v14)
      {
        return v15;
      }
    }

    (*v17)(v5, 1, 1, v6);
    sub_1D7152588(v5, &qword_1EDF34B00, type metadata accessor for FeedBannerAd);
    return 0;
  }

  return v15;
}

uint64_t sub_1D5BF1388(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5BF13D0(uint64_t a1)
{
  result = sub_1D5BF1388(qword_1EDF33D50, _s2AdV5BoundVMa);
  *(a1 + 8) = result;
  return result;
}

void sub_1D5BF1428(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D5BF1490@<X0>(uint64_t *a1@<X8>)
{
  sub_1D62EBCE4(0, &qword_1EDF3A970, MEMORY[0x1E69B4338]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v8 - v4;
  memset(v8, 0, sizeof(v8));
  v9 = 1;
  sub_1D5BEDFF4();
  swift_allocObject();
  *a1 = sub_1D725996C();
  v6 = sub_1D7260C5C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1D5BF15B4();
  swift_allocObject();
  result = sub_1D725996C();
  a1[1] = result;
  return result;
}

void sub_1D5BF15B4()
{
  if (!qword_1EDF3C180)
  {
    sub_1D7260C5C();
    sub_1D5BEA96C(&qword_1EDF3A980, MEMORY[0x1E69B4338]);
    v0 = sub_1D725995C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C180);
    }
  }
}

uint64_t sub_1D5BF1648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1D7260DDC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t FeedBannerAdViewLayout.Attributes.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_1D7260C5C();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BF1428(0, &qword_1EDF19C88, sub_1D5BDD78C, &type metadata for FeedBannerAdViewLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v26 = v7;
  v23 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for FeedBannerAdViewLayout.Attributes(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BDD78C();
  v15 = v27;
  sub_1D7264B0C();
  if (v15)
  {
    v21 = a1;
  }

  else
  {
    v27 = a1;
    v16 = v23;
    v17 = v24;
    v18 = v25;
    type metadata accessor for CGRect(0);
    v30 = 0;
    sub_1D5BEA96C(&qword_1EDF1A740, type metadata accessor for CGRect);
    sub_1D726431C();
    v19 = v29;
    *v14 = v28;
    *(v14 + 1) = v19;
    LOBYTE(v28) = 1;
    sub_1D5BEA96C(&qword_1EDF3A978, MEMORY[0x1E69B4338]);
    sub_1D726431C();
    (*(v16 + 8))(v10, v26);
    (*(v17 + 32))(&v14[*(v11 + 20)], v6, v18);
    sub_1D5BF1A88(v14, v22);
    v21 = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

unint64_t sub_1D5BF1A34()
{
  result = qword_1EDF37278;
  if (!qword_1EDF37278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF37278);
  }

  return result;
}

uint64_t sub_1D5BF1A88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedBannerAdViewLayout.Attributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5BF1AEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BF1B4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BF1BAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5BF1C0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

unint64_t sub_1D5BF1C9C()
{
  result = qword_1EDF34F88;
  if (!qword_1EDF34F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34F88);
  }

  return result;
}

unint64_t sub_1D5BF1D44()
{
  result = qword_1EDF33BD8;
  if (!qword_1EDF33BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33BD8);
  }

  return result;
}

uint64_t sub_1D5BF1D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v134 = a3;
  v6 = sub_1D725895C();
  v127 = *(v6 - 8);
  v128 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v125 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GroupLayoutBindingContext();
  v132 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v130 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for GroupLayoutContext();
  v131 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133, v12);
  v129 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v114 - v16;
  v18 = *v3;
  v19 = *(v3 + 1);
  v20 = v3[16];
  v168 = &_s3GapVN;
  v122 = sub_1D5BF1D44();
  v169 = v122;
  v123 = v18;
  LOBYTE(v166) = v18;
  *(&v166 + 1) = v19;
  v167 = v20;
  v126 = a2;
  v21 = a2;
  v22 = a1;
  v23 = v17;
  sub_1D5BF03F4(v21, v17, type metadata accessor for GroupLayoutContext);
  v135 = v9;
  v24 = *(v22 + *(v9 + 56));
  v25 = *(v24 + 16);
  v124 = v19;
  v171 = v20;
  sub_1D5BEE8A0(v19, v20);
  if (!v25 || (v26 = sub_1D5BCF83C(0x70614764656546, 0xE700000000000000, 0, 0), (v27 & 1) == 0) || (v28 = *(*(v24 + 56) + 8 * v26), !*(v28 + 16)))
  {
    sub_1D5ED8048();
    swift_allocError();
    *v34 = 0x70614764656546;
    *(v34 + 8) = 0xE700000000000000;
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0;
    *(v34 + 40) = 1;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    swift_willThrow();
    v33 = v23;
    goto LABEL_7;
  }

  v30 = v136;
  v31 = sub_1D5BF08EC(v29, 0, 0);
  v32 = v23;
  if (v30)
  {

    v33 = v23;
LABEL_7:
    sub_1D5EF8F94(v33);
    return __swift_destroy_boxed_opaque_existential_1(&v166);
  }

  v36 = sub_1D5BF2BB0(v31);

  if (!v36)
  {
    goto LABEL_26;
  }

  if (!v36[2])
  {

LABEL_26:

    sub_1D5ED8048();
    swift_allocError();
    *v66 = 0x70614764656546;
LABEL_43:
    *(v66 + 8) = 0xE700000000000000;
    *(v66 + 16) = 0;
    *(v66 + 24) = 0;
    *(v66 + 32) = 0;
    *(v66 + 40) = 1;
    *(v66 + 48) = 0;
    *(v66 + 56) = 0;
    *(v66 + 64) = 0;
    swift_willThrow();
    v33 = v32;
    goto LABEL_7;
  }

  v37 = v36[2];
  v38 = v135;
  v39 = *(v22 + *(v135 + 68));
  v117 = *(v135 + 76);
  v118 = 0;
  v120 = *(v22 + v117);
  v40 = v120;
  v121 = v28;
  if (v120 >= v39)
  {
LABEL_19:
    v54 = *(v22 + *(v38 + 72));
    v55 = __OFSUB__(v54, v40);
    v56 = v54 - v40;
    if (v55)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v56 > 0)
    {
      v57 = v36;
      if (!v36[2] || (v58 = v36[5], v59 = v36[9], v60 = v36[10], , sub_1D5BF2DDC(v59, v60), !v58))
      {

        v65 = 0;
        v64 = 0;
        v63 = 0;
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = 0;
        goto LABEL_28;
      }

      v139 = v57;
      sub_1D5BF2D30(0, &v151);

      sub_1D5BF6680(v59, v60);
      v53 = v151;
      v61 = v152;
      v52 = v153;
      v51 = v154;
      v62 = v155;
      v50 = v156;
      v63 = v157;
      LOBYTE(v137) = v155;
      v64 = v139;
      if (!v152)
      {
        v65 = v137;
LABEL_28:
        v151 = v53;
        v152 = 0;
        v153 = v52;
        v154 = v51;
        LOBYTE(v155) = v65;
        HIBYTE(v155) = 0;
        *(&v155 + 5) = 0;
        *(&v155 + 1) = 0;
        v156 = v50;
        v157 = v63;
        v158 = v64;
        v67 = &v151;
LABEL_42:
        sub_1D69DDE48(v67, &qword_1EC88FA58, &qword_1EC88FA60, &qword_1EC88FA68, &type metadata for FeedGap);

        sub_1D69DDEA4(0, 0, 0, 0, 0, 0, 0);
        sub_1D5ED8048();
        swift_allocError();
        *v66 = 0x70614764656546;
        goto LABEL_43;
      }

LABEL_39:
      v116 = v63;

      v170 = v62;
      goto LABEL_49;
    }

    v119 = v32;
    v68 = v36[2];
    v69 = v36;
    result = swift_bridgeObjectRetain_n();
    *&v136 = v68;
    if (v68)
    {
      v70 = 0;
      v71 = v36 + 10;
      while (v70 < v69[2])
      {
        v73 = *(v71 - 1);
        v72 = *v71;
        v74 = *(v71 - 5);
        v75 = *(v71 - 4);

        sub_1D5BF2DDC(v73, v72);
        if (!v74)
        {
          goto LABEL_35;
        }

        if ((v75 & 0x1000) == 0)
        {

          v139 = v69;
          sub_1D5BF2D30(v70, &v151);

          sub_1D5BF6680(v73, v72);
          v53 = v151;
          v52 = v153;
          v51 = v154;
          v87 = v155;
          v50 = v156;
          v78 = v157;
          v159 = v155;
          v77 = v139;
          v115 = v152;
          if (v152)
          {
            v116 = v157;

            v170 = v87;
            goto LABEL_48;
          }

          v76 = v159;
          goto LABEL_36;
        }

        ++v70;

        result = sub_1D5BF6680(v73, v72);
        v71 += 7;
        if (v136 == v70)
        {
          goto LABEL_35;
        }
      }

      goto LABEL_57;
    }

LABEL_35:
    swift_bridgeObjectRelease_n();
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v159 = 0;
LABEL_36:
    v32 = v119;
    v151 = v53;
    v152 = 0;
    v153 = v52;
    v154 = v51;
    LOBYTE(v155) = v76;
    HIBYTE(v155) = 0;
    *(&v155 + 5) = 0;
    *(&v155 + 1) = 0;
    v156 = v50;
    v157 = v78;
    v158 = v77;
    sub_1D69DDE48(&v151, &qword_1EC88FA58, &qword_1EC88FA60, &qword_1EC88FA68, &type metadata for FeedGap);
    if (v69[2] && (v79 = v69[5], v80 = v69[9], v81 = v69[10], , sub_1D5BF2DDC(v80, v81), v79))
    {
      v137 = v69;
      sub_1D5BF2D30(0, &v139);

      sub_1D5BF6680(v80, v81);
      v53 = v139;
      v61 = v140;
      v52 = v141;
      v51 = v142;
      v62 = v143;
      v50 = v147;
      v63 = v148;
      v150 = v143;
      v82 = v137;
      if (v140)
      {
        goto LABEL_39;
      }

      v84 = v150;
    }

    else
    {

      v84 = 0;
      v82 = 0;
      v63 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
    }

    v139 = v53;
    v140 = 0;
    v141 = v52;
    v142 = v51;
    v143 = v84;
    v146 = 0;
    v145 = 0;
    v144 = 0;
    v147 = v50;
    v148 = v63;
    v149 = v82;
    v67 = &v139;
    goto LABEL_42;
  }

  v119 = v32;
  result = swift_bridgeObjectRetain_n();
  v41 = 0;
  *&v136 = v36;
  v42 = v36 + 10;
  while (1)
  {
    if (v41 >= *(v136 + 16))
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v44 = *(v42 - 1);
    v43 = *v42;
    v45 = *(v42 - 5);
    v46 = *(v42 - 4);

    sub_1D5BF2DDC(v44, v43);
    if (!v45)
    {
      goto LABEL_17;
    }

    if ((v46 & 0x1000) != 0)
    {
      break;
    }

    ++v41;

    result = sub_1D5BF6680(v44, v43);
    v42 += 7;
    if (v37 == v41)
    {
LABEL_17:
      swift_bridgeObjectRelease_n();
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
LABEL_18:
      v32 = v119;
      v151 = v53;
      v152 = 0;
      v153 = v52;
      v154 = v51;
      LOBYTE(v155) = v47;
      HIBYTE(v155) = 0;
      *(&v155 + 5) = 0;
      *(&v155 + 1) = 0;
      v156 = v50;
      v157 = v49;
      v158 = v48;
      result = sub_1D69DDE48(&v151, &qword_1EC88FA58, &qword_1EC88FA60, &qword_1EC88FA68, &type metadata for FeedGap);
      v38 = v135;
      v36 = v136;
      v40 = v120;
      goto LABEL_19;
    }
  }

  v85 = v136;

  v139 = v85;
  sub_1D5BF2D30(v41, &v151);

  sub_1D5BF6680(v44, v43);
  v53 = v151;
  v52 = v153;
  v51 = v154;
  v86 = v155;
  v50 = v156;
  v49 = v157;
  LOBYTE(v137) = v155;
  v48 = v139;
  v115 = v152;
  if (!v152)
  {
    v47 = v137;
    goto LABEL_18;
  }

  v116 = v157;

  v170 = v86;
LABEL_48:
  v32 = v119;
  v61 = v115;
LABEL_49:
  *&v160 = v53;
  *(&v160 + 1) = v61;
  v161 = v52;
  v162 = v51;
  v163 = v170 & 1;
  v164 = v50;
  v165 = v116;
  if ((v52 & 0x1000) != 0)
  {
    if (!__OFADD__(v120, 1))
    {
      *(v22 + v117) = &v120->Kind + 1;
      goto LABEL_52;
    }

LABEL_59:
    __break(1u);
  }

  else
  {
LABEL_52:
    MEMORY[0x1EEE9AC00](result, v83);
    v112 = &v160;
    v89 = sub_1D5BF5F6C(sub_1D5BF2E88, v111, v88);
    v151 = 0x70614764656546;
    v152 = 0xE700000000000000;
    v153 = 0;
    v154 = 0;
    sub_1D5BDACA8(&v151, v89);

    v136 = v160;
    v120 = v162;
    v121 = v161;
    LODWORD(v119) = v163;
    v117 = v165;
    v118 = v164;
    v90 = v130;
    sub_1D5BF03F4(v22, v130, type metadata accessor for GroupLayoutBindingContext);
    v91 = v129;
    sub_1D5BF03F4(v126, v129, type metadata accessor for GroupLayoutContext);
    v92 = v125;
    sub_1D725894C();
    v126 = sub_1D725893C();
    v116 = v93;
    (*(v127 + 8))(v92, v128);
    v154 = &_s3GapVN;
    v155 = v122;
    LOBYTE(v151) = v123;
    v94 = v124;
    v152 = v124;
    v95 = v171;
    LOBYTE(v153) = v171;
    type metadata accessor for GroupLayoutKey();
    v96 = swift_allocObject();
    sub_1D5BEE8A0(v94, v95);
    v139 = sub_1D7264C5C();
    v140 = v97;
    *&v160 = 95;
    *(&v160 + 1) = 0xE100000000000000;
    v137 = 45;
    v138 = 0xE100000000000000;
    v112 = sub_1D5BF4D9C();
    v113 = v112;
    v111[0] = MEMORY[0x1E69E6158];
    v111[1] = v112;
    v98 = sub_1D7263A6C();
    v100 = v99;

    *(v96 + 16) = v98;
    *(v96 + 24) = v100;
    v101 = (v96 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
    v102 = v116;
    *v101 = v126;
    v101[1] = v102;
    sub_1D5B68374(&v151, v96 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
    v103 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
    sub_1D5BDA89C(v90, v96 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
    (*(v132 + 56))(v96 + v103, 0, 1, v135);
    v104 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
    sub_1D5BDA89C(v91, v96 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
    (*(v131 + 56))(v96 + v104, 0, 1, v133);
    __swift_destroy_boxed_opaque_existential_1(&v151);
    v105 = _s3GapV5BoundVMa(0);
    v106 = v134;
    v134[3] = v105;
    v106[4] = sub_1D5C18558(&qword_1EDF33C88, _s3GapV5BoundVMa);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v106);
    sub_1D5B63F14(&v166, boxed_opaque_existential_1);
    result = sub_1D5BDA89C(v32, boxed_opaque_existential_1 + v105[5], type metadata accessor for GroupLayoutContext);
    v108 = boxed_opaque_existential_1 + v105[6];
    *v108 = v136;
    v109 = v120;
    *(v108 + 2) = v121;
    *(v108 + 3) = v109;
    v108[32] = v119;
    v110 = v117;
    *(v108 + 5) = v118;
    *(v108 + 6) = v110;
    *(boxed_opaque_existential_1 + v105[7]) = v96;
  }

  return result;
}