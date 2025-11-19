uint64_t sub_1D5E6F688()
{
  *(*v1 + 152) = v0;

  if (v0)
  {

    v2 = sub_1D5E6F890;
  }

  else
  {

    v2 = sub_1D5E6F80C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E6F80C()
{
  v3 = v0[14];
  sub_1D6985104(v0[8]);

  v1 = v0[1];

  return v1(v3);
}

uint64_t sub_1D5E6F890()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E6F8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D5E52E3C;

  return sub_1D5E6F9AC(a3, a4, a5);
}

uint64_t sub_1D5E6F9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = a3;
  v4[24] = v3;
  v4[21] = a1;
  v4[22] = a2;
  v5 = sub_1D725891C();
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  sub_1D5C2CA80(0, &qword_1EDF2CA60, sub_1D5E04DE8, &type metadata for FormatCodingRecipeOverridesStrategy, type metadata accessor for FormatCodingDefault);
  v4[28] = swift_task_alloc();
  type metadata accessor for FormatRecipeOverrides();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E6FB18, 0, 0);
}

uint64_t sub_1D5E6FB18()
{
  v1 = v0[24];
  v2 = v1[85];
  v3 = v1[86];
  __swift_project_boxed_opaque_existential_1(v1 + 82, v2);
  if (((*(v3 + 200))(v2, v3) & 1) == 0)
  {
    v50 = sub_1D605ACD0(MEMORY[0x1E69E7CC0]);
    goto LABEL_86;
  }

  v4 = v0[22];
  v5 = FormatContent.requirements.getter();
  v6 = Array<A>.recipes.getter(v5);

  v0[19] = v6;
  sub_1D5CEFE04(0, &unk_1EDF1B340, type metadata accessor for FormatRecipe, MEMORY[0x1E69E62F8]);
  sub_1D5CF35F8(&qword_1EDF1B338, &unk_1EDF1B340, type metadata accessor for FormatRecipe);
  v7 = sub_1D72623CC();

  v0[20] = MEMORY[0x1E69E7CC0];
  v123 = v7;
  v8 = v7 >> 62;
  v105 = v4;
  if (*(v4 + 48))
  {
    if (v8)
    {
      goto LABEL_63;
    }

    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_66;
    }

    goto LABEL_5;
  }

  v51 = *(v4 + 40);
  if (v8)
  {
    v52 = sub_1D7263BFC();
    if (!v52)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v52 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v52)
    {
      goto LABEL_66;
    }
  }

  v53 = 0;
  v104 = v0[24];
  v54 = *(v0[21] + 72);
  v121 = v7 & 0xC000000000000001;
  v118 = v7 & 0xFFFFFFFFFFFFFF8;
  v111 = (v0[26] + 8);
  v13 = MEMORY[0x1E69E7CC0];
  v119 = MEMORY[0x1E69E7CC8];
  v115 = v52;
  while (1)
  {
    if (v121)
    {
      v56 = MEMORY[0x1DA6FB460](v53, v123);
      v57 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      goto LABEL_48;
    }

    if (v53 >= *(v118 + 16))
    {
      goto LABEL_59;
    }

    v56 = *(v123 + 8 * v53 + 32);

    v57 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

LABEL_48:
    if (!*(v54 + 16))
    {
      goto LABEL_38;
    }

    v59 = *(v56 + 16);
    v58 = *(v56 + 24);

    v60 = sub_1D5B69D90(v59, v58);
    v62 = v61;

    if ((v62 & 1) == 0)
    {
      goto LABEL_38;
    }

    v63 = *(*(v54 + 56) + 8 * v60);
    v64 = [v63 fetchDate];
    if (!v64)
    {
      goto LABEL_37;
    }

    v65 = v64;
    sub_1D72588BC();

    sub_1D725887C();
    if (v51 < -v66)
    {
      (*v111)(v0[27], v0[25]);
LABEL_37:

      v52 = v115;
LABEL_38:

      MEMORY[0x1DA6F9CE0](v55);
      if (*((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();

      v13 = v0[20];
      goto LABEL_41;
    }

    v117 = v13;
    v67 = v0[30];
    v68 = v0[28];
    v110 = *(v56 + 16);
    v113 = *(v56 + 24);
    v69 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__overrides;
    swift_beginAccess();
    sub_1D5E9DB98(v56 + v69, v68, &qword_1EDF2CA60, sub_1D5E04DE8, &type metadata for FormatCodingRecipeOverridesStrategy, type metadata accessor for FormatCodingDefault);
    sub_1D5CEFF38(v68, v67, type metadata accessor for FormatRecipeOverrides);
    v70 = *(v104 + 152);

    v71 = [objc_msgSend(v70 configurationManager)];
    result = swift_unknownObjectRelease();
    if (!v71)
    {
      goto LABEL_98;
    }

    v72 = v0[30];
    v107 = v0[25];
    v109 = v0[27];
    v73 = *(v104 + 136);
    swift_getObjectType();
    v74 = sub_1D6323068(v72, v71, v73, v63);
    swift_unknownObjectRelease();
    sub_1D5EA08F4(v72, type metadata accessor for FormatRecipeOverrides);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D6D76CF0(v74, v110, v113, isUniquelyReferenced_nonNull_native);

    (*v111)(v109, v107);
    v52 = v115;
    v13 = v117;
LABEL_41:
    ++v53;
    if (v57 == v52)
    {
      goto LABEL_67;
    }
  }

  __break(1u);
  while (2)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    v9 = sub_1D7263BFC();
    if (!v9)
    {
LABEL_66:
      v13 = MEMORY[0x1E69E7CC0];
      v119 = MEMORY[0x1E69E7CC8];
LABEL_67:
      v0[32] = v119;
      v0[33] = v13;

      if (v13 >> 62)
      {
        v76 = sub_1D7263BFC();
      }

      else
      {
        v76 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      type metadata accessor for FormatServiceOptions();
      if (v76)
      {
        sub_1D5C384A0();
        v77 = swift_allocObject();
        *(v77 + 16) = xmmword_1D7270C10;
        v78 = v119[2];
        v79 = MEMORY[0x1E69E6530];
        v80 = MEMORY[0x1E69E65A8];
        *(v77 + 56) = MEMORY[0x1E69E6530];
        *(v77 + 64) = v80;
        *(v77 + 32) = v78;
        if (v13 >> 62)
        {
          v103 = v77;
          v81 = sub_1D7263BFC();
          v77 = v103;
        }

        else
        {
          v81 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v82 = v0[24];
        *(v77 + 96) = v79;
        *(v77 + 104) = v80;
        *(v77 + 72) = v81;
        sub_1D7262EDC();
        sub_1D725C30C();

        sub_1D5B68374(v82 + 536, (v0 + 2));
        v83 = v0[5];
        v84 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v83);
        v85 = MEMORY[0x1E69E7CC0];
        if (v81)
        {
          v122 = v84;
          v124 = v83;
          v126 = MEMORY[0x1E69E7CC0];
          result = sub_1D5BFC364(0, v81 & ~(v81 >> 63), 0);
          if (v81 < 0)
          {
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
            return result;
          }

          v86 = 0;
          v85 = v126;
          v87 = v13 & 0xC000000000000001;
          v88 = v13;
          do
          {
            if (v87)
            {
              v89 = MEMORY[0x1DA6FB460](v86, v13);
            }

            else
            {
              v89 = *(v13 + 8 * v86 + 32);
            }

            swift_beginAccess();
            v90 = *(v89 + 16);
            v91 = *(v89 + 24);

            v93 = *(v126 + 16);
            v92 = *(v126 + 24);
            if (v93 >= v92 >> 1)
            {
              sub_1D5BFC364((v92 > 1), v93 + 1, 1);
            }

            ++v86;
            *(v126 + 16) = v93 + 1;
            v94 = v126 + 16 * v93;
            *(v94 + 32) = v90;
            *(v94 + 40) = v91;
            v13 = v88;
          }

          while (v81 != v86);
          v84 = v122;
          v83 = v124;
        }

        v0[34] = v85;
        v95 = *(v105 + 40);
        v96 = *(v105 + 48);
        v97 = objc_opt_self();
        if (v96 == 1)
        {
          if (v95 == 0.0)
          {
            v98 = [v97 defaultCachePolicy];
          }

          else
          {
            v98 = [v97 cachedOnlyCachePolicy];
          }
        }

        else
        {
          v98 = [v97 cachePolicyWithSoftMaxAge_];
        }

        v101 = v98;
        v0[35] = v101;
        v125 = (*(v84 + 16) + **(v84 + 16));
        v102 = swift_task_alloc();
        v0[36] = v102;
        *v102 = v0;
        v102[1] = sub_1D5E70908;

        return v125(v85, v101, v83, v84);
      }

      v99 = v0[24];
      sub_1D7262EDC();
      sub_1D725C30C();

      v50 = sub_1D5E9DDB4(v119, v99);

LABEL_86:

      v100 = v0[1];

      return v100(v50);
    }

LABEL_5:
    v10 = 0;
    v11 = v0[24];
    v12 = *(v0[21] + 72);
    v13 = MEMORY[0x1E69E7CC0];
    v119 = MEMORY[0x1E69E7CC8];
    v120 = v12;
    v106 = v9;
    v108 = v11;
LABEL_9:
    if ((v123 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1DA6FB460](v10, v123);
      v17 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        continue;
      }
    }

    else
    {
      if (v10 >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

      v16 = *(v123 + 8 * v10 + 32);

      v17 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        continue;
      }
    }

    break;
  }

  if (!*(v12 + 16) || (v19 = *(v16 + 16), v18 = *(v16 + 24), , v20 = sub_1D5B69D90(v19, v18), v22 = v21, v12 = v120, , (v22 & 1) == 0))
  {

    MEMORY[0x1DA6F9CE0](v45);
    if (*((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
      v12 = v120;
    }

    sub_1D726278C();

    v13 = v0[20];
    goto LABEL_8;
  }

  v116 = v13;
  v23 = v0[31];
  v24 = v0[28];
  v25 = *(*(v120 + 56) + 8 * v20);
  v26 = *(v16 + 24);
  v114 = *(v16 + 16);
  v27 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__overrides;
  swift_beginAccess();
  sub_1D5E9DB98(v16 + v27, v24, &qword_1EDF2CA60, sub_1D5E04DE8, &type metadata for FormatCodingRecipeOverridesStrategy, type metadata accessor for FormatCodingDefault);
  sub_1D5CEFF38(v24, v23, type metadata accessor for FormatRecipeOverrides);
  v28 = *(v11 + 152);
  v29 = v25;

  v30 = [objc_msgSend(v28 configurationManager)];
  result = swift_unknownObjectRelease();
  if (!v30)
  {
    goto LABEL_97;
  }

  v32 = v0[31];
  v33 = *(v11 + 136);
  swift_getObjectType();
  v112 = v29;
  v34 = sub_1D6323068(v32, v30, v33, v29);
  swift_unknownObjectRelease();
  sub_1D5EA08F4(v32, type metadata accessor for FormatRecipeOverrides);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v26;
  v38 = sub_1D5B69D90(v114, v26);
  v39 = v119[2];
  v40 = (v37 & 1) == 0;
  v41 = v39 + v40;
  if (__OFADD__(v39, v40))
  {
    goto LABEL_61;
  }

  v42 = v37;
  if (v119[3] >= v41)
  {
    if (v35)
    {
      v11 = v108;
      if ((v37 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_6;
    }

    sub_1D6D7D928();
    v11 = v108;
    if (v42)
    {
      goto LABEL_6;
    }

LABEL_28:
    v119[(v38 >> 6) + 8] |= 1 << v38;
    v46 = (v119[6] + 16 * v38);
    *v46 = v114;
    v46[1] = v36;
    *(v119[7] + 8 * v38) = v34;

    v47 = v119[2];
    v48 = __OFADD__(v47, 1);
    v49 = v47 + 1;
    if (v48)
    {
      goto LABEL_62;
    }

    v119[2] = v49;
LABEL_7:
    v13 = v116;
    v9 = v106;
    v12 = v120;
LABEL_8:
    ++v10;
    if (v17 == v9)
    {
      goto LABEL_67;
    }

    goto LABEL_9;
  }

  sub_1D6D66324(v41, v35);
  v43 = sub_1D5B69D90(v114, v36);
  if ((v42 & 1) == (v44 & 1))
  {
    v38 = v43;
    v11 = v108;
    if ((v42 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_6:

    v14 = v119[7];
    v15 = *(v14 + 8 * v38);
    *(v14 + 8 * v38) = v34;

    goto LABEL_7;
  }

  return sub_1D726493C();
}

uint64_t sub_1D5E70908(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 296) = a1;
  *(v4 + 304) = v1;

  v5 = *(v3 + 280);
  if (v1)
  {

    v6 = sub_1D5E71290;
  }

  else
  {

    v6 = sub_1D5E70A88;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D5E70A88()
{
  v87 = v0;
  v1 = v0[37];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if (v1 >> 62)
  {
    goto LABEL_25;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v75 = v0;
  while (v2)
  {
    v3 = 0;
    v77 = v1 & 0xFFFFFFFFFFFFFF8;
    v81 = v1 & 0xC000000000000001;
    v76 = v0[37] + 32;
    v4 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v81)
      {
        v7 = MEMORY[0x1DA6FB460](v3, v75[37]);
      }

      else
      {
        if (v3 >= *(v77 + 16))
        {
          goto LABEL_22;
        }

        v7 = *(v76 + 8 * v3);
      }

      v1 = v7;
      v0 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = [v7 identifier];
      v9 = sub_1D726207C();
      v11 = v10;

      v12 = v1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = v4;
      v1 = v4;
      v14 = sub_1D5B69D90(v9, v11);
      v16 = v4[2];
      v17 = (v15 & 1) == 0;
      v18 = __OFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        goto LABEL_23;
      }

      v20 = v15;
      if (v4[3] < v19)
      {
        sub_1D6D66324(v19, isUniquelyReferenced_nonNull_native);
        v1 = v86;
        v14 = sub_1D5B69D90(v9, v11);
        if ((v20 & 1) != (v21 & 1))
        {
LABEL_70:

          return sub_1D726493C();
        }

LABEL_15:
        if (v20)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v1 = &v86;
      v25 = v14;
      sub_1D6D7D928();
      v14 = v25;
      if (v20)
      {
LABEL_4:
        v1 = v14;

        v4 = v86;
        v5 = *(v86 + 56);
        v6 = *(v5 + 8 * v1);
        *(v5 + 8 * v1) = v12;

        goto LABEL_5;
      }

LABEL_16:
      v4 = v86;
      *(v86 + 8 * (v14 >> 6) + 64) |= 1 << v14;
      v22 = (v4[6] + 16 * v14);
      *v22 = v9;
      v22[1] = v11;
      *(v4[7] + 8 * v14) = v12;

      v23 = v4[2];
      v18 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v18)
      {
        goto LABEL_24;
      }

      v4[2] = v24;
LABEL_5:
      ++v3;
      if (v0 == v2)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v2 = sub_1D7263BFC();
    v75 = v0;
  }

  v4 = MEMORY[0x1E69E7CC8];
LABEL_27:
  v26 = v75[33];

  v86 = MEMORY[0x1E69E7CC0];
  v27 = v75[33];
  v28 = v27 & 0xFFFFFFFFFFFFFF8;
  if (!(v26 >> 62))
  {
    v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_29;
    }

LABEL_48:
    v34 = MEMORY[0x1E69E7CC0];
    goto LABEL_49;
  }

  v29 = sub_1D7263BFC();
  v27 = v75[33];
  if (!v29)
  {
    goto LABEL_48;
  }

LABEL_29:
  v30 = 0;
  v31 = v75[24];
  v32 = v27 & 0xC000000000000001;
  v33 = v27 + 32;
  v34 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v82 = v34;
  v35 = v30;
  while (v32)
  {
    v34 = MEMORY[0x1DA6FB460](v35, v75[33]);
    v30 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_78;
    }

LABEL_35:
    if (v4[2])
    {
      v36 = sub_1D5B69D90(*(v34 + 16), *(v34 + 24));
      if (v37)
      {
        v38 = v75[28];
        v78 = v75[29];
        v83 = *(v4[7] + 8 * v36);
        v39 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__overrides;
        swift_beginAccess();
        sub_1D5E9DB98(v34 + v39, v38, &qword_1EDF2CA60, sub_1D5E04DE8, &type metadata for FormatCodingRecipeOverridesStrategy, type metadata accessor for FormatCodingDefault);
        sub_1D5CEFF38(v38, v78, type metadata accessor for FormatRecipeOverrides);
        v40 = *(v31 + 152);
        v84 = v83;
        v41 = [objc_msgSend(v40 configurationManager)];
        result = swift_unknownObjectRelease();
        if (!v41)
        {
          __break(1u);
          return result;
        }

        v43 = v75[29];
        v79 = *(v31 + 136);
        swift_getObjectType();
        sub_1D6323068(v43, v41, v79, v84);
        swift_unknownObjectRelease();

        v44 = sub_1D5EA08F4(v43, type metadata accessor for FormatRecipeOverrides);
        MEMORY[0x1DA6F9CE0](v44);
        if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v34 = v86;
        if (v30 == v29)
        {
          goto LABEL_49;
        }

        goto LABEL_30;
      }
    }

    ++v35;
    if (v30 == v29)
    {
      v34 = v82;
LABEL_49:

      if (v34 >> 62)
      {
        goto LABEL_84;
      }

      v45 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_51;
    }
  }

  if (v35 >= *(v28 + 16))
  {
    goto LABEL_79;
  }

  v34 = *(v33 + 8 * v35);

  v30 = v35 + 1;
  if (!__OFADD__(v35, 1))
  {
    goto LABEL_35;
  }

LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  v45 = sub_1D7263BFC();
LABEL_51:
  v46 = v75[32];

  if (v45)
  {
    v47 = 0;
    v80 = v34 & 0xFFFFFFFFFFFFFF8;
    v85 = v34 & 0xC000000000000001;
    while (1)
    {
      if (v85)
      {
        v51 = MEMORY[0x1DA6FB460](v47, v34);
      }

      else
      {
        if (v47 >= *(v80 + 16))
        {
          goto LABEL_81;
        }

        v51 = *(v34 + 8 * v47 + 32);
      }

      v52 = v51;
      v53 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        goto LABEL_80;
      }

      v54 = v34;
      v55 = [v51 identifier];
      v34 = sub_1D726207C();
      v57 = v56;

      v58 = v52;
      v59 = swift_isUniquelyReferenced_nonNull_native();
      v86 = v46;
      v60 = sub_1D5B69D90(v34, v57);
      v62 = v46[2];
      v63 = (v61 & 1) == 0;
      v18 = __OFADD__(v62, v63);
      v64 = v62 + v63;
      if (v18)
      {
        goto LABEL_82;
      }

      v65 = v61;
      if (v46[3] < v64)
      {
        break;
      }

      if (v59)
      {
        goto LABEL_64;
      }

      v70 = v60;
      sub_1D6D7D928();
      v60 = v70;
      if ((v65 & 1) == 0)
      {
LABEL_65:
        v46 = v86;
        *(v86 + 8 * (v60 >> 6) + 64) |= 1 << v60;
        v67 = (v46[6] + 16 * v60);
        *v67 = v34;
        v67[1] = v57;
        *(v46[7] + 8 * v60) = v58;

        v68 = v46[2];
        v18 = __OFADD__(v68, 1);
        v69 = v68 + 1;
        if (v18)
        {
          goto LABEL_83;
        }

        v46[2] = v69;
        goto LABEL_54;
      }

LABEL_53:
      v48 = v60;

      v46 = v86;
      v49 = *(v86 + 56);
      v50 = *(v49 + 8 * v48);
      *(v49 + 8 * v48) = v58;

LABEL_54:
      ++v47;
      v34 = v54;
      if (v53 == v45)
      {
        v71 = v75;
        goto LABEL_75;
      }
    }

    sub_1D6D66324(v64, v59);
    v60 = sub_1D5B69D90(v34, v57);
    if ((v65 & 1) != (v66 & 1))
    {
      goto LABEL_70;
    }

LABEL_64:
    if ((v65 & 1) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_53;
  }

  v71 = v75;
LABEL_75:
  v72 = v71[24];

  v73 = sub_1D5E9DDB4(v46, v72);

  v74 = v71[1];

  return v74(v73);
}

uint64_t sub_1D5E71290()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E71338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D5E52E3C;

  return sub_1D5E713F0(a3, a4, a5);
}

uint64_t sub_1D5E713F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5E71414, 0, 0);
}

char *sub_1D5E71414()
{
  v1 = v0[11];
  v2 = v1[85];
  v3 = v1[86];
  __swift_project_boxed_opaque_existential_1(v1 + 82, v2);
  if (((*(v3 + 200))(v2, v3) & 1) == 0)
  {
    v19 = sub_1D605AD18(MEMORY[0x1E69E7CC0]);
    goto LABEL_36;
  }

  v4 = FormatContent.requirements.getter();
  v5 = Array<A>.recipeLists.getter(v4);

  v0[7] = v5;
  sub_1D5B5A7A0(0, &qword_1EDF1B2C0, &type metadata for FormatRecipeList, MEMORY[0x1E69E62F8]);
  sub_1D5CF35A0(&qword_1EDF1B2B8, &qword_1EDF1B2C0, &type metadata for FormatRecipeList);
  v6 = sub_1D72623CC();

  v7 = FormatContent.requirements.getter();
  v8 = Array<A>.recipes.getter(v7);

  if (v8 >> 62)
  {
    v9 = sub_1D7263BFC();
    v61 = v6;
    if (v9)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v61 = v6;
    if (v9)
    {
LABEL_4:
      v66 = MEMORY[0x1E69E7CC0];
      result = sub_1D5BFC364(0, v9 & ~(v9 >> 63), 0);
      if (v9 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = 0;
      v12 = v66;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1DA6FB460](v11, v8);
        }

        else
        {
          v13 = *(v8 + 8 * v11 + 32);
        }

        v14 = *(v13 + 16);
        v15 = *(v13 + 24);

        v17 = *(v66 + 16);
        v16 = *(v66 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1D5BFC364((v16 > 1), v17 + 1, 1);
        }

        ++v11;
        *(v66 + 16) = v17 + 1;
        v18 = v66 + 16 * v17;
        *(v18 + 32) = v14;
        *(v18 + 40) = v15;
      }

      while (v9 != v11);

      v6 = v61;
      goto LABEL_16;
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v62 = sub_1D5B86020(v12);
  v0[12] = v62;

  v20 = MEMORY[0x1E69E7CC0];
  v19 = sub_1D605AD18(MEMORY[0x1E69E7CC0]);
  v21 = *(v6 + 16);
  v65 = v0;
  if (v21)
  {
    v22 = *(v0[8] + 80);
    v23 = (v6 + 40);
    do
    {
      v29 = *(v23 - 1);
      v30 = *v23;
      v31 = *(v22 + 16);

      if (v31 && (, sub_1D5B69D90(v29, v30), v33 = v32, , (v33 & 1) != 0))
      {
        v24 = v65[10];
        v25 = v65[9];

        v27 = sub_1D5E77D10(v26, v25, v24, v62);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1D6D76EC0(v27, v29, v30, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1D698C88C(0, *(v20 + 2) + 1, 1, v20);
        }

        v35 = *(v20 + 2);
        v34 = *(v20 + 3);
        if (v35 >= v34 >> 1)
        {
          v20 = sub_1D698C88C((v34 > 1), v35 + 1, 1, v20);
        }

        *(v20 + 2) = v35 + 1;
        v36 = &v20[16 * v35];
        *(v36 + 4) = v29;
        *(v36 + 5) = v30;
      }

      v23 += 2;
      --v21;
    }

    while (v21);
  }

  v0 = v65;
  v65[13] = v19;
  v65[14] = v19;
  v37 = v65[10];

  type metadata accessor for FormatServiceOptions();
  sub_1D5C384A0();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1D7279970;
  v39 = *(v19 + 16);
  v40 = MEMORY[0x1E69E6530];
  v41 = MEMORY[0x1E69E65A8];
  *(v38 + 56) = MEMORY[0x1E69E6530];
  *(v38 + 64) = v41;
  *(v38 + 32) = v39;
  v42 = *(v20 + 2);
  *(v38 + 96) = v40;
  *(v38 + 104) = v41;
  *(v38 + 72) = v42;
  v44 = *v37;
  v43 = v37[1];
  *(v38 + 136) = MEMORY[0x1E69E6158];
  *(v38 + 144) = sub_1D5B7E2C0();
  *(v38 + 112) = v44;
  *(v38 + 120) = v43;

  sub_1D7262EDC();
  sub_1D725C30C();

  v45 = *(v20 + 2);
  if (v45)
  {
    sub_1D5B68374(v65[11] + 536, (v65 + 2));
    v63 = v65[6];
    v64 = v65[5];
    __swift_project_boxed_opaque_existential_1(v65 + 2, v64);
    v67 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v45, 0);
    v46 = 0;
    v47 = *(v67 + 16);
    v48 = 16 * v47;
    do
    {
      v49 = *&v20[v46 + 32];
      v50 = *&v20[v46 + 40];
      v51 = *(v67 + 24);

      if (v47 >= v51 >> 1)
      {
        sub_1D5BFC364((v51 > 1), v47 + 1, 1);
      }

      v65[15] = v67;
      *(v67 + 16) = v47 + 1;
      v52 = v67 + v48 + v46;
      *(v52 + 32) = v49;
      *(v52 + 40) = v50;
      v46 += 16;
      ++v47;
      --v45;
    }

    while (v45);
    v53 = v65[9];

    v54 = *(v53 + 40);
    LODWORD(v53) = *(v53 + 48);
    v55 = objc_opt_self();
    if (v53 == 1)
    {
      if (v54 == 0.0)
      {
        v56 = [v55 defaultCachePolicy];
      }

      else
      {
        v56 = [v55 cachedOnlyCachePolicy];
      }
    }

    else
    {
      v56 = [v55 cachePolicyWithSoftMaxAge_];
    }

    v58 = v56;
    v65[16] = v58;
    v60 = (*(v63 + 24) + **(v63 + 24));
    v59 = swift_task_alloc();
    v65[17] = v59;
    *v59 = v65;
    v59[1] = sub_1D5E71B5C;

    return v60(v67, v58, v64, v63);
  }

LABEL_36:
  v57 = v0[1];

  return v57(v19);
}

uint64_t sub_1D5E71B5C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v5 = *(v3 + 128);
  if (v1)
  {

    v6 = sub_1D5E71EDC;
  }

  else
  {

    v6 = sub_1D5E71CE0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1D5E71CE0()
{
  v1 = v0[18];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v2 = 0;
  v4 = v1 + 64;
  v3 = *(v1 + 64);
  v24 = v1;
  v25 = v0;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v3;
  v8 = (63 - v6) >> 6;
  v9 = v0[13];
  v10 = v0[14];
  if ((v5 & v3) != 0)
  {
    while (1)
    {
      v28 = v9;
      v11 = v2;
LABEL_9:
      v26 = v25[12];
      v13 = v25[9];
      v12 = v25[10];
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = (v11 << 9) | (8 * v14);
      v16 = *(*(v24 + 56) + v15);
      v27 = *(*(v24 + 48) + v15);

      v17 = [v27 identifier];
      v18 = sub_1D726207C();
      v20 = v19;

      v21 = sub_1D5E77D10(v16, v13, v12, v26);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1D6D76EC0(v21, v18, v20, isUniquelyReferenced_nonNull_native);

      v9 = v28;
      v10 = v28;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v2;
    if (v7)
    {
      v28 = v9;
      v2 = v11;
      goto LABEL_9;
    }
  }

  v23 = v25[1];

  v23(v10);
}

uint64_t sub_1D5E71EDC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E71F40(uint64_t a1, void *a2)
{
  v3 = FormatContent.requirements.getter();
  v4 = Array<A>.webArchives.getter(v3);

  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v34 = a2;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1D699761C(0, v5, 0);
    v7 = v35;
    v8 = (v4 + 56);
    do
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;
      v14 = *(v35 + 16);
      v13 = *(v35 + 24);

      if (v14 >= v13 >> 1)
      {
        sub_1D699761C((v13 > 1), v14 + 1, 1);
      }

      v8 += 4;
      *(v35 + 16) = v14 + 1;
      v15 = (v35 + 32 * v14);
      v15[4] = v9;
      v15[5] = v10;
      v15[6] = v11;
      v15[7] = v12;
      --v5;
    }

    while (v5);

    v6 = MEMORY[0x1E69E7CC0];
    a2 = v34;
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for FormatServiceOptions();
  sub_1D5C384A0();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D7270C10;
  v17 = *(v7 + 16);
  v18 = MEMORY[0x1E69E65A8];
  *(v16 + 56) = MEMORY[0x1E69E6530];
  *(v16 + 64) = v18;
  *(v16 + 32) = v17;
  v19 = *a2;
  v20 = a2[1];
  *(v16 + 96) = MEMORY[0x1E69E6158];
  *(v16 + 104) = sub_1D5B7E2C0();
  *(v16 + 72) = v19;
  *(v16 + 80) = v20;

  sub_1D7262EDC();
  sub_1D725C30C();

  MEMORY[0x1EEE9AC00](v21, v22);
  sub_1D5E9C7CC(0, &unk_1EDF1B970, type metadata accessor for WebArchive);
  sub_1D725BDCC();
  v23 = sub_1D725B92C();
  sub_1D5E9C7CC(0, &unk_1EDF1B8F8, type metadata accessor for FormatWebArchiveResource.Resolved);
  sub_1D725BA8C();

  if (v17)
  {
    sub_1D5BFC364(0, v17, 0);
    v24 = v6;
    v25 = (v7 + 40);
    do
    {
      v27 = *(v25 - 1);
      v26 = *v25;
      v29 = *(v24 + 16);
      v28 = *(v24 + 24);

      if (v29 >= v28 >> 1)
      {
        sub_1D5BFC364((v28 > 1), v29 + 1, 1);
      }

      *(v24 + 16) = v29 + 1;
      v30 = v24 + 16 * v29;
      *(v30 + 32) = v27;
      *(v30 + 40) = v26;
      v25 += 4;
      --v17;
    }

    while (v17);
  }

  v31 = MEMORY[0x1E69E6158];
  sub_1D5B5A7A0(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D5CF35A0(&qword_1EDF3C838, &qword_1EDF43BA0, v31);
  v32 = sub_1D725BA1C();

  return v32;
}

uint64_t sub_1D5E72324(uint64_t a1, uint64_t *a2)
{
  v3 = FormatContent.requirements.getter();
  v4 = Array<A>.resources.getter(v3);

  v5 = *(v4 + 16);
  if (v5)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v5, 0);
    v6 = v24;
    v7 = (v4 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v11 = *(v24 + 16);
      v10 = *(v24 + 24);

      if (v11 >= v10 >> 1)
      {
        sub_1D5BFC364((v10 > 1), v11 + 1, 1);
      }

      *(v24 + 16) = v11 + 1;
      v12 = v24 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      v7 += 2;
      --v5;
    }

    while (v5);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for FormatServiceOptions();
  sub_1D5C384A0();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7270C10;
  v14 = *(v6 + 16);
  v15 = MEMORY[0x1E69E65A8];
  *(v13 + 56) = MEMORY[0x1E69E6530];
  *(v13 + 64) = v15;
  *(v13 + 32) = v14;
  v16 = *a2;
  v17 = a2[1];
  v18 = MEMORY[0x1E69E6158];
  *(v13 + 96) = MEMORY[0x1E69E6158];
  *(v13 + 104) = sub_1D5B7E2C0();
  *(v13 + 72) = v16;
  *(v13 + 80) = v17;

  sub_1D7262EDC();
  sub_1D725C30C();

  MEMORY[0x1EEE9AC00](v19, v20);
  sub_1D5C3C32C();
  sub_1D725BDCC();
  v21 = sub_1D725B92C();
  sub_1D5E9C7CC(0, &qword_1EDF1B920, type metadata accessor for FormatContentResource.Resolved);
  sub_1D725BA8C();

  sub_1D5B5A7A0(0, &qword_1EDF43BA0, v18, MEMORY[0x1E69E62F8]);
  sub_1D5CF35A0(&qword_1EDF3C838, &qword_1EDF43BA0, v18);
  v22 = sub_1D725BA1C();

  return v22;
}

uint64_t sub_1D5E72628(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + *(type metadata accessor for FormatContent(0) + 24));
  v4 = v3[1];
  if (v4 && *(a2 + 16) && (sub_1D5B69D90(*v3, v4), (v5 & 1) != 0))
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5E7268C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[17] = a5;
  v6[18] = v5;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  v7 = sub_1D725895C();
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();
  v8 = sub_1D72607EC();
  v6[22] = v8;
  v9 = *(v8 - 8);
  v6[23] = v9;
  v6[24] = *(v9 + 64);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v10 = sub_1D72608EC();
  v6[27] = v10;
  v11 = *(v10 - 8);
  v6[28] = v11;
  v6[29] = *(v11 + 64);
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v12 = MEMORY[0x1E69E6720];
  sub_1D5CEFE04(0, &qword_1EDF3AA10, MEMORY[0x1E69B4090], MEMORY[0x1E69E6720]);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  sub_1D5CEFE04(0, &unk_1EDF3A9E8, MEMORY[0x1E69B40D8], v12);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], v12);
  v6[36] = swift_task_alloc();
  v13 = sub_1D72608BC();
  v6[37] = v13;
  v6[38] = *(v13 - 8);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E729AC, 0, 0);
}

