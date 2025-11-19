uint64_t sub_1D1CB1BB0(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  sub_1D1741C08(a1, &v17 - v10, &qword_1EC642DB0, &unk_1D1E6F360);
  v12 = &v11[*(v8 + 56)];
  v13 = type metadata accessor for StaticService(0);
  (*(v3 + 16))(v6, v12 + *(v13 + 44), v2);
  sub_1D1CB2248(v12, type metadata accessor for StaticService);
  v14 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  v15 = *(v3 + 8);
  v15(v6, v2);
  v15(v11, v2);
  return v14 & 1;
}

uint64_t sub_1D1CB1D74()
{
  v0 = type metadata accessor for StaticHome();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StateSnapshot(0);
  __swift_allocate_value_buffer(v4, qword_1EE07D9E8);
  v5 = __swift_project_value_buffer(v4, qword_1EE07D9E8);
  if (qword_1EE07CD90 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE07DD68;
  v26 = qword_1EE07CD98;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_1EE081500);
  sub_1D1CB2110(v7, v3, type metadata accessor for StaticHome);
  v8 = MEMORY[0x1E69E7CC0];
  v25 = sub_1D18D7F00(MEMORY[0x1E69E7CC0]);
  v24 = sub_1D18D5304(v8);
  v23 = sub_1D18D50D4(v8);
  v22 = sub_1D18D5520(v8);
  v21 = sub_1D18D573C(v8);
  v9 = sub_1D18D5958(v8);
  v10 = sub_1D18D811C(v8);
  v11 = sub_1D18D5B74(v8);
  v12 = sub_1D18D5D90(v8);
  v13 = sub_1D18D8338(v8);
  v14 = sub_1D18D61C8(v8);
  v15 = sub_1D18D8554(v8);
  v16 = v3;
  v17 = v15;
  *v5 = v26;
  result = sub_1D1CB2178(v16, v5 + v4[5], type metadata accessor for StaticHome);
  *(v5 + v4[6]) = v8;
  v19 = v24;
  *(v5 + v4[7]) = v25;
  *(v5 + v4[8]) = v19;
  v20 = v22;
  *(v5 + v4[9]) = v23;
  *(v5 + v4[10]) = v20;
  *(v5 + v4[11]) = v21;
  *(v5 + v4[12]) = v9;
  *(v5 + v4[13]) = v10;
  *(v5 + v4[14]) = v11;
  *(v5 + v4[15]) = v12;
  *(v5 + v4[16]) = v13;
  *(v5 + v4[17]) = v8;
  *(v5 + v4[18]) = v14;
  *(v5 + v4[19]) = v17;
  return result;
}

uint64_t static StateSnapshot.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE07D9E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for StateSnapshot(0);
  v3 = __swift_project_value_buffer(v2, qword_1EE07D9E8);
  return sub_1D1CB2110(v3, a1, type metadata accessor for StateSnapshot);
}

uint64_t StateSnapshot.hasValidResident.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 76));

  v3 = *(sub_1D1782540(v2) + 16);

  if (v3)
  {
    return 1;
  }

  if (qword_1EC6422D0 != -1)
  {
    swift_once();
  }

  return byte_1EC64919C;
}

uint64_t sub_1D1CB2110(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1CB2178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1CB21E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1CB2248(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1CB22A8(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for RoomType(0) - 8);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1D1E0C134(v7);
  }

  v9 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10 = v7[2];
  result = sub_1D1CB248C(a1, a2);
  *v3 = v7;
  return result;
}

