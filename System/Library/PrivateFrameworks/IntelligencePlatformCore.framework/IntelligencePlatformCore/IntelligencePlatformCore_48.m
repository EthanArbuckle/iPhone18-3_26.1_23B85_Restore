uint64_t sub_1C4833DD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1C4833E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v60 = a3;
  v78 = a1;
  v72 = sub_1C4F00978();
  v6 = *(v72 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v72);
  v65 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v60 - v10;
  v71 = type metadata accessor for LiveGlobalKnowledgeTriple();
  v12 = *(*(v71 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v71);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v20 = *(a2 + 16);
  if (v20)
  {
    v21 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v22 = *(v17 + 72);
    v69 = (v6 + 8);
    v70 = v22;
    *&v19 = 136315394;
    v64 = v19;
    v23 = &v60 - v18;
    v68 = &v60 - v18;
    v63 = v6;
    v62 = v11;
    v61 = v15;
    do
    {
      sub_1C4834AF0(v21, v23);
      sub_1C4834AA8(&qword_1EC0BDDC8, type metadata accessor for LiveGlobalKnowledgeTriple);
      sub_1C4EFB6C8();
      if (v4)
      {
        sub_1C4F00168();
        sub_1C4834AF0(v23, v15);
        v24 = v4;
        v25 = v11;
        v26 = sub_1C4F00968();
        v27 = sub_1C4F01CD8();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *&v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          *&v75 = v67;
          *v28 = v64;
          v29 = LiveGlobalKnowledgeTriple.description.getter();
          v31 = v30;
          sub_1C4453E44(v15, type metadata accessor for LiveGlobalKnowledgeTriple);
          v32 = sub_1C441D828(v29, v31, &v75);
          v6 = v63;

          *(v28 + 4) = v32;
          *(v28 + 12) = 2112;
          v33 = v4;
          v34 = _swift_stdlib_bridgeErrorToNSError();
          *(v28 + 14) = v34;
          v35 = v66;
          *v66 = v34;
          _os_log_impl(&dword_1C43F8000, v26, v27, "Failed to store live triple %s in LiveGlobalKnowledgeGraph cache: %@", v28, 0x16u);
          sub_1C4420C3C(v35, &qword_1EC0BDA00, &qword_1C4F10D30);
          MEMORY[0x1C6942830](v35, -1, -1);
          v36 = v67;
          sub_1C440962C(v67);
          MEMORY[0x1C6942830](v36, -1, -1);
          MEMORY[0x1C6942830](v28, -1, -1);

          v11 = v62;
          (*v69)(v62, v72);
          v23 = v68;
          result = sub_1C4453E44(v68, type metadata accessor for LiveGlobalKnowledgeTriple);
          v4 = 0;
          v15 = v61;
        }

        else
        {

          sub_1C4453E44(v15, type metadata accessor for LiveGlobalKnowledgeTriple);
          (*v69)(v25, v72);
          v37 = v68;
          result = sub_1C4453E44(v68, type metadata accessor for LiveGlobalKnowledgeTriple);
          v4 = 0;
          v11 = v25;
          v23 = v37;
        }
      }

      else
      {
        result = sub_1C4453E44(v23, type metadata accessor for LiveGlobalKnowledgeTriple);
      }

      v21 += v70;
      --v20;
    }

    while (v20);
  }

  v38 = v60;
  v39 = *(v60 + 16);
  if (v39)
  {
    v70 = (v6 + 8);
    v71 = sub_1C4835F78();
    v40 = (v38 + 64);
    *&v41 = 136315394;
    v66 = v41;
    v42 = v65;
    do
    {
      v43 = *(v40 - 3);
      v44 = *(v40 - 2);
      v45 = *(v40 - 1);
      v46 = *v40;
      *&v75 = *(v40 - 4);
      *(&v75 + 1) = v43;
      *&v76 = v44;
      *(&v76 + 1) = v45;
      v77 = v46;
      v73[0] = v75;
      v73[1] = v76;
      v74 = v46;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFB6C8();
      if (v4)
      {
        sub_1C4F00168();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v47 = v4;
        v48 = sub_1C4F00968();
        v49 = sub_1C4F01CD8();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          *&v73[0] = v69;
          *v50 = v66;
          v67 = v48;
          v51 = sub_1C492BEEC();
          v53 = v52;

          v54 = sub_1C441D828(v51, v53, v73);

          *(v50 + 4) = v54;
          *(v50 + 12) = 2112;
          v55 = v4;
          v56 = _swift_stdlib_bridgeErrorToNSError();
          *(v50 + 14) = v56;
          v57 = v67;
          v58 = v68;
          *v68 = v56;
          _os_log_impl(&dword_1C43F8000, v57, v49, "Failed to store IDsearch NoResultRecord %s in LiveGlobalKnowledgeGraph cache: %@", v50, 0x16u);
          sub_1C4420C3C(v58, &qword_1EC0BDA00, &qword_1C4F10D30);
          MEMORY[0x1C6942830](v58, -1, -1);
          v59 = v69;
          sub_1C440962C(v69);
          MEMORY[0x1C6942830](v59, -1, -1);
          MEMORY[0x1C6942830](v50, -1, -1);

          v42 = v65;
          result = (*v70)(v65, v72);
        }

        else
        {

          result = (*v70)(v42, v72);
        }

        v4 = 0;
      }

      else
      {
      }

      v40 += 5;
      --v39;
    }

    while (v39);
  }

  return result;
}

uint64_t sub_1C4834560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C456902C(&qword_1EC0BDCC0, &unk_1C4F32020);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-1] - v8;
  type metadata accessor for StaticKnowledgeAssetMetadata(0);
  v13[3] = &type metadata for StaticKnowledgeAssetMetadataColumn;
  v13[4] = sub_1C4826AB0();
  LOBYTE(v13[0]) = 1;
  v12[3] = MEMORY[0x1E69E6158];
  v12[4] = MEMORY[0x1E69A0130];
  v12[0] = a2;
  v12[1] = a3;
  v14[3] = sub_1C4EFB298();
  v14[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v14);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(v12, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v13);
  sub_1C4834AA8(&qword_1EDDFAA88, type metadata accessor for StaticKnowledgeAssetMetadata);
  sub_1C4EFAE28();
  sub_1C440962C(v14);
  sub_1C4401CBC(&qword_1EDDFCCF8, &qword_1EC0BDCC0, &unk_1C4F32020);
  sub_1C4834AA8(&qword_1EDDFAA80, type metadata accessor for StaticKnowledgeAssetMetadata);
  sub_1C4EFAFF8();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1C4834908(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1C4F02128();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1C4F022B8();
}

uint64_t sub_1C483496C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C4F02828();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for LiveGlobalKnowledgeTriple();
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for LiveGlobalKnowledgeTriple() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C4834F90(v8, v9, a1, v4);
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
    return sub_1C4834D20(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C4834AA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4834AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C4834C00()
{
  result = type metadata accessor for Configuration();
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

uint64_t sub_1C4834D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = type metadata accessor for LiveGlobalKnowledgeTriple();
  v8 = *(*(v37 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v37);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v29 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
    while (2)
    {
      v34 = v21;
      v35 = a3;
      v32 = v24;
      v33 = v23;
      do
      {
        sub_1C4834AF0(v24, v18);
        sub_1C4834AF0(v21, v14);
        if (sub_1C4EFF088())
        {
          v25 = *(v37 + 20);
          v26 = sub_1C4EFE9A8();
        }

        else
        {
          v26 = sub_1C4EFF078();
        }

        v27 = v26;
        sub_1C4453E44(v14, type metadata accessor for LiveGlobalKnowledgeTriple);
        result = sub_1C4453E44(v18, type metadata accessor for LiveGlobalKnowledgeTriple);
        if ((v27 & 1) == 0)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return result;
        }

        sub_1C48360BC(v24, v11);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1C48360BC(v11, v21);
        v21 += v22;
        v24 += v22;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v35 + 1;
      v21 = v34 + v30;
      v23 = v33 - 1;
      v24 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C4834F90(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v127 = a1;
  v143 = type metadata accessor for LiveGlobalKnowledgeTriple();
  v135 = *(v143 - 8);
  v6 = *(v135 + 64);
  v7 = MEMORY[0x1EEE9AC00](v143);
  v129 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v142 = &v122 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v122 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v122 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v19 = MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v137 = a3;
  v24 = a3[1];
  if (v24 < 1)
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v28 = *v127;
    if (!*v127)
    {
      goto LABEL_143;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_105:
      v114 = (v26 + 16);
      for (i = *(v26 + 16); i >= 2; *v114 = i)
      {
        if (!*v137)
        {
          goto LABEL_140;
        }

        v116 = (v26 + 16 * i);
        v117 = *v116;
        v118 = &v114[2 * i];
        v119 = *(v118 + 1);
        v120 = v141;
        sub_1C48359A0(*v137 + *(v135 + 72) * *v116, *v137 + *(v135 + 72) * *v118, *v137 + *(v135 + 72) * v119, v28);
        v141 = v120;
        if (v120)
        {
          break;
        }

        if (v119 < v117)
        {
          goto LABEL_128;
        }

        if (i - 2 >= *v114)
        {
          goto LABEL_129;
        }

        *v116 = v117;
        v116[1] = v119;
        v121 = *v114 - i;
        if (*v114 < i)
        {
          goto LABEL_130;
        }

        i = *v114 - 1;
        sub_1C461950C(v118 + 16, v121, v118);
      }

LABEL_101:

      return;
    }

LABEL_137:
    v26 = sub_1C46194F4(v26);
    goto LABEL_105;
  }

  v124 = &v122 - v20;
  v125 = v23;
  v131 = v22;
  v132 = v21;
  v123 = a4;
  v25 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  v130 = v16;
  while (1)
  {
    v27 = v25;
    v28 = v25 + 1;
    v128 = v25;
    if (v25 + 1 < v24)
    {
      v133 = v24;
      v29 = *v137;
      v30 = *(v135 + 72);
      v140 = v25 + 1;
      v31 = v124;
      sub_1C4834AF0(v29 + v30 * v28, v124);
      v136 = v30;
      v32 = v29 + v30 * v27;
      v33 = v125;
      sub_1C4834AF0(v32, v125);
      if (sub_1C4EFF088())
      {
        v34 = *(v143 + 20);
        v35 = sub_1C4EFE9A8();
      }

      else
      {
        v35 = sub_1C4EFF078();
      }

      LODWORD(v134) = v35;
      v126 = v26;
      sub_1C4453E44(v33, type metadata accessor for LiveGlobalKnowledgeTriple);
      sub_1C4453E44(v31, type metadata accessor for LiveGlobalKnowledgeTriple);
      v36 = v128 + 2;
      v37 = v136 * (v128 + 2);
      v38 = v29 + v37;
      v39 = v140;
      v40 = v136 * v140;
      v41 = v29 + v136 * v140;
      do
      {
        v28 = v36;
        v42 = v39;
        v26 = v40;
        v43 = v37;
        if (v36 >= v133)
        {
          break;
        }

        v139 = v36;
        v140 = v39;
        v138 = v37;
        v44 = v131;
        sub_1C4834AF0(v38, v131);
        v45 = v132;
        sub_1C4834AF0(v41, v132);
        if (sub_1C4EFF088())
        {
          v46 = *(v143 + 20);
          v47 = sub_1C4EFE9A8();
        }

        else
        {
          v47 = sub_1C4EFF078();
        }

        v48 = v47;
        sub_1C4453E44(v45, type metadata accessor for LiveGlobalKnowledgeTriple);
        sub_1C4453E44(v44, type metadata accessor for LiveGlobalKnowledgeTriple);
        v28 = v139;
        v42 = v140;
        v36 = v139 + 1;
        v38 += v136;
        v41 += v136;
        v39 = v140 + 1;
        v40 = v26 + v136;
        v43 = v138;
        v37 = v138 + v136;
      }

      while ((v134 & 1) == (v48 & 1));
      if (v134)
      {
        v27 = v128;
        if (v28 < v128)
        {
          goto LABEL_134;
        }

        if (v128 >= v28)
        {
          v26 = v126;
          goto LABEL_31;
        }

        v49 = v128;
        v50 = v128 * v136;
        do
        {
          if (v49 != v42)
          {
            v140 = v42;
            v51 = *v137;
            if (!*v137)
            {
              goto LABEL_141;
            }

            sub_1C48360BC(v51 + v50, v129);
            v52 = v50 < v26 || v51 + v50 >= (v51 + v43);
            if (v52)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v50 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C48360BC(v129, v51 + v26);
            v42 = v140;
          }

          ++v49;
          v26 -= v136;
          v43 -= v136;
          v50 += v136;
        }

        while (v49 < v42--);
      }

      v26 = v126;
      v27 = v128;
    }

LABEL_31:
    v54 = v137[1];
    if (v28 < v54)
    {
      if (__OFSUB__(v28, v27))
      {
        goto LABEL_133;
      }

      if (v28 - v27 < v123)
      {
        break;
      }
    }

LABEL_50:
    if (v28 < v27)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v111 = *(v26 + 16);
      sub_1C458A358();
      v26 = v112;
    }

    v67 = *(v26 + 16);
    v68 = v67 + 1;
    if (v67 >= *(v26 + 24) >> 1)
    {
      sub_1C458A358();
      v26 = v113;
    }

    *(v26 + 16) = v68;
    v69 = v26 + 32;
    v70 = (v26 + 32 + 16 * v67);
    *v70 = v128;
    v70[1] = v28;
    v139 = *v127;
    if (!v139)
    {
      goto LABEL_142;
    }

    v140 = v28;
    if (v67)
    {
      while (1)
      {
        v71 = v68 - 1;
        v72 = (v69 + 16 * (v68 - 1));
        v73 = (v26 + 16 * v68);
        if (v68 >= 4)
        {
          break;
        }

        if (v68 == 3)
        {
          v74 = *(v26 + 32);
          v75 = *(v26 + 40);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_70:
          if (v77)
          {
            goto LABEL_119;
          }

          v89 = *v73;
          v88 = v73[1];
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_122;
          }

          v93 = v72[1];
          v94 = v93 - *v72;
          if (__OFSUB__(v93, *v72))
          {
            goto LABEL_125;
          }

          if (__OFADD__(v91, v94))
          {
            goto LABEL_127;
          }

          if (v91 + v94 >= v76)
          {
            if (v76 < v94)
            {
              v71 = v68 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v68 < 2)
        {
          goto LABEL_121;
        }

        v96 = *v73;
        v95 = v73[1];
        v84 = __OFSUB__(v95, v96);
        v91 = v95 - v96;
        v92 = v84;
LABEL_85:
        if (v92)
        {
          goto LABEL_124;
        }

        v98 = *v72;
        v97 = v72[1];
        v84 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v84)
        {
          goto LABEL_126;
        }

        if (v99 < v91)
        {
          goto LABEL_99;
        }

LABEL_92:
        if (v71 - 1 >= v68)
        {
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

        if (!*v137)
        {
          goto LABEL_139;
        }

        v103 = v13;
        v104 = v26;
        v105 = (v69 + 16 * (v71 - 1));
        v106 = *v105;
        v107 = v69;
        v108 = v71;
        v109 = v69 + 16 * v71;
        v26 = *(v109 + 8);
        v110 = v141;
        sub_1C48359A0(*v137 + *(v135 + 72) * *v105, *v137 + *(v135 + 72) * *v109, *v137 + *(v135 + 72) * v26, v139);
        v141 = v110;
        if (v110)
        {
          goto LABEL_101;
        }

        if (v26 < v106)
        {
          goto LABEL_114;
        }

        v28 = *(v104 + 16);
        if (v108 > v28)
        {
          goto LABEL_115;
        }

        *v105 = v106;
        v105[1] = v26;
        if (v108 >= v28)
        {
          goto LABEL_116;
        }

        v68 = v28 - 1;
        sub_1C461950C((v109 + 16), v28 - 1 - v108, v109);
        v26 = v104;
        *(v104 + 16) = v28 - 1;
        v69 = v107;
        v13 = v103;
        v16 = v130;
        if (v28 <= 2)
        {
          goto LABEL_99;
        }
      }

      v78 = v69 + 16 * v68;
      v79 = *(v78 - 64);
      v80 = *(v78 - 56);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_117;
      }

      v83 = *(v78 - 48);
      v82 = *(v78 - 40);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_118;
      }

      v85 = v73[1];
      v86 = v85 - *v73;
      if (__OFSUB__(v85, *v73))
      {
        goto LABEL_120;
      }

      v84 = __OFADD__(v76, v86);
      v87 = v76 + v86;
      if (v84)
      {
        goto LABEL_123;
      }

      if (v87 >= v81)
      {
        v101 = *v72;
        v100 = v72[1];
        v84 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v84)
        {
          goto LABEL_131;
        }

        if (v76 < v102)
        {
          v71 = v68 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_70;
    }

LABEL_99:
    v24 = v137[1];
    v25 = v140;
    if (v140 >= v24)
    {
      goto LABEL_103;
    }
  }

  v55 = v27 + v123;
  if (__OFADD__(v27, v123))
  {
    goto LABEL_135;
  }

  if (v55 >= v54)
  {
    v55 = v137[1];
  }

  if (v55 < v27)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v28 == v55)
  {
    goto LABEL_50;
  }

  v126 = v26;
  v56 = *v137;
  v57 = *(v135 + 72);
  v58 = *v137 + v57 * (v28 - 1);
  v59 = -v57;
  v60 = v27 - v28;
  v133 = v57;
  v134 = v55;
  v61 = v56 + v28 * v57;
LABEL_40:
  v139 = v58;
  v140 = v28;
  v136 = v61;
  v62 = v61;
  v138 = v60;
  while (1)
  {
    sub_1C4834AF0(v62, v16);
    sub_1C4834AF0(v58, v13);
    if (sub_1C4EFF088())
    {
      v63 = *(v143 + 20);
      v64 = sub_1C4EFE9A8();
    }

    else
    {
      v64 = sub_1C4EFF078();
    }

    v65 = v64;
    sub_1C4453E44(v13, type metadata accessor for LiveGlobalKnowledgeTriple);
    sub_1C4453E44(v16, type metadata accessor for LiveGlobalKnowledgeTriple);
    if ((v65 & 1) == 0)
    {
LABEL_48:
      v28 = v140 + 1;
      v58 = v139 + v133;
      v60 = v138 - 1;
      v61 = v136 + v133;
      if (v140 + 1 == v134)
      {
        v28 = v134;
        v26 = v126;
        v27 = v128;
        goto LABEL_50;
      }

      goto LABEL_40;
    }

    if (!v56)
    {
      break;
    }

    v66 = v142;
    sub_1C48360BC(v62, v142);
    swift_arrayInitWithTakeFrontToBack();
    sub_1C48360BC(v66, v58);
    v58 += v59;
    v62 += v59;
    v52 = __CFADD__(v60++, 1);
    if (v52)
    {
      goto LABEL_48;
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
}

uint64_t sub_1C48359A0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = type metadata accessor for LiveGlobalKnowledgeTriple();
  v8 = *(*(v57 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v57);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v54 = &v49 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v49 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = &v49 - v17;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return result;
  }

  v21 = a2 - a1;
  v22 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v22)
  {
    goto LABEL_67;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_68;
  }

  v25 = v21 / v20;
  v60 = a1;
  v59 = a4;
  v26 = v23 / v20;
  if (v21 / v20 >= v23 / v20)
  {
    sub_1C459C5DC(a2, v23 / v20, a4);
    v34 = a4 + v26 * v20;
    v35 = -v20;
    v36 = v34;
    v52 = a4;
    v56 = -v20;
LABEL_40:
    v53 = a2 + v35;
    v37 = a3;
    v50 = v36;
    while (1)
    {
      if (v34 <= a4)
      {
        v60 = a2;
        v58 = v36;
        goto LABEL_65;
      }

      if (a2 <= a1)
      {
        break;
      }

      v51 = v36;
      v38 = v34 + v35;
      v39 = v54;
      sub_1C4834AF0(v34 + v35, v54);
      v40 = v55;
      sub_1C4834AF0(v53, v55);
      if (sub_1C4EFF088())
      {
        v41 = *(v57 + 20);
        v42 = sub_1C4EFE9A8();
      }

      else
      {
        v42 = sub_1C4EFF078();
      }

      v43 = v42;
      v44 = v37 + v56;
      sub_1C4453E44(v40, type metadata accessor for LiveGlobalKnowledgeTriple);
      sub_1C4453E44(v39, type metadata accessor for LiveGlobalKnowledgeTriple);
      if (v43)
      {
        v46 = v37 < a2 || v44 >= a2;
        a3 = v44;
        if (v46)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v36 = v51;
          a4 = v52;
          v35 = v56;
        }

        else
        {
          a4 = v52;
          v36 = v51;
          v22 = v37 == a2;
          v47 = v53;
          a2 = v53;
          v35 = v56;
          if (!v22)
          {
            v48 = v51;
            swift_arrayInitWithTakeBackToFront();
            a2 = v47;
            v36 = v48;
          }
        }

        goto LABEL_40;
      }

      if (v37 < v34 || v44 >= v34)
      {
        swift_arrayInitWithTakeFrontToBack();
        v37 = v44;
        v34 = v38;
        v36 = v38;
        a4 = v52;
        v35 = v56;
      }

      else
      {
        v36 = v38;
        v22 = v34 == v37;
        v37 = v44;
        v34 = v38;
        a4 = v52;
        v35 = v56;
        if (!v22)
        {
          swift_arrayInitWithTakeBackToFront();
          v37 = v44;
          v34 = v38;
          v36 = v38;
        }
      }
    }

    v60 = a2;
    v58 = v50;
  }

  else
  {
    v56 = a3;
    sub_1C459C5DC(a1, v21 / v20, a4);
    v27 = a4 + v25 * v20;
    v58 = v27;
    while (a4 < v27 && a2 < v56)
    {
      sub_1C4834AF0(a2, v18);
      sub_1C4834AF0(a4, v15);
      if (sub_1C4EFF088())
      {
        v29 = *(v57 + 20);
        v30 = sub_1C4EFE9A8();
      }

      else
      {
        v30 = sub_1C4EFF078();
      }

      v31 = v30;
      sub_1C4453E44(v15, type metadata accessor for LiveGlobalKnowledgeTriple);
      sub_1C4453E44(v18, type metadata accessor for LiveGlobalKnowledgeTriple);
      if (v31)
      {
        if (a1 < a2 || a1 >= a2 + v20)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v20;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v20)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v59 = a4 + v20;
        a4 += v20;
      }

      a1 += v20;
      v60 = a1;
    }
  }