uint64_t sub_1D5E729AC()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 112);
  v5 = type metadata accessor for FormatContentPool();
  sub_1D5CF23F8(v4 + *(v5 + 108), v3, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v26 = *(v0 + 320);
    v27 = *(v0 + 296);
    v28 = *(v0 + 304);
    v29 = *(v0 + 104);
    v30 = *(v28 + 32);
    v30(v26, *(v0 + 288), v27);
    v30(v29, v26, v27);
    (*(v28 + 56))(v29, 0, 1, v27);
    goto LABEL_11;
  }

  v6 = *(v0 + 120);
  sub_1D5CF274C(*(v0 + 288), &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D72596FC();
  sub_1D72596DC();
  sub_1D72595EC();
  sub_1D72595DC();

  sub_1D72596CC();

  v7 = *(v0 + 368);
  v8 = type metadata accessor for FormatServiceOptions();
  *(v0 + 328) = v8;
  if ((*(v6 + *(v8 + 56)) & 1) == 0 && !v7)
  {
    v9 = *(v0 + 304);
    v10 = *(v0 + 128);
    v82 = *(v0 + 104);
    v84 = *(v0 + 296);
    sub_1D5C384A0();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D7274590;
    v12 = *v10;
    v13 = v10[1];
    v14 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    v15 = sub_1D5B7E2C0();
    *(v11 + 64) = v15;
    *(v11 + 32) = v12;
    *(v11 + 40) = v13;
    v16 = type metadata accessor for FormatContent(0);
    v17 = (v10 + v16[6]);
    v18 = v17[1];
    *(v0 + 16) = *v17;
    *(v0 + 24) = v18;
    sub_1D5B5A7A0(0, &qword_1EDF43BE0, v14, MEMORY[0x1E69E6720]);

    v19 = sub_1D72620FC();
    *(v11 + 96) = v14;
    *(v11 + 104) = v15;
    *(v11 + 72) = v19;
    *(v11 + 80) = v20;
    v21 = *(v10 + v16[14]);
    sub_1D5B5A7A0(0, &qword_1EDF43BA0, v14, MEMORY[0x1E69E62F8]);
    v23 = v22;
    *(v11 + 136) = v22;
    v24 = sub_1D5CF35A0(&qword_1EDF1AF20, &qword_1EDF43BA0, v14);
    *(v11 + 144) = v24;
    *(v11 + 112) = v21;
    v25 = *(v10 + v16[15]);
    *(v11 + 176) = v23;
    *(v11 + 184) = v24;
    *(v11 + 152) = v25;

    sub_1D7262EDC();
    sub_1D725C30C();

    (*(v9 + 56))(v82, 1, 1, v84);
LABEL_11:

    v55 = *(v0 + 8);

    return v55();
  }

  v31 = *(v0 + 272);
  v32 = *(v0 + 280);
  v33 = *(v0 + 264);
  v34 = *(v0 + 216);
  v35 = *(v0 + 224);
  v36 = *(v0 + 120);
  sub_1D5E9727C(*(v0 + 128), *(v0 + 136), v32);
  sub_1D5E974A4(v36, v33);
  sub_1D5CF23F8(v32, v31, &unk_1EDF3A9E8, MEMORY[0x1E69B40D8]);
  if ((*(v35 + 48))(v31, 1, v34) == 1)
  {
    v37 = *(v0 + 272);
    v38 = *(v0 + 280);
    v39 = MEMORY[0x1E69E6720];
    sub_1D5CF274C(*(v0 + 264), &qword_1EDF3AA10, MEMORY[0x1E69B4090], MEMORY[0x1E69E6720], sub_1D5CEFE04);
    v40 = MEMORY[0x1E69B40D8];
    sub_1D5CF274C(v38, &unk_1EDF3A9E8, MEMORY[0x1E69B40D8], v39, sub_1D5CEFE04);
    v41 = v37;
    v42 = &unk_1EDF3A9E8;
    v43 = v40;
    v44 = v39;
LABEL_10:
    sub_1D5CF274C(v41, v42, v43, v44, sub_1D5CEFE04);
    (*(*(v0 + 304) + 56))(*(v0 + 104), 1, 1, *(v0 + 296));
    goto LABEL_11;
  }

  v45 = *(v0 + 264);
  v46 = *(v0 + 256);
  v47 = *(v0 + 176);
  v48 = *(v0 + 184);
  v49 = *(*(v0 + 224) + 32);
  v49(*(v0 + 248), *(v0 + 272), *(v0 + 216));
  sub_1D5CF23F8(v45, v46, &qword_1EDF3AA10, MEMORY[0x1E69B4090]);
  if ((*(v48 + 48))(v46, 1, v47) == 1)
  {
    v50 = *(v0 + 280);
    v52 = *(v0 + 256);
    v51 = *(v0 + 264);
    (*(*(v0 + 224) + 8))(*(v0 + 248), *(v0 + 216));
    v53 = MEMORY[0x1E69B4090];
    v54 = MEMORY[0x1E69E6720];
    sub_1D5CF274C(v51, &qword_1EDF3AA10, MEMORY[0x1E69B4090], MEMORY[0x1E69E6720], sub_1D5CEFE04);
    sub_1D5CF274C(v50, &unk_1EDF3A9E8, MEMORY[0x1E69B40D8], v54, sub_1D5CEFE04);
    v41 = v52;
    v42 = &qword_1EDF3AA10;
    v43 = v53;
    v44 = v54;
    goto LABEL_10;
  }

  v75 = *(v0 + 240);
  v57 = *(v0 + 224);
  v73 = *(v0 + 248);
  v74 = *(v0 + 216);
  v58 = *(v0 + 208);
  v85 = *(v0 + 200);
  v59 = *(v0 + 184);
  v61 = *(v0 + 168);
  v60 = *(v0 + 176);
  v79 = v49;
  v62 = *(v0 + 160);
  v71 = *(v0 + 152);
  v72 = v60;
  v63 = *(v0 + 144);
  v76 = *(v0 + 192);
  v77 = *(v59 + 32);
  v77(v58, *(v0 + 256), v60);
  v83 = v63[75];
  v78 = v63[76];
  __swift_project_boxed_opaque_existential_1(v63 + 72, v83);
  sub_1D725894C();
  v64 = sub_1D725893C();
  v80 = v65;
  v81 = v64;
  *(v0 + 336) = v65;
  (*(v62 + 8))(v61, v71);
  (*(v59 + 16))(v85, v58, v60);
  (*(v57 + 16))(v75, v73, v74);
  v66 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v67 = (v76 + *(v57 + 80) + v66) & ~*(v57 + 80);
  v68 = swift_allocObject();
  *(v0 + 344) = v68;
  v77(v68 + v66, v85, v72);
  v79(v68 + v67, v75, v74);
  v86 = (*(v78 + 8) + **(v78 + 8));
  v69 = swift_task_alloc();
  *(v0 + 352) = v69;
  *v69 = v0;
  v69[1] = sub_1D5E732B0;
  v70 = *(v0 + 312);

  return v86(v70, v81, v80, sub_1D5E9D944, v68, v83, v78);
}

uint64_t sub_1D5E732B0()
{
  *(*v1 + 360) = v0;

  if (v0)
  {

    v2 = sub_1D5E737F8;
  }

  else
  {

    v2 = sub_1D5E73414;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E73414()
{
  v1 = v0[16];
  v2 = sub_1D726085C();
  sub_1D5C384A0();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7274590;
  v4 = sub_1D72608DC();
  v6 = v5;
  v7 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1D5B7E2C0();
  *(v3 + 64) = v8;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v9 = *v1;
  v10 = v1[1];
  *(v3 + 96) = v7;
  *(v3 + 104) = v8;
  *(v3 + 72) = v9;
  *(v3 + 80) = v10;
  v11 = (v1 + *(type metadata accessor for FormatContent(0) + 24));
  v12 = (v2 & 1) == 0;
  if (v2)
  {
    v13 = 10;
  }

  else
  {
    v13 = 8;
  }

  v14 = *v11;
  v15 = v11[1];
  v16 = 9;
  if (!v12)
  {
    v16 = 11;
  }

  v0[v13] = v14;
  v0[v16] = v15;
  sub_1D5B5A7A0(0, &qword_1EDF43BE0, v7, MEMORY[0x1E69E6720]);

  v17 = sub_1D72620FC();
  v18 = v0[38];
  v34 = v0[37];
  v35 = v0[39];
  v31 = v0[33];
  v32 = v0[35];
  v19 = v0[31];
  v20 = v0[28];
  v29 = v0[26];
  v30 = v0[27];
  v22 = v0[22];
  v21 = v0[23];
  v33 = v0[13];
  *(v3 + 136) = v7;
  *(v3 + 144) = v8;
  *(v3 + 112) = v17;
  *(v3 + 120) = v23;
  v24 = sub_1D72608CC();
  sub_1D5B5A7A0(0, &qword_1EDF43BA0, v7, MEMORY[0x1E69E62F8]);
  *(v3 + 176) = v25;
  *(v3 + 184) = sub_1D5CF35A0(&qword_1EDF1AF20, &qword_1EDF43BA0, v7);
  *(v3 + 152) = v24;
  sub_1D7262EDC();
  sub_1D725C30C();

  (*(v21 + 8))(v29, v22);
  (*(v20 + 8))(v19, v30);
  v26 = MEMORY[0x1E69E6720];
  sub_1D5CF274C(v31, &unk_1EDF3AA10, MEMORY[0x1E69B4090], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5CF274C(v32, &unk_1EDF3A9E8, MEMORY[0x1E69B40D8], v26, sub_1D5CEFE04);
  (*(v18 + 32))(v33, v35, v34);
  (*(v18 + 56))(v33, 0, 1, v34);

  v27 = v0[1];

  return v27();
}

uint64_t sub_1D5E737F8()
{
  v23 = v0[45];
  v31 = v0[38];
  v32 = v0[37];
  v1 = v0[31];
  v26 = v0[28];
  v27 = v0[27];
  v28 = v0[33];
  v2 = v0[23];
  v24 = v0[22];
  v25 = v0[26];
  v3 = v0[16];
  v29 = v0[13];
  v30 = v0[35];
  sub_1D5C384A0();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7279960;
  v5 = sub_1D72608DC();
  v7 = v6;
  v8 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D5B7E2C0();
  *(v4 + 64) = v9;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v10 = *v3;
  v11 = v3[1];
  *(v4 + 96) = v8;
  *(v4 + 104) = v9;
  *(v4 + 72) = v10;
  *(v4 + 80) = v11;
  v12 = (v3 + *(type metadata accessor for FormatContent(0) + 24));
  v13 = v12[1];
  v0[4] = *v12;
  v0[5] = v13;
  sub_1D5B5A7A0(0, &qword_1EDF43BE0, v8, MEMORY[0x1E69E6720]);

  v14 = sub_1D72620FC();
  *(v4 + 136) = v8;
  *(v4 + 144) = v9;
  *(v4 + 112) = v14;
  *(v4 + 120) = v15;
  v16 = sub_1D72608CC();
  sub_1D5B5A7A0(0, &qword_1EDF43BA0, v8, MEMORY[0x1E69E62F8]);
  *(v4 + 176) = v17;
  *(v4 + 184) = sub_1D5CF35A0(&qword_1EDF1AF20, &qword_1EDF43BA0, v8);
  v0[6] = 0;
  *(v4 + 152) = v16;
  v0[7] = 0xE000000000000000;
  v0[12] = v23;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  v18 = v0[6];
  v19 = v0[7];
  *(v4 + 216) = v8;
  *(v4 + 224) = v9;
  *(v4 + 192) = v18;
  *(v4 + 200) = v19;
  sub_1D7262EDC();
  sub_1D725C30C();

  (*(v2 + 8))(v25, v24);
  (*(v26 + 8))(v1, v27);
  v20 = MEMORY[0x1E69E6720];
  sub_1D5CF274C(v28, &unk_1EDF3AA10, MEMORY[0x1E69B4090], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5CF274C(v30, &unk_1EDF3A9E8, MEMORY[0x1E69B40D8], v20, sub_1D5CEFE04);
  (*(v31 + 56))(v29, 1, 1, v32);

  v21 = v0[1];

  return v21();
}

void *sub_1D5E73BE0(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + *(type metadata accessor for FormatContent(0) + 28));
  v4 = v3[1];
  if (!v4)
  {
    return 0;
  }

  if (!*(a2 + 16))
  {
    return 0;
  }

  v5 = sub_1D5B69D90(*v3, v4);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(a2 + 56) + 8 * v5);
  v8 = v7;
  return v7;
}

void *sub_1D5E73C48(uint64_t a1, unint64_t a2)
{
  v3 = (a1 + *(type metadata accessor for FormatContent(0) + 32));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    if (a2 >> 62)
    {
      goto LABEL_20;
    }

    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      while (1)
      {
        v7 = 0;
        v17 = a2 & 0xFFFFFFFFFFFFFF8;
        while ((a2 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1DA6FB460](v7, a2);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_17:
            __break(1u);
LABEL_18:

            return v8;
          }

LABEL_8:
          v10 = [v8 identifier];
          v11 = sub_1D726207C();
          v13 = v12;

          if (v11 == v5 && v4 == v13)
          {
            goto LABEL_18;
          }

          v15 = sub_1D72646CC();

          if (v15)
          {
            return v8;
          }

          swift_unknownObjectRelease();
          ++v7;
          if (v9 == v6)
          {
            return 0;
          }
        }

        if (v7 < *(v17 + 16))
        {
          break;
        }

        __break(1u);
LABEL_20:
        v6 = sub_1D7263BFC();
        if (!v6)
        {
          return 0;
        }
      }

      v8 = *(a2 + 8 * v7 + 32);
      swift_unknownObjectRetain();
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }
  }

  return 0;
}

void *sub_1D5E73DC8(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + *(type metadata accessor for FormatContent(0) + 40));
  v4 = v3[1];
  if (!v4)
  {
    return 0;
  }

  if (!*(a2 + 16))
  {
    return 0;
  }

  v5 = sub_1D5B69D90(*v3, v4);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(a2 + 56) + 8 * v5);
  v8 = v7;
  return v7;
}