uint64_t sub_1D1CB2368(void **a1, uint64_t a2)
{
  v4 = *(type metadata accessor for StaticResident() - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1D1E0C184(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_1D1CC6E9C(v8, a2, type metadata accessor for StaticResident, sub_1D1CC536C, sub_1D1CC6C30);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D1CB248C(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_1D1E68F9C();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for RoomType(0);
        v9 = sub_1D1E67C8C();
        *(v9 + 16) = v8;
      }

      v10 = *(type metadata accessor for RoomType(0) - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_1D1CB2840(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1D1CB25C8(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_1D1CB25C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v38 = a4;
  v37 = type metadata accessor for RoomType(0);
  v9 = *(*(v37 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v37);
  v36 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v28 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *v4;
    v20 = *(v16 + 72);
    v21 = *v4 + v20 * (a3 - 1);
    v34 = -v20;
    v35 = v19;
    v22 = a1 - a3;
    v28 = v20;
    v23 = v19 + v20 * a3;
LABEL_4:
    v32 = v21;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    v24 = v21;
    while (1)
    {
      sub_1D1CB2110(v23, v18, type metadata accessor for RoomType);
      sub_1D1CB2110(v24, v14, type metadata accessor for RoomType);
      v25 = v38(v18, v14);
      sub_1D1CB2248(v14, type metadata accessor for RoomType);
      result = sub_1D1CB2248(v18, type metadata accessor for RoomType);
      if (v5)
      {
        break;
      }

      if (v25)
      {
        if (!v35)
        {
          __break(1u);
          return result;
        }

        v26 = v36;
        sub_1D1CB2178(v23, v36, type metadata accessor for RoomType);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1D1CB2178(v26, v24, type metadata accessor for RoomType);
        v24 += v34;
        v23 += v34;
        if (!__CFADD__(v22++, 1))
        {
          continue;
        }
      }

      a3 = v33 + 1;
      v21 = v32 + v28;
      v22 = v31 - 1;
      v23 = v30 + v28;
      if (v33 + 1 != v29)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1D1CB2840(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v143 = a4;
  v144 = a5;
  v131 = a1;
  v136 = type metadata accessor for RoomType(0);
  v141 = *(v136 - 8);
  v10 = *(v141 + 64);
  v11 = MEMORY[0x1EEE9AC00](v136);
  v133 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v135 = &v120 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v120 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v120 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  result = MEMORY[0x1EEE9AC00](v23);
  v142 = a3;
  if (a3[1] < 1)
  {
    v31 = MEMORY[0x1E69E7CC0];
LABEL_99:
    v22 = *v131;
    if (*v131)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_101;
    }

    goto LABEL_142;
  }

  v29 = a3[1];
  v126 = &v120 - v25;
  v127 = v28;
  v137 = v27;
  v134 = v26;
  v125 = a6;
  v30 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  v124 = v18;
  while (1)
  {
    if (v30 + 1 >= v29)
    {
      v44 = v30 + 1;
    }

    else
    {
      v129 = v29;
      v32 = *v142;
      v33 = *(v141 + 72);
      v34 = v30;
      v35 = *v142 + v33 * (v30 + 1);
      v36 = v126;
      sub_1D1CB2110(v35, v126, type metadata accessor for RoomType);
      v140 = v32;
      v37 = v32 + v33 * v34;
      v38 = v127;
      sub_1D1CB2110(v37, v127, type metadata accessor for RoomType);
      LODWORD(v139) = v143(v36, v38);
      if (v7)
      {
        sub_1D1CB2248(v38, type metadata accessor for RoomType);
        v119 = v36;
        goto LABEL_112;
      }

      sub_1D1CB2248(v38, type metadata accessor for RoomType);
      result = sub_1D1CB2248(v36, type metadata accessor for RoomType);
      v123 = v129 - 1;
      v138 = v129 - 2;
      v39 = v140 + v33 * (v34 + 2);
      v128 = v34;
      v40 = v33;
      v140 = v33;
      while (v138 != v34)
      {
        sub_1D1CB2110(v39, v22, type metadata accessor for RoomType);
        v41 = v22;
        v42 = v137;
        sub_1D1CB2110(v35, v137, type metadata accessor for RoomType);
        v43 = v143(v41, v42);
        sub_1D1CB2248(v42, type metadata accessor for RoomType);
        result = sub_1D1CB2248(v41, type metadata accessor for RoomType);
        ++v34;
        v40 = v140;
        v39 += v140;
        v35 += v140;
        v22 = v41;
        if ((v139 ^ v43))
        {
          v44 = v34 + 1;
          goto LABEL_12;
        }
      }

      v34 = v123;
      v44 = v129;
LABEL_12:
      v30 = v128;
      if ((v139 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v44 < v128)
      {
        goto LABEL_136;
      }

      if (v128 <= v34)
      {
        v45 = v44;
        v46 = v40 * (v44 - 1);
        v47 = v45 * v40;
        v129 = v45;
        v130 = v22;
        v48 = v45;
        v49 = v128;
        v50 = v128 * v40;
        do
        {
          if (v49 != --v48)
          {
            v51 = *v142;
            if (!*v142)
            {
              goto LABEL_140;
            }

            sub_1D1CB2178(v51 + v50, v133, type metadata accessor for RoomType);
            if (v50 < v46 || v51 + v50 >= (v51 + v47))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v50 != v46)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_1D1CB2178(v133, v51 + v46, type metadata accessor for RoomType);
            v22 = v130;
            v40 = v140;
          }

          ++v49;
          v46 -= v40;
          v47 -= v40;
          v50 += v40;
        }

        while (v49 < v48);
        v18 = v124;
        v30 = v128;
        v44 = v129;
      }

      else
      {
LABEL_15:
        v18 = v124;
      }
    }

    v52 = v142[1];
    if (v44 >= v52)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v44, v30))
    {
      goto LABEL_132;
    }

    if (v44 - v30 >= v125)
    {
LABEL_36:
      v54 = v44;
      if (v44 < v30)
      {
        goto LABEL_131;
      }

      goto LABEL_37;
    }

    if (__OFADD__(v30, v125))
    {
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

    if (v30 + v125 >= v52)
    {
      v53 = v142[1];
    }

    else
    {
      v53 = v30 + v125;
    }

    if (v53 < v30)
    {
      goto LABEL_135;
    }

    if (v44 == v53)
    {
      goto LABEL_36;
    }

    v130 = v22;
    v102 = *v142;
    v103 = *(v141 + 72);
    v104 = *v142 + v103 * (v44 - 1);
    v139 = -v103;
    v140 = v102;
    v128 = v30;
    v105 = v30 - v44;
    v121 = v103;
    v106 = v102 + v44 * v103;
    v138 = v53;
    v132 = v31;
    do
    {
      v122 = v106;
      v123 = v105;
      v129 = v104;
      while (1)
      {
        sub_1D1CB2110(v106, v18, type metadata accessor for RoomType);
        v107 = v18;
        v108 = v134;
        sub_1D1CB2110(v104, v134, type metadata accessor for RoomType);
        v109 = v143(v107, v108);
        if (v7)
        {
          sub_1D1CB2248(v108, type metadata accessor for RoomType);
          v119 = v107;
LABEL_112:
          sub_1D1CB2248(v119, type metadata accessor for RoomType);
        }

        v110 = v109;
        v111 = v44;
        sub_1D1CB2248(v108, type metadata accessor for RoomType);
        result = sub_1D1CB2248(v107, type metadata accessor for RoomType);
        v18 = v107;
        if ((v110 & 1) == 0)
        {
          break;
        }

        if (!v140)
        {
          goto LABEL_138;
        }

        v112 = v135;
        sub_1D1CB2178(v106, v135, type metadata accessor for RoomType);
        swift_arrayInitWithTakeFrontToBack();
        sub_1D1CB2178(v112, v104, type metadata accessor for RoomType);
        v104 += v139;
        v106 += v139;
        v113 = __CFADD__(v105++, 1);
        v44 = v111;
        v7 = 0;
        v31 = v132;
        if (v113)
        {
          goto LABEL_95;
        }
      }

      v7 = 0;
      v31 = v132;
LABEL_95:
      ++v44;
      v104 = v129 + v121;
      v105 = v123 - 1;
      v106 = v122 + v121;
      v54 = v138;
    }

    while (v44 != v138);
    v22 = v130;
    v30 = v128;
    if (v138 < v128)
    {
      goto LABEL_131;
    }

LABEL_37:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D177D070(0, *(v31 + 2) + 1, 1, v31);
      v31 = result;
    }

    v56 = *(v31 + 2);
    v55 = *(v31 + 3);
    v57 = v56 + 1;
    if (v56 >= v55 >> 1)
    {
      result = sub_1D177D070((v55 > 1), v56 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 2) = v57;
    v58 = &v31[16 * v56];
    *(v58 + 4) = v30;
    *(v58 + 5) = v54;
    v138 = v54;
    v59 = *v131;
    if (!*v131)
    {
      goto LABEL_141;
    }

    if (v56)
    {
      break;
    }

LABEL_3:
    v29 = v142[1];
    v30 = v138;
    if (v138 >= v29)
    {
      goto LABEL_99;
    }
  }

  while (2)
  {
    v60 = v57 - 1;
    if (v57 >= 4)
    {
      v65 = &v31[16 * v57 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_118;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_119;
      }

      v72 = &v31[16 * v57];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_121;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_124;
      }

      if (v76 >= v68)
      {
        v94 = &v31[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_130;
        }

        if (v63 < v97)
        {
          v60 = v57 - 2;
        }
      }

      else
      {
LABEL_56:
        if (v64)
        {
          goto LABEL_120;
        }

        v77 = &v31[16 * v57];
        v79 = *v77;
        v78 = *(v77 + 1);
        v80 = __OFSUB__(v78, v79);
        v81 = v78 - v79;
        v82 = v80;
        if (v80)
        {
          goto LABEL_123;
        }

        v83 = &v31[16 * v60 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v71 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v71)
        {
          goto LABEL_126;
        }

        if (__OFADD__(v81, v86))
        {
          goto LABEL_127;
        }

        if (v81 + v86 < v63)
        {
          goto LABEL_70;
        }

        if (v63 < v86)
        {
          v60 = v57 - 2;
        }
      }
    }

    else
    {
      if (v57 == 3)
      {
        v61 = *(v31 + 4);
        v62 = *(v31 + 5);
        v71 = __OFSUB__(v62, v61);
        v63 = v62 - v61;
        v64 = v71;
        goto LABEL_56;
      }

      v87 = &v31[16 * v57];
      v89 = *v87;
      v88 = *(v87 + 1);
      v71 = __OFSUB__(v88, v89);
      v81 = v88 - v89;
      v82 = v71;
LABEL_70:
      if (v82)
      {
        goto LABEL_122;
      }

      v90 = &v31[16 * v60];
      v92 = *(v90 + 4);
      v91 = *(v90 + 5);
      v71 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v71)
      {
        goto LABEL_125;
      }

      if (v93 < v81)
      {
        goto LABEL_3;
      }
    }

    v98 = v60 - 1;
    if (v60 - 1 < v57)
    {
      if (!*v142)
      {
        goto LABEL_137;
      }

      v99 = *&v31[16 * v98 + 32];
      v100 = *&v31[16 * v60 + 40];
      sub_1D1CB4604(*v142 + *(v141 + 72) * v99, *v142 + *(v141 + 72) * *&v31[16 * v60 + 32], *v142 + *(v141 + 72) * v100, v59, v143, v144);
      if (v7)
      {
      }

      if (v100 < v99)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1D1E0BE44(v31);
      }

      if (v98 >= *(v31 + 2))
      {
        goto LABEL_117;
      }

      v101 = &v31[16 * v98];
      *(v101 + 4) = v99;
      *(v101 + 5) = v100;
      v145 = v31;
      result = sub_1D1E0BDB8(v60);
      v31 = v145;
      v57 = *(v145 + 2);
      if (v57 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

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
  result = sub_1D1E0BE44(v31);
  v31 = result;
LABEL_101:
  v145 = v31;
  v114 = *(v31 + 2);
  if (v114 < 2)
  {
  }

  v115 = v143;
  while (*v142)
  {
    v116 = *&v31[16 * v114];
    v117 = *&v31[16 * v114 + 24];
    sub_1D1CB4604(*v142 + *(v141 + 72) * v116, *v142 + *(v141 + 72) * *&v31[16 * v114 + 16], *v142 + *(v141 + 72) * v117, v22, v115, v144);
    if (v7)
    {
    }

    if (v117 < v116)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1D1E0BE44(v31);
    }

    if (v114 - 2 >= *(v31 + 2))
    {
      goto LABEL_129;
    }

    v118 = &v31[16 * v114];
    *v118 = v116;
    *(v118 + 1) = v117;
    v145 = v31;
    result = sub_1D1E0BDB8(v114 - 1);
    v31 = v145;
    v114 = *(v145 + 2);
    if (v114 <= 1)
    {
    }
  }

LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_1D1CB3338(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v63 = a5;
  v62 = type metadata accessor for StaticCameraProfile();
  v11 = *(*(v62 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v62);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v53 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v53 - v17;
  result = MEMORY[0x1EEE9AC00](v16);
  v22 = &v53 - v21;
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_64;
  }

  v25 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_65;
  }

  v26 = (a2 - a1) / v24;
  v67 = a1;
  v66 = a4;
  v61 = v24;
  if (v26 >= v25 / v24)
  {
    v28 = v25 / v24 * v24;
    v60 = v20;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v28;
    if (v28 >= 1)
    {
      v39 = -v61;
      v40 = a4 + v28;
      v41 = v15;
      v57 = a4;
      v58 = a1;
      v56 = -v61;
      do
      {
        v42 = a1;
        v54 = v38;
        v43 = a2 + v39;
        v59 = a2;
        while (1)
        {
          if (a2 <= v42)
          {
            v67 = a2;
            v65 = v54;
            goto LABEL_62;
          }

          v45 = a3;
          v55 = v38;
          v61 = v40;
          v46 = v40 + v39;
          sub_1D1CB2110(v40 + v39, v41, type metadata accessor for StaticCameraProfile);
          v47 = v6;
          v48 = v41;
          v49 = v60;
          sub_1D1CB2110(v43, v60, type metadata accessor for StaticCameraProfile);
          v50 = sub_1D1D0C624(v48, v49, v63);
          if (v47)
          {
            sub_1D1CB2248(v49, type metadata accessor for StaticCameraProfile);
            sub_1D1CB2248(v48, type metadata accessor for StaticCameraProfile);
            v67 = v59;
            v65 = v55;
            goto LABEL_62;
          }

          v51 = v50;
          v64 = 0;
          v52 = v45 + v39;
          sub_1D1CB2248(v49, type metadata accessor for StaticCameraProfile);
          sub_1D1CB2248(v48, type metadata accessor for StaticCameraProfile);
          v41 = v48;
          if (v51)
          {
            break;
          }

          v38 = v46;
          a3 = v45 + v39;
          if (v45 < v61 || v52 >= v61)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v46;
            v6 = v64;
          }

          else
          {
            v6 = v64;
            if (v45 != v61)
            {
              swift_arrayInitWithTakeBackToFront();
              v38 = v46;
            }
          }

          v40 = v38;
          v42 = v58;
          v44 = v46 > v57;
          v39 = v56;
          a2 = v59;
          if (!v44)
          {
            goto LABEL_58;
          }
        }

        a3 = v45 + v39;
        if (v45 < v59 || v52 >= v59)
        {
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v6 = v64;
          v39 = v56;
        }

        else
        {
          a2 = v43;
          v6 = v64;
          v39 = v56;
          if (v45 != v59)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v58;
        v40 = v61;
        v38 = v55;
      }

      while (v61 > v57);
    }

LABEL_58:
    v67 = a2;
    v65 = v38;
  }

  else
  {
    v27 = v26 * v24;
    if (a4 < a1 || a1 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v60 = a4 + v27;
    v65 = a4 + v27;
    if (v27 >= 1 && a2 < a3)
    {
      v30 = v61;
      v59 = v22;
      while (1)
      {
        v31 = a3;
        sub_1D1CB2110(a2, v22, type metadata accessor for StaticCameraProfile);
        sub_1D1CB2110(a4, v18, type metadata accessor for StaticCameraProfile);
        v32 = sub_1D1D0C624(v22, v18, v63);
        if (v6)
        {
          break;
        }

        v33 = v32;
        v64 = 0;
        v34 = v18;
        v35 = a4;
        v36 = v34;
        sub_1D1CB2248(v34, type metadata accessor for StaticCameraProfile);
        sub_1D1CB2248(v22, type metadata accessor for StaticCameraProfile);
        if (v33)
        {
          v37 = a2 + v30;
          if (a1 < a2 || a1 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v37;
            a3 = v31;
          }

          else
          {
            a3 = v31;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v37;
          }
        }

        else
        {
          a4 += v30;
          if (a1 < v35 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v31;
          }

          else
          {
            a3 = v31;
            if (a1 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 = v35 + v30;
        }

        v18 = v36;
        v30 = v61;
        a1 += v61;
        v67 = a1;
        v22 = v59;
        v6 = v64;
        if (a4 >= v60 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_1D1CB2248(v18, type metadata accessor for StaticCameraProfile);
      sub_1D1CB2248(v22, type metadata accessor for StaticCameraProfile);
    }
  }

LABEL_62:
  sub_1D1DC70FC(&v67, &v66, &v65);

  return 1;
}

uint64_t sub_1D1CB397C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v63 = a5;
  v62 = type metadata accessor for StaticActionSet();
  v11 = *(*(v62 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v62);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v53 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v53 - v17;
  result = MEMORY[0x1EEE9AC00](v16);
  v22 = &v53 - v21;
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_64;
  }

  v25 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_65;
  }

  v26 = (a2 - a1) / v24;
  v67 = a1;
  v66 = a4;
  v61 = v24;
  if (v26 >= v25 / v24)
  {
    v28 = v25 / v24 * v24;
    v60 = v20;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v28;
    if (v28 >= 1)
    {
      v39 = -v61;
      v40 = a4 + v28;
      v41 = v15;
      v57 = a4;
      v58 = a1;
      v56 = -v61;
      do
      {
        v42 = a1;
        v54 = v38;
        v43 = a2 + v39;
        v59 = a2;
        while (1)
        {
          if (a2 <= v42)
          {
            v67 = a2;
            v65 = v54;
            goto LABEL_62;
          }

          v45 = a3;
          v55 = v38;
          v61 = v40;
          v46 = v40 + v39;
          sub_1D1CB2110(v40 + v39, v41, type metadata accessor for StaticActionSet);
          v47 = v6;
          v48 = v41;
          v49 = v60;
          sub_1D1CB2110(v43, v60, type metadata accessor for StaticActionSet);
          v50 = sub_1D1D0DF40(v48, v49, v63);
          if (v47)
          {
            sub_1D1CB2248(v49, type metadata accessor for StaticActionSet);
            sub_1D1CB2248(v48, type metadata accessor for StaticActionSet);
            v67 = v59;
            v65 = v55;
            goto LABEL_62;
          }

          v51 = v50;
          v64 = 0;
          v52 = v45 + v39;
          sub_1D1CB2248(v49, type metadata accessor for StaticActionSet);
          sub_1D1CB2248(v48, type metadata accessor for StaticActionSet);
          v41 = v48;
          if (v51)
          {
            break;
          }

          v38 = v46;
          a3 = v45 + v39;
          if (v45 < v61 || v52 >= v61)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v46;
            v6 = v64;
          }

          else
          {
            v6 = v64;
            if (v45 != v61)
            {
              swift_arrayInitWithTakeBackToFront();
              v38 = v46;
            }
          }

          v40 = v38;
          v42 = v58;
          v44 = v46 > v57;
          v39 = v56;
          a2 = v59;
          if (!v44)
          {
            goto LABEL_58;
          }
        }

        a3 = v45 + v39;
        if (v45 < v59 || v52 >= v59)
        {
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v6 = v64;
          v39 = v56;
        }

        else
        {
          a2 = v43;
          v6 = v64;
          v39 = v56;
          if (v45 != v59)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v58;
        v40 = v61;
        v38 = v55;
      }

      while (v61 > v57);
    }

LABEL_58:
    v67 = a2;
    v65 = v38;
  }

  else
  {
    v27 = v26 * v24;
    if (a4 < a1 || a1 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v60 = a4 + v27;
    v65 = a4 + v27;
    if (v27 >= 1 && a2 < a3)
    {
      v30 = v61;
      v59 = v22;
      while (1)
      {
        v31 = a3;
        sub_1D1CB2110(a2, v22, type metadata accessor for StaticActionSet);
        sub_1D1CB2110(a4, v18, type metadata accessor for StaticActionSet);
        v32 = sub_1D1D0DF40(v22, v18, v63);
        if (v6)
        {
          break;
        }

        v33 = v32;
        v64 = 0;
        v34 = v18;
        v35 = a4;
        v36 = v34;
        sub_1D1CB2248(v34, type metadata accessor for StaticActionSet);
        sub_1D1CB2248(v22, type metadata accessor for StaticActionSet);
        if (v33)
        {
          v37 = a2 + v30;
          if (a1 < a2 || a1 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v37;
            a3 = v31;
          }

          else
          {
            a3 = v31;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v37;
          }
        }

        else
        {
          a4 += v30;
          if (a1 < v35 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v31;
          }

          else
          {
            a3 = v31;
            if (a1 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 = v35 + v30;
        }

        v18 = v36;
        v30 = v61;
        a1 += v61;
        v67 = a1;
        v22 = v59;
        v6 = v64;
        if (a4 >= v60 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_1D1CB2248(v18, type metadata accessor for StaticActionSet);
      sub_1D1CB2248(v22, type metadata accessor for StaticActionSet);
    }
  }

LABEL_62:
  sub_1D1DC7114(&v67, &v66, &v65);

  return 1;
}

uint64_t sub_1D1CB3FC0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v63 = a5;
  v62 = type metadata accessor for StaticRoom(0);
  v11 = *(*(v62 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v62);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v53 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v53 - v17;
  result = MEMORY[0x1EEE9AC00](v16);
  v22 = &v53 - v21;
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_64;
  }

  v25 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_65;
  }

  v26 = (a2 - a1) / v24;
  v67 = a1;
  v66 = a4;
  v61 = v24;
  if (v26 >= v25 / v24)
  {
    v28 = v25 / v24 * v24;
    v60 = v20;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v28;
    if (v28 >= 1)
    {
      v39 = -v61;
      v40 = a4 + v28;
      v41 = v15;
      v57 = a4;
      v58 = a1;
      v56 = -v61;
      do
      {
        v42 = a1;
        v54 = v38;
        v43 = a2 + v39;
        v59 = a2;
        while (1)
        {
          if (a2 <= v42)
          {
            v67 = a2;
            v65 = v54;
            goto LABEL_62;
          }

          v45 = a3;
          v55 = v38;
          v61 = v40;
          v46 = v40 + v39;
          sub_1D1CB2110(v40 + v39, v41, type metadata accessor for StaticRoom);
          v47 = v6;
          v48 = v41;
          v49 = v60;
          sub_1D1CB2110(v43, v60, type metadata accessor for StaticRoom);
          v50 = sub_1D1D0E670(v48, v49, v63);
          if (v47)
          {
            sub_1D1CB2248(v49, type metadata accessor for StaticRoom);
            sub_1D1CB2248(v48, type metadata accessor for StaticRoom);
            v67 = v59;
            v65 = v55;
            goto LABEL_62;
          }

          v51 = v50;
          v64 = 0;
          v52 = v45 + v39;
          sub_1D1CB2248(v49, type metadata accessor for StaticRoom);
          sub_1D1CB2248(v48, type metadata accessor for StaticRoom);
          v41 = v48;
          if (v51)
          {
            break;
          }

          v38 = v46;
          a3 = v45 + v39;
          if (v45 < v61 || v52 >= v61)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v46;
            v6 = v64;
          }

          else
          {
            v6 = v64;
            if (v45 != v61)
            {
              swift_arrayInitWithTakeBackToFront();
              v38 = v46;
            }
          }

          v40 = v38;
          v42 = v58;
          v44 = v46 > v57;
          v39 = v56;
          a2 = v59;
          if (!v44)
          {
            goto LABEL_58;
          }
        }

        a3 = v45 + v39;
        if (v45 < v59 || v52 >= v59)
        {
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v6 = v64;
          v39 = v56;
        }

        else
        {
          a2 = v43;
          v6 = v64;
          v39 = v56;
          if (v45 != v59)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v58;
        v40 = v61;
        v38 = v55;
      }

      while (v61 > v57);
    }

LABEL_58:
    v67 = a2;
    v65 = v38;
  }

  else
  {
    v27 = v26 * v24;
    if (a4 < a1 || a1 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v60 = a4 + v27;
    v65 = a4 + v27;
    if (v27 >= 1 && a2 < a3)
    {
      v30 = v61;
      v59 = v22;
      while (1)
      {
        v31 = a3;
        sub_1D1CB2110(a2, v22, type metadata accessor for StaticRoom);
        sub_1D1CB2110(a4, v18, type metadata accessor for StaticRoom);
        v32 = sub_1D1D0E670(v22, v18, v63);
        if (v6)
        {
          break;
        }

        v33 = v32;
        v64 = 0;
        v34 = v18;
        v35 = a4;
        v36 = v34;
        sub_1D1CB2248(v34, type metadata accessor for StaticRoom);
        sub_1D1CB2248(v22, type metadata accessor for StaticRoom);
        if (v33)
        {
          v37 = a2 + v30;
          if (a1 < a2 || a1 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v37;
            a3 = v31;
          }

          else
          {
            a3 = v31;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v37;
          }
        }

        else
        {
          a4 += v30;
          if (a1 < v35 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v31;
          }

          else
          {
            a3 = v31;
            if (a1 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 = v35 + v30;
        }

        v18 = v36;
        v30 = v61;
        a1 += v61;
        v67 = a1;
        v22 = v59;
        v6 = v64;
        if (a4 >= v60 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_1D1CB2248(v18, type metadata accessor for StaticRoom);
      sub_1D1CB2248(v22, type metadata accessor for StaticRoom);
    }
  }

LABEL_62:
  sub_1D1DC7174(&v67, &v66, &v65);

  return 1;
}

unint64_t sub_1D1CB4604(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v55 = a6;
  v56 = a5;
  v57 = a3;
  v54 = type metadata accessor for RoomType(0);
  v11 = *(*(v54 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v54);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v46 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v46 - v19;
  result = MEMORY[0x1EEE9AC00](v18);
  v23 = &v46 - v22;
  v53 = *(v24 + 72);
  if (!v53)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  result = a1;
  if (a2 - a1 == 0x8000000000000000 && v53 == -1)
  {
    goto LABEL_66;
  }

  v25 = v57 - a2;
  if (v57 - a2 != 0x8000000000000000 || v53 != -1)
  {
    v26 = (a2 - a1) / v53;
    v60 = a1;
    v59 = a4;
    v52 = a1;
    if (v26 < v25 / v53)
    {
      v27 = v26 * v53;
      if (a4 < result || result + v27 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == result)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      result = v52;
LABEL_17:
      v52 = a4 + v27;
      v58 = a4 + v27;
      if (v27 >= 1 && a2 < v57)
      {
        while (1)
        {
          v30 = result;
          sub_1D1CB2110(a2, v23, type metadata accessor for RoomType);
          sub_1D1CB2110(a4, v20, type metadata accessor for RoomType);
          v31 = v56(v23, v20);
          if (v7)
          {
            break;
          }

          v32 = v31;
          v33 = a4;
          sub_1D1CB2248(v20, type metadata accessor for RoomType);
          sub_1D1CB2248(v23, type metadata accessor for RoomType);
          if (v32)
          {
            v34 = v53;
            v35 = v30;
            if (v30 < a2 || v30 >= a2 + v53)
            {
              swift_arrayInitWithTakeFrontToBack();
              v35 = v30;
              a2 += v34;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v30 != a2)
              {
                swift_arrayInitWithTakeBackToFront();
                v35 = v30;
              }

              a2 += v34;
            }
          }

          else
          {
            v36 = a4;
            v34 = v53;
            a4 += v53;
            v35 = v30;
            if (v30 < v33 || v30 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v35 = v30;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v30 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
                v35 = v30;
              }
            }

            v59 = a4;
          }

          result = v35 + v34;
          v60 = result;
          if (a4 >= v52 || a2 >= v57)
          {
            goto LABEL_64;
          }
        }

        sub_1D1CB2248(v20, type metadata accessor for RoomType);
        sub_1D1CB2248(v23, type metadata accessor for RoomType);
      }

LABEL_64:
      sub_1D1DC721C(&v60, &v59, &v58);
      return 1;
    }

    v28 = v25 / v53 * v53;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_40:
        v37 = a4 + v28;
        if (v28 >= 1)
        {
          v38 = -v53;
          v39 = v37;
          v48 = v17;
          v49 = v14;
          do
          {
            v46 = v37;
            v40 = a2;
            v50 = a2;
            v51 = a2 + v38;
            while (1)
            {
              v41 = v57;
              if (v40 <= result)
              {
                v60 = v40;
                v58 = v46;
                goto LABEL_64;
              }

              v47 = v37;
              v53 = v39;
              v42 = v39 + v38;
              sub_1D1CB2110(v39 + v38, v17, type metadata accessor for RoomType);
              sub_1D1CB2110(v51, v14, type metadata accessor for RoomType);
              v43 = v56(v17, v14);
              if (v7)
              {
                sub_1D1CB2248(v14, type metadata accessor for RoomType);
                sub_1D1CB2248(v17, type metadata accessor for RoomType);
                v60 = v50;
                v58 = v47;
                goto LABEL_64;
              }

              v44 = v43;
              v57 = v41 + v38;
              sub_1D1CB2248(v14, type metadata accessor for RoomType);
              sub_1D1CB2248(v17, type metadata accessor for RoomType);
              if (v44)
              {
                break;
              }

              v37 = v42;
              if (v41 < v53 || v57 >= v53)
              {
                swift_arrayInitWithTakeFrontToBack();
                v7 = 0;
              }

              else
              {
                v7 = 0;
                if (v41 != v53)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v39 = v42;
              result = v52;
              v17 = v48;
              v14 = v49;
              v40 = v50;
              if (v42 <= a4)
              {
                a2 = v50;
                goto LABEL_63;
              }
            }

            if (v41 < v50 || v57 >= v50)
            {
              a2 = v51;
              swift_arrayInitWithTakeFrontToBack();
              v7 = 0;
              v37 = v47;
            }

            else
            {
              v45 = v41 == v50;
              a2 = v51;
              v7 = 0;
              v37 = v47;
              if (!v45)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = v52;
            v39 = v53;
            v17 = v48;
            v14 = v49;
          }

          while (v53 > a4);
        }

LABEL_63:
        v60 = a2;
        v58 = v37;
        goto LABEL_64;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    result = v52;
    goto LABEL_40;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_1D1CB4C4C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v63 = a5;
  v62 = type metadata accessor for StaticResident();
  v11 = *(*(v62 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v62);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v53 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v53 - v17;
  result = MEMORY[0x1EEE9AC00](v16);
  v22 = &v53 - v21;
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_64;
  }

  v25 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_65;
  }

  v26 = (a2 - a1) / v24;
  v67 = a1;
  v66 = a4;
  v61 = v24;
  if (v26 >= v25 / v24)
  {
    v28 = v25 / v24 * v24;
    v60 = v20;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v28;
    if (v28 >= 1)
    {
      v39 = -v61;
      v40 = a4 + v28;
      v41 = v15;
      v57 = a4;
      v58 = a1;
      v56 = -v61;
      do
      {
        v42 = a1;
        v54 = v38;
        v43 = a2 + v39;
        v59 = a2;
        while (1)
        {
          if (a2 <= v42)
          {
            v67 = a2;
            v65 = v54;
            goto LABEL_62;
          }

          v45 = a3;
          v55 = v38;
          v61 = v40;
          v46 = v40 + v39;
          sub_1D1CB2110(v40 + v39, v41, type metadata accessor for StaticResident);
          v47 = v6;
          v48 = v41;
          v49 = v60;
          sub_1D1CB2110(v43, v60, type metadata accessor for StaticResident);
          v50 = sub_1D1D0EC40(v48, v49, v63);
          if (v47)
          {
            sub_1D1CB2248(v49, type metadata accessor for StaticResident);
            sub_1D1CB2248(v48, type metadata accessor for StaticResident);
            v67 = v59;
            v65 = v55;
            goto LABEL_62;
          }

          v51 = v50;
          v64 = 0;
          v52 = v45 + v39;
          sub_1D1CB2248(v49, type metadata accessor for StaticResident);
          sub_1D1CB2248(v48, type metadata accessor for StaticResident);
          v41 = v48;
          if (v51)
          {
            break;
          }

          v38 = v46;
          a3 = v45 + v39;
          if (v45 < v61 || v52 >= v61)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v46;
            v6 = v64;
          }

          else
          {
            v6 = v64;
            if (v45 != v61)
            {
              swift_arrayInitWithTakeBackToFront();
              v38 = v46;
            }
          }

          v40 = v38;
          v42 = v58;
          v44 = v46 > v57;
          v39 = v56;
          a2 = v59;
          if (!v44)
          {
            goto LABEL_58;
          }
        }

        a3 = v45 + v39;
        if (v45 < v59 || v52 >= v59)
        {
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v6 = v64;
          v39 = v56;
        }

        else
        {
          a2 = v43;
          v6 = v64;
          v39 = v56;
          if (v45 != v59)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v58;
        v40 = v61;
        v38 = v55;
      }

      while (v61 > v57);
    }

LABEL_58:
    v67 = a2;
    v65 = v38;
  }

  else
  {
    v27 = v26 * v24;
    if (a4 < a1 || a1 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v60 = a4 + v27;
    v65 = a4 + v27;
    if (v27 >= 1 && a2 < a3)
    {
      v30 = v61;
      v59 = v22;
      while (1)
      {
        v31 = a3;
        sub_1D1CB2110(a2, v22, type metadata accessor for StaticResident);
        sub_1D1CB2110(a4, v18, type metadata accessor for StaticResident);
        v32 = sub_1D1D0EC40(v22, v18, v63);
        if (v6)
        {
          break;
        }

        v33 = v32;
        v64 = 0;
        v34 = v18;
        v35 = a4;
        v36 = v34;
        sub_1D1CB2248(v34, type metadata accessor for StaticResident);
        sub_1D1CB2248(v22, type metadata accessor for StaticResident);
        if (v33)
        {
          v37 = a2 + v30;
          if (a1 < a2 || a1 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v37;
            a3 = v31;
          }

          else
          {
            a3 = v31;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v37;
          }
        }

        else
        {
          a4 += v30;
          if (a1 < v35 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v31;
          }

          else
          {
            a3 = v31;
            if (a1 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 = v35 + v30;
        }

        v18 = v36;
        v30 = v61;
        a1 += v61;
        v67 = a1;
        v22 = v59;
        v6 = v64;
        if (a4 >= v60 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_1D1CB2248(v18, type metadata accessor for StaticResident);
      sub_1D1CB2248(v22, type metadata accessor for StaticResident);
    }
  }

LABEL_62:
  sub_1D1DC7264(&v67, &v66, &v65);

  return 1;
}

uint64_t sub_1D1CB5290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454C0, &qword_1D1E96BE0) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646170, &unk_1D1E7E720) + 48);
  v6 = sub_1D1E66A7C();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return sub_1D1CB2110(a1 + v4, a2 + v5, type metadata accessor for StaticMatterDevice);
}

uint64_t sub_1D1CB5348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40) + 48);
  v6 = sub_1D1E66A7C();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return sub_1D1CB2110(a1 + v4, a2 + v5, type metadata accessor for StaticService);
}

uint64_t sub_1D1CB5400(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1D1E6873C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1D1E688CC();
  *v1 = result;
  return result;
}

void *sub_1D1CB54A0(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void *, uint64_t, uint64_t, id))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a4;
    v11 = a5(v9, a2, a3, v10);

    return v11;
  }

  return result;
}

void *sub_1D1CB5540(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
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

    v10 = sub_1D19FB3F0(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

uint64_t sub_1D1CB55D0(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v40 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - v14;
  v16 = *v2;
  v17 = v54;
  result = sub_1D1C92010(a1, a2, *v2);
  if (!v17)
  {
    v50 = v15;
    v54 = 0;
    if (v19)
    {
      return *(v16 + 16);
    }

    v20 = v5;
    v42 = v10;
    v43 = v13;
    v47 = a1;
    v41 = v2;
    v52 = result;
    v21 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = v16;
      v24 = (v16 + 16);
      v23 = *(v16 + 16);
      v25 = v50;
      if (v21 == v23)
      {
        return v52;
      }

      v26 = v20;
      v49 = v6 + 16;
      v45 = v6;
      v46 = (v6 + 8);
      v40 = (v6 + 40);
      v44 = a2;
      while (v21 < v23)
      {
        v27 = *(v6 + 80);
        v53 = v22;
        v48 = (v27 + 32) & ~v27;
        v28 = v22 + v48;
        v29 = *(v6 + 72);
        v30 = *(v6 + 16);
        v51 = v29 * v21;
        v30(v25, &v28[v29 * v21], v26);
        v31 = v54;
        v32 = v47(v25);
        v54 = v31;
        if (v31)
        {
          return (*v46)(v25, v26);
        }

        v33 = v32;
        result = (*v46)(v25, v26);
        if (v33)
        {
          v6 = v45;
          v25 = v50;
          v22 = v53;
        }

        else
        {
          v34 = v52;
          if (v21 == v52)
          {
            v6 = v45;
            v25 = v50;
            v22 = v53;
          }

          else
          {
            if ((v52 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v35 = *v24;
            if (v52 >= v35)
            {
              goto LABEL_27;
            }

            v36 = v29 * v52;
            result = (v30)(v43, &v28[v36], v26);
            if (v21 >= v35)
            {
              goto LABEL_28;
            }

            v37 = v42;
            v30(v42, &v28[v51], v26);
            v22 = v53;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_1D1864AE0(v22);
            }

            v38 = v22 + v48;
            v39 = *v40;
            result = (*v40)(v22 + v48 + v36, v37, v26);
            v6 = v45;
            if (v21 >= v22[2])
            {
              goto LABEL_29;
            }

            result = v39(&v38[v51], v43, v26);
            *v41 = v22;
            v34 = v52;
            v25 = v50;
          }

          v52 = v34 + 1;
        }

        ++v21;
        v24 = v22 + 2;
        v23 = v22[2];
        if (v21 == v23)
        {
          return v52;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1CB5974(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x1E69E9840];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_1D1CB5B14(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_1D1CC7684(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x1D3893640](v15, -1, -1);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t sub_1D1CB5B14(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a2;
  v43 = a1;
  v6 = sub_1D1E66A7C();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v51 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v59 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v40 - v13;
  v14 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a3 + 64);
  v18 = (v15 + 63) >> 6;
  v56 = v12 + 16;
  v57 = a4;
  v48 = v12 + 32;
  v53 = a4 + 56;
  v50 = v12;
  v58 = (v12 + 8);

  v42 = 0;
  v20 = 0;
  v46 = v18;
  v47 = a3 + 64;
  v44 = a3;
  while (v17)
  {
LABEL_12:
    v23 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v25 = v49;
    v24 = v50;
    v26 = *(v50 + 72);
    v27 = *(a3 + 48) + v26 * (v23 | (v20 << 6));
    v54 = *(v50 + 16);
    v55 = v26;
    v54(v49, v27, v6);
    (*(v24 + 32))(v59, v25, v6);
    v28 = v57;
    v29 = *(v57 + 40);
    sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    v30 = sub_1D1E676DC();
    v31 = -1 << *(v28 + 32);
    v32 = v30 & ~v31;
    v33 = v32 >> 6;
    v34 = 1 << v32;
    if (((1 << v32) & *(v53 + 8 * (v32 >> 6))) != 0)
    {
      v45 = v58 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v52 = ~v31;
      while (1)
      {
        v35 = v51;
        v54(v51, *(v57 + 48) + v32 * v55, v6);
        sub_1D1CB21E0(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v36 = sub_1D1E6775C();
        v21 = *v58;
        (*v58)(v35, v6);
        if (v36)
        {
          break;
        }

        v32 = (v32 + 1) & v52;
        v33 = v32 >> 6;
        v34 = 1 << v32;
        if (((1 << v32) & *(v53 + 8 * (v32 >> 6))) == 0)
        {
          a3 = v44;
          goto LABEL_6;
        }
      }

      result = (v21)(v59, v6);
      a3 = v44;
      v37 = v43[v33];
      v43[v33] = v37 | v34;
      v18 = v46;
      v14 = v47;
      if ((v37 & v34) == 0 && __OFADD__(v42++, 1))
      {
        __break(1u);
LABEL_21:

        v39 = v57;

        return sub_1D19E13B0(v43, v41, v42, v39);
      }
    }

    else
    {
      v21 = *v58;
LABEL_6:
      v18 = v46;
      result = (v21)(v59, v6);
      v14 = v47;
    }
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v18)
    {
      goto LABEL_21;
    }

    v17 = *(v14 + 8 * v22);
    ++v20;
    if (v17)
    {
      v20 = v22;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1CB5F14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
  return sub_1D1E684FC() & 1;
}

BOOL _s13HomeDataModel13StateSnapshotV19ActionSetUpdateTypeO2eeoiySbAE_AEtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 14)
  {
    if (v2 >> 14 == 1)
    {
      if ((v3 & 0xC000) == 0x4000)
      {
        return (v3 ^ v2) == 0;
      }
    }

    else if (v3 == 0x8000)
    {
      return 1;
    }
  }

  else if (v3 < 0x4000)
  {
    return ((v3 ^ v2) < 0x100) & (v3 ^ v2 ^ 1);
  }

  return 0;
}

uint64_t _s13HomeDataModel13StateSnapshotV24CharacteristicUpdateTypeO05ValueH0O2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v7 != 3)
      {
        v15 = *(a1 + 8);

        goto LABEL_29;
      }

      v9 = *a1;
      if (v2 != v5 || v3 != v6)
      {
        LOBYTE(v7) = sub_1D1E6904C();
        sub_1D1741830(v5, v6, 3);
        sub_1D1741830(v2, v3, 3);
        sub_1D1778940(v2, v3, 3);
        sub_1D1778940(v5, v6, 3);
        return v7 & 1;
      }

      sub_1D1741830(*&v9, v3, 3);
      sub_1D1741830(v2, v3, 3);
      sub_1D1778940(v2, v3, 3);
      v12 = v2;
      v13 = v3;
      v14 = 3;
    }

    else
    {
      if (v4 == 4)
      {
        if (v7 == 4)
        {
          sub_1D1741830(*a2, *(a2 + 8), 4);
          sub_1D1741830(v2, v3, 4);
          LOBYTE(v7) = sub_1D199F344(v2, v3, v5, v6);
          sub_1D1778940(v2, v3, 4);
          sub_1D1778940(v5, v6, 4);
          return v7 & 1;
        }

        sub_1D1741854(*a1, v3);
LABEL_29:
        sub_1D1741830(v5, v6, v7);
        sub_1D1778940(v2, v3, v4);
        sub_1D1778940(v5, v6, v7);
LABEL_30:
        LOBYTE(v7) = 0;
        return v7 & 1;
      }

      if (v7 != 5 || (v6 | v5) != 0)
      {
        goto LABEL_29;
      }

      sub_1D1778940(*a1, v3, 5);
      v12 = 0;
      v13 = 0;
      v14 = 5;
    }

    sub_1D1778940(v12, v13, v14);
    LOBYTE(v7) = 1;
    return v7 & 1;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_1D1778940(*a1, v3, 0);
      sub_1D1778940(v5, v6, 0);
      v7 = (v5 ^ v2) ^ 1;
      return v7 & 1;
    }

    goto LABEL_29;
  }

  if (v4 != 1)
  {
    if (v7 == 2)
    {
      sub_1D1778940(*a1, v3, 2);
      sub_1D1778940(v5, v6, 2);
      LOBYTE(v7) = v2 == v5;
      return v7 & 1;
    }

    goto LABEL_29;
  }

  if (v7 != 1)
  {
    goto LABEL_29;
  }

  v8 = *a2;
  sub_1D1778940(*a1, v3, 1);
  sub_1D1778940(v5, v6, 1);
  if (*&v2 != *&v5)
  {
    goto LABEL_30;
  }

  return v7 & 1;
}

uint64_t _s13HomeDataModel13StateSnapshotV24CharacteristicUpdateTypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 1)
  {
    if (*(a1 + 16))
    {
      if (v7 == 1)
      {
        LOBYTE(v4) = 1;
        sub_1D1CC5310(*a2, *(a2 + 8), 1u);
        sub_1D1CC5310(v2, v3, 1u);
        v12 = sub_1D184DF04(v2, v5, v13, v14);
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if (*(a2 + 16))
    {
      goto LABEL_18;
    }

    sub_1D1CC5310(*a2, *(a2 + 8), 0);
    sub_1D1CC5310(v2, v3, 0);
    sub_1D17AB954(v2, v5);
    v12 = v11;
    LOBYTE(v4) = 0;
  }

  else
  {
    if (v4 == 2)
    {
      if (v7 == 2)
      {
        LOBYTE(v4) = 2;
        sub_1D1CC5310(*a2, *(a2 + 8), 2u);
        v8 = v2;
        v9 = v3;
        v10 = 2;
        goto LABEL_11;
      }

LABEL_18:
      sub_1D1CC5310(*a2, *(a2 + 8), v7);
      sub_1D1CC5310(v2, v3, v4);
      v12 = 0;
      goto LABEL_19;
    }

    if (v4 == 3)
    {
      if (v7 == 3)
      {
        LOBYTE(v4) = 3;
        sub_1D1CC5310(*a2, *(a2 + 8), 3u);
        v8 = v2;
        v9 = v3;
        v10 = 3;
LABEL_11:
        sub_1D1CC5310(v8, v9, v10);
        v12 = sub_1D184E2A0(v2, v5);
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if (v7 != 4)
    {
      goto LABEL_18;
    }

    LOBYTE(v4) = 4;
    sub_1D1CC5310(*a2, *(a2 + 8), 4u);
    sub_1D1CC5310(v2, v3, 4u);
    if (sub_1D184E2A0(v2, v5))
    {
      v12 = sub_1D184EAA0(v3, v6);
    }

    else
    {
      v12 = 0;
    }

    LOBYTE(v7) = 4;
  }

LABEL_19:
  sub_1D1AC373C(v2, v3, v4);
  sub_1D1AC373C(v5, v6, v7);
  return v12 & 1;
}

uint64_t _s13HomeDataModel13StateSnapshotV10UpdateTypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t *a2)
{
  v206 = a1;
  v207 = a2;
  v2 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v194 = (&v189 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v195 = (&v189 - v6);
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v204 = v7;
  v205 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v192 = &v189 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v193 = &v189 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v191 = &v189 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v190 = &v189 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v189 = &v189 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v196 = &v189 - v20;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v22 = *(*(updated - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](updated);
  v203 = &v189 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v189 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = (&v189 - v29);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v201 = (&v189 - v32);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v197 = &v189 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v202 = &v189 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v200 = &v189 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v198 = &v189 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v199 = &v189 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v45 = (&v189 - v44);
  v46 = MEMORY[0x1EEE9AC00](v43);
  v48 = (&v189 - v47);
  v49 = MEMORY[0x1EEE9AC00](v46);
  v51 = &v189 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v53 = (&v189 - v52);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CF28, &qword_1D1EA2F68);
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x1EEE9AC00](v54 - 8);
  v58 = &v189 - v57;
  v59 = (&v189 + *(v56 + 56) - v57);
  sub_1D1CB2110(v206, &v189 - v57, type metadata accessor for StateSnapshot.UpdateType);
  v60 = v207;
  v207 = v59;
  sub_1D1CB2110(v60, v59, type metadata accessor for StateSnapshot.UpdateType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D1CB2110(v58, v51, type metadata accessor for StateSnapshot.UpdateType);
      v145 = *v51;
      v144 = *(v51 + 1);
      v146 = v51[16];
      v147 = v207;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v148 = *v147;
        v149 = v147[1];
        v150 = *(v147 + 16);
        v213 = v145;
        v214 = v144;
        LOBYTE(v215) = v146;
        v208 = v148;
        v209 = v149;
        LOBYTE(v210) = v150;
        v75 = _s13HomeDataModel13StateSnapshotV24CharacteristicUpdateTypeO2eeoiySbAE_AEtFZ_0(&v213, &v208);
        sub_1D1AC373C(v148, v149, v150);
        sub_1D1AC373C(v145, v144, v146);
        goto LABEL_46;
      }

      sub_1D1AC373C(v145, v144, v146);
      goto LABEL_62;
    case 2u:
      sub_1D1CB2110(v58, v48, type metadata accessor for StateSnapshot.UpdateType);
      v128 = *v48;
      v129 = v207;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_61;
      }

      sub_1D184EF00(v128, *v129);
      goto LABEL_24;
    case 3u:
      sub_1D1CB2110(v58, v45, type metadata accessor for StateSnapshot.UpdateType);
      v131 = *v45;
      v132 = v207;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_61;
      }

      v130 = sub_1D177B17C(v131, *v132);
LABEL_24:
      v75 = v130;

      goto LABEL_25;
    case 4u:
      v76 = v199;
      sub_1D1CB2110(v58, v199, type metadata accessor for StateSnapshot.UpdateType);
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);
      v78 = v77[12];
      v79 = *(v76 + v78);
      v80 = v77[16];
      v81 = *(v76 + v80);
      v82 = v77[20];
      v83 = *(v76 + v82);
      v84 = v207;
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        (*(v205 + 8))(v76, v204);
        goto LABEL_62;
      }

      v202 = v79;
      v203 = v83;
      v206 = v58;
      v85 = *(v84 + v78);
      v86 = *(v84 + v80);
      v87 = *(v84 + v82);
      v88 = v205;
      v89 = v196;
      v90 = v84;
      v91 = v204;
      (*(v205 + 32))(v196, v90, v204);
      v92 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v95 = *(v88 + 8);
      v93 = v88 + 8;
      v94 = v95;
      v95(v76, v91);
      if ((v92 & 1) == 0)
      {
        v94(v89, v91);

        goto LABEL_105;
      }

      v205 = v93;
      v96 = v202;
      if (v202)
      {
        v97 = v86;
        if (!v85)
        {
LABEL_13:
          v103 = v203;
LABEL_81:

LABEL_104:
          v94(v196, v204);
          goto LABEL_105;
        }

        v98 = v85;
        v99 = v87;
        sub_1D1741B10(0, &qword_1EC64CEA8, 0x1E696CC70);
        v100 = v96;
        v101 = v85;
        v102 = sub_1D1E684FC();

        if ((v102 & 1) == 0)
        {

          v96 = v101;
          v87 = v99;
          goto LABEL_13;
        }
      }

      else
      {
        v99 = v87;
        v97 = v86;
        v98 = v85;
        if (v85)
        {
          v96 = v87;
          v87 = v203;
          v103 = v97;
          v97 = v81;
          v81 = v85;
          goto LABEL_81;
        }
      }

      if (v81)
      {
        if (!v97)
        {
LABEL_89:
          v184 = v203;
LABEL_103:

          goto LABEL_104;
        }

        sub_1D1741B10(0, &qword_1EC64CE98, 0x1E696CC68);
        v181 = v81;
        v182 = v97;
        v183 = sub_1D1E684FC();

        if ((v183 & 1) == 0)
        {

          v81 = v182;
          goto LABEL_89;
        }
      }

      else if (v97)
      {
        v81 = v99;
        v99 = v203;
        v184 = v98;
        v98 = v96;
        v96 = v97;
        goto LABEL_103;
      }

      if (!v203)
      {

        v94(v196, v204);
        if (!v99)
        {
          goto LABEL_114;
        }

        goto LABEL_116;
      }

      v186 = v196;
      if (!v99)
      {

        v94(v186, v204);
        v99 = v203;
LABEL_116:

        goto LABEL_105;
      }

      sub_1D1741B10(0, &qword_1EC64CE88, 0x1E696CC60);
      v187 = v203;
      v188 = sub_1D1E684FC();

      v94(v186, v204);
      if ((v188 & 1) == 0)
      {
LABEL_105:
        v180 = v206;
        goto LABEL_106;
      }

LABEL_114:
      v160 = v206;
LABEL_41:
      sub_1D1CB2248(v160, type metadata accessor for StateSnapshot.UpdateType);
      v75 = 1;
      return v75 & 1;
    case 5u:
      v133 = v198;
      sub_1D1CB2110(v58, v198, type metadata accessor for StateSnapshot.UpdateType);
      v151 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650000, &unk_1D1EA2648) + 48);
      v152 = v133[v151];
      v153 = v207;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_48;
      }

      v154 = *(v153 + v151);
      v156 = v204;
      v155 = v205;
      v157 = v189;
      (*(v205 + 32))(v189, v153, v204);
      v158 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v159 = *(v155 + 8);
      v159(v157, v156);
      v159(v133, v156);
      if ((v158 & 1) == 0)
      {
        goto LABEL_84;
      }

      if (v152 > 4)
      {
        switch(v152)
        {
          case 5:
            if (v154 == 5)
            {
              goto LABEL_40;
            }

            goto LABEL_84;
          case 6:
            if (v154 == 6)
            {
              goto LABEL_40;
            }

            goto LABEL_84;
          case 7:
            if (v154 == 7)
            {
              goto LABEL_40;
            }

            goto LABEL_84;
        }
      }

      else
      {
        switch(v152)
        {
          case 2:
            if (v154 == 2)
            {
              goto LABEL_40;
            }

            goto LABEL_84;
          case 3:
            if (v154 == 3)
            {
              goto LABEL_40;
            }

            goto LABEL_84;
          case 4:
            if (v154 == 4)
            {
              goto LABEL_40;
            }

            goto LABEL_84;
        }
      }

      if ((v154 - 2) >= 6 && ((v154 ^ v152) & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_84;
    case 6u:
      v133 = v200;
      sub_1D1CB2110(v58, v200, type metadata accessor for StateSnapshot.UpdateType);
      v161 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690) + 48);
      v162 = *&v133[v161];
      v163 = v207;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_47;
      }

      v164 = *(v163 + v161);
      v139 = v204;
      v165 = v205;
      v140 = v190;
      (*(v205 + 32))(v190, v163, v204);
      v166 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v142 = *(v165 + 8);
      v142(v133, v139);
      if ((v166 & 1) == 0)
      {
        goto LABEL_59;
      }

      v143 = sub_1D17A6E98(v162, v164);
      goto LABEL_45;
    case 7u:
      v133 = v202;
      sub_1D1CB2110(v58, v202, type metadata accessor for StateSnapshot.UpdateType);
      v134 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48);
      v135 = *&v133[v134];
      v136 = v207;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
LABEL_47:

LABEL_48:
        (*(v205 + 8))(v133, v204);
        goto LABEL_62;
      }

      v137 = *(v136 + v134);
      v139 = v204;
      v138 = v205;
      v140 = v191;
      (*(v205 + 32))(v191, v136, v204);
      v141 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v142 = *(v138 + 8);
      v142(v133, v139);
      if ((v141 & 1) == 0)
      {
LABEL_59:
        v142(v140, v139);

        goto LABEL_84;
      }

      v143 = sub_1D184F090(v135, v137);
LABEL_45:
      v75 = v143;

      v142(v140, v139);
      goto LABEL_46;
    case 8u:
      v173 = v197;
      sub_1D1CB2110(v58, v197, type metadata accessor for StateSnapshot.UpdateType);
      v174 = v207;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_62;
      }

      v175 = *v173 ^ *v174;
      sub_1D1CB2248(v58, type metadata accessor for StateSnapshot.UpdateType);
      v75 = v175 ^ 1;
      return v75 & 1;
    case 9u:
      v118 = v201;
      sub_1D1CB2110(v58, v201, type metadata accessor for StateSnapshot.UpdateType);
      v119 = *v118;
      v120 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD58, &unk_1D1EA1810) + 48);
      v121 = v207;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        sub_1D1CB2248(v118 + v120, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);

        goto LABEL_62;
      }

      v122 = *v121;
      v123 = v118 + v120;
      v124 = v195;
      sub_1D1CB2178(v123, v195, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      v125 = v121 + v120;
      v126 = v194;
      sub_1D1CB2178(v125, v194, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
      v127 = sub_1D1E684FC();

      if (v127)
      {
        v75 = _s13HomeDataModel011AutoClimateC0C10ThermostatC25AdaptiveTemperatureConfigV7SettingV2eeoiySbAI_AItFZ_0(v124, v126);
        sub_1D1CB2248(v126, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
        sub_1D1CB2248(v124, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
        goto LABEL_46;
      }

      sub_1D1CB2248(v126, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      sub_1D1CB2248(v124, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      goto LABEL_84;
    case 0xAu:
      sub_1D1CB2110(v58, v30, type metadata accessor for StateSnapshot.UpdateType);
      v168 = *v30;
      v167 = v30[1];
      v169 = v207;
      if (swift_getEnumCaseMultiPayload() != 10)
      {

        goto LABEL_61;
      }

      v171 = *v169;
      v170 = v169[1];
      sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
      v172 = sub_1D1E684FC();

      if ((v172 & 1) == 0)
      {

        goto LABEL_84;
      }

      v75 = sub_1D177AE98(v167, v170);

LABEL_25:

      goto LABEL_46;
    case 0xBu:
      v206 = v58;
      sub_1D1CB2110(v58, v27, type metadata accessor for StateSnapshot.UpdateType);
      v63 = *v27;
      v64 = v27[8];
      v65 = v27[9];
      v67 = *(v27 + 2);
      v66 = *(v27 + 3);
      v68 = *(v27 + 4);
      v69 = v27[40];
      v70 = v207;
      if (swift_getEnumCaseMultiPayload() != 11)
      {

        v58 = v206;
        goto LABEL_62;
      }

      v71 = *v70;
      LODWORD(v205) = *(v70 + 8);
      LODWORD(v204) = *(v70 + 9);
      v72 = v70[2];
      v73 = v70[3];
      v202 = v70[4];
      v203 = v72;
      LODWORD(v207) = *(v70 + 40);
      sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
      v74 = sub_1D1E684FC();

      if (v74)
      {
        LOBYTE(v213) = v64;
        BYTE1(v213) = v65;
        v214 = v67;
        v215 = v66;
        v216 = v68;
        v217 = v69;
        LOBYTE(v208) = v205;
        BYTE1(v208) = v204;
        v209 = v203;
        v210 = v73;
        v211 = v202;
        v212 = v207;
        v75 = _s13HomeDataModel011AutoClimateC0C10ThermostatC24CleanEnergySettingConfigV2eeoiySbAG_AGtFZ_0(&v213, &v208);

        sub_1D1CB2248(v206, type metadata accessor for StateSnapshot.UpdateType);
        return v75 & 1;
      }

      goto LABEL_105;
    case 0xCu:
      v104 = v203;
      sub_1D1CB2110(v58, v203, type metadata accessor for StateSnapshot.UpdateType);
      v105 = *v104;
      v106 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20) + 48);
      v107 = v207;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        (*(v205 + 8))(v104 + v106, v204);
LABEL_61:

        goto LABEL_62;
      }

      v108 = *v107;
      v109 = v205;
      v110 = *(v205 + 32);
      v111 = v104 + v106;
      v112 = v193;
      v113 = v204;
      v110(v193, v111, v204);
      v114 = v107 + v106;
      v115 = v192;
      v110(v192, v114, v113);
      v116 = sub_1D1849C5C(v105, v108);

      if ((v116 & 1) == 0)
      {
        v179 = *(v109 + 8);
        v179(v115, v113);
        v179(v112, v113);
        goto LABEL_84;
      }

      v75 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v117 = *(v109 + 8);
      v117(v115, v113);
      v117(v112, v113);
LABEL_46:
      sub_1D1CB2248(v58, type metadata accessor for StateSnapshot.UpdateType);
      return v75 & 1;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_40;
      }

      goto LABEL_62;
    default:
      sub_1D1CB2110(v58, v53, type metadata accessor for StateSnapshot.UpdateType);
      v61 = *v53;
      v62 = v207;
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_62:
        sub_1D1741A30(v58, &qword_1EC64CF28, &qword_1D1EA2F68);
LABEL_107:
        v75 = 0;
        return v75 & 1;
      }

      v176 = *v62;
      if (v61)
      {
        if (v176)
        {
          sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
          v177 = v61;
          v178 = sub_1D1E684FC();

          if ((v178 & 1) == 0)
          {
LABEL_84:
            v180 = v58;
LABEL_106:
            sub_1D1CB2248(v180, type metadata accessor for StateSnapshot.UpdateType);
            goto LABEL_107;
          }

LABEL_40:
          v160 = v58;
          goto LABEL_41;
        }

        v176 = v61;
      }

      else if (!v176)
      {
        goto LABEL_40;
      }

      goto LABEL_84;
  }
}

uint64_t _s13HomeDataModel13StateSnapshotV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1D17A7400(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StateSnapshot(0);
  if ((static StaticHome.== infix(_:_:)(a1 + v4[5], a2 + v4[5]) & 1) == 0 || (sub_1D177B630(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0 || (sub_1D1850FD8(*(a1 + v4[7]), *(a2 + v4[7])) & 1) == 0 || (sub_1D1848AD4(*(a1 + v4[8]), *(a2 + v4[8])) & 1) == 0 || (sub_1D184F4FC(*(a1 + v4[9]), *(a2 + v4[9])) & 1) == 0 || (sub_1D184FAD4(*(a1 + v4[10]), *(a2 + v4[10])) & 1) == 0 || (sub_1D18500AC(*(a1 + v4[11]), *(a2 + v4[11])) & 1) == 0 || (sub_1D1850684(*(a1 + v4[12]), *(a2 + v4[12])) & 1) == 0 || (sub_1D18517B4(*(a1 + v4[13]), *(a2 + v4[13])) & 1) == 0 || (sub_1D1849684(*(a1 + v4[14]), *(a2 + v4[14])) & 1) == 0 || (sub_1D18490AC(*(a1 + v4[15]), *(a2 + v4[15])) & 1) == 0 || (sub_1D1851D8C(*(a1 + v4[16]), *(a2 + v4[16])) & 1) == 0 || (sub_1D177B670(*(a1 + v4[17]), *(a2 + v4[17])) & 1) == 0 || (sub_1D1852428(*(a1 + v4[18]), *(a2 + v4[18])) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[19];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_1D1852C94(v6, v7);
}

uint64_t sub_1D1CB796C(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v240 = a4;
  v241 = a1;
  v7 = sub_1D1E669FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v260 = &v236 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v257 = &v236 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v236 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v236 - v17;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v19 = *(*(v273 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v273);
  v22 = &v236 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v236 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v259 = &v236 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v236 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v269 = &v236 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v268 = &v236 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v243 = &v236 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v244 = &v236 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v246 = &v236 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v245 = &v236 - v42;
  v280 = type metadata accessor for StaticCameraProfile();
  v256 = *(v280 - 8);
  v43 = *(v256 + 64);
  v44 = MEMORY[0x1EEE9AC00](v280);
  v248 = &v236 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v278 = &v236 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v274 = &v236 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v275 = &v236 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v264 = &v236 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v263 = &v236 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v237 = &v236 - v57;
  MEMORY[0x1EEE9AC00](v56);
  v236 = &v236 - v58;
  v258 = a3;
  v59 = a3[1];
  v279 = a5;
  if (v59 >= 1)
  {
    v270 = (v8 + 48);
    v271 = (v8 + 56);
    v255 = (v8 + 32);
    v262 = (v8 + 8);
    swift_bridgeObjectRetain_n();
    v60 = 0;
    v61 = MEMORY[0x1E69E7CC0];
    v272 = v7;
    v238 = v16;
    v242 = v18;
    v267 = v22;
    v250 = v24;
    v265 = v31;
    v62 = v274;
    v63 = v275;
    while (1)
    {
      v249 = v61;
      if (v60 + 1 >= v59)
      {
        v73 = v60 + 1;
        v74 = v240;
        v75 = v266;
        goto LABEL_50;
      }

      v261 = v59;
      v64 = *v258;
      v59 = *(v256 + 72);
      v65 = *v258 + v59 * (v60 + 1);
      v66 = v236;
      sub_1D1CB2110(v65, v236, type metadata accessor for StaticCameraProfile);
      v277 = v64;
      v67 = v64 + v59 * v60;
      v68 = v237;
      sub_1D1CB2110(v67, v237, type metadata accessor for StaticCameraProfile);
      v69 = v266;
      LODWORD(v276) = sub_1D1D0C624(v66, v68, a5);
      v266 = v69;
      if (v69)
      {
        sub_1D1CB2248(v68, type metadata accessor for StaticCameraProfile);
        sub_1D1CB2248(v66, type metadata accessor for StaticCameraProfile);
        swift_bridgeObjectRelease_n();
      }

      sub_1D1CB2248(v68, type metadata accessor for StaticCameraProfile);
      sub_1D1CB2248(v66, type metadata accessor for StaticCameraProfile);
      v239 = v60;
      v70 = v60 + 2;
      v71 = v277 + v59 * (v60 + 2);
      v72 = v59;
      v277 = v59;
      while (1)
      {
        v73 = v261;
        if (v261 == v70)
        {
          break;
        }

        v76 = v263;
        sub_1D1CB2110(v71, v263, type metadata accessor for StaticCameraProfile);
        v77 = v264;
        sub_1D1CB2110(v65, v264, type metadata accessor for StaticCameraProfile);
        v78 = sub_1D18E4158(v76, a5);
        LOBYTE(v76) = v79;
        v80 = sub_1D18E4158(v77, a5);
        if ((v76 & 1) == 0)
        {
          if (v81)
          {
            v59 = 1;
            goto LABEL_10;
          }

          if (v78 != v80)
          {
            v59 = v78 < v80;
            goto LABEL_10;
          }

LABEL_18:
          v252 = v71;
          v253 = v65;
          v82 = v272;
          v83 = *v271;
          v84 = v245;
          v85 = v250;
          (*v271)(v245, 1, 1, v272);
          v86 = v246;
          v83(v246, 1, 1, v82);
          v87 = *(v273 + 48);
          v88 = v85;
          sub_1D1741A90(v84, v85, &qword_1EC642570, &qword_1D1E6C6A0);
          v254 = v87;
          sub_1D1741A90(v86, v85 + v87, &qword_1EC642570, &qword_1D1E6C6A0);
          v89 = *v270;
          if ((*v270)(v85, 1, v82) == 1)
          {
            v90 = v89(v85 + v254, 1, v82);
            v62 = v274;
            v65 = v253;
            v71 = v252;
            if (v90 != 1)
            {
              sub_1D1741A30(v88 + v254, &qword_1EC642570, &qword_1D1E6C6A0);
              sub_1D1741A30(v88, &qword_1EC642570, &qword_1D1E6C6A0);
              v59 = 0;
              v63 = v275;
              goto LABEL_10;
            }
          }

          else
          {
            v91 = v244;
            sub_1D1741C08(v85, v244, &qword_1EC642570, &qword_1D1E6C6A0);
            v92 = v89(v85 + v254, 1, v82);
            v65 = v253;
            v71 = v252;
            if (v92 == 1)
            {
              (*v262)(v91, v82);
              v93 = v250;
              sub_1D1741A30(&v250[v254], &qword_1EC642570, &qword_1D1E6C6A0);
              sub_1D1741A30(v93, &qword_1EC642570, &qword_1D1E6C6A0);
              v59 = 1;
LABEL_33:
              v62 = v274;
              v63 = v275;
              goto LABEL_10;
            }

            sub_1D1741C08(&v250[v254], v243, &qword_1EC642570, &qword_1D1E6C6A0);
            v94 = *v255;
            (*v255)(v242, v244, v82);
            v95 = v238;
            v94(v238, v243, v82);
            sub_1D1CB21E0(&qword_1EC642AC8, MEMORY[0x1E6969530]);
            v96 = v95;
            if ((sub_1D1E6775C() & 1) == 0)
            {
              v114 = v242;
              v59 = sub_1D1E6696C();
              v115 = v96;
              v116 = *v262;
              (*v262)(v115, v82);
              v116(v114, v82);
              v117 = v250;
              sub_1D1741A30(&v250[v254], &qword_1EC642570, &qword_1D1E6C6A0);
              sub_1D1741A30(v117, &qword_1EC642570, &qword_1D1E6C6A0);
              goto LABEL_33;
            }

            v97 = *v262;
            (*v262)(v95, v82);
            v97(v242, v82);
            v62 = v274;
            v88 = v250;
          }

          sub_1D1741A30(v88, &qword_1EC642AC0, &qword_1D1E6E810);
          v98 = *(v280 + 20);
          v99 = (v263 + v98);
          v100 = *(v263 + v98);
          v101 = *(v263 + v98 + 8);
          v102 = (v264 + v98);
          v103 = *v102;
          v104 = v102[1];
          if (*v99 != *v102 || v101 != v104)
          {
            v105 = *v99;
            v106 = v99[1];
            v107 = *v102;
            v108 = v102[1];
            if ((sub_1D1E6904C() & 1) == 0)
            {
              v283 = v100;
              v284 = v101;
              v281 = v103;
              v282 = v104;
              sub_1D17D8EF0();
              v59 = sub_1D1E685FC() == -1;
              v63 = v275;
              goto LABEL_10;
            }
          }

          v109 = sub_1D1E66A1C();
          v111 = v110;
          v112 = sub_1D1E66A1C();
          v63 = v275;
          if (v109 != v112 || v111 != v113)
          {
            v59 = sub_1D1E6904C();

            goto LABEL_10;
          }

          goto LABEL_9;
        }

        if (v81)
        {
          goto LABEL_18;
        }

LABEL_9:
        v59 = 0;
LABEL_10:
        sub_1D1CB2248(v264, type metadata accessor for StaticCameraProfile);
        sub_1D1CB2248(v263, type metadata accessor for StaticCameraProfile);
        ++v70;
        v72 = v277;
        v71 += v277;
        v65 += v277;
        if ((v276 ^ v59))
        {
          v73 = v70 - 1;
          break;
        }
      }

      v74 = v240;
      v75 = v266;
      v60 = v239;
      if ((v276 & 1) == 0)
      {
        goto LABEL_50;
      }

      if (v73 < v239)
      {
        goto LABEL_181;
      }

      if (v239 < v73)
      {
        v118 = v73;
        v59 = v72 * (v73 - 1);
        v119 = v73 * v72;
        v261 = v73;
        v120 = v239;
        v121 = v239 * v72;
        do
        {
          if (v120 != --v118)
          {
            v122 = *v258;
            if (!*v258)
            {
              goto LABEL_185;
            }

            v123 = v75;
            sub_1D1CB2178(v122 + v121, v248, type metadata accessor for StaticCameraProfile);
            if (v121 < v59 || v122 + v121 >= (v122 + v119))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v121 != v59)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1D1CB2178(v248, v122 + v59, type metadata accessor for StaticCameraProfile);
            v75 = v123;
            a5 = v279;
            v72 = v277;
          }

          ++v120;
          v59 -= v72;
          v119 -= v72;
          v121 += v72;
        }

        while (v120 < v118);
        v74 = v240;
        v63 = v275;
        v73 = v261;
        v60 = v239;
      }

LABEL_50:
      v124 = v258[1];
      if (v73 >= v124)
      {
        goto LABEL_59;
      }

      if (__OFSUB__(v73, v60))
      {
        goto LABEL_178;
      }

      if (v73 - v60 >= v74)
      {
LABEL_59:
        v126 = v73;
        if (v73 < v60)
        {
          goto LABEL_177;
        }

        goto LABEL_60;
      }

      if (__OFADD__(v60, v74))
      {
        goto LABEL_179;
      }

      if (v60 + v74 >= v124)
      {
        v125 = v258[1];
      }

      else
      {
        v125 = v60 + v74;
      }

      if (v125 < v60)
      {
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

      if (v73 == v125)
      {
        goto LABEL_59;
      }

      v266 = v75;
      v181 = *v258;
      v182 = *(v256 + 72);
      v183 = *v258 + v182 * (v73 - 1);
      v276 = -v182;
      v239 = v60;
      v184 = v60 - v73;
      v277 = v181;
      v247 = v182;
      v185 = v181 + v73 * v182;
      v251 = v125;
LABEL_114:
      v261 = v73;
      v252 = v185;
      v186 = v185;
      v253 = v184;
      v254 = v183;
      v187 = v183;
LABEL_115:
      sub_1D1CB2110(v186, v63, type metadata accessor for StaticCameraProfile);
      sub_1D1CB2110(v187, v62, type metadata accessor for StaticCameraProfile);
      v59 = sub_1D18E4158(v63, a5);
      v189 = v188;
      v190 = sub_1D18E4158(v62, a5);
      if ((v189 & 1) == 0)
      {
        break;
      }

      if ((v191 & 1) == 0)
      {
        goto LABEL_112;
      }

LABEL_120:
      v192 = v272;
      v193 = *v271;
      v194 = v268;
      (*v271)(v268, 1, 1, v272);
      v195 = v269;
      v193(v269, 1, 1, v192);
      v196 = *(v273 + 48);
      v197 = v194;
      v198 = v267;
      sub_1D1741A90(v197, v267, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A90(v195, v198 + v196, &qword_1EC642570, &qword_1D1E6C6A0);
      v199 = *v270;
      if ((*v270)(v198, 1, v192) != 1)
      {
        v200 = v265;
        sub_1D1741C08(v198, v265, &qword_1EC642570, &qword_1D1E6C6A0);
        if (v199(v198 + v196, 1, v192) == 1)
        {
          (*v262)(v200, v192);
          sub_1D1741A30(v198 + v196, &qword_1EC642570, &qword_1D1E6C6A0);
          sub_1D1741A30(v198, &qword_1EC642570, &qword_1D1E6C6A0);
          v62 = v274;
          v63 = v275;
          a5 = v279;
          goto LABEL_125;
        }

        sub_1D1741C08(v198 + v196, v259, &qword_1EC642570, &qword_1D1E6C6A0);
        v201 = *v255;
        v202 = v257;
        (*v255)(v257, v265, v192);
        v201(v260, v259, v192);
        v203 = v202;
        sub_1D1CB21E0(&qword_1EC642AC8, MEMORY[0x1E6969530]);
        v204 = v192;
        if (sub_1D1E6775C())
        {
          v205 = *v262;
          (*v262)(v260, v192);
          v205(v203, v192);
          goto LABEL_128;
        }

        v218 = v260;
        v59 = sub_1D1E6696C();
        v219 = v218;
        v220 = *v262;
        (*v262)(v219, v204);
        v220(v257, v204);
        a5 = v279;
        sub_1D1741A30(v198 + v196, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v198, &qword_1EC642570, &qword_1D1E6C6A0);
        v62 = v274;
        v63 = v275;
        goto LABEL_137;
      }

      if (v199(v198 + v196, 1, v192) != 1)
      {
        v59 = &qword_1D1E6C6A0;
        sub_1D1741A30(v198 + v196, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v198, &qword_1EC642570, &qword_1D1E6C6A0);
        v62 = v274;
        v63 = v275;
        goto LABEL_111;
      }

LABEL_128:
      sub_1D1741A30(v198, &qword_1EC642AC0, &qword_1D1E6E810);
      v206 = *(v280 + 20);
      v62 = v274;
      v63 = v275;
      v207 = *&v275[v206];
      v208 = *&v275[v206 + 8];
      v209 = &v274[v206];
      v210 = *v209;
      v211 = *(v209 + 1);
      if (v207 != *v209 || v208 != v211)
      {
        v212 = *v209;
        v213 = *(v209 + 1);
        if ((sub_1D1E6904C() & 1) == 0)
        {
          v283 = v207;
          v284 = v208;
          v281 = v210;
          v282 = v211;
          sub_1D17D8EF0();
          v59 = sub_1D1E685FC() == -1;
          a5 = v279;
          goto LABEL_137;
        }
      }

      v214 = sub_1D1E66A1C();
      v216 = v215;
      v59 = v62;
      if (v214 != sub_1D1E66A1C() || v216 != v217)
      {
        v59 = sub_1D1E6904C();

        a5 = v279;
        goto LABEL_137;
      }

LABEL_111:
      a5 = v279;
LABEL_112:
      sub_1D1CB2248(v62, type metadata accessor for StaticCameraProfile);
      sub_1D1CB2248(v63, type metadata accessor for StaticCameraProfile);
LABEL_113:
      v73 = v261 + 1;
      v183 = v254 + v247;
      v184 = v253 - 1;
      v185 = v252 + v247;
      v126 = v251;
      if (v261 + 1 != v251)
      {
        goto LABEL_114;
      }

      v75 = v266;
      v60 = v239;
      if (v251 < v239)
      {
        goto LABEL_177;
      }

LABEL_60:
      v266 = v75;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v61 = v249;
      }

      else
      {
        v61 = sub_1D177D070(0, *(v249 + 2) + 1, 1, v249);
      }

      v128 = *(v61 + 2);
      v127 = *(v61 + 3);
      v59 = v128 + 1;
      if (v128 >= v127 >> 1)
      {
        v61 = sub_1D177D070((v127 > 1), v128 + 1, 1, v61);
      }

      *(v61 + 2) = v59;
      v129 = &v61[16 * v128];
      *(v129 + 4) = v60;
      *(v129 + 5) = v126;
      v251 = v126;
      v60 = *v241;
      if (!*v241)
      {
        goto LABEL_187;
      }

      if (v128)
      {
        while (1)
        {
          v130 = v59 - 1;
          if (v59 >= 4)
          {
            break;
          }

          if (v59 == 3)
          {
            v131 = *(v61 + 4);
            v132 = *(v61 + 5);
            v141 = __OFSUB__(v132, v131);
            v133 = v132 - v131;
            v134 = v141;
LABEL_79:
            if (v134)
            {
              goto LABEL_166;
            }

            v147 = &v61[16 * v59];
            v149 = *v147;
            v148 = *(v147 + 1);
            v150 = __OFSUB__(v148, v149);
            v151 = v148 - v149;
            v152 = v150;
            if (v150)
            {
              goto LABEL_169;
            }

            v153 = &v61[16 * v130 + 32];
            v155 = *v153;
            v154 = *(v153 + 1);
            v141 = __OFSUB__(v154, v155);
            v156 = v154 - v155;
            if (v141)
            {
              goto LABEL_172;
            }

            if (__OFADD__(v151, v156))
            {
              goto LABEL_173;
            }

            if (v151 + v156 >= v133)
            {
              if (v133 < v156)
              {
                v130 = v59 - 2;
              }

              goto LABEL_100;
            }

            goto LABEL_93;
          }

          v157 = &v61[16 * v59];
          v159 = *v157;
          v158 = *(v157 + 1);
          v141 = __OFSUB__(v158, v159);
          v151 = v158 - v159;
          v152 = v141;
LABEL_93:
          if (v152)
          {
            goto LABEL_168;
          }

          v160 = &v61[16 * v130];
          v162 = *(v160 + 4);
          v161 = *(v160 + 5);
          v141 = __OFSUB__(v161, v162);
          v163 = v161 - v162;
          if (v141)
          {
            goto LABEL_171;
          }

          if (v163 < v151)
          {
            goto LABEL_3;
          }

LABEL_100:
          v168 = v130 - 1;
          if (v130 - 1 >= v59)
          {
            __break(1u);
LABEL_162:
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
            goto LABEL_180;
          }

          v169 = *v258;
          if (!*v258)
          {
            goto LABEL_184;
          }

          v170 = v61;
          v171 = *&v61[16 * v168 + 32];
          v172 = *&v61[16 * v130 + 40];
          v173 = *(v256 + 72);
          v174 = v169 + v173 * v171;
          v59 = v169 + v173 * *&v61[16 * v130 + 32];
          v175 = v169 + v173 * v172;
          v176 = v279;

          v177 = v174;
          v178 = v266;
          sub_1D1CB3338(v177, v59, v175, v60, v176);
          v266 = v178;
          if (v178)
          {
            swift_bridgeObjectRelease_n();
          }

          if (v172 < v171)
          {
            goto LABEL_162;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v179 = v170;
          }

          else
          {
            v179 = sub_1D1E0BE44(v170);
          }

          v62 = v274;
          if (v168 >= *(v179 + 2))
          {
            goto LABEL_163;
          }

          v180 = &v179[16 * v168];
          *(v180 + 4) = v171;
          *(v180 + 5) = v172;
          v285 = v179;
          sub_1D1E0BDB8(v130);
          v61 = v285;
          v59 = *(v285 + 16);
          a5 = v279;
          v63 = v275;
          if (v59 <= 1)
          {
            goto LABEL_3;
          }
        }

        v135 = &v61[16 * v59 + 32];
        v136 = *(v135 - 64);
        v137 = *(v135 - 56);
        v141 = __OFSUB__(v137, v136);
        v138 = v137 - v136;
        if (v141)
        {
          goto LABEL_164;
        }

        v140 = *(v135 - 48);
        v139 = *(v135 - 40);
        v141 = __OFSUB__(v139, v140);
        v133 = v139 - v140;
        v134 = v141;
        if (v141)
        {
          goto LABEL_165;
        }

        v142 = &v61[16 * v59];
        v144 = *v142;
        v143 = *(v142 + 1);
        v141 = __OFSUB__(v143, v144);
        v145 = v143 - v144;
        if (v141)
        {
          goto LABEL_167;
        }

        v141 = __OFADD__(v133, v145);
        v146 = v133 + v145;
        if (v141)
        {
          goto LABEL_170;
        }

        if (v146 >= v138)
        {
          v164 = &v61[16 * v130 + 32];
          v166 = *v164;
          v165 = *(v164 + 1);
          v141 = __OFSUB__(v165, v166);
          v167 = v165 - v166;
          if (v141)
          {
            goto LABEL_174;
          }

          if (v133 < v167)
          {
            v130 = v59 - 2;
          }

          goto LABEL_100;
        }

        goto LABEL_79;
      }

LABEL_3:
      v59 = v258[1];
      v60 = v251;
      if (v251 >= v59)
      {
        goto LABEL_149;
      }
    }

    if (v191)
    {
LABEL_125:
      sub_1D1CB2248(v62, type metadata accessor for StaticCameraProfile);
      sub_1D1CB2248(v63, type metadata accessor for StaticCameraProfile);
      goto LABEL_138;
    }

    if (v59 == v190)
    {
      goto LABEL_120;
    }

    v59 = v59 < v190;
LABEL_137:
    sub_1D1CB2248(v62, type metadata accessor for StaticCameraProfile);
    sub_1D1CB2248(v63, type metadata accessor for StaticCameraProfile);
    if ((v59 & 1) == 0)
    {
      goto LABEL_113;
    }

LABEL_138:
    if (v277)
    {
      v59 = type metadata accessor for StaticCameraProfile;
      v221 = v278;
      sub_1D1CB2178(v186, v278, type metadata accessor for StaticCameraProfile);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D1CB2178(v221, v187, type metadata accessor for StaticCameraProfile);
      v187 += v276;
      v186 += v276;
      if (__CFADD__(v184++, 1))
      {
        goto LABEL_113;
      }

      goto LABEL_115;
    }

    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_184:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_185:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_186:

    __break(1u);
LABEL_187:
    swift_bridgeObjectRelease_n();
    __break(1u);
    goto LABEL_188;
  }

  swift_bridgeObjectRetain_n();
  v61 = MEMORY[0x1E69E7CC0];
LABEL_149:
  v60 = *v241;
  if (*v241)
  {
    v59 = v61;
    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_182:
      v59 = sub_1D1E0BE44(v59);
    }

    v285 = v59;
    v224 = *(v59 + 16);
    if (v224 < 2)
    {
LABEL_159:

      return swift_bridgeObjectRelease_n();
    }

    while (1)
    {
      v225 = *v258;
      if (!*v258)
      {
        goto LABEL_186;
      }

      v226 = *(v59 + 16 * v224);
      v227 = v59;
      v228 = *(v59 + 16 * (v224 - 1) + 40);
      v229 = *(v256 + 72);
      v230 = v225 + v229 * v226;
      v59 = v225 + v229 * *(v59 + 16 * (v224 - 1) + 32);
      v231 = v225 + v229 * v228;
      v232 = v279;

      v233 = v230;
      v234 = v266;
      sub_1D1CB3338(v233, v59, v231, v60, v232);
      v266 = v234;
      if (v234)
      {
        goto LABEL_159;
      }

      if (v228 < v226)
      {
        goto LABEL_175;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v227 = sub_1D1E0BE44(v227);
      }

      if (v224 - 2 >= *(v227 + 2))
      {
        goto LABEL_176;
      }

      v235 = &v227[16 * v224];
      *v235 = v226;
      *(v235 + 1) = v228;
      v285 = v227;
      sub_1D1E0BDB8(v224 - 1);
      v59 = v285;
      v224 = *(v285 + 16);
      if (v224 <= 1)
      {
        goto LABEL_159;
      }
    }
  }

LABEL_188:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1D1CB928C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v39 = a5;
  v38 = type metadata accessor for StaticCameraProfile();
  v10 = *(*(v38 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v38);
  v37 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v19 = &v29 - v18;
  v31 = a2;
  if (a3 != a2)
  {
    v20 = *(v17 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = *a4;
    v30 = v20;
    v24 = v36 + v20 * a3;
LABEL_4:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    v25 = v21;
    while (1)
    {
      sub_1D1CB2110(v24, v19, type metadata accessor for StaticCameraProfile);
      sub_1D1CB2110(v25, v15, type metadata accessor for StaticCameraProfile);
      v26 = sub_1D1D0C624(v19, v15, v39);
      sub_1D1CB2248(v15, type metadata accessor for StaticCameraProfile);
      result = sub_1D1CB2248(v19, type metadata accessor for StaticCameraProfile);
      if (v5)
      {
        break;
      }

      if (v26)
      {
        if (!v36)
        {
          __break(1u);
          return result;
        }

        v27 = v37;
        sub_1D1CB2178(v24, v37, type metadata accessor for StaticCameraProfile);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1D1CB2178(v27, v25, type metadata accessor for StaticCameraProfile);
        v25 += v22;
        v24 += v22;
        if (!__CFADD__(v23++, 1))
        {
          continue;
        }
      }

      a3 = v35 + 1;
      v21 = v34 + v30;
      v23 = v33 - 1;
      v24 = v32 + v30;
      if (v35 + 1 != v31)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1D1CB94F8(void **a1, uint64_t a2)
{
  v4 = *(type metadata accessor for StaticCameraProfile() - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1D1E0BFB8(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_1D1CC6E9C(v8, a2, type metadata accessor for StaticCameraProfile, sub_1D1CB796C, sub_1D1CB928C);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D1CB961C(uint64_t a1, char a2, uint64_t *a3)
{
  v51 = a3;
  v5 = type metadata accessor for StaticActionSet();
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E66A7C();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643710, &unk_1D1EA2630);
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v47 = &v41 - v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    v45 = *(result + 48);
    v18 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v44 = *(v15 + 72);
    v48 = (v43 + 32);
    v42 = (v43 + 8);
    while (1)
    {
      v49 = v17;
      v20 = v47;
      sub_1D1741C08(v18, v47, &qword_1EC643710, &unk_1D1EA2630);
      v21 = *v48;
      v22 = v50;
      v23 = v9;
      (*v48)(v50, v20, v9);
      v24 = v8;
      sub_1D1CB2178(v20 + v45, v8, type metadata accessor for StaticActionSet);
      v25 = *v51;
      v27 = sub_1D1742188(v22);
      v28 = *(v25 + 16);
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v31 = v26;
      if (*(v25 + 24) >= v30)
      {
        if ((a2 & 1) == 0)
        {
          sub_1D1734C84();
        }
      }

      else
      {
        v32 = v51;
        sub_1D1721F14(v30, a2 & 1);
        v33 = *v32;
        v34 = sub_1D1742188(v50);
        if ((v31 & 1) != (v35 & 1))
        {
          goto LABEL_17;
        }

        v27 = v34;
      }

      v36 = *v51;
      if (v31)
      {
        v9 = v23;
        (*v42)(v50, v23);
        v19 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1CC76B8(v24, v19, type metadata accessor for StaticActionSet);
      }

      else
      {
        v36[(v27 >> 6) + 8] |= 1 << v27;
        v9 = v23;
        v21((v36[6] + *(v43 + 72) * v27), v50, v23);
        v37 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1CB2178(v24, v37, type metadata accessor for StaticActionSet);
        v38 = v36[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_16;
        }

        v36[2] = v40;
      }

      v18 += v44;
      a2 = 1;
      v17 = v49 - 1;
      if (v49 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1D1E690FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1CB9A20(uint64_t a1, char a2, uint64_t *a3)
{
  v51 = a3;
  v5 = type metadata accessor for StaticRoom(0);
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E66A7C();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643740, &qword_1D1E71E98);
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v47 = &v41 - v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    v45 = *(result + 48);
    v18 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v44 = *(v15 + 72);
    v48 = (v43 + 32);
    v42 = (v43 + 8);
    while (1)
    {
      v49 = v17;
      v20 = v47;
      sub_1D1741C08(v18, v47, &qword_1EC643740, &qword_1D1E71E98);
      v21 = *v48;
      v22 = v50;
      v23 = v9;
      (*v48)(v50, v20, v9);
      v24 = v8;
      sub_1D1CB2178(v20 + v45, v8, type metadata accessor for StaticRoom);
      v25 = *v51;
      v27 = sub_1D1742188(v22);
      v28 = *(v25 + 16);
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v31 = v26;
      if (*(v25 + 24) >= v30)
      {
        if ((a2 & 1) == 0)
        {
          sub_1D1735608();
        }
      }

      else
      {
        v32 = v51;
        sub_1D1722CF4(v30, a2 & 1);
        v33 = *v32;
        v34 = sub_1D1742188(v50);
        if ((v31 & 1) != (v35 & 1))
        {
          goto LABEL_17;
        }

        v27 = v34;
      }

      v36 = *v51;
      if (v31)
      {
        v9 = v23;
        (*v42)(v50, v23);
        v19 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1CC76B8(v24, v19, type metadata accessor for StaticRoom);
      }

      else
      {
        v36[(v27 >> 6) + 8] |= 1 << v27;
        v9 = v23;
        v21((v36[6] + *(v43 + 72) * v27), v50, v23);
        v37 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1CB2178(v24, v37, type metadata accessor for StaticRoom);
        v38 = v36[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_16;
        }

        v36[2] = v40;
      }

      v18 += v44;
      a2 = 1;
      v17 = v49 - 1;
      if (v49 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1D1E690FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1CB9E24(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v43 = a2;
  v53 = a4;
  v45 = a1;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v57 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v42 - v10;
  v11 = type metadata accessor for StaticAccessory(0);
  v51 = *(v11 - 8);
  v52 = v11;
  v12 = *(v51 + 64);
  result = MEMORY[0x1EEE9AC00](v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v54 = a3;
  v17 = *(a3 + 64);
  v46 = a3 + 64;
  v47 = 0;
  v18 = 1 << *(a3 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v56 = v6 + 16;
  v44 = v6;
  v59 = (v6 + 8);
  v49 = v21;
  v50 = v15;
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v55 = (v20 - 1) & v20;
LABEL_13:
    v25 = v22 | (v16 << 6);
    v26 = v54[7];
    v27 = *(v51 + 72);
    v48 = v25;
    sub_1D1CB2110(v26 + v27 * v25, v15, type metadata accessor for StaticAccessory);
    v28 = *&v15[*(v52 + 52)];
    v29 = [v53 uniqueIdentifier];
    sub_1D1E66A5C();

    v60 = v28;
    if (*(v28 + 16) && (v30 = v60, v31 = *(v60 + 40), sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8]), v32 = sub_1D1E676DC(), v33 = -1 << *(v30 + 32), v34 = v32 & ~v33, v58 = v30 + 56, ((*(v30 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
    {
      v35 = ~v33;
      v36 = *(v44 + 72);
      v37 = *(v44 + 16);
      while (1)
      {
        v38 = v57;
        v37(v57, *(v60 + 48) + v36 * v34, v5);
        sub_1D1CB21E0(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v39 = sub_1D1E6775C();
        v40 = *v59;
        (*v59)(v38, v5);
        if (v39)
        {
          break;
        }

        v34 = (v34 + 1) & v35;
        if (((*(v58 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v40(v61, v5);
      v15 = v50;
      result = sub_1D1CB2248(v50, type metadata accessor for StaticAccessory);
      *(v45 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      v41 = __OFADD__(v47++, 1);
      v21 = v49;
      v20 = v55;
      if (v41)
      {
        __break(1u);
        return sub_1D188CC38(v45, v43, v47, v54);
      }
    }

    else
    {
LABEL_5:
      (*v59)(v61, v5);
      v15 = v50;
      result = sub_1D1CB2248(v50, type metadata accessor for StaticAccessory);
      v21 = v49;
      v20 = v55;
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= v21)
    {
      return sub_1D188CC38(v45, v43, v47, v54);
    }

    v24 = *(v46 + 8 * v16);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v55 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D1CBA2C4(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1D1CBAA28(a1, a2, sub_1D1CB9E24, sub_1D1CB9E24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1CBA338(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v68 = a4;
  v57 = a2;
  v58 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645498, &qword_1D1E79A28);
  v5 = *(*(v67 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v67);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v56 - v9;
  v11 = type metadata accessor for StaticActionSet();
  v64 = *(v11 - 8);
  v65 = v11;
  v12 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D1E66A7C();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v78 = &v56 - v20;
  result = MEMORY[0x1EEE9AC00](v19);
  v71 = &v56 - v23;
  v24 = 0;
  v69 = a3;
  v25 = *(a3 + 64);
  v59 = a3 + 64;
  v60 = 0;
  v26 = 1 << *(a3 + 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & v25;
  v29 = (v26 + 63) >> 6;
  v62 = v29;
  v63 = v22;
  v76 = (v22 + 8);
  v77 = v22 + 16;
  v73 = v8;
  v66 = v10;
  while (v28)
  {
    v31 = __clz(__rbit64(v28));
    v70 = (v28 - 1) & v28;
LABEL_13:
    v34 = v31 | (v24 << 6);
    v35 = v69;
    v36 = v69[6];
    v75 = *(v63 + 72);
    v37 = *(v63 + 16);
    v38 = v71;
    v37(v71, v36 + v75 * v34, v14);
    v39 = v35[7];
    v40 = *(v64 + 72);
    v61 = v34;
    v41 = v39 + v40 * v34;
    v42 = v72;
    sub_1D1CB2110(v41, v72, type metadata accessor for StaticActionSet);
    v74 = v37;
    v37(v10, v38, v14);
    v43 = v67;
    sub_1D1CB2110(v42, &v10[*(v67 + 48)], type metadata accessor for StaticActionSet);
    v44 = v73;
    sub_1D1741C08(v10, v73, &qword_1EC645498, &qword_1D1E79A28);
    v45 = v44 + *(v43 + 48);
    v46 = *(v45 + *(v65 + 44));

    sub_1D1CB2248(v45, type metadata accessor for StaticActionSet);
    v47 = [v68 uniqueIdentifier];
    sub_1D1E66A5C();

    if (*(v46 + 16) && (v48 = *(v46 + 40), sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8]), v49 = sub_1D1E676DC(), v50 = -1 << *(v46 + 32), v51 = v49 & ~v50, ((*(v46 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) != 0))
    {
      v52 = ~v50;
      while (1)
      {
        v74(v18, *(v46 + 48) + v51 * v75, v14);
        sub_1D1CB21E0(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v53 = sub_1D1E6775C();
        v54 = *v76;
        (*v76)(v18, v14);
        if (v53)
        {
          break;
        }

        v51 = (v51 + 1) & v52;
        if (((*(v46 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v54(v78, v14);
      v10 = v66;
      sub_1D1741A30(v66, &qword_1EC645498, &qword_1D1E79A28);
      v54(v73, v14);
      sub_1D1CB2248(v72, type metadata accessor for StaticActionSet);
      result = (v54)(v71, v14);
      *(v58 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
      v55 = __OFADD__(v60++, 1);
      v29 = v62;
      v28 = v70;
      if (v55)
      {
        __break(1u);
        return sub_1D188C7D0(v58, v57, v60, v69);
      }
    }

    else
    {
LABEL_5:

      v30 = *v76;
      (*v76)(v78, v14);
      v10 = v66;
      sub_1D1741A30(v66, &qword_1EC645498, &qword_1D1E79A28);
      v30(v73, v14);
      sub_1D1CB2248(v72, type metadata accessor for StaticActionSet);
      result = (v30)(v71, v14);
      v29 = v62;
      v28 = v70;
    }
  }

  v32 = v24;
  while (1)
  {
    v24 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v24 >= v29)
    {
      return sub_1D188C7D0(v58, v57, v60, v69);
    }

    v33 = *(v59 + 8 * v24);
    ++v32;
    if (v33)
    {
      v31 = __clz(__rbit64(v33));
      v70 = (v33 - 1) & v33;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D1CBA9B4(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1D1CBAA28(a1, a2, sub_1D1CBA338, sub_1D1CBA338);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1D1CBAA28(uint64_t a1, void *a2, uint64_t (*a3)(char *, unint64_t, uint64_t, id), uint64_t (*a4)(void *, uint64_t, uint64_t, id))
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;
  v12 = a2;
  v13 = v12;
  if (v9 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v18 = swift_slowAlloc();
      v19 = v13;
      v15 = sub_1D1CB54A0(v18, v10, a1, v19, a4);
      MEMORY[0x1D3893640](v18, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v12);
  bzero(v20 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v10);
  v14 = v13;
  v15 = a3(v20 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a1, v14);

  if (v4)
  {
    swift_willThrow();
  }

LABEL_6:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t sub_1D1CBABEC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v68 = a4;
  v57 = a2;
  v58 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645488, &qword_1D1EA2FA0);
  v5 = *(*(v67 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v67);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v56 - v9;
  v11 = type metadata accessor for StaticCameraProfile();
  v64 = *(v11 - 8);
  v65 = v11;
  v12 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D1E66A7C();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v78 = &v56 - v20;
  result = MEMORY[0x1EEE9AC00](v19);
  v71 = &v56 - v23;
  v24 = 0;
  v69 = a3;
  v25 = *(a3 + 64);
  v59 = a3 + 64;
  v60 = 0;
  v26 = 1 << *(a3 + 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & v25;
  v29 = (v26 + 63) >> 6;
  v62 = v29;
  v63 = v22;
  v76 = (v22 + 8);
  v77 = v22 + 16;
  v73 = v8;
  v66 = v10;
  while (v28)
  {
    v31 = __clz(__rbit64(v28));
    v70 = (v28 - 1) & v28;
LABEL_13:
    v34 = v31 | (v24 << 6);
    v35 = v69;
    v36 = v69[6];
    v75 = *(v63 + 72);
    v37 = *(v63 + 16);
    v38 = v71;
    v37(v71, v36 + v75 * v34, v14);
    v39 = v35[7];
    v40 = *(v64 + 72);
    v61 = v34;
    v41 = v39 + v40 * v34;
    v42 = v72;
    sub_1D1CB2110(v41, v72, type metadata accessor for StaticCameraProfile);
    v74 = v37;
    v37(v10, v38, v14);
    v43 = v67;
    sub_1D1CB2110(v42, &v10[*(v67 + 48)], type metadata accessor for StaticCameraProfile);
    v44 = v73;
    sub_1D1741C08(v10, v73, &qword_1EC645488, &qword_1D1EA2FA0);
    v45 = v44 + *(v43 + 48);
    v46 = *(v45 + *(v65 + 24));

    sub_1D1CB2248(v45, type metadata accessor for StaticCameraProfile);
    v47 = [v68 uniqueIdentifier];
    sub_1D1E66A5C();

    if (*(v46 + 16) && (v48 = *(v46 + 40), sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8]), v49 = sub_1D1E676DC(), v50 = -1 << *(v46 + 32), v51 = v49 & ~v50, ((*(v46 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) != 0))
    {
      v52 = ~v50;
      while (1)
      {
        v74(v18, *(v46 + 48) + v51 * v75, v14);
        sub_1D1CB21E0(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v53 = sub_1D1E6775C();
        v54 = *v76;
        (*v76)(v18, v14);
        if (v53)
        {
          break;
        }

        v51 = (v51 + 1) & v52;
        if (((*(v46 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v54(v78, v14);
      v10 = v66;
      sub_1D1741A30(v66, &qword_1EC645488, &qword_1D1EA2FA0);
      v54(v73, v14);
      sub_1D1CB2248(v72, type metadata accessor for StaticCameraProfile);
      result = (v54)(v71, v14);
      *(v58 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
      v55 = __OFADD__(v60++, 1);
      v29 = v62;
      v28 = v70;
      if (v55)
      {
        __break(1u);
        return sub_1D188C368(v58, v57, v60, v69);
      }
    }

    else
    {
LABEL_5:

      v30 = *v76;
      (*v76)(v78, v14);
      v10 = v66;
      sub_1D1741A30(v66, &qword_1EC645488, &qword_1D1EA2FA0);
      v30(v73, v14);
      sub_1D1CB2248(v72, type metadata accessor for StaticCameraProfile);
      result = (v30)(v71, v14);
      v29 = v62;
      v28 = v70;
    }
  }

  v32 = v24;
  while (1)
  {
    v24 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v24 >= v29)
    {
      return sub_1D188C368(v58, v57, v60, v69);
    }

    v33 = *(v59 + 8 * v24);
    ++v32;
    if (v33)
    {
      v31 = __clz(__rbit64(v33));
      v70 = (v33 - 1) & v33;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D1CBB268(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1D1CBAA28(a1, a2, sub_1D1CBABEC, sub_1D1CBABEC);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1CBB2DC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v43 = a2;
  v53 = a4;
  v45 = a1;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v57 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v42 - v10;
  v11 = type metadata accessor for StaticMediaSystem();
  v51 = *(v11 - 8);
  v52 = v11;
  v12 = *(v51 + 64);
  result = MEMORY[0x1EEE9AC00](v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v54 = a3;
  v17 = *(a3 + 64);
  v46 = a3 + 64;
  v47 = 0;
  v18 = 1 << *(a3 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v56 = v6 + 16;
  v44 = v6;
  v59 = (v6 + 8);
  v49 = v21;
  v50 = v15;
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v55 = (v20 - 1) & v20;
LABEL_13:
    v25 = v22 | (v16 << 6);
    v26 = v54[7];
    v27 = *(v51 + 72);
    v48 = v25;
    sub_1D1CB2110(v26 + v27 * v25, v15, type metadata accessor for StaticMediaSystem);
    v28 = *&v15[*(v52 + 84)];
    v29 = [v53 uniqueIdentifier];
    sub_1D1E66A5C();

    v60 = v28;
    if (*(v28 + 16) && (v30 = v60, v31 = *(v60 + 40), sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8]), v32 = sub_1D1E676DC(), v33 = -1 << *(v30 + 32), v34 = v32 & ~v33, v58 = v30 + 56, ((*(v30 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
    {
      v35 = ~v33;
      v36 = *(v44 + 72);
      v37 = *(v44 + 16);
      while (1)
      {
        v38 = v57;
        v37(v57, *(v60 + 48) + v36 * v34, v5);
        sub_1D1CB21E0(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v39 = sub_1D1E6775C();
        v40 = *v59;
        (*v59)(v38, v5);
        if (v39)
        {
          break;
        }

        v34 = (v34 + 1) & v35;
        if (((*(v58 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v40(v61, v5);
      v15 = v50;
      result = sub_1D1CB2248(v50, type metadata accessor for StaticMediaSystem);
      *(v45 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      v41 = __OFADD__(v47++, 1);
      v21 = v49;
      v20 = v55;
      if (v41)
      {
        __break(1u);
        return sub_1D188BF00(v45, v43, v47, v54);
      }
    }

    else
    {
LABEL_5:
      (*v59)(v61, v5);
      v15 = v50;
      result = sub_1D1CB2248(v50, type metadata accessor for StaticMediaSystem);
      v21 = v49;
      v20 = v55;
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= v21)
    {
      return sub_1D188BF00(v45, v43, v47, v54);
    }

    v24 = *(v46 + 8 * v16);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v55 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D1CBB77C(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1D1CBAA28(a1, a2, sub_1D1CBB2DC, sub_1D1CBB2DC);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1CBB7F0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v43 = a2;
  v53 = a4;
  v45 = a1;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v57 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v42 - v10;
  v11 = type metadata accessor for StaticMediaProfile();
  v51 = *(v11 - 8);
  v52 = v11;
  v12 = *(v51 + 64);
  result = MEMORY[0x1EEE9AC00](v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v54 = a3;
  v17 = *(a3 + 64);
  v46 = a3 + 64;
  v47 = 0;
  v18 = 1 << *(a3 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v56 = v6 + 16;
  v44 = v6;
  v59 = (v6 + 8);
  v49 = v21;
  v50 = v15;
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v55 = (v20 - 1) & v20;
LABEL_13:
    v25 = v22 | (v16 << 6);
    v26 = v54[7];
    v27 = *(v51 + 72);
    v48 = v25;
    sub_1D1CB2110(v26 + v27 * v25, v15, type metadata accessor for StaticMediaProfile);
    v28 = *&v15[*(v52 + 24)];
    v29 = [v53 uniqueIdentifier];
    sub_1D1E66A5C();

    v60 = v28;
    if (*(v28 + 16) && (v30 = v60, v31 = *(v60 + 40), sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8]), v32 = sub_1D1E676DC(), v33 = -1 << *(v30 + 32), v34 = v32 & ~v33, v58 = v30 + 56, ((*(v30 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
    {
      v35 = ~v33;
      v36 = *(v44 + 72);
      v37 = *(v44 + 16);
      while (1)
      {
        v38 = v57;
        v37(v57, *(v60 + 48) + v36 * v34, v5);
        sub_1D1CB21E0(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v39 = sub_1D1E6775C();
        v40 = *v59;
        (*v59)(v38, v5);
        if (v39)
        {
          break;
        }

        v34 = (v34 + 1) & v35;
        if (((*(v58 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v40(v61, v5);
      v15 = v50;
      result = sub_1D1CB2248(v50, type metadata accessor for StaticMediaProfile);
      *(v45 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      v41 = __OFADD__(v47++, 1);
      v21 = v49;
      v20 = v55;
      if (v41)
      {
        __break(1u);
        return sub_1D188BA98(v45, v43, v47, v54);
      }
    }

    else
    {
LABEL_5:
      (*v59)(v61, v5);
      v15 = v50;
      result = sub_1D1CB2248(v50, type metadata accessor for StaticMediaProfile);
      v21 = v49;
      v20 = v55;
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= v21)
    {
      return sub_1D188BA98(v45, v43, v47, v54);
    }

    v24 = *(v46 + 8 * v16);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v55 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D1CBBC90(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1D1CBAA28(a1, a2, sub_1D1CBB7F0, sub_1D1CBB7F0);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1CBBD04(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v68 = a4;
  v57 = a2;
  v58 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645458, &qword_1D1E799E8);
  v5 = *(*(v67 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v67);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v56 - v9;
  v11 = type metadata accessor for StaticServiceGroup();
  v64 = *(v11 - 8);
  v65 = v11;
  v12 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D1E66A7C();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v78 = &v56 - v20;
  result = MEMORY[0x1EEE9AC00](v19);
  v71 = &v56 - v23;
  v24 = 0;
  v69 = a3;
  v25 = *(a3 + 64);
  v59 = a3 + 64;
  v60 = 0;
  v26 = 1 << *(a3 + 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & v25;
  v29 = (v26 + 63) >> 6;
  v62 = v29;
  v63 = v22;
  v76 = (v22 + 8);
  v77 = v22 + 16;
  v73 = v8;
  v66 = v10;
  while (v28)
  {
    v31 = __clz(__rbit64(v28));
    v70 = (v28 - 1) & v28;
LABEL_13:
    v34 = v31 | (v24 << 6);
    v35 = v69;
    v36 = v69[6];
    v75 = *(v63 + 72);
    v37 = *(v63 + 16);
    v38 = v71;
    v37(v71, v36 + v75 * v34, v14);
    v39 = v35[7];
    v40 = *(v64 + 72);
    v61 = v34;
    v41 = v39 + v40 * v34;
    v42 = v72;
    sub_1D1CB2110(v41, v72, type metadata accessor for StaticServiceGroup);
    v74 = v37;
    v37(v10, v38, v14);
    v43 = v67;
    sub_1D1CB2110(v42, &v10[*(v67 + 48)], type metadata accessor for StaticServiceGroup);
    v44 = v73;
    sub_1D1741C08(v10, v73, &qword_1EC645458, &qword_1D1E799E8);
    v45 = v44 + *(v43 + 48);
    v46 = *(v45 + *(v65 + 36));

    sub_1D1CB2248(v45, type metadata accessor for StaticServiceGroup);
    v47 = [v68 uniqueIdentifier];
    sub_1D1E66A5C();

    if (*(v46 + 16) && (v48 = *(v46 + 40), sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8]), v49 = sub_1D1E676DC(), v50 = -1 << *(v46 + 32), v51 = v49 & ~v50, ((*(v46 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) != 0))
    {
      v52 = ~v50;
      while (1)
      {
        v74(v18, *(v46 + 48) + v51 * v75, v14);
        sub_1D1CB21E0(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v53 = sub_1D1E6775C();
        v54 = *v76;
        (*v76)(v18, v14);
        if (v53)
        {
          break;
        }

        v51 = (v51 + 1) & v52;
        if (((*(v46 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v54(v78, v14);
      v10 = v66;
      sub_1D1741A30(v66, &qword_1EC645458, &qword_1D1E799E8);
      v54(v73, v14);
      sub_1D1CB2248(v72, type metadata accessor for StaticServiceGroup);
      result = (v54)(v71, v14);
      *(v58 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
      v55 = __OFADD__(v60++, 1);
      v29 = v62;
      v28 = v70;
      if (v55)
      {
        __break(1u);
        return sub_1D188B630(v58, v57, v60, v69);
      }
    }

    else
    {
LABEL_5:

      v30 = *v76;
      (*v76)(v78, v14);
      v10 = v66;
      sub_1D1741A30(v66, &qword_1EC645458, &qword_1D1E799E8);
      v30(v73, v14);
      sub_1D1CB2248(v72, type metadata accessor for StaticServiceGroup);
      result = (v30)(v71, v14);
      v29 = v62;
      v28 = v70;
    }
  }

  v32 = v24;
  while (1)
  {
    v24 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v24 >= v29)
    {
      return sub_1D188B630(v58, v57, v60, v69);
    }

    v33 = *(v59 + 8 * v24);
    ++v32;
    if (v33)
    {
      v31 = __clz(__rbit64(v33));
      v70 = (v33 - 1) & v33;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D1CBC380(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1D1CBAA28(a1, a2, sub_1D1CBBD04, sub_1D1CBBD04);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1CBC3F4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v68 = a4;
  v57 = a2;
  v58 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v5 = *(*(v67 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v67);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v56 - v9;
  v11 = type metadata accessor for StaticService(0);
  v64 = *(v11 - 8);
  v65 = v11;
  v12 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D1E66A7C();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v78 = &v56 - v20;
  result = MEMORY[0x1EEE9AC00](v19);
  v71 = &v56 - v23;
  v24 = 0;
  v69 = a3;
  v25 = *(a3 + 64);
  v59 = a3 + 64;
  v60 = 0;
  v26 = 1 << *(a3 + 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & v25;
  v29 = (v26 + 63) >> 6;
  v62 = v29;
  v63 = v22;
  v76 = (v22 + 8);
  v77 = v22 + 16;
  v73 = v8;
  v66 = v10;
  while (v28)
  {
    v31 = __clz(__rbit64(v28));
    v70 = (v28 - 1) & v28;
LABEL_13:
    v34 = v31 | (v24 << 6);
    v35 = v69;
    v36 = v69[6];
    v75 = *(v63 + 72);
    v37 = *(v63 + 16);
    v38 = v71;
    v37(v71, v36 + v75 * v34, v14);
    v39 = v35[7];
    v40 = *(v64 + 72);
    v61 = v34;
    v41 = v39 + v40 * v34;
    v42 = v72;
    sub_1D1CB2110(v41, v72, type metadata accessor for StaticService);
    v74 = v37;
    v37(v10, v38, v14);
    v43 = v67;
    sub_1D1CB2110(v42, &v10[*(v67 + 48)], type metadata accessor for StaticService);
    v44 = v73;
    sub_1D1741C08(v10, v73, &qword_1EC642DB0, &unk_1D1E6F360);
    v45 = v44 + *(v43 + 48);
    v46 = *(v45 + *(v65 + 76));

    sub_1D1CB2248(v45, type metadata accessor for StaticService);
    v47 = [v68 uniqueIdentifier];
    sub_1D1E66A5C();

    if (*(v46 + 16) && (v48 = *(v46 + 40), sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8]), v49 = sub_1D1E676DC(), v50 = -1 << *(v46 + 32), v51 = v49 & ~v50, ((*(v46 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) != 0))
    {
      v52 = ~v50;
      while (1)
      {
        v74(v18, *(v46 + 48) + v51 * v75, v14);
        sub_1D1CB21E0(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v53 = sub_1D1E6775C();
        v54 = *v76;
        (*v76)(v18, v14);
        if (v53)
        {
          break;
        }

        v51 = (v51 + 1) & v52;
        if (((*(v46 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v54(v78, v14);
      v10 = v66;
      sub_1D1741A30(v66, &qword_1EC642DB0, &unk_1D1E6F360);
      v54(v73, v14);
      sub_1D1CB2248(v72, type metadata accessor for StaticService);
      result = (v54)(v71, v14);
      *(v58 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
      v55 = __OFADD__(v60++, 1);
      v29 = v62;
      v28 = v70;
      if (v55)
      {
        __break(1u);
        return sub_1D188B1C8(v58, v57, v60, v69);
      }
    }

    else
    {
LABEL_5:

      v30 = *v76;
      (*v76)(v78, v14);
      v10 = v66;
      sub_1D1741A30(v66, &qword_1EC642DB0, &unk_1D1E6F360);
      v30(v73, v14);
      sub_1D1CB2248(v72, type metadata accessor for StaticService);
      result = (v30)(v71, v14);
      v29 = v62;
      v28 = v70;
    }
  }

  v32 = v24;
  while (1)
  {
    v24 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v24 >= v29)
    {
      return sub_1D188B1C8(v58, v57, v60, v69);
    }

    v33 = *(v59 + 8 * v24);
    ++v32;
    if (v33)
    {
      v31 = __clz(__rbit64(v33));
      v70 = (v33 - 1) & v33;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D1CBCA70(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1D1CBAA28(a1, a2, sub_1D1CBC3F4, sub_1D1CBC3F4);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1CBCAE4(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = type metadata accessor for StaticAccessory(0);
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v40 - v8;
  v9 = sub_1D1E66A7C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v55 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v40 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A80, &qword_1D1E6E7D0);
  result = sub_1D1E68BAC();
  v16 = v9;
  v17 = result;
  v18 = 0;
  v50 = a1;
  v19 = *(a1 + 64);
  v42 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v41 = (v20 + 63) >> 6;
  v52 = v10;
  v43 = result + 64;
  v47 = result;
  v44 = v10 + 32;
  v45 = v10 + 16;
  if (v22)
  {
    while (1)
    {
      v23 = __clz(__rbit64(v22));
      v53 = (v22 - 1) & v22;
LABEL_10:
      v26 = v23 | (v18 << 6);
      v27 = v50;
      v28 = v52;
      v29 = *(v52 + 72) * v26;
      v30 = v46;
      (*(v52 + 16))(v46, *(v50 + 48) + v29, v16);
      v31 = *(v27 + 56);
      v32 = v26;
      v54 = *(v49 + 72) * v26;
      v33 = v16;
      v34 = v48;
      sub_1D1CB2110(v31 + v54, v48, type metadata accessor for StaticAccessory);
      v35 = *(v28 + 32);
      v35(v55, v30, v33);
      v36 = v56;
      sub_1D1CA60CC(v34, v51, v7);
      v56 = v36;
      if (v36)
      {
        break;
      }

      sub_1D1CB2248(v34, type metadata accessor for StaticAccessory);
      *(v43 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      v17 = v47;
      v35((*(v47 + 48) + v29), v55, v33);
      result = sub_1D1CB2178(v7, *(v17 + 56) + v54, type metadata accessor for StaticAccessory);
      v37 = *(v17 + 16);
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_17;
      }

      v16 = v33;
      *(v17 + 16) = v39;
      v22 = v53;
      if (!v53)
      {
        goto LABEL_5;
      }
    }

    v17 = v47;

    (*(v52 + 8))(v55, v33);
    sub_1D1CB2248(v34, type metadata accessor for StaticAccessory);
    return v17;
  }

  else
  {
LABEL_5:
    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v41)
      {
        return v17;
      }

      v25 = *(v42 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v53 = (v25 - 1) & v25;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1CBCEEC(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v3 = type metadata accessor for StaticAccessory(0);
  v60 = *(v3 - 8);
  v4 = *(v60 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v52 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v51 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v51 - v10;
  v68 = sub_1D1E66A7C();
  v11 = *(v68 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v68);
  v67 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v51 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A80, &qword_1D1E6E7D0);
  result = sub_1D1E68BAC();
  v17 = result;
  v18 = 0;
  v61 = a1;
  v21 = *(a1 + 64);
  v20 = a1 + 64;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v55 = v11 + 16;
  v56 = result;
  v58 = v11;
  v59 = v9;
  v25 = v11 + 32;
  v53 = (v22 + 63) >> 6;
  v54 = result + 64;
  v26 = v62;
  if (v24)
  {
    while (1)
    {
      v27 = v25;
      v28 = __clz(__rbit64(v24));
      v63 = (v24 - 1) & v24;
      v31 = v28 | (v18 << 6);
      v32 = v61;
      v33 = *(v61 + 48);
      v34 = v57;
      v35 = v58;
      v36 = *(v58 + 16);
      v65 = *(v58 + 72) * v31;
      v37 = v68;
      v36(v57, v33 + v65, v68);
      v38 = *(v32 + 56);
      v39 = *(v60 + 72);
      v64 = v39 * v31;
      sub_1D1CB2110(v38 + v39 * v31, v26, type metadata accessor for StaticAccessory);
      v40 = *(v35 + 32);
      v41 = v37;
      v25 = v27;
      v40(v67, v34, v41);
      if (!*(v66 + 16))
      {
        goto LABEL_13;
      }

LABEL_10:
      v42 = sub_1D1742188(v26);
      if (v43)
      {
        v44 = *(v66 + 56) + v42 * v39;
        v45 = v52;
        sub_1D1CB2110(v44, v52, type metadata accessor for StaticAccessory);
        v46 = v45;
        v47 = v59;
        sub_1D1CB2178(v46, v59, type metadata accessor for StaticAccessory);
      }

      else
      {
LABEL_13:
        v47 = v59;
        sub_1D1CB2110(v26, v59, type metadata accessor for StaticAccessory);
      }

      v17 = v56;
      sub_1D1CB2248(v26, type metadata accessor for StaticAccessory);
      *(v54 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      v40((v17[6] + v65), v67, v68);
      result = sub_1D1CB2178(v47, v17[7] + v64, type metadata accessor for StaticAccessory);
      v48 = v17[2];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        break;
      }

      v17[2] = v50;
      v24 = v63;
      v26 = v62;
      if (!v63)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v29 = v18;
    while (1)
    {
      v18 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v18 >= v53)
      {
        return v17;
      }

      v30 = *(v20 + 8 * v18);
      ++v29;
      if (v30)
      {
        v27 = v25;
        v28 = __clz(__rbit64(v30));
        v63 = (v30 - 1) & v30;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1CBD344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v52 = a3;
  v4 = type metadata accessor for StaticRoom(0);
  v49 = *(v4 - 8);
  v5 = *(v49 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v41 - v9;
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v56 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v41 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B18, &qword_1D1E6E860);
  result = sub_1D1E68BAC();
  v17 = v10;
  v18 = result;
  v19 = 0;
  v50 = a1;
  v20 = *(a1 + 64);
  v42 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v41 = (v21 + 63) >> 6;
  v53 = v11;
  v43 = result + 64;
  v47 = result;
  v44 = v11 + 32;
  v45 = v11 + 16;
  if (v23)
  {
    while (1)
    {
      v24 = __clz(__rbit64(v23));
      v54 = (v23 - 1) & v23;
LABEL_10:
      v27 = v24 | (v19 << 6);
      v28 = v50;
      v29 = v53;
      v30 = *(v53 + 72) * v27;
      v31 = v46;
      (*(v53 + 16))(v46, *(v50 + 48) + v30, v17);
      v32 = *(v28 + 56);
      v33 = v27;
      v55 = *(v49 + 72) * v27;
      v34 = v17;
      v35 = v48;
      sub_1D1CB2110(v32 + v55, v48, type metadata accessor for StaticRoom);
      v36 = *(v29 + 32);
      v36(v56, v31, v34);
      v37 = v57;
      sub_1D1CA772C(v35, v51, v52, v8);
      v57 = v37;
      if (v37)
      {
        break;
      }

      sub_1D1CB2248(v35, type metadata accessor for StaticRoom);
      *(v43 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      v18 = v47;
      v36((*(v47 + 48) + v30), v56, v34);
      result = sub_1D1CB2178(v8, *(v18 + 56) + v55, type metadata accessor for StaticRoom);
      v38 = *(v18 + 16);
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_17;
      }

      v17 = v34;
      *(v18 + 16) = v40;
      v23 = v54;
      if (!v54)
      {
        goto LABEL_5;
      }
    }

    v18 = v47;

    (*(v53 + 8))(v56, v34);
    sub_1D1CB2248(v35, type metadata accessor for StaticRoom);
    return v18;
  }

  else
  {
LABEL_5:
    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v19 >= v41)
      {
        return v18;
      }

      v26 = *(v42 + 8 * v19);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v54 = (v26 - 1) & v26;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1CBD774(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for StaticMatterDevice();
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1D1E66A7C();
  v13 = *(v49 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CF50, &unk_1D1EA2FA8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v45 - v19;
  v21 = -1 << *(a1 + 32);
  v22 = ~v21;
  v23 = *(a1 + 64);
  v24 = -v21;
  v50 = a1;
  v51 = a1 + 64;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v52 = v22;
  v53 = 0;
  v54 = v25 & v23;
  v55 = a2;
  v56 = a3;
  v26 = (v13 + 32);
  v46 = (v13 + 8);
  v47 = v13;

  v45[1] = a3;

  while (1)
  {
    sub_1D1ABF514(v20);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646170, &unk_1D1E7E720);
    if ((*(*(v27 - 8) + 48))(v20, 1, v27) == 1)
    {
      sub_1D1716918();
    }

    v28 = *(v27 + 48);
    v29 = *v26;
    (*v26)(v16, v20, v49);
    sub_1D1CB2178(&v20[v28], v57, type metadata accessor for StaticMatterDevice);
    v30 = *a5;
    v32 = sub_1D1742188(v16);
    v33 = v30[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      break;
    }

    v36 = v31;
    if (v30[3] >= v35)
    {
      if (a4)
      {
        v40 = *a5;
        if ((v31 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1D1736F7C();
        v40 = *a5;
        if ((v36 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      (*v46)(v16, v49);
      sub_1D1CC76B8(v57, v40[7] + *(v48 + 72) * v32, type metadata accessor for StaticMatterDevice);
      a4 = 1;
    }

    else
    {
      sub_1D1725208(v35, a4 & 1);
      v37 = *a5;
      v38 = sub_1D1742188(v16);
      if ((v36 & 1) != (v39 & 1))
      {
        goto LABEL_21;
      }

      v32 = v38;
      v40 = *a5;
      if (v36)
      {
        goto LABEL_5;
      }

LABEL_14:
      v40[(v32 >> 6) + 8] |= 1 << v32;
      v29((v40[6] + *(v47 + 72) * v32), v16, v49);
      sub_1D1CB2178(v57, v40[7] + *(v48 + 72) * v32, type metadata accessor for StaticMatterDevice);
      v41 = v40[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_20;
      }

      v40[2] = v43;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

unint64_t sub_1D1CBDB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437E0, &unk_1D1E96B80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (v26 - v7);
  v9 = sub_1D1E66A7C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v26 - v16;
  sub_1D1741C08(a1, v26 - v16, &unk_1EC649E30, &unk_1D1E91250);
  v18 = type metadata accessor for StateSnapshot(0);
  if ((*(*(v18 - 8) + 48))(v17, 1, v18) == 1)
  {
    sub_1D1741A30(v17, &unk_1EC649E30, &unk_1D1E91250);
    v19 = sub_1D18D5FAC(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v20 = *&v17[*(v18 + 32)];

    sub_1D1CB2248(v17, type metadata accessor for StateSnapshot);
    v19 = sub_1D1C919E4(v20);
  }

  sub_1D1741C08(a3, v8, &qword_1EC6437E0, &unk_1D1E96B80);
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  if ((*(*(updated - 8) + 48))(v8, 1, updated) == 1)
  {
    sub_1D1741A30(v8, &qword_1EC6437E0, &unk_1D1E96B80);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    v22 = *v8;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20);
    (*(v10 + 32))(v13, v8 + *(v23 + 48), v9);
    if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v19;
      sub_1D1CBD774(v22, sub_1D1CB5290, 0, isUniquelyReferenced_nonNull_native, &v27);

      (*(v10 + 8))(v13, v9);
      return v27;
    }

    else
    {
      (*(v10 + 8))(v13, v9);
    }
  }

  else
  {
    sub_1D1CB2248(v8, type metadata accessor for StateSnapshot.UpdateType);
  }

  return v19;
}

uint64_t sub_1D1CBDF6C(uint64_t a1, char a2, uint64_t *a3)
{
  v51 = a3;
  v5 = type metadata accessor for StaticMediaSystem();
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E66A7C();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643768, &qword_1D1E71EC0);
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v47 = &v41 - v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    v45 = *(result + 48);
    v18 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v44 = *(v15 + 72);
    v48 = (v43 + 32);
    v42 = (v43 + 8);
    while (1)
    {
      v49 = v17;
      v20 = v47;
      sub_1D1741C08(v18, v47, &qword_1EC643768, &qword_1D1E71EC0);
      v21 = *v48;
      v22 = v50;
      v23 = v9;
      (*v48)(v50, v20, v9);
      v24 = v8;
      sub_1D1CB2178(v20 + v45, v8, type metadata accessor for StaticMediaSystem);
      v25 = *v51;
      v27 = sub_1D1742188(v22);
      v28 = *(v25 + 16);
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v31 = v26;
      if (*(v25 + 24) >= v30)
      {
        if ((a2 & 1) == 0)
        {
          sub_1D1735C60();
        }
      }

      else
      {
        v32 = v51;
        sub_1D1723634(v30, a2 & 1);
        v33 = *v32;
        v34 = sub_1D1742188(v50);
        if ((v31 & 1) != (v35 & 1))
        {
          goto LABEL_17;
        }

        v27 = v34;
      }

      v36 = *v51;
      if (v31)
      {
        v9 = v23;
        (*v42)(v50, v23);
        v19 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1CC76B8(v24, v19, type metadata accessor for StaticMediaSystem);
      }

      else
      {
        v36[(v27 >> 6) + 8] |= 1 << v27;
        v9 = v23;
        v21((v36[6] + *(v43 + 72) * v27), v50, v23);
        v37 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1CB2178(v24, v37, type metadata accessor for StaticMediaSystem);
        v38 = v36[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_16;
        }

        v36[2] = v40;
      }

      v18 += v44;
      a2 = 1;
      v17 = v49 - 1;
      if (v49 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1D1E690FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1CBE398(uint64_t a1, char a2, uint64_t *a3)
{
  v51 = a3;
  v5 = type metadata accessor for StaticMediaProfile();
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E66A7C();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643750, &unk_1D1E7E6B0);
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v47 = &v41 - v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    v45 = *(result + 48);
    v18 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v44 = *(v15 + 72);
    v48 = (v43 + 32);
    v42 = (v43 + 8);
    while (1)
    {
      v49 = v17;
      v20 = v47;
      sub_1D1741C08(v18, v47, &qword_1EC643750, &unk_1D1E7E6B0);
      v21 = *v48;
      v22 = v50;
      v23 = v9;
      (*v48)(v50, v20, v9);
      v24 = v8;
      sub_1D1CB2178(v20 + v45, v8, type metadata accessor for StaticMediaProfile);
      v25 = *v51;
      v27 = sub_1D1742188(v22);
      v28 = *(v25 + 16);
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v31 = v26;
      if (*(v25 + 24) >= v30)
      {
        if ((a2 & 1) == 0)
        {
          sub_1D1735F8C();
        }
      }

      else
      {
        v32 = v51;
        sub_1D1723AD4(v30, a2 & 1);
        v33 = *v32;
        v34 = sub_1D1742188(v50);
        if ((v31 & 1) != (v35 & 1))
        {
          goto LABEL_17;
        }

        v27 = v34;
      }

      v36 = *v51;
      if (v31)
      {
        v9 = v23;
        (*v42)(v50, v23);
        v19 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1CC76B8(v24, v19, type metadata accessor for StaticMediaProfile);
      }

      else
      {
        v36[(v27 >> 6) + 8] |= 1 << v27;
        v9 = v23;
        v21((v36[6] + *(v43 + 72) * v27), v50, v23);
        v37 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1CB2178(v24, v37, type metadata accessor for StaticMediaProfile);
        v38 = v36[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_16;
        }

        v36[2] = v40;
      }

      v18 += v44;
      a2 = 1;
      v17 = v49 - 1;
      if (v49 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1D1E690FC();
    __break(1u);
  }

  return result;
}

unint64_t sub_1D1CBE7D0()
{
  result = qword_1EC64CCC0;
  if (!qword_1EC64CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CCC0);
  }

  return result;
}

unint64_t sub_1D1CBE824()
{
  result = qword_1EC64CCD8;
  if (!qword_1EC64CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CCD8);
  }

  return result;
}

unint64_t sub_1D1CBE878()
{
  result = qword_1EC64CD00;
  if (!qword_1EC64CD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64CCF8, &unk_1D1EA2670);
    sub_1D1CB21E0(&qword_1EE07B258, MEMORY[0x1E69695A8]);
    sub_1D1CB21E0(&qword_1EC64CD08, type metadata accessor for StaticZone);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CD00);
  }

  return result;
}

unint64_t sub_1D1CBE964()
{
  result = qword_1EC64CD18;
  if (!qword_1EC64CD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64CD10, &qword_1D1EA2680);
    sub_1D1CB21E0(&qword_1EE07B258, MEMORY[0x1E69695A8]);
    sub_1D1CB21E0(&qword_1EC64C060, type metadata accessor for StaticActionSet);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CD18);
  }

  return result;
}

unint64_t sub_1D1CBEA50()
{
  result = qword_1EC64CD28;
  if (!qword_1EC64CD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64CD20, &qword_1D1EA2688);
    sub_1D1CB21E0(&qword_1EE07B258, MEMORY[0x1E69695A8]);
    sub_1D1CB21E0(&qword_1EC64B9C8, type metadata accessor for StaticCameraProfile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CD28);
  }

  return result;
}

unint64_t sub_1D1CBEB3C()
{
  result = qword_1EC64CD38;
  if (!qword_1EC64CD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64CD30, &qword_1D1EA2690);
    sub_1D1CB21E0(&qword_1EE07B258, MEMORY[0x1E69695A8]);
    sub_1D1CB21E0(&qword_1EC64C058, type metadata accessor for StaticMediaSystem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CD38);
  }

  return result;
}

unint64_t sub_1D1CBEC28()
{
  result = qword_1EC64CD48;
  if (!qword_1EC64CD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64CD40, &qword_1D1EA2698);
    sub_1D1CB21E0(&qword_1EE07B258, MEMORY[0x1E69695A8]);
    sub_1D1CB21E0(&qword_1EC64C050, type metadata accessor for StaticMediaProfile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CD48);
  }

  return result;
}

unint64_t sub_1D1CBED14()
{
  result = qword_1EC64CD58;
  if (!qword_1EC64CD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64CD50, &qword_1D1EA26A0);
    sub_1D1CB21E0(&qword_1EE07B258, MEMORY[0x1E69695A8]);
    sub_1D1CB21E0(&qword_1EC6448A0, type metadata accessor for StaticRoom);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CD58);
  }

  return result;
}

unint64_t sub_1D1CBEE00()
{
  result = qword_1EC64CD68;
  if (!qword_1EC64CD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64CD60, &qword_1D1EA26A8);
    sub_1D1CB21E0(&qword_1EE07B258, MEMORY[0x1E69695A8]);
    sub_1D1CB21E0(&qword_1EC64CD70, type metadata accessor for StaticUser);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CD68);
  }

  return result;
}

uint64_t sub_1D1CBEEEC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64CD78, &qword_1D1EA26B0);
    sub_1D1CB21E0(a2, type metadata accessor for StaticUserActionPrediction);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1CBEF88()
{
  result = qword_1EC64CD98;
  if (!qword_1EC64CD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64CD90, &qword_1D1EA26B8);
    sub_1D1CB21E0(&qword_1EE07B258, MEMORY[0x1E69695A8]);
    sub_1D1CB21E0(&qword_1EC64CDA0, type metadata accessor for StaticHH2Update);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CD98);
  }

  return result;
}

unint64_t sub_1D1CBF074()
{
  result = qword_1EC64CDB0;
  if (!qword_1EC64CDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64CDA8, &qword_1D1EA26C0);
    sub_1D1CB21E0(&qword_1EE07B258, MEMORY[0x1E69695A8]);
    sub_1D1CB21E0(&qword_1EC64CDB8, type metadata accessor for StaticResident);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CDB0);
  }

  return result;
}

uint64_t sub_1D1CBF160(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64CCC8, &qword_1D1EA2660);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1CBF1D8()
{
  result = qword_1EC64CDD0;
  if (!qword_1EC64CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CDD0);
  }

  return result;
}

uint64_t sub_1D1CBF22C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64CCE8, &qword_1D1EA2668);
    sub_1D1CB21E0(a2, type metadata accessor for StaticHome);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1CBF2C8()
{
  result = qword_1EC64CDE8;
  if (!qword_1EC64CDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64CCF8, &unk_1D1EA2670);
    sub_1D1CB21E0(&qword_1EC644B20, MEMORY[0x1E69695A8]);
    sub_1D1CB21E0(&qword_1EC64CDF0, type metadata accessor for StaticZone);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CDE8);
  }

  return result;
}

unint64_t sub_1D1CBF3B4()
{
  result = qword_1EC64CDF8;
  if (!qword_1EC64CDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64CD10, &qword_1D1EA2680);
    sub_1D1CB21E0(&qword_1EC644B20, MEMORY[0x1E69695A8]);
    sub_1D1CB21E0(&qword_1EC64BFF0, type metadata accessor for StaticActionSet);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CDF8);
  }

  return result;
}

unint64_t sub_1D1CBF4A0()
{
  result = qword_1EC64CE00;
  if (!qword_1EC64CE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64CD20, &qword_1D1EA2688);
    sub_1D1CB21E0(&qword_1EC644B20, MEMORY[0x1E69695A8]);
    sub_1D1CB21E0(&qword_1EC64B9C0, type metadata accessor for StaticCameraProfile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CE00);
  }

  return result;
}

unint64_t sub_1D1CBF58C()
{
  result = qword_1EC64CE08;
  if (!qword_1EC64CE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64CD30, &qword_1D1EA2690);
    sub_1D1CB21E0(&qword_1EC644B20, MEMORY[0x1E69695A8]);
    sub_1D1CB21E0(&qword_1EC64BFD8, type metadata accessor for StaticMediaSystem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CE08);
  }

  return result;
}

unint64_t sub_1D1CBF678()
{
  result = qword_1EC64CE10;
  if (!qword_1EC64CE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64CD40, &qword_1D1EA2698);
    sub_1D1CB21E0(&qword_1EC644B20, MEMORY[0x1E69695A8]);
    sub_1D1CB21E0(&qword_1EC64BFC0, type metadata accessor for StaticMediaProfile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CE10);
  }

  return result;
}

unint64_t sub_1D1CBF764()
{
  result = qword_1EC64CE18;
  if (!qword_1EC64CE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64CD50, &qword_1D1EA26A0);
    sub_1D1CB21E0(&qword_1EC644B20, MEMORY[0x1E69695A8]);
    sub_1D1CB21E0(&qword_1EC6448B8, type metadata accessor for StaticRoom);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CE18);
  }

  return result;
}

unint64_t sub_1D1CBF850()
{
  result = qword_1EC64CE20;
  if (!qword_1EC64CE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64CD60, &qword_1D1EA26A8);
    sub_1D1CB21E0(&qword_1EC644B20, MEMORY[0x1E69695A8]);
    sub_1D1CB21E0(&qword_1EC64CE28, type metadata accessor for StaticUser);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CE20);
  }

  return result;
}

unint64_t sub_1D1CBF93C()
{
  result = qword_1EC64CE40;
  if (!qword_1EC64CE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64CD90, &qword_1D1EA26B8);
    sub_1D1CB21E0(&qword_1EC644B20, MEMORY[0x1E69695A8]);
    sub_1D1CB21E0(&qword_1EC64CE48, type metadata accessor for StaticHH2Update);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CE40);
  }

  return result;
}

unint64_t sub_1D1CBFA28()
{
  result = qword_1EC64CE50;
  if (!qword_1EC64CE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64CDA8, &qword_1D1EA26C0);
    sub_1D1CB21E0(&qword_1EC644B20, MEMORY[0x1E69695A8]);
    sub_1D1CB21E0(&qword_1EC64CE58, type metadata accessor for StaticResident);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CE50);
  }

  return result;
}

unint64_t sub_1D1CBFB14()
{
  result = qword_1EC64CE68;
  if (!qword_1EC64CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CE68);
  }

  return result;
}

uint64_t sub_1D1CBFB68(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1D1E6873C();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_1D1E6873C();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1D1CB5400(result);

  return sub_1D1D6614C(v4, v2, 0);
}

uint64_t sub_1D1CBFC40(uint64_t a1, char a2, uint64_t *a3)
{
  v51 = a3;
  v5 = type metadata accessor for StaticService(0);
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E66A7C();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40);
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v47 = &v41 - v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    v45 = *(result + 48);
    v18 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v44 = *(v15 + 72);
    v48 = (v43 + 32);
    v42 = (v43 + 8);
    while (1)
    {
      v49 = v17;
      v20 = v47;
      sub_1D1741C08(v18, v47, &qword_1EC6436E8, &unk_1D1E71E40);
      v21 = *v48;
      v22 = v50;
      v23 = v9;
      (*v48)(v50, v20, v9);
      v24 = v8;
      sub_1D1CB2178(v20 + v45, v8, type metadata accessor for StaticService);
      v25 = *v51;
      v27 = sub_1D1742188(v22);
      v28 = *(v25 + 16);
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v31 = v26;
      if (*(v25 + 24) >= v30)
      {
        if ((a2 & 1) == 0)
        {
          sub_1D1735934();
        }
      }

      else
      {
        v32 = v51;
        sub_1D1723194(v30, a2 & 1);
        v33 = *v32;
        v34 = sub_1D1742188(v50);
        if ((v31 & 1) != (v35 & 1))
        {
          goto LABEL_17;
        }

        v27 = v34;
      }

      v36 = *v51;
      if (v31)
      {
        v9 = v23;
        (*v42)(v50, v23);
        v19 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1CC76B8(v24, v19, type metadata accessor for StaticService);
      }

      else
      {
        v36[(v27 >> 6) + 8] |= 1 << v27;
        v9 = v23;
        v21((v36[6] + *(v43 + 72) * v27), v50, v23);
        v37 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1CB2178(v24, v37, type metadata accessor for StaticService);
        v38 = v36[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_16;
        }

        v36[2] = v40;
      }

      v18 += v44;
      a2 = 1;
      v17 = v49 - 1;
      if (v49 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1D1E690FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1CC0044(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617265766F63 && a2 == 0xE900000000000073;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F48636974617473 && a2 == 0xEA0000000000656DLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC8050 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC8070 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D1EC8090 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D1EC80B0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D1EC80D0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D1EC80F0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D1EC8110 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC8130 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D1EC8150 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D1EC6190 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC8170 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D1EC8190 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D1EC81B0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D1EC81D0 == a2)
  {

    return 15;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_1D1CC0584(unint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, int64_t a5)
{
  v199 = a4;
  v200 = a1;
  v7 = sub_1D1E669FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v193 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v205 = &v193 - v13;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v14 = *(*(v223 - 8) + 64);
  MEMORY[0x1EEE9AC00](v223);
  v220 = &v193 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v213 = &v193 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v193 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v222 = &v193 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v221 = &v193 - v25;
  v26 = type metadata accessor for StaticActionSet();
  v214 = *(v26 - 8);
  v27 = *(v214 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v201 = &v193 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v230 = &v193 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v227 = &v193 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v233 = &v193 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v232 = &v193 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v39 = MEMORY[0x1EEE9AC00](v38);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v197 = &v193 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v215 = a3;
  v45 = a3[1];
  if (v45 < 1)
  {
    swift_bridgeObjectRetain_n();
    v47 = MEMORY[0x1E69E7CC0];
LABEL_136:
    v233 = *v200;
    if (v233)
    {
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v226;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_170;
      }

      goto LABEL_138;
    }

    goto LABEL_179;
  }

  v195 = &v193 - v42;
  v194 = v44;
  v206 = v43;
  v212 = v22;
  v217 = (v8 + 48);
  v218 = (v8 + 56);
  v203 = (v8 + 32);
  v211 = (v8 + 8);
  swift_bridgeObjectRetain_n();
  v46 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  v231 = a5;
  v219 = v7;
  v204 = v12;
  v225 = v26;
  v48 = v232;
  while (1)
  {
    a5 = v46;
    v49 = v46 + 1;
    if (v49 >= v45)
    {
      v64 = v49;
    }

    else
    {
      v198 = v47;
      v50 = *v215;
      v51 = *(v214 + 72);
      v52 = *v215 + v51 * v49;
      v53 = v195;
      sub_1D1CB2110(v52, v195, type metadata accessor for StaticActionSet);
      v54 = v197;
      sub_1D1CB2110(v50 + v51 * a5, v197, type metadata accessor for StaticActionSet);
      v55 = v226;
      LODWORD(v228) = sub_1D1D0DF40(v53, v54, v231);
      v226 = v55;
      if (v55)
      {
        sub_1D1CB2248(v54, type metadata accessor for StaticActionSet);
        sub_1D1CB2248(v53, type metadata accessor for StaticActionSet);
        goto LABEL_149;
      }

      v216 = v45;
      sub_1D1CB2248(v54, type metadata accessor for StaticActionSet);
      sub_1D1CB2248(v53, type metadata accessor for StaticActionSet);
      v196 = a5;
      v56 = a5 + 2;
      v57 = v50 + v51 * (a5 + 2);
      v58 = v194;
      v59 = v51;
      v229 = v51;
      v45 = v228;
      while (v216 != v56)
      {
        sub_1D1CB2110(v57, v58, type metadata accessor for StaticActionSet);
        v60 = v206;
        sub_1D1CB2110(v52, v206, type metadata accessor for StaticActionSet);
        v61 = v226;
        v62 = sub_1D1D0DF40(v58, v60, v231);
        v226 = v61;
        if (v61)
        {
          sub_1D1CB2248(v60, type metadata accessor for StaticActionSet);
          sub_1D1CB2248(v58, type metadata accessor for StaticActionSet);
LABEL_149:
          swift_bridgeObjectRelease_n();
        }

        v63 = v62;
        sub_1D1CB2248(v60, type metadata accessor for StaticActionSet);
        sub_1D1CB2248(v58, type metadata accessor for StaticActionSet);
        ++v56;
        v59 = v229;
        v57 += v229;
        v52 += v229;
        if ((v45 ^ v63))
        {
          v64 = v56 - 1;
          goto LABEL_13;
        }
      }

      v64 = v216;
LABEL_13:
      v48 = v232;
      a5 = v196;
      if ((v45 & 1) == 0)
      {
        goto LABEL_26;
      }

      if (v64 < v196)
      {
        goto LABEL_173;
      }

      if (v196 < v64)
      {
        v65 = v59 * (v64 - 1);
        v66 = v64 * v59;
        v67 = v64;
        v68 = v196;
        v69 = v196 * v59;
        do
        {
          if (v68 != --v67)
          {
            v45 = *v215;
            if (!*v215)
            {
              goto LABEL_177;
            }

            sub_1D1CB2178(v45 + v69, v201, type metadata accessor for StaticActionSet);
            if (v69 < v65 || v45 + v69 >= v45 + v66)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v69 != v65)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1D1CB2178(v201, v45 + v65, type metadata accessor for StaticActionSet);
            v59 = v229;
          }

          ++v68;
          v65 -= v59;
          v66 -= v59;
          v69 += v59;
        }

        while (v68 < v67);
        v47 = v198;
        v48 = v232;
        a5 = v196;
      }

      else
      {
LABEL_26:
        v47 = v198;
      }
    }

    v70 = v215[1];
    if (v64 >= v70)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v64, a5))
    {
      goto LABEL_169;
    }

    if (v64 - a5 >= v199)
    {
LABEL_37:
      v72 = v64;
      if (v64 < a5)
      {
        goto LABEL_168;
      }

      goto LABEL_38;
    }

    if (__OFADD__(a5, v199))
    {
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_175:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_176:

      __break(1u);
LABEL_177:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_178:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_179:
      result = swift_bridgeObjectRelease_n();
      __break(1u);
      return result;
    }

    if (a5 + v199 >= v70)
    {
      v71 = v215[1];
    }

    else
    {
      v71 = a5 + v199;
    }

    if (v71 < a5)
    {
      goto LABEL_172;
    }

    if (v64 == v71)
    {
      goto LABEL_37;
    }

    v198 = v47;
    v128 = *v215;
    v129 = *(v214 + 72);
    v130 = *v215 + v129 * (v64 - 1);
    v228 = -v129;
    v196 = a5;
    v131 = a5 - v64;
    v229 = v128;
    v202 = v129;
    v132 = v128 + v64 * v129;
    v207 = v71;
    while (2)
    {
      v216 = v64;
      v208 = v132;
      v209 = v131;
      v133 = v131;
      v210 = v130;
      v134 = v130;
      while (1)
      {
        sub_1D1CB2110(v132, v48, type metadata accessor for StaticActionSet);
        v45 = v233;
        sub_1D1CB2110(v134, v233, type metadata accessor for StaticActionSet);
        v135 = v231;
        v136 = sub_1D18E4158(v48, v231);
        v138 = v137;
        v139 = sub_1D18E4158(v45, v135);
        if (v138)
        {
          if ((v140 & 1) == 0)
          {
            goto LABEL_88;
          }
        }

        else
        {
          if (v140)
          {
            goto LABEL_115;
          }

          v141 = v136 < v139;
          if (v136 != v139)
          {
            goto LABEL_110;
          }
        }

        v45 = v227;
        sub_1D1CB2110(v233, v227, type metadata accessor for StaticActionSet);
        v142 = *(v48 + *(v26 + 24)) == 7 ? 4 : *(v48 + *(v26 + 24));
        v143 = sub_1D18E4248(v142, &unk_1F4D660C0);
        v145 = v144;
        v146 = *(v45 + *(v26 + 24)) == 7 ? 4 : *(v45 + *(v26 + 24));
        v147 = sub_1D18E4248(v146, &unk_1F4D660C0);
        v149 = v148;
        sub_1D1CB2248(v45, type metadata accessor for StaticActionSet);
        if (v145)
        {
          v48 = v232;
          if ((v149 & 1) == 0)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v48 = v232;
          if (v149)
          {
            goto LABEL_115;
          }

          v141 = v143 < v147;
          if (v143 != v147)
          {
LABEL_110:
            v159 = v141;
            goto LABEL_127;
          }
        }

        v150 = v219;
        v151 = *v218;
        v152 = v221;
        (*v218)(v221, 1, 1, v219);
        v153 = v222;
        v151(v222, 1, 1, v150);
        v154 = *(v223 + 48);
        v155 = v152;
        v156 = v220;
        v45 = &qword_1EC642570;
        sub_1D1741A90(v155, v220, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A90(v153, v156 + v154, &qword_1EC642570, &qword_1D1E6C6A0);
        v157 = *v217;
        if ((*v217)(v156, 1, v150) == 1)
        {
          break;
        }

        v45 = v212;
        sub_1D1741C08(v156, v212, &qword_1EC642570, &qword_1D1E6C6A0);
        v224 = v154;
        if (v157(v156 + v154, 1, v150) != 1)
        {
          sub_1D1741C08(v156 + v224, v213, &qword_1EC642570, &qword_1D1E6C6A0);
          v160 = *v203;
          v161 = v205;
          (*v203)(v205, v45, v150);
          v45 = v161;
          v162 = v156;
          v163 = v204;
          v160(v204, v213, v150);
          sub_1D1CB21E0(&qword_1EC642AC8, MEMORY[0x1E6969530]);
          if (sub_1D1E6775C())
          {
            v164 = *v211;
            (*v211)(v163, v150);
            v164(v45, v150);
            v156 = v162;
            v48 = v232;
            goto LABEL_118;
          }

          v159 = sub_1D1E6696C();
          v177 = v163;
          v178 = *v211;
          (*v211)(v177, v150);
          v178(v45, v150);
          sub_1D1741A30(v162 + v224, &qword_1EC642570, &qword_1D1E6C6A0);
          sub_1D1741A30(v162, &qword_1EC642570, &qword_1D1E6C6A0);
          v26 = v225;
LABEL_126:
          v48 = v232;
LABEL_127:
          sub_1D1CB2248(v233, type metadata accessor for StaticActionSet);
          sub_1D1CB2248(v48, type metadata accessor for StaticActionSet);
          if ((v159 & 1) == 0)
          {
            goto LABEL_89;
          }

          goto LABEL_128;
        }

        (*v211)(v45, v150);
        sub_1D1741A30(v156 + v224, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v156, &qword_1EC642570, &qword_1D1E6C6A0);
        v26 = v225;
        v48 = v232;
LABEL_115:
        sub_1D1CB2248(v233, type metadata accessor for StaticActionSet);
        sub_1D1CB2248(v48, type metadata accessor for StaticActionSet);
LABEL_128:
        if (!v229)
        {
          goto LABEL_174;
        }

        v179 = v230;
        sub_1D1CB2178(v132, v230, type metadata accessor for StaticActionSet);
        swift_arrayInitWithTakeFrontToBack();
        sub_1D1CB2178(v179, v134, type metadata accessor for StaticActionSet);
        v134 += v228;
        v132 += v228;
        if (__CFADD__(v133++, 1))
        {
          goto LABEL_89;
        }
      }

      v158 = v157(v156 + v154, 1, v150);
      v48 = v232;
      if (v158 != 1)
      {
        sub_1D1741A30(v156 + v154, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v156, &qword_1EC642570, &qword_1D1E6C6A0);
        v26 = v225;
        goto LABEL_88;
      }

LABEL_118:
      sub_1D1741A30(v156, &qword_1EC642AC0, &qword_1D1E6E810);
      v26 = v225;
      v165 = *(v225 + 20);
      v166 = *(v48 + v165);
      v167 = *(v48 + v165 + 8);
      v168 = (v233 + v165);
      v169 = *v168;
      v170 = v168[1];
      if (v166 != *v168 || v167 != v170)
      {
        v171 = *v168;
        v172 = v168[1];
        if ((sub_1D1E6904C() & 1) == 0)
        {
          v236 = v166;
          v237 = v167;
          v234 = v169;
          v235 = v170;
          sub_1D17D8EF0();
          v159 = sub_1D1E685FC() == -1;
          goto LABEL_126;
        }
      }

      v48 = v232;
      v173 = sub_1D1E66A1C();
      v175 = v174;
      if (v173 != sub_1D1E66A1C() || v175 != v176)
      {
        v159 = sub_1D1E6904C();

        goto LABEL_127;
      }

LABEL_88:
      sub_1D1CB2248(v233, type metadata accessor for StaticActionSet);
      sub_1D1CB2248(v48, type metadata accessor for StaticActionSet);
LABEL_89:
      v64 = v216 + 1;
      v130 = v210 + v202;
      v131 = v209 - 1;
      v132 = v208 + v202;
      v72 = v207;
      if (v216 + 1 != v207)
      {
        continue;
      }

      break;
    }

    v47 = v198;
    a5 = v196;
    if (v207 < v196)
    {
      goto LABEL_168;
    }

LABEL_38:
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v207 = v72;
    if ((v73 & 1) == 0)
    {
      v47 = sub_1D177D070(0, *(v47 + 16) + 1, 1, v47);
    }

    v75 = *(v47 + 16);
    v74 = *(v47 + 24);
    v76 = v75 + 1;
    if (v75 >= v74 >> 1)
    {
      v47 = sub_1D177D070((v74 > 1), v75 + 1, 1, v47);
    }

    *(v47 + 16) = v76;
    v77 = v47 + 16 * v75;
    v78 = v207;
    *(v77 + 32) = a5;
    *(v77 + 40) = v78;
    v229 = *v200;
    if (!v229)
    {
      goto LABEL_178;
    }

    if (v75)
    {
      break;
    }

LABEL_3:
    v45 = v215[1];
    v46 = v207;
    a5 = v231;
    if (v207 >= v45)
    {
      goto LABEL_136;
    }
  }

  while (1)
  {
    a5 = v76 - 1;
    if (v76 >= 4)
    {
      v83 = v47 + 32 + 16 * v76;
      v84 = *(v83 - 64);
      v85 = *(v83 - 56);
      v89 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      if (v89)
      {
        goto LABEL_155;
      }

      v88 = *(v83 - 48);
      v87 = *(v83 - 40);
      v89 = __OFSUB__(v87, v88);
      v81 = v87 - v88;
      v82 = v89;
      if (v89)
      {
        goto LABEL_156;
      }

      v90 = (v47 + 16 * v76);
      v92 = *v90;
      v91 = v90[1];
      v89 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v89)
      {
        goto LABEL_158;
      }

      v89 = __OFADD__(v81, v93);
      v94 = v81 + v93;
      if (v89)
      {
        goto LABEL_161;
      }

      if (v94 >= v86)
      {
        v112 = (v47 + 32 + 16 * a5);
        v114 = *v112;
        v113 = v112[1];
        v89 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v89)
        {
          goto LABEL_167;
        }

        if (v81 < v115)
        {
          a5 = v76 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

    if (v76 == 3)
    {
      v79 = *(v47 + 32);
      v80 = *(v47 + 40);
      v89 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      v82 = v89;
LABEL_57:
      if (v82)
      {
        goto LABEL_157;
      }

      v95 = (v47 + 16 * v76);
      v97 = *v95;
      v96 = v95[1];
      v98 = __OFSUB__(v96, v97);
      v99 = v96 - v97;
      v100 = v98;
      if (v98)
      {
        goto LABEL_160;
      }

      v101 = (v47 + 32 + 16 * a5);
      v103 = *v101;
      v102 = v101[1];
      v89 = __OFSUB__(v102, v103);
      v104 = v102 - v103;
      if (v89)
      {
        goto LABEL_163;
      }

      if (__OFADD__(v99, v104))
      {
        goto LABEL_164;
      }

      if (v99 + v104 >= v81)
      {
        if (v81 < v104)
        {
          a5 = v76 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_71;
    }

    v105 = (v47 + 16 * v76);
    v107 = *v105;
    v106 = v105[1];
    v89 = __OFSUB__(v106, v107);
    v99 = v106 - v107;
    v100 = v89;
LABEL_71:
    if (v100)
    {
      goto LABEL_159;
    }

    v108 = v47 + 16 * a5;
    v110 = *(v108 + 32);
    v109 = *(v108 + 40);
    v89 = __OFSUB__(v109, v110);
    v111 = v109 - v110;
    if (v89)
    {
      goto LABEL_162;
    }

    if (v111 < v99)
    {
      goto LABEL_3;
    }

LABEL_78:
    v116 = a5 - 1;
    if (a5 - 1 >= v76)
    {
      break;
    }

    v117 = *v215;
    if (!*v215)
    {
      goto LABEL_175;
    }

    v118 = v47;
    v119 = *(v47 + 32 + 16 * v116);
    v120 = *(v47 + 32 + 16 * a5 + 8);
    v121 = *(v214 + 72);
    v122 = v117 + v121 * v119;
    v123 = v117 + v121 * *(v47 + 32 + 16 * a5);
    v124 = v117 + v121 * v120;
    v47 = v231;

    v125 = v122;
    v126 = v226;
    sub_1D1CB397C(v125, v123, v124, v229, v47);
    v45 = v126;
    if (v126)
    {
      goto LABEL_149;
    }

    if (v120 < v119)
    {
      goto LABEL_153;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v118 = sub_1D1E0BE44(v118);
    }

    if (v116 >= *(v118 + 2))
    {
      goto LABEL_154;
    }

    v226 = 0;
    v127 = &v118[16 * v116];
    *(v127 + 4) = v119;
    *(v127 + 5) = v120;
    v238 = v118;
    sub_1D1E0BDB8(a5);
    v47 = v238;
    v76 = *(v238 + 16);
    v26 = v225;
    v48 = v232;
    if (v76 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
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
  v47 = sub_1D1E0BE44(v47);
LABEL_138:
  v238 = v47;
  v182 = *(v47 + 16);
  if (v182 >= 2)
  {
    do
    {
      v183 = *v215;
      if (!*v215)
      {
        goto LABEL_176;
      }

      v184 = *(v47 + 16 * v182);
      v185 = v47;
      v186 = *(v47 + 16 * (v182 - 1) + 32);
      v47 = *(v47 + 16 * (v182 - 1) + 40);
      v187 = *(v214 + 72);
      v188 = v183 + v187 * v184;
      v189 = v183 + v187 * v186;
      v190 = v183 + v187 * v47;

      sub_1D1CB397C(v188, v189, v190, v233, a5);
      if (v45)
      {
        break;
      }

      if (v47 < v184)
      {
        goto LABEL_165;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v185 = sub_1D1E0BE44(v185);
      }

      if (v182 - 2 >= *(v185 + 2))
      {
        goto LABEL_166;
      }

      v191 = &v185[16 * v182];
      *v191 = v184;
      *(v191 + 1) = v47;
      v238 = v185;
      sub_1D1E0BDB8(v182 - 1);
      v47 = v238;
      v182 = *(v238 + 16);
    }

    while (v182 > 1);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D1CC1988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v39 = a5;
  v38 = type metadata accessor for StaticActionSet();
  v10 = *(*(v38 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v38);
  v37 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v19 = &v29 - v18;
  v31 = a2;
  if (a3 != a2)
  {
    v20 = *(v17 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = *a4;
    v30 = v20;
    v24 = v36 + v20 * a3;
LABEL_4:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    v25 = v21;
    while (1)
    {
      sub_1D1CB2110(v24, v19, type metadata accessor for StaticActionSet);
      sub_1D1CB2110(v25, v15, type metadata accessor for StaticActionSet);
      v26 = sub_1D1D0DF40(v19, v15, v39);
      sub_1D1CB2248(v15, type metadata accessor for StaticActionSet);
      result = sub_1D1CB2248(v19, type metadata accessor for StaticActionSet);
      if (v5)
      {
        break;
      }

      if (v26)
      {
        if (!v36)
        {
          __break(1u);
          return result;
        }

        v27 = v37;
        sub_1D1CB2178(v24, v37, type metadata accessor for StaticActionSet);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1D1CB2178(v27, v25, type metadata accessor for StaticActionSet);
        v25 += v22;
        v24 += v22;
        if (!__CFADD__(v23++, 1))
        {
          continue;
        }
      }

      a3 = v35 + 1;
      v21 = v34 + v30;
      v23 = v33 - 1;
      v24 = v32 + v30;
      if (v35 + 1 != v31)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1D1CC1BF4(void **a1, uint64_t a2)
{
  v4 = *(type metadata accessor for StaticActionSet() - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1D1E0BFCC(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_1D1CC6E9C(v8, a2, type metadata accessor for StaticActionSet, sub_1D1CC0584, sub_1D1CC1988);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D1CC1D38(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v228 = a1;
  v10 = sub_1D1E669FC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v241 = &v222 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v240 = &v222 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v225 = &v222 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v224 = &v222 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v245 = &v222 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v246 = &v222 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v230 = &v222 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v222 - v28;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v30 = *(*(v254 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v254);
  v251 = &v222 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v222 - v33;
  v261 = type metadata accessor for StaticRoom(0);
  v243 = *(v261 - 8);
  v35 = *(v243 + 64);
  v36 = MEMORY[0x1EEE9AC00](v261);
  v235 = &v222 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v259 = &v222 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v222 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v262 = &v222 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v250 = &v222 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v249 = &v222 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  MEMORY[0x1EEE9AC00](v49);
  v244 = a3;
  v52 = a3[1];
  v256 = a5;
  if (v52 < 1)
  {
    swift_bridgeObjectRetain_n();
    v231 = MEMORY[0x1E69E7CC0];
LABEL_148:
    v262 = *v228;
    if (!v262)
    {
      goto LABEL_187;
    }

    swift_bridgeObjectRetain_n();
    v10 = v231;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_150:
      v267 = v10;
      v212 = *(v10 + 16);
      if (v212 >= 2)
      {
        do
        {
          v213 = *v244;
          if (!*v244)
          {
            goto LABEL_185;
          }

          v214 = *(v10 + 16 * v212);
          v215 = *(v10 + 16 * (v212 - 1) + 40);
          v216 = *(v243 + 72);
          v217 = v213 + v216 * v214;
          v218 = v213 + v216 * *(v10 + 16 * (v212 - 1) + 32);
          v219 = v213 + v216 * v215;
          v220 = v256;

          sub_1D1CB3FC0(v217, v218, v219, v262, v220);
          if (v6)
          {
            break;
          }

          if (v215 < v214)
          {
            goto LABEL_174;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D1E0BE44(v10);
          }

          if (v212 - 2 >= *(v10 + 16))
          {
            goto LABEL_175;
          }

          v221 = (v10 + 16 * v212);
          *v221 = v214;
          v221[1] = v215;
          v267 = v10;
          sub_1D1E0BDB8(v212 - 1);
          v10 = v267;
          v212 = *(v267 + 16);
        }

        while (v212 > 1);
      }

      return swift_bridgeObjectRelease_n();
    }

LABEL_181:
    v10 = sub_1D1E0BE44(v10);
    goto LABEL_150;
  }

  v222 = &v222 - v50;
  v223 = v51;
  v252 = (v11 + 48);
  v242 = (v11 + 32);
  v248 = (v11 + 8);
  swift_bridgeObjectRetain_n();
  v231 = MEMORY[0x1E69E7CC0];
  v227 = a4;
  v253 = v10;
  v229 = v29;
  v53 = v251;
  v233 = v34;
  v255 = v42;
  v54 = 0;
LABEL_4:
  if (v54 + 1 >= v52)
  {
    v65 = v54 + 1;
    goto LABEL_49;
  }

  v247 = v52;
  v55 = *v244;
  v56 = *(v243 + 72);
  v57 = *v244 + v56 * (v54 + 1);
  v58 = v54;
  v59 = v222;
  sub_1D1CB2110(v57, v222, type metadata accessor for StaticRoom);
  v257 = v55;
  v60 = v55 + v56 * v58;
  v61 = v223;
  sub_1D1CB2110(v60, v223, type metadata accessor for StaticRoom);
  LODWORD(v260) = sub_1D1D0E670(v59, v61, v256);
  if (v6)
  {
    sub_1D1CB2248(v61, type metadata accessor for StaticRoom);
    sub_1D1CB2248(v59, type metadata accessor for StaticRoom);
    swift_bridgeObjectRelease_n();
  }

  v232 = 0;
  sub_1D1CB2248(v61, type metadata accessor for StaticRoom);
  sub_1D1CB2248(v59, type metadata accessor for StaticRoom);
  v226 = v58;
  v62 = v58 + 2;
  v258 = v56;
  v10 = v256;
  v63 = v257 + v56 * v62;
  while (1)
  {
    v65 = v247;
    if (v247 == v62)
    {
      break;
    }

    v66 = v249;
    sub_1D1CB2110(v63, v249, type metadata accessor for StaticRoom);
    v67 = v250;
    sub_1D1CB2110(v57, v250, type metadata accessor for StaticRoom);
    v68 = sub_1D18E4158(v66, v10);
    LOBYTE(v66) = v69;
    v70 = sub_1D18E4158(v67, v10);
    if (v66)
    {
      if ((v71 & 1) == 0)
      {
        v64 = 0;
        goto LABEL_8;
      }
    }

    else
    {
      if (v71)
      {
        v64 = 1;
        goto LABEL_8;
      }

      if (v68 != v70)
      {
        v64 = v68 < v70;
        goto LABEL_8;
      }
    }

    v72 = *(v261 + 24);
    v73 = *(v254 + 48);
    v74 = v233;
    sub_1D1741C08(v249 + v72, v233, &qword_1EC642570, &qword_1D1E6C6A0);
    v257 = v73;
    sub_1D1741C08(v250 + v72, v74 + v73, &qword_1EC642570, &qword_1D1E6C6A0);
    v75 = v253;
    v76 = *v252;
    if ((*v252)(v74, 1, v253) == 1)
    {
      if (v76(v74 + v257, 1, v75) == 1)
      {
        goto LABEL_23;
      }

      sub_1D1741A30(v74 + v257, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v74, &qword_1EC642570, &qword_1D1E6C6A0);
      v64 = 0;
      v53 = v251;
    }

    else
    {
      v77 = v229;
      sub_1D1741C08(v74, v229, &qword_1EC642570, &qword_1D1E6C6A0);
      if (v76(v74 + v257, 1, v75) == 1)
      {
        (*v248)(v77, v75);
        sub_1D1741A30(v74 + v257, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v74, &qword_1EC642570, &qword_1D1E6C6A0);
        v64 = 1;
        v53 = v251;
        v10 = v256;
      }

      else
      {
        sub_1D1741C08(v74 + v257, v230, &qword_1EC642570, &qword_1D1E6C6A0);
        v78 = *v242;
        v79 = v224;
        (*v242)(v224, v77, v75);
        v80 = v225;
        v78(v225, v230, v75);
        sub_1D1CB21E0(&qword_1EC642AC8, MEMORY[0x1E6969530]);
        if (sub_1D1E6775C())
        {
          v81 = *v248;
          (*v248)(v80, v75);
          v81(v79, v75);
LABEL_23:
          sub_1D1741A30(v74, &qword_1EC642AC0, &qword_1D1E6E810);
          v82 = *(v261 + 20);
          v83 = (v249 + v82);
          v85 = *(v249 + v82);
          v84 = *(v249 + v82 + 8);
          v86 = (v250 + v82);
          v88 = *v86;
          v87 = v86[1];
          if (*v83 == *v86 && v84 == v87 || (v89 = *v83, v90 = v83[1], v91 = *v86, v92 = v86[1], (sub_1D1E6904C() & 1) != 0))
          {
            v93 = sub_1D1E66A1C();
            v95 = v94;
            v96 = sub_1D1E66A1C();
            v53 = v251;
            if (v93 == v96 && v95 == v97)
            {

              v64 = 0;
            }

            else
            {
              v64 = sub_1D1E6904C();
            }

            v10 = v256;
          }

          else
          {
            v265 = v85;
            v266 = v84;
            v263 = v88;
            v264 = v87;
            sub_1D17D8EF0();
            v64 = sub_1D1E685FC() == -1;
            v10 = v256;
            v53 = v251;
          }

          goto LABEL_8;
        }

        v64 = sub_1D1E6696C();
        v98 = v80;
        v99 = v79;
        v100 = *v248;
        (*v248)(v98, v75);
        v100(v99, v75);
        v10 = v256;
        sub_1D1741A30(v74 + v257, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v74, &qword_1EC642570, &qword_1D1E6C6A0);
        v53 = v251;
      }
    }

LABEL_8:
    sub_1D1CB2248(v250, type metadata accessor for StaticRoom);
    sub_1D1CB2248(v249, type metadata accessor for StaticRoom);
    ++v62;
    v63 += v258;
    v57 += v258;
    if ((v260 ^ v64))
    {
      v65 = v62 - 1;
      break;
    }
  }

  v6 = v232;
  a4 = v227;
  v54 = v226;
  if ((v260 & 1) == 0)
  {
    goto LABEL_49;
  }

  if (v65 < v226)
  {
    goto LABEL_180;
  }

  if (v226 < v65)
  {
    v101 = v65;
    v10 = v258;
    v102 = v258 * (v65 - 1);
    v103 = v65 * v258;
    v247 = v65;
    v104 = v226;
    v105 = v226 * v258;
    do
    {
      if (v104 != --v101)
      {
        v106 = *v244;
        if (!*v244)
        {
          goto LABEL_184;
        }

        sub_1D1CB2178(v106 + v105, v235, type metadata accessor for StaticRoom);
        if (v105 < v102 || v106 + v105 >= (v106 + v103))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v105 != v102)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        sub_1D1CB2178(v235, v106 + v102, type metadata accessor for StaticRoom);
        v6 = v232;
      }

      ++v104;
      v102 -= v10;
      v103 -= v10;
      v105 += v10;
    }

    while (v104 < v101);
    a4 = v227;
    v65 = v247;
    v54 = v226;
  }

LABEL_49:
  v107 = v244[1];
  if (v65 >= v107)
  {
    goto LABEL_58;
  }

  if (__OFSUB__(v65, v54))
  {
    goto LABEL_177;
  }

  if (v65 - v54 >= a4)
  {
LABEL_58:
    v109 = v65;
    goto LABEL_59;
  }

  if (__OFADD__(v54, a4))
  {
    goto LABEL_178;
  }

  if (v54 + a4 >= v107)
  {
    v108 = v244[1];
  }

  else
  {
    v108 = v54 + a4;
  }

  if (v108 < v54)
  {
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  if (v65 == v108)
  {
    goto LABEL_58;
  }

  v232 = v6;
  v165 = *v244;
  v166 = *(v243 + 72);
  v167 = *v244 + v166 * (v65 - 1);
  v257 = -v166;
  v226 = v54;
  v168 = v54 - v65;
  v258 = v165;
  v234 = v166;
  v169 = v165 + v65 * v166;
  v170 = v255;
  v10 = v256;
  v236 = v108;
  while (2)
  {
    v247 = v65;
    v237 = v169;
    v238 = v168;
    v171 = v168;
    v239 = v167;
    v172 = v167;
LABEL_113:
    v173 = v262;
    sub_1D1CB2110(v169, v262, type metadata accessor for StaticRoom);
    sub_1D1CB2110(v172, v170, type metadata accessor for StaticRoom);
    v174 = sub_1D18E4158(v173, v10);
    LOBYTE(v173) = v175;
    v176 = sub_1D18E4158(v170, v10);
    if ((v173 & 1) == 0)
    {
      if (v177)
      {
        goto LABEL_123;
      }

      if (v174 == v176)
      {
        goto LABEL_118;
      }

      v205 = v174 < v176;
      goto LABEL_138;
    }

    if ((v177 & 1) == 0)
    {
      goto LABEL_110;
    }

LABEL_118:
    v260 = v171;
    v178 = *(v261 + 24);
    v179 = *(v254 + 48);
    sub_1D1741C08(v262 + v178, v53, &qword_1EC642570, &qword_1D1E6C6A0);
    sub_1D1741C08(v170 + v178, v53 + v179, &qword_1EC642570, &qword_1D1E6C6A0);
    v180 = v253;
    v181 = *v252;
    if ((*v252)(v53, 1, v253) == 1)
    {
      if (v181(v53 + v179, 1, v180) == 1)
      {
        goto LABEL_126;
      }

      sub_1D1741A30(v53 + v179, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v53, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_110:
      sub_1D1CB2248(v170, type metadata accessor for StaticRoom);
      sub_1D1CB2248(v262, type metadata accessor for StaticRoom);
LABEL_111:
      v65 = v247 + 1;
      v167 = v239 + v234;
      v168 = v238 - 1;
      v169 = v237 + v234;
      v109 = v236;
      if (v247 + 1 != v236)
      {
        continue;
      }

      v6 = v232;
      v54 = v226;
LABEL_59:
      v110 = v231;
      if (v109 < v54)
      {
        goto LABEL_176;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v236 = v109;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v110 = sub_1D177D070(0, *(v110 + 2) + 1, 1, v110);
      }

      v113 = *(v110 + 2);
      v112 = *(v110 + 3);
      v114 = v113 + 1;
      v10 = v256;
      if (v113 >= v112 >> 1)
      {
        v110 = sub_1D177D070((v112 > 1), v113 + 1, 1, v110);
      }

      *(v110 + 2) = v114;
      v115 = &v110[16 * v113];
      v116 = v236;
      *(v115 + 4) = v54;
      *(v115 + 5) = v116;
      v260 = *v228;
      if (!v260)
      {
        goto LABEL_186;
      }

      if (v113)
      {
        while (2)
        {
          v117 = v114 - 1;
          if (v114 >= 4)
          {
            v122 = &v110[16 * v114 + 32];
            v123 = *(v122 - 64);
            v124 = *(v122 - 56);
            v128 = __OFSUB__(v124, v123);
            v125 = v124 - v123;
            if (v128)
            {
              goto LABEL_163;
            }

            v127 = *(v122 - 48);
            v126 = *(v122 - 40);
            v128 = __OFSUB__(v126, v127);
            v120 = v126 - v127;
            v121 = v128;
            if (v128)
            {
              goto LABEL_164;
            }

            v129 = &v110[16 * v114];
            v131 = *v129;
            v130 = *(v129 + 1);
            v128 = __OFSUB__(v130, v131);
            v132 = v130 - v131;
            if (v128)
            {
              goto LABEL_166;
            }

            v128 = __OFADD__(v120, v132);
            v133 = v120 + v132;
            if (v128)
            {
              goto LABEL_169;
            }

            if (v133 >= v125)
            {
              v151 = &v110[16 * v117 + 32];
              v153 = *v151;
              v152 = *(v151 + 1);
              v128 = __OFSUB__(v152, v153);
              v154 = v152 - v153;
              if (v128)
              {
                goto LABEL_173;
              }

              if (v120 < v154)
              {
                v117 = v114 - 2;
              }
            }

            else
            {
LABEL_79:
              if (v121)
              {
                goto LABEL_165;
              }

              v134 = &v110[16 * v114];
              v136 = *v134;
              v135 = *(v134 + 1);
              v137 = __OFSUB__(v135, v136);
              v138 = v135 - v136;
              v139 = v137;
              if (v137)
              {
                goto LABEL_168;
              }

              v140 = &v110[16 * v117 + 32];
              v142 = *v140;
              v141 = *(v140 + 1);
              v128 = __OFSUB__(v141, v142);
              v143 = v141 - v142;
              if (v128)
              {
                goto LABEL_171;
              }

              if (__OFADD__(v138, v143))
              {
                goto LABEL_172;
              }

              if (v138 + v143 < v120)
              {
                goto LABEL_93;
              }

              if (v120 < v143)
              {
                v117 = v114 - 2;
              }
            }
          }

          else
          {
            if (v114 == 3)
            {
              v118 = *(v110 + 4);
              v119 = *(v110 + 5);
              v128 = __OFSUB__(v119, v118);
              v120 = v119 - v118;
              v121 = v128;
              goto LABEL_79;
            }

            v144 = &v110[16 * v114];
            v146 = *v144;
            v145 = *(v144 + 1);
            v128 = __OFSUB__(v145, v146);
            v138 = v145 - v146;
            v139 = v128;
LABEL_93:
            if (v139)
            {
              goto LABEL_167;
            }

            v147 = &v110[16 * v117];
            v149 = *(v147 + 4);
            v148 = *(v147 + 5);
            v128 = __OFSUB__(v148, v149);
            v150 = v148 - v149;
            if (v128)
            {
              goto LABEL_170;
            }

            if (v150 < v138)
            {
              break;
            }
          }

          v155 = v117 - 1;
          if (v117 - 1 >= v114)
          {
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
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
            goto LABEL_179;
          }

          v156 = *v244;
          if (!*v244)
          {
            goto LABEL_183;
          }

          v10 = v110;
          v157 = *&v110[16 * v155 + 32];
          v158 = *&v110[16 * v117 + 40];
          v159 = *(v243 + 72);
          v160 = v156 + v159 * v157;
          v161 = v156 + v159 * *&v110[16 * v117 + 32];
          v162 = v156 + v159 * v158;
          v163 = v256;

          sub_1D1CB3FC0(v160, v161, v162, v260, v163);
          if (v6)
          {
            swift_bridgeObjectRelease_n();
          }

          if (v158 < v157)
          {
            goto LABEL_161;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D1E0BE44(v10);
          }

          if (v155 >= *(v10 + 16))
          {
            goto LABEL_162;
          }

          v164 = v10 + 16 * v155;
          *(v164 + 32) = v157;
          *(v164 + 40) = v158;
          v267 = v10;
          sub_1D1E0BDB8(v117);
          v110 = v267;
          v114 = *(v267 + 16);
          v53 = v251;
          if (v114 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v231 = v110;
      v52 = v244[1];
      v54 = v236;
      a4 = v227;
      if (v236 >= v52)
      {
        goto LABEL_148;
      }

      goto LABEL_4;
    }

    break;
  }

  v182 = v10;
  v183 = v246;
  sub_1D1741C08(v53, v246, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v181(v53 + v179, 1, v180) != 1)
  {
    sub_1D1741C08(v53 + v179, v245, &qword_1EC642570, &qword_1D1E6C6A0);
    v184 = *v242;
    v185 = v240;
    (*v242)(v240, v183, v180);
    v186 = v241;
    v184(v241, v245, v180);
    sub_1D1CB21E0(&qword_1EC642AC8, MEMORY[0x1E6969530]);
    if (sub_1D1E6775C())
    {
      v187 = *v248;
      (*v248)(v186, v180);
      v187(v185, v180);
      v170 = v255;
LABEL_126:
      sub_1D1741A30(v53, &qword_1EC642AC0, &qword_1D1E6E810);
      v188 = *(v261 + 20);
      v189 = (v262 + v188);
      v190 = *(v262 + v188);
      v191 = *(v262 + v188 + 8);
      v192 = (v170 + v188);
      v193 = *v192;
      v194 = v192[1];
      v195 = *v189 == *v192 && v191 == v194;
      if (v195 || (v196 = *v189, v197 = v189[1], v198 = *v192, v199 = v192[1], (sub_1D1E6904C() & 1) != 0))
      {
        v200 = sub_1D1E66A1C();
        v202 = v201;
        v170 = v255;
        v203 = sub_1D1E66A1C();
        v171 = v260;
        if (v200 == v203 && v202 == v204)
        {

          v10 = v256;
          v53 = v251;
          goto LABEL_110;
        }

        v205 = sub_1D1E6904C();

        v10 = v256;
        v53 = v251;
        goto LABEL_138;
      }

      v265 = v190;
      v266 = v191;
      v263 = v193;
      v264 = v194;
      sub_1D17D8EF0();
      v205 = sub_1D1E685FC() == -1;
      v170 = v255;
      v10 = v256;
      v53 = v251;
    }

    else
    {
      v205 = sub_1D1E6696C();
      v206 = v186;
      v207 = v185;
      v208 = *v248;
      (*v248)(v206, v180);
      v208(v207, v180);
      v10 = v256;
      sub_1D1741A30(v53 + v179, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v53, &qword_1EC642570, &qword_1D1E6C6A0);
      v170 = v255;
    }

    v171 = v260;
LABEL_138:
    sub_1D1CB2248(v170, type metadata accessor for StaticRoom);
    sub_1D1CB2248(v262, type metadata accessor for StaticRoom);
    if ((v205 & 1) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_139;
  }

  (*v248)(v183, v180);
  sub_1D1741A30(v53 + v179, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A30(v53, &qword_1EC642570, &qword_1D1E6C6A0);
  v10 = v182;
  v170 = v255;
  v171 = v260;
LABEL_123:
  sub_1D1CB2248(v170, type metadata accessor for StaticRoom);
  sub_1D1CB2248(v262, type metadata accessor for StaticRoom);
LABEL_139:
  if (v258)
  {
    v209 = v259;
    sub_1D1CB2178(v169, v259, type metadata accessor for StaticRoom);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D1CB2178(v209, v172, type metadata accessor for StaticRoom);
    v172 += v257;
    v169 += v257;
    if (__CFADD__(v171++, 1))
    {
      goto LABEL_111;
    }

    goto LABEL_113;
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_183:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_184:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_185:

  __break(1u);
LABEL_186:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_187:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1D1CC34BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v96 = a5;
  v93 = a1;
  v97 = sub_1D1E669FC();
  v8 = *(v97 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v97 - 8);
  v82 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v76 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v80 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v76 - v17;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v18 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91);
  v20 = &v76 - v19;
  v98 = type metadata accessor for StaticRoom(0);
  v21 = *(*(v98 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v98);
  v94 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v103 = &v76 - v25;
  result = MEMORY[0x1EEE9AC00](v24);
  v29 = &v76 - v28;
  v78 = a2;
  if (a3 != a2)
  {
    v30 = *a4;
    v31 = *(v27 + 72);
    v32 = (v8 + 48);
    v79 = (v8 + 32);
    v87 = (v8 + 8);
    v33 = v30 + v31 * (a3 - 1);
    v92 = -v31;
    v34 = v93 - a3;
    v93 = v30;
    v77 = v31;
    v35 = v30 + v31 * a3;
    v89 = v20;
    v90 = &v76 - v28;
    v95 = v32;
LABEL_6:
    v85 = v33;
    v86 = a3;
    v83 = v35;
    v84 = v34;
    while (1)
    {
      sub_1D1CB2110(v35, v29, type metadata accessor for StaticRoom);
      v36 = v103;
      sub_1D1CB2110(v33, v103, type metadata accessor for StaticRoom);
      v37 = v96;
      v38 = sub_1D18E4158(v29, v96);
      v40 = v39;
      v41 = sub_1D18E4158(v36, v37);
      if (v40)
      {
        v43 = v95;
        if ((v42 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v43 = v95;
        if (v42)
        {
          goto LABEL_17;
        }

        if (v38 != v41)
        {
          v71 = v38 < v41;
          goto LABEL_31;
        }
      }

      v44 = *(v98 + 24);
      v45 = *(v91 + 48);
      sub_1D1741C08(&v29[v44], v20, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741C08(v103 + v44, &v20[v45], &qword_1EC642570, &qword_1D1E6C6A0);
      v46 = *v43;
      v47 = v97;
      if ((*v43)(v20, 1, v97) == 1)
      {
        if (v46(&v20[v45], 1, v47) != 1)
        {
          sub_1D1741A30(&v20[v45], &qword_1EC642570, &qword_1D1E6C6A0);
          sub_1D1741A30(v20, &qword_1EC642570, &qword_1D1E6C6A0);
          v29 = v90;
LABEL_4:
          sub_1D1CB2248(v103, type metadata accessor for StaticRoom);
          result = sub_1D1CB2248(v29, type metadata accessor for StaticRoom);
LABEL_5:
          a3 = v86 + 1;
          v33 = v85 + v77;
          v34 = v84 - 1;
          v35 = v83 + v77;
          if (v86 + 1 == v78)
          {
            return result;
          }

          goto LABEL_6;
        }

        goto LABEL_20;
      }

      v48 = v88;
      sub_1D1741C08(v20, v88, &qword_1EC642570, &qword_1D1E6C6A0);
      if (v46(&v20[v45], 1, v47) == 1)
      {
        (*v87)(v48, v47);
        sub_1D1741A30(&v20[v45], &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v20, &qword_1EC642570, &qword_1D1E6C6A0);
        v29 = v90;
LABEL_17:
        sub_1D1CB2248(v103, type metadata accessor for StaticRoom);
        result = sub_1D1CB2248(v29, type metadata accessor for StaticRoom);
        goto LABEL_32;
      }

      v49 = v80;
      sub_1D1741C08(&v20[v45], v80, &qword_1EC642570, &qword_1D1E6C6A0);
      v50 = *v79;
      v51 = v81;
      (*v79)(v81, v48, v97);
      v52 = v51;
      v53 = v97;
      v54 = v82;
      v55 = v49;
      v56 = v52;
      v50(v82, v55, v97);
      sub_1D1CB21E0(&qword_1EC642AC8, MEMORY[0x1E6969530]);
      if (sub_1D1E6775C())
      {
        v57 = *v87;
        (*v87)(v54, v53);
        v57(v56, v53);
        v20 = v89;
LABEL_20:
        sub_1D1741A30(v20, &qword_1EC642AC0, &qword_1D1E6E810);
        v58 = *(v98 + 20);
        v29 = v90;
        v59 = *&v90[v58];
        v60 = *&v90[v58 + 8];
        v61 = (v103 + v58);
        v63 = *v61;
        v62 = v61[1];
        v64 = v59 == *v61 && v60 == v62;
        if (v64 || (v65 = *v61, v66 = v61[1], (sub_1D1E6904C() & 1) != 0))
        {
          v67 = sub_1D1E66A1C();
          v69 = v68;
          if (v67 == sub_1D1E66A1C() && v69 == v70)
          {

            v20 = v89;
            goto LABEL_4;
          }

          v71 = sub_1D1E6904C();

          v20 = v89;
        }

        else
        {
          v101 = v59;
          v102 = v60;
          v99 = v63;
          v100 = v62;
          sub_1D17D8EF0();
          v71 = sub_1D1E685FC() == -1;
          v20 = v89;
        }

        goto LABEL_31;
      }

      v71 = sub_1D1E6696C();
      v72 = *v87;
      (*v87)(v54, v97);
      v72(v56, v97);
      v73 = v89;
      sub_1D1741A30(&v89[v45], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v73, &qword_1EC642570, &qword_1D1E6C6A0);
      v20 = v73;
      v29 = v90;
LABEL_31:
      sub_1D1CB2248(v103, type metadata accessor for StaticRoom);
      result = sub_1D1CB2248(v29, type metadata accessor for StaticRoom);
      if ((v71 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_32:
      if (!v93)
      {
        __break(1u);
        return result;
      }

      v74 = v94;
      sub_1D1CB2178(v35, v94, type metadata accessor for StaticRoom);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D1CB2178(v74, v33, type metadata accessor for StaticRoom);
      v33 += v92;
      v35 += v92;
      if (__CFADD__(v34++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1D1CC3D58(void **a1, uint64_t a2)
{
  v4 = *(type metadata accessor for StaticRoom(0) - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1D1E0C030(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_1D1CC6E9C(v8, a2, type metadata accessor for StaticRoom, sub_1D1CC1D38, sub_1D1CC34BC);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}