LABEL_65:
  sub_1C4BEB3E8(&v60, &v59, &v58);
  return 1;
}

unint64_t sub_1C4835EB4()
{
  result = qword_1EDDE2AB0;
  if (!qword_1EDDE2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2AB0);
  }

  return result;
}

unint64_t sub_1C4835F08()
{
  result = qword_1EC0BDDC0;
  if (!qword_1EC0BDDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDDC0);
  }

  return result;
}

unint64_t sub_1C4835F78()
{
  result = qword_1EC0BDDD0;
  if (!qword_1EC0BDDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDDD0);
  }

  return result;
}

uint64_t sub_1C4835FF4()
{
  result = type metadata accessor for StaticKnowledgeAssetMetadata(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C4836068()
{
  result = qword_1EDDE4508[0];
  if (!qword_1EDDE4508[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE4508);
  }

  return result;
}

uint64_t sub_1C48360BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for GlobalKnowledgeStore.StaticKnowledgeAssetStatus.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C48361F8()
{
  result = qword_1EC0BDDE0;
  if (!qword_1EC0BDDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDDE0);
  }

  return result;
}

unint64_t sub_1C4836250()
{
  result = qword_1EDDE44F8;
  if (!qword_1EDDE44F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE44F8);
  }

  return result;
}

unint64_t sub_1C48362A8()
{
  result = qword_1EDDE4500;
  if (!qword_1EDDE4500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE4500);
  }

  return result;
}

void sub_1C4836304()
{
  sub_1C43FBD3C();
  sub_1C43FFB44();
  v1 = sub_1C4EFDAB8();
  v2 = sub_1C43FCDF8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C440F400();
  if (*(v0 + 16))
  {
    v5 = *(v0 + 40);
    sub_1C441B994();
    sub_1C4403D94(v6, v7);
    sub_1C442F8E4();
    sub_1C440CAC8();
    sub_1C4475608();
    do
    {
      sub_1C4416780(v8);
      if (!v9)
      {
        break;
      }

      v10 = sub_1C4461CA0();
      v11(v10);
      sub_1C441B994();
      sub_1C4403D94(&unk_1EDDEFFC0, v12);
      sub_1C442234C();
      sub_1C4F010B8();
      v13 = sub_1C443E188();
      v14(v13);
      v8 = v0 + 1;
    }

    while ((v1 & 1) == 0);
  }

  sub_1C43FE9F0();
}

void sub_1C483644C()
{
  sub_1C43FBD3C();
  sub_1C43FFB44();
  v1 = sub_1C4EFF0C8();
  v2 = sub_1C43FCDF8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C440F400();
  if (*(v0 + 16))
  {
    v5 = *(v0 + 40);
    sub_1C4408AF4();
    sub_1C4403D94(v6, v7);
    sub_1C442F8E4();
    sub_1C440CAC8();
    sub_1C4475608();
    do
    {
      sub_1C4416780(v8);
      if (!v9)
      {
        break;
      }

      v10 = sub_1C4461CA0();
      v11(v10);
      sub_1C4408AF4();
      sub_1C4403D94(&qword_1EDDFCC98, v12);
      sub_1C442234C();
      sub_1C4F010B8();
      v13 = sub_1C443E188();
      v14(v13);
      v8 = v0 + 1;
    }

    while ((v1 & 1) == 0);
  }

  sub_1C43FE9F0();
}