uint64_t sub_1D5E73E30@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for FormatService.ThemePackage(0) + 24));
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5E73E7C(uint64_t a1)
{
  v2 = v1;
  sub_1D5CEFE04(0, &qword_1EDF330B0, type metadata accessor for FormatService.ThemePackage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v57 - v6;
  v68 = type metadata accessor for FormatService.ThemePackage(0);
  MEMORY[0x1EEE9AC00](v68, v8);
  v59 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v58 = &v57 - v13;
  v60 = MEMORY[0x1E69E7CC8];
  v61 = v12;
  v69 = MEMORY[0x1E69E7CC8];
  v14 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a1 + 64);
  v18 = (v15 + 63) >> 6;
  v63 = (v12 + 48);
  v64 = (v12 + 56);
  v66 = a1;

  v20 = 0;
  v65 = v7;
  while (1)
  {
    v21 = v20;
    if (!v17)
    {
      break;
    }

LABEL_9:
    v22 = __clz(__rbit64(v17)) | (v20 << 6);
    v23 = *(v66 + 56);
    v24 = (*(v66 + 48) + 16 * v22);
    v25 = v24[1];
    v62 = *v24;
    v26 = *(v23 + 8 * v22);
    v27 = qword_1EDF3CA50;
    v67 = v25;

    if (v27 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDF3CA58);
    MEMORY[0x1EEE9AC00](v29, v30);
    *(&v57 - 2) = v31;

    v32 = v2;
    sub_1D62ECCD8(sub_1D5E9D924, (&v57 - 4), v26);
    sub_1D5C2AF10(&qword_1EDF43A50, 255, MEMORY[0x1E69D6B38]);
    v33 = sub_1D72626AC();

    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = v65;
      sub_1D5CEFE68(v33 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * (v34 - 1), v65, type metadata accessor for FormatService.ThemePackage);
      v36 = 0;
    }

    else
    {
      v36 = 1;
      v35 = v65;
    }

    v17 &= v17 - 1;

    v37 = v36;
    v38 = v68;
    (*v64)(v35, v37, 1, v68);

    v39 = (*v63)(v35, 1, v38);
    v2 = v32;
    if (v39 == 1)
    {

      result = sub_1D5CF274C(v35, &qword_1EDF330B0, type metadata accessor for FormatService.ThemePackage, MEMORY[0x1E69E6720], sub_1D5CEFE04);
    }

    else
    {
      v40 = v58;
      sub_1D5CEFF38(v35, v58, type metadata accessor for FormatService.ThemePackage);
      sub_1D5CEFF38(v40, v59, type metadata accessor for FormatService.ThemePackage);
      v41 = v60[2];
      v42 = v67;
      if (v60[3] <= v41)
      {
        sub_1D6D66690(v41 + 1, 1);
      }

      v43 = v69;
      sub_1D7264A0C();
      sub_1D72621EC();
      result = sub_1D7264A5C();
      v44 = v43 + 64;
      v60 = v43;
      v45 = -1 << *(v43 + 32);
      v46 = result & ~v45;
      v47 = v46 >> 6;
      if (((-1 << v46) & ~*(v43 + 64 + 8 * (v46 >> 6))) == 0)
      {
        v49 = 0;
        v50 = (63 - v45) >> 6;
        while (++v47 != v50 || (v49 & 1) == 0)
        {
          v51 = v47 == v50;
          if (v47 == v50)
          {
            v47 = 0;
          }

          v49 |= v51;
          v52 = *(v44 + 8 * v47);
          if (v52 != -1)
          {
            v48 = __clz(__rbit64(~v52)) + (v47 << 6);
            goto LABEL_28;
          }
        }

        goto LABEL_31;
      }

      v48 = __clz(__rbit64((-1 << v46) & ~*(v43 + 64 + 8 * (v46 >> 6)))) | v46 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
      *(v44 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      v53 = v59;
      v54 = v60;
      v55 = (v60[6] + 16 * v48);
      v56 = v61;
      *v55 = v62;
      v55[1] = v42;
      result = sub_1D5CEFF38(v53, v54[7] + *(v56 + 72) * v48, type metadata accessor for FormatService.ThemePackage);
      ++v54[2];
    }
  }

  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v18)
    {

      return v60;
    }

    v17 = *(v14 + 8 * v20);
    ++v21;
    if (v17)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D5E74460(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v116 = &v86 - v5;
  v114 = sub_1D72585BC();
  v6 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v7);
  v98 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1D7257C7C();
  v113 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v9);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WebArchive();
  v109 = *(v12 - 8);
  v110 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CEFE04(0, qword_1EDF25A60, type metadata accessor for FormatWebArchiveResource.Resolved, v2);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v86 - v18;
  v20 = type metadata accessor for FormatWebArchiveResource.Resolved();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v91 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v97 = &v86 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v90 = &v86 - v29;
  sub_1D5E9B2C4(0, &qword_1EDF1B728, type metadata accessor for WebArchive);
  v112 = v30;
  MEMORY[0x1EEE9AC00](v30, v31);
  v92 = (&v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v33, v34);
  v115 = &v86 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v106 = &v86 - v38;
  v40 = a1 + 64;
  v39 = *(a1 + 64);
  v41 = 1 << *(a1 + 32);
  v93 = MEMORY[0x1E69E7CC8];
  v117 = MEMORY[0x1E69E7CC8];
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  else
  {
    v42 = -1;
  }

  v43 = v42 & v39;
  v44 = (v41 + 63) >> 6;
  v104 = "web archives for %{public}@";
  v103 = (v6 + 48);
  v96 = (v6 + 32);
  v95 = (v6 + 16);
  v94 = (v6 + 8);
  v102 = (v113 + 8);
  v101 = (v21 + 56);
  v89 = v21;
  v100 = (v21 + 48);
  v113 = a1;

  v46 = 0;
  v99 = a1 + 64;
  v105 = v44;
  v107 = v20;
  v108 = v19;
  while (1)
  {
    v47 = v46;
    if (!v43)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v48 = v11;
      v46 = v47;
LABEL_11:
      v49 = __clz(__rbit64(v43)) | (v46 << 6);
      v50 = v112;
      v51 = (*(v113 + 48) + 16 * v49);
      v53 = *v51;
      v52 = v51[1];
      v54 = v106;
      sub_1D5CEFE68(*(v113 + 56) + *(v109 + 72) * v49, &v106[*(v112 + 48)], type metadata accessor for WebArchive);
      *v54 = v53;
      v54[1] = v52;
      v55 = v115;
      sub_1D5E9DAC8(v54, v115, &qword_1EDF1B728, type metadata accessor for WebArchive);
      v56 = (v55 + *(v50 + 48));
      v57 = *v56;
      v58 = v56[1];
      sub_1D5CEFE68(v56, v15, type metadata accessor for WebArchive);

      v11 = v48;
      sub_1D7257C6C();
      sub_1D7257C2C();
      v59 = sub_1D725841C();
      MEMORY[0x1DA6EF280](v59);

      sub_1D7257C5C();
      v60 = v116;
      sub_1D7257BDC();
      if ((*v103)(v60, 1, v114) == 1)
      {

        sub_1D5EA08F4(v15, type metadata accessor for WebArchive);
        (*v102)(v48, v111);
        sub_1D5CF274C(v116, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
        v61 = 1;
        v63 = v107;
        v62 = v108;
      }

      else
      {
        v64 = v98;
        v65 = v114;
        (*v96)(v98, v116, v114);
        v66 = v97;
        *v97 = v57;
        *(v66 + 1) = v58;
        v63 = v107;
        (*v95)(&v66[*(v107 + 20)], v64, v65);
        sub_1D725849C();
        sub_1D5EA08F4(v15, type metadata accessor for WebArchive);
        (*v94)(v64, v65);
        (*v102)(v11, v111);
        v67 = v66;
        v62 = v108;
        sub_1D5CEFF38(v67, v108, type metadata accessor for FormatWebArchiveResource.Resolved);
        v61 = 0;
      }

      v43 &= v43 - 1;
      (*v101)(v62, v61, 1, v63);
      v68 = (*v100)(v62, 1, v63);
      v44 = v105;
      if (v68 != 1)
      {
        break;
      }

      sub_1D5E9DB3C(v115, &qword_1EDF1B728, type metadata accessor for WebArchive);
      result = sub_1D5CF274C(v62, qword_1EDF25A60, type metadata accessor for FormatWebArchiveResource.Resolved, MEMORY[0x1E69E6720], sub_1D5CEFE04);
      v47 = v46;
      v40 = v99;
      if (!v43)
      {
LABEL_7:
        while (1)
        {
          v46 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            break;
          }

          if (v46 >= v44)
          {

            return v93;
          }

          v43 = *(v40 + 8 * v46);
          ++v47;
          if (v43)
          {
            v48 = v11;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_32;
      }
    }

    v69 = v90;
    sub_1D5CEFF38(v62, v90, type metadata accessor for FormatWebArchiveResource.Resolved);
    sub_1D5E9DAC8(v115, v92, &qword_1EDF1B728, type metadata accessor for WebArchive);
    sub_1D5CEFF38(v69, v91, type metadata accessor for FormatWebArchiveResource.Resolved);
    v70 = v93[2];
    if (v93[3] <= v70)
    {
      sub_1D6D66FFC(v70 + 1, 1);
    }

    v71 = v117;
    v72 = *v92;
    v88 = v92[1];
    sub_1D7264A0C();
    v87 = v72;
    sub_1D72621EC();
    result = sub_1D7264A5C();
    v73 = v71 + 64;
    v93 = v71;
    v74 = -1 << *(v71 + 32);
    v75 = result & ~v74;
    v76 = v75 >> 6;
    if (((-1 << v75) & ~*(v71 + 64 + 8 * (v75 >> 6))) == 0)
    {
      break;
    }

    v77 = __clz(__rbit64((-1 << v75) & ~*(v71 + 64 + 8 * (v75 >> 6)))) | v75 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    v82 = *(v112 + 48);
    *(v73 + ((v77 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v77;
    v83 = v93;
    v84 = (v93[6] + 16 * v77);
    v85 = v88;
    *v84 = v87;
    v84[1] = v85;
    sub_1D5CEFF38(v91, v83[7] + *(v89 + 72) * v77, type metadata accessor for FormatWebArchiveResource.Resolved);
    ++v83[2];
    result = sub_1D5EA08F4(v92 + v82, type metadata accessor for WebArchive);
    v40 = v99;
  }

  v78 = 0;
  v79 = (63 - v74) >> 6;
  while (++v76 != v79 || (v78 & 1) == 0)
  {
    v80 = v76 == v79;
    if (v76 == v79)
    {
      v76 = 0;
    }

    v78 |= v80;
    v81 = *(v73 + 8 * v76);
    if (v81 != -1)
    {
      v77 = __clz(__rbit64(~v81)) + (v76 << 6);
      goto LABEL_29;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D5E74FD8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v81 = &v66 - v5;
  v84 = sub_1D72585BC();
  v6 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84 - 8, v7);
  v76 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CEFE04(0, qword_1EDF29AF0, type metadata accessor for FormatContentResource.Resolved, v2);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v66 - v11;
  v13 = type metadata accessor for FormatContentResource.Resolved();
  MEMORY[0x1EEE9AC00](v13, v14);
  v69 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v74 = (&v66 - v18);
  MEMORY[0x1EEE9AC00](v19, v20);
  v68 = &v66 - v22;
  v24 = a1 + 64;
  v23 = *(a1 + 64);
  v25 = 1 << *(a1 + 32);
  v70 = MEMORY[0x1E69E7CC8];
  v89 = MEMORY[0x1E69E7CC8];
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & v23;
  v28 = (v25 + 63) >> 6;
  v80 = (v6 + 48);
  v72 = (v6 + 32);
  v29 = (v21 + 56);
  v67 = v21;
  v79 = (v21 + 48);
  v82 = a1;

  v31 = 0;
  v78 = v28;
  v75 = v12;
  v73 = a1 + 64;
  v71 = v29;
  while (2)
  {
    v32 = v31;
    if (!v27)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v31 = v32;
LABEL_10:
      v33 = __clz(__rbit64(v27)) | (v31 << 6);
      v34 = *(v82 + 56);
      v35 = (*(v82 + 48) + 16 * v33);
      v36 = v35[1];
      v77 = *v35;
      v37 = *(v34 + 8 * v33);
      v86 = v36;

      v85 = v37;
      v38 = [v85 resourceID];
      v39 = sub_1D726207C();
      v41 = v40;

      v87 = 0x7373612D7377656ELL;
      v88 = 0xEA00000000007465;
      MEMORY[0x1DA6F9910](3092282, 0xE300000000000000);
      v83 = v39;
      MEMORY[0x1DA6F9910](v39, v41);
      v42 = v81;
      sub_1D725855C();

      if ((*v80)(v42, 1, v84) == 1)
      {

        sub_1D5CF274C(v42, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
        v43 = 1;
      }

      else
      {
        v44 = v42;
        v45 = *v72;
        v46 = v76;
        v47 = v84;
        (*v72)(v76, v44, v84);
        v48 = v74;
        *v74 = v83;
        v48[1] = v41;
        v49 = v47;
        v12 = v75;
        v45(v48 + *(v13 + 20), v46, v49);
        v29 = v71;
        v50 = v48;
        v24 = v73;
        sub_1D5CEFF38(v50, v12, type metadata accessor for FormatContentResource.Resolved);
        v43 = 0;
      }

      v27 &= v27 - 1;
      (*v29)(v12, v43, 1, v13);

      if ((*v79)(v12, 1, v13) != 1)
      {
        break;
      }

      result = sub_1D5CF274C(v12, qword_1EDF29AF0, type metadata accessor for FormatContentResource.Resolved, MEMORY[0x1E69E6720], sub_1D5CEFE04);
      v32 = v31;
      v28 = v78;
      if (!v27)
      {
LABEL_7:
        while (1)
        {
          v31 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v31 >= v28)
          {

            return v70;
          }

          v27 = *(v24 + 8 * v31);
          ++v32;
          if (v27)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_32;
      }
    }

    v51 = v86;
    v52 = v68;
    sub_1D5CEFF38(v12, v68, type metadata accessor for FormatContentResource.Resolved);
    sub_1D5CEFF38(v52, v69, type metadata accessor for FormatContentResource.Resolved);
    v53 = v70[2];
    if (v70[3] <= v53)
    {
      sub_1D6D67050(v53 + 1, 1);
    }

    v54 = v89;
    sub_1D7264A0C();
    sub_1D72621EC();
    result = sub_1D7264A5C();
    v55 = v54 + 64;
    v70 = v54;
    v56 = -1 << *(v54 + 32);
    v57 = result & ~v56;
    v58 = v57 >> 6;
    if (((-1 << v57) & ~*(v54 + 64 + 8 * (v57 >> 6))) != 0)
    {
      v59 = __clz(__rbit64((-1 << v57) & ~*(v54 + 64 + 8 * (v57 >> 6)))) | v57 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
      *(v55 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
      v64 = v70;
      v65 = (v70[6] + 16 * v59);
      *v65 = v77;
      v65[1] = v51;
      result = sub_1D5CEFF38(v69, v64[7] + *(v67 + 72) * v59, type metadata accessor for FormatContentResource.Resolved);
      ++v64[2];
      v28 = v78;
      continue;
    }

    break;
  }

  v60 = 0;
  v61 = (63 - v56) >> 6;
  while (++v58 != v61 || (v60 & 1) == 0)
  {
    v62 = v58 == v61;
    if (v58 == v61)
    {
      v58 = 0;
    }

    v60 |= v62;
    v63 = *(v55 + 8 * v58);
    if (v63 != -1)
    {
      v59 = __clz(__rbit64(~v63)) + (v58 << 6);
      goto LABEL_29;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D5E75754@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  type metadata accessor for FormatServiceOptions();
  sub_1D5C384A0();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7279970;
  v8 = *a2;
  v7 = a2[1];
  v9 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1D5B7E2C0();
  *(v6 + 64) = v10;
  *(v6 + 32) = v8;
  *(v6 + 40) = v7;
  v11 = *(a1 + *(type metadata accessor for FormatService.ThemePackage(0) + 24));
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  *(v6 + 96) = v9;
  *(v6 + 104) = v10;
  *(v6 + 72) = v12;
  *(v6 + 80) = v13;

  v14 = sub_1D5E7587C();
  *(v6 + 136) = v9;
  *(v6 + 144) = v10;
  *(v6 + 112) = v14;
  *(v6 + 120) = v15;
  sub_1D7262EDC();
  sub_1D725C30C();

  *a3 = v11;
}

uint64_t sub_1D5E7587C()
{
  sub_1D5CEFE04(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v32 - v3;
  v5 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1D72585BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AB28(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CEFE68(v0, v17, sub_1D5C2AB28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5E9D830(0, &unk_1EC88B470, type metadata accessor for FormatPackage, type metadata accessor for FormatMetadata);
      sub_1D5EA08F4(&v17[*(v19 + 48)], type metadata accessor for FormatMetadata);
      sub_1D5EA08F4(v17, type metadata accessor for FormatPackage);
      return 0x6E693D657079747BLL;
    }

    else
    {
      return 0x69623D657079747BLL;
    }
  }

  else
  {
    sub_1D5E9D830(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
    v22 = *(v21 + 48);
    (*(v10 + 32))(v13, v17, v9);
    sub_1D5CEFF38(&v17[v22], v8, type metadata accessor for FormatMetadata);
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1D7263D4C();

    v32 = 0xD000000000000013;
    v33 = 0x80000001D73BEEB0;
    sub_1D5CF23F8(v8 + *(v5 + 28), v4, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
    v23 = sub_1D725BD1C();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v4, 1, v23) == 1)
    {
      v25 = 0x3E656E6F6E3CLL;
      sub_1D5CF274C(v4, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      v26 = 0xE600000000000000;
    }

    else
    {
      v25 = sub_1D725BC9C();
      v26 = v27;
      (*(v24 + 8))(v4, v23);
    }

    MEMORY[0x1DA6F9910](v25, v26);

    MEMORY[0x1DA6F9910](0x3D6469202CLL, 0xE500000000000000);
    if (v8[1])
    {
      v28 = *v8;
      v29 = v8[1];
    }

    else
    {
      v28 = 0x3E656E6F6E3CLL;
      v29 = 0xE600000000000000;
    }

    MEMORY[0x1DA6F9910](v28, v29);

    MEMORY[0x1DA6F9910](0x3D6C7275202CLL, 0xE600000000000000);
    v30 = sub_1D72583DC();
    MEMORY[0x1DA6F9910](v30);

    MEMORY[0x1DA6F9910](125, 0xE100000000000000);
    v31 = v32;
    sub_1D5EA08F4(v8, type metadata accessor for FormatMetadata);
    (*(v10 + 8))(v13, v9);
    return v31;
  }
}

uint64_t sub_1D5E75DDC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X8>)
{
  v90 = a6;
  v93 = a7;
  v87 = a8;
  sub_1D5C2AB28(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E9B290(0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v86 - v24;
  sub_1D5CEFE68(a2, &v86 - v24, sub_1D5C2AB28);
  *&v25[*(v18 + 56)] = a3;
  v94 = v25;
  sub_1D5CEFE68(v25, v21, sub_1D5E9B290);
  v26 = *&v21[*(v18 + 56)];
  sub_1D5CEFF38(v21, v16, sub_1D5C2AB28);
  v27 = *(type metadata accessor for FormatServiceOptions() + 52);
  v92 = a4;
  v89 = *&a4[v27];
  sub_1D5C384A0();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D7274590;
  v29 = *a5;
  v30 = a5[1];
  v31 = MEMORY[0x1E69E6158];
  *(v28 + 56) = MEMORY[0x1E69E6158];
  v32 = sub_1D5B7E2C0();
  *(v28 + 32) = v29;
  *(v28 + 40) = v30;
  v33 = *a1;
  v34 = a1[1];
  *(v28 + 96) = v31;
  *(v28 + 104) = v32;
  *(v28 + 64) = v32;
  *(v28 + 72) = v33;
  v86 = v33;
  *(v28 + 80) = v34;
  v35 = *(v26 + 16);
  v36 = *(v26 + 24);
  *(v28 + 136) = v31;
  *(v28 + 144) = v32;
  *(v28 + 112) = v35;
  *(v28 + 120) = v36;

  v88 = v34;

  v95 = v16;
  v37 = sub_1D5E7587C();
  *(v28 + 176) = v31;
  *(v28 + 184) = v32;
  v38 = v90;
  *(v28 + 152) = v37;
  *(v28 + 160) = v39;
  sub_1D7262EDC();
  sub_1D725C30C();

  v40 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__direction;
  swift_beginAccess();
  LODWORD(v40) = *(v26 + v40);
  v41 = type metadata accessor for FormatContentSubgroup();
  v42 = *(a1 + v41[9]);
  v97 = v38;
  if (v40 != 4)
  {
    v63 = v91;
    v64 = sub_1D7196134(sub_1D5E9D8AC, v96, v42);
    MEMORY[0x1EEE9AC00](v64, v65);
    *(&v86 - 4) = v26;
    *(&v86 - 3) = v38;
    v67 = v92;
    v66 = v93;
    *(&v86 - 2) = v92;
    *(&v86 - 1) = v66;
    v69 = sub_1D5FBBD68(sub_1D5E9D8C8, (&v86 - 6), v68);
    if (!v63)
    {
      v71 = v69;
      MEMORY[0x1EEE9AC00](v69, v70);
      *(&v86 - 4) = v26;
      *(&v86 - 3) = v38;
      *(&v86 - 2) = v67;
      *(&v86 - 1) = v66;
      v92 = sub_1D5FBBF90(sub_1D5E9D8E8, (&v86 - 6), v72);
      v89 = v71;
      v74 = *(a1 + v41[6]);
      MEMORY[0x1EEE9AC00](v92, v75);
      *(&v86 - 2) = v38;

      v91 = sub_1D7195F4C(sub_1D5E9D908, (&v86 - 4), v74);
      v76 = v41[7];
      v93 = a1;
      v77 = *(a1 + v76);
      MEMORY[0x1EEE9AC00](v91, v78);
      *(&v86 - 2) = v79;

      v80 = sub_1D7195E7C(sub_1D5E9B334, (&v86 - 4), v74);
      v60 = sub_1D5BA8750(v80, v77);

      v98 = v89;
      sub_1D5D1E934(v64);
      sub_1D5B5A7A0(0, &qword_1EDF1B2A0, &type metadata for FormatContentSlot.Resolved, MEMORY[0x1E69E62F8]);
      sub_1D5CF35A0(&unk_1EDF1B290, &qword_1EDF1B2A0, &type metadata for FormatContentSlot.Resolved);
      v61 = sub_1D72623CC();
      sub_1D5EA08F4(v95, sub_1D5C2AB28);
      sub_1D5EA08F4(v94, sub_1D5E9B290);

      v62 = v26 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
      goto LABEL_7;
    }

LABEL_5:

    sub_1D5EA08F4(v95, sub_1D5C2AB28);
    return sub_1D5EA08F4(v94, sub_1D5E9B290);
  }

  v43 = v91;
  v44 = sub_1D7196134(sub_1D5EA21D0, v96, v42);
  MEMORY[0x1EEE9AC00](v44, v45);
  *(&v86 - 4) = v26;
  *(&v86 - 3) = v38;
  v47 = v92;
  v46 = v93;
  *(&v86 - 2) = v92;
  *(&v86 - 1) = v46;
  v49 = sub_1D5FBBD68(sub_1D5EA2238, (&v86 - 6), v48);
  if (v43)
  {
    goto LABEL_5;
  }

  v51 = v49;
  MEMORY[0x1EEE9AC00](v49, v50);
  *(&v86 - 4) = v26;
  *(&v86 - 3) = v38;
  *(&v86 - 2) = v47;
  *(&v86 - 1) = v46;
  v92 = sub_1D5FBBF90(sub_1D5EA2250, (&v86 - 6), v52);
  v89 = v51;
  v53 = *(a1 + v41[6]);
  MEMORY[0x1EEE9AC00](v92, v54);
  *(&v86 - 2) = v38;

  v91 = sub_1D7195F4C(sub_1D5EA21E8, (&v86 - 4), v53);
  v55 = v41[7];
  v93 = a1;
  v56 = *(a1 + v55);
  MEMORY[0x1EEE9AC00](v91, v57);
  *(&v86 - 2) = v58;

  v59 = sub_1D7195E7C(sub_1D5EA2200, (&v86 - 4), v53);
  v60 = sub_1D5BA8750(v59, v56);

  v98 = v89;
  sub_1D5D1E934(v44);
  sub_1D5B5A7A0(0, &qword_1EDF1B2A0, &type metadata for FormatContentSlot.Resolved, MEMORY[0x1E69E62F8]);
  sub_1D5CF35A0(&unk_1EDF1B290, &qword_1EDF1B2A0, &type metadata for FormatContentSlot.Resolved);
  v61 = sub_1D72623CC();
  sub_1D5EA08F4(v95, sub_1D5C2AB28);
  sub_1D5EA08F4(v94, sub_1D5E9B290);

  v62 = v26 & 0xFFFFFFFFFFFFFF8;
LABEL_7:
  v81 = *(v93 + v41[11]);
  v83 = v86;
  v82 = v87;
  v84 = v88;
  *v87 = v86;
  v82[1] = v84;
  v82[2] = v83;
  v82[3] = v84;
  v82[4] = v62;
  v85 = v92;
  v82[5] = v91;
  v82[6] = v60;
  v82[7] = v61;
  v82[8] = v85;
  v82[9] = v81;
}

uint64_t sub_1D5E766CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FormatWebEmbed.Resolved();
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = type metadata accessor for FormatContent(0);
  v11 = (a1 + *(result + 36));
  v12 = v11[1];
  if (v12)
  {
    v13 = *v11;
    v14 = MEMORY[0x1E69E7CC0];
    v32 = MEMORY[0x1E69E7CC0];
    v15 = *(a2 + 16);
    if (v15)
    {
      v25 = a3;
      v16 = (a2 + 32);
      do
      {
        v17 = v16[1];
        v30[0] = *v16;
        v30[1] = v17;
        v18 = v16[4];
        *&v31[16] = v16[3];
        *&v31[32] = v18;
        *v31 = v16[2];
        v28[1] = v17;
        *(v29 + 8) = *&v31[8];
        *(&v29[1] + 8) = *&v31[24];
        *&v29[0] = *v31 & 0x7FFFFFFFFFFFFFFFLL;
        *(&v29[2] + 1) = *(&v18 + 1);
        v27[7] = v29[0];
        v27[8] = v29[1];
        v27[9] = v29[2];
        v28[0] = v30[0];
        v27[5] = v30[0];
        v27[6] = v17;
        sub_1D5CE9930(v30, v27);
        sub_1D5CE9930(v30, v27);
        sub_1D5CE9930(v30, v27);
        FormatContentSubgroup.Resolved.webEmbeds.getter();
        v20 = v19;
        sub_1D5CB71DC(v28);
        sub_1D5CEC67C(v30);
        sub_1D5CEC67C(v30);
        result = sub_1D5CF23B0(v20);
        v16 += 5;
        --v15;
      }

      while (v15);
      v14 = v32;
      a3 = v25;
    }

    v21 = *(v14 + 16);
    if (v21)
    {
      v22 = 0;
      while (v22 < *(v14 + 16))
      {
        sub_1D5CEFE68(v14 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22, v9, type metadata accessor for FormatWebEmbed.Resolved);
        v23 = *v9 == v13 && v12 == v9[1];
        if (v23 || (sub_1D72646CC() & 1) != 0)
        {

          sub_1D5CEFF38(v9, a3, type metadata accessor for FormatWebEmbed.Resolved);
          return (*(v26 + 56))(a3, 0, 1, v6);
        }

        ++v22;
        result = sub_1D5EA08F4(v9, type metadata accessor for FormatWebEmbed.Resolved);
        if (v21 == v22)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_15:

      return (*(v26 + 56))(a3, 1, 1, v6);
    }
  }

  else
  {
    v24 = *(v26 + 56);

    return v24(a3, 1, 1, v6);
  }

  return result;
}

uint64_t sub_1D5E769F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if ((~v6 & 0xF000000000000007) != 0)
  {
    sub_1D5CEFE04(0, &qword_1EDF19910, type metadata accessor for FormatOption, MEMORY[0x1E69E6F90]);
    v11 = (type metadata accessor for FormatOption() - 8);
    v12 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D7273AE0;
    v13 = (v10 + v12);
    *v13 = v4;
    v13[1] = v5;
    v13[2] = v6;
    v13[3] = 1;
    v14 = v11[9];
    v15 = type metadata accessor for FormatVersionRequirement(0);
    (*(*(v15 - 8) + 56))(v10 + v12 + v14, 1, 1, v15);
  }

  else
  {
    v7 = *(a2 + 88);
    if (!*(v7 + 16) || (v8 = sub_1D5B69D90(*a1, v5), (v9 & 1) == 0))
    {
      v10 = MEMORY[0x1E69E7CC0];
      goto LABEL_8;
    }

    v10 = *(*(v7 + 56) + (v8 << 6) + 48);
  }

LABEL_8:
  *a3 = v10;
  return sub_1D5CFCFAC(v6);
}

id *FormatService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));

  __swift_destroy_boxed_opaque_existential_1((v0 + 20));
  __swift_destroy_boxed_opaque_existential_1((v0 + 25));
  __swift_destroy_boxed_opaque_existential_1((v0 + 30));
  __swift_destroy_boxed_opaque_existential_1((v0 + 35));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 44));
  __swift_destroy_boxed_opaque_existential_1((v0 + 49));
  __swift_destroy_boxed_opaque_existential_1((v0 + 54));

  __swift_destroy_boxed_opaque_existential_1((v0 + 62));
  __swift_destroy_boxed_opaque_existential_1((v0 + 67));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1((v0 + 77));
  __swift_destroy_boxed_opaque_existential_1((v0 + 82));
  __swift_destroy_boxed_opaque_existential_1((v0 + 87));
  return v0;
}

uint64_t FormatService.__deallocating_deinit()
{
  FormatService.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D5E76CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5BAF844;

  return FormatService.resolveResult(content:pool:options:)(a1, a2, a3);
}

uint64_t sub_1D5E76D88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5E74460(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D5E76DB4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5E74FD8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1D5E76DE0(unint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v27 = a3;
    v28 = a2;
    v29 = sub_1D7263BFC();
    a2 = v28;
    a3 = v27;
    if (!v29)
    {
      goto LABEL_4;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:

    return v4;
  }

  v6 = *(a2 + 64);
  if (v6 == 1)
  {
    goto LABEL_4;
  }

  v7 = a3;
  type metadata accessor for FormatServiceOptions();
  sub_1D5C384A0();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7270C10;
  v10 = *v7;
  v9 = v7[1];
  v31 = v10;
  v11 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1D5B7E2C0();
  *(v8 + 64) = v12;
  *(v8 + 32) = v10;
  *(v8 + 40) = v9;
  v30 = v9;
  swift_bridgeObjectRetain_n();
  v13 = FCTagFilterOptionsToNSString();
  v14 = sub_1D726207C();
  v16 = v15;

  *(v8 + 96) = v11;
  *(v8 + 104) = v12;
  *(v8 + 72) = v14;
  *(v8 + 80) = v16;
  sub_1D7262EDC();
  sub_1D725C30C();

  v17 = objc_opt_self();
  sub_1D5B5534C(0, &qword_1EDF3C770);
  v18 = sub_1D726265C();
  v19 = [v17 filterTags:v18 options:v6 context:*(v3 + 152)];

  v20 = sub_1D726267C();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D7279970;
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = v12;
  *(v21 + 32) = v31;
  *(v21 + 40) = v30;
  if (v5)
  {
    v22 = sub_1D7263BFC();
  }

  else
  {
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = MEMORY[0x1E69E6530];
  v24 = MEMORY[0x1E69E65A8];
  *(v21 + 96) = MEMORY[0x1E69E6530];
  *(v21 + 104) = v24;
  *(v21 + 72) = v22;
  if (v20 >> 62)
  {
    v25 = sub_1D7263BFC();
  }

  else
  {
    v25 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v21 + 136) = v23;
  *(v21 + 144) = v24;
  *(v21 + 112) = v25;
  sub_1D7262EDC();
  sub_1D725C30C();

  return v20;
}

uint64_t sub_1D5E770A4(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_1D5E780A8(a4, a1);
  v9 = v8;
  if (v8 >> 62)
  {
    if (sub_1D7263BFC())
    {
      goto LABEL_3;
    }

    return v9;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return v9;
  }

LABEL_3:
  v53 = v9;
  v61 = a1;
  v10 = *(a2 + 56);
  v11 = type metadata accessor for FormatServiceOptions();
  v62 = *(a2 + *(v11 + 52));
  sub_1D5C384A0();
  v60 = v12;
  v13 = swift_allocObject();
  v57 = xmmword_1D7279970;
  *(v13 + 16) = xmmword_1D7279970;
  v55 = a3;
  v14 = *a3;
  v15 = a3[1];
  v16 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v17 = sub_1D5B7E2C0();
  *(v13 + 64) = v17;
  v58 = v15;
  v59 = v14;
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  swift_bridgeObjectRetain_n();
  v52 = v10;
  v18 = FCFeedFilterOptionsToNSString();
  v19 = sub_1D726207C();
  v21 = v20;

  *(v13 + 96) = v16;
  *(v13 + 104) = v17;
  v56 = v17;
  *(v13 + 72) = v19;
  *(v13 + 80) = v21;
  v22 = *(v11 + 44);
  v54 = a2;
  v23 = *(a2 + v22);
  v24 = *(v23 + 16);
  v25 = MEMORY[0x1E69E65A8];
  *(v13 + 136) = MEMORY[0x1E69E6530];
  *(v13 + 144) = v25;
  *(v13 + 112) = v24;
  sub_1D7262EDC();
  sub_1D725C30C();

  v26 = *(v4 + 152);
  v51 = [objc_msgSend(v26 configurationManager)];
  swift_unknownObjectRelease();
  v27 = *(v23 + 16);
  if (!v27 || (v28 = sub_1D5B9A6D8(*(v23 + 16), 0), v29 = sub_1D5B9A6EC(&v63, v28 + 4, v27, v23), , result = sub_1D5B87E38(), v29 == v27))
  {
    v31 = objc_opt_self();
    v32 = MEMORY[0x1E69E6158];
    v33 = sub_1D726265C();

    v34 = [v31 transformationWithFilterOptions:v52 configuration:v51 context:v26 otherArticleIDs:v33];
    swift_unknownObjectRelease();

    sub_1D5B5534C(0, &qword_1EDF3C720);
    v35 = sub_1D726265C();

    v36 = [v34 transformHeadlinesWithResult_];

    sub_1D5B5A498(0, &qword_1EDF1A758);
    v37 = sub_1D726267C();

    MEMORY[0x1EEE9AC00](v38, v39);
    v50[2] = v54;
    v50[3] = v55;
    v40 = sub_1D5FBBBBC(sub_1D5E9E774, v50, v37);

    v63 = v40;
    sub_1D5B9EE48();
    sub_1D5C2AF10(&qword_1EDF1AE70, 255, sub_1D5B9EE48);
    v9 = sub_1D72623CC();

    v41 = swift_allocObject();
    *(v41 + 16) = v57;
    v42 = v56;
    *(v41 + 56) = v32;
    *(v41 + 64) = v42;
    v43 = v61;
    v44 = v61 >> 62;
    v45 = v58;
    *(v41 + 32) = v59;
    *(v41 + 40) = v45;
    if (v44)
    {
      v46 = sub_1D7263BFC();
    }

    else
    {
      v46 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v47 = MEMORY[0x1E69E6530];
    v48 = MEMORY[0x1E69E65A8];
    *(v41 + 96) = MEMORY[0x1E69E6530];
    *(v41 + 104) = v48;
    *(v41 + 72) = v46;
    if (v9 >> 62)
    {
      v49 = sub_1D7263BFC();
    }

    else
    {
      v49 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v41 + 136) = v47;
    *(v41 + 144) = v48;
    *(v41 + 112) = v49;
    sub_1D7262EDC();
    sub_1D725C30C();

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E775A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5E775CC, 0, 0);
}

uint64_t sub_1D5E775CC()
{
  v16 = v0;
  v1 = **(v0 + 24);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    v4 = v2[15];
    v5 = v2[16];
    __swift_project_boxed_opaque_existential_1(v2 + 12, v4);
    v6 = *(v3 + 40);
    v7 = *(v3 + 48);
    v8 = objc_opt_self();

    if (v7 == 1)
    {
      if (v6 == 0.0)
      {
        v9 = [v8 defaultCachePolicy];
      }

      else
      {
        v9 = [v8 cachedOnlyCachePolicy];
      }

LABEL_14:
      v13 = v9;
      *(v0 + 56) = (*(v5 + 24))(v1, v13, v4, v5);

      v14 = swift_task_alloc();
      *(v0 + 64) = v14;
      *v14 = v0;
      v14[1] = sub_1D5E7780C;

      return MEMORY[0x1EEE44EE0](v0 + 16);
    }

LABEL_8:
    v9 = [v8 cachePolicyWithSoftMaxAge_];
    goto LABEL_14;
  }

  v4 = *(v0 + 32);
  v1 = *(v4 + 16);
  if (v1)
  {
    v10 = sub_1D5C38490(*(v4 + 16), 0);
    v5 = sub_1D5C38498(v15, v10 + 32, v1, v4);
    v8 = v15[0];
    v6 = *&v15[1];

    sub_1D5B87E38();
    if (v5 != v1)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_1D5E7780C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D5E77A38;
  }

  else
  {

    v2 = sub_1D5E77928;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E77928()
{
  v11 = v0;
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v1 + 16);
  if (v3)
  {
    v9 = v0[2];
    v4 = sub_1D5C38490(v3, 0);
    v5 = sub_1D5C38498(&v10, v4 + 32, v3, v1);

    result = sub_1D5B87E38();
    if (v5 != v3)
    {
      __break(1u);
      return result;
    }

    v2 = v9;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v10 = v4;
  sub_1D69856DC(v2);
  v7 = v10;
  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_1D5E77A38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E77A9C(void *a1, unint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v32 = a1;
  v33 = a2;
  v13 = type metadata accessor for FormatServiceOptions();
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a3;
  v19 = a3[1];
  v20 = *a4;
  sub_1D5CEFE68(a6, v17, type metadata accessor for FormatServiceOptions);
  v21 = sub_1D5E770A4(v20, v17, a7, a8);
  sub_1D5EA08F4(v17, type metadata accessor for FormatServiceOptions);
  v22 = *(a6 + *(v14 + 60));
  sub_1D5C384A0();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D7279970;
  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 64) = sub_1D5B7E2C0();
  *(v23 + 32) = v18;
  *(v23 + 40) = v19;
  if (v20 >> 62)
  {
    v24 = sub_1D7263BFC();
  }

  else
  {
    v24 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = MEMORY[0x1E69E6530];
  v26 = MEMORY[0x1E69E65A8];
  *(v23 + 96) = MEMORY[0x1E69E6530];
  *(v23 + 104) = v26;
  *(v23 + 72) = v24;
  if (v21 >> 62)
  {
    v27 = sub_1D7263BFC();
  }

  else
  {
    v27 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v23 + 136) = v25;
  *(v23 + 144) = v26;
  *(v23 + 112) = v27;
  v28 = v22;

  sub_1D7262EDC();
  sub_1D725C30C();

  v30 = v32;
  v29 = v33;
  *v32 = v18;
  v30[1] = v19;
  *v29 = v21;
}

uint64_t sub_1D5E77CB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5E77D10(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a4 + 16))
  {
    v4 = a4;
    v40 = MEMORY[0x1E69E7CC0];
    if (a1 >> 62)
    {
      goto LABEL_42;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; a1 = v32)
    {
      v6 = 0;
      v36 = a1 & 0xFFFFFFFFFFFFFF8;
      v37 = a1 & 0xC000000000000001;
      v34 = a1;
      v35 = a1 + 32;
      v7 = v4 + 56;
      while (1)
      {
        if (v37)
        {
          a1 = MEMORY[0x1DA6FB460](v6, v34);
        }

        else
        {
          if (v6 >= *(v36 + 16))
          {
            goto LABEL_39;
          }

          a1 = *(v35 + 8 * v6);
        }

        v8 = a1;
        if (__OFADD__(v6++, 1))
        {
          break;
        }

        v10 = [a1 identifier];
        v11 = sub_1D726207C();
        v13 = v12;

        if (*(v4 + 16))
        {
          sub_1D7264A0C();
          sub_1D72621EC();
          v14 = sub_1D7264A5C();
          v15 = -1 << *(v4 + 32);
          v16 = v14 & ~v15;
          if ((*(v7 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
          {
            v17 = ~v15;
            while (1)
            {
              v18 = (*(v4 + 48) + 16 * v16);
              v19 = *v18 == v11 && v18[1] == v13;
              if (v19 || (sub_1D72646CC() & 1) != 0)
              {
                break;
              }

              v16 = (v16 + 1) & v17;
              if (((*(v7 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            goto LABEL_6;
          }
        }

LABEL_20:

        v20 = v38[81];
        __swift_project_boxed_opaque_existential_1(v38 + 77, v38[80]);
        v21 = *(v20 + 24);
        v8 = v8;
        v22 = v21();

        if (v22)
        {
LABEL_6:

          if (v6 == i)
          {
            return v40;
          }
        }

        else
        {
          sub_1D7263E9C();
          sub_1D7263EDC();
          sub_1D7263EEC();
          a1 = sub_1D7263EAC();
          if (v6 == i)
          {
            return v40;
          }
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v32 = a1;
      i = sub_1D7263BFC();
    }

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC0];
    if (a1 >> 62)
    {
      v33 = a1;
      v24 = sub_1D7263BFC();
      a1 = v33;
      if (!v24)
      {
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        return MEMORY[0x1E69E7CC0];
      }
    }

    v25 = 0;
    v26 = a1 & 0xC000000000000001;
    v4 = a1;
    v27 = a1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v26)
      {
        a1 = MEMORY[0x1DA6FB460](v25, v4);
      }

      else
      {
        if (v25 >= *(v27 + 16))
        {
          goto LABEL_41;
        }

        a1 = *(v4 + 8 * v25 + 32);
      }

      v28 = a1;
      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_40;
      }

      v30 = v38[80];
      v31 = v38[81];
      __swift_project_boxed_opaque_existential_1(v38 + 77, v30);
      if ((*(v31 + 24))(v28, v30, v31))
      {
      }

      else
      {
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        a1 = sub_1D7263EAC();
      }

      ++v25;
    }

    while (v29 != v24);
    return v39;
  }
}

unint64_t sub_1D5E780A8(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (*(a1 + 16))
  {
    v23 = MEMORY[0x1E69E7CC0];
    if (a2 >> 62)
    {
      goto LABEL_27;
    }

    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      while (1)
      {
        v5 = 0;
        v21 = v2 & 0xFFFFFFFFFFFFFF8;
        v22 = v2 & 0xC000000000000001;
        v20 = v2;
        v2 += 32;
        v6 = a1 + 56;
        while (v22)
        {
          v7 = MEMORY[0x1DA6FB460](v5, v20);
          v8 = __OFADD__(v5++, 1);
          if (v8)
          {
LABEL_23:
            __break(1u);
            return v23;
          }

LABEL_9:
          v9 = [v7 identifier];
          v10 = sub_1D726207C();
          v12 = v11;

          if (*(a1 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v13 = sub_1D7264A5C(), v14 = -1 << *(a1 + 32), v15 = v13 & ~v14, ((*(v6 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0))
          {
            v16 = ~v14;
            while (1)
            {
              v17 = (*(a1 + 48) + 16 * v15);
              v18 = *v17 == v10 && v17[1] == v12;
              if (v18 || (sub_1D72646CC() & 1) != 0)
              {
                break;
              }

              v15 = (v15 + 1) & v16;
              if (((*(v6 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
              {
                goto LABEL_5;
              }
            }

            swift_unknownObjectRelease();

            if (v5 == v4)
            {
              return v23;
            }
          }

          else
          {
LABEL_5:

            sub_1D7263E9C();
            sub_1D7263EDC();
            sub_1D7263EEC();
            sub_1D7263EAC();
            if (v5 == v4)
            {
              return v23;
            }
          }
        }

        if (v5 < *(v21 + 16))
        {
          break;
        }

        __break(1u);
LABEL_27:
        v4 = sub_1D7263BFC();
        if (!v4)
        {
          return MEMORY[0x1E69E7CC0];
        }
      }

      v7 = *(v2 + 8 * v5);
      swift_unknownObjectRetain();
      v8 = __OFADD__(v5++, 1);
      if (v8)
      {
        goto LABEL_23;
      }

      goto LABEL_9;
    }

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  return v2;
}

id sub_1D5E782E0@<X0>(id *a1@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v5 = *a1;
  if ([*a1 isFiltered])
  {
    type metadata accessor for FormatServiceOptions();
    sub_1D5C384A0();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D7279970;
    v8 = *a2;
    v7 = a2[1];
    v9 = MEMORY[0x1E69E6158];
    *(v6 + 56) = MEMORY[0x1E69E6158];
    v10 = sub_1D5B7E2C0();
    *(v6 + 64) = v10;
    *(v6 + 32) = v8;
    *(v6 + 40) = v7;

    v11 = [objc_msgSend(v5 item)];
    swift_unknownObjectRelease();
    v12 = sub_1D726207C();
    v14 = v13;

    *(v6 + 96) = v9;
    *(v6 + 104) = v10;
    *(v6 + 72) = v12;
    *(v6 + 80) = v14;
    [v5 filteredReasons];
    v15 = FCFeedFilterOptionsToNSString();
    v16 = sub_1D726207C();
    v18 = v17;

    *(v6 + 136) = v9;
    *(v6 + 144) = v10;
    *(v6 + 112) = v16;
    *(v6 + 120) = v18;
    sub_1D7262EDC();
    sub_1D725C30C();

    result = 0;
  }

  else
  {
    result = [v5 item];
  }

  *a3 = result;
  return result;
}

void sub_1D5E78490(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_1D726207C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1D5E784F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  sub_1D5CEFE04(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E785C0, 0, 0);
}

uint64_t sub_1D5E785C0()
{
  v1 = *(v0 + 40);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 72);
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = sub_1D726294C();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;
    v6[5] = v1;
    v6[6] = v3;

    sub_1D5E78E54(v2, &unk_1D7279D20, v6);
    sub_1D5CF274C(v2, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  }

  v7 = *(v0 + 64);
  if (*(v7 + 16))
  {
    v8 = *(v0 + 72);
    v10 = *(v0 + 48);
    v9 = *(v0 + 56);
    v11 = sub_1D726294C();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;
    v12[5] = v7;
    v12[6] = v9;

    sub_1D5E78E54(v8, &unk_1D7279D30, v12);
    sub_1D5CF274C(v8, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  }

  *(v0 + 16) = **(v0 + 32);
  v13 = swift_task_alloc();
  *(v0 + 80) = v13;
  sub_1D5E9E270();
  v15 = v14;
  v16 = sub_1D5C2AF10(&qword_1EDF04878, 255, sub_1D5E9E270);
  *v13 = v0;
  v13[1] = sub_1D5E788C0;

  return MEMORY[0x1EEE453B0](v15, v16);
}

uint64_t sub_1D5E788C0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_1D5E78B90;
  }

  else
  {
    v4 = sub_1D5E789D4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1D5E789D4()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v14 = v0[3];

    *v14 = v4;

    v15 = v0[1];

    v15();
    return;
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v1 + 16))
  {
    v5 = *(v1 + 32 + 8 * v3);
    v6 = *(v5 + 16);
    v7 = *(v4 + 2);
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      goto LABEL_25;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v8 <= *(v4 + 3) >> 1)
    {
      if (*(v5 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v7 <= v8)
      {
        v10 = v7 + v6;
      }

      else
      {
        v10 = v7;
      }

      v4 = sub_1D698BA80(isUniquelyReferenced_nonNull_native, v10, 1, v4);
      if (*(v5 + 16))
      {
LABEL_15:
        if ((*(v4 + 3) >> 1) - *(v4 + 2) < v6)
        {
          goto LABEL_27;
        }

        swift_arrayInitWithCopy();

        if (v6)
        {
          v11 = *(v4 + 2);
          v12 = __OFADD__(v11, v6);
          v13 = v11 + v6;
          if (v12)
          {
            goto LABEL_28;
          }

          *(v4 + 2) = v13;
        }

        goto LABEL_4;
      }
    }

    if (v6)
    {
      goto LABEL_26;
    }

LABEL_4:
    if (v2 == ++v3)
    {
      v0 = v16;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_1D5E78B90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E78BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D5E78C18, 0, 0);
}

uint64_t sub_1D5E78C18()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];

  v4 = sub_1D5E9939C(v1, v2);

  v5 = *(v3 + 344);
  ObjectType = swift_getObjectType();
  v0[6] = SportsDataServiceType.fetchDataVisualizations(requests:)(v4, ObjectType, v5);

  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1D5E78D18;
  v8 = v0[2];

  return MEMORY[0x1EEE44EE0](v8);
}

uint64_t sub_1D5E78D18()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5EA22A8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D5E78E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = MEMORY[0x1E69E85F0];
  sub_1D5CEFE04(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v20 - v10;
  sub_1D5CF23F8(a1, v20 - v10, &qword_1EDF1ADB0, v7);
  v12 = sub_1D726294C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D5CF274C(v11, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_1D726285C();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D726293C();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_1D5E79098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D5E790BC, 0, 0);
}

uint64_t sub_1D5E790BC()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];

  v4 = sub_1D5E99698(v1, v2);

  v5 = *(v3 + 344);
  ObjectType = swift_getObjectType();
  v0[6] = SportsDataServiceType.fetchDataVisualizations(requests:)(v4, ObjectType, v5);

  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1D5E791BC;
  v8 = v0[2];

  return MEMORY[0x1EEE44EE0](v8);
}

uint64_t sub_1D5E791BC()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E792F8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D5E792F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E7935C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a3;
  sub_1D5C2CA80(0, &unk_1EDF402B0, sub_1D5E9E610, &type metadata for FormatCodingPuzzleTypeOverridesStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v66 = &v66 - v7;
  sub_1D5CEFE04(0, qword_1EDF40980, type metadata accessor for FormatPuzzleType.Overrides, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v70 = &v66 - v10;
  v11 = sub_1D605A8DC(MEMORY[0x1E69E7CC0]);
  v12 = *(a1 + 56);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v69 = v12;

  v18 = 0;
  v71 = a2;
  v67 = v13;
  while (v16)
  {
    v19 = v18;
LABEL_11:
    v20 = (*(v69 + 48) + 16 * (__clz(__rbit64(v16)) | (v19 << 6)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(a2 + 16);

    swift_unknownObjectRetain();
    v72 = v22;
    v73 = v21;
    if (v23 && (v24 = sub_1D5B69D90(v22, v21), (v25 & 1) != 0))
    {
      v26 = *(*(a2 + 56) + 8 * v24);
      v27 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__overrides;
      swift_beginAccess();
      v28 = v26 + v27;
      v29 = v66;
      sub_1D5E9DB98(v28, v66, &unk_1EDF402B0, sub_1D5E9E610, &type metadata for FormatCodingPuzzleTypeOverridesStrategy, type metadata accessor for FormatCodingDefault);
      sub_1D5CEFF38(v29, v70, type metadata accessor for FormatPuzzleType.Overrides);
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = type metadata accessor for FormatPuzzleType.Overrides(0);
    v32 = v70;
    (*(*(v31 - 8) + 56))(v70, v30, 1, v31);
    swift_getObjectType();
    v33 = FCPuzzleTypeProviding.overridden(by:assetManager:)(v32, *(v68 + 136));
    sub_1D5CF274C(v32, qword_1EDF40980, type metadata accessor for FormatPuzzleType.Overrides, MEMORY[0x1E69E6720], sub_1D5CEFE04);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v11;
    v36 = sub_1D5B69D90(v72, v73);
    v37 = v11[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_44;
    }

    v40 = v35;
    if (v11[3] >= v39)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D6D7D994();
      }

      v41 = v73;
    }

    else
    {
      sub_1D6D66390(v39, isUniquelyReferenced_nonNull_native);
      v41 = v73;
      v42 = sub_1D5B69D90(v72, v73);
      if ((v40 & 1) != (v43 & 1))
      {
        goto LABEL_46;
      }

      v36 = v42;
    }

    v16 &= v16 - 1;
    if (v40)
    {

      v11 = v74;
      *(v74[7] + 8 * v36) = v33;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = v74;
      v74[(v36 >> 6) + 8] |= 1 << v36;
      v44 = (v11[6] + 16 * v36);
      *v44 = v72;
      v44[1] = v41;
      *(v11[7] + 8 * v36) = v33;
      swift_unknownObjectRelease();
      v45 = v11[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_45;
      }

      v11[2] = v47;
    }

    v18 = v19;
    a2 = v71;
    v13 = v67;
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v19 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v19);
    ++v18;
    if (v16)
    {
      goto LABEL_11;
    }
  }

  v48 = a2 + 64;
  v49 = 1 << *(a2 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & *(a2 + 64);
  v52 = (v49 + 63) >> 6;

  v53 = 0;
  v54 = MEMORY[0x1E69E7CC0];
  while (v51)
  {
    v55 = v53;
LABEL_33:
    v56 = __clz(__rbit64(v51));
    v51 &= v51 - 1;
    v57 = (*(v71 + 48) + ((v55 << 10) | (16 * v56)));
    v59 = *v57;
    v58 = v57[1];
    v60 = v11[2];

    if (v60 && (sub_1D5B69D90(v59, v58), (v61 & 1) != 0))
    {

      v53 = v55;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_1D5B858EC(0, *(v54 + 2) + 1, 1, v54);
      }

      v63 = *(v54 + 2);
      v62 = *(v54 + 3);
      if (v63 >= v62 >> 1)
      {
        v54 = sub_1D5B858EC((v62 > 1), v63 + 1, 1, v54);
      }

      *(v54 + 2) = v63 + 1;
      v64 = &v54[16 * v63];
      *(v64 + 4) = v59;
      *(v64 + 5) = v58;
      v53 = v55;
    }
  }

  while (1)
  {
    v55 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v55 >= v52)
    {

      return v11;
    }

    v51 = *(v48 + 8 * v55);
    ++v53;
    if (v51)
    {
      goto LABEL_33;
    }
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D5E7994C(uint64_t a1, uint64_t a2)
{
  v102 = a2;
  v3 = MEMORY[0x1E69E6720];
  sub_1D5CEFE04(0, qword_1EDF30E00, type metadata accessor for PuzzleStatistic, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v101 = &v94 - v6;
  v100 = type metadata accessor for PuzzleStatistic();
  v107 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v7);
  v108 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v105 = &v94 - v11;
  sub_1D5CEFE04(0, &qword_1EDF05520, sub_1D5E9E5E0, v3);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v94 - v18);
  v20 = sub_1D605A92C(MEMORY[0x1E69E7CC0]);
  v21 = *(a1 + 64);
  v22 = *(v21 + 64);
  v103 = (v21 + 64);
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v106 = v21;

  v27 = 0;
  v104 = v15;
  if (!v25)
  {
    goto LABEL_7;
  }

LABEL_6:
  v29 = v27;
LABEL_14:
  v32 = __clz(__rbit64(v25));
  v25 &= v25 - 1;
  v33 = v32 | (v29 << 6);
  v34 = v105;
  v35 = (*(v106 + 48) + 16 * v33);
  v37 = *v35;
  v36 = v35[1];
  sub_1D5CEFE68(*(v106 + 56) + *(v107 + 72) * v33, v105, type metadata accessor for PuzzleStatistic);
  sub_1D5E9E5E0(0);
  v39 = v38;
  v40 = *(v38 + 48);
  v15 = v104;
  *v104 = v37;
  *(v15 + 1) = v36;
  sub_1D5CEFF38(v34, &v15[v40], type metadata accessor for PuzzleStatistic);
  (*(*(v39 - 8) + 56))(v15, 0, 1, v39);

  v31 = v29;
  while (1)
  {
    sub_1D5E9E84C(v15, v19, &qword_1EDF05520, sub_1D5E9E5E0, MEMORY[0x1E69E6720], sub_1D5CEFE04);
    sub_1D5E9E5E0(0);
    if ((*(*(v39 - 8) + 48))(v19, 1, v39) == 1)
    {
      break;
    }

    v42 = *v19;
    v41 = v19[1];
    sub_1D5CEFF38(v19 + *(v39 + 48), v108, type metadata accessor for PuzzleStatistic);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = v20;
    v44 = sub_1D5B69D90(v42, v41);
    v46 = v20[2];
    v47 = (v45 & 1) == 0;
    v48 = __OFADD__(v46, v47);
    v49 = v46 + v47;
    if (v48)
    {
      goto LABEL_48;
    }

    v50 = v45;
    if (v20[3] < v49)
    {
      sub_1D6D6633C(v49, isUniquelyReferenced_nonNull_native);
      v44 = sub_1D5B69D90(v42, v41);
      if ((v50 & 1) != (v51 & 1))
      {
        goto LABEL_50;
      }

LABEL_21:
      if (v50)
      {
        goto LABEL_5;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v56 = v44;
    sub_1D6D7D940();
    v44 = v56;
    if (v50)
    {
LABEL_5:
      v28 = v44;

      v20 = v109;
      sub_1D5E9E39C(v108, v109[7] + *(v107 + 72) * v28);
      v27 = v31;
      if (v25)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }

LABEL_22:
    v20 = v109;
    v109[(v44 >> 6) + 8] |= 1 << v44;
    v52 = (v20[6] + 16 * v44);
    *v52 = v42;
    v52[1] = v41;
    sub_1D5CEFF38(v108, v20[7] + *(v107 + 72) * v44, type metadata accessor for PuzzleStatistic);
    v53 = v20[2];
    v48 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v48)
    {
      goto LABEL_49;
    }

    v20[2] = v54;
    v27 = v31;
    if (v25)
    {
      goto LABEL_6;
    }

LABEL_7:
    if (v26 <= v27 + 1)
    {
      v30 = v27 + 1;
    }

    else
    {
      v30 = v26;
    }

    v31 = v30 - 1;
    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v29 >= v26)
      {
        break;
      }

      v25 = v103[v29];
      ++v27;
      if (v25)
      {
        goto LABEL_14;
      }
    }

    sub_1D5E9E5E0(0);
    v39 = v55;
    (*(*(v55 - 8) + 56))(v15, 1, 1, v55);
    v25 = 0;
  }

  v57 = v102 + 64;
  v58 = 1 << *(v102 + 32);
  v59 = -1;
  if (v58 < 64)
  {
    v59 = ~(-1 << v58);
  }

  v60 = v59 & *(v102 + 64);
  v61 = (v58 + 63) >> 6;
  v106 = v107 + 56;

  v62 = 0;
  v103 = MEMORY[0x1E69E7CC0];
  v105 = v57;
  while (v60)
  {
    v63 = v62;
LABEL_36:
    v64 = __clz(__rbit64(v60));
    v60 &= v60 - 1;
    v65 = v64 | (v63 << 6);
    v66 = (*(v102 + 48) + 16 * v65);
    v67 = v66[1];
    v68 = (*(v102 + 56) + 40 * v65);
    v69 = *v68;
    v104 = v68[1];
    v71 = v68[2];
    v70 = v68[3];
    v72 = v68[4];
    v73 = v20[2];
    v108 = v71;
    if (v73)
    {
      v74 = *v66;
      swift_bridgeObjectRetain_n();

      v75 = sub_1D5B69D90(v74, v67);
      v76 = v69;
      v77 = v70;
      v79 = v78;

      if (v79)
      {
        v80 = v107;
        v81 = v20[7] + *(v107 + 72) * v75;
        v82 = v101;
        sub_1D5CEFE68(v81, v101, type metadata accessor for PuzzleStatistic);
        (*(v80 + 56))(v82, 0, 1, v100);

        sub_1D5CF274C(v82, qword_1EDF30E00, type metadata accessor for PuzzleStatistic, MEMORY[0x1E69E6720], sub_1D5CEFE04);
        v62 = v63;
        v57 = v105;
        continue;
      }
    }

    else
    {

      v76 = v69;
      v77 = v70;
    }

    v96 = v67;
    v97 = v72;
    v98 = v77;
    v83 = v101;
    (*v106)(v101, 1, 1, v100);
    sub_1D5CF274C(v83, qword_1EDF30E00, type metadata accessor for PuzzleStatistic, MEMORY[0x1E69E6720], sub_1D5CEFE04);
    v84 = v76;
    v85 = *(v76 + 16);
    v86 = *(v76 + 24);

    v87 = v108;

    v88 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v84;
    v95 = v85;
    if ((v88 & 1) == 0)
    {
      v103 = sub_1D698C75C(0, v103[2] + 1, 1, v103);
    }

    v57 = v105;
    v90 = v103[2];
    v89 = v103[3];
    if (v90 >= v89 >> 1)
    {
      v103 = sub_1D698C75C((v89 > 1), v90 + 1, 1, v103);
    }

    v91 = v103;
    v103[2] = v90 + 1;
    v92 = &v91[4 * v90];
    v92[4] = v95;
    v92[5] = v86;
    v92[6] = v104;
    v92[7] = v87;
    v62 = v63;
  }

  while (1)
  {
    v63 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      break;
    }

    if (v63 >= v61)
    {

      return v20;
    }

    v60 = *(v57 + 8 * v63);
    ++v62;
    if (v60)
    {
      goto LABEL_36;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D5E7A278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = type metadata accessor for PuzzleStatistic();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = MEMORY[0x1E69E6720];
  sub_1D5CEFE04(0, qword_1EDF30E00, type metadata accessor for PuzzleStatistic, MEMORY[0x1E69E6720]);
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], v6);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E7A430, 0, 0);
}

uint64_t sub_1D5E7A430()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (v2)
  {
    v25 = **(v0 + 88);
    v26 = sub_1D726294C();
    v3 = *(v26 - 8);
    v24 = *(v3 + 56);
    v23 = (v3 + 48);
    v22 = (v3 + 8);
    v4 = (v1 + 56);
    do
    {
      v8 = *(v0 + 168);
      v7 = *(v0 + 176);
      v9 = *(v4 - 2);
      v29 = *(v4 - 3);
      v30 = v2;
      v27 = *v4;
      v28 = *(v4 - 1);
      v24(v7, 1, 1, v26);
      v10 = swift_allocObject();
      swift_weakInit();
      v11 = swift_allocObject();
      v11[2] = 0;
      v12 = v11 + 2;
      v11[3] = 0;
      v11[4] = v10;
      v11[5] = v29;
      v11[6] = v9;
      v11[7] = v28;
      v11[8] = v27;
      sub_1D5CF23F8(v7, v8, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
      LODWORD(v10) = (*v23)(v8, 1, v26);

      v13 = *(v0 + 168);
      if (v10 == 1)
      {
        sub_1D5CF274C(*(v0 + 168), &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
        if (*v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1D726293C();
        (*v22)(v13, v26);
        if (*v12)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v14 = sub_1D726285C();
          v15 = v16;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v14 = 0;
      v15 = 0;
LABEL_10:

      if (v15 | v14)
      {
        v5 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v14;
        *(v0 + 40) = v15;
      }

      else
      {
        v5 = 0;
      }

      v6 = *(v0 + 176);
      *(v0 + 48) = 1;
      *(v0 + 56) = v5;
      *(v0 + 64) = v25;
      swift_task_create();

      sub_1D5CF274C(v6, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      v4 += 4;
      v2 = v30 - 1;
    }

    while (v30 != 1);
  }

  *(v0 + 72) = **(v0 + 88);
  v17 = swift_task_alloc();
  *(v0 + 184) = v17;
  sub_1D5E9E4DC();
  v19 = v18;
  v20 = sub_1D5C2AF10(&qword_1EDF04890, 255, sub_1D5E9E4DC);
  *v17 = v0;
  v17[1] = sub_1D5E7A848;

  return MEMORY[0x1EEE453B0](v19, v20);
}

uint64_t sub_1D5E7A848(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = sub_1D5E7AC10;
  }

  else
  {
    v4 = sub_1D5E7A95C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D5E7A95C()
{
  v1 = *(v0 + 192);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 144);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v16 = *(v0 + 120);
    v17 = *(v3 + 72);
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = *(v0 + 152);
      v6 = *(v0 + 160);
      v8 = *(v0 + 112);
      sub_1D5CF23F8(v4, v6, qword_1EDF30E00, type metadata accessor for PuzzleStatistic);
      sub_1D5E9E84C(v6, v7, qword_1EDF30E00, type metadata accessor for PuzzleStatistic, MEMORY[0x1E69E6720], sub_1D5CEFE04);
      v9 = (*(v16 + 48))(v7, 1, v8);
      v10 = *(v0 + 152);
      if (v9 == 1)
      {
        sub_1D5CF274C(v10, qword_1EDF30E00, type metadata accessor for PuzzleStatistic, MEMORY[0x1E69E6720], sub_1D5CEFE04);
      }

      else
      {
        sub_1D5CEFF38(v10, *(v0 + 128), type metadata accessor for PuzzleStatistic);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1D698C9D8(0, v5[2] + 1, 1, v5);
        }

        v12 = v5[2];
        v11 = v5[3];
        if (v12 >= v11 >> 1)
        {
          v5 = sub_1D698C9D8(v11 > 1, v12 + 1, 1, v5);
        }

        v13 = *(v0 + 128);
        v5[2] = v12 + 1;
        sub_1D5CEFF38(v13, v5 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12, type metadata accessor for PuzzleStatistic);
      }

      v4 += v17;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  **(v0 + 80) = v5;

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D5E7AC10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E7ACA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a1;
  v8[6] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D5E7ACCC, 0, 0);
}

uint64_t sub_1D5E7ACCC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (!Strong)
  {
    type metadata accessor for FormatServiceError();
    sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_5;
  }

  v2 = Strong;
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);

  v5._countAndFlagsBits = v4;
  v5._object = v3;
  PuzzleStatisticType.init(rawValue:)(v5);
  *(v0 + 153) = v19;
  if (v19 == 11)
  {
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);
    sub_1D5E9E58C();
    swift_allocError();
    *v8 = v6;
    v8[1] = v7;
    swift_willThrow();

LABEL_5:
    v9 = *(v0 + 8);

    return v9();
  }

  v12 = *(v0 + 56);
  v11 = *(v0 + 64);
  v13 = v2[33];
  v14 = v2[34];
  __swift_project_boxed_opaque_existential_1(v2 + 30, v13);
  sub_1D5B5A7A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v0 + 96) = v15;
  *(v15 + 16) = xmmword_1D7273AE0;
  *(v15 + 32) = v12;
  *(v15 + 40) = v11;
  v16 = *(v14 + 104);

  v18 = (v16 + *v16);
  v17 = swift_task_alloc();
  *(v0 + 104) = v17;
  *v17 = v0;
  v17[1] = sub_1D5E7AFB0;

  return v18(v15, v13, v14);
}

uint64_t sub_1D5E7AFB0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_1D5E7B514;
  }

  else
  {

    v4 = sub_1D5E7B0CC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D5E7B0CC()
{
  v1 = *(v0 + 112);
  if (v1 >> 62)
  {
    result = sub_1D7263BFC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    goto LABEL_13;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1DA6FB460](0, *(v0 + 112));
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 112) + 32);
    swift_unknownObjectRetain();
  }

  *(v0 + 128) = v3;

  swift_getObjectType();
  if (FCPuzzleTypeProviding.isAllowed.getter())
  {
    v4 = *(v0 + 153);
    v5 = *(v0 + 88);
    v6 = v5[38];
    v7 = v5[39];
    __swift_project_boxed_opaque_existential_1(v5 + 35, v6);
    *(v0 + 152) = v4;
    v13 = (*(v7 + 16) + **(v7 + 16));
    v8 = swift_task_alloc();
    *(v0 + 136) = v8;
    *v8 = v0;
    v8[1] = sub_1D5E7B34C;
    v9 = *(v0 + 40);

    return v13(v9, v0 + 152, v3, v6, v7);
  }

  swift_unknownObjectRelease();
LABEL_13:

  v10 = *(v0 + 40);
  v11 = type metadata accessor for PuzzleStatistic();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D5E7B34C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1D5E7B580;
  }

  else
  {
    v2 = sub_1D5E7B460;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E7B460()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 40);
  v2 = type metadata accessor for PuzzleStatistic();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D5E7B514()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E7B580()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E7B5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5E7B618, 0, 0);
}

uint64_t sub_1D5E7B618()
{
  type metadata accessor for FormatServicePackageState();
  v1 = swift_allocObject();
  v0[7] = v1;
  *(v1 + 16) = 0;
  *(v1 + 24) = MEMORY[0x1E69E7CD0];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1D5E7B6E0;
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];

  return sub_1D5E7B834(v5, v3, v4, v1);
}

uint64_t sub_1D5E7B6E0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_1D5E77A38;
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = sub_1D5E7B810;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D5E7B834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[805] = v4;
  v5[799] = a4;
  v5[793] = a3;
  v5[787] = a2;
  v5[781] = a1;
  sub_1D5E9EA44();
  v5[811] = v6;
  v5[817] = swift_task_alloc();
  v5[823] = swift_task_alloc();
  v7 = *(type metadata accessor for FormatServiceOptions() - 8);
  v5[829] = v7;
  v5[835] = *(v7 + 64);
  v5[841] = swift_task_alloc();
  v5[847] = swift_task_alloc();
  v5[853] = swift_task_alloc();
  v5[859] = swift_task_alloc();
  v5[865] = swift_task_alloc();
  v5[871] = swift_task_alloc();
  v5[877] = swift_task_alloc();
  v5[883] = swift_task_alloc();
  v5[889] = swift_task_alloc();
  sub_1D5C2AB28(0);
  v5[895] = v8;
  v9 = *(v8 - 8);
  v5[901] = v9;
  v5[907] = *(v9 + 64);
  v5[913] = swift_task_alloc();
  v5[919] = swift_task_alloc();
  v5[925] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v11 = *(v10 - 8);
  v5[931] = v11;
  v5[937] = *(v11 + 64);
  v5[943] = swift_task_alloc();
  v5[949] = swift_task_alloc();
  v5[955] = swift_task_alloc();
  v5[961] = swift_task_alloc();
  v5[967] = swift_task_alloc();
  v5[973] = swift_task_alloc();
  v5[979] = swift_task_alloc();
  v5[985] = swift_task_alloc();
  v5[991] = swift_task_alloc();
  v5[997] = swift_task_alloc();
  v5[1003] = swift_task_alloc();
  sub_1D5E9EB74(0);
  v13 = *(v12 - 8);
  v5[1009] = v13;
  v5[1015] = *(v13 + 64);
  v5[1021] = swift_task_alloc();
  v5[1027] = swift_task_alloc();
  v5[1033] = swift_task_alloc();
  v5[1039] = swift_task_alloc();
  v5[1045] = swift_task_alloc();
  v5[1051] = swift_task_alloc();
  v5[1057] = swift_task_alloc();
  v5[1063] = swift_task_alloc();
  v5[1069] = swift_task_alloc();
  v5[1075] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E7BBF4, 0, 0);
}

uint64_t sub_1D5E7BBF4()
{
  if (qword_1EDF22230 != -1)
  {
    swift_once();
  }

  v1 = v0[781];
  v0[1081] = qword_1EDFFCA30;
  v2 = sub_1D61D40D8(v1);
  if (v2)
  {
    v10 = v2;
    sub_1D5B74328(0);
    sub_1D5B74328(0);
    sub_1D5B74328(0);
    sub_1D5B74328(0);
    sub_1D5B74328(0);

    v3 = v0[1];

    return v3(v10);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[1087] = v5;
    *v5 = v0;
    v5[1] = sub_1D5E7BF60;
    v6 = v0[1075];
    v7 = v0[793];
    v8 = v0[787];
    v9 = v0[781];

    return sub_1D5E823E0(v6, v9, v8, v7);
  }
}

uint64_t sub_1D5E7BF60()
{
  *(*v1 + 8744) = v0;

  if (v0)
  {
    v2 = sub_1D5E7E468;
  }

  else
  {
    v2 = sub_1D5E7C074;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E7C074()
{
  sub_1D5CEFE68(v0[781], v0[925], sub_1D5C2AB28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = v0[925];
      sub_1D5E9D830(0, &unk_1EC88B470, type metadata accessor for FormatPackage, type metadata accessor for FormatMetadata);
      sub_1D5EA08F4(v2 + *(v3 + 48), type metadata accessor for FormatMetadata);
      sub_1D5EA08F4(v2, type metadata accessor for FormatPackage);
    }

    v4 = v0[997];
    v5 = sub_1D72585BC();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  }

  else
  {
    v7 = v0[997];
    v8 = v0[925];
    sub_1D5E9D830(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
    v86 = *(v9 + 48);
    v5 = sub_1D72585BC();
    v10 = *(v5 - 8);
    v11 = *(v10 + 32);
    v11(v7, v8, v5);
    v12 = *(v10 + 56);
    v12(v7, 0, 1, v5);
    sub_1D5EA08F4(v8 + v86, type metadata accessor for FormatMetadata);
    if ((*(v10 + 48))(v7, 1, v5) != 1)
    {
      v13 = v0[1003];
      v11(v13, v0[997], v5);
      v12(v13, 0, 1, v5);
      goto LABEL_9;
    }
  }

  v6 = v0[997];
  sub_1D5CF23F8(v0[787], v0[1003], &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D72585BC();
  if ((*(*(v5 - 8) + 48))(v6, 1, v5) != 1)
  {
    sub_1D5CF274C(v0[997], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  }

LABEL_9:
  v81 = v0[1075];
  v79 = v0[1069];
  v46 = v0[1063];
  v51 = v0[1057];
  v54 = v0[1051];
  v57 = v0[1045];
  v60 = v0[1039];
  v63 = v0[1033];
  v66 = v0[1027];
  v69 = v0[1021];
  v14 = v0[1015];
  v77 = v14;
  v72 = v0[1009];
  v15 = v0[1003];
  v80 = v15;
  v16 = v0[991];
  v75 = v16;
  v45 = v0[985];
  v50 = v0[979];
  v53 = v0[973];
  v56 = v0[967];
  v59 = v0[961];
  v62 = v0[955];
  v65 = v0[949];
  v68 = v0[943];
  v76 = v0[937];
  v42 = v0[931];
  v17 = v0[919];
  v47 = v17;
  v85 = v0[901];
  v18 = v0[889];
  v41 = v18;
  v44 = v0[883];
  v49 = v0[877];
  v52 = v0[871];
  v55 = v0[865];
  v58 = v0[859];
  v61 = v0[853];
  v64 = v0[847];
  v67 = v0[841];
  v19 = v0[835];
  v20 = v0[829];
  v70 = v0[823];
  v71 = v0[805];
  v21 = v0[793];
  v82 = v21;
  v83 = v0[799];
  v22 = v0[781];
  sub_1D5CEFE68(v81, v79, sub_1D5E9EB74);
  v74 = MEMORY[0x1E6968FB0];
  sub_1D5CF23F8(v15, v16, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D5CEFE68(v21, v18, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v22, v17, sub_1D5C2AB28);
  v23 = *(v72 + 80);
  v24 = (v23 + 16) & ~v23;
  v25 = (v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v42 + 80);
  v27 = (v26 + v25 + 8) & ~v26;
  v43 = *(v20 + 80);
  v28 = (v27 + v76 + v43) & ~v43;
  v29 = (v19 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (*(v85 + 80) + v29 + 8) & ~*(v85 + 80);
  v31 = swift_allocObject();
  v0[1099] = v31;
  sub_1D5CEFF38(v79, v31 + v24, sub_1D5E9EB74);
  *(v31 + v25) = v71;
  v87 = MEMORY[0x1E69E6720];
  sub_1D5E9E84C(v75, v31 + v27, &qword_1EDF45B40, v74, MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5CEFF38(v41, v31 + v28, type metadata accessor for FormatServiceOptions);
  *(v31 + v29) = v83;
  sub_1D5CEFF38(v47, v31 + v30, sub_1D5C2AB28);

  v48 = MEMORY[0x1E69E62F8];
  sub_1D5CEFE04(0, &unk_1EDF3C8B0, type metadata accessor for FormatPackageInventory, MEMORY[0x1E69E62F8]);
  swift_asyncLet_begin();
  sub_1D5CEFE68(v81, v46, sub_1D5E9EB74);
  sub_1D5CF23F8(v80, v45, &qword_1EDF45B40, v74);
  sub_1D5CEFE68(v82, v44, type metadata accessor for FormatServiceOptions);
  v84 = (v23 + 24) & ~v23;
  v78 = (v77 + v26 + v84) & ~v26;
  v73 = (v78 + v76 + v43) & ~v43;
  v32 = swift_allocObject();
  v0[1105] = v32;
  *(v32 + 16) = v71;
  sub_1D5CEFF38(v46, v32 + v84, sub_1D5E9EB74);
  sub_1D5E9E84C(v45, v32 + v78, &qword_1EDF45B40, v74, v87, sub_1D5CEFE04);
  sub_1D5CEFF38(v44, v32 + v73, type metadata accessor for FormatServiceOptions);

  sub_1D5E9EBBC();
  swift_asyncLet_begin();
  sub_1D5CEFE68(v81, v51, sub_1D5E9EB74);
  sub_1D5CF23F8(v80, v50, &qword_1EDF45B40, v74);
  sub_1D5CEFE68(v82, v49, type metadata accessor for FormatServiceOptions);
  v33 = swift_allocObject();
  v0[1111] = v33;
  *(v33 + 16) = v71;
  sub_1D5CEFF38(v51, v33 + v84, sub_1D5E9EB74);
  sub_1D5E9E84C(v50, v33 + v78, &qword_1EDF45B40, v74, v87, sub_1D5CEFE04);
  sub_1D5CEFF38(v49, v33 + v73, type metadata accessor for FormatServiceOptions);

  sub_1D5CBB104();
  swift_asyncLet_begin();
  sub_1D5CEFE68(v81, v54, sub_1D5E9EB74);
  sub_1D5CF23F8(v80, v53, &qword_1EDF45B40, v74);
  sub_1D5CEFE68(v82, v52, type metadata accessor for FormatServiceOptions);
  v34 = swift_allocObject();
  v0[1117] = v34;
  *(v34 + 16) = v71;
  sub_1D5CEFF38(v54, v34 + v84, sub_1D5E9EB74);
  sub_1D5E9E84C(v53, v34 + v78, &qword_1EDF45B40, v74, v87, sub_1D5CEFE04);
  sub_1D5CEFF38(v52, v34 + v73, type metadata accessor for FormatServiceOptions);

  sub_1D5CEFE04(0, &qword_1EDF1B360, sub_1D5C2C40C, v48);
  swift_asyncLet_begin();
  sub_1D5CEFE68(v81, v57, sub_1D5E9EB74);
  sub_1D5CF23F8(v80, v56, &qword_1EDF45B40, v74);
  sub_1D5CEFE68(v82, v55, type metadata accessor for FormatServiceOptions);
  v35 = swift_allocObject();
  v0[1123] = v35;
  *(v35 + 16) = v71;
  sub_1D5CEFF38(v57, v35 + v84, sub_1D5E9EB74);
  sub_1D5E9E84C(v56, v35 + v78, &qword_1EDF45B40, v74, v87, sub_1D5CEFE04);
  sub_1D5CEFF38(v55, v35 + v73, type metadata accessor for FormatServiceOptions);

  sub_1D5C2C988();
  swift_asyncLet_begin();
  sub_1D5CEFE68(v81, v60, sub_1D5E9EB74);
  sub_1D5CF23F8(v80, v59, &qword_1EDF45B40, v74);
  sub_1D5CEFE68(v82, v58, type metadata accessor for FormatServiceOptions);
  v36 = swift_allocObject();
  v0[1129] = v36;
  *(v36 + 16) = v71;
  sub_1D5CEFF38(v60, v36 + v84, sub_1D5E9EB74);
  sub_1D5E9E84C(v59, v36 + v78, &qword_1EDF45B40, v74, v87, sub_1D5CEFE04);
  sub_1D5CEFF38(v58, v36 + v73, type metadata accessor for FormatServiceOptions);

  sub_1D5CA46B8();
  swift_asyncLet_begin();
  sub_1D5CEFE68(v81, v63, sub_1D5E9EB74);
  sub_1D5CF23F8(v80, v62, &qword_1EDF45B40, v74);
  sub_1D5CEFE68(v82, v61, type metadata accessor for FormatServiceOptions);
  v37 = swift_allocObject();
  v0[1135] = v37;
  *(v37 + 16) = v71;
  sub_1D5CEFF38(v63, v37 + v84, sub_1D5E9EB74);
  sub_1D5E9E84C(v62, v37 + v78, &qword_1EDF45B40, v74, v87, sub_1D5CEFE04);
  sub_1D5CEFF38(v61, v37 + v73, type metadata accessor for FormatServiceOptions);

  sub_1D5CDEC24();
  swift_asyncLet_begin();
  sub_1D5CEFE68(v81, v66, sub_1D5E9EB74);
  sub_1D5CF23F8(v80, v65, &qword_1EDF45B40, v74);
  sub_1D5CEFE68(v82, v64, type metadata accessor for FormatServiceOptions);
  v38 = swift_allocObject();
  v0[1141] = v38;
  *(v38 + 16) = v71;
  sub_1D5CEFF38(v66, v38 + v84, sub_1D5E9EB74);
  sub_1D5E9E84C(v65, v38 + v78, &qword_1EDF45B40, v74, v87, sub_1D5CEFE04);
  sub_1D5CEFF38(v64, v38 + v73, type metadata accessor for FormatServiceOptions);

  sub_1D5C8CC30();
  swift_asyncLet_begin();
  sub_1D5CEFE68(v81, v69, sub_1D5E9EB74);
  sub_1D5CF23F8(v80, v68, &qword_1EDF45B40, v74);
  sub_1D5CEFE68(v82, v67, type metadata accessor for FormatServiceOptions);
  v39 = swift_allocObject();
  v0[1147] = v39;
  *(v39 + 16) = v71;
  sub_1D5CEFF38(v69, v39 + v84, sub_1D5E9EB74);
  sub_1D5E9E84C(v68, v39 + v78, &qword_1EDF45B40, v74, v87, sub_1D5CEFE04);
  sub_1D5CEFF38(v67, v39 + v73, type metadata accessor for FormatServiceOptions);

  sub_1D5CAF910();
  swift_asyncLet_begin();
  sub_1D5CEFE68(v81, v70, sub_1D5E9EB74);

  return MEMORY[0x1EEE6DEC0](v0 + 82, v0 + 775, sub_1D5E7CFDC, v0 + 776);
}

uint64_t sub_1D5E7CFDC()
{
  v1[1153] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E7E710, 0, 0);
  }

  else
  {
    v2 = v1[823];
    v3 = *(v1[811] + 48);
    v4 = v1[775];
    v1[1159] = v4;
    *(v2 + v3) = v4;

    return MEMORY[0x1EEE6DEC0](v1 + 242, v1 + 733, sub_1D5E7D0A4, v1 + 836);
  }
}

uint64_t sub_1D5E7D0A4()
{
  v1[1165] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E7ED90, 0, 0);
  }

  else
  {
    v2 = v1[823];
    v3 = *(v1[811] + 64);
    v4 = v1[733];
    v1[1171] = v4;
    *(v2 + v3) = v4;

    return MEMORY[0x1EEE6DEC0](v1 + 402, v1 + 745, sub_1D5E7D16C, v1 + 896);
  }
}

uint64_t sub_1D5E7D16C()
{
  v1[1177] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E7F424, 0, 0);
  }

  else
  {
    v2 = v1[823];
    v3 = *(v1[811] + 80);
    v4 = v1[745];
    v1[1183] = v4;
    *(v2 + v3) = v4;

    return MEMORY[0x1EEE6DEC0](v1 + 562, v1 + 757, sub_1D5E7D244, v1 + 956);
  }
}

uint64_t sub_1D5E7D244()
{
  v1[1189] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E7FAC4, 0, 0);
  }

  else
  {
    v2 = v1[823];
    v3 = *(v1[811] + 96);
    v4 = v1[757];
    v1[1195] = v4;
    *(v2 + v3) = v4;

    return MEMORY[0x1EEE6DEC0](v1 + 2, v1 + 769, sub_1D5E7D30C, v1 + 1016);
  }
}

uint64_t sub_1D5E7D30C()
{
  v1[1201] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E80178, 0, 0);
  }

  else
  {
    v2 = v1[823];
    v3 = *(v1[811] + 112);
    v4 = v1[769];
    v1[1207] = v4;
    *(v2 + v3) = v4;

    return MEMORY[0x1EEE6DEC0](v1 + 642, v1 + 727, sub_1D5E7D3E4, v1 + 1076);
  }
}

uint64_t sub_1D5E7D3E4()
{
  v1[1213] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E80838, 0, 0);
  }

  else
  {
    v2 = v1[823];
    v3 = *(v1[811] + 128);
    v4 = v1[727];
    v1[1219] = v4;
    *(v2 + v3) = v4;

    return MEMORY[0x1EEE6DEC0](v1 + 482, v1 + 763, sub_1D5E7D4AC, v1 + 1136);
  }
}

uint64_t sub_1D5E7D4AC()
{
  v1[1225] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E80F0C, 0, 0);
  }

  else
  {
    v2 = v1[823];
    v3 = *(v1[811] + 144);
    v4 = v1[763];
    v1[1231] = v4;
    *(v2 + v3) = v4;

    return MEMORY[0x1EEE6DEC0](v1 + 322, v1 + 751, sub_1D5E7D574, v1 + 1196);
  }
}

uint64_t sub_1D5E7D574()
{
  v1[1237] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E815EC, 0, 0);
  }

  else
  {
    v2 = v1[823];
    v3 = *(v1[811] + 160);
    v4 = v1[751];
    v1[1243] = v4;
    *(v2 + v3) = v4;

    return MEMORY[0x1EEE6DEC0](v1 + 162, v1 + 739, sub_1D5E7D63C, v1 + 1256);
  }
}