void sub_1C4836594()
{
  sub_1C43FE6B0();
  if (*(v2 + 16))
  {
    v3 = v2;
    v4 = v1;
    v5 = *(v2 + 40);
    sub_1C4F02AF8();
    sub_1C4424B10(v4);
    sub_1C4851A9C();
    sub_1C44A3AA0();

    sub_1C4F02B68();
    sub_1C440CAC8();
    sub_1C44CD048();
    if ((*(v3 + 56 + v7) >> v0))
    {
      v8 = ~v6;
      while (1)
      {
        v9 = 0xE400000000000000;
        v10 = 1702259052;
        switch(*(*(v3 + 48) + v0))
        {
          case 1:
            v10 = 1701736302;
            break;
          case 2:
            v10 = sub_1C4851B48();
            break;
          case 3:
            v10 = sub_1C44289B8();
            v9 = 0x80000001C4F86260;
            break;
          case 4:
            v9 = 0xE600000000000000;
            v11 = 1801807223;
            goto LABEL_11;
          case 5:
            v13 = sub_1C43FE694() & 0xFFFF0000FFFFFFFFLL | 0x347900000000;
            goto LABEL_14;
          case 6:
            v13 = sub_1C4428E78();
LABEL_14:
            v10 = sub_1C44B91EC(v13);
            break;
          case 7:
            v9 = 0xE600000000000000;
            v11 = 1920298856;
LABEL_11:
            v10 = v11 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
            break;
          case 8:
            v14 = sub_1C4428E78();
            v10 = sub_1C448881C(v14);
            break;
          case 9:
            v12 = sub_1C43FE694();
            v10 = sub_1C4456998(v12);
            break;
          case 0xA:
            v10 = sub_1C44289B8();
            v9 = 0x80000001C4F862C0;
            break;
          default:
            break;
        }

        v15 = 0xE400000000000000;
        v16 = 1702259052;
        switch(v4)
        {
          case 1:
            v16 = 1701736302;
            break;
          case 2:
            v15 = 0xE500000000000000;
            v16 = 0x796C696164;
            break;
          case 3:
            sub_1C47F79F8();
            v15 = 0x80000001C4F86260;
            break;
          case 4:
            v15 = 0xE600000000000000;
            v17 = 1801807223;
            goto LABEL_24;
          case 5:
            sub_1C440EFA8();
            v20 = v19 & 0xFFFF0000FFFFFFFFLL | 0x347900000000;
            goto LABEL_27;
          case 6:
            sub_1C444C270();
LABEL_27:
            v16 = v20 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
            v15 = 0xEB00000000737275;
            break;
          case 7:
            v15 = 0xE600000000000000;
            v17 = 1920298856;
LABEL_24:
            v16 = v17 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
            break;
          case 8:
            sub_1C444C270();
            v16 = v21 & 0xFFFFFFFFFFFFLL | 0x4D31000000000000;
            v15 = 0xEE00736574756E69;
            break;
          case 9:
            sub_1C440EFA8();
            v16 = v18 | 0x694D377900000000;
            v15 = 0xED0000736574756ELL;
            break;
          case 10:
            sub_1C47F79F8();
            v15 = 0x80000001C4F862C0;
            break;
          default:
            break;
        }

        if (v10 == v16 && v9 == v15)
        {
          break;
        }

        v23 = sub_1C4F02938();

        if ((v23 & 1) == 0)
        {
          v0 = (v0 + 1) & v8;
          if ((*(v3 + 56 + ((v0 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v0))
          {
            continue;
          }
        }

        goto LABEL_36;
      }
    }
  }

LABEL_36:
  sub_1C440A528();
}

void sub_1C48368C8()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8(0);
  sub_1C43FCDF8(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - v16;
  v49 = v5;
  if (*(v5 + 16))
  {
    v47 = v15;
    v18 = v49;
    v19 = *(v49 + 40);
    sub_1C4F02AF8();
    v3(&v52);
    sub_1C4F02B68();
    v20 = v18 + 56;
    v21 = *(v18 + 32);
    sub_1C43FC41C();
    v24 = v23 & ~v22;
    if ((*(v20 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
    {
      v25 = ~v22;
      v48 = *(v11 + 72);
      v26 = v47;
      v45 = v20;
      v46 = v1;
      v44 = ~v22;
      do
      {
        v27 = *(v49 + 48);
        sub_1C4851984();
        if (sub_1C4EFF088())
        {
          v28 = v26[5];
          sub_1C4EFEEF8();
          sub_1C4419828();
          sub_1C4403D94(&off_1EDDFCCA8, v29);
          sub_1C4473D64();
          sub_1C4F01578();
          v30 = v52 == v50 && v53 == v51;
          if (v30)
          {

            v1 = v46;
            v26 = v47;
            v25 = v44;
          }

          else
          {
            v31 = sub_1C4F02938();

            v1 = v46;
            v26 = v47;
            v25 = v44;
            if ((v31 & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          v32 = v26[6];
          if (sub_1C4EFF878())
          {
            v33 = v26[7];
            sub_1C4473D64();
            sub_1C4F01578();
            if (v52 == v50 && v53 == v51)
            {

              v26 = v47;
            }

            else
            {
              v35 = sub_1C4F02938();

              v26 = v47;
              if ((v35 & 1) == 0)
              {
                goto LABEL_33;
              }
            }

            sub_1C44A3CC8(v26[8]);
            v38 = v30 && v36 == v37;
            if (v38 || (sub_1C4F02938()) && *&v17[v26[9]] == *(v7 + v26[9]) && *&v17[v26[10]] == *(v7 + v26[10]))
            {
              sub_1C44A3CC8(v26[11]);
              v41 = v30 && v39 == v40;
              if (v41 || (sub_1C4F02938()) && *&v17[v26[12]] == *(v7 + v26[12]))
              {
                sub_1C48519DC(v17, v1);
                break;
              }
            }
          }
        }

LABEL_33:
        sub_1C48519DC(v17, v1);
        v24 = (v24 + 1) & v25;
        sub_1C4507B48();
      }

      while ((v42 & 1) != 0);
    }
  }

  sub_1C43FE9F0();
}

void sub_1C4836BF8()
{
  sub_1C43FBD3C();
  sub_1C43FECE0();
  v3 = type metadata accessor for Source();
  v4 = sub_1C43FCF7C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C442599C();
  if (v0[2])
  {
    v9 = v0[5];
    sub_1C4F02AF8();
    v10 = *v1;
    v11 = v1[1];
    sub_1C43FC2F4();
    sub_1C4F01298();
    sub_1C4F02B68();
    sub_1C440CAC8();
    v14 = ~v13;
    do
    {
      v15 = v12 & v14;
      if (((1 << (v12 & v14)) & *(v0 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8) + 56)) == 0)
      {
        break;
      }

      v16 = v0[6];
      v17 = *(v6 + 72);
      sub_1C4460260();
      sub_1C4851984();
      if (*v2 == v10 && v2[1] == v11)
      {
        sub_1C441E3D8();
        sub_1C48519DC(v2, v21);
        break;
      }

      v19 = sub_1C4F02938();
      sub_1C441E3D8();
      sub_1C48519DC(v2, v20);
      v12 = v15 + 1;
    }

    while ((v19 & 1) == 0);
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C4836D50()
{
  v0 = sub_1C4EF98F8();
  sub_1C44F9918(v0, qword_1EC152150);
  sub_1C442B738(v0, qword_1EC152150);
  return sub_1C4EF9838();
}

uint64_t sub_1C4836DB4()
{
  v0 = sub_1C4EF98F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44F9918(v3, qword_1EC152168);
  sub_1C442B738(v0, qword_1EC152168);
  sub_1C4F001A8();
  sub_1C4EF9888();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_1C4836EB4()
{
  v0 = sub_1C4EF98F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44F9918(v3, qword_1EC152180);
  sub_1C442B738(v0, qword_1EC152180);
  sub_1C4F001A8();
  sub_1C4EF9888();
  return (*(v1 + 8))(v5, v0);
}

uint64_t static Grader.runEvalStats(forEntityClasses:)(uint64_t a1)
{
  v79 = a1;
  v2 = type metadata accessor for ExtractedMatch();
  v3 = sub_1C43FCDF8(v2);
  v73 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4EFD548();
  v10 = sub_1C43FCDF8(v9);
  v78 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C442599C();
  v14 = sub_1C4EF9348();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_1C4EF9338();
  if (qword_1EC0B6B80 != -1)
  {
    swift_once();
  }

  v18 = sub_1C4EF98F8();
  sub_1C442B738(v18, qword_1EC152168);
  v19 = sub_1C48376D0();
  if (!v19)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v53 = sub_1C4F00978();
    sub_1C442B738(v53, qword_1EDDFECB8);
    v54 = sub_1C4F00968();
    v55 = sub_1C4F01CF8();
    if (sub_1C43FCEA4(v55))
    {
      v56 = sub_1C43FCED0();
      sub_1C43FBD24(v56);
      v59 = "Error: unable to unarchive match extractor links data.";
LABEL_36:
      sub_1C440BAE8(&dword_1C43F8000, v57, v58, v59);
      sub_1C43FBE2C();

      goto LABEL_38;
    }

LABEL_37:

LABEL_38:

    return 0;
  }

  v20 = v19;
  if (qword_1EC0B6B78 != -1)
  {
    sub_1C44627BC();
  }

  sub_1C442B738(v18, qword_1EC152150);
  v21 = sub_1C48379B4();
  if (!v21)
  {

    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v60 = sub_1C4F00978();
    sub_1C442B738(v60, qword_1EDDFECB8);
    v54 = sub_1C4F00968();
    v61 = sub_1C4F01CF8();
    if (sub_1C43FCEA4(v61))
    {
      v62 = sub_1C43FCED0();
      sub_1C43FBD24(v62);
      v59 = "Error: unable to unarchive ground truths data.";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v22 = v21;
  v71[1] = v17;
  v72 = v9;
  v23 = 0;
  v24 = *(v79 + 16);
  v74 = v1;
  v75 = v78 + 16;
  v76 = (v78 + 8);
  v77 = v24;
  v25 = 0.0;
  v26 = 0.0;
  v27 = 0.0;
  while (v23 != v77)
  {
    sub_1C43FBF6C();
    (*(v29 + 16))(v1, v79 + v28 + *(v29 + 72) * v23, v9);
    v30 = sub_1C4EFD3D8();
    if (!*(v20 + 16) || (v32 = sub_1C445FAA8(v30, v31), (v33 & 1) == 0))
    {

LABEL_41:

      sub_1C456902C(&qword_1EC0B8780, &qword_1C4F0DB70);
      v63 = swift_allocObject();
      sub_1C4851BAC(v63, xmmword_1C4F0D130);
      sub_1C4F02248();
      v64 = sub_1C44289B8();
      MEMORY[0x1C6940010](v64);
      v65 = sub_1C4EFD3D8();
      MEMORY[0x1C6940010](v65);

      MEMORY[0x1C6940010](0xD00000000000003BLL, 0x80000001C4FA2CE0);
      sub_1C449520C(v80);

      (*v76)(v1, v9);
      return 0;
    }

    v34 = *(*(v20 + 56) + 8 * v32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v35 = sub_1C4EFD3D8();
    if (!*(v22 + 16) || (v37 = sub_1C445FAA8(v35, v36), (v38 & 1) == 0))
    {

      goto LABEL_41;
    }

    v39 = *(*(v22 + 56) + 8 * v37);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v40 = *(v39 + 16);
    v41 = *(v34 + 16);
    if (v41)
    {
      sub_1C43FBF6C();
      v43 = v34 + v42;
      v45 = *(v44 + 72);
      do
      {
        sub_1C4851984();
        if (*(v39 + 16) && (v46 = sub_1C445FAA8(*&v8[*(v2 + 28)], *&v8[*(v2 + 28) + 8]), (v47 & 1) != 0) && ((v48 = (*(v39 + 56) + 16 * v46), v49 = *v48, v50 = v48[1], v51 = &v8[*(v2 + 24)], v49 == *v51) ? (v52 = v50 == *(v51 + 1)) : (v52 = 0), v52 || (sub_1C4F02938() & 1) != 0))
        {
          v27 = v27 + 1.0;
        }

        else
        {
          v26 = v26 + 1.0;
        }

        sub_1C48519DC(v8, type metadata accessor for ExtractedMatch);
        v43 += v45;
        --v41;
      }

      while (v41);

      v9 = v72;
    }

    else
    {
    }

    ++v23;
    v25 = v25 + v40;
    v1 = v74;
    (*v76)(v74, v9);
  }

  sub_1C456902C(&qword_1EC0B8780, &qword_1C4F0DB70);
  v67 = swift_allocObject();
  sub_1C4851BAC(v67, xmmword_1C4F0D130);
  sub_1C4F02248();
  v68 = sub_1C44289B8();
  MEMORY[0x1C6940010](v68);
  v69 = MEMORY[0x1C6940380](v79, v9);
  MEMORY[0x1C6940010](v69);

  v70 = sub_1C44289B8();
  MEMORY[0x1C6940010](v70);
  sub_1C4F01A28();
  MEMORY[0x1C6940010](0x616365522020200ALL, 0xEC000000203A6C6CLL);
  sub_1C4F01A28();
  sub_1C449520C(v80);

  return 1;
}

uint64_t sub_1C48376D0()
{
  v0 = sub_1C4F00978();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v2 = sub_1C4EF9938();
  v4 = v3;
  v5 = objc_autoreleasePoolPush();
  sub_1C456902C(&qword_1EC0BDF80, &unk_1C4F45940);
  sub_1C48517A4(&qword_1EC0BDF88, &qword_1EC0BDF80, &unk_1C4F45940, sub_1C48518D0);
  sub_1C4EF9328();
  objc_autoreleasePoolPop(v5);
  sub_1C4434000(v2, v4);
  return v7;
}

uint64_t sub_1C48379B4()
{
  v0 = sub_1C4F00978();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v2 = sub_1C4EF9938();
  v4 = v3;
  v5 = objc_autoreleasePoolPush();
  sub_1C456902C(&qword_1EC0BDD98, &qword_1C4F32040);
  sub_1C48517A4(&qword_1EC0BDF78, &qword_1EC0BDD98, &qword_1C4F32040, sub_1C4851854);
  sub_1C4EF9328();
  objc_autoreleasePoolPop(v5);
  sub_1C4434000(v2, v4);
  return v7;
}

uint64_t sub_1C4837C98()
{
  v0 = sub_1C4F00978();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v2 = sub_1C4EF9938();
  v4 = v3;
  v5 = objc_autoreleasePoolPush();
  sub_1C456902C(&qword_1EC0BDF50, &qword_1C4F32370);
  sub_1C48517A4(&qword_1EC0BDF58, &qword_1EC0BDF50, &qword_1C4F32370, sub_1C4851774);
  sub_1C4EF9328();
  objc_autoreleasePoolPop(v5);
  sub_1C4434000(v2, v4);
  return v7;
}

void sub_1C4837F7C()
{
  sub_1C43FBD3C();
  v1 = v0;
  v2 = sub_1C4F00978();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C442599C();
  sub_1C4488224();
  if (v1)
  {
    sub_1C4F00148();
    v9 = v1;
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CD8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = sub_1C43FFD34();
      v24 = v14;
      *v12 = 136315394;
      v15 = sub_1C441D828(0x697274533C746553, 0xEB000000003E676ELL, &v24);
      sub_1C4482DFC(v15);
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v16;
      *v13 = v16;
      sub_1C448873C(&dword_1C43F8000, v17, v18, "JSONDecoder: decode fromURL: Can't decode %s with error: %@");
      sub_1C45B4B90(v13);
      sub_1C43FBE2C();
      sub_1C440962C(v14);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v19 = *(v5 + 8);
    v20 = sub_1C43FD024();
    v21(v20);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    sub_1C45A2840();
    sub_1C4EF9328();
    objc_autoreleasePoolPop(v8);
    v22 = sub_1C43FE5F8();
    sub_1C4434000(v22, v23);
  }

  sub_1C43FE9F0();
}

void sub_1C48382A0()
{
  sub_1C43FBD3C();
  v29 = v0;
  v30 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_1C4F00978();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C442599C();
  v12 = sub_1C4488224();
  if (v5)
  {
    sub_1C4F00148();
    v18 = v5;
    v19 = sub_1C4F00968();
    v20 = sub_1C4F01CD8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = sub_1C43FFD34();
      v31 = v23;
      *v21 = 136315394;
      *(v21 + 4) = sub_1C441D828(v29, v30, &v31);
      *(v21 + 12) = 2112;
      v24 = v5;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v25;
      *v22 = v25;
      _os_log_impl(&dword_1C43F8000, v19, v20, "JSONDecoder: decode fromURL: Can't decode %s with error: %@", v21, 0x16u);
      sub_1C45B4B90(v22);
      sub_1C43FBE2C();
      sub_1C440962C(v23);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v26 = *(v9 + 8);
    v27 = sub_1C43FD024();
    v28(v27);
  }

  else
  {
    v14 = v12;
    v15 = v13;
    v16 = objc_autoreleasePoolPush();
    v3(v16, v17);
    sub_1C4EF9328();
    objc_autoreleasePoolPop(v16);
    sub_1C4434000(v14, v15);
  }

  sub_1C43FE9F0();
}

void sub_1C48384D8()
{
  sub_1C43FBD3C();
  v1 = v0;
  v2 = sub_1C4F00978();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C442599C();
  sub_1C4488224();
  if (v1)
  {
    sub_1C4F00148();
    v9 = v1;
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CD8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = sub_1C43FFD34();
      v24 = v14;
      *v12 = 136315394;
      v15 = sub_1C441D828(0xD000000000000014, 0x80000001C4FA2D80, &v24);
      sub_1C4482DFC(v15);
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v16;
      *v13 = v16;
      sub_1C448873C(&dword_1C43F8000, v17, v18, "JSONDecoder: decode fromURL: Can't decode %s with error: %@");
      sub_1C45B4B90(v13);
      sub_1C43FBE2C();
      sub_1C440962C(v14);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v19 = *(v5 + 8);
    v20 = sub_1C43FD024();
    v21(v20);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    sub_1C48516CC();
    sub_1C4EF9328();
    objc_autoreleasePoolPop(v8);
    v22 = sub_1C43FE5F8();
    sub_1C4434000(v22, v23);
  }

  sub_1C43FE9F0();
}

uint64_t static Grader.runBlockingStats(forEntityClasses:)(uint64_t a1)
{
  v144 = a1;
  v1 = sub_1C4EFD548();
  v2 = sub_1C43FCDF8(v1);
  v143 = v3;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2);
  v135 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v122 - v8;
  v10 = sub_1C4EF9348();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_1C4EF9338();
  if (qword_1EC0B6B88 != -1)
  {
    goto LABEL_86;
  }

  while (1)
  {
    v14 = sub_1C4EF98F8();
    sub_1C442B738(v14, qword_1EC152180);
    v145 = sub_1C4837C98();
    if (!v145)
    {
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C43FFB88();
      }

      v97 = sub_1C4F00978();
      sub_1C442B738(v97, qword_1EDDFECB8);
      v98 = sub_1C4F00968();
      v99 = sub_1C4F01CF8();
      if (!sub_1C43FCEA4(v99))
      {
        goto LABEL_76;
      }

      v100 = sub_1C43FCED0();
      sub_1C43FBD24(v100);
      v103 = "Error: unable to unarchive blocking keys.";
LABEL_75:
      sub_1C440BAE8(&dword_1C43F8000, v101, v102, v103);
      sub_1C43FBE2C();
LABEL_76:

      return 0;
    }

    if (qword_1EC0B6B78 != -1)
    {
      sub_1C44627BC();
    }

    sub_1C442B738(v14, qword_1EC152150);
    v142 = sub_1C48379B4();
    if (!v142)
    {

      if (qword_1EDDFECB0 != -1)
      {
LABEL_88:
        sub_1C43FFB88();
      }

      v104 = sub_1C4F00978();
      sub_1C442B738(v104, qword_1EDDFECB8);
      v98 = sub_1C4F00968();
      v105 = sub_1C4F01CF8();
      if (!sub_1C43FCEA4(v105))
      {
        goto LABEL_76;
      }

      v106 = sub_1C43FCED0();
      sub_1C43FBD24(v106);
      v103 = "Error: unable to unarchive ground truths data.";
      goto LABEL_75;
    }

    v133 = v13;
    v15 = 0;
    v148 = MEMORY[0x1E69E7CD0];
    v140 = *(v144 + 16);
    v141 = v143 + 16;
    v136 = " -> \n   Precision: ";
    v139 = (v143 + 8);
    v16 = 0.0;
    v17 = 0.0;
    v138 = v1;
    v137 = v9;
LABEL_7:
    if (v15 == v140)
    {

      sub_1C456902C(&qword_1EC0B8780, &qword_1C4F0DB70);
      *(swift_allocObject() + 16) = xmmword_1C4F0D130;
      v147[0] = 0;
      v147[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD000000000000013, 0x80000001C4FA2D20);
      v108 = MEMORY[0x1C6940380](v144, v1);
      MEMORY[0x1C6940010](v108);

      MEMORY[0x1C6940010](0x5220200A203E2D20, 0xEF203A6C6C616365);
      sub_1C4F01A28();
      sub_1C449520C(v147[0]);

      return 1;
    }

    sub_1C43FBF6C();
    v20 = *(v19 + 16);
    v20(v9, v144 + v18 + *(v19 + 72) * v15, v1);
    v21 = sub_1C4EFD3D8();
    v23 = sub_1C4663244(v21, v22, v145);

    if (!v23)
    {
      goto LABEL_80;
    }

    v24 = sub_1C4EFD3D8();
    v26 = sub_1C4663244(v24, v25, v142);

    if (!v26)
    {
      break;
    }

    v146 = v15 + 1;
    v16 = v16 + *(v26 + 16);
    v9 = (v23 + 64);
    v27 = *(v23 + 64);
    v28 = *(v23 + 32);
    sub_1C43FEC90();
    v13 = v30 & v29;
    v32 = (v31 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v1 = 0;
LABEL_11:
    if (v13)
    {
      goto LABEL_16;
    }

    while (2)
    {
      v33 = v1 + 1;
      if (!__OFADD__(v1, 1))
      {
        if (v33 < v32)
        {
          v13 = *&v9[8 * v33];
          ++v1;
          if (!v13)
          {
            continue;
          }

          v1 = v33;
LABEL_16:
          v34 = __clz(__rbit64(v13));
          v13 &= v13 - 1;
          v35 = (*(v23 + 48) + ((v1 << 10) | (16 * v34)));
          v37 = *v35;
          v36 = v35[1];
          v38 = *(v23 + 16);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if (!v38)
          {
            goto LABEL_30;
          }

          v39 = sub_1C445FAA8(v37, v36);
          if (v40)
          {
            v41 = *(*(v23 + 56) + 8 * v39);
            if (*(v41 + 16))
            {
              v42 = *(*(v23 + 56) + 8 * v39);
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v43 = sub_1C445FAA8(0x697469746E45646DLL, 0xEA00000000007365);
              if (v44)
              {
                v45 = *(*(v41 + 56) + 8 * v43);
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

                goto LABEL_23;
              }
            }
          }

          v45 = 0;
LABEL_23:
          if (!*(v23 + 16))
          {
            goto LABEL_30;
          }

          v46 = sub_1C445FAA8(v37, v36);
          v48 = v47;

          if ((v48 & 1) == 0)
          {
            goto LABEL_66;
          }

          v49 = *(*(v23 + 56) + 8 * v46);
          if (!*(v49 + 16))
          {
            goto LABEL_66;
          }

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v50 = sub_1C445FAA8(0xD000000000000010, v136 | 0x8000000000000000);
          if ((v51 & 1) == 0 || (v52 = *(*(v49 + 56) + 8 * v50), _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), , !*(v52 + 16)))
          {
LABEL_30:

            goto LABEL_66;
          }

          if (v45)
          {
            if (!*(v45 + 16))
            {
              goto LABEL_30;
            }

            v53 = *(v45 + 56);
            v54 = *(v45 + 32);
            sub_1C43FEC90();
            sub_1C447E230();
            v59 = v58 >> 6;
            v128 = v52 + 56;
            v124 = v58 >> 6;
            v125 = v56;
LABEL_34:
            v130 = v148 + 56;
            v131 = v148;
            if (v55)
            {
              do
              {
LABEL_38:
                sub_1C440AAD0();
                v127 = v62;
                v63 = *(v45 + 48);
                v126 = v64;
                v66 = (v63 + ((v64 << 10) | (16 * v65)));
                v68 = *v66;
                v67 = v66[1];
                v69 = *(v61 + 16);
                v134 = v67;
                if (v69)
                {
                  v70 = *(v61 + 40);
                  sub_1C4F02AF8();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  sub_1C4F01298();
                  sub_1C4F02B68();
                  sub_1C44805C8();
                  v71 = *(v131 + 32);
                  sub_1C43FC41C();
                  v132 = ~v73;
                  while (1)
                  {
                    sub_1C4851B98(v72, &v150);
                    if (((*(v130 + v75) >> v147) & 1) == 0)
                    {
                      break;
                    }

                    v76 = (*(v131 + 48) + 16 * v147);
                    if (*v76 != v68 || v76[1] != v74)
                    {
                      sub_1C4F02938();
                      sub_1C44805C8();
                      v79 = v78;
                      v72 = v147 + 1;
                      if ((v79 & 1) == 0)
                      {
                        continue;
                      }
                    }

                    goto LABEL_62;
                  }
                }

                else
                {
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  sub_1C44805C8();
                }

                v80 = *(v26 + 16);
                v123 = v68;
                if (v80 && (v81 = sub_1C445FAA8(v68, v74), (v82 & 1) != 0))
                {
                  v83 = (*(v26 + 56) + 16 * v81);
                  v85 = *v83;
                  v84 = v83[1];
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                }

                else
                {
                  v85 = 32;
                }

                if (*(v52 + 16))
                {
                  v86 = *(v52 + 40);
                  v132 = v85;
                  sub_1C4F02AF8();
                  sub_1C4F01298();
                  sub_1C4F02B68();
                  v87 = *(v52 + 32);
                  sub_1C43FC41C();
                  v129 = ~v89;
                  while (1)
                  {
                    sub_1C4851B98(v88, &v149);
                    if (((*(v128 + v92) >> v147) & 1) == 0)
                    {
                      break;
                    }

                    v93 = (*(v52 + 48) + 16 * v147);
                    if (*v93 != v90 || v93[1] != v91)
                    {
                      v95 = sub_1C4851C08();
                      v88 = v147 + 1;
                      if ((v95 & 1) == 0)
                      {
                        continue;
                      }
                    }

                    sub_1C44869B4(v147, v123, v134);

                    v17 = v17 + 1.0;
                    sub_1C44578D4();
                    v57 = v126;
                    goto LABEL_34;
                  }
                }

                sub_1C44805C8();
LABEL_62:

                sub_1C44578D4();
                v57 = v126;
              }

              while (v96);
            }

            while (2)
            {
              v60 = v57 + 1;
              if (__OFADD__(v57, 1))
              {
                __break(1u);
                goto LABEL_88;
              }

              if (v60 < v59)
              {
                ++v57;
                if (!*(v56 + 8 * v60))
                {
                  continue;
                }

                goto LABEL_38;
              }

              break;
            }
          }

LABEL_66:

          goto LABEL_11;
        }

        v9 = v137;
        v1 = v138;
        (*v139)(v137, v138);

        v15 = v146;
        goto LABEL_7;
      }

      break;
    }

    __break(1u);
LABEL_86:
    swift_once();
  }

LABEL_80:

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v109 = sub_1C4F00978();
  sub_1C442B738(v109, qword_1EDDFECB8);
  v110 = v135;
  v20(v135, v9, v1);
  v111 = sub_1C4F00968();
  v112 = sub_1C4F01CF8();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v114 = sub_1C43FFD34();
    v147[0] = v114;
    *v113 = 136315138;
    v115 = sub_1C4EFD3D8();
    v117 = v116;
    v118 = v110;
    v119 = *v139;
    (*v139)(v118, v1);
    v120 = sub_1C441D828(v115, v117, v147);

    *(v113 + 4) = v120;
    _os_log_impl(&dword_1C43F8000, v111, v112, "Error: entity type %s does not exist in both ground truth and blocking dicts", v113, 0xCu);
    sub_1C440962C(v114);
    sub_1C43FBE2C();
    sub_1C43FBE2C();

    v119(v9, v1);
  }

  else
  {

    v121 = *v139;
    (*v139)(v110, v1);
    v121(v9, v1);
  }

  return 0;
}

void sub_1C4839234(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1C43FFB44();
    sub_1C441F954(v6, v7);
    if (v27)
    {
      v8 = 0;
      v9 = *(v3 + 56);
      v30 = v3 + 56;
      v10 = *(v3 + 32);
      sub_1C43FEC90();
      sub_1C447E230();
      v12 = v11 >> 6;
      v31 = v11 >> 6;
      if (v13)
      {
        while (1)
        {
          sub_1C440AAD0();
          v32 = v15;
LABEL_11:
          sub_1C447E77C(v14);
          sub_1C4F02AF8();
          sub_1C494DD70(v4);
          sub_1C4851A9C();
          sub_1C44A3AA0();

          sub_1C4F02B68();
          v19 = *(v2 + 32);
          sub_1C443FCB0();
          if (((*(v2 + 56 + v21) >> v5) & 1) == 0)
          {
            break;
          }

          v22 = ~v20;
          while (1)
          {
            v23 = 0xE800000000000000;
            v24 = 0x6572617774666F73;
            switch(*(*(v2 + 48) + v5))
            {
              case 1:
                v24 = 0x746F6F7465756C62;
                v23 = 0xEF65636976654468;
                break;
              case 2:
                v23 = 0xE500000000000000;
                v24 = 0x6563616C70;
                break;
              case 3:
                v23 = 0xE600000000000000;
                v24 = 0x6E6F73726570;
                break;
              case 4:
                v24 = 0x416574756D6D6F63;
                v23 = 0xEF79746976697463;
                break;
              case 5:
                v24 = 0xD000000000000010;
                v23 = 0x80000001C4F866A0;
                break;
              case 6:
                v24 = 0xD000000000000016;
                v23 = 0x80000001C4F866C0;
                break;
              default:
                break;
            }

            v25 = 0xE800000000000000;
            v26 = 0x6572617774666F73;
            switch(v4)
            {
              case 1:
                v26 = 0x746F6F7465756C62;
                v25 = 0xEF65636976654468;
                break;
              case 2:
                v25 = 0xE500000000000000;
                v26 = 0x6563616C70;
                break;
              case 3:
                v25 = 0xE600000000000000;
                v26 = 0x6E6F73726570;
                break;
              case 4:
                v26 = 0x416574756D6D6F63;
                v25 = 0xEF79746976697463;
                break;
              case 5:
                v26 = 0xD000000000000010;
                v25 = 0x80000001C4F866A0;
                break;
              case 6:
                v26 = 0xD000000000000016;
                v25 = 0x80000001C4F866C0;
                break;
              default:
                break;
            }

            v27 = v24 == v26 && v23 == v25;
            if (v27)
            {
              break;
            }

            v28 = sub_1C4F02938();

            if (v28)
            {
              goto LABEL_35;
            }

            v5 = (v5 + 1) & v22;
            sub_1C4851BC0();
            if ((v29 & 1) == 0)
            {
              return;
            }
          }

LABEL_35:
          v12 = v31;
          if (!v32)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
LABEL_6:
        v16 = v8;
        while (1)
        {
          v8 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v8 >= v12)
          {
            return;
          }

          ++v16;
          if (*(v30 + 8 * v8))
          {
            sub_1C43FCF1C();
            v32 = v18 & v17;
            goto LABEL_11;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_1C4839564(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = sub_1C441F954(a1, a2);
    if (v34)
    {
      v4 = 0;
      v5 = *(v3 + 56);
      v6 = *(v3 + 32);
      sub_1C44410A0();
      if (v9 < 64)
      {
        v11 = ~(-1 << v9);
      }

      else
      {
        v11 = -1;
      }

      v12 = v11 & v8;
      v13 = (v9 + 63) >> 6;
      v14 = a2 + 56;
      v56 = v10;
      v57 = v7;
      v55 = v13;
LABEL_8:
      if (v12)
      {
        v15 = __clz(__rbit64(v12));
        v58 = (v12 - 1) & v12;
LABEL_15:
        v19 = *(v7 + 48) + 24 * (v15 | (v4 << 6));
        v21 = *v19;
        v20 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(a2 + 40);
        sub_1C4F02AF8();
        sub_1C45E8718(v21, v20, v22);
        v63 = v20;
        sub_1C494F908();
        v24 = sub_1C4F02B68();
        v25 = -1 << *(a2 + 32);
        v26 = v24 & ~v25;
        if ((*(v14 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
        {
          v27 = ~v25;
          if (v21)
          {
            v28 = 0x7070416F746F6870;
          }

          else
          {
            v28 = 0x63696E756D6D6F63;
          }

          if (v21)
          {
            v29 = 0xEF65636E61726165;
          }

          else
          {
            v29 = 0xED00006E6F697461;
          }

          v30 = 0x7472617473;
          if (v21)
          {
            v30 = 6581861;
          }

          v59 = v30;
          v60 = v28;
          v31 = 0xE500000000000000;
          if (v21)
          {
            v31 = 0xE300000000000000;
          }

          v61 = v31;
          v62 = v29;
          while (1)
          {
            v32 = *(a2 + 48) + 24 * v26;
            v33 = *v32;
            switch(*(v32 + 16))
            {
              case 1:
                v45 = *v32;
                if (v22 == 1 && v33 == *&v21)
                {
                  goto LABEL_95;
                }

                goto LABEL_90;
              case 2:
                if (v22 != 2)
                {
                  goto LABEL_90;
                }

                v40 = (LOBYTE(v33) & 1) == 0;
                if (LOBYTE(v33))
                {
                  v41 = 6581861;
                }

                else
                {
                  v41 = 0x7472617473;
                }

                if (v40)
                {
                  v37 = 0xE500000000000000;
                }

                else
                {
                  v37 = 0xE300000000000000;
                }

                v38 = v41 == v59;
                v39 = v61;
                goto LABEL_51;
              case 3:
                if (v22 != 3 || *&v33 != v21)
                {
                  goto LABEL_90;
                }

                goto LABEL_95;
              case 4:
                if (v22 != 4)
                {
                  goto LABEL_90;
                }

                v35 = (LOBYTE(v33) & 1) == 0;
                if (LOBYTE(v33))
                {
                  v36 = 0x7070416F746F6870;
                }

                else
                {
                  v36 = 0x63696E756D6D6F63;
                }

                if (v35)
                {
                  v37 = 0xED00006E6F697461;
                }

                else
                {
                  v37 = 0xEF65636E61726165;
                }

                v38 = v36 == v60;
                v39 = v62;
LABEL_51:
                if (v38 && v37 == v39)
                {
                  goto LABEL_92;
                }

                v43 = sub_1C4851C08();

                if (v43)
                {
                  goto LABEL_95;
                }

                goto LABEL_90;
              case 5:
                if (v22 != 5)
                {
                  goto LABEL_90;
                }

                if ((LODWORD(v33) & 0x10000) != 0)
                {
                  if ((v21 & 0x10000) != 0)
                  {
                    goto LABEL_95;
                  }
                }

                else if ((v21 & 0x10000) == 0 && *v32 == v21)
                {
                  goto LABEL_95;
                }

                goto LABEL_90;
              case 6:
                if (v22 != 6)
                {
                  goto LABEL_90;
                }

                v47 = 0xE800000000000000;
                v48 = 0x676E696D6F636E69;
                switch(*v32)
                {
                  case 1u:
                    v48 = 0x676E696F6774756FLL;
                    break;
                  case 2u:
                    v48 = 0x7463657269646962;
                    v47 = 0xED00006C616E6F69;
                    break;
                  case 3u:
                    v47 = 0xE900000000000064;
                    v48 = 0x656E696665646E75;
                    break;
                  default:
                    break;
                }

                v49 = 0xE800000000000000;
                v50 = 0x676E696D6F636E69;
                switch(v21)
                {
                  case 1:
                    v50 = 0x676E696F6774756FLL;
                    break;
                  case 2:
                    v50 = 0x7463657269646962;
                    v49 = 0xED00006C616E6F69;
                    break;
                  case 3:
                    v49 = 0xE900000000000064;
                    v50 = 0x656E696665646E75;
                    break;
                  default:
                    break;
                }

                if (v48 == v50 && v47 == v49)
                {
LABEL_92:

                  v10 = v56;
                  v7 = v57;
                  v13 = v55;
                  v12 = v58;
                  goto LABEL_8;
                }

                v52 = sub_1C4F02938();

                if (v52)
                {
                  goto LABEL_95;
                }

LABEL_90:
                v26 = (v26 + 1) & v27;
                if (((*(v14 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
                {
                  goto LABEL_97;
                }

                break;
              default:
                if (v22)
                {
                  goto LABEL_90;
                }

                v34 = *&v33 == v21 && *(v32 + 8) == v63;
                if (v34)
                {
                  v53 = v21;
                  v54 = v63;
                  goto LABEL_94;
                }

                if ((sub_1C4F02938() & 1) == 0)
                {
                  goto LABEL_90;
                }

                v53 = v21;
                v54 = v63;
LABEL_94:
                sub_1C45E872C(v53, v54, 0);
LABEL_95:
                v10 = v56;
                v7 = v57;
                v13 = v55;
                v12 = v58;
                goto LABEL_8;
            }
          }
        }

LABEL_97:
        sub_1C45E872C(v21, v63, v22);
      }

      else
      {
        v16 = v4;
        while (1)
        {
          v4 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v4 >= v13)
          {
            return;
          }

          ++v16;
          if (*(v10 + 8 * v4))
          {
            sub_1C43FCF1C();
            v58 = v18 & v17;
            goto LABEL_15;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_1C4839AB4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1C43FFB44();
    sub_1C441F954(v6, v7);
    if (v34)
    {
      v8 = 0;
      v9 = *(v3 + 56);
      v36 = v3 + 56;
      v10 = *(v3 + 32);
      sub_1C43FEC90();
      sub_1C447E230();
      v12 = v11 >> 6;
      v13 = v2 + 56;
      v37 = v11 >> 6;
      if (v14)
      {
        while (1)
        {
          sub_1C440AAD0();
          v38 = v16;
LABEL_11:
          sub_1C447E77C(v15);
          sub_1C4F02AF8();
          sub_1C4601534(v4);
          sub_1C4851A9C();
          sub_1C44A3AA0();

          sub_1C4F02B68();
          sub_1C440CAC8();
          sub_1C44CD048();
          if (((*(v13 + v21) >> v5) & 1) == 0)
          {
            break;
          }

          v22 = ~v20;
          while (1)
          {
            v23 = 0xE900000000000079;
            v24 = 0x6144664F656D6974;
            switch(*(*(v2 + 48) + v5))
            {
              case 1:
                v24 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
                break;
              case 2:
                v24 = sub_1C440679C();
                break;
              case 3:
                v24 = sub_1C4410D74();
                break;
              case 4:
                sub_1C43FBFBC();
                sub_1C44754A8();
                break;
              case 5:
                v24 = sub_1C440215C();
                break;
              case 6:
                v24 = sub_1C440D0A4();
                goto LABEL_26;
              case 7:
                v24 = sub_1C43FEBC8();
                break;
              case 8:
                v24 = sub_1C441F4F8();
LABEL_26:
                v23 = 0xED00000000000079;
                break;
              case 9:
                v24 = sub_1C43FFDEC();
                break;
              case 0xA:
                v24 = sub_1C4415F60();
                break;
              case 0xB:
                v24 = sub_1C43FF0EC();
                break;
              case 0xC:
                v24 = sub_1C440584C();
                break;
              default:
                break;
            }

            v25 = 0x6144664F656D6974;
            v26 = 0xE900000000000079;
            switch(v4)
            {
              case 1:
                sub_1C440F310();
                v25 = v27 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
                break;
              case 2:
                sub_1C440DEDC();
                v25 = v30 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
                v26 = 0xEF796144664F656DLL;
                break;
              case 3:
                sub_1C44040F0();
                v26 = v31 - 14;
                sub_1C4409A64();
                break;
              case 4:
                sub_1C440F310();
                v25 = v29 & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
                v26 = 0xEA00000000006B65;
                break;
              case 5:
                v26 = 0xE300000000000000;
                sub_1C4482E94();
                break;
              case 6:
                sub_1C4404BF8();
                v32 = 0x6E6F697461;
                goto LABEL_40;
              case 7:
                sub_1C44148EC();
                v26 = 0xEF687361486F6547;
                break;
              case 8:
                sub_1C440DEDC();
                v25 = v33 & 0xFFFFFFFFFFFFLL | 0x6547000000000000;
                v32 = 0x687361486FLL;
LABEL_40:
                v26 = v32 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                break;
              case 9:
                sub_1C4413E94();
                v26 = 0xEC00000068736148;
                break;
              case 10:
                v26 = 0xE400000000000000;
                sub_1C4851B74();
                break;
              case 11:
                sub_1C44040F0();
                v26 = v28 - 20;
                sub_1C4423A90();
                break;
              case 12:
                sub_1C440EF3C();
                v26 = 0xEB00000000657461;
                break;
              default:
                break;
            }

            v34 = v24 == v25 && v23 == v26;
            if (v34)
            {
              break;
            }

            v35 = sub_1C4F02938();

            if (v35)
            {
              goto LABEL_49;
            }

            v5 = (v5 + 1) & v22;
            if (((*(v13 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
            {
              return;
            }
          }

LABEL_49:
          v12 = v37;
          if (!v38)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
LABEL_6:
        v17 = v8;
        while (1)
        {
          v8 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v8 >= v12)
          {
            return;
          }

          ++v17;
          if (*(v36 + 8 * v8))
          {
            sub_1C43FCF1C();
            v38 = v19 & v18;
            goto LABEL_11;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_1C4839E00()
{
  sub_1C441EB54();
  if (v1 == v2 || (v3 = v2, v4 = v1, sub_1C441F954(v1, v2), !v28))
  {
LABEL_34:
    sub_1C43FBF50();
    return;
  }

  v5 = 0;
  v7 = v4 + 56;
  v6 = *(v4 + 56);
  v8 = *(v4 + 32);
  sub_1C43FEC90();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v31 = v13;
  v32 = v4;
  if ((v10 & v9) != 0)
  {
    do
    {
      v14 = __clz(__rbit64(v11));
      v15 = (v11 - 1) & v11;
LABEL_11:
      v19 = *(*(v4 + 48) + (v14 | (v5 << 6)));
      sub_1C4811360(*(v3 + 40), *(*(v4 + 48) + (v14 | (v5 << 6))));
      v20 = *(v3 + 32);
      sub_1C443FCB0();
      if (((*(v3 + 56 + v22) >> v0) & 1) == 0)
      {
        goto LABEL_34;
      }

      v33 = v15;
      v23 = ~v21;
      if (v19)
      {
        v24 = 0x617247746E657665;
      }

      else
      {
        v24 = 0x7247656C62617473;
      }

      if (v19)
      {
        v25 = 0xEA00000000006870;
      }

      else
      {
        v25 = 0xEB00000000687061;
      }

      while (1)
      {
        v26 = *(*(v3 + 48) + v0) ? 0x617247746E657665 : 0x7247656C62617473;
        v27 = *(*(v3 + 48) + v0) ? 0xEA00000000006870 : 0xEB00000000687061;
        v28 = v26 == v24 && v27 == v25;
        if (v28)
        {
          break;
        }

        sub_1C4417184();
        v29 = sub_1C4851C38();

        if (v29)
        {
          goto LABEL_32;
        }

        v0 = (v0 + 1) & v23;
        sub_1C4851BC0();
        if ((v30 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

LABEL_32:
      v13 = v31;
      v4 = v32;
      v11 = v33;
    }

    while (v33);
  }

  v16 = v5;
  while (1)
  {
    v5 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v5 >= v13)
    {
      goto LABEL_34;
    }

    ++v16;
    if (*(v7 + 8 * v5))
    {
      sub_1C43FCF1C();
      v15 = v18 & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1C4839FD8()
{
  sub_1C43FE6B0();
  if (v0 != v1 && (v2 = v1, v3 = sub_1C441F954(v0, v1), v28))
  {
    v4 = 0;
    v5 = *(v3 + 56);
    v6 = *(v3 + 32);
    sub_1C43FEC90();
    v9 = v8 & v7;
    v11 = (v10 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      while (2)
      {
        sub_1C4410218();
LABEL_11:
        v18 = (*(v12 + 48) + 16 * (v13 | (v4 << 6)));
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 40);
        sub_1C4F02AF8();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4417184();
        sub_1C4F01298();
        sub_1C4F02B68();
        sub_1C440CAC8();
        v24 = ~v23;
        do
        {
          v25 = v22 & v24;
          sub_1C4507B48();
          if ((v26 & 1) == 0)
          {

            goto LABEL_22;
          }

          v27 = (*(v2 + 48) + 16 * v25);
          v28 = *v27 == v20 && v27[1] == v19;
          if (v28)
          {
            break;
          }

          v29 = sub_1C4F02938();
          v22 = v25 + 1;
        }

        while ((v29 & 1) == 0);

        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v14 = v4;
    while (1)
    {
      v4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        goto LABEL_22;
      }

      sub_1C444C014();
      if (v15)
      {
        sub_1C43FCF1C();
        v9 = v17 & v16;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    sub_1C440A528();
  }
}

_BYTE *storeEnumTagSinglePayload for Grader(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1C483A1C8()
{
  sub_1C43FBD3C();
  sub_1C447F980(v4);
  v5 = sub_1C4EFF8A8();
  v6 = sub_1C440AC0C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C441FB94();
  sub_1C4418454();
  sub_1C4403D94(v9, v10);
  sub_1C442F1F0();
  sub_1C4406FA8();
  while (1)
  {
    sub_1C44004BC(v11);
    if (v12)
    {
      sub_1C448053C();
      v16 = sub_1C441322C();
      v17(v16);
      v18 = sub_1C44172C0();
      sub_1C4843F00(v18, v19, v20);
      v21 = sub_1C43FD854();
      v22(v21);
      goto LABEL_7;
    }

    v13 = sub_1C442CB30();
    v3(v13);
    sub_1C4418454();
    sub_1C4403D94(&unk_1EDDFCC80, v14);
    sub_1C442234C();
    sub_1C4475AE4();
    v15 = sub_1C4425BF4();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  v23 = sub_1C440230C();
  v1(v23);
  v24 = sub_1C440E350();
  v3(v24);
LABEL_7:
  sub_1C43FE9F0();
}

BOOL sub_1C483A338(uint64_t a1, _OWORD *a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1C4F02AF8();
  sub_1C45D5EBC();
  sub_1C4F02B68();
  v7 = *(v5 + 32);
  sub_1C43FC41C();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v5 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *v2;
      sub_1C45A2358(a2, v27);
      sub_1C48441B0(a2, v11, isUniquelyReferenced_nonNull_native);
      *v2 = v28;
      v18 = a2[1];
      *a1 = *a2;
      *(a1 + 16) = v18;
      *(a1 + 25) = *(a2 + 25);
      return v12 == 0;
    }

    v13 = (*(v5 + 48) + 48 * v11);
    v14 = v13[1];
    v29 = *v13;
    v30[0] = v14;
    *(v30 + 9) = *(v13 + 25);
    sub_1C45D5A9C();
    if (v15)
    {
      break;
    }

    v8 = v11 + 1;
  }

  sub_1C45EC75C(a2);
  v19 = *(v5 + 48) + 48 * v11;
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  v23 = *(v19 + 24);
  v24 = *(v19 + 32);
  *a1 = *v19;
  *(a1 + 8) = v21;
  *(a1 + 16) = v22;
  *(a1 + 24) = v23;
  *(a1 + 32) = v24;
  v25 = *(v19 + 40);
  *(a1 + 40) = v25;
  sub_1C45D7F78(v20, v21, v22, v23, v24, v25);
  return v12 == 0;
}

void sub_1C483A4BC()
{
  sub_1C43FBD3C();
  sub_1C447F980(v4);
  v5 = sub_1C4EFDAF8();
  v6 = sub_1C440AC0C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C441FB94();
  sub_1C44B8F78();
  sub_1C4403D94(v9, v10);
  sub_1C442F1F0();
  sub_1C4406FA8();
  while (1)
  {
    sub_1C44004BC(v11);
    if (v12)
    {
      sub_1C448053C();
      v16 = sub_1C441322C();
      v17(v16);
      v18 = sub_1C44172C0();
      sub_1C4844320(v18, v19, v20);
      v21 = sub_1C43FD854();
      v22(v21);
      goto LABEL_7;
    }

    v13 = sub_1C442CB30();
    v3(v13);
    sub_1C44B8F78();
    sub_1C4403D94(&qword_1EC0B85A8, v14);
    sub_1C442234C();
    sub_1C4475AE4();
    v15 = sub_1C4425BF4();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  v23 = sub_1C440230C();
  v1(v23);
  v24 = sub_1C440E350();
  v3(v24);
LABEL_7:
  sub_1C43FE9F0();
}

uint64_t sub_1C483A8A0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_1C4F02AF8();
  sub_1C45FE448(v65, a2, a3);
  v8 = v65;
  sub_1C4F02B68();
  v9 = *(v6 + 32);
  sub_1C43FC41C();
  v12 = v11 & ~v10;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_116:
    v45 = *v63;
    swift_isUniquelyReferenced_nonNull_native();
    v65[0] = *v63;
    sub_1C45A24AC(a2, a3);
    sub_1C4844AB4(a2, a3, v12);
    *v63 = v65[0];
    *a1 = a2;
    *(a1 + 8) = a3;
    return 1;
  }

  v13 = ~v10;
  v14 = a3 == 4;
  v15 = a2 == 10 && a3 == 4;
  v16 = a2 == 9 && a3 == 4;
  v61 = v16;
  v62 = v15;
  v17 = a2 == 8 && a3 == 4;
  v18 = a2 == 7 && a3 == 4;
  v59 = v18;
  v60 = v17;
  v19 = a2 == 6 && a3 == 4;
  v20 = a2 == 5 && a3 == 4;
  v57 = v20;
  v58 = v19;
  v21 = a2 == 4 && a3 == 4;
  v22 = a2 == 3 && a3 == 4;
  v55 = v22;
  v56 = v21;
  v23 = a2 == 2 && a3 == 4;
  v24 = a2 == 1 && a3 == 4;
  v53 = v24;
  v54 = v23;
  if (a2)
  {
    v14 = 0;
  }

  v52 = v14;
  while (2)
  {
    v25 = *(v6 + 48) + 16 * v12;
    v26 = *v25;
    switch(*(v25 + 8))
    {
      case 1:
        if (a3 != 1)
        {
          goto LABEL_115;
        }

        sub_1C440CC68();
        v27 = 0x6144664F656D6974;
        switch(v26)
        {
          case 1:
            v27 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
            break;
          case 2:
            v27 = sub_1C440679C();
            break;
          case 3:
            v27 = sub_1C4410D74();
            break;
          case 4:
            sub_1C44754A8();
            v27 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
            break;
          case 5:
            v27 = sub_1C440215C();
            break;
          case 6:
            v27 = sub_1C440D0A4();
            goto LABEL_82;
          case 7:
            v27 = sub_1C43FEBC8();
            break;
          case 8:
            v27 = sub_1C441F4F8();
LABEL_82:
            v8 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 9:
            v27 = sub_1C43FFDEC();
            break;
          case 10:
            v27 = sub_1C4415F60();
            break;
          case 11:
            v27 = sub_1C43FF0EC();
            break;
          case 12:
            v27 = sub_1C440584C();
            break;
          default:
            break;
        }

        v33 = 0x6144664F656D6974;
        v34 = 0xE900000000000079;
        switch(a2)
        {
          case 1:
            goto LABEL_97;
          case 2:
            goto LABEL_102;
          case 3:
            goto LABEL_103;
          case 4:
            goto LABEL_99;
          case 5:
            goto LABEL_105;
          case 6:
            goto LABEL_106;
          case 7:
            goto LABEL_104;
          case 8:
            goto LABEL_108;
          case 9:
            goto LABEL_101;
          case 10:
            goto LABEL_107;
          case 11:
            goto LABEL_98;
          case 12:
            goto LABEL_100;
          default:
            goto LABEL_110;
        }

        goto LABEL_110;
      case 2:
        if (a3 != 2)
        {
          goto LABEL_115;
        }

        v29 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4839AB4(v29, a2);
        v8 = v30;
        sub_1C45A24C0(v26, 2);
        if ((v8 & 1) == 0)
        {
          goto LABEL_115;
        }

        v47 = a2;
        v48 = 2;
        goto LABEL_118;
      case 3:
        if (a3 != 3)
        {
          goto LABEL_115;
        }

        v31 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4839AB4(v31, a2);
        v8 = v32;
        sub_1C45A24C0(v26, 3);
        if ((v8 & 1) == 0)
        {
          goto LABEL_115;
        }

        v47 = a2;
        v48 = 3;
LABEL_118:
        sub_1C45A24C0(v47, v48);
        goto LABEL_119;
      case 4:
        v28 = *v25;
        switch(v26)
        {
          case 1:
            if (v53)
            {
              goto LABEL_119;
            }

            goto LABEL_115;
          case 2:
            if (v54)
            {
              goto LABEL_119;
            }

            goto LABEL_115;
          case 3:
            if (v55)
            {
              goto LABEL_119;
            }

            goto LABEL_115;
          case 4:
            if (v56)
            {
              goto LABEL_119;
            }

            goto LABEL_115;
          case 5:
            if (v57)
            {
              goto LABEL_119;
            }

            goto LABEL_115;
          case 6:
            if (v58)
            {
              goto LABEL_119;
            }

            goto LABEL_115;
          case 7:
            if (v59)
            {
              goto LABEL_119;
            }

            goto LABEL_115;
          case 8:
            if (v60)
            {
              goto LABEL_119;
            }

            goto LABEL_115;
          case 9:
            if (v61)
            {
              goto LABEL_119;
            }

            goto LABEL_115;
          case 10:
            if (v62)
            {
              goto LABEL_119;
            }

            goto LABEL_115;
          default:
            if (v52)
            {
              goto LABEL_119;
            }

            goto LABEL_115;
        }

      default:
        if (a3)
        {
          goto LABEL_115;
        }

        sub_1C440CC68();
        v27 = 0x6144664F656D6974;
        switch(v26)
        {
          case 1:
            v27 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
            break;
          case 2:
            v27 = sub_1C440679C();
            break;
          case 3:
            v27 = sub_1C4410D74();
            break;
          case 4:
            sub_1C44754A8();
            v27 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
            break;
          case 5:
            v27 = sub_1C440215C();
            break;
          case 6:
            v27 = sub_1C440D0A4();
            goto LABEL_95;
          case 7:
            v27 = sub_1C43FEBC8();
            break;
          case 8:
            v27 = sub_1C441F4F8();
LABEL_95:
            v8 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 9:
            v27 = sub_1C43FFDEC();
            break;
          case 10:
            v27 = sub_1C4415F60();
            break;
          case 11:
            v27 = sub_1C43FF0EC();
            break;
          case 12:
            v27 = sub_1C440584C();
            break;
          default:
            break;
        }

        v33 = 0x6144664F656D6974;
        v34 = 0xE900000000000079;
        switch(a2)
        {
          case 1:
LABEL_97:
            sub_1C440F310();
            v33 = v35 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
            break;
          case 2:
LABEL_102:
            sub_1C440DEDC();
            v33 = v38 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
            v34 = 0xEF796144664F656DLL;
            break;
          case 3:
LABEL_103:
            sub_1C44040F0();
            v34 = v39 - 14;
            sub_1C4409A64();
            break;
          case 4:
LABEL_99:
            v34 = 0xEA00000000006B65;
            sub_1C440F310();
            v33 = v37 & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
            break;
          case 5:
LABEL_105:
            v34 = 0xE300000000000000;
            sub_1C4482E94();
            break;
          case 6:
LABEL_106:
            sub_1C4404BF8();
            v40 = 0x6E6F697461;
            goto LABEL_109;
          case 7:
LABEL_104:
            sub_1C44148EC();
            v34 = 0xEF687361486F6547;
            break;
          case 8:
LABEL_108:
            sub_1C440DEDC();
            v33 = v41 & 0xFFFFFFFFFFFFLL | 0x6547000000000000;
            v40 = 0x687361486FLL;
LABEL_109:
            v34 = v40 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 9:
LABEL_101:
            sub_1C4413E94();
            v34 = 0xEC00000068736148;
            break;
          case 10:
LABEL_107:
            v34 = 0xE400000000000000;
            sub_1C4851B74();
            break;
          case 11:
LABEL_98:
            sub_1C44040F0();
            v34 = v36 - 20;
            sub_1C4423A90();
            break;
          case 12:
LABEL_100:
            sub_1C440EF3C();
            v34 = 0xEB00000000657461;
            break;
          default:
            break;
        }

LABEL_110:
        if (v27 != v33 || v8 != v34)
        {
          v43 = sub_1C4F02938();

          if (v43)
          {
            goto LABEL_119;
          }

LABEL_115:
          v12 = (v12 + 1) & v13;
          sub_1C4851B1C();
          if ((v44 & 1) == 0)
          {
            goto LABEL_116;
          }

          continue;
        }

LABEL_119:
        v49 = *(v6 + 48) + 16 * v12;
        v50 = *v49;
        *a1 = *v49;
        v51 = *(v49 + 8);
        *(a1 + 8) = v51;
        sub_1C45A24AC(v50, v51);
        return 0;
    }
  }
}

uint64_t sub_1C483AEB4(char *a1, char a2)
{
  sub_1C4851B8C();
  sub_1C4F02AF8();
  sub_1C494CF40(a2);
  sub_1C4851A9C();
  sub_1C44A3AA0();

  v6 = sub_1C4F02B68();
  sub_1C4415A08(v6);
  if (v7)
  {
    while (1)
    {
      v8 = 0xE800000000000000;
      v9 = 0x4449656C646E7562;
      switch(*(*(v4 + 48) + v2))
      {
        case 1:
          v9 = 0xD000000000000011;
          v8 = 0x80000001C4F86740;
          break;
        case 2:
          v9 = 0x456E6F6973736573;
          v8 = 0xEC000000746E6576;
          break;
        case 3:
          v9 = 0xD000000000000016;
          v8 = 0x80000001C4F85600;
          break;
        case 4:
          v9 = 0xD000000000000016;
          v8 = 0x80000001C4F86760;
          break;
        case 5:
          v9 = 0x7463617265746E69;
          v8 = 0xEF657079546E6F69;
          break;
        case 6:
          v9 = 0x646576726573626FLL;
          v8 = 0xEB00000000656741;
          break;
        default:
          break;
      }

      v10 = 0xE800000000000000;
      v11 = 0x4449656C646E7562;
      switch(a2)
      {
        case 1:
          v11 = 0xD000000000000011;
          v10 = 0x80000001C4F86740;
          break;
        case 2:
          v11 = 0x456E6F6973736573;
          v10 = 0xEC000000746E6576;
          break;
        case 3:
          v11 = 0xD000000000000016;
          v10 = 0x80000001C4F85600;
          break;
        case 4:
          v11 = 0xD000000000000016;
          v10 = 0x80000001C4F86760;
          break;
        case 5:
          v11 = 0x7463617265746E69;
          v10 = 0xEF657079546E6F69;
          break;
        case 6:
          v11 = 0x646576726573626FLL;
          v10 = 0xEB00000000656741;
          break;
        default:
          break;
      }

      if (v9 == v11 && v8 == v10)
      {
        break;
      }

      sub_1C44AB158();
      sub_1C44160EC();

      if (v3)
      {
        goto LABEL_24;
      }

      sub_1C441DD14();
      if ((v13 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

LABEL_24:
    result = sub_1C44F19C0();
  }

  else
  {
LABEL_22:
    v14 = *v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    sub_1C484504C(a2, v2, isUniquelyReferenced_nonNull_native);
    *v17 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

BOOL sub_1C483B180(_DWORD *a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  MEMORY[0x1C69417C0](*(v7 + 40), a2, 4);
  v8 = *(v7 + 32);
  sub_1C44584AC();
  while (1)
  {
    sub_1C445BB08(v9, v10);
    v13 = v12 & v11;
    if ((v12 & v11) == 0)
    {
      break;
    }

    if (*(*(v7 + 48) + 4 * v3) == a2)
    {
      goto LABEL_6;
    }

    v9 = v3 + 1;
  }

  v14 = *v4;
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C44BBDF0();
  v16 = sub_1C48453CC(a2, v3, v15);
  sub_1C44EC82C(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26);
LABEL_6:
  result = v13 == 0;
  *a1 = a2;
  return result;
}

void sub_1C483B22C()
{
  sub_1C43FBD3C();
  sub_1C4424708(v2);
  v50 = type metadata accessor for LiveGlobalKnowledgeTriple();
  v3 = sub_1C43FCDF8(v50);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FC0C8();
  v9 = MEMORY[0x1EEE9AC00](v8);
  sub_1C442EB4C(v9, v10, v11, v12, v13, v14, v15, v16, v47);
  v17 = sub_1C44A8370();
  LiveGlobalKnowledgeTriple.hash(into:)(v17);
  v18 = sub_1C4F02B68();
  sub_1C4433474(v18);
  if (v20)
  {
    v21 = ~v19;
    v49 = *(v5 + 72);
    v48 = ~v19;
    do
    {
      v22 = *(v0 + 6);
      sub_1C4851984();
      sub_1C441D6D8();
      if (sub_1C4EFF088())
      {
        v23 = v50[5];
        sub_1C4EFEEF8();
        sub_1C4419828();
        v25 = sub_1C4403D94(&off_1EDDFCCA8, v24);
        sub_1C442ABEC();
        sub_1C44017C4();
        sub_1C4455394();
        v26 = v26 && v0 == v51;
        if (v26)
        {

          v27 = v21;
          v21 = v48;
        }

        else
        {
          sub_1C44172DC();
          sub_1C44323EC();

          v27 = v21;
          v21 = v48;
          if ((v23 & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        v28 = v50[6];
        if (sub_1C4EFF878())
        {
          v29 = v50[7];
          sub_1C442ABEC();
          sub_1C443E33C();
          sub_1C442A410();
          if (v26 && v51 == v25)
          {
          }

          else
          {
            sub_1C43FED70();
            sub_1C4488AFC();

            if ((v29 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          sub_1C440D4EC(v50[8]);
          v33 = v26 && v31 == v32;
          if (v33 || (sub_1C4F02938() & 1) != 0)
          {
            sub_1C4461FB0(v50[9]);
            if (v26)
            {
              sub_1C4461FB0(v50[10]);
              if (v26)
              {
                v34 = v50[11];
                v35 = *(v1 + v34);
                v36 = *(v27 + v34);
                v37 = *(v35 + 16);
                if (v37 == *(v36 + 16))
                {
                  if (!v37 || v35 == v36)
                  {
LABEL_38:
                    sub_1C48519DC(v1, type metadata accessor for LiveGlobalKnowledgeTriple);
                    v44 = sub_1C4404C28();
                    sub_1C48519DC(v44, v45);
                    v46 = *(v0 + 6);
                    sub_1C4851984();
                    goto LABEL_37;
                  }

                  v38 = (v35 + 32);
                  v39 = (v36 + 32);
                  while (*v38 == *v39)
                  {
                    ++v38;
                    ++v39;
                    if (!--v37)
                    {
                      goto LABEL_38;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_35:
      sub_1C4482CE8();
      sub_1C447F0F0();
    }

    while ((v40 & 1) != 0);
  }

  sub_1C4485FD8();
  sub_1C4416AB8();
  sub_1C4851984();
  v41 = sub_1C4418AC8();
  sub_1C48454D4(v41, v42, v43);
  sub_1C4475278();
  sub_1C4416AB8();
  sub_1C4471FB4();
LABEL_37:
  sub_1C43FE9F0();
}

void sub_1C483B580()
{
  sub_1C43FBD3C();
  sub_1C447F980(v4);
  v5 = sub_1C4EF9F68();
  v6 = sub_1C440AC0C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C441FB94();
  sub_1C44BBC48();
  sub_1C4403D94(v9, v10);
  sub_1C442F1F0();
  sub_1C4406FA8();
  while (1)
  {
    sub_1C44004BC(v11);
    if (v12)
    {
      sub_1C448053C();
      v16 = sub_1C441322C();
      v17(v16);
      v18 = sub_1C44172C0();
      sub_1C4845940(v18, v19, v20);
      v21 = sub_1C43FD854();
      v22(v21);
      goto LABEL_7;
    }

    v13 = sub_1C442CB30();
    v3(v13);
    sub_1C44BBC48();
    sub_1C4403D94(&qword_1EDDFA3E0, v14);
    sub_1C442234C();
    sub_1C4475AE4();
    v15 = sub_1C4425BF4();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  v23 = sub_1C440230C();
  v1(v23);
  v24 = sub_1C440E350();
  v3(v24);
LABEL_7:
  sub_1C43FE9F0();
}

void sub_1C483B6F0()
{
  sub_1C43FBD3C();
  v3 = v2;
  v35 = v4;
  v5 = type metadata accessor for Source();
  v6 = sub_1C43FCF7C(v5);
  v36 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FC0C8();
  MEMORY[0x1EEE9AC00](v10);
  v32 = &v32 - v11;
  v33 = v0;
  v12 = *v0;
  v13 = *(*v0 + 40);
  sub_1C4F02AF8();
  v14 = *v3;
  v15 = v3[1];
  v34 = v3;
  sub_1C4F01298();
  sub_1C4F02B68();
  v16 = *(v12 + 32);
  sub_1C43FC41C();
  v19 = ~v18;
  while (1)
  {
    v20 = v17 & v19;
    if (((1 << (v17 & v19)) & *(v12 + 56 + (((v17 & v19) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v26 = v33;
      v27 = *v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1C4460260();
      v29 = v32;
      sub_1C4851984();
      v37 = *v26;
      sub_1C4845BF0(v29, v20, isUniquelyReferenced_nonNull_native);
      *v26 = v37;
      sub_1C4416AB8();
      sub_1C4471FB4();
      goto LABEL_12;
    }

    v21 = *(v12 + 48);
    v22 = *(v36 + 72) * v20;
    sub_1C4460260();
    sub_1C4851984();
    if (*v1 == v14 && v1[1] == v15)
    {
      break;
    }

    v24 = sub_1C4851C08();
    sub_1C441E3D8();
    sub_1C48519DC(v1, v25);
    if (v24)
    {
      goto LABEL_11;
    }

    v17 = v20 + 1;
  }

  sub_1C441E3D8();
  sub_1C48519DC(v1, v30);
LABEL_11:
  sub_1C48519DC(v34, type metadata accessor for Source);
  v31 = *(v12 + 48);
  sub_1C4851984();
LABEL_12:
  sub_1C43FE9F0();
}

uint64_t sub_1C483B90C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1C4F02AF8();
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v45 = a2;
  v13 = *(a2 + 48);
  sub_1C43FC2F4();
  sub_1C4F01298();
  v51 = v10;
  v52 = v9;
  sub_1C4F01298();
  sub_1C4F01298();
  v47 = v13;
  MEMORY[0x1C69417F0](v13);
  sub_1C4F02B38();
  sub_1C4F02B68();
  v14 = *(v5 + 32);
  sub_1C43FC41C();
  v17 = v16 & ~v15;
  v50 = v18;
  if ((*(v18 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v48 = v12;
    v49 = v11;
    v19 = ~v15;
    v43 = v5;
    v20 = *(v5 + 48);
    while (1)
    {
      v21 = v20 + 56 * v17;
      v22 = *(v21 + 16);
      v23 = *(v21 + 24);
      v24 = *(v21 + 32);
      v25 = *(v21 + 40);
      v26 = *(v21 + 48);
      v27 = *(v21 + 52);
      v28 = *v21 == v7 && *(v21 + 8) == v8;
      if (v28 || (sub_1C4F02938() & 1) != 0)
      {
        v29 = v22 == v52 && v23 == v51;
        if (v29 || (sub_1C4F02938() & 1) != 0)
        {
          v30 = v24 == v49 && v25 == v48;
          if (v30 || (sub_1C4F02938()) && v26 == v47 && v27 == v4)
          {
            break;
          }
        }
      }

      v17 = (v17 + 1) & v19;
      if (((*(v50 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    sub_1C4851A34(v45);
    v38 = *(v43 + 48) + 56 * v17;
    v40 = *(v38 + 16);
    v39 = *(v38 + 32);
    v41 = *v38;
    v55 = *(v38 + 48);
    v54[1] = v40;
    v54[2] = v39;
    v54[0] = v41;
    v42 = *(v38 + 16);
    *a1 = *v38;
    *(a1 + 16) = v42;
    *(a1 + 32) = *(v38 + 32);
    *(a1 + 48) = *(v38 + 48);
    sub_1C461B90C(v54, v53);
    return 0;
  }

  else
  {
LABEL_23:
    v32 = *v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53[0] = *v44;
    sub_1C461B90C(v45, v54);
    v34 = sub_1C43FD024();
    sub_1C4845E60(v34, v35, isUniquelyReferenced_nonNull_native);
    *v44 = v53[0];
    v36 = *(v45 + 16);
    *a1 = *v45;
    *(a1 + 16) = v36;
    *(a1 + 32) = *(v45 + 32);
    *(a1 + 48) = *(v45 + 48);
    return 1;
  }
}

void sub_1C483BB9C()
{
  sub_1C43FBD3C();
  sub_1C447F980(v4);
  v5 = sub_1C4EF9CD8();
  v6 = sub_1C440AC0C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C441FB94();
  sub_1C44C1220();
  sub_1C4403D94(v9, v10);
  sub_1C442F1F0();
  sub_1C4406FA8();
  while (1)
  {
    sub_1C44004BC(v11);
    if (v12)
    {
      sub_1C448053C();
      v16 = sub_1C441322C();
      v17(v16);
      v18 = sub_1C44172C0();
      sub_1C48460DC(v18, v19, v20);
      v21 = sub_1C43FD854();
      v22(v21);
      goto LABEL_7;
    }

    v13 = sub_1C442CB30();
    v3(v13);
    sub_1C44C1220();
    sub_1C4403D94(&qword_1EC0B9D00, v14);
    sub_1C442234C();
    sub_1C4475AE4();
    v15 = sub_1C4425BF4();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  v23 = sub_1C440230C();
  v1(v23);
  v24 = sub_1C440E350();
  v3(v24);
LABEL_7:
  sub_1C43FE9F0();
}

void sub_1C483BD28()
{
  sub_1C43FE6B0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v21 = v9;
  sub_1C4851B8C();
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v8);
  sub_1C4F01298();
  sub_1C4F02B68();
  v10 = *(v2 + 32);
  sub_1C43FC41C();
  sub_1C44CD048();
  if ((*(v2 + 56 + v12) >> v1))
  {
    v13 = ~v11;
    v14 = *(v2 + 48);
    while (1)
    {
      v15 = (v14 + 24 * v1);
      if (*v15 == v8)
      {
        v16 = v15[1] == v6 && v15[2] == v4;
        if (v16 || (sub_1C4851C38() & 1) != 0)
        {
          break;
        }
      }

      v1 = (v1 + 1) & v13;
      if (((*(v2 + 56 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v19 = *(v2 + 48) + 24 * v1;
    v20 = *(v19 + 16);
    *v21 = *v19;
    *(v21 + 16) = v20;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
LABEL_10:
    v17 = *v0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v0;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C484648C(v8, v6, v4, v1, isUniquelyReferenced_nonNull_native);
    *v0 = v22;
    *v21 = v8;
    *(v21 + 8) = v6;
    *(v21 + 16) = v4;
  }

  sub_1C440A528();
}

uint64_t sub_1C483BE88(char *a1, char a2)
{
  v6 = v2;
  sub_1C4851B8C();
  sub_1C4F02AF8();
  sub_1C4424B10(a2);
  sub_1C4851A9C();
  sub_1C44A3AA0();

  v8 = sub_1C4F02B68();
  sub_1C4415A08(v8);
  if (v9)
  {
    while (1)
    {
      v10 = 0xE400000000000000;
      v11 = 1702259052;
      switch(*(*(v5 + 48) + v3))
      {
        case 1:
          v11 = 1701736302;
          break;
        case 2:
          v11 = sub_1C4851B48();
          break;
        case 3:
          v11 = sub_1C44289B8();
          v10 = 0x80000001C4F86260;
          break;
        case 4:
          v10 = 0xE600000000000000;
          v12 = 1801807223;
          goto LABEL_9;
        case 5:
          v14 = sub_1C43FE694() & 0xFFFF0000FFFFFFFFLL | 0x347900000000;
          goto LABEL_12;
        case 6:
          v14 = sub_1C4428E78();
LABEL_12:
          v11 = sub_1C44B91EC(v14);
          break;
        case 7:
          v10 = 0xE600000000000000;
          v12 = 1920298856;
LABEL_9:
          v11 = v12 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
          break;
        case 8:
          v15 = sub_1C4428E78();
          v11 = sub_1C448881C(v15);
          break;
        case 9:
          v13 = sub_1C43FE694();
          v11 = sub_1C4456998(v13);
          break;
        case 0xA:
          v11 = sub_1C44289B8();
          v10 = 0x80000001C4F862C0;
          break;
        default:
          break;
      }

      v16 = 0xE400000000000000;
      v17 = 1702259052;
      switch(a2)
      {
        case 1:
          v17 = 1701736302;
          break;
        case 2:
          v16 = 0xE500000000000000;
          v17 = 0x796C696164;
          break;
        case 3:
          sub_1C47F79F8();
          v16 = 0x80000001C4F86260;
          break;
        case 4:
          v16 = 0xE600000000000000;
          v18 = 1801807223;
          goto LABEL_22;
        case 5:
          sub_1C440EFA8();
          v21 = v20 & 0xFFFF0000FFFFFFFFLL | 0x347900000000;
          goto LABEL_25;
        case 6:
          sub_1C444C270();
LABEL_25:
          v17 = v21 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
          v16 = 0xEB00000000737275;
          break;
        case 7:
          v16 = 0xE600000000000000;
          v18 = 1920298856;
LABEL_22:
          v17 = v18 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
          break;
        case 8:
          sub_1C444C270();
          v17 = v22 & 0xFFFFFFFFFFFFLL | 0x4D31000000000000;
          v16 = 0xEE00736574756E69;
          break;
        case 9:
          sub_1C440EFA8();
          v17 = v19 | 0x694D377900000000;
          v16 = 0xED0000736574756ELL;
          break;
        case 10:
          sub_1C47F79F8();
          v16 = 0x80000001C4F862C0;
          break;
        default:
          break;
      }

      if (v11 == v17 && v10 == v16)
      {
        break;
      }

      sub_1C44AB158();
      sub_1C44160EC();

      if (v4)
      {
        goto LABEL_36;
      }

      sub_1C441DD14();
      if ((v24 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_36:
    result = sub_1C44F19C0();
  }

  else
  {
LABEL_34:
    v25 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v6;
    sub_1C484663C(a2, v3, isUniquelyReferenced_nonNull_native);
    *v6 = v29;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_1C483C148()
{
  sub_1C43FBD3C();
  sub_1C447F980(v4);
  v5 = sub_1C4EFDAB8();
  v6 = sub_1C440AC0C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C441FB94();
  sub_1C441B994();
  sub_1C4403D94(v9, v10);
  sub_1C442F1F0();
  sub_1C4406FA8();
  while (1)
  {
    sub_1C44004BC(v11);
    if (v12)
    {
      sub_1C448053C();
      v16 = sub_1C441322C();
      v17(v16);
      v18 = sub_1C44172C0();
      sub_1C4846A34(v18, v19, v20);
      v21 = sub_1C43FD854();
      v22(v21);
      goto LABEL_7;
    }

    v13 = sub_1C442CB30();
    v3(v13);
    sub_1C441B994();
    sub_1C4403D94(&unk_1EDDEFFC0, v14);
    sub_1C442234C();
    sub_1C4475AE4();
    v15 = sub_1C4425BF4();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  v23 = sub_1C440230C();
  v1(v23);
  v24 = sub_1C440E350();
  v3(v24);
LABEL_7:
  sub_1C43FE9F0();
}

void sub_1C483C2DC()
{
  sub_1C43FBD3C();
  sub_1C447F980(v4);
  v5 = sub_1C4EFEFB8();
  v6 = sub_1C440AC0C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C441FB94();
  sub_1C445BD70();
  sub_1C4403D94(v9, v10);
  sub_1C442F1F0();
  sub_1C4406FA8();
  while (1)
  {
    sub_1C44004BC(v11);
    if (v12)
    {
      sub_1C448053C();
      v16 = sub_1C441322C();
      v17(v16);
      v18 = sub_1C44172C0();
      sub_1C4846CE4(v18, v19, v20);
      v21 = sub_1C43FD854();
      v22(v21);
      goto LABEL_7;
    }

    v13 = sub_1C442CB30();
    v3(v13);
    sub_1C445BD70();
    sub_1C4403D94(&qword_1EDDEFF88, v14);
    sub_1C442234C();
    sub_1C4475AE4();
    v15 = sub_1C4425BF4();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  v23 = sub_1C440230C();
  v1(v23);
  v24 = sub_1C440E350();
  v3(v24);
LABEL_7:
  sub_1C43FE9F0();
}

void sub_1C483C44C()
{
  sub_1C43FBD3C();
  sub_1C447F980(v4);
  v5 = sub_1C4F002A8();
  v6 = sub_1C440AC0C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C441FB94();
  sub_1C4480788();
  sub_1C4403D94(v9, v10);
  sub_1C442F1F0();
  sub_1C4406FA8();
  while (1)
  {
    sub_1C44004BC(v11);
    if (v12)
    {
      sub_1C448053C();
      v16 = sub_1C441322C();
      v17(v16);
      v18 = sub_1C44172C0();
      sub_1C4846F94(v18, v19, v20);
      v21 = sub_1C43FD854();
      v22(v21);
      goto LABEL_7;
    }

    v13 = sub_1C442CB30();
    v3(v13);
    sub_1C4480788();
    sub_1C4403D94(&qword_1EC0BDF38, v14);
    sub_1C442234C();
    sub_1C4475AE4();
    v15 = sub_1C4425BF4();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  v23 = sub_1C440230C();
  v1(v23);
  v24 = sub_1C440E350();
  v3(v24);
LABEL_7:
  sub_1C43FE9F0();
}

void sub_1C483C5BC()
{
  sub_1C43FBD3C();
  v3 = v2;
  v54 = v4;
  v5 = type metadata accessor for OntologyTriple();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FC0C8();
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v51 - v12;
  v53 = v0;
  v13 = *v0;
  v14 = *(*v0 + 40);
  sub_1C4F02AF8();
  v15 = *v3;
  v16 = v3[1];
  sub_1C4F01298();
  v17 = v5[5];
  sub_1C4EFEEF8();
  sub_1C4419828();
  sub_1C4403D94(v18, v19);
  v58 = v17;
  sub_1C4F00FE8();
  sub_1C4851B3C(v5[6]);
  v59 = v21;
  v60 = v20;
  sub_1C4F01298();
  v55 = v5[7];
  sub_1C4F00FE8();
  v65 = v3;
  v66 = v5;
  sub_1C4851B3C(v5[8]);
  v57 = v22;
  v56 = v23;
  sub_1C4F01298();
  sub_1C4F02B68();
  v63 = v13 + 56;
  v64 = v13;
  v24 = *(v13 + 32);
  sub_1C43FC41C();
  v27 = v26 & ~v25;
  if ((*(v28 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
  {
    v61 = ~v25;
    v62 = *(v8 + 72);
    do
    {
      v29 = *(v64 + 48);
      v30 = v62 * v27;
      sub_1C44883CC();
      sub_1C4851984();
      v31 = *v1 == v15 && v1[1] == v16;
      if (!v31 && (sub_1C4851C08() & 1) == 0)
      {
        goto LABEL_32;
      }

      v32 = v66[5];
      sub_1C4419828();
      v34 = sub_1C4403D94(&off_1EDDFCCA8, v33);
      sub_1C43FD4F4();
      v35 = v65 + v58;
      sub_1C43FD4F4();
      sub_1C4455394();
      if (v31 && v15 == v35)
      {
      }

      else
      {
        v37 = sub_1C44172DC();

        if ((v37 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v38 = (v1 + v66[6]);
      v39 = *v38 == v60 && v38[1] == v59;
      if (!v39 && (sub_1C4F02938() & 1) == 0)
      {
        goto LABEL_32;
      }

      v40 = v1 + v66[7];
      sub_1C43FD4F4();
      v41 = v65 + v55;
      sub_1C43FD4F4();
      sub_1C442A410();
      if (v31 && v41 == v34)
      {
      }

      else
      {
        v43 = sub_1C43FED70();

        if ((v43 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v44 = (v1 + v66[8]);
      v45 = *v44 == v57 && v44[1] == v56;
      if (v45 || (sub_1C4F02938() & 1) != 0)
      {
        sub_1C48519DC(v1, type metadata accessor for OntologyTriple);
        sub_1C48519DC(v65, type metadata accessor for OntologyTriple);
        v50 = *(v64 + 48) + v30;
        sub_1C4851984();
        goto LABEL_35;
      }

LABEL_32:
      sub_1C4482CE8();
      v27 = (v27 + 1) & v61;
    }

    while (((*(v63 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0);
  }

  v46 = v53;
  v47 = *v53;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1C44883CC();
  v49 = v52;
  sub_1C4851984();
  v67 = *v46;
  sub_1C4847244(v49, v27, isUniquelyReferenced_nonNull_native);
  *v46 = v67;
  sub_1C4416AB8();
  sub_1C4471FB4();
LABEL_35:
  sub_1C43FE9F0();
}

uint64_t sub_1C483CA44(__int128 *a1, __int128 *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1C4F02AF8();
  v6 = *(a2 + 4);
  v7 = *(a2 + 5);
  v8 = *(a2 + 6);
  v9 = *(a2 + 7);
  if (v7)
  {
    v10 = *(a2 + 4);
    v11 = *(a2 + 5);
    sub_1C4F01298();
  }

  else
  {
    v12 = *a2;
    v13 = *(a2 + 1);
  }

  sub_1C4F01298();
  sub_1C4F02B68();
  v14 = v4 + 56;
  v15 = *(v4 + 32);
  sub_1C43FC41C();
  v18 = v17 & ~v16;
  v44 = a2;
  if (((*(v4 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
  {
LABEL_27:
    v31 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50[0] = *v43;
    sub_1C4851520(v44, v51);
    sub_1C4847730(v44, v18, isUniquelyReferenced_nonNull_native);
    *v43 = v50[0];
    v33 = v44[1];
    *a1 = *v44;
    a1[1] = v33;
    v34 = v44[3];
    a1[2] = v44[2];
    a1[3] = v34;
    return 1;
  }

  v46 = v9;
  v47 = v8;
  v48 = v6;
  v49 = ~v16;
  v19 = *a2;
  v20 = *(a2 + 1);
  v42 = v4;
  v21 = *(v4 + 48);
  while (1)
  {
    v22 = (v21 + (v18 << 6));
    v23 = v22[4];
    v24 = v22[5];
    v26 = v22[6];
    v25 = v22[7];
    if (*v22 == v19 && v22[1] == v20)
    {
      break;
    }

    v28 = sub_1C4F02938();
    if (v24)
    {
      goto LABEL_13;
    }

LABEL_25:
    if (v28)
    {
      goto LABEL_28;
    }

LABEL_26:
    v18 = (v18 + 1) & v49;
    if (((*(v14 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v28 = 1;
  if (!v24)
  {
    goto LABEL_25;
  }

LABEL_13:
  if (!v7)
  {
    goto LABEL_25;
  }

  if (v28)
  {
    goto LABEL_28;
  }

  v29 = v23 == v48 && v24 == v7;
  if (!v29 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_26;
  }

  if (v26 != v47 || v25 != v46)
  {
    sub_1C43FD024();
    v28 = sub_1C4F02938();
    goto LABEL_25;
  }

LABEL_28:
  sub_1C485157C(v44);
  v36 = (*(v42 + 48) + (v18 << 6));
  v38 = *v36;
  v37 = v36[1];
  v39 = v36[3];
  v51[2] = v36[2];
  v51[3] = v39;
  v51[0] = v38;
  v51[1] = v37;
  v40 = v36[1];
  *a1 = *v36;
  a1[1] = v40;
  v41 = v36[3];
  a1[2] = v36[2];
  a1[3] = v41;
  sub_1C4851520(v51, v50);
  return 0;
}

void sub_1C483CC80()
{
  sub_1C43FBD3C();
  v4 = sub_1C4424708(v3);
  v39 = type metadata accessor for EventTriple(v4);
  v5 = sub_1C43FCDF8(v39);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FC0C8();
  v9 = MEMORY[0x1EEE9AC00](v8);
  sub_1C442EB4C(v9, v10, v11, v12, v13, v14, v15, v16, v38);
  v17 = sub_1C44A8370();
  EventTriple.hash(into:)(v17);
  v18 = &v40;
  v19 = sub_1C4F02B68();
  sub_1C4433474(v19);
  if (v21)
  {
    sub_1C448E048(v20);
    do
    {
      sub_1C4429044();
      sub_1C44358F0();
      sub_1C44A1D58();
      sub_1C441D6D8();
      if (sub_1C4EFF088())
      {
        sub_1C4485EF4();
        sub_1C4419828();
        v23 = sub_1C4403D94(&off_1EDDFCCA8, v22);
        sub_1C442ABEC();
        sub_1C44017C4();
        sub_1C4455394();
        v24 = v24 && v1 == v18;
        if (v24)
        {

          sub_1C444B16C();
        }

        else
        {
          sub_1C44172DC();
          sub_1C44323EC();

          sub_1C444B16C();
          if ((v0 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        if (sub_1C4475BC8())
        {
          v0 = *(v18 + 7);
          sub_1C442ABEC();
          sub_1C443E33C();
          sub_1C442A410();
          if (v24 && v18 == v23)
          {

            v18 = v39;
          }

          else
          {
            sub_1C43FED70();
            sub_1C4488AFC();

            v18 = v39;
            if ((v0 & 1) == 0)
            {
              goto LABEL_34;
            }
          }

          sub_1C440D4EC(*(v18 + 8));
          v28 = v24 && v26 == v27;
          if (v28 || (sub_1C4F02938() & 1) != 0)
          {
            sub_1C4461FB0(*(v18 + 9));
            if (v24)
            {
              sub_1C4441944(*(v18 + 10));
              if (v24)
              {
                sub_1C440D4EC(*(v18 + 11));
                v31 = v24 && v29 == v30;
                if (v31 || (sub_1C4F02938() & 1) != 0)
                {
                  sub_1C4441944(*(v18 + 12));
                  if (v24)
                  {
                    sub_1C48519DC(v2, type metadata accessor for EventTriple);
                    v36 = sub_1C4404C28();
                    sub_1C48519DC(v36, v37);
                    sub_1C447F500();
                    goto LABEL_36;
                  }
                }
              }
            }
          }
        }
      }

LABEL_34:
      sub_1C4482CE8();
      sub_1C447F0F0();
    }

    while ((v32 & 1) != 0);
  }

  sub_1C4485FD8();
  sub_1C44358F0();
  sub_1C445ABB8();
  v33 = sub_1C4418AC8();
  sub_1C484796C(v33, v34, v35);
  sub_1C4475278();
  sub_1C4416AB8();
  sub_1C4471FB4();
LABEL_36:
  sub_1C43FE9F0();
}

void sub_1C483CF08()
{
  sub_1C43FBD3C();
  v4 = sub_1C4424708(v3);
  v39 = type metadata accessor for GraphTriple(v4);
  v5 = sub_1C43FCDF8(v39);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FC0C8();
  v9 = MEMORY[0x1EEE9AC00](v8);
  sub_1C442EB4C(v9, v10, v11, v12, v13, v14, v15, v16, v38);
  v17 = sub_1C44A8370();
  GraphTriple.hash(into:)(v17);
  v18 = &v40;
  v19 = sub_1C4F02B68();
  sub_1C4433474(v19);
  if (v21)
  {
    sub_1C448E048(v20);
    do
    {
      sub_1C4429044();
      sub_1C44345F8();
      sub_1C44A1D58();
      sub_1C441D6D8();
      if (sub_1C4EFF088())
      {
        sub_1C4485EF4();
        sub_1C4419828();
        v23 = sub_1C4403D94(&off_1EDDFCCA8, v22);
        sub_1C442ABEC();
        sub_1C44017C4();
        sub_1C4455394();
        v24 = v24 && v1 == v18;
        if (v24)
        {

          sub_1C444B16C();
        }

        else
        {
          sub_1C44172DC();
          sub_1C44323EC();

          sub_1C444B16C();
          if ((v0 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        if (sub_1C4475BC8())
        {
          v0 = *(v18 + 7);
          sub_1C442ABEC();
          sub_1C443E33C();
          sub_1C442A410();
          if (v24 && v18 == v23)
          {

            v18 = v39;
          }

          else
          {
            sub_1C43FED70();
            sub_1C4488AFC();

            v18 = v39;
            if ((v0 & 1) == 0)
            {
              goto LABEL_34;
            }
          }

          sub_1C440D4EC(*(v18 + 8));
          v28 = v24 && v26 == v27;
          if (v28 || (sub_1C4F02938() & 1) != 0)
          {
            sub_1C4461FB0(*(v18 + 9));
            if (v24)
            {
              sub_1C4441944(*(v18 + 10));
              if (v24)
              {
                sub_1C440D4EC(*(v18 + 11));
                v31 = v24 && v29 == v30;
                if (v31 || (sub_1C4F02938() & 1) != 0)
                {
                  sub_1C4441944(*(v18 + 12));
                  if (v24)
                  {
                    sub_1C48519DC(v2, type metadata accessor for GraphTriple);
                    v36 = sub_1C4404C28();
                    sub_1C48519DC(v36, v37);
                    sub_1C447F500();
                    goto LABEL_36;
                  }
                }
              }
            }
          }
        }
      }

LABEL_34:
      sub_1C4482CE8();
      sub_1C447F0F0();
    }

    while ((v32 & 1) != 0);
  }

  sub_1C4485FD8();
  sub_1C44345F8();
  sub_1C445ABB8();
  v33 = sub_1C4418AC8();
  sub_1C4847DF0(v33, v34, v35);
  sub_1C4475278();
  sub_1C4416AB8();
  sub_1C4471FB4();
LABEL_36:
  sub_1C43FE9F0();
}

void sub_1C483D190()
{
  sub_1C43FBD3C();
  v4 = sub_1C4424708(v3);
  v39 = type metadata accessor for ConstructionEventTriple(v4);
  v5 = sub_1C43FCDF8(v39);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FC0C8();
  v9 = MEMORY[0x1EEE9AC00](v8);
  sub_1C442EB4C(v9, v10, v11, v12, v13, v14, v15, v16, v38);
  v17 = sub_1C44A8370();
  ConstructionEventTriple.hash(into:)(v17);
  v18 = &v40;
  v19 = sub_1C4F02B68();
  sub_1C4433474(v19);
  if (v21)
  {
    sub_1C448E048(v20);
    do
    {
      sub_1C4429044();
      sub_1C446BEE8();
      sub_1C44A1D58();
      sub_1C441D6D8();
      if (sub_1C4EFF088())
      {
        sub_1C4485EF4();
        sub_1C4419828();
        v23 = sub_1C4403D94(&off_1EDDFCCA8, v22);
        sub_1C442ABEC();
        sub_1C44017C4();
        sub_1C4455394();
        v24 = v24 && v1 == v18;
        if (v24)
        {

          sub_1C444B16C();
        }

        else
        {
          sub_1C44172DC();
          sub_1C44323EC();

          sub_1C444B16C();
          if ((v0 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        if (sub_1C4475BC8())
        {
          v0 = *(v18 + 7);
          sub_1C442ABEC();
          sub_1C443E33C();
          sub_1C442A410();
          if (v24 && v18 == v23)
          {

            v18 = v39;
          }

          else
          {
            sub_1C43FED70();
            sub_1C4488AFC();

            v18 = v39;
            if ((v0 & 1) == 0)
            {
              goto LABEL_34;
            }
          }

          sub_1C440D4EC(*(v18 + 8));
          v28 = v24 && v26 == v27;
          if (v28 || (sub_1C4F02938() & 1) != 0)
          {
            sub_1C4461FB0(*(v18 + 9));
            if (v24)
            {
              sub_1C4441944(*(v18 + 10));
              if (v24)
              {
                sub_1C440D4EC(*(v18 + 11));
                v31 = v24 && v29 == v30;
                if (v31 || (sub_1C4F02938() & 1) != 0)
                {
                  sub_1C4441944(*(v18 + 12));
                  if (v24)
                  {
                    sub_1C48519DC(v2, type metadata accessor for ConstructionEventTriple);
                    v36 = sub_1C4404C28();
                    sub_1C48519DC(v36, v37);
                    sub_1C447F500();
                    goto LABEL_36;
                  }
                }
              }
            }
          }
        }
      }

LABEL_34:
      sub_1C4482CE8();
      sub_1C447F0F0();
    }

    while ((v32 & 1) != 0);
  }

  sub_1C4485FD8();
  sub_1C446BEE8();
  sub_1C445ABB8();
  v33 = sub_1C4418AC8();
  sub_1C4848274(v33, v34, v35);
  sub_1C4475278();
  sub_1C4416AB8();
  sub_1C4471FB4();
LABEL_36:
  sub_1C43FE9F0();
}

void sub_1C483D418()
{
  sub_1C43FBD3C();
  v4 = sub_1C4424708(v3);
  v39 = type metadata accessor for ConstructionGraphTriple(v4);
  v5 = sub_1C43FCDF8(v39);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FC0C8();
  v9 = MEMORY[0x1EEE9AC00](v8);
  sub_1C442EB4C(v9, v10, v11, v12, v13, v14, v15, v16, v38);
  v17 = sub_1C44A8370();
  ConstructionGraphTriple.hash(into:)(v17);
  v18 = &v40;
  v19 = sub_1C4F02B68();
  sub_1C4433474(v19);
  if (v21)
  {
    sub_1C448E048(v20);
    do
    {
      sub_1C4429044();
      sub_1C4469180();
      sub_1C44A1D58();
      sub_1C441D6D8();
      if (sub_1C4EFF088())
      {
        sub_1C4485EF4();
        sub_1C4419828();
        v23 = sub_1C4403D94(&off_1EDDFCCA8, v22);
        sub_1C442ABEC();
        sub_1C44017C4();
        sub_1C4455394();
        v24 = v24 && v1 == v18;
        if (v24)
        {

          sub_1C444B16C();
        }

        else
        {
          sub_1C44172DC();
          sub_1C44323EC();

          sub_1C444B16C();
          if ((v0 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        if (sub_1C4475BC8())
        {
          v0 = *(v18 + 7);
          sub_1C442ABEC();
          sub_1C443E33C();
          sub_1C442A410();
          if (v24 && v18 == v23)
          {

            v18 = v39;
          }

          else
          {
            sub_1C43FED70();
            sub_1C4488AFC();

            v18 = v39;
            if ((v0 & 1) == 0)
            {
              goto LABEL_34;
            }
          }

          sub_1C440D4EC(*(v18 + 8));
          v28 = v24 && v26 == v27;
          if (v28 || (sub_1C4F02938() & 1) != 0)
          {
            sub_1C4461FB0(*(v18 + 9));
            if (v24)
            {
              sub_1C4441944(*(v18 + 10));
              if (v24)
              {
                sub_1C440D4EC(*(v18 + 11));
                v31 = v24 && v29 == v30;
                if (v31 || (sub_1C4F02938() & 1) != 0)
                {
                  sub_1C4441944(*(v18 + 12));
                  if (v24)
                  {
                    sub_1C48519DC(v2, type metadata accessor for ConstructionGraphTriple);
                    v36 = sub_1C4404C28();
                    sub_1C48519DC(v36, v37);
                    sub_1C447F500();
                    goto LABEL_36;
                  }
                }
              }
            }
          }
        }
      }

LABEL_34:
      sub_1C4482CE8();
      sub_1C447F0F0();
    }

    while ((v32 & 1) != 0);
  }

  sub_1C4485FD8();
  sub_1C4469180();
  sub_1C445ABB8();
  v33 = sub_1C4418AC8();
  sub_1C48486F8(v33, v34, v35);
  sub_1C4475278();
  sub_1C4416AB8();
  sub_1C4471FB4();
LABEL_36:
  sub_1C43FE9F0();
}

uint64_t sub_1C483D6C4(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = sub_1C4F02138();

    if (v17)
    {

      sub_1C4461BB8(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v40;
    }

    else
    {
      result = sub_1C4F02128();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        sub_1C483DE00(v15, result + 1, a5, a6, a3, a4, v27, v28, v36, v37, v38);
        v30 = v29;
        v41 = v29;
        if (*(v29 + 24) <= *(v29 + 16))
        {
          sub_1C4842AB4();
          v30 = v41;
        }

        v31 = v16;
        sub_1C4843E98(v31, v30);

        *v11 = v30;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_1C4461BB8(0, a3, a4);
    v19 = *(v14 + 40);
    sub_1C4F01ED8();
    v20 = *(v14 + 32);
    sub_1C43FC41C();
    v23 = ~v22;
    while (1)
    {
      v24 = v21 & v23;
      if (((*(v14 + 56 + (((v21 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v23)) & 1) == 0)
      {
        v32 = *v11;
        swift_isUniquelyReferenced_nonNull_native();
        v42 = *v11;
        v33 = a2;
        sub_1C4848B7C();
        *v11 = v42;
        *a1 = v33;
        return 1;
      }

      v25 = *(*(v14 + 48) + 8 * v24);
      v26 = sub_1C4F01EE8();

      if (v26)
      {
        break;
      }

      v21 = v24 + 1;
    }

    v34 = *(*(v14 + 48) + 8 * v24);
    *a1 = v34;
    v35 = v34;
    return 0;
  }

  return result;
}

BOOL sub_1C483D9F8()
{
  sub_1C43FFB44();
  v4 = *v1;
  v5 = *(*v1 + 40);
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v0);
  sub_1C4F02B68();
  v6 = *(v4 + 32);
  sub_1C44584AC();
  while (1)
  {
    sub_1C445BB08(v7, v8);
    v11 = v10 & v9;
    if ((v10 & v9) == 0)
    {
      break;
    }

    if (*(*(v4 + 48) + 8 * v3) == v0)
    {
      goto LABEL_6;
    }

    v7 = v3 + 1;
  }

  v12 = *v1;
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C44BBDF0();
  v14 = sub_1C4848CA0(v0, v3, v13);
  sub_1C44EC82C(v14, v15, v16, v17, v18, v19, v20, v21, v23, v24);
LABEL_6:
  result = v11 == 0;
  *v2 = v0;
  return result;
}

void sub_1C483DAB8()
{
  sub_1C43FBD3C();
  sub_1C4851B30(v3);
  v4 = sub_1C440BD5C();
  sub_1C440AC0C(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C44236E4();
  sub_1C440C518(&qword_1EC0B9140);
  sub_1C44A1E88();
  sub_1C4426B80();
  while (1)
  {
    v11 = v10 & v2;
    sub_1C4414B44((v10 & v2) >> 3);
    sub_1C4851B10();
    if (v12)
    {
      sub_1C4851C50();
      v15 = *(v6 + 16);
      sub_1C4436564();
      v16();
      v17 = sub_1C44414C4();
      sub_1C4849084(v17, v18, v19);
      *v2 = v25;
      v20 = *(v6 + 32);
      v21 = sub_1C4441090();
      v22(v21);
      goto LABEL_7;
    }

    v13 = sub_1C440BD34();
    (qword_1EC0B8A20)(v13);
    sub_1C4425100();
    sub_1C48514DC(&qword_1EC0BDE98, &qword_1EC0B8A20);
    sub_1C449DA9C();
    v14 = sub_1C44409C8();
    v1(v14);
    if (v0)
    {
      break;
    }

    v10 = v11 + 1;
  }

  v23 = sub_1C440230C();
  v1(v23);
  sub_1C441802C();
  v24 = sub_1C4433D0C();
  (qword_1EC0B8A20)(v24);
LABEL_7:
  sub_1C43FE9F0();
}

void sub_1C483DC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1C441EB54();
  if (v11)
  {
    sub_1C456902C(&qword_1EC0BDF20, &qword_1C4F32350);
    sub_1C4404C28();
    v12 = sub_1C4F021E8();
    v23 = v12;
    sub_1C4F02118();
    while (1)
    {
      if (!sub_1C4F02148())
      {

        goto LABEL_18;
      }

      sub_1C4F00BC8();
      swift_dynamicCast();
      v13 = *(v12 + 16);
      if (*(v12 + 24) <= v13)
      {
        sub_1C4841D78(v13 + 1);
      }

      v12 = v23;
      v14 = *(v23 + 40);
      sub_1C4403D94(&qword_1EC0BDF28, MEMORY[0x1E695BF10]);
      sub_1C43FE5F8();
      v15 = sub_1C4F00FD8() & ~(-1 << *(v23 + 32));
      if (((-1 << v15) & ~*(v23 + 56 + 8 * (v15 >> 6))) == 0)
      {
        break;
      }

      sub_1C44F0CC4();
LABEL_15:
      sub_1C4851AA8(v16);
      *(*(v23 + 48) + 8 * v22) = a11;
      sub_1C4851AC4();
    }

    sub_1C447CFE8();
    while (++v18 != v20 || (v19 & 1) == 0)
    {
      v21 = v18 == v20;
      if (v18 == v20)
      {
        v18 = 0;
      }

      v19 |= v21;
      if (*(v17 + 8 * v18) != -1)
      {
        sub_1C4488A54();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
LABEL_18:
    sub_1C43FBF50();
  }
}

void sub_1C483DE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1C441EB54();
  if (v15)
  {
    v16 = v14;
    v17 = v13;
    sub_1C456902C(v11, v12);
    v18 = sub_1C4F021E8();
    v28 = v18;
    sub_1C4F02118();
    while (1)
    {
      if (!sub_1C4F02148())
      {

        goto LABEL_18;
      }

      sub_1C4461BB8(0, v17, v16);
      swift_dynamicCast();
      if (*(v18 + 24) <= *(v18 + 16))
      {
        sub_1C4417184();
        sub_1C4842AB4();
      }

      v18 = v28;
      v19 = *(v28 + 40);
      v20 = sub_1C4F01ED8() & ~(-1 << *(v28 + 32));
      if (((-1 << v20) & ~*(v28 + 56 + 8 * (v20 >> 6))) == 0)
      {
        break;
      }

      sub_1C44F0CC4();
LABEL_15:
      sub_1C4851AA8(v21);
      *(*(v28 + 48) + 8 * v27) = a11;
      ++*(v28 + 16);
    }

    sub_1C447CFE8();
    while (++v23 != v25 || (v24 & 1) == 0)
    {
      v26 = v23 == v25;
      if (v23 == v25)
      {
        v23 = 0;
      }

      v24 |= v26;
      if (*(v22 + 8 * v23) != -1)
      {
        sub_1C4488A54();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
LABEL_18:
    sub_1C43FBF50();
  }
}

uint64_t sub_1C483DF8C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1C4EFF8A8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDDF0, &qword_1C4F32238);
  result = sub_1C4F021D8();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

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
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1C4501018(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_1C4403D94(&qword_1EDDFE808, MEMORY[0x1E69A99E8]);
    result = sub_1C4F00FD8();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

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
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C483E2E4(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1C4EFF0C8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDDE8, "(M\n");
  result = sub_1C4F021D8();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

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
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1C4501018(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_1C4403D94(&qword_1EDDFE820, MEMORY[0x1E69A9810]);
    result = sub_1C4F00FD8();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

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
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C483E63C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE00, &qword_1C4F32248);
  result = sub_1C4F021D8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1C4501018(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 48 * (v14 | (v7 << 6)));
    v30 = *v17;
    *v31 = v17[1];
    *&v31[9] = *(v17 + 25);
    v18 = *(v6 + 40);
    sub_1C4F02AF8();
    sub_1C45D5EBC();
    result = sub_1C4F02B68();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v6 + 48) + 48 * v22);
    *v27 = v30;
    v27[1] = *v31;
    *(v27 + 25) = *&v31[9];
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

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
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C483E8AC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1C4EFDAF8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE88, &qword_1C4F322D0);
  result = sub_1C4F021D8();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

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
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1C4501018(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_1C4403D94(&qword_1EDDEFFA8, MEMORY[0x1E69A94B0]);
    result = sub_1C4F00FD8();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

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
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C483EC04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE58, &qword_1C4F322A0);
  result = sub_1C4F021D8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1C4501018(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_1C4F02AF8();
    sub_1C4F01298();

    result = sub_1C4F02B68();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

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
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_1C483EFEC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __src, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_1C43FE6B0();
  a29 = v33;
  a30 = v34;
  sub_1C445E838(v35);
  sub_1C456902C(&qword_1EC0BDE08, &qword_1C4F32250);
  sub_1C442FC54();
  sub_1C4851C20();
  sub_1C4440FB4();
  if (!v36)
  {
LABEL_57:

    *v30 = v32;
    sub_1C440A528();
    return;
  }

  v37 = 0;
  v39 = (v31 + 56);
  v38 = *(v31 + 56);
  v40 = *(v31 + 32);
  sub_1C43FEC90();
  v43 = v42 & v41;
  v45 = (v44 + 63) >> 6;
  if ((v42 & v41) == 0)
  {
LABEL_4:
    v47 = v37;
    while (1)
    {
      v37 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
        goto LABEL_59;
      }

      if (v37 >= v45)
      {
        break;
      }

      ++v47;
      if (v39[v37])
      {
        sub_1C43FCF1C();
        v43 = v49 & v48;
        goto LABEL_9;
      }
    }

    v63 = *(v31 + 32);
    sub_1C447CBD8();
    if (v64 >= 64)
    {
      v66 = sub_1C4408764();
      sub_1C4501018(v66, v67, v31 + 56);
    }

    else
    {
      sub_1C43FC41C();
      *v39 = v65;
    }

    *(v31 + 16) = 0;
    goto LABEL_57;
  }

  while (1)
  {
    sub_1C4401DF0();
LABEL_9:
    v50 = *(v31 + 48) + 16 * (v46 | (v37 << 6));
    v51 = *v50;
    v52 = *(v50 + 8);
    v53 = *(v32 + 40);
    sub_1C4F02AF8();
    switch(v52)
    {
      case 1:
        MEMORY[0x1C69417F0](12);
        sub_1C440CC68();
        switch(v51)
        {
          case 1:
            goto LABEL_17;
          case 2:
            goto LABEL_22;
          case 3:
            goto LABEL_23;
          case 4:
            goto LABEL_19;
          case 5:
            goto LABEL_25;
          case 6:
            goto LABEL_26;
          case 7:
            goto LABEL_24;
          case 8:
            goto LABEL_28;
          case 9:
            goto LABEL_21;
          case 10:
            goto LABEL_27;
          case 11:
            goto LABEL_18;
          case 12:
            goto LABEL_20;
          default:
            goto LABEL_29;
        }

        goto LABEL_29;
      case 2:
        v55 = 13;
        goto LABEL_15;
      case 3:
        v55 = 14;
LABEL_15:
        MEMORY[0x1C69417F0](v55);
        sub_1C4851148(&__src, v51);
        break;
      case 4:
        switch(v51)
        {
          case 1:
            v54 = 1;
            break;
          case 2:
            v54 = 2;
            break;
          case 3:
            v54 = 3;
            break;
          case 4:
            v54 = 4;
            break;
          case 5:
            v54 = 5;
            break;
          case 6:
            v54 = 6;
            break;
          case 7:
            v54 = 7;
            break;
          case 8:
            v54 = 8;
            break;
          case 9:
            v54 = 9;
            break;
          case 10:
            v54 = 10;
            break;
          default:
            v54 = 0;
            break;
        }

        MEMORY[0x1C69417F0](v54);
        break;
      default:
        MEMORY[0x1C69417F0](11);
        sub_1C440CC68();
        switch(v51)
        {
          case 1:
LABEL_17:
            sub_1C4426BAC();
            break;
          case 2:
LABEL_22:
            sub_1C44160DC();
            sub_1C4408B0C();
            break;
          case 3:
LABEL_23:
            sub_1C44040F0();
            sub_1C444172C();
            break;
          case 4:
LABEL_19:
            sub_1C44754A8();
            sub_1C4426BAC();
            break;
          case 5:
LABEL_25:
            sub_1C44995B0();
            break;
          case 6:
LABEL_26:
            sub_1C441B3E4();
            break;
          case 7:
LABEL_24:
            sub_1C440E008();
            break;
          case 8:
LABEL_28:
            sub_1C44160DC();
            sub_1C4423BB4();
            break;
          case 9:
LABEL_21:
            sub_1C4430660();
            break;
          case 10:
LABEL_27:
            sub_1C44C0464();
            break;
          case 11:
LABEL_18:
            sub_1C4422AFC();
            sub_1C446BC58();
            break;
          case 12:
LABEL_20:
            sub_1C44145CC();
            break;
          default:
            break;
        }

LABEL_29:
        sub_1C4F01298();

        break;
    }

    v56 = sub_1C4F02B68();
    sub_1C44A1C14(v56);
    if (v57)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_51:
    sub_1C44064EC();
    sub_1C4488944(v61);
    *v62 = v51;
    *(v62 + 8) = v52;
    sub_1C443322C();
    if (!v43)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v57)
    {
      if (v59)
      {
        break;
      }
    }

    if (v58 == v60)
    {
      v58 = 0;
    }

    if (*(v32 + 56 + 8 * v58) != -1)
    {
      sub_1C43FCF98();
      goto LABEL_51;
    }
  }

LABEL_59:
  __break(1u);
}

uint64_t sub_1C483F3C0(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1C4EFEEF8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE78, &qword_1C4F322C0);
  result = sub_1C4F021D8();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

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
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1C4501018(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_1C4403D94(&qword_1EDDFCCB8, MEMORY[0x1E69A9748]);
    result = sub_1C4F00FD8();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

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
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C483F718(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE50, &unk_1C4F4B340);
  result = sub_1C4F021D8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1C4501018(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_1C4F02AF8();
    sub_1C4F01298();

    result = sub_1C4F02B68();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

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
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C483FA70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C456902C(&qword_1EC0BDDF8, &qword_1C4F32240);
  result = sub_1C4F021D8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v9 = (v3 + 56);
  v8 = *(v3 + 56);
  v10 = 1 << *(v3 + 32);
  v26 = v2;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = result + 56;
  if ((v11 & v8) == 0)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    if (v10 >= 64)
    {
      sub_1C4501018(0, (v10 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v2 = v26;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
    result = MEMORY[0x1C69417C0](*(v6 + 40), v17, 4);
    v18 = -1 << *(v6 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v6 + 48) + 4 * v21) = v17;
    ++*(v6 + 16);
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v13 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C483FC98(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LiveGlobalKnowledgeTriple();
  v42 = *(v4 - 1);
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDFA0, &qword_1C4F32398);
  result = sub_1C4F021D8();
  v11 = result;
  if (*(v8 + 16))
  {
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v38 = v2;
    v39 = result + 56;
    v40 = result;
    for (i = v8; v16; v8 = i)
    {
      v16 &= v16 - 1;
LABEL_14:
      v20 = *(v8 + 48);
      v43 = *(v42 + 72);
      sub_1C4471FB4();
      v21 = v11[5];
      sub_1C4F02AF8();
      sub_1C4EFF0C8();
      sub_1C4403D94(&qword_1EDDFE820, MEMORY[0x1E69A9810]);
      sub_1C4F00FE8();
      v22 = v4[5];
      sub_1C4EFEEF8();
      sub_1C4403D94(&qword_1EDDFCCB8, MEMORY[0x1E69A9748]);
      sub_1C4F00FE8();
      v23 = v4[6];
      sub_1C4EFF8A8();
      sub_1C4403D94(&qword_1EDDFE808, MEMORY[0x1E69A99E8]);
      sub_1C4F00FE8();
      v24 = &v7[v4[7]];
      sub_1C4F00FE8();
      v25 = &v7[v4[8]];
      v26 = *v25;
      v27 = *(v25 + 1);
      sub_1C4F01298();
      MEMORY[0x1C6941830](*&v7[v4[9]]);
      MEMORY[0x1C6941830](*&v7[v4[10]]);
      v28 = *&v7[v4[11]];
      MEMORY[0x1C69417F0](*(v28 + 16));
      v29 = *(v28 + 16);
      if (v29)
      {
        v30 = (v28 + 32);
        do
        {
          v31 = *v30++;
          MEMORY[0x1C69417F0](v31);
          --v29;
        }

        while (v29);
      }

      sub_1C4F02B68();
      v32 = v39;
      v11 = v40;
      v33 = -1 << *(v40 + 32);
      v34 = sub_1C4F02108();
      *(v32 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      v35 = v11[6];
      result = sub_1C4471FB4();
      ++v11[2];
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        return result;
      }

      if (v12 >= v17)
      {
        break;
      }

      v19 = v13[v12];
      ++v18;
      if (v19)
      {
        v16 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    v36 = 1 << *(v8 + 32);
    if (v36 >= 64)
    {
      sub_1C4501018(0, (v36 + 63) >> 6, v13);
    }

    else
    {
      *v13 = -1 << v36;
    }

    v2 = v38;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1C48400BC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1C4EF9F68();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDFB0, &qword_1C4F323A8);
  result = sub_1C4F021D8();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

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
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1C4501018(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_1C4403D94(&unk_1EDDFA3E8, MEMORY[0x1E6969AD0]);
    result = sub_1C4F00FD8();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

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
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C4840414(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Source();
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE10, &qword_1C4F32258);
  result = sub_1C4F021D8();
  v11 = result;
  if (!*(v8 + 16))
  {
LABEL_29:

    *v2 = v11;
    return result;
  }

  v37 = v2;
  v12 = 0;
  v13 = (v8 + 56);
  v14 = 1 << *(v8 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v8 + 56);
  v17 = (v14 + 63) >> 6;
  v18 = result + 56;
  if (!v16)
  {
LABEL_9:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    v35 = 1 << *(v8 + 32);
    if (v35 >= 64)
    {
      sub_1C4501018(0, (v35 + 63) >> 6, v8 + 56);
    }

    else
    {
      *v13 = -1 << v35;
    }

    v2 = v37;
    *(v8 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_14:
    v22 = *(v8 + 48) + *(v38 + 72) * (v19 | (v12 << 6));
    sub_1C4471FB4();
    v23 = *(v11 + 40);
    sub_1C4F02AF8();
    v24 = *v7;
    v25 = v7[1];
    sub_1C4F01298();
    result = sub_1C4F02B68();
    v26 = -1 << *(v11 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v18 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = *(v11 + 48);
    result = sub_1C4471FB4();
    ++*(v11 + 16);
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v18 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C4840718(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C456902C(&qword_1EC0BDFA8, &qword_1C4F323A0);
  result = sub_1C4F021D8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v37 = (v3 + 56);
  v38 = v3;
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
  v35 = v1;
  v36 = (v8 + 63) >> 6;
  v11 = result + 56;
  if (!v10)
  {
LABEL_9:
    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v36)
      {
        break;
      }

      v14 = v37[v7];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      sub_1C4501018(0, (v34 + 63) >> 6, v37);
    }

    else
    {
      *v37 = -1 << v34;
    }

    v2 = v35;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v10));
    v39 = (v10 - 1) & v10;
LABEL_14:
    v15 = *(v3 + 48) + 56 * (v12 | (v7 << 6));
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    v21 = *(v15 + 32);
    v20 = *(v15 + 40);
    v22 = *(v15 + 48);
    v40 = *(v15 + 49);
    v41 = *(v15 + 51);
    v23 = *(v15 + 52);
    v24 = *(v6 + 40);
    sub_1C4F02AF8();
    sub_1C4F01298();
    sub_1C4F01298();
    sub_1C4F01298();
    MEMORY[0x1C69417F0](v22);
    sub_1C4F02B38();
    result = sub_1C4F02B68();
    v25 = -1 << *(v6 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v11 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = *(v6 + 48) + 56 * v28;
    *v33 = v16;
    *(v33 + 8) = v17;
    *(v33 + 16) = v18;
    *(v33 + 24) = v19;
    *(v33 + 32) = v21;
    *(v33 + 40) = v20;
    *(v33 + 48) = v22;
    *(v33 + 49) = v40;
    *(v33 + 51) = v41;
    *(v33 + 52) = v23;
    ++*(v6 + 16);
    v3 = v38;
    v10 = v39;
    if (!v39)
    {
      goto LABEL_9;
    }
  }

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
    v32 = *(v11 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C4840A1C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1C4EF9CD8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE80, &qword_1C4F322C8);
  result = sub_1C4F021D8();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

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
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1C4501018(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_1C4403D94(&qword_1EC0B90D0, MEMORY[0x1E6969530]);
    result = sub_1C4F00FD8();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

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
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C4840D74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE30, &qword_1C4F32278);
  result = sub_1C4F021D8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v32 = v2;
  v33 = v3;
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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_1C4501018(0, (v31 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 24 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = *(v6 + 40);
    sub_1C4F02AF8();
    MEMORY[0x1C69417F0](v18);
    sub_1C4F01298();
    result = sub_1C4F02B68();
    v22 = -1 << *(v6 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v6 + 48) + 24 * v25);
    *v30 = v18;
    v30[1] = v19;
    v30[2] = v20;
    ++*(v6 + 16);
    v3 = v33;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v13 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C4840FF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE28, &qword_1C4F32270);
  result = sub_1C4F021D8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1C4501018(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_1C4F02AF8();
    sub_1C4F01298();

    result = sub_1C4F02B68();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

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
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C4841370(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1C4EFDAB8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDFB8, &qword_1C4F323B0);
  result = sub_1C4F021D8();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

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
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1C4501018(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_1C4403D94(&qword_1EDDEFFD0, MEMORY[0x1E69A9478]);
    result = sub_1C4F00FD8();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

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
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C48416C8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1C4EFEFB8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE68, &qword_1C4F322B0);
  result = sub_1C4F021D8();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

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
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1C4501018(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_1C4403D94(&qword_1EDDEFF90, MEMORY[0x1E69A97D0]);
    result = sub_1C4F00FD8();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

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
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C4841A20(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1C4F002A8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDF40, &unk_1C4F32358);
  result = sub_1C4F021D8();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

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
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1C4501018(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_1C4403D94(&qword_1EC0BDF30, MEMORY[0x1E69A9DE8]);
    result = sub_1C4F00FD8();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

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
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C4841D78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C456902C(&qword_1EC0BDF20, &qword_1C4F32350);
  result = sub_1C4F021D8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v29 = v3;
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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1C4501018(0, (v27 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_1C4F00BC8();
    sub_1C4403D94(&qword_1EC0BDF28, MEMORY[0x1E695BF10]);
    result = sub_1C4F00FD8();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    v3 = v29;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

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
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_1C4842008(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for OntologyTriple();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE90, &unk_1C4F322D8);
  v9 = sub_1C4F021D8();
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    while (v14)
    {
      v14 &= v14 - 1;
LABEL_13:
      v18 = *(v7 + 48);
      v19 = *(v5 + 72);
      sub_1C4471FB4();
      sub_1C4843D58();
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return;
      }

      if (v10 >= v15)
      {
        break;
      }

      v17 = v11[v10];
      ++v16;
      if (v17)
      {
        v14 = (v17 - 1) & v17;
        goto LABEL_13;
      }
    }

    v20 = 1 << *(v7 + 32);
    if (v20 >= 64)
    {
      sub_1C4501018(0, (v20 + 63) >> 6, v7 + 56);
    }

    else
    {
      *v11 = -1 << v20;
    }

    *(v7 + 16) = 0;
  }

  *v2 = v9;
}

uint64_t sub_1C4842210(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C456902C(&qword_1EC0BDEF8, &unk_1C4F32340);
  result = sub_1C4F021D8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_31:
    v41 = v6;

    *v2 = v41;
    return result;
  }

  v42 = v1;
  v43 = v3;
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
  v44 = result;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v45 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v39 = 1 << *(v3 + 32);
    if (v39 >= 64)
    {
      v40 = v6;
      sub_1C4501018(0, (v39 + 63) >> 6, v8);
      v6 = v40;
    }

    else
    {
      *v8 = -1 << v39;
    }

    v2 = v42;
    *(v3 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v45 = (v11 - 1) & v11;
LABEL_14:
    v17 = *(v3 + 48) + ((v14 | (v7 << 6)) << 6);
    v18 = *v17;
    v19 = *(v17 + 8);
    v48 = *(v17 + 16);
    v21 = *(v17 + 32);
    v20 = *(v17 + 40);
    v23 = *(v17 + 48);
    v22 = *(v17 + 56);
    v24 = *(v6 + 40);
    sub_1C4F02AF8();
    v47 = v19;
    v46 = v23;
    if (v20)
    {
      sub_1C4F01298();
    }

    sub_1C4F01298();
    v25 = v20;
    v26 = v22;
    result = sub_1C4F02B68();
    v6 = v44;
    v27 = -1 << *(v44 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v13 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v13 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    v32 = v47;
    v31 = v18;
    v33 = v46;
LABEL_25:
    *(v13 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v38 = *(v44 + 48) + (v30 << 6);
    *v38 = v31;
    *(v38 + 8) = v32;
    *(v38 + 16) = v48;
    *(v38 + 32) = v21;
    *(v38 + 40) = v25;
    *(v38 + 48) = v33;
    *(v38 + 56) = v26;
    ++*(v44 + 16);
    v3 = v43;
    v11 = v45;
    if (!v45)
    {
      goto LABEL_9;
    }
  }

  v34 = 0;
  v35 = (63 - v27) >> 6;
  v32 = v47;
  v31 = v18;
  v33 = v46;
  while (++v29 != v35 || (v34 & 1) == 0)
  {
    v36 = v29 == v35;
    if (v29 == v35)
    {
      v29 = 0;
    }

    v34 |= v36;
    v37 = *(v13 + 8 * v29);
    if (v37 != -1)
    {
      v30 = __clz(__rbit64(~v37)) + (v29 << 6);
      goto LABEL_25;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1C48424EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE48, &unk_1C4F32290);
  result = sub_1C4F021D8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1C4501018(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_1C4F02AF8();
    sub_1C4F02B18();
    result = sub_1C4F02B68();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

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
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}