uint64_t sub_1D5E7D63C()
{
  *(v1 + 9992) = v0;
  if (v0)
  {
    v2 = sub_1D5E81CE0;
  }

  else
  {
    *(v1 + 10136) = *(*(v1 + 6488) + 176);
    v2 = sub_1D5E7D67C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E7D67C()
{
  v22 = *(v0 + 9992);
  v1 = *(v0 + 7304);
  v2 = *(v0 + 6584);
  v3 = *(v0 + 6536);
  v4 = *(v0 + 6488);
  v18 = *(v0 + 6248);
  *(v2 + *(v0 + 10136)) = *(v0 + 5912);
  sub_1D5CEFE68(v2, v3, sub_1D5E9EA44);
  v20 = *(v3 + v4[16]);
  v21 = *(v3 + v4[12]);
  v19 = *(v3 + v4[20]);
  v5 = *(v3 + v4[24]);
  v6 = *(v3 + v4[28]);
  v7 = *(v3 + v4[32]);
  v8 = *(v3 + v4[36]);
  v9 = *(v3 + v4[40]);
  v10 = *(v3 + v4[44]);
  sub_1D5CEFE68(v18, v1, sub_1D5C2AB28);

  v11 = sub_1D6C78DBC(v3, v21, v20, v19, v5, v6, v7, v8, v9, v10, v1);
  *(v0 + 10040) = v22;
  if (v22)
  {
    sub_1D5EA08F4(*(v0 + 6584), sub_1D5E9EA44);
    v12 = sub_1D5E7DE70;
    v13 = v0 + 1296;
    v14 = v0 + 5912;
    v15 = v0 + 10528;
  }

  else
  {
    v16 = *(v0 + 6584);
    *(v0 + 10088) = sub_1D61D465C(*(v0 + 6248), v11);

    sub_1D5EA08F4(v16, sub_1D5E9EA44);
    v12 = sub_1D5E7D888;
    v13 = v0 + 1296;
    v14 = v0 + 5912;
    v15 = v0 + 10912;
  }

  return MEMORY[0x1EEE6DEB0](v13, v14, v12, v15);
}

uint64_t sub_1D5E7DACC()
{
  v1 = v0[1075];
  sub_1D5CF274C(v0[1003], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  v4 = v0[1261];
  sub_1D5B74328(&unk_1D7279E10);
  sub_1D5B74328(&unk_1D7279E20);
  sub_1D5B74328(&unk_1D7279E30);
  sub_1D5B74328(&unk_1D7279E40);
  sub_1D5B74328(&unk_1D7279E50);

  v2 = v0[1];

  return v2(v4);
}

uint64_t sub_1D5E7E0B4()
{
  v1 = v0[1075];
  sub_1D5CF274C(v0[1003], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  sub_1D5B74328(&unk_1D7279E00);
  sub_1D5B74328(&unk_1D7279E10);
  sub_1D5B74328(&unk_1D7279E20);
  sub_1D5B74328(&unk_1D7279E30);
  sub_1D5B74328(&unk_1D7279E40);
  sub_1D5B74328(&unk_1D7279E50);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D5E7E468()
{
  sub_1D5B74328(0);
  sub_1D5B74328(0);
  sub_1D5B74328(0);
  sub_1D5B74328(0);
  sub_1D5B74328(0);
  sub_1D5B74328(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E7E710()
{
  sub_1D5EA08F4(*(v0 + 6584), sub_1D5E9EB74);

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 5912, sub_1D5E7E798, v0 + 6256);
}

uint64_t sub_1D5E7E9DC()
{
  v1 = v0[1075];
  sub_1D5CF274C(v0[1003], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  sub_1D5B74328(&unk_1D7279E00);
  sub_1D5B74328(&unk_1D7279E10);
  sub_1D5B74328(&unk_1D7279E20);
  sub_1D5B74328(&unk_1D7279E30);
  sub_1D5B74328(&unk_1D7279E40);
  sub_1D5B74328(&unk_1D7279E50);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D5E7ED90()
{
  v1 = *(v0 + 6584);

  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 5912, sub_1D5E7EE2C, v0 + 6736);
}

uint64_t sub_1D5E7F070()
{
  v1 = v0[1075];
  sub_1D5CF274C(v0[1003], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  sub_1D5B74328(&unk_1D7279E00);
  sub_1D5B74328(&unk_1D7279E10);
  sub_1D5B74328(&unk_1D7279E20);
  sub_1D5B74328(&unk_1D7279E30);
  sub_1D5B74328(&unk_1D7279E40);
  sub_1D5B74328(&unk_1D7279E50);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D5E7F424()
{
  v1 = *(v0 + 6584);

  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 5912, sub_1D5E7F4CC, v0 + 7216);
}

uint64_t sub_1D5E7F710()
{
  v1 = v0[1075];
  sub_1D5CF274C(v0[1003], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  sub_1D5B74328(&unk_1D7279E00);
  sub_1D5B74328(&unk_1D7279E10);
  sub_1D5B74328(&unk_1D7279E20);
  sub_1D5B74328(&unk_1D7279E30);
  sub_1D5B74328(&unk_1D7279E40);
  sub_1D5B74328(&unk_1D7279E50);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D5E7FAC4()
{
  v1 = *(v0 + 6584);

  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 5912, sub_1D5E7FB80, v0 + 7696);
}

uint64_t sub_1D5E7FDC4()
{
  v1 = v0[1075];
  sub_1D5CF274C(v0[1003], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  sub_1D5B74328(&unk_1D7279E00);
  sub_1D5B74328(&unk_1D7279E10);
  sub_1D5B74328(&unk_1D7279E20);
  sub_1D5B74328(&unk_1D7279E30);
  sub_1D5B74328(&unk_1D7279E40);
  sub_1D5B74328(&unk_1D7279E50);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D5E80178()
{
  v1 = *(v0 + 6584);

  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 5912, sub_1D5E80240, v0 + 8176);
}

uint64_t sub_1D5E80484()
{
  v1 = v0[1075];
  sub_1D5CF274C(v0[1003], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  sub_1D5B74328(&unk_1D7279E00);
  sub_1D5B74328(&unk_1D7279E10);
  sub_1D5B74328(&unk_1D7279E20);
  sub_1D5B74328(&unk_1D7279E30);
  sub_1D5B74328(&unk_1D7279E40);
  sub_1D5B74328(&unk_1D7279E50);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D5E80838()
{
  v1 = *(v0 + 6584);

  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 5912, sub_1D5E80914, v0 + 8656);
}

uint64_t sub_1D5E80B58()
{
  v1 = v0[1075];
  sub_1D5CF274C(v0[1003], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  sub_1D5B74328(&unk_1D7279E00);
  sub_1D5B74328(&unk_1D7279E10);
  sub_1D5B74328(&unk_1D7279E20);
  sub_1D5B74328(&unk_1D7279E30);
  sub_1D5B74328(&unk_1D7279E40);
  sub_1D5B74328(&unk_1D7279E50);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D5E80F0C()
{
  v1 = *(v0 + 6584);

  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 5912, sub_1D5E80FF4, v0 + 9136);
}

uint64_t sub_1D5E81238()
{
  v1 = v0[1075];
  sub_1D5CF274C(v0[1003], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  sub_1D5B74328(&unk_1D7279E00);
  sub_1D5B74328(&unk_1D7279E10);
  sub_1D5B74328(&unk_1D7279E20);
  sub_1D5B74328(&unk_1D7279E30);
  sub_1D5B74328(&unk_1D7279E40);
  sub_1D5B74328(&unk_1D7279E50);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D5E815EC()
{
  v1 = *(v0 + 6584);

  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 5912, sub_1D5E816E8, v0 + 9616);
}

uint64_t sub_1D5E8192C()
{
  v1 = v0[1075];
  sub_1D5CF274C(v0[1003], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  sub_1D5B74328(&unk_1D7279E00);
  sub_1D5B74328(&unk_1D7279E10);
  sub_1D5B74328(&unk_1D7279E20);
  sub_1D5B74328(&unk_1D7279E30);
  sub_1D5B74328(&unk_1D7279E40);
  sub_1D5B74328(&unk_1D7279E50);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D5E81CE0()
{
  v1 = *(v0 + 6584);

  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 5912, sub_1D5E81DE8, v0 + 10096);
}

uint64_t sub_1D5E8202C()
{
  v1 = v0[1075];
  sub_1D5CF274C(v0[1003], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5EA08F4(v1, sub_1D5E9EB74);

  sub_1D5B74328(&unk_1D7279E00);
  sub_1D5B74328(&unk_1D7279E10);
  sub_1D5B74328(&unk_1D7279E20);
  sub_1D5B74328(&unk_1D7279E30);
  sub_1D5B74328(&unk_1D7279E40);
  sub_1D5B74328(&unk_1D7279E50);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D5E823E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  type metadata accessor for FormatMetadata();
  v5[10] = swift_task_alloc();
  v6 = sub_1D72585BC();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  sub_1D5C2AB28(0);
  v5[17] = v7;
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E8259C, 0, 0);
}

uint64_t sub_1D5E8259C()
{
  sub_1D5CEFE68(v0[3], v0[18], sub_1D5C2AB28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = v0[18];
      v3 = v0[2];
      sub_1D5E9D830(0, &unk_1EC88B470, type metadata accessor for FormatPackage, type metadata accessor for FormatMetadata);
      v5 = *(v4 + 48);
      sub_1D5CEFF38(v2, v3, type metadata accessor for FormatPackage);
      sub_1D5E9EB74(0);
      sub_1D5CEFF38(v2 + v5, v3 + *(v6 + 36), type metadata accessor for FormatMetadata);
    }

    else
    {
      type metadata accessor for FormatServiceError();
      sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    v7 = v0[1];

    return v7();
  }

  v8 = v0[18];
  v9 = v0[16];
  v10 = v0[11];
  v11 = v0[12];
  v12 = v0[10];
  sub_1D5E9D830(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
  v14 = *(v13 + 48);
  v15 = *(v11 + 32);
  v15(v9, v8, v10);
  sub_1D5CEFF38(v8 + v14, v12, type metadata accessor for FormatMetadata);
  sub_1D725850C();
  if (v16)
  {
  }

  else
  {
    v18 = v0[11];
    v19 = v0[12];
    v20 = v0[9];
    sub_1D5CF23F8(v0[4], v20, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v21 = *(v19 + 48);
    if (v21(v20, 1, v18) == 1)
    {
      v22 = v0[9];
    }

    else
    {
      v23 = v0[14];
      v36 = v21;
      v24 = v0[11];
      v25 = v0[12];
      v37 = v0[8];
      v26 = v0[7];
      v15(v23, v0[9], v24);
      sub_1D72583EC();
      (*(v25 + 16))(v26, v23, v24);
      (*(v25 + 56))(v26, 0, 1, v24);
      sub_1D725854C();

      sub_1D5CF274C(v26, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      (*(v25 + 8))(v23, v24);
      if (v36(v37, 1, v24) != 1)
      {
        v33 = v0[15];
        v34 = v0[13];
        v35 = v0[11];
        v15(v34, v0[8], v35);
        v15(v33, v34, v35);
        goto LABEL_16;
      }

      v22 = v0[8];
    }

    sub_1D5CF274C(v22, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  }

  (*(v0[12] + 16))(v0[15], v0[16], v0[11]);
LABEL_16:
  v27 = swift_task_alloc();
  v0[19] = v27;
  *v27 = v0;
  v27[1] = sub_1D5E82B5C;
  v28 = v0[15];
  v29 = v0[10];
  v31 = v0[5];
  v30 = v0[6];
  v32 = v0[2];

  return sub_1D5E8B2D0(v32, v28, v30, v31, v29);
}

uint64_t sub_1D5E82B5C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1D5EA21C8;
  }

  else
  {
    v2 = sub_1D5EA2280;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E82C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[41] = a4;
  v5[42] = v4;
  v5[39] = a2;
  v5[40] = a3;
  v5[38] = a1;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  type metadata accessor for FormatMetadata();
  v5[46] = swift_task_alloc();
  v6 = sub_1D72585BC();
  v5[47] = v6;
  v5[48] = *(v6 - 8);
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  sub_1D5C2CA80(0, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
  v5[52] = v7;
  v5[53] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E82E58, 0, 0);
}

uint64_t sub_1D5E82E58()
{
  sub_1D5E9DB98(v0[39], v0[53], &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = v0[53];
      v3 = v0[38];
      sub_1D5EA17B4(0, &qword_1EDF341E0);
      v5 = *(v4 + 48);
      v40 = v2[6];
      v41 = v2[7];
      v42 = v2[8];
      v38 = v2[4];
      v39 = v2[5];
      v36 = v2[2];
      v37 = v2[3];
      v34 = *v2;
      v35 = v2[1];
      sub_1D5C2CA80(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
      sub_1D5CEFF38(v2 + v5, v3 + *(v6 + 36), type metadata accessor for FormatMetadata);
      v3[6] = v40;
      v3[7] = v41;
      v3[8] = v42;
      v3[2] = v36;
      v3[3] = v37;
      v3[4] = v38;
      v3[5] = v39;
      *v3 = v34;
      v3[1] = v35;
    }

    else
    {
      type metadata accessor for FormatServiceError();
      sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    v7 = v0[1];

    return v7();
  }

  v8 = v0[53];
  v9 = v0[51];
  v10 = v0[47];
  v11 = v0[48];
  v12 = v0[46];
  sub_1D5E9D830(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
  v14 = *(v13 + 48);
  v15 = *(v11 + 32);
  v15(v9, v8, v10);
  sub_1D5CEFF38(v8 + v14, v12, type metadata accessor for FormatMetadata);
  sub_1D725850C();
  if (v16)
  {
  }

  else
  {
    v18 = v0[47];
    v19 = v0[48];
    v20 = v0[45];
    sub_1D5CF23F8(v0[40], v20, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v21 = *(v19 + 48);
    if (v21(v20, 1, v18) == 1)
    {
      v22 = v0[45];
    }

    else
    {
      v32 = v21;
      v23 = v0[48];
      v24 = v0[49];
      v25 = v0[47];
      v33 = v0[44];
      v26 = v0[43];
      v15(v24, v0[45], v25);
      sub_1D72583EC();
      (*(v23 + 16))(v26, v24, v25);
      (*(v23 + 56))(v26, 0, 1, v25);
      sub_1D725854C();

      sub_1D5CF274C(v26, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      (*(v23 + 8))(v24, v25);
      if (v32(v33, 1, v25) != 1)
      {
        v15(v0[50], v0[44], v0[47]);
        goto LABEL_16;
      }

      v22 = v0[44];
    }

    sub_1D5CF274C(v22, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  }

  (*(v0[48] + 16))(v0[50], v0[51], v0[47]);
LABEL_16:
  v27 = *(v0[42] + 136);
  v28 = sub_1D725844C();
  v29 = [v27 assetHandleForURL:v28 lifetimeHint:1];
  v0[54] = v29;

  v30 = swift_task_alloc();
  v0[55] = v30;
  *v30 = v0;
  v30[1] = sub_1D5E83490;
  v31 = v0[41];

  return sub_1D5E8D02C((v0 + 2), v29, v31);
}

uint64_t sub_1D5E83490()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_1D5E8377C;
  }

  else
  {
    v2 = sub_1D5E835A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E835A4()
{
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 376);
  v4 = *(v0 + 384);
  v5 = *(v0 + 368);
  v6 = *(v0 + 304);

  v7 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v7;
  *(v0 + 288) = *(v0 + 144);
  v8 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v8;
  v9 = *(v0 + 96);
  *(v0 + 224) = *(v0 + 80);
  *(v0 + 240) = v9;
  v10 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v10;
  sub_1D5C2CA80(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
  sub_1D5CEFE68(v5, v6 + *(v11 + 36), type metadata accessor for FormatMetadata);
  *v6 = *(v0 + 160);
  v12 = *(v0 + 224);
  v14 = *(v0 + 176);
  v13 = *(v0 + 192);
  v6[3] = *(v0 + 208);
  v6[4] = v12;
  v6[1] = v14;
  v6[2] = v13;
  v15 = *(v0 + 288);
  v17 = *(v0 + 240);
  v16 = *(v0 + 256);
  v6[7] = *(v0 + 272);
  v6[8] = v15;
  v6[5] = v17;
  v6[6] = v16;
  v18 = *(v4 + 8);
  v18(v2, v3);
  sub_1D5EA08F4(v5, type metadata accessor for FormatMetadata);
  v18(v1, v3);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1D5E8377C()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = *(v0 + 376);
  v4 = *(v0 + 384);
  v5 = *(v0 + 368);

  v6 = *(v4 + 8);
  v6(v1, v3);
  sub_1D5EA08F4(v5, type metadata accessor for FormatMetadata);
  v6(v2, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D5E8389C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[37] = a4;
  v5[38] = v4;
  v5[35] = a2;
  v5[36] = a3;
  v5[34] = a1;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  type metadata accessor for FormatMetadata();
  v5[42] = swift_task_alloc();
  v6 = sub_1D72585BC();
  v5[43] = v6;
  v5[44] = *(v6 - 8);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  sub_1D5C2CA80(0, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
  v5[48] = v7;
  v5[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E83A84, 0, 0);
}

uint64_t sub_1D5E83A84()
{
  sub_1D5E9DB98(v0[35], v0[49], &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = v0[49];
      v3 = v0[34];
      sub_1D5EA17B4(0, &qword_1EDF34648);
      v5 = *(v4 + 48);
      v38 = v2[4];
      v39 = v2[5];
      *v40 = v2[6];
      *&v40[9] = *(v2 + 105);
      v34 = *v2;
      v35 = v2[1];
      v36 = v2[2];
      v37 = v2[3];
      sub_1D5C2CA80(0, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
      sub_1D5CEFF38(v2 + v5, v3 + *(v6 + 36), type metadata accessor for FormatMetadata);
      v3[4] = v38;
      v3[5] = v39;
      v3[6] = *v40;
      *(v3 + 105) = *&v40[9];
      *v3 = v34;
      v3[1] = v35;
      v3[2] = v36;
      v3[3] = v37;
    }

    else
    {
      type metadata accessor for FormatServiceError();
      sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    v7 = v0[1];

    return v7();
  }

  v8 = v0[49];
  v9 = v0[47];
  v10 = v0[43];
  v11 = v0[44];
  v12 = v0[42];
  sub_1D5E9D830(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
  v14 = *(v13 + 48);
  v15 = *(v11 + 32);
  v15(v9, v8, v10);
  sub_1D5CEFF38(v8 + v14, v12, type metadata accessor for FormatMetadata);
  sub_1D725850C();
  if (v16)
  {
  }

  else
  {
    v18 = v0[43];
    v19 = v0[44];
    v20 = v0[41];
    sub_1D5CF23F8(v0[36], v20, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v21 = *(v19 + 48);
    if (v21(v20, 1, v18) == 1)
    {
      v22 = v0[41];
    }

    else
    {
      v32 = v21;
      v23 = v0[44];
      v24 = v0[45];
      v25 = v0[43];
      v33 = v0[40];
      v26 = v0[39];
      v15(v24, v0[41], v25);
      sub_1D72583EC();
      (*(v23 + 16))(v26, v24, v25);
      (*(v23 + 56))(v26, 0, 1, v25);
      sub_1D725854C();

      sub_1D5CF274C(v26, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      (*(v23 + 8))(v24, v25);
      if (v32(v33, 1, v25) != 1)
      {
        v15(v0[46], v0[40], v0[43]);
        goto LABEL_16;
      }

      v22 = v0[40];
    }

    sub_1D5CF274C(v22, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  }

  (*(v0[44] + 16))(v0[46], v0[47], v0[43]);
LABEL_16:
  v27 = *(v0[38] + 136);
  v28 = sub_1D725844C();
  v29 = [v27 assetHandleForURL:v28 lifetimeHint:1];
  v0[50] = v29;

  v30 = swift_task_alloc();
  v0[51] = v30;
  *v30 = v0;
  v30[1] = sub_1D5E840BC;
  v31 = v0[37];

  return sub_1D5E8E1B8((v0 + 2), v29, v31);
}

uint64_t sub_1D5E840BC()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_1D5E843A8;
  }

  else
  {
    v2 = sub_1D5E841D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E841D0()
{
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = *(v0 + 344);
  v4 = *(v0 + 352);
  v5 = *(v0 + 336);
  v6 = *(v0 + 272);

  v7 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v7;
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 249) = *(v0 + 121);
  v8 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v8;
  v9 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v9;
  sub_1D5C2CA80(0, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  sub_1D5CEFE68(v5, v6 + *(v10 + 36), type metadata accessor for FormatMetadata);
  v11 = *(v0 + 192);
  v13 = *(v0 + 144);
  v12 = *(v0 + 160);
  v6[2] = *(v0 + 176);
  v6[3] = v11;
  *v6 = v13;
  v6[1] = v12;
  v15 = *(v0 + 224);
  v14 = *(v0 + 240);
  v16 = *(v0 + 208);
  *(v6 + 105) = *(v0 + 249);
  v6[5] = v15;
  v6[6] = v14;
  v6[4] = v16;
  v17 = *(v4 + 8);
  v17(v2, v3);
  sub_1D5EA08F4(v5, type metadata accessor for FormatMetadata);
  v17(v1, v3);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D5E843A8()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);
  v3 = *(v0 + 344);
  v4 = *(v0 + 352);
  v5 = *(v0 + 336);

  v6 = *(v4 + 8);
  v6(v1, v3);
  sub_1D5EA08F4(v5, type metadata accessor for FormatMetadata);
  v6(v2, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D5E844C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  type metadata accessor for FormatMetadata();
  v5[28] = swift_task_alloc();
  v6 = sub_1D72585BC();
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  sub_1D5C2CA80(0, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
  v5[34] = v7;
  v5[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E846B0, 0, 0);
}

uint64_t sub_1D5E846B0()
{
  sub_1D5E9DB98(v0[21], v0[35], &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = v0[35];
      v3 = v0[20];
      sub_1D5EA17B4(0, &qword_1EDF34010);
      v5 = *(v4 + 48);
      v38 = *(v2 + 8);
      v36 = v2[2];
      v37 = v2[3];
      v34 = *v2;
      v35 = v2[1];
      sub_1D5C2CA80(0, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
      sub_1D5CEFF38(v2 + v5, v3 + *(v6 + 36), type metadata accessor for FormatMetadata);
      *(v3 + 32) = v36;
      *(v3 + 48) = v37;
      *(v3 + 64) = v38;
      *v3 = v34;
      *(v3 + 16) = v35;
    }

    else
    {
      type metadata accessor for FormatServiceError();
      sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    v7 = v0[1];

    return v7();
  }

  v8 = v0[35];
  v9 = v0[33];
  v10 = v0[29];
  v11 = v0[30];
  v12 = v0[28];
  sub_1D5E9D830(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
  v14 = *(v13 + 48);
  v15 = *(v11 + 32);
  v15(v9, v8, v10);
  sub_1D5CEFF38(v8 + v14, v12, type metadata accessor for FormatMetadata);
  sub_1D725850C();
  if (v16)
  {
  }

  else
  {
    v18 = v0[29];
    v19 = v0[30];
    v20 = v0[27];
    sub_1D5CF23F8(v0[22], v20, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v21 = *(v19 + 48);
    if (v21(v20, 1, v18) == 1)
    {
      v22 = v0[27];
    }

    else
    {
      v32 = v21;
      v23 = v0[30];
      v24 = v0[31];
      v25 = v0[29];
      v33 = v0[26];
      v26 = v0[25];
      v15(v24, v0[27], v25);
      sub_1D72583EC();
      (*(v23 + 16))(v26, v24, v25);
      (*(v23 + 56))(v26, 0, 1, v25);
      sub_1D725854C();

      sub_1D5CF274C(v26, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      (*(v23 + 8))(v24, v25);
      if (v32(v33, 1, v25) != 1)
      {
        v15(v0[32], v0[26], v0[29]);
        goto LABEL_16;
      }

      v22 = v0[26];
    }

    sub_1D5CF274C(v22, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  }

  (*(v0[30] + 16))(v0[32], v0[33], v0[29]);
LABEL_16:
  v27 = *(v0[24] + 136);
  v28 = sub_1D725844C();
  v29 = [v27 assetHandleForURL:v28 lifetimeHint:1];
  v0[36] = v29;

  v30 = swift_task_alloc();
  v0[37] = v30;
  *v30 = v0;
  v30[1] = sub_1D5E84CC8;
  v31 = v0[23];

  return sub_1D5E8FC98((v0 + 2), v29, v31);
}

uint64_t sub_1D5E84CC8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1D5E84FA8;
  }

  else
  {
    v2 = sub_1D5E84DDC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E84DDC()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  v5 = *(v0 + 224);
  v6 = *(v0 + 160);

  v7 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v8 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v8;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v7;
  sub_1D5C2CA80(0, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
  sub_1D5CEFE68(v5, v6 + *(v9 + 36), type metadata accessor for FormatMetadata);
  *v6 = *(v0 + 88);
  v10 = *(v0 + 120);
  v11 = *(v0 + 136);
  v12 = *(v0 + 104);
  *(v6 + 64) = *(v0 + 152);
  *(v6 + 32) = v10;
  *(v6 + 48) = v11;
  *(v6 + 16) = v12;
  v13 = *(v4 + 8);
  v13(v2, v3);
  sub_1D5EA08F4(v5, type metadata accessor for FormatMetadata);
  v13(v1, v3);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D5E84FA8()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  v5 = *(v0 + 224);

  v6 = *(v4 + 8);
  v6(v1, v3);
  sub_1D5EA08F4(v5, type metadata accessor for FormatMetadata);
  v6(v2, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D5E850C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[33] = a4;
  v5[34] = v4;
  v5[31] = a2;
  v5[32] = a3;
  v5[30] = a1;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  type metadata accessor for FormatMetadata();
  v5[38] = swift_task_alloc();
  v6 = sub_1D72585BC();
  v5[39] = v6;
  v5[40] = *(v6 - 8);
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  sub_1D5C2CA80(0, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
  v5[44] = v7;
  v5[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E852B0, 0, 0);
}

uint64_t sub_1D5E852B0()
{
  sub_1D5E9DB98(v0[31], v0[45], &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = v0[45];
      v3 = v0[30];
      sub_1D5EA17B4(0, &qword_1EDF2BE08);
      v5 = *(v4 + 48);
      v38 = v2[4];
      *v39 = v2[5];
      *&v39[9] = *(v2 + 89);
      v34 = *v2;
      v35 = v2[1];
      v36 = v2[2];
      v37 = v2[3];
      sub_1D5C2CA80(0, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
      sub_1D5CEFF38(v2 + v5, v3 + *(v6 + 36), type metadata accessor for FormatMetadata);
      v3[4] = v38;
      v3[5] = *v39;
      *(v3 + 89) = *&v39[9];
      *v3 = v34;
      v3[1] = v35;
      v3[2] = v36;
      v3[3] = v37;
    }

    else
    {
      type metadata accessor for FormatServiceError();
      sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    v7 = v0[1];

    return v7();
  }

  v8 = v0[45];
  v9 = v0[43];
  v10 = v0[39];
  v11 = v0[40];
  v12 = v0[38];
  sub_1D5E9D830(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
  v14 = *(v13 + 48);
  v15 = *(v11 + 32);
  v15(v9, v8, v10);
  sub_1D5CEFF38(v8 + v14, v12, type metadata accessor for FormatMetadata);
  sub_1D725850C();
  if (v16)
  {
  }

  else
  {
    v18 = v0[39];
    v19 = v0[40];
    v20 = v0[37];
    sub_1D5CF23F8(v0[32], v20, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v21 = *(v19 + 48);
    if (v21(v20, 1, v18) == 1)
    {
      v22 = v0[37];
    }

    else
    {
      v32 = v21;
      v23 = v0[40];
      v24 = v0[41];
      v25 = v0[39];
      v33 = v0[36];
      v26 = v0[35];
      v15(v24, v0[37], v25);
      sub_1D72583EC();
      (*(v23 + 16))(v26, v24, v25);
      (*(v23 + 56))(v26, 0, 1, v25);
      sub_1D725854C();

      sub_1D5CF274C(v26, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      (*(v23 + 8))(v24, v25);
      if (v32(v33, 1, v25) != 1)
      {
        v15(v0[42], v0[36], v0[39]);
        goto LABEL_16;
      }

      v22 = v0[36];
    }

    sub_1D5CF274C(v22, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  }

  (*(v0[40] + 16))(v0[42], v0[43], v0[39]);
LABEL_16:
  v27 = *(v0[34] + 136);
  v28 = sub_1D725844C();
  v29 = [v27 assetHandleForURL:v28 lifetimeHint:1];
  v0[46] = v29;

  v30 = swift_task_alloc();
  v0[47] = v30;
  *v30 = v0;
  v30[1] = sub_1D5E858D8;
  v31 = v0[33];

  return sub_1D5E90D28((v0 + 2), v29, v31);
}

uint64_t sub_1D5E858D8()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_1D5E85BBC;
  }

  else
  {
    v2 = sub_1D5E859EC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E859EC()
{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v5 = *(v0 + 304);
  v6 = *(v0 + 240);

  v7 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 80);
  *(v0 + 208) = v7;
  *(v0 + 217) = *(v0 + 105);
  v8 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v8;
  v9 = *(v0 + 64);
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = v9;
  sub_1D5C2CA80(0, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
  sub_1D5CEFE68(v5, v6 + *(v10 + 36), type metadata accessor for FormatMetadata);
  v12 = *(v0 + 144);
  v11 = *(v0 + 160);
  *v6 = *(v0 + 128);
  v6[1] = v12;
  v6[2] = v11;
  v14 = *(v0 + 192);
  v13 = *(v0 + 208);
  v15 = *(v0 + 176);
  *(v6 + 89) = *(v0 + 217);
  v6[4] = v14;
  v6[5] = v13;
  v6[3] = v15;
  v16 = *(v4 + 8);
  v16(v2, v3);
  sub_1D5EA08F4(v5, type metadata accessor for FormatMetadata);
  v16(v1, v3);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D5E85BBC()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v5 = *(v0 + 304);

  v6 = *(v4 + 8);
  v6(v1, v3);
  sub_1D5EA08F4(v5, type metadata accessor for FormatMetadata);
  v6(v2, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D5E85CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  type metadata accessor for FormatMetadata();
  v5[32] = swift_task_alloc();
  v6 = sub_1D72585BC();
  v5[33] = v6;
  v5[34] = *(v6 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  sub_1D5C2CA80(0, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
  v5[38] = v7;
  v5[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E85EC4, 0, 0);
}

uint64_t sub_1D5E85EC4()
{
  sub_1D5E9DB98(v0[25], v0[39], &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = v0[39];
      v3 = v0[24];
      sub_1D5EA17B4(0, &qword_1EDF343F0);
      v5 = *(v4 + 48);
      v37 = v2[3];
      v38 = v2[4];
      v39 = *(v2 + 80);
      v35 = v2[1];
      v36 = v2[2];
      v34 = *v2;
      sub_1D5C2CA80(0, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
      sub_1D5CEFF38(v2 + v5, v3 + *(v6 + 36), type metadata accessor for FormatMetadata);
      *(v3 + 32) = v36;
      *(v3 + 48) = v37;
      *(v3 + 64) = v38;
      *(v3 + 80) = v39;
      *v3 = v34;
      *(v3 + 16) = v35;
    }

    else
    {
      type metadata accessor for FormatServiceError();
      sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    v7 = v0[1];

    return v7();
  }

  v8 = v0[39];
  v9 = v0[37];
  v10 = v0[33];
  v11 = v0[34];
  v12 = v0[32];
  sub_1D5E9D830(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
  v14 = *(v13 + 48);
  v15 = *(v11 + 32);
  v15(v9, v8, v10);
  sub_1D5CEFF38(v8 + v14, v12, type metadata accessor for FormatMetadata);
  sub_1D725850C();
  if (v16)
  {
  }

  else
  {
    v18 = v0[33];
    v19 = v0[34];
    v20 = v0[31];
    sub_1D5CF23F8(v0[26], v20, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v21 = *(v19 + 48);
    if (v21(v20, 1, v18) == 1)
    {
      v22 = v0[31];
    }

    else
    {
      v32 = v21;
      v23 = v0[34];
      v24 = v0[35];
      v25 = v0[33];
      v33 = v0[30];
      v26 = v0[29];
      v15(v24, v0[31], v25);
      sub_1D72583EC();
      (*(v23 + 16))(v26, v24, v25);
      (*(v23 + 56))(v26, 0, 1, v25);
      sub_1D725854C();

      sub_1D5CF274C(v26, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      (*(v23 + 8))(v24, v25);
      if (v32(v33, 1, v25) != 1)
      {
        v15(v0[36], v0[30], v0[33]);
        goto LABEL_16;
      }

      v22 = v0[30];
    }

    sub_1D5CF274C(v22, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  }

  (*(v0[34] + 16))(v0[36], v0[37], v0[33]);
LABEL_16:
  v27 = *(v0[28] + 136);
  v28 = sub_1D725844C();
  v29 = [v27 assetHandleForURL:v28 lifetimeHint:1];
  v0[40] = v29;

  v30 = swift_task_alloc();
  v0[41] = v30;
  *v30 = v0;
  v30[1] = sub_1D5E864EC;
  v31 = v0[27];

  return sub_1D5E91D3C((v0 + 2), v29, v31);
}

uint64_t sub_1D5E864EC()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1D5E867D8;
  }

  else
  {
    v2 = sub_1D5E86600;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E86600()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 264);
  v4 = *(v0 + 272);
  v5 = *(v0 + 256);
  v6 = *(v0 + 192);

  v7 = *(v0 + 64);
  *(v0 + 136) = *(v0 + 48);
  *(v0 + 152) = v7;
  *(v0 + 168) = *(v0 + 80);
  *(v0 + 184) = *(v0 + 96);
  v8 = *(v0 + 32);
  *(v0 + 104) = *(v0 + 16);
  *(v0 + 120) = v8;
  sub_1D5C2CA80(0, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
  sub_1D5CEFE68(v5, v6 + *(v9 + 36), type metadata accessor for FormatMetadata);
  v10 = *(v0 + 120);
  *v6 = *(v0 + 104);
  *(v6 + 16) = v10;
  v11 = *(v0 + 152);
  v12 = *(v0 + 168);
  v13 = *(v0 + 136);
  *(v6 + 80) = *(v0 + 184);
  *(v6 + 48) = v11;
  *(v6 + 64) = v12;
  *(v6 + 32) = v13;
  v14 = *(v4 + 8);
  v14(v2, v3);
  sub_1D5EA08F4(v5, type metadata accessor for FormatMetadata);
  v14(v1, v3);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1D5E867D8()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = *(v0 + 264);
  v4 = *(v0 + 272);
  v5 = *(v0 + 256);

  v6 = *(v4 + 8);
  v6(v1, v3);
  sub_1D5EA08F4(v5, type metadata accessor for FormatMetadata);
  v6(v2, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D5E868F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[33] = a4;
  v5[34] = v4;
  v5[31] = a2;
  v5[32] = a3;
  v5[30] = a1;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  type metadata accessor for FormatMetadata();
  v5[38] = swift_task_alloc();
  v6 = sub_1D72585BC();
  v5[39] = v6;
  v5[40] = *(v6 - 8);
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  sub_1D5C2CA80(0, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
  v5[44] = v7;
  v5[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E86AE0, 0, 0);
}

uint64_t sub_1D5E86AE0()
{
  sub_1D5E9DB98(v0[31], v0[45], &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = v0[45];
      v3 = v0[30];
      sub_1D5EA17B4(0, &qword_1EDF30528);
      v5 = *(v4 + 48);
      v38 = v2[4];
      *v39 = v2[5];
      *&v39[11] = *(v2 + 91);
      v34 = *v2;
      v35 = v2[1];
      v36 = v2[2];
      v37 = v2[3];
      sub_1D5C2CA80(0, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
      sub_1D5CEFF38(v2 + v5, v3 + *(v6 + 36), type metadata accessor for FormatMetadata);
      v3[4] = v38;
      v3[5] = *v39;
      *(v3 + 91) = *&v39[11];
      *v3 = v34;
      v3[1] = v35;
      v3[2] = v36;
      v3[3] = v37;
    }

    else
    {
      type metadata accessor for FormatServiceError();
      sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    v7 = v0[1];

    return v7();
  }

  v8 = v0[45];
  v9 = v0[43];
  v10 = v0[39];
  v11 = v0[40];
  v12 = v0[38];
  sub_1D5E9D830(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
  v14 = *(v13 + 48);
  v15 = *(v11 + 32);
  v15(v9, v8, v10);
  sub_1D5CEFF38(v8 + v14, v12, type metadata accessor for FormatMetadata);
  sub_1D725850C();
  if (v16)
  {
  }

  else
  {
    v18 = v0[39];
    v19 = v0[40];
    v20 = v0[37];
    sub_1D5CF23F8(v0[32], v20, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v21 = *(v19 + 48);
    if (v21(v20, 1, v18) == 1)
    {
      v22 = v0[37];
    }

    else
    {
      v32 = v21;
      v23 = v0[40];
      v24 = v0[41];
      v25 = v0[39];
      v33 = v0[36];
      v26 = v0[35];
      v15(v24, v0[37], v25);
      sub_1D72583EC();
      (*(v23 + 16))(v26, v24, v25);
      (*(v23 + 56))(v26, 0, 1, v25);
      sub_1D725854C();

      sub_1D5CF274C(v26, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      (*(v23 + 8))(v24, v25);
      if (v32(v33, 1, v25) != 1)
      {
        v15(v0[42], v0[36], v0[39]);
        goto LABEL_16;
      }

      v22 = v0[36];
    }

    sub_1D5CF274C(v22, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  }

  (*(v0[40] + 16))(v0[42], v0[43], v0[39]);
LABEL_16:
  v27 = *(v0[34] + 136);
  v28 = sub_1D725844C();
  v29 = [v27 assetHandleForURL:v28 lifetimeHint:1];
  v0[46] = v29;

  v30 = swift_task_alloc();
  v0[47] = v30;
  *v30 = v0;
  v30[1] = sub_1D5E87108;
  v31 = v0[33];

  return sub_1D5E92E28((v0 + 2), v29, v31);
}

uint64_t sub_1D5E87108()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_1D5E85BBC;
  }

  else
  {
    v2 = sub_1D5E8721C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E8721C()
{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v5 = *(v0 + 304);
  v6 = *(v0 + 240);

  v7 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 80);
  *(v0 + 208) = v7;
  *(v0 + 219) = *(v0 + 107);
  v8 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v8;
  v9 = *(v0 + 64);
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = v9;
  sub_1D5C2CA80(0, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
  sub_1D5CEFE68(v5, v6 + *(v10 + 36), type metadata accessor for FormatMetadata);
  v12 = *(v0 + 144);
  v11 = *(v0 + 160);
  *v6 = *(v0 + 128);
  v6[1] = v12;
  v6[2] = v11;
  v14 = *(v0 + 192);
  v13 = *(v0 + 208);
  v15 = *(v0 + 176);
  *(v6 + 91) = *(v0 + 219);
  v6[4] = v14;
  v6[5] = v13;
  v6[3] = v15;
  v16 = *(v4 + 8);
  v16(v2, v3);
  sub_1D5EA08F4(v5, type metadata accessor for FormatMetadata);
  v16(v1, v3);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D5E873EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  type metadata accessor for FormatMetadata();
  v5[17] = swift_task_alloc();
  v6 = sub_1D72585BC();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  sub_1D5C2CA80(0, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
  v5[23] = v7;
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E875D4, 0, 0);
}

uint64_t sub_1D5E875D4()
{
  sub_1D5E9DB98(v0[10], v0[24], &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = v0[24];
      v3 = v0[9];
      sub_1D5EA17B4(0, &qword_1EDF2DC48);
      v5 = *(v4 + 48);
      v6 = *v2;
      v7 = v2[1];
      v8 = v2[6];
      sub_1D5C2CA80(0, &qword_1EDF338D0, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatObject);
      v35 = *(v2 + 2);
      v37 = *(v2 + 1);
      sub_1D5CEFF38(v2 + v5, v3 + *(v9 + 36), type metadata accessor for FormatMetadata);
      *v3 = v6;
      *(v3 + 8) = v7;
      *(v3 + 16) = v37;
      *(v3 + 32) = v35;
      *(v3 + 48) = v8;
    }

    else
    {
      type metadata accessor for FormatServiceError();
      sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    v10 = v0[1];

    return v10();
  }

  v11 = v0[24];
  v12 = v0[22];
  v13 = v0[18];
  v14 = v0[19];
  v15 = v0[17];
  sub_1D5E9D830(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
  v17 = *(v16 + 48);
  v18 = *(v14 + 32);
  v18(v12, v11, v13);
  sub_1D5CEFF38(v11 + v17, v15, type metadata accessor for FormatMetadata);
  sub_1D725850C();
  if (v19)
  {
  }

  else
  {
    v21 = v0[18];
    v22 = v0[19];
    v23 = v0[16];
    sub_1D5CF23F8(v0[11], v23, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v24 = *(v22 + 48);
    if (v24(v23, 1, v21) == 1)
    {
      v25 = v0[16];
    }

    else
    {
      v36 = v24;
      v26 = v0[19];
      v27 = v0[20];
      v28 = v0[18];
      v38 = v0[15];
      v29 = v0[14];
      v18(v27, v0[16], v28);
      sub_1D72583EC();
      (*(v26 + 16))(v29, v27, v28);
      (*(v26 + 56))(v29, 0, 1, v28);
      sub_1D725854C();

      sub_1D5CF274C(v29, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      (*(v26 + 8))(v27, v28);
      if (v36(v38, 1, v28) != 1)
      {
        v18(v0[21], v0[15], v0[18]);
        goto LABEL_16;
      }

      v25 = v0[15];
    }

    sub_1D5CF274C(v25, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  }

  (*(v0[19] + 16))(v0[21], v0[22], v0[18]);
LABEL_16:
  v30 = *(v0[13] + 136);
  v31 = sub_1D725844C();
  v32 = [v30 assetHandleForURL:v31 lifetimeHint:1];
  v0[25] = v32;

  v33 = swift_task_alloc();
  v0[26] = v33;
  *v33 = v0;
  v33[1] = sub_1D5E87BE0;
  v34 = v0[12];

  return sub_1D5E93F3C((v0 + 2), v32, v34);
}

uint64_t sub_1D5E87BE0()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1D5E87EA4;
  }

  else
  {
    v2 = sub_1D5E87CF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E87CF4()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 136);
  v6 = *(v0 + 72);

  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 64);
  sub_1D5C2CA80(0, &qword_1EDF338D0, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatObject);
  v14 = *(v0 + 48);
  v15 = *(v0 + 32);
  sub_1D5CEFE68(v5, v6 + *(v10 + 36), type metadata accessor for FormatMetadata);
  *v6 = v7;
  *(v6 + 8) = v8;
  *(v6 + 16) = v15;
  *(v6 + 32) = v14;
  *(v6 + 48) = v9;
  v11 = *(v4 + 8);
  v11(v2, v3);
  sub_1D5EA08F4(v5, type metadata accessor for FormatMetadata);
  v11(v1, v3);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D5E87EA4()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 136);

  v6 = *(v4 + 8);
  v6(v1, v3);
  sub_1D5EA08F4(v5, type metadata accessor for FormatMetadata);
  v6(v2, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D5E87FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  sub_1D5C2AB28(0);
  v7[9] = v8;
  v7[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E88064, 0, 0);
}

uint64_t sub_1D5E88064()
{
  v1 = v0[10];
  v2 = v0[3];
  sub_1D5E9D830(0, &unk_1EC88B470, type metadata accessor for FormatPackage, type metadata accessor for FormatMetadata);
  v4 = *(v3 + 48);
  sub_1D5CEFE68(v2, v1, type metadata accessor for FormatPackage);
  sub_1D6B197D8((v1 + v4));
  swift_storeEnumTagMultiPayload();
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1D5E88194;
  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[6];

  return sub_1D5E7B834(v6, v9, v7, v8);
}

uint64_t sub_1D5E88194(uint64_t a1)
{
  v4 = *v2;
  v4[12] = v1;

  v5 = v4[10];
  if (v1)
  {
    sub_1D5EA08F4(v5, sub_1D5C2AB28);
    v6 = sub_1D5E88374;
  }

  else
  {
    v4[13] = a1;
    sub_1D5EA08F4(v5, sub_1D5C2AB28);
    v6 = sub_1D5E88304;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D5E88304()
{
  **(v0 + 16) = *(v0 + 104);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E88374()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E883D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  sub_1D5C2AB28(0);
  v9 = *(v8 - 8);
  v7[11] = v9;
  v7[12] = *(v9 + 64);
  v7[13] = swift_task_alloc();
  v10 = *(type metadata accessor for FormatServiceOptions() - 8);
  v7[14] = v10;
  v7[15] = *(v10 + 64);
  v7[16] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v12 = *(v11 - 8);
  v7[17] = v12;
  v7[18] = *(v12 + 64);
  v7[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E88598, 0, 0);
}

uint64_t sub_1D5E88598()
{
  v1 = *(*(v0 + 40) + 56);
  *(v0 + 160) = v1;
  if (*(v1 + 16))
  {
    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v4 = *(v0 + 128);
    v5 = *(v0 + 136);
    v6 = *(v0 + 112);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v0 + 48);

    v10 = MEMORY[0x1E6968FB0];
    sub_1D5CF23F8(v8, v2, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    sub_1D5CEFE68(v7, v4, type metadata accessor for FormatServiceOptions);
    v11 = *(v5 + 80);
    *(v0 + 240) = v11;
    v12 = (v11 + 24) & ~v11;
    v13 = *(v6 + 80);
    *(v0 + 244) = v13;
    v14 = (v3 + v13 + v12) & ~v13;
    v15 = swift_allocObject();
    *(v0 + 168) = v15;
    *(v15 + 16) = v9;
    sub_1D5E9E84C(v2, v15 + v12, &qword_1EDF45B40, v10, MEMORY[0x1E69E6720], sub_1D5CEFE04);
    sub_1D5CEFF38(v4, v15 + v14, type metadata accessor for FormatServiceOptions);

    v16 = swift_task_alloc();
    *(v0 + 176) = v16;
    sub_1D5CEFE04(0, &qword_1EDF1B170, sub_1D5C2AB28, MEMORY[0x1E69E62F8]);
    v18 = v17;
    sub_1D5E9EB74(0);
    v20 = v19;
    v21 = sub_1D5CF35F8(&qword_1EDF1B168, &qword_1EDF1B170, sub_1D5C2AB28);
    *v16 = v0;
    v16[1] = sub_1D5E88894;

    return MEMORY[0x1EEE45320](&unk_1D7279F58, v15, v18, v20, v21);
  }

  else
  {
    **(v0 + 32) = MEMORY[0x1E69E7CC0];

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1D5E88894(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_1D5E88E38;
  }

  else
  {
    *(v4 + 192) = a1;
    v5 = sub_1D5E889DC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D5E889DC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 244);
  v3 = *(v0 + 240);
  v4 = *(v0 + 152);
  v22 = v4;
  v23 = *(v0 + 128);
  v5 = *(v0 + 104);
  v26 = *(v0 + 96);
  v27 = *(v0 + 120);
  v6 = *(v0 + 80);
  v7 = *(v0 + 72);
  v21 = *(v0 + 64);
  v24 = *(v0 + 88);
  v25 = *(v0 + 144) + v2;
  v8 = *(v0 + 56);
  v28 = *(v0 + 48);
  os_unfair_lock_lock((v7 + 16));
  v9 = sub_1D5E9A604(v1, (v7 + 24));
  *(v0 + 200) = v9;

  os_unfair_lock_unlock((v7 + 16));
  *(v0 + 24) = v9;
  sub_1D5CEFE68(v6, v5, sub_1D5C2AB28);
  v10 = MEMORY[0x1E6968FB0];
  sub_1D5CF23F8(v8, v4, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D5CEFE68(v21, v23, type metadata accessor for FormatServiceOptions);
  v11 = (*(v24 + 80) + 24) & ~*(v24 + 80);
  v12 = (v26 + v3 + v11) & ~v3;
  v13 = (v25 + v12) & ~v2;
  v14 = swift_allocObject();
  *(v0 + 208) = v14;
  *(v14 + 16) = v28;
  sub_1D5CEFF38(v5, v14 + v11, sub_1D5C2AB28);
  sub_1D5E9E84C(v22, v14 + v12, &qword_1EDF45B40, v10, MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5CEFF38(v23, v14 + v13, type metadata accessor for FormatServiceOptions);
  *(v14 + ((v27 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;

  v15 = swift_task_alloc();
  *(v0 + 216) = v15;
  sub_1D5CEFE04(0, &qword_1EDF1B370, sub_1D5E9EB74, MEMORY[0x1E69E62F8]);
  v17 = v16;
  v18 = type metadata accessor for FormatPackageInventory();
  v19 = sub_1D5CF35F8(&qword_1EDF1B368, &qword_1EDF1B370, sub_1D5E9EB74);
  *v15 = v0;
  v15[1] = sub_1D5E88D00;

  return MEMORY[0x1EEE45320](&unk_1D7279F68, v14, v17, v18, v19);
}

uint64_t sub_1D5E88D00(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = sub_1D5E88F44;
  }

  else
  {

    *(v4 + 232) = a1;
    v5 = sub_1D5E88EBC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D5E88E38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E88EBC()
{
  **(v0 + 32) = *(v0 + 232);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E88F44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E88FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = *(type metadata accessor for FormatServiceOptions() - 8);
  v5[8] = v6;
  v5[9] = *(v6 + 64);
  v5[10] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v8 = *(v7 - 8);
  v5[11] = v8;
  v5[12] = *(v8 + 64);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E89134, 0, 0);
}

uint64_t sub_1D5E89134()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v0[14] = *(v0[5] + 64);

  v9 = MEMORY[0x1E6968FB0];
  sub_1D5CF23F8(v7, v1, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D5CEFE68(v6, v3, type metadata accessor for FormatServiceOptions);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = (v2 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v0[15] = v12;
  *(v12 + 16) = v8;
  sub_1D5E9E84C(v1, v12 + v10, &qword_1EDF45B40, v9, MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5CEFF38(v3, v12 + v11, type metadata accessor for FormatServiceOptions);

  v13 = swift_task_alloc();
  v0[16] = v13;
  sub_1D5EA1724();
  v15 = v14;
  sub_1D5C2CA80(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
  v17 = v16;
  v18 = sub_1D5C2AF10(&unk_1EDF1B198, 255, sub_1D5EA1724);
  *v13 = v0;
  v13[1] = sub_1D5E893C4;

  return MEMORY[0x1EEE45320](&unk_1D7279F38, v12, v15, v17, v18);
}

uint64_t sub_1D5E893C4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_1D5EA22A0;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_1D5EA2230;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D5E8952C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = *(type metadata accessor for FormatServiceOptions() - 8);
  v5[8] = v6;
  v5[9] = *(v6 + 64);
  v5[10] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v8 = *(v7 - 8);
  v5[11] = v8;
  v5[12] = *(v8 + 64);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E89688, 0, 0);
}

uint64_t sub_1D5E89688()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v0[14] = *(v0[5] + 72);

  v9 = MEMORY[0x1E6968FB0];
  sub_1D5CF23F8(v7, v1, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D5CEFE68(v6, v3, type metadata accessor for FormatServiceOptions);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = (v2 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v0[15] = v12;
  *(v12 + 16) = v8;
  sub_1D5E9E84C(v1, v12 + v10, &qword_1EDF45B40, v9, MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5CEFF38(v3, v12 + v11, type metadata accessor for FormatServiceOptions);

  v13 = swift_task_alloc();
  v0[16] = v13;
  sub_1D5EA14F4();
  v15 = v14;
  sub_1D5C2CA80(0, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  v17 = v16;
  v18 = sub_1D5C2AF10(&unk_1EDF1B1D0, 255, sub_1D5EA14F4);
  *v13 = v0;
  v13[1] = sub_1D5E893C4;

  return MEMORY[0x1EEE45320](&unk_1D7279F18, v12, v15, v17, v18);
}

uint64_t sub_1D5E89918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = *(type metadata accessor for FormatServiceOptions() - 8);
  v5[8] = v6;
  v5[9] = *(v6 + 64);
  v5[10] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v8 = *(v7 - 8);
  v5[11] = v8;
  v5[12] = *(v8 + 64);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E89A74, 0, 0);
}

uint64_t sub_1D5E89A74()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v0[14] = *(v0[5] + 88);

  v9 = MEMORY[0x1E6968FB0];
  sub_1D5CF23F8(v7, v1, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D5CEFE68(v6, v3, type metadata accessor for FormatServiceOptions);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = (v2 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v0[15] = v12;
  *(v12 + 16) = v8;
  sub_1D5E9E84C(v1, v12 + v10, &qword_1EDF45B40, v9, MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5CEFF38(v3, v12 + v11, type metadata accessor for FormatServiceOptions);

  v13 = swift_task_alloc();
  v0[16] = v13;
  sub_1D5CEFE04(0, &qword_1EDF1B160, sub_1D5EA1328, MEMORY[0x1E69E62F8]);
  v15 = v14;
  sub_1D5C2C40C(0);
  v17 = v16;
  v18 = sub_1D5CF35F8(&unk_1EDF1B150, &qword_1EDF1B160, sub_1D5EA1328);
  *v13 = v0;
  v13[1] = sub_1D5E893C4;

  return MEMORY[0x1EEE45320](&unk_1D7279F00, v12, v15, v17, v18);
}

uint64_t sub_1D5E89CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = *(type metadata accessor for FormatServiceOptions() - 8);
  v5[8] = v6;
  v5[9] = *(v6 + 64);
  v5[10] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v8 = *(v7 - 8);
  v5[11] = v8;
  v5[12] = *(v8 + 64);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E89E3C, 0, 0);
}

uint64_t sub_1D5E89E3C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v0[14] = *(v0[5] + 80);

  v9 = MEMORY[0x1E6968FB0];
  sub_1D5CF23F8(v7, v1, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D5CEFE68(v6, v3, type metadata accessor for FormatServiceOptions);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = (v2 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v0[15] = v12;
  *(v12 + 16) = v8;
  sub_1D5E9E84C(v1, v12 + v10, &qword_1EDF45B40, v9, MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5CEFF38(v3, v12 + v11, type metadata accessor for FormatServiceOptions);

  v13 = swift_task_alloc();
  v0[16] = v13;
  sub_1D5EA1114();
  v15 = v14;
  sub_1D5C2CA80(0, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
  v17 = v16;
  v18 = sub_1D5C2AF10(&unk_1EDF1B178, 255, sub_1D5EA1114);
  *v13 = v0;
  v13[1] = sub_1D5E893C4;

  return MEMORY[0x1EEE45320](&unk_1D7279EE0, v12, v15, v17, v18);
}

uint64_t sub_1D5E8A0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = *(type metadata accessor for FormatServiceOptions() - 8);
  v5[8] = v6;
  v5[9] = *(v6 + 64);
  v5[10] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v8 = *(v7 - 8);
  v5[11] = v8;
  v5[12] = *(v8 + 64);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E8A228, 0, 0);
}

uint64_t sub_1D5E8A228()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v0[14] = *(v0[5] + 96);

  v9 = MEMORY[0x1E6968FB0];
  sub_1D5CF23F8(v7, v1, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D5CEFE68(v6, v3, type metadata accessor for FormatServiceOptions);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = (v2 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v0[15] = v12;
  *(v12 + 16) = v8;
  sub_1D5E9E84C(v1, v12 + v10, &qword_1EDF45B40, v9, MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5CEFF38(v3, v12 + v11, type metadata accessor for FormatServiceOptions);

  v13 = swift_task_alloc();
  v0[16] = v13;
  sub_1D5EA0F00();
  v15 = v14;
  sub_1D5C2CA80(0, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
  v17 = v16;
  v18 = sub_1D5C2AF10(&unk_1EDF1B1F0, 255, sub_1D5EA0F00);
  *v13 = v0;
  v13[1] = sub_1D5E893C4;

  return MEMORY[0x1EEE45320](&unk_1D7279EC0, v12, v15, v17, v18);
}

uint64_t sub_1D5E8A4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = *(type metadata accessor for FormatServiceOptions() - 8);
  v5[8] = v6;
  v5[9] = *(v6 + 64);
  v5[10] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v8 = *(v7 - 8);
  v5[11] = v8;
  v5[12] = *(v8 + 64);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E8A614, 0, 0);
}

uint64_t sub_1D5E8A614()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v0[14] = *(v0[5] + 104);

  v9 = MEMORY[0x1E6968FB0];
  sub_1D5CF23F8(v7, v1, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D5CEFE68(v6, v3, type metadata accessor for FormatServiceOptions);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = (v2 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v0[15] = v12;
  *(v12 + 16) = v8;
  sub_1D5E9E84C(v1, v12 + v10, &qword_1EDF45B40, v9, MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5CEFF38(v3, v12 + v11, type metadata accessor for FormatServiceOptions);

  v13 = swift_task_alloc();
  v0[16] = v13;
  sub_1D5EA0CEC();
  v15 = v14;
  sub_1D5C2CA80(0, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
  v17 = v16;
  v18 = sub_1D5C2AF10(&unk_1EDF1B1B8, 255, sub_1D5EA0CEC);
  *v13 = v0;
  v13[1] = sub_1D5E893C4;

  return MEMORY[0x1EEE45320](&unk_1D7279EA0, v12, v15, v17, v18);
}

uint64_t sub_1D5E8A8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = *(type metadata accessor for FormatServiceOptions() - 8);
  v5[8] = v6;
  v5[9] = *(v6 + 64);
  v5[10] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v8 = *(v7 - 8);
  v5[11] = v8;
  v5[12] = *(v8 + 64);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E8AA00, 0, 0);
}

uint64_t sub_1D5E8AA00()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v0[14] = *(v0[5] + 112);

  v9 = MEMORY[0x1E6968FB0];
  sub_1D5CF23F8(v7, v1, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D5CEFE68(v6, v3, type metadata accessor for FormatServiceOptions);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = (v2 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v0[15] = v12;
  *(v12 + 16) = v8;
  sub_1D5E9E84C(v1, v12 + v10, &qword_1EDF45B40, v9, MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5CEFF38(v3, v12 + v11, type metadata accessor for FormatServiceOptions);

  v13 = swift_task_alloc();
  v0[16] = v13;
  sub_1D5EA0AD8();
  v15 = v14;
  sub_1D5C2CA80(0, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
  v17 = v16;
  v18 = sub_1D5C2AF10(&unk_1EDF1B230, 255, sub_1D5EA0AD8);
  *v13 = v0;
  v13[1] = sub_1D5E8AC90;

  return MEMORY[0x1EEE45320](&unk_1D7279E80, v12, v15, v17, v18);
}

uint64_t sub_1D5E8AC90(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_1D5E8AE74;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_1D5E8ADF8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D5E8ADF8()
{
  **(v0 + 24) = *(v0 + 144);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E8AE74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E8AEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = *(type metadata accessor for FormatServiceOptions() - 8);
  v5[8] = v6;
  v5[9] = *(v6 + 64);
  v5[10] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v8 = *(v7 - 8);
  v5[11] = v8;
  v5[12] = *(v8 + 64);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E8B040, 0, 0);
}

uint64_t sub_1D5E8B040()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v0[14] = *(v0[5] + 152);

  v9 = MEMORY[0x1E6968FB0];
  sub_1D5CF23F8(v7, v1, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D5CEFE68(v6, v3, type metadata accessor for FormatServiceOptions);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = (v2 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v0[15] = v12;
  *(v12 + 16) = v8;
  sub_1D5E9E84C(v1, v12 + v10, &qword_1EDF45B40, v9, MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5CEFF38(v3, v12 + v11, type metadata accessor for FormatServiceOptions);

  v13 = swift_task_alloc();
  v0[16] = v13;
  sub_1D5EA0744();
  v15 = v14;
  sub_1D5C2CA80(0, &qword_1EDF338D0, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatObject);
  v17 = v16;
  v18 = sub_1D5C2AF10(&unk_1EDF1B210, 255, sub_1D5EA0744);
  *v13 = v0;
  v13[1] = sub_1D5E893C4;

  return MEMORY[0x1EEE45320](&unk_1D7279E60, v12, v15, v17, v18);
}

uint64_t sub_1D5E8B2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5[15] = swift_task_alloc();
  v6 = sub_1D72585BC();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  type metadata accessor for FormatPackage();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E8B42C, 0, 0);
}

uint64_t sub_1D5E8B42C()
{
  v1 = *(v0[12] + 136);
  v2 = sub_1D725844C();
  v3 = [v1 assetHandleForURL:v2 lifetimeHint:1];
  v0[21] = v3;

  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_1D5E8B504;
  v5 = v0[20];
  v6 = v0[13];

  return sub_1D5E8BDE0(v5, v3, v6);
}

uint64_t sub_1D5E8B504()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1D5E8B618;
  }

  else
  {
    v2 = sub_1D5E8B6AC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E8B618()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E8B6AC()
{
  v1 = sub_1D5CEFE68(v0[20], v0[19], type metadata accessor for FormatPackage);
  if ((sub_1D5E5327C(v1, v2) & 1) != 0 && (v0[2] = sub_1D72583DC(), v0[3] = v3, v0[4] = 0x786F62706F72642FLL, v0[5] = 0xE90000000000002FLL, sub_1D5BF4D9C(), v4 = sub_1D7263ABC(), , (v4 & 1) == 0))
  {
    if (qword_1EC87D5C8 != -1)
    {
      swift_once();
    }

    type metadata accessor for FormatService();
    sub_1D5C2AF10(qword_1EDF33048, v12, type metadata accessor for FormatService);
    sub_1D725964C();
    v14 = v0[6];
    v13 = v0[7];
    if (qword_1EC87D5D0 != -1)
    {
      swift_once();
    }

    v15 = v0[19];
    v16 = v0[16];
    v17 = v0[17];
    v18 = v0[15];
    sub_1D725964C();
    v20 = v0[8];
    v19 = v0[9];
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](v14, v13);
    MEMORY[0x1DA6F9910](58, 0xE100000000000000);
    MEMORY[0x1DA6F9910](v20, v19);
    MEMORY[0x1DA6F9910](0x786F62706F72642FLL, 0xE90000000000002FLL);
    MEMORY[0x1DA6F9910](*v15, v15[1]);
    MEMORY[0x1DA6F9910](0x656966696E696D2DLL, 0xEE006E6F736A2E64);
    sub_1D725855C();

    result = (*(v17 + 48))(v18, 1, v16);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v22 = v0[17];
      v21 = v0[18];
      v24 = v0[15];
      v23 = v0[16];

      (*(v22 + 32))(v21, v24, v23);
      v25 = swift_task_alloc();
      v0[24] = v25;
      *v25 = v0;
      v25[1] = sub_1D5E8BAFC;
      v26 = v0[18];
      v27 = v0[13];
      v28 = v0[14];
      v29 = v0[12];
      v30 = v0[10];

      return sub_1D5E8B2D0(v30, v26, v29, v27, v28);
    }
  }

  else
  {
    v5 = v0[20];
    v6 = v0[21];
    v7 = v0[14];
    v8 = v0[10];
    sub_1D5EA08F4(v0[19], type metadata accessor for FormatPackage);

    sub_1D5CEFF38(v5, v8, type metadata accessor for FormatPackage);
    sub_1D5E9EB74(0);
    sub_1D5CEFE68(v7, v8 + *(v9 + 36), type metadata accessor for FormatMetadata);

    v10 = v0[1];

    return v10();
  }

  return result;
}

uint64_t sub_1D5E8BAFC()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1D5E8BCF8;
  }

  else
  {
    v2 = sub_1D5E8BC10;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E8BC10()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);

  (*(v5 + 8))(v3, v4);
  sub_1D5EA08F4(v1, type metadata accessor for FormatPackage);
  sub_1D5EA08F4(v2, type metadata accessor for FormatPackage);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D5E8BCF8()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);

  (*(v5 + 8))(v3, v4);
  sub_1D5EA08F4(v1, type metadata accessor for FormatPackage);
  sub_1D5EA08F4(v2, type metadata accessor for FormatPackage);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D5E8BDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  v4[19] = type metadata accessor for FormatFile();
  v4[20] = swift_task_alloc();
  v5 = MEMORY[0x1E69E6720];
  sub_1D5CEFE04(0, &qword_1EDF331B8, type metadata accessor for FormatPackage, MEMORY[0x1E69E6720]);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, v5);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v6 = sub_1D72585BC();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v7 = type metadata accessor for FormatService.CacheFormatFile(0);
  v4[31] = v7;
  v4[32] = *(v7 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v8 = sub_1D7261B9C();
  v4[35] = v8;
  v4[36] = *(v8 - 8);
  v4[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E8C080, 0, 0);
}

uint64_t sub_1D5E8C080()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);
  sub_1D5B5A498(0, &qword_1EDF1AA30);
  *v1 = sub_1D726308C();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8018], v3);
  v4 = sub_1D7261BBC();
  v5 = (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE44EE0](v5);
  }

  v6 = *(v0 + 248);
  v7 = *(v0 + 256);
  v8 = *(v0 + 240);
  v9 = *(v0 + 208);
  v10 = *(v0 + 216);
  v11 = *(v0 + 200);
  v12 = *(v0 + 128);
  *(v0 + 304) = *(*(v0 + 144) + 480);
  v13 = [v12 remoteURL];
  sub_1D72584EC();

  sub_1D725B86C();
  v14 = *(v10 + 8);
  *(v0 + 312) = v14;
  *(v0 + 320) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v8, v9);
  v15 = *(v7 + 48);
  *(v0 + 328) = v15;
  *(v0 + 336) = (v7 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v15(v11, 1, v6) == 1)
  {
    v16 = *(v0 + 200);
    v17 = &unk_1EDF33160;
    v18 = type metadata accessor for FormatService.CacheFormatFile;
    v19 = MEMORY[0x1E69E6720];
LABEL_9:
    v28 = sub_1D5CF274C(v16, v17, v18, v19, sub_1D5CEFE04);
    if (sub_1D5E53190(v28, v29))
    {
      [*(*(v0 + 144) + 136) d:*(v0 + 128) resetAssetHandle:?];
    }

    v31 = *(v0 + 128);
    v30 = *(v0 + 136);
    v32 = *(v30 + 40);
    v33 = *(v30 + 48);
    v34 = swift_task_alloc();
    *(v34 + 16) = v31;
    *(v34 + 24) = v32;
    *(v34 + 32) = v33;
    sub_1D5B5534C(0, &qword_1EDF1A9A0);
    sub_1D725BDCC();

    *(swift_allocObject() + 16) = v31;
    v35 = v31;
    v36 = sub_1D725B92C();
    *(v0 + 344) = sub_1D725BA8C();

    v37 = swift_task_alloc();
    *(v0 + 352) = v37;
    *v37 = v0;
    v37[1] = sub_1D5E8C5A0;
    v5 = v0 + 80;

    return MEMORY[0x1EEE44EE0](v5);
  }

  v20 = *(v0 + 272);
  sub_1D5CEFF38(*(v0 + 200), v20, type metadata accessor for FormatService.CacheFormatFile);
  sub_1D6BE292C((v0 + 48));
  sub_1D5EA08F4(v20, type metadata accessor for FormatService.CacheFormatFile);
  v21 = type metadata accessor for FormatPackage();
  v22 = swift_dynamicCast();
  v23 = *(*(v21 - 8) + 56);
  v24 = *(v0 + 176);
  if ((v22 & 1) == 0)
  {
    v23(*(v0 + 176), 1, 1, v21);
    v17 = &unk_1EDF331B8;
    v18 = type metadata accessor for FormatPackage;
    v19 = MEMORY[0x1E69E6720];
    v16 = v24;
    goto LABEL_9;
  }

  v25 = *(v0 + 120);
  v23(*(v0 + 176), 0, 1, v21);
  sub_1D5CEFF38(v24, v25, type metadata accessor for FormatPackage);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1D5E8C5A0()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_1D5E8CF24;
  }

  else
  {

    v2 = sub_1D5E8C6BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E8C6BC()
{
  v1 = v0;
  v2 = *(v0 + 328);
  v3 = *(v0 + 248);
  v4 = *(v0 + 192);
  v5 = *(v0 + 88);
  v54 = *(v0 + 80);
  v6 = [*(v0 + 128) remoteURL];
  sub_1D72584EC();

  type metadata accessor for FormatJSONDecoder();
  swift_allocObject();
  sub_1D5B7BACC(MEMORY[0x1E69E7CC0]);
  sub_1D725B86C();
  v53 = v5;
  if (v2(v4, 1, v3) == 1)
  {
    v7 = *(v0 + 360);
    sub_1D5C2AF10(&qword_1EDF34750, 255, type metadata accessor for FormatFile);
    sub_1D725A69C();
    v8 = *(v0 + 328);
    if (v7)
    {
      v9 = *(v0 + 248);
      v10 = *(v0 + 192);

      v52 = v7;
      if (v8(v10, 1, v9) != 1)
      {
        sub_1D5CF274C(*(v1 + 192), &unk_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720], sub_1D5CEFE04);
      }

      goto LABEL_9;
    }

    v42 = *(v0 + 264);
    v43 = *(v0 + 248);
    v44 = *(v1 + 192);
    v45 = *(v1 + 128);
    sub_1D5CEFF38(*(v1 + 160), *(v1 + 264), type metadata accessor for FormatFile);
    *(v42 + *(v43 + 20)) = v45;
    LODWORD(v42) = v8(v44, 1, v43);
    v46 = v45;
    if (v42 != 1)
    {
      sub_1D5CF274C(*(v1 + 192), &unk_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720], sub_1D5CEFE04);
    }
  }

  else
  {
    sub_1D5CEFF38(*(v0 + 192), *(v0 + 264), type metadata accessor for FormatService.CacheFormatFile);
  }

  sub_1D6BE292C((v1 + 16));
  v11 = type metadata accessor for FormatPackage();
  v12 = swift_dynamicCast();
  v13 = *(*(v11 - 8) + 56);
  if (v12)
  {
    v50 = *(v1 + 312);
    v14 = *(v1 + 256);
    v47 = *(v1 + 264);
    v48 = *(v1 + 248);
    v15 = *(v1 + 224);
    v16 = *(v1 + 232);
    v18 = *(v1 + 208);
    v17 = *(v1 + 216);
    v19 = *(v1 + 184);
    v20 = *(v1 + 168);
    v21 = *(v1 + 120);
    v13(v20, 0, 1, v11);
    sub_1D5CEFF38(v20, v21, type metadata accessor for FormatPackage);
    (*(v17 + 16))(v15, v16, v18);
    sub_1D5CEFE68(v47, v19, type metadata accessor for FormatService.CacheFormatFile);
    (*(v14 + 56))(v19, 0, 1, v48);
    sub_1D725B87C();
    sub_1D5B952F8(v54, v53);

    sub_1D5EA08F4(v47, type metadata accessor for FormatService.CacheFormatFile);
    v50(v16, v18);

    v22 = *(v1 + 8);
    goto LABEL_10;
  }

  v23 = *(v1 + 264);
  v24 = *(v1 + 168);
  v13(v24, 1, 1, v11);
  sub_1D5CF274C(v24, &unk_1EDF331B8, type metadata accessor for FormatPackage, MEMORY[0x1E69E6720], sub_1D5CEFE04);
  type metadata accessor for FormatServiceError();
  sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
  v25 = swift_allocError();
  strcpy(v26, "FormatPackage");
  *(v26 + 7) = -4864;
  *(v26 + 2) = 1635017028;
  *(v26 + 3) = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  v52 = v25;
  swift_willThrow();

  sub_1D5EA08F4(v23, type metadata accessor for FormatService.CacheFormatFile);
LABEL_9:
  v27 = *(v1 + 232);
  v28 = *(v1 + 216);
  v49 = *(v1 + 208);
  v51 = *(v1 + 312);
  type metadata accessor for FormatServiceOptions();
  sub_1D7262EBC();
  sub_1D5C384A0();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D7270C10;
  v30 = sub_1D72583DC();
  v32 = v31;
  v33 = MEMORY[0x1E69E6158];
  *(v29 + 56) = MEMORY[0x1E69E6158];
  v34 = sub_1D5B7E2C0();
  *(v29 + 64) = v34;
  *(v1 + 96) = 0;
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  *(v1 + 104) = 0xE000000000000000;
  *(v1 + 112) = v52;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  v35 = *(v1 + 96);
  v36 = *(v1 + 104);
  *(v29 + 96) = v33;
  *(v29 + 104) = v34;
  *(v29 + 72) = v35;
  *(v29 + 80) = v36;
  sub_1D725C30C();

  type metadata accessor for FormatServiceError();
  sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
  swift_allocError();
  v38 = v37;
  sub_1D5EA0810();
  v40 = *(v39 + 48);
  (*(v28 + 16))(v38, v27, v49);
  *(v38 + v40) = v52;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_1D5B952F8(v54, v53);
  v51(v27, v49);

  v22 = *(v1 + 8);
LABEL_10:

  return v22();
}

uint64_t sub_1D5E8CF24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E8D02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[126] = v3;
  v4[125] = a3;
  v4[124] = a2;
  v4[123] = a1;
  v4[127] = type metadata accessor for FormatFile();
  v4[128] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720]);
  v4[129] = swift_task_alloc();
  v4[130] = swift_task_alloc();
  v4[131] = swift_task_alloc();
  v5 = sub_1D72585BC();
  v4[132] = v5;
  v4[133] = *(v5 - 8);
  v4[134] = swift_task_alloc();
  v4[135] = swift_task_alloc();
  v4[136] = swift_task_alloc();
  v6 = type metadata accessor for FormatService.CacheFormatFile(0);
  v4[137] = v6;
  v4[138] = *(v6 - 8);
  v4[139] = swift_task_alloc();
  v4[140] = swift_task_alloc();
  v7 = sub_1D7261B9C();
  v4[141] = v7;
  v4[142] = *(v7 - 8);
  v4[143] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E8D278, 0, 0);
}

uint64_t sub_1D5E8D278()
{
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1136);
  v3 = *(v0 + 1128);
  sub_1D5B5A498(0, &qword_1EDF1AA30);
  *v1 = sub_1D726308C();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8018], v3);
  v4 = sub_1D7261BBC();
  v5 = (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE44EE0](v5);
  }

  v6 = *(v0 + 1104);
  v7 = *(v0 + 1096);
  v8 = *(v0 + 1088);
  v9 = *(v0 + 1064);
  v10 = *(v0 + 1056);
  v11 = *(v0 + 1048);
  v12 = *(v0 + 992);
  *(v0 + 1152) = *(*(v0 + 1008) + 480);
  v13 = [v12 remoteURL];
  sub_1D72584EC();

  sub_1D725B86C();
  v14 = *(v9 + 8);
  *(v0 + 1160) = v14;
  *(v0 + 1168) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v8, v10);
  v15 = *(v6 + 48);
  *(v0 + 1176) = v15;
  *(v0 + 1184) = (v6 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v15(v11, 1, v7) == 1)
  {
    v16 = sub_1D5CF274C(*(v0 + 1048), &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720], sub_1D5CEFE04);
LABEL_9:
    if (sub_1D5E53190(v16, v17))
    {
      [*(*(v0 + 1008) + 136) d:*(v0 + 992) resetAssetHandle:?];
    }

    v40 = *(v0 + 1000);
    v41 = *(v0 + 992);
    v42 = *(v40 + 40);
    v43 = *(v40 + 48);
    v44 = swift_task_alloc();
    *(v44 + 16) = v41;
    *(v44 + 24) = v42;
    *(v44 + 32) = v43;
    sub_1D5B5534C(0, &qword_1EDF1A9A0);
    sub_1D725BDCC();

    *(swift_allocObject() + 16) = v41;
    v45 = v41;
    v46 = sub_1D725B92C();
    *(v0 + 1192) = sub_1D725BA8C();

    v47 = swift_task_alloc();
    *(v0 + 1200) = v47;
    *v47 = v0;
    v47[1] = sub_1D5E8D778;
    v5 = v0 + 944;

    return MEMORY[0x1EEE44EE0](v5);
  }

  v18 = *(v0 + 1120);
  sub_1D5CEFF38(*(v0 + 1048), v18, type metadata accessor for FormatService.CacheFormatFile);
  sub_1D6BE292C((v0 + 912));
  sub_1D5EA08F4(v18, type metadata accessor for FormatService.CacheFormatFile);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D5EA181C((v0 + 736));
    v28 = *(v0 + 816);
    v30 = *(v0 + 832);
    v29 = *(v0 + 848);
    *(v0 + 544) = v30;
    *(v0 + 560) = v29;
    v31 = *(v0 + 752);
    v33 = *(v0 + 768);
    v32 = *(v0 + 784);
    *(v0 + 480) = v33;
    *(v0 + 496) = v32;
    v34 = *(v0 + 784);
    v36 = *(v0 + 800);
    v35 = *(v0 + 816);
    *(v0 + 512) = v36;
    *(v0 + 528) = v35;
    v37 = *(v0 + 752);
    v38 = *(v0 + 736);
    *(v0 + 448) = v38;
    *(v0 + 464) = v37;
    *(v0 + 672) = v28;
    *(v0 + 688) = v30;
    v39 = *(v0 + 864);
    *(v0 + 704) = *(v0 + 848);
    *(v0 + 720) = v39;
    *(v0 + 608) = v31;
    *(v0 + 624) = v33;
    *(v0 + 640) = v34;
    *(v0 + 656) = v36;
    *(v0 + 576) = v39;
    *(v0 + 592) = v38;
    v16 = sub_1D5E9E688(v0 + 592, &qword_1EC880168, &type metadata for FormatGroup);
    goto LABEL_9;
  }

  v19 = *(v0 + 984);
  nullsub_1(v0 + 448);
  *v19 = *(v0 + 448);
  v20 = *(v0 + 464);
  v21 = *(v0 + 480);
  v22 = *(v0 + 512);
  v19[3] = *(v0 + 496);
  v19[4] = v22;
  v19[1] = v20;
  v19[2] = v21;
  v23 = *(v0 + 528);
  v24 = *(v0 + 544);
  v25 = *(v0 + 576);
  v19[7] = *(v0 + 560);
  v19[8] = v25;
  v19[5] = v23;
  v19[6] = v24;

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1D5E8D778()
{
  *(*v1 + 1208) = v0;

  if (v0)
  {
    v2 = sub_1D5E8E0B8;
  }

  else
  {

    v2 = sub_1D5E8D894;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E8D894()
{
  v1 = *(v0 + 1176);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1040);
  v66 = *(v0 + 944);
  v4 = *(v0 + 952);
  v5 = [*(v0 + 992) remoteURL];
  sub_1D72584EC();

  type metadata accessor for FormatJSONDecoder();
  swift_allocObject();
  sub_1D5B7BACC(MEMORY[0x1E69E7CC0]);
  sub_1D725B86C();
  v65 = v4;
  if (v1(v3, 1, v2) == 1)
  {
    v6 = *(v0 + 1208);
    sub_1D5C2AF10(&qword_1EDF34750, 255, type metadata accessor for FormatFile);
    sub_1D725A69C();
    v7 = *(v0 + 1176);
    if (v6)
    {
      v8 = *(v0 + 1096);
      v9 = *(v0 + 1040);

      v64 = v6;
      if (v7(v9, 1, v8) != 1)
      {
        sub_1D5CF274C(*(v0 + 1040), &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720], sub_1D5CEFE04);
      }

      goto LABEL_9;
    }

    v56 = *(v0 + 1112);
    v57 = *(v0 + 1096);
    v58 = *(v0 + 1040);
    v59 = *(v0 + 992);
    sub_1D5CEFF38(*(v0 + 1024), v56, type metadata accessor for FormatFile);
    *(v56 + *(v57 + 20)) = v59;
    LODWORD(v56) = v7(v58, 1, v57);
    v60 = v59;
    if (v56 != 1)
    {
      sub_1D5CF274C(*(v0 + 1040), &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720], sub_1D5CEFE04);
    }
  }

  else
  {
    sub_1D5CEFF38(*(v0 + 1040), *(v0 + 1112), type metadata accessor for FormatService.CacheFormatFile);
  }

  sub_1D6BE292C((v0 + 880));
  if (swift_dynamicCast())
  {
    v62 = *(v0 + 1160);
    v10 = *(v0 + 1112);
    v11 = *(v0 + 1104);
    v12 = *(v0 + 1096);
    v13 = *(v0 + 1080);
    v14 = *(v0 + 1072);
    v15 = *(v0 + 1064);
    v16 = *(v0 + 1056);
    v17 = *(v0 + 1032);
    v18 = *(v0 + 984);
    nullsub_1(v0 + 16);
    *v18 = *(v0 + 16);
    v19 = *(v0 + 32);
    v20 = *(v0 + 48);
    v21 = *(v0 + 80);
    v18[3] = *(v0 + 64);
    v18[4] = v21;
    v18[1] = v19;
    v18[2] = v20;
    v22 = *(v0 + 96);
    v23 = *(v0 + 112);
    v24 = *(v0 + 144);
    v18[7] = *(v0 + 128);
    v18[8] = v24;
    v18[5] = v22;
    v18[6] = v23;
    (*(v15 + 16))(v14, v13, v16);
    sub_1D5CEFE68(v10, v17, type metadata accessor for FormatService.CacheFormatFile);
    (*(v11 + 56))(v17, 0, 1, v12);
    sub_1D725B87C();
    sub_1D5B952F8(v66, v65);

    sub_1D5EA08F4(v10, type metadata accessor for FormatService.CacheFormatFile);
    v62(v13, v16);

    v25 = *(v0 + 8);
    goto LABEL_10;
  }

  v26 = *(v0 + 1112);
  sub_1D5EA181C((v0 + 304));
  v27 = *(v0 + 384);
  v29 = *(v0 + 400);
  v28 = *(v0 + 416);
  *(v0 + 112) = v29;
  *(v0 + 128) = v28;
  v30 = *(v0 + 320);
  v32 = *(v0 + 336);
  v31 = *(v0 + 352);
  *(v0 + 48) = v32;
  *(v0 + 64) = v31;
  v33 = *(v0 + 352);
  v35 = *(v0 + 368);
  v34 = *(v0 + 384);
  *(v0 + 80) = v35;
  *(v0 + 96) = v34;
  v36 = *(v0 + 320);
  v37 = *(v0 + 304);
  *(v0 + 16) = v37;
  *(v0 + 32) = v36;
  *(v0 + 240) = v27;
  *(v0 + 256) = v29;
  v38 = *(v0 + 432);
  *(v0 + 272) = *(v0 + 416);
  *(v0 + 288) = v38;
  *(v0 + 176) = v30;
  *(v0 + 192) = v32;
  *(v0 + 208) = v33;
  *(v0 + 224) = v35;
  *(v0 + 144) = v38;
  *(v0 + 160) = v37;
  sub_1D5E9E688(v0 + 160, &qword_1EC880168, &type metadata for FormatGroup);
  type metadata accessor for FormatServiceError();
  sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
  v39 = swift_allocError();
  *v40 = 0x724774616D726F46;
  v40[1] = 0xEB0000000070756FLL;
  v40[2] = 1635017028;
  v40[3] = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  v64 = v39;
  swift_willThrow();

  sub_1D5EA08F4(v26, type metadata accessor for FormatService.CacheFormatFile);
LABEL_9:
  v41 = *(v0 + 1080);
  v42 = *(v0 + 1064);
  v61 = *(v0 + 1056);
  v63 = *(v0 + 1160);
  type metadata accessor for FormatServiceOptions();
  sub_1D7262EBC();
  sub_1D5C384A0();
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1D7270C10;
  v44 = sub_1D72583DC();
  v46 = v45;
  v47 = MEMORY[0x1E69E6158];
  *(v43 + 56) = MEMORY[0x1E69E6158];
  v48 = sub_1D5B7E2C0();
  *(v43 + 64) = v48;
  *(v43 + 32) = v44;
  *(v43 + 40) = v46;
  *(v0 + 960) = 0;
  *(v0 + 968) = 0xE000000000000000;
  *(v0 + 976) = v64;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  v49 = *(v0 + 960);
  v50 = *(v0 + 968);
  *(v43 + 96) = v47;
  *(v43 + 104) = v48;
  *(v43 + 72) = v49;
  *(v43 + 80) = v50;
  sub_1D725C30C();

  type metadata accessor for FormatServiceError();
  sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
  swift_allocError();
  v52 = v51;
  sub_1D5EA0810();
  v54 = *(v53 + 48);
  (*(v42 + 16))(v52, v41, v61);
  *(v52 + v54) = v64;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_1D5B952F8(v66, v65);
  v63(v41, v61);

  v25 = *(v0 + 8);
LABEL_10:

  return v25();
}

uint64_t sub_1D5E8E0B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E8E1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[114] = v3;
  v4[113] = a3;
  v4[112] = a2;
  v4[111] = a1;
  v4[115] = type metadata accessor for FormatFile();
  v4[116] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720]);
  v4[117] = swift_task_alloc();
  v4[118] = swift_task_alloc();
  v4[119] = swift_task_alloc();
  v5 = sub_1D72585BC();
  v4[120] = v5;
  v4[121] = *(v5 - 8);
  v4[122] = swift_task_alloc();
  v4[123] = swift_task_alloc();
  v4[124] = swift_task_alloc();
  v6 = type metadata accessor for FormatService.CacheFormatFile(0);
  v4[125] = v6;
  v4[126] = *(v6 - 8);
  v4[127] = swift_task_alloc();
  v4[128] = swift_task_alloc();
  v7 = sub_1D7261B9C();
  v4[129] = v7;
  v4[130] = *(v7 - 8);
  v4[131] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E8E404, 0, 0);
}

uint64_t sub_1D5E8E404()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1032);
  sub_1D5B5A498(0, &qword_1EDF1AA30);
  *v1 = sub_1D726308C();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8018], v3);
  v4 = sub_1D7261BBC();
  v5 = (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE44EE0](v5);
  }

  v6 = *(v0 + 1008);
  v7 = *(v0 + 1000);
  v8 = *(v0 + 992);
  v9 = *(v0 + 968);
  v10 = *(v0 + 960);
  v11 = *(v0 + 952);
  v12 = *(v0 + 896);
  *(v0 + 1056) = *(*(v0 + 912) + 480);
  v13 = [v12 remoteURL];
  sub_1D72584EC();

  sub_1D725B86C();
  v14 = *(v9 + 8);
  *(v0 + 1064) = v14;
  *(v0 + 1072) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v8, v10);
  v15 = *(v6 + 48);
  *(v0 + 1080) = v15;
  *(v0 + 1088) = (v6 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v15(v11, 1, v7) == 1)
  {
    v16 = sub_1D5CF274C(*(v0 + 952), &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720], sub_1D5CEFE04);
LABEL_9:
    if (sub_1D5E53190(v16, v17))
    {
      [*(*(v0 + 912) + 136) d:*(v0 + 896) resetAssetHandle:?];
    }

    v37 = *(v0 + 904);
    v38 = *(v0 + 896);
    v39 = *(v37 + 40);
    v40 = *(v37 + 48);
    v41 = swift_task_alloc();
    *(v41 + 16) = v38;
    *(v41 + 24) = v39;
    *(v41 + 32) = v40;
    sub_1D5B5534C(0, &qword_1EDF1A9A0);
    sub_1D725BDCC();

    *(swift_allocObject() + 16) = v38;
    v42 = v38;
    v43 = sub_1D725B92C();
    *(v0 + 1096) = sub_1D725BA8C();

    v44 = swift_task_alloc();
    *(v0 + 1104) = v44;
    *v44 = v0;
    v44[1] = sub_1D5E8E900;
    v5 = v0 + 848;

    return MEMORY[0x1EEE44EE0](v5);
  }

  v18 = (v0 + 400);
  v19 = *(v0 + 1024);
  sub_1D5CEFF38(*(v0 + 952), v19, type metadata accessor for FormatService.CacheFormatFile);
  sub_1D6BE292C((v0 + 816));
  sub_1D5EA08F4(v19, type metadata accessor for FormatService.CacheFormatFile);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D5EA1584((v0 + 656));
    v29 = *(v0 + 720);
    v30 = *(v0 + 736);
    *(v0 + 464) = v29;
    *(v0 + 480) = v30;
    v31 = *(v0 + 752);
    *(v0 + 496) = v31;
    v32 = *(v0 + 761);
    *(v0 + 505) = v32;
    v33 = *(v0 + 656);
    v34 = *(v0 + 672);
    *v18 = v33;
    *(v0 + 416) = v34;
    v35 = *(v0 + 688);
    v36 = *(v0 + 704);
    *(v0 + 432) = v35;
    *(v0 + 448) = v36;
    *(v0 + 528) = v33;
    *(v0 + 544) = v34;
    *(v0 + 560) = v35;
    *(v0 + 576) = v36;
    *(v0 + 592) = v29;
    *(v0 + 608) = v30;
    *(v0 + 624) = v31;
    *(v0 + 633) = v32;
    v16 = sub_1D5E9E688(v0 + 528, &qword_1EC880160, &type metadata for FormatItem);
    goto LABEL_9;
  }

  v20 = *(v0 + 888);
  nullsub_1(v0 + 400);
  v21 = *v18;
  v22 = *(v0 + 416);
  v23 = *(v0 + 448);
  v20[2] = *(v0 + 432);
  v20[3] = v23;
  *v20 = v21;
  v20[1] = v22;
  v24 = *(v0 + 464);
  v25 = *(v0 + 480);
  v26 = *(v0 + 496);
  *(v20 + 105) = *(v0 + 505);
  v20[5] = v25;
  v20[6] = v26;
  v20[4] = v24;

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1D5E8E900()
{
  *(*v1 + 1112) = v0;

  if (v0)
  {
    v2 = sub_1D5E8F230;
  }

  else
  {

    v2 = sub_1D5E8EA1C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E8EA1C()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 944);
  v62 = *(v0 + 848);
  v4 = *(v0 + 856);
  v5 = [*(v0 + 896) remoteURL];
  sub_1D72584EC();

  type metadata accessor for FormatJSONDecoder();
  swift_allocObject();
  sub_1D5B7BACC(MEMORY[0x1E69E7CC0]);
  sub_1D725B86C();
  v61 = v4;
  if (v1(v3, 1, v2) == 1)
  {
    v6 = *(v0 + 1112);
    sub_1D5C2AF10(&qword_1EDF34750, 255, type metadata accessor for FormatFile);
    sub_1D725A69C();
    v7 = *(v0 + 1080);
    if (v6)
    {
      v8 = *(v0 + 1000);
      v9 = *(v0 + 944);

      v60 = v6;
      if (v7(v9, 1, v8) != 1)
      {
        sub_1D5CF274C(*(v0 + 944), &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720], sub_1D5CEFE04);
      }

      goto LABEL_9;
    }

    v52 = *(v0 + 1016);
    v53 = *(v0 + 1000);
    v54 = *(v0 + 944);
    v55 = *(v0 + 896);
    sub_1D5CEFF38(*(v0 + 928), v52, type metadata accessor for FormatFile);
    *(v52 + *(v53 + 20)) = v55;
    LODWORD(v52) = v7(v54, 1, v53);
    v56 = v55;
    if (v52 != 1)
    {
      sub_1D5CF274C(*(v0 + 944), &qword_1EDF33160, type metadata accessor for FormatService.CacheFormatFile, MEMORY[0x1E69E6720], sub_1D5CEFE04);
    }
  }

  else
  {
    sub_1D5CEFF38(*(v0 + 944), *(v0 + 1016), type metadata accessor for FormatService.CacheFormatFile);
  }

  sub_1D6BE292C((v0 + 784));
  if (swift_dynamicCast())
  {
    v58 = *(v0 + 1064);
    v10 = *(v0 + 1016);
    v11 = *(v0 + 1008);
    v12 = *(v0 + 1000);
    v13 = *(v0 + 984);
    v14 = *(v0 + 976);
    v15 = *(v0 + 968);
    v16 = *(v0 + 960);
    v17 = *(v0 + 936);
    v18 = *(v0 + 888);
    nullsub_1(v0 + 16);
    v19 = *(v0 + 16);
    v20 = *(v0 + 32);
    v21 = *(v0 + 64);
    v18[2] = *(v0 + 48);
    v18[3] = v21;
    *v18 = v19;
    v18[1] = v20;
    v22 = *(v0 + 80);
    v23 = *(v0 + 96);
    v24 = *(v0 + 112);
    *(v18 + 105) = *(v0 + 121);
    v18[5] = v23;
    v18[6] = v24;
    v18[4] = v22;
    (*(v15 + 16))(v14, v13, v16);
    sub_1D5CEFE68(v10, v17, type metadata accessor for FormatService.CacheFormatFile);
    (*(v11 + 56))(v17, 0, 1, v12);
    sub_1D725B87C();
    sub_1D5B952F8(v62, v61);

    sub_1D5EA08F4(v10, type metadata accessor for FormatService.CacheFormatFile);
    v58(v13, v16);

    v25 = *(v0 + 8);
    goto LABEL_10;
  }

  v26 = *(v0 + 1016);
  sub_1D5EA1584((v0 + 272));
  v27 = *(v0 + 336);
  v28 = *(v0 + 352);
  *(v0 + 80) = v27;
  *(v0 + 96) = v28;
  v29 = *(v0 + 368);
  *(v0 + 112) = v29;
  v30 = *(v0 + 377);
  *(v0 + 121) = v30;
  v31 = *(v0 + 272);
  v32 = *(v0 + 288);
  *(v0 + 16) = v31;
  *(v0 + 32) = v32;
  v33 = *(v0 + 304);
  v34 = *(v0 + 320);
  *(v0 + 48) = v33;
  *(v0 + 64) = v34;
  *(v0 + 144) = v31;
  *(v0 + 160) = v32;
  *(v0 + 176) = v33;
  *(v0 + 192) = v34;
  *(v0 + 208) = v27;
  *(v0 + 224) = v28;
  *(v0 + 240) = v29;
  *(v0 + 249) = v30;
  sub_1D5E9E688(v0 + 144, &qword_1EC880160, &type metadata for FormatItem);
  type metadata accessor for FormatServiceError();
  sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
  v35 = swift_allocError();
  *v36 = 0x744974616D726F46;
  v36[1] = 0xEA00000000006D65;
  v36[2] = 1635017028;
  v36[3] = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  v60 = v35;
  swift_willThrow();

  sub_1D5EA08F4(v26, type metadata accessor for FormatService.CacheFormatFile);
LABEL_9:
  v37 = *(v0 + 984);
  v38 = *(v0 + 968);
  v57 = *(v0 + 960);
  v59 = *(v0 + 1064);
  type metadata accessor for FormatServiceOptions();
  sub_1D7262EBC();
  sub_1D5C384A0();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1D7270C10;
  v40 = sub_1D72583DC();
  v42 = v41;
  v43 = MEMORY[0x1E69E6158];
  *(v39 + 56) = MEMORY[0x1E69E6158];
  v44 = sub_1D5B7E2C0();
  *(v39 + 64) = v44;
  *(v39 + 32) = v40;
  *(v39 + 40) = v42;
  *(v0 + 864) = 0;
  *(v0 + 872) = 0xE000000000000000;
  *(v0 + 880) = v60;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  v45 = *(v0 + 864);
  v46 = *(v0 + 872);
  *(v39 + 96) = v43;
  *(v39 + 104) = v44;
  *(v39 + 72) = v45;
  *(v39 + 80) = v46;
  sub_1D725C30C();

  type metadata accessor for FormatServiceError();
  sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError);
  swift_allocError();
  v48 = v47;
  sub_1D5EA0810();
  v50 = *(v49 + 48);
  (*(v38 + 16))(v48, v37, v57);
  *(v48 + v50) = v60;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_1D5B952F8(v62, v61);
  v59(v37, v57);

  v25 = *(v0 + 8);
LABEL_10:

  return v25();
}