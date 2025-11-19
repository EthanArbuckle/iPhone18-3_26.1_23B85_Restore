uint64_t CRDictionary.MutatingAction.encode(to:)(uint64_t a1, void *a2)
{
  v7 = *v2;
  v6 = v2[1];
  result = sub_1ADDFCC74();
  if (!v3)
  {
    v9 = result;
    v44 = v6;
    v64 = v37;
    v45 = v7;
    MEMORY[0x1EEE9AC00](result);
    v10 = a2[3];
    v30 = a2[2];
    v31 = v10;
    v41 = v10;
    v11 = a2[5];
    v40 = a2[4];
    v32 = v40;
    v33 = v11;
    v12 = a2[7];
    v39 = a2[6];
    v34 = v39;
    v35 = v12;
    v38 = v12;
    v36 = a1;
    v42 = v30;
    v13 = sub_1AE23D38C();

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    WitnessTable = swift_getWitnessTable();
    v43 = v14;
    v37[0] = sub_1ADE08EB0(sub_1ADFAEC5C, &v29, v13, &type metadata for Proto_Set.Element, v14, WitnessTable, MEMORY[0x1E69E7288], &v54);
    v37[1] = v9;

    v64 = v37;
    v54 = v44;
    MEMORY[0x1EEE9AC00](v16);
    v30 = v42;
    v31 = v41;
    v32 = v40;
    v33 = v11;
    v34 = v39;
    v35 = v38;
    v36 = a1;
    MEMORY[0x1EEE9AC00](v17);
    v28[2] = v18;
    v28[3] = v19;
    v28[4] = v20;
    v28[5] = v11;
    v28[6] = v21;
    v28[7] = v22;
    v28[8] = sub_1ADFAED3C;
    v28[9] = v23;
    v24 = sub_1AE23CB1C();

    v25 = swift_getWitnessTable();
    v26 = sub_1ADE08EB0(sub_1ADFAED70, v28, v24, &type metadata for Proto_Set.Element, v43, v25, MEMORY[0x1E69E7288], v46);

    v27 = v37[0];
    *&v56 = 0;
    *(&v56 + 1) = v37[0];
    v57 = v26;
    v58 = 0u;
    v59 = 0u;
    v60 = 1;
    *v61 = *v55;
    *&v61[3] = *&v55[3];
    v62 = 0;
    v63 = 0;
    swift_beginAccess();
    sub_1ADFAEE10(&v56, v47);
    sub_1AE1B7950(&v56);
    swift_endAccess();

    v47[0] = 0;
    v47[1] = v27;
    v47[2] = v26;
    v48 = 0u;
    v49 = 0u;
    v50 = 1;
    *v51 = *v55;
    *&v51[3] = *&v55[3];
    v52 = 0;
    v53 = 0;
    return sub_1ADFAECE8(v47);
  }

  return result;
}

uint64_t sub_1ADFA718C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ADE6B938(sub_1ADFB0288);
  if (!v1)
  {
    v15 = result;
    MEMORY[0x1EEE9AC00](result);
    v4 = sub_1ADE6B938(sub_1ADFB0048);
    type metadata accessor for Proto_CRDT._StorageClass();
    inited = swift_initStaticObject();
    v6 = *(inited + 16);
    if (v6 >> 60 || (v6 & 0xF000000000000007) == 0xF000000000000007)
    {
      type metadata accessor for Proto_Register._StorageClass();
      v7 = swift_initStaticObject();
    }

    else
    {
      v7 = *(v6 + 16);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_Register._StorageClass();
      swift_allocObject();

      v9 = sub_1ADDE8D20(v8);

      v7 = v9;
    }

    swift_beginAccess();
    v10 = *(v7 + 40);
    *(v7 + 40) = v4;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = swift_allocObject();
      v12 = *(inited + 16);
      *(v11 + 16) = v12;
      sub_1ADE5215C(v12);

      inited = v11;
    }

    v13 = swift_allocObject();
    *(v13 + 16) = v7;
    v14 = *(inited + 16);
    *(inited + 16) = v13;
    result = sub_1ADE52174(v14);
    *a1 = v15;
    a1[1] = inited;
    a1[3] = 0;
    a1[4] = 0;
    a1[2] = 0;
  }

  return result;
}

uint64_t CRDictionary.actionUndoingDifference(from:)@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2;
  v124 = a3;
  v6 = 0;
  v168 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  v8 = sub_1AE23D7CC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v126 = &v121 - v10;
  v11 = v4[6];
  v132 = v7;
  v12 = v11;
  v13 = type metadata accessor for CRDictionaryElement();
  v130 = sub_1AE23D7CC();
  v155 = *(v130 - 8);
  v14 = *(v155 + 8);
  MEMORY[0x1EEE9AC00](v130);
  v145 = &v121 - v15;
  v137 = *(v13 - 8);
  v16 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v131 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v140 = &v121 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v134 = &v121 - v22;
  v136 = *(v4[2] - 8);
  v23 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v139 = &v121 - v28;
  v158 = v29;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v148 = sub_1AE23D7CC();
  v146 = *(v148 - 8);
  v30 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v157 = &v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v153 = &v121 - v33;
  v34 = *a1;
  v35 = *v3;
  if (*(*v3 + 48) == v34[6])
  {
    v122 = 0;
    swift_retain_n();
  }

  else
  {
    if (qword_1ED96B308 != -1)
    {
LABEL_44:
      swift_once();
    }

    v36 = *(qword_1ED96F2F8 + 40);
    sub_1AE23D6AC();
    v122 = v6;
    v37 = v165;
    v38 = BYTE8(v165);
    v39 = v166;
    v34 = sub_1AE16CB8C(v165, SBYTE8(v165), v166);

    v35 = sub_1AE16CB8C(v37, v38, v39);
  }

  v40 = v4[5];

  v41 = v158;
  v164 = sub_1AE23C9EC();
  v42 = v132;
  v163 = sub_1AE23C9CC();
  v167 = 0;
  v165 = 0u;
  v166 = 0u;
  MEMORY[0x1EEE9AC00](v163);
  *(&v121 - 8) = v41;
  *(&v121 - 7) = v42;
  *(&v121 - 6) = v4[4];
  *(&v121 - 5) = v40;
  v151 = v40;
  v43 = v4[7];
  *(&v121 - 4) = v12;
  *(&v121 - 3) = v43;
  *(&v121 - 2) = &v164;
  MEMORY[0x1EEE9AC00](v44);
  v128 = v45;
  *(&v121 - 4) = v45;
  *(&v121 - 3) = &v163;
  *(&v121 - 2) = v34;
  sub_1AE1710B0(v34, &v165, sub_1ADFB0284, v46, sub_1ADFAEE6C, (&v121 - 6));

  sub_1ADDCEDE0(&v165, &qword_1EB5BAA40, &unk_1AE24EC50);
  swift_beginAccess();
  v47 = v35[5];

  v123 = v35;

  v48 = *(v47 + 64);
  v150 = v47 + 64;
  v135 = v47;
  v49 = 1 << *(v47 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & v48;
  v149 = v34;
  swift_beginAccess();
  v4 = 0;
  v52 = (v49 + 63) >> 6;
  v147 = TupleTypeMetadata2 - 8;
  v138 = (v136 + 16);
  v133 = v137 + 16;
  v156 = (v136 + 32);
  v152 = (v137 + 32);
  v146 += 32;
  v143 = (v137 + 48);
  v125 = v42 - 8;
  v142 = (v137 + 8);
  v141 = (v136 + 8);
  v127 = (v155 + 8);
  v53 = v140;
  v155 = v26;
  v6 = v157;
  v144 = v52;
  v129 = v13;
  while (1)
  {
    if (!v51)
    {
      v12 = v13;
      if (v52 <= v4 + 1)
      {
        v55 = v4 + 1;
      }

      else
      {
        v55 = v52;
      }

      v56 = v55 - 1;
      v13 = TupleTypeMetadata2;
      v57 = v153;
      v58 = v152;
      while (1)
      {
        v54 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v54 >= v52)
        {
          v51 = 0;
          v69 = 1;
          v4 = v56;
          goto LABEL_21;
        }

        v51 = *(v150 + 8 * v54);
        v4 = (v4 + 1);
        if (v51)
        {
          v4 = v54;
          v13 = v12;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_44;
    }

    v54 = v4;
LABEL_20:
    v59 = __clz(__rbit64(v51));
    v51 &= v51 - 1;
    v60 = v59 | (v54 << 6);
    v61 = v135;
    v62 = v136;
    (*(v136 + 16))(v139, *(v135 + 48) + *(v136 + 72) * v60, v158);
    v63 = v137;
    v64 = *(v61 + 56) + *(v137 + 72) * v60;
    v65 = v134;
    (*(v137 + 16))(v134, v64, v13);
    v66 = v13;
    v13 = TupleTypeMetadata2;
    v67 = *(TupleTypeMetadata2 + 48);
    v6 = v157;
    (*(v62 + 32))();
    v68 = *(v63 + 32);
    v12 = v66;
    v58 = v152;
    v68(&v6[v67], v65, v66);
    v69 = 0;
    v26 = v155;
    v57 = v153;
    v53 = v140;
LABEL_21:
    v70 = *(v13 - 8);
    (*(v70 + 56))(v6, v69, 1, v13);
    (*v146)(v57, v6, v148);
    if ((*(v70 + 48))(v57, 1, v13) == 1)
    {
      break;
    }

    v71 = *(v13 + 48);
    v72 = v57;
    v73 = v57;
    v74 = v158;
    (*v156)(v26, v72, v158);
    v75 = *v58;
    v76 = &v73[v71];
    v13 = v12;
    (*v58)(v53, v76, v12);
    v77 = v149[5];

    v78 = v145;
    sub_1AE23CB7C();

    if ((*v143)(v78, 1, v13) == 1)
    {
      (*v142)(v53, v13);
      (*v141)(v26, v74);
      (*v127)(v78, v130);
      goto LABEL_9;
    }

    v79 = v13;
    v80 = v53;
    v81 = v131;
    v75(v131, v78, v79);
    v82 = *(v79 + 36);
    if (sub_1AE23CCBC())
    {
LABEL_35:
      v113 = *v142;
      v112 = v129;
      (*v142)(v81, v129);
      v113(v80, v112);
      v26 = v155;
      (*v141)(v155, v158);
      goto LABEL_36;
    }

    v83 = *(type metadata accessor for FinalizedTimestamp(0) + 20);
    v84 = *&v81[v83];
    v85 = *&v53[v83];
    if (v84 == v85)
    {
      v161 = sub_1AE23BFCC();
      LOWORD(v162) = v86;
      BYTE2(v162) = v87;
      BYTE3(v162) = v88;
      BYTE4(v162) = v89;
      BYTE5(v162) = v90;
      BYTE6(v162) = v91;
      HIBYTE(v162) = v92;
      v159 = sub_1AE23BFCC();
      LOWORD(v160) = v93;
      BYTE2(v160) = v94;
      BYTE3(v160) = v95;
      BYTE4(v160) = v96;
      BYTE5(v160) = v97;
      BYTE6(v160) = v98;
      HIBYTE(v160) = v99;
      v100 = bswap64(v161);
      v101 = bswap64(v159);
      if (v100 == v101 && (v100 = bswap64(v162), v101 = bswap64(v160), v100 == v101))
      {
        v102 = 0;
      }

      else if (v100 < v101)
      {
        v102 = -1;
      }

      else
      {
        v102 = 1;
      }

      v81 = v131;
      v80 = v140;
      if ((v102 & 0x80000000) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (v84 >= v85)
    {
      goto LABEL_35;
    }

    v103 = v155;
    v104 = v158;
    (*v138)(v139, v155, v158);
    v105 = v132;
    v106 = *(v132 - 8);
    v107 = &v81[v82];
    v108 = v126;
    (*(v106 + 16))(v126, v107, v132);
    (*(v106 + 56))(v108, 0, 1, v105);
    v109 = v104;
    sub_1AE23CB1C();
    sub_1AE23CB8C();
    v110 = *v142;
    v111 = v81;
    v26 = v103;
    v112 = v129;
    (*v142)(v111, v129);
    v110(v80, v112);
    (*v141)(v103, v109);
LABEL_36:
    v53 = v80;
    v13 = v112;
LABEL_9:
    v52 = v144;
    v6 = v157;
  }

  v114 = v164;
  if (sub_1AE23D32C() >= 1)
  {

    goto LABEL_40;
  }

  v116 = sub_1AE23CA7C();

  if (v116 < 1)
  {

    v120 = v124;
    *v124 = 0;
    v120[1] = 0;
  }

  else
  {
LABEL_40:
    v117 = v163;
    v118 = v124;
    *v124 = v114;
    v118[1] = v117;
  }

  v119 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ADFA829C(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = a2;
  v5 = *a3;
  v6 = *(*a3 + 88);
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v27 - v9;
  v11 = *(v6 + 16);
  v12 = sub_1AE23D7CC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - v14;
  v16 = *(v5 + 80);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v18);
  (*(v21 + 16))(&v27 - v20, a1, v16, v19);
  swift_beginAccess();
  v22 = a3[5];
  v23 = *(v5 + 104);

  sub_1AE23CB7C();
  v24 = *(v6 - 8);
  result = (*(v24 + 48))(v10, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v26 = *(v11 - 8);
    (*(v26 + 16))(v15, &v10[*(v6 + 36)], v11);
    (*(v26 + 56))(v15, 0, 1, v11);
    sub_1AE23CB1C();
    sub_1AE23CB8C();
    return (*(v24 + 8))(v10, v6);
  }

  return result;
}

void CRDictionary.apply(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v99 = v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v98 = v88 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v97 = v88 - v15;
  v89 = *(v7 - 8);
  v16 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = *(v6 - 8);
  v20 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v106 = v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1AE23D7CC();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v105 = v88 - v25;
  v119 = v7;
  v112 = sub_1AE23D7CC();
  v26 = *(v112 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v111 = v88 - v28;
  v117 = v6;
  v29 = sub_1AE23D7CC();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = v88 - v31;
  v33 = *a1;
  if (!*a1)
  {
    return;
  }

  v103 = TupleTypeMetadata2;
  v116 = v9;
  v104 = v19;
  v34 = a1[1];
  sub_1ADFA9038(a2);
  v35 = v33;
  v110 = a2;
  v115 = v34;
  if ((v33 & 0xC000000000000001) != 0)
  {

    sub_1AE23D93C();
    v36 = *(a2 + 40);
    sub_1AE23D36C();
    v35 = v120;
    v37 = v121;
    v38 = v122;
    v118 = v123;
    v39 = v124;
  }

  else
  {
    v40 = -1 << *(v33 + 32);
    v37 = v33 + 56;
    v38 = ~v40;
    v41 = -v40;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v39 = v42 & *(v35 + 56);

    v118 = 0;
  }

  v43 = (v91 + 56);
  v114 = v38;
  v44 = (v38 + 64) >> 6;
  v90 = v91 + 16;
  v108 = (v26 + 8);
  v109 = (v91 + 8);
  v45 = v117;
  v46 = v35;
  while (v35 < 0)
  {
    if (!sub_1AE23D9AC())
    {
      goto LABEL_21;
    }

    sub_1AE23DFEC();
    swift_unknownObjectRelease();
LABEL_11:
    (*v43)(v32, 0, 1, v45);
    sub_1ADFA9038(v110);
    v49 = *v3;
    v50 = v111;
    sub_1ADFA4D68(v32, v111);
    (*v109)(v32, v45);
    (*v108)(v50, v112);
    v35 = v46;
  }

  if (v39)
  {
    v47 = v118;
LABEL_10:
    v48 = __clz(__rbit64(v39));
    v39 &= v39 - 1;
    (*(v91 + 16))(v32, *(v35 + 48) + *(v91 + 72) * (v48 | (v47 << 6)), v45);
    goto LABEL_11;
  }

  v51 = v118;
  while (1)
  {
    v47 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      goto LABEL_48;
    }

    if (v47 >= v44)
    {
      break;
    }

    v39 = *(v37 + 8 * v47);
    ++v51;
    if (v39)
    {
      v118 = v47;
      goto LABEL_10;
    }
  }

LABEL_21:
  (*v43)(v32, 1, 1, v45);
  sub_1ADDDCE74();
  v96 = v3;
  if ((v115 & 0xC000000000000001) != 0)
  {
    v52 = sub_1AE23DC1C();
    v118 = 0;
    v53 = 0;
    v54 = 0;
    v107 = v52 | 0x8000000000000000;
  }

  else
  {
    v55 = -1 << *(v115 + 32);
    v53 = ~v55;
    v56 = *(v115 + 64);
    v118 = v115 + 64;
    v57 = -v55;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    else
    {
      v58 = -1;
    }

    v54 = v58 & v56;
    v107 = v115;
  }

  v59 = v104;
  v60 = v106;
  v114 = (v91 + 32);
  v113 = (v89 + 32);
  v101 = (v116 + 56);
  v88[1] = v53;
  v102 = (v53 + 64) >> 6;
  v88[2] = v89 + 16;
  v100 = (v116 + 48);
  v95 = (v116 + 16);
  v94 = (v89 + 56);
  v93 = (v116 + 8);
  v92 = (v89 + 8);

  v61 = 0;
  v62 = v119;
  while (2)
  {
    if ((v107 & 0x8000000000000000) != 0)
    {
      v72 = sub_1AE23DC3C();
      v65 = v103;
      if (!v72)
      {
        (*v101)(v105, 1, 1, v103);
LABEL_45:
        sub_1ADDDCE74();
        return;
      }

      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      v62 = v119;
      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      v64 = v61;
      v116 = v54;
      v69 = v59;
      goto LABEL_40;
    }

    v63 = v54;
    v64 = v61;
    v65 = v103;
    if (v54)
    {
LABEL_37:
      v116 = (v63 - 1) & v63;
      v69 = v59;
      v70 = __clz(__rbit64(v63)) | (v64 << 6);
      v71 = v107;
      (*(v91 + 16))(v60, *(v107 + 48) + *(v91 + 72) * v70, v117);
      (*(v89 + 16))(v69, *(v71 + 56) + *(v89 + 72) * v70, v62);
LABEL_40:
      v73 = *(v65 + 48);
      v74 = v105;
      (*v114)();
      (*v113)(&v74[v73], v69, v62);
      v75 = 0;
      v67 = v64;
LABEL_41:
      (*v101)(v74, v75, 1, v65);
      if ((*v100)(v74, 1, v65) == 1)
      {
        goto LABEL_45;
      }

      v76 = *(v65 + 48);
      v77 = v97;
      v78 = v117;
      (*v114)(v97, v74, v117);
      v115 = v67;
      v79 = *v113;
      (*v113)(&v77[v76], &v74[v76], v119);
      v80 = *v95;
      v81 = v98;
      (*v95)(v98, v77, v65);
      v82 = *(v65 + 48);
      v83 = v99;
      v80(v99, v77, v65);
      v84 = v111;
      v79(v111, &v83[*(v65 + 48)], v119);
      (*v94)(v84, 0, 1, v119);
      sub_1ADFAEA78(v84, v81, v110);
      v85 = *v109;
      (*v109)(v81, v78);
      (*v108)(v84, v112);
      (*v93)(v77, v65);
      v59 = v104;
      v86 = v78;
      v62 = v119;
      v85(v83, v86);
      v87 = v81 + v82;
      v60 = v106;
      (*v92)(v87, v62);
      v61 = v115;
      v54 = v116;
      continue;
    }

    break;
  }

  if (v102 <= (v61 + 1))
  {
    v66 = v61 + 1;
  }

  else
  {
    v66 = v102;
  }

  v67 = v66 - 1;
  v68 = v61;
  while (1)
  {
    v64 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      break;
    }

    if (v64 >= v102)
    {
      v116 = 0;
      v75 = 1;
      v74 = v105;
      goto LABEL_41;
    }

    v63 = *(v118 + 8 * v64);
    ++v68;
    if (v63)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t sub_1ADFA9038(_OWORD *a1)
{
  v2 = v1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  type metadata accessor for CRDictionaryRef();
  result = sub_1AE23DFBC();
  if ((result & 1) == 0)
  {
    v4 = *v1;
    v5 = sub_1ADFA3BBC();
    v6 = *v2;

    *v2 = v5;
  }

  return result;
}

uint64_t CRDictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1ADFA9038(a2);
  v6 = *v3;
  return sub_1ADFA4D68(a1, a3);
}

uint64_t sub_1ADFA90E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *a1;
  v6 = *(a2 + a3 - 48);
  v7 = *(a2 + a3 - 32);
  v8 = *(a2 + a3 - 16);
  type metadata accessor for CRDictionary();
  return CRDictionary.subscript.getter(a4);
}

uint64_t sub_1ADFA9154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + a4 - 48);
  v9 = *(a3 + a4 - 32);
  v10 = *(a3 + a4 - 16);
  v6 = type metadata accessor for CRDictionary();
  return sub_1ADFAEA78(a1, a3, v6);
}

void (*CRDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x48uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  v7[1] = v3;
  v9 = *(a3 + 24);
  v10 = sub_1AE23D7CC();
  v8[2] = v10;
  v11 = *(v10 - 8);
  v8[3] = v11;
  v12 = *(v11 + 64);
  if (v6)
  {
    v8[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v8[5] = v13;
  v15 = *(a3 + 16);
  v8[6] = v15;
  v16 = *(v15 - 8);
  v17 = v16;
  v8[7] = v16;
  if (v6)
  {
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v18 = malloc(*(v16 + 64));
  }

  v8[8] = v18;
  (*(v17 + 16))();
  v19 = *v3;
  sub_1ADE15640(v14);
  return sub_1ADFA9360;
}

void sub_1ADFA9360(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[7];
  v3 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v8 = (*a1)[3];
  v7 = (*a1)[4];
  v9 = (*a1)[1];
  v10 = (*a1)[2];
  v11 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v5, v10);
    sub_1ADFAEA78(v7, v3, v11);
    (*(v4 + 8))(v3, v6);
    v12 = *(v8 + 8);
    v12(v7, v10);
    v12(v5, v10);
  }

  else
  {
    sub_1ADFAEA78((*a1)[5], v3, v11);
    (*(v4 + 8))(v3, v6);
    (*(v8 + 8))(v5, v10);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t CRDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *v5;
  v7 = a4[2];
  v9[1] = a4[1];
  v9[2] = v7;
  v9[3] = a4[3];
  v10 = a2;
  v11 = a3;
  return sub_1ADFA4AD4(a1, sub_1ADFAEE78, v9, a5);
}

uint64_t CRDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1ADFAF178(a1, a2, a5);
  (*(*(*(a5 + 16) - 8) + 8))(a2);
  v8 = *(*(*(a5 + 24) - 8) + 8);

  return v8(a1);
}

void (*CRDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x98uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[10] = a5;
  v10[11] = v5;
  v12 = *(a5 + 24);
  v10[12] = v12;
  v13 = *(v12 - 8);
  v10[13] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v10[14] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[14] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  *(v11 + 120) = v15;
  v17 = *(a5 + 16);
  *(v11 + 128) = v17;
  v18 = *(v17 - 8);
  v19 = v18;
  *(v11 + 136) = v18;
  if (v9)
  {
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v20 = malloc(*(v18 + 64));
  }

  *(v11 + 144) = v20;
  (*(v19 + 16))();
  v21 = *v5;
  *(v11 + 16) = v17;
  *(v11 + 24) = v12;
  *(v11 + 32) = *(a5 + 32);
  *(v11 + 40) = *(a5 + 40);
  *(v11 + 56) = *(a5 + 56);
  *(v11 + 64) = a3;
  *(v11 + 72) = a4;
  sub_1ADFA4AD4(a2, sub_1ADFAEE78, v11, v16);
  return sub_1ADFA9788;
}

void sub_1ADFA9788(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 136);
  v3 = *(*a1 + 144);
  v5 = *(*a1 + 120);
  v6 = *(*a1 + 128);
  v8 = *(*a1 + 104);
  v7 = *(*a1 + 112);
  v9 = *(*a1 + 88);
  v10 = *(*a1 + 96);
  v11 = *(*a1 + 80);
  if (a2)
  {
    (*(v8 + 16))(*(*a1 + 112), v5, v10);
    sub_1ADFAF178(v7, v3, v11);
    (*(v4 + 8))(v3, v6);
    v12 = *(v8 + 8);
    v12(v7, v10);
    v12(v5, v10);
  }

  else
  {
    sub_1ADFAF178(*(*a1 + 120), v3, v11);
    (*(v4 + 8))(v3, v6);
    (*(v8 + 8))(v5, v10);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t CRDictionary.index(where:)@<X0>(uint64_t (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v41 = a1;
  v42 = a2;
  v37 = a4;
  v7 = a3[3];
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(v11 + 16);
  v12 = *(v47 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *v4;
  v17 = v50;
  CRDictionary.startIndex.getter(v18, &v53);
  v46 = v17;
  v48[0] = v17;
  CRDictionary.endIndex.getter(a3, &v50);
  v43 = v50;
  v44 = v51;
  v45 = v52;
  v38 = (v8 + 8);
  v39 = (v12 + 8);
  v19 = v53;
  v20 = v54;
  v21 = v55;
  while (1)
  {
    LOBYTE(v50) = v21 & 1;
    sub_1ADFAF2D8(v19, v20, v21 & 1);
    v23 = a3[5];
    v22 = a3[6];
    v24 = v7;
    type metadata accessor for CRDictionaryElement();
    v25 = sub_1AE23CA5C();
    sub_1ADDFFBC8(v19, v20, v50);
    v26 = v53;
    v27 = v54;
    v28 = v55;
    if (v25)
    {
      sub_1ADDFFBC8(v53, v54, v55);
      result = sub_1ADDFFBC8(v43, v44, v45);
      v34 = v37;
      *v37 = 0;
      v34[1] = 0;
      *(v34 + 16) = -1;
      return result;
    }

    v48[0] = v46;
    v50 = v53;
    v51 = v54;
    v52 = v55;
    sub_1ADFAF2D8(v53, v54, v55);
    v29 = v40;
    CRDictionary.subscript.getter(v16, v40, &v50, a3);
    sub_1ADDFFBC8(v26, v27, v28);
    v30 = v41(v16, v29);
    if (v5)
    {
      sub_1ADDFFBC8(v43, v44, v45);
      (*v38)(v29, v24);
      (*v39)(v16, v47);
      return sub_1ADDFFBC8(v26, v27, v28);
    }

    v31 = v30;
    v32 = v29;
    v7 = v24;
    (*v38)(v32, v24);
    (*v39)(v16, v47);
    if (v31)
    {
      break;
    }

    v56 = v46;
    v48[0] = v26;
    v48[1] = v27;
    v49 = v28;
    sub_1ADFAF2D8(v26, v27, v28);
    CRDictionary.index(after:)(v48, a3, &v50);
    sub_1ADDFFBC8(v26, v27, v28);
    sub_1ADDFFBC8(v26, v27, v28);
    v19 = v50;
    v20 = v51;
    v21 = v52;
    v53 = v50;
    v54 = v51;
    v55 = v52;
  }

  result = sub_1ADDFFBC8(v43, v44, v45);
  v35 = v37;
  *v37 = v26;
  v35[1] = v27;
  *(v35 + 16) = v28;
  return result;
}

uint64_t sub_1ADFA9CB0@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  swift_beginAccess();
  v8 = *(v7 + 40);
  v10 = a1[2];
  v9 = a1[3];
  v11 = a1[6];
  v12 = type metadata accessor for CRDictionaryElement();
  v13 = a1[5];

  v15 = a2(v14, v10, v12, v13);
  v17 = v16;
  LOBYTE(v10) = v18;

  *a3 = v15;
  *(a3 + 8) = v17;
  *(a3 + 16) = v10 & 1;
  return result;
}

uint64_t CRDictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v5 = v4;
  v42 = a2;
  v8 = a4[3];
  v38 = a4[2];
  v40 = a1;
  v41 = v8;
  v9 = a4[6];
  v10 = type metadata accessor for CRDictionaryElement();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v39 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v37 = &v36 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  v20 = *a3;
  v21 = a3[1];
  v22 = *(a3 + 16);
  v23 = *v5;
  swift_beginAccess();
  v24 = *(v23 + 40);
  v25 = *(TupleTypeMetadata2 + 48);
  v26 = a4[5];

  v27 = v38;
  sub_1AE23CB9C();

  v28 = v37;
  (*(v12 + 16))(v37, v19, TupleTypeMetadata2);
  v29 = *(TupleTypeMetadata2 + 48);
  v30 = *(v27 - 8);
  v31 = v28;
  (*(v30 + 32))(v40, v28, v27);
  v32 = v39;
  (*(v12 + 32))(v39, v19, TupleTypeMetadata2);
  v33 = &v32[*(TupleTypeMetadata2 + 48)];
  (*(*(v41 - 8) + 16))(v42, &v33[*(v10 + 36)]);
  v34 = *(*(v10 - 8) + 8);
  v34(v33, v10);
  (*(v30 + 8))(v32, v27);
  return (v34)(&v31[v29], v10);
}

uint64_t CRDictionary.index(after:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  v9 = *v3;
  swift_beginAccess();
  v10 = *(v9 + 40);
  v12 = a2[2];
  v11 = a2[3];
  v13 = a2[6];
  type metadata accessor for CRDictionaryElement();
  v14 = a2[5];

  v15 = sub_1AE23CA8C();
  v17 = v16;
  LOBYTE(v7) = v18;

  *a3 = v15;
  *(a3 + 8) = v17;
  *(a3 + 16) = v7 & 1;
  return result;
}

void CRDictionary.merge(_:)(void *a1@<X0>, _OWORD *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v49 = a3;
  v47 = type metadata accessor for FinalizedTimestamp(0);
  v7 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v46 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v46 - v16;
  v51[0] = *a1;
  v17 = v51[0];
  if (*v4 == v51[0])
  {
    if (qword_1ED9670C0 != -1)
    {
      swift_once();
    }

    v28 = word_1ED96F220;
    v29 = HIBYTE(word_1ED96F220);
    v30 = byte_1ED96F222;
  }

  else
  {
    WitnessTable = swift_getWitnessTable();
    v19 = sub_1AE1755D4(v51, a2, WitnessTable);
    v20 = *v4;
    swift_beginAccess();
    v21 = *(v20 + 24);
    v22 = *(v20 + 32);
    swift_beginAccess();
    v24 = v19[3];
    v23 = v19[4];
    v50[0] = 0;

    sub_1ADF6457C(v25, v50, v22);
    sub_1ADF6457C(v24, v50, v21);

    if (v50[0] == 3)
    {
      sub_1ADFA9038(a2);
      v31 = *v4;

      sub_1AE16F8E0(v19, v50);

      v28 = LOBYTE(v50[0]);
      v29 = BYTE1(v50[0]);
      v30 = BYTE2(v50[0]);
    }

    else
    {
      if (v50[0] == 2)
      {
        if (qword_1EB5B9908 != -1)
        {
          swift_once();
        }

        v27 = &word_1EB5D7508;
      }

      else if (v50[0] == 1)
      {

        sub_1ADFABF30(v26, a2);
        if (qword_1EB5B9910 != -1)
        {
          swift_once();
        }

        v27 = &word_1EB5D750B;
      }

      else
      {
        if (qword_1ED9670C0 != -1)
        {
          swift_once();
        }

        v27 = &word_1ED96F220;
      }

      v28 = *v27;
      v29 = *(v27 + 1);
      v30 = *(v27 + 2);
    }
  }

  v32 = v28 > 1;
  if (v29 > 1)
  {
    v32 = 1;
  }

  if (v28 > 1)
  {
    if (v28 != 2)
    {
LABEL_23:
      if (v32)
      {
        v33 = *v4;
        goto LABEL_28;
      }

      goto LABEL_35;
    }
  }

  else if (v28)
  {
    goto LABEL_23;
  }

  if (v32)
  {
    v33 = *v4;
    if ((v29 & 0xFFFFFFFD) == 0)
    {
      v42 = qword_1ED96F250;
      swift_beginAccess();
      v43 = v17 + v42;
      v44 = v46;
      sub_1ADDD2658(v43, v46, type metadata accessor for FinalizedTimestamp);
      v45 = qword_1ED96F250;
      swift_beginAccess();
      sub_1ADFAF2E4(v44, v33 + v45);
      goto LABEL_34;
    }

LABEL_28:
    v34 = qword_1ED96F250;
    swift_beginAccess();
    sub_1ADDD2658(v33 + v34, v12, type metadata accessor for FinalizedTimestamp);
    v35 = qword_1ED96F250;
    swift_beginAccess();
    sub_1ADDD2658(v17 + v35, v9, type metadata accessor for FinalizedTimestamp);
    v36 = *(v47 + 20);
    v37 = *&v9[v36];
    v38 = *&v12[v36];
    if (v37 == v38)
    {
      if ((sub_1ADF5EB00() & 1) == 0)
      {
LABEL_30:
        v39 = v12;
LABEL_33:
        sub_1ADDD2728(v39, type metadata accessor for FinalizedTimestamp);
        v40 = v48;
        sub_1ADE172E4(v9, v48);
        swift_beginAccess();
        sub_1ADFAF2E4(v40, v33 + v34);
LABEL_34:
        swift_endAccess();
        goto LABEL_35;
      }
    }

    else if (v37 >= v38)
    {
      goto LABEL_30;
    }

    v39 = v9;
    v9 = v12;
    goto LABEL_33;
  }

LABEL_35:
  v41 = v49;
  *v49 = v28;
  v41[1] = v29;
  v41[2] = v30;
}

uint64_t CRDictionary.newRefs(from:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *v2;
  v5 = *(a2 + 24);
  if ((*(*(*(a2 + 48) + 8) + 80))())
  {
    return sub_1AE1705C0(v3);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t CRDictionary.finalizeTimestamps(_:)(uint64_t a1, _OWORD *a2)
{
  v3 = v2;
  v6 = *v2;

  v7 = sub_1ADDFB6C0();

  if (v7)
  {
    sub_1ADFA9038(a2);
    v9 = *v3;
    return sub_1AE1741D4(a1);
  }

  return result;
}

uint64_t CRDictionary.description.getter(void *a1)
{
  v3 = sub_1AE23BFEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_1AE23DA2C();
  v29 = v27;
  v30 = v28;
  MEMORY[0x1B26FB670](0x6F69746369445243, 0xED0000287972616ELL);
  v9 = *(v8 + 16);
  v10 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  swift_beginAccess();
  (*(v4 + 16))(v7, v9 + v10, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB3D0, &unk_1AE24C540);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AE241900;
  sub_1AE23BFCC();
  v12 = MEMORY[0x1E69E7508];
  v13 = MEMORY[0x1E69E7558];
  *(v11 + 56) = MEMORY[0x1E69E7508];
  *(v11 + 64) = v13;
  *(v11 + 32) = v14;
  sub_1AE23BFCC();
  *(v11 + 96) = v12;
  *(v11 + 104) = v13;
  *(v11 + 72) = v15;
  v16 = sub_1AE23CD3C();
  v18 = v17;
  (*(v4 + 8))(v7, v3);
  MEMORY[0x1B26FB670](v16, v18);

  MEMORY[0x1B26FB670](0x6E6F697372657620, 0xEB000000005B203ALL);
  swift_beginAccess();
  v26 = *(v8 + 24);
  v19 = CRVersion.description.getter();
  MEMORY[0x1B26FB670](v19);

  MEMORY[0x1B26FB670](0x7265736E69202C5DLL, 0xEF203A736E6F6974);
  swift_beginAccess();
  v25[1] = *(v8 + 40);
  v21 = a1[2];
  v20 = a1[3];
  v22 = a1[6];
  type metadata accessor for CRDictionaryElement();
  v23 = a1[5];
  sub_1AE23CB1C();
  swift_getWitnessTable();
  sub_1AE23DFDC();
  MEMORY[0x1B26FB670](93, 0xE100000000000000);
  return v29;
}

uint64_t CRDictionary.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = *v4;
  v22 = *a2;
  v23 = v8;

  CRDictionary.finalizeTimestamps(_:)(a1, a3);
  CRDictionary.finalizeTimestamps(_:)(a1, a3);
  v9 = v23;
  v21[3] = v23;
  CRDictionary.version.getter(&v18);
  v10 = v18;
  v21[2] = v22;
  CRDictionary.version.getter(v21);
  v11 = v21[0];
  if (sub_1ADF637A8(*(&v10 + 1), v21[1]))
  {
  }

  else
  {
    v12 = sub_1ADF637A8(v10, v11);

    if ((v12 & 1) == 0)
    {

      v16 = a3[2];
      v18 = a3[1];
      v19 = v16;
      v20 = a3[3];
      v14 = type metadata accessor for CRDictionary.MergeableDelta();
      v15 = 1;
      return (*(*(v14 - 8) + 56))(a4, v15, 1);
    }
  }

  sub_1ADFA5020(a1, v9, a4);

  v13 = a3[2];
  v18 = a3[1];
  v19 = v13;
  v20 = a3[3];
  v14 = type metadata accessor for CRDictionary.MergeableDelta();
  v15 = 0;
  return (*(*(v14 - 8) + 56))(a4, v15, 1);
}

uint64_t CRDictionary.canMerge(delta:)(uint64_t *a1)
{
  v2 = *v1;
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;

  LOBYTE(v3) = sub_1AE17261C(v5);

  return v3 & 1;
}

uint64_t CRDictionary.merge(delta:)(void *a1, _OWORD *a2)
{
  v27 = type metadata accessor for FinalizedTimestamp(0);
  v5 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28 = &v26 - v9;
  sub_1ADFA9038(a2);
  v10 = *v2;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  v15 = a1[4];
  v14 = a1[5];
  *&v29 = *a1;
  *(&v29 + 1) = v11;
  *&v30 = v12;
  *(&v30 + 1) = v13;
  *&v31 = v15;
  *(&v31 + 1) = v14;

  v16 = sub_1AE1727BC(&v29);

  if (v16)
  {
    v17 = qword_1ED96F250;
    swift_beginAccess();
    sub_1ADDD2658(v10 + v17, v7, type metadata accessor for FinalizedTimestamp);
    v18 = a2[2];
    v29 = a2[1];
    v30 = v18;
    v31 = a2[3];
    v19 = a1 + *(type metadata accessor for CRDictionary.MergeableDelta() + 68);
    v20 = *(v27 + 20);
    v21 = *(v19 + v20);
    v22 = *&v7[v20];
    if (v21 == v22)
    {
      if ((sub_1ADF5EB00() & 1) == 0)
      {
LABEL_4:
        sub_1ADDD2728(v7, type metadata accessor for FinalizedTimestamp);
        v23 = v28;
        sub_1ADDD2658(v19, v28, type metadata accessor for FinalizedTimestamp);
LABEL_7:
        swift_beginAccess();
        sub_1ADFAF2E4(v23, v10 + v17);
        swift_endAccess();
        return v16 & 1;
      }
    }

    else if (v21 >= v22)
    {
      goto LABEL_4;
    }

    v24 = v7;
    v23 = v28;
    sub_1ADE172E4(v24, v28);
    goto LABEL_7;
  }

  return v16 & 1;
}

void CRDictionary.observableDifference(from:with:)(void (**a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v151 = a1;
  v160[7] = *MEMORY[0x1E69E9840];
  v8 = a3[6];
  v9 = a3[3];
  v121 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v120 = &v115 - v12;
  v136 = v9;
  v13 = type metadata accessor for CRDictionaryElement();
  v127 = sub_1AE23D7CC();
  v14 = *(v127 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v17 = &v115 - v16;
  v135 = *(v13 - 8);
  v18 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v126 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v117 = &v115 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v132 = &v115 - v24;
  v25 = a3[2];
  v134 = *(v25 - 8);
  v26 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v133 = &v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v148 = &v115 - v30;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v146 = sub_1AE23D7CC();
  v32 = *(*(v146 - 8) + 64);
  MEMORY[0x1EEE9AC00](v146);
  MEMORY[0x1EEE9AC00](v33);
  v153 = &v115 - v36;
  v37 = *v151;
  v38 = *v4;
  v122 = a2;
  if (!*(a2 + 24) && v38 == v37)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    goto LABEL_40;
  }

  v144 = v34;
  v141 = v17;
  v116 = a4;
  v130 = v14;
  v39 = a3[5];
  v40 = v37;
  v41 = v35;
  v160[0] = sub_1AE23C9EC();
  v159 = sub_1AE23C9EC();
  v158 = sub_1AE23C9CC();
  MEMORY[0x1EEE9AC00](v158);
  v42 = v136;
  *(&v115 - 8) = v25;
  *(&v115 - 7) = v42;
  *(&v115 - 6) = a3[4];
  *(&v115 - 5) = v39;
  v43 = a3[7];
  *(&v115 - 4) = v8;
  *(&v115 - 3) = v43;
  *(&v115 - 2) = v160;
  MEMORY[0x1EEE9AC00](v44);
  *(&v115 - 8) = v25;
  *(&v115 - 7) = v45;
  *(&v115 - 6) = v46;
  *(&v115 - 5) = v39;
  v149 = v39;
  *(&v115 - 4) = v8;
  *(&v115 - 3) = v47;
  v125 = v47;
  *(&v115 - 2) = &v159;
  sub_1AE1710B0(v40, v122, sub_1ADFB0284, v48, sub_1ADFAF388, (&v115 - 10));
  swift_beginAccess();
  v49 = *(v40 + 40);
  v50 = *(v49 + 64);
  v145 = v49 + 64;
  v51 = 1 << *(v49 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & v50;
  v131 = v49;

  v140 = v38;
  swift_beginAccess();
  v54 = 0;
  v119 = (v51 + 63) >> 6;
  v55 = TupleTypeMetadata2;
  v143 = TupleTypeMetadata2 - 8;
  v147 = (v134 + 16);
  v128 = v135 + 16;
  v150 = (v135 + 32);
  v151 = (v134 + 32);
  v142 = (v41 + 32);
  v139 = (v135 + 48);
  v138 = (v135 + 8);
  v137 = (v134 + 8);
  v118 = v121 + 40;
  v124 = (v130 + 8);
  v56 = v117;
  v130 = v25;
  v129 = v13;
  v57 = v133;
  v152 = TupleTypeMetadata2;
  while (1)
  {
    v59 = v153;
    if (!v53)
    {
      if (v119 <= v54 + 1)
      {
        v61 = v54 + 1;
      }

      else
      {
        v61 = v119;
      }

      v62 = v61 - 1;
      while (1)
      {
        v60 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          break;
        }

        if (v60 >= v119)
        {
          v78 = v25;
          v53 = 0;
          v80 = 1;
          v54 = v62;
          v75 = v144;
          goto LABEL_19;
        }

        v53 = *(v145 + 8 * v60);
        ++v54;
        if (v53)
        {
          v54 = v60;
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_42;
    }

    v60 = v54;
LABEL_18:
    v63 = __clz(__rbit64(v53));
    v53 &= v53 - 1;
    v64 = v63 | (v60 << 6);
    v65 = v131;
    v66 = v134;
    v67 = v148;
    v68 = v130;
    (*(v134 + 16))(v148, *(v131 + 48) + *(v134 + 72) * v64, v130);
    v69 = *(v65 + 56);
    v70 = v135;
    v71 = v132;
    v13 = v129;
    (*(v135 + 16))(v132, v69 + *(v135 + 72) * v64, v129);
    v72 = *(v152 + 48);
    v73 = *(v66 + 32);
    v74 = v68;
    v75 = v144;
    v76 = v67;
    v77 = v152;
    v78 = v74;
    v73(v144, v76);
    v79 = *(v70 + 32);
    v55 = v77;
    v79(v75 + v72, v71, v13);
    v80 = 0;
    v57 = v133;
    v59 = v153;
LABEL_19:
    v81 = *(v55 - 8);
    (*(v81 + 56))(v75, v80, 1, v55);
    (*v142)(v59, v75, v146);
    if ((*(v81 + 48))(v59, 1, v55) == 1)
    {
      break;
    }

    v82 = *(v55 + 48);
    v25 = v78;
    (*v151)(v57, v59, v78);
    v83 = *v150;
    (*v150)(v56, &v59[v82], v13);
    v84 = *(v140 + 5);

    v85 = v141;
    sub_1AE23CB7C();

    if ((*v139)(v85, 1, v13) == 1)
    {
      (*v138)(v56, v13);
      (*v137)(v57, v78);
      (*v124)(v85, v127);
      goto LABEL_35;
    }

    v86 = v126;
    v83();
    v87 = *(v13 + 36);
    if (sub_1AE23CCBC())
    {
      goto LABEL_7;
    }

    v88 = *(type metadata accessor for FinalizedTimestamp(0) + 20);
    v89 = *&v56[v88];
    v90 = *&v86[v88];
    if (v89 == v90)
    {
      v156 = sub_1AE23BFCC();
      LOWORD(v157) = v91;
      BYTE2(v157) = v92;
      BYTE3(v157) = v93;
      BYTE4(v157) = v94;
      BYTE5(v157) = v95;
      BYTE6(v157) = v96;
      HIBYTE(v157) = v97;
      v154 = sub_1AE23BFCC();
      LOWORD(v155) = v98;
      BYTE2(v155) = v99;
      BYTE3(v155) = v100;
      BYTE4(v155) = v101;
      BYTE5(v155) = v102;
      BYTE6(v155) = v103;
      HIBYTE(v155) = v104;
      v105 = bswap64(v156);
      v106 = bswap64(v154);
      if (v105 == v106 && (v105 = bswap64(v157), v106 = bswap64(v155), v105 == v106))
      {
        v107 = 0;
      }

      else if (v105 < v106)
      {
        v107 = -1;
      }

      else
      {
        v107 = 1;
      }

      v56 = v117;
      if ((v107 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

LABEL_7:
      (*v147)(v148, v57, v78);
      (*(v121 + 40))(&v56[v87], v122, v136);
      sub_1AE23CB1C();
      v55 = v152;
      sub_1AE23CB8C();
      v58 = *v138;
      (*v138)(v86, v13);
      v58(v56, v13);
      (*v137)(v57, v78);
    }

    else
    {
      if (v89 < v90)
      {
        goto LABEL_7;
      }

LABEL_34:
      v108 = *v138;
      (*v138)(v86, v13);
      v108(v56, v13);
      (*v137)(v57, v78);
LABEL_35:
      v55 = v152;
    }
  }

  v109 = v160[0];
  if (sub_1AE23D32C() > 0 || sub_1AE23D32C() > 0 || sub_1AE23CA7C() >= 1)
  {
    v111 = v158;
    v110 = v159;
    v112 = v116;
    *v116 = v109;
    v112[1] = v110;
    v112[2] = v111;
    goto LABEL_40;
  }

LABEL_42:

  v114 = v116;
  *v116 = 0;
  v114[1] = 0;
  v114[2] = 0;
LABEL_40:
  v113 = *MEMORY[0x1E69E9840];
}

uint64_t CRDictionary.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    sub_1ADE64D2C(a2, a3, a4, a5, a6, &v19);
    swift_setDeallocating();
    v15 = *(inited + 16);

    if (!v7)
    {
      *a7 = v19;
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v17 = 0xD000000000000014;
    *(v17 + 8) = 0x80000001AE25FB50;
    *(v17 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

uint64_t CRDictionary.encode(to:)(uint64_t a1, void *a2)
{
  v5 = *v2;
  result = sub_1ADDFCC74();
  if (!v3)
  {
    v13 = v5;
    v7 = a2[2];
    v8 = a2[3];
    v9 = a2[4];
    v10 = a2[5];
    v12 = a2[6];
    v11 = a2[7];

    sub_1ADE6BD38(&v13);
  }

  return result;
}

void *sub_1ADFABEA4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  return CRDictionary.init(defaultState:)(a2);
}

BOOL CRDictionary.isDefaultState.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return !*(*(v1 + 32) + 16) && *(*(v1 + 24) + 16) == 0;
}

uint64_t sub_1ADFABF30(uint64_t a1, _OWORD *a2)
{
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  type metadata accessor for CRDictionaryRef();
  v3 = swift_dynamicCastClassUnconditional();
  v4 = *v2;

  *v2 = v3;
  return result;
}

uint64_t sub_1ADFABF9C()
{
  sub_1ADFAEA70();
}

uint64_t sub_1ADFABFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  (*(v4 + 16))(v7, v9);
  sub_1AE23D38C();
  sub_1AE23D33C();
  return (*(v4 + 8))(v11, a3);
}

uint64_t sub_1ADFAC0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v38 = a8;
  v42 = a9;
  v17 = type metadata accessor for FinalizedTimestamp(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v39 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADFAEE10(a1, v40);
  v20 = type metadata accessor for CRDictionaryElement();

  WitnessTable = swift_getWitnessTable();
  sub_1AE174904(a1, a2, a3, v20, a5, a6, WitnessTable, v41);
  if (v9)
  {

    return sub_1ADFAECE8(a1);
  }

  else
  {
    v33 = a4;
    v34 = a5;
    v35 = a6;
    v36 = a7;
    sub_1ADFAECE8(a1);
    v23 = v41[1];
    v24 = v41[2];
    v25 = v41[3];
    v26 = v41[4];
    v27 = v41[5];
    v28 = v42;
    v37 = v41[0];
    *v42 = v41[0];
    v28[1] = v23;
    v28[2] = v24;
    v28[3] = v25;
    if (*(a1 + 56))
    {
      v29 = 0;
    }

    else
    {
      v29 = *(a1 + 40);
    }

    if (*(a1 + 56))
    {
      v30 = 0;
    }

    else
    {
      v30 = *(a1 + 48);
    }

    v28[4] = v26;
    v28[5] = v27;
    v31 = v39;
    sub_1ADE058D4(v29, v30, a2, v39);
    v40[0] = a3;
    v40[1] = v33;
    v40[2] = v34;
    v40[3] = v35;
    v40[4] = v36;
    v40[5] = v38;
    v32 = type metadata accessor for CRDictionary.MergeableDelta();
    return sub_1ADE172E4(v31, v42 + *(v32 + 68));
  }
}

uint64_t CRDictionary.MergeableDelta.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *v41 = a2;
  *&v41[8] = a3;
  *&v41[16] = a4;
  *&v41[24] = a5;
  *&v41[32] = a6;
  *&v41[40] = a7;
  v39 = a7;
  v15 = type metadata accessor for CRDictionary.MergeableDelta();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = (&v36 - v19);
  if (*(a1 + 64))
  {
    v36 = v18;
    v37 = v17;
    v38 = a8;
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    v22 = *(sub_1ADDE78C8() + 16);
    if ((~v22 & 0xF000000000000007) != 0 && (v22 & 0xF000000000000000) == 0x1000000000000000)
    {
      v32 = (v22 & 0xFFFFFFFFFFFFFFFLL);
      v33 = v32[3];
      *&v41[16] = v32[2];
      *&v41[32] = v33;
      v34 = v32[5];
      *&v41[48] = v32[4];
      v42 = v34;
      *v41 = v32[1];
      sub_1ADFAEE10(v41, &v40);

      v29 = v42;
      v28 = *&v41[40];
      v27 = v41[56];
      v26 = *&v41[24];
      v25 = *&v41[8];
      v24 = *v41;
    }

    else
    {

      v24 = 0;
      v25 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
      v26 = 0uLL;
      v27 = 1;
      v28 = 0uLL;
      v29 = 0uLL;
    }

    v41[0] = v27;
    v43 = v24;
    v44 = v25;
    v45 = v26;
    v46 = v28;
    v47 = v27;
    v48 = v29;
    v35 = v49;
    sub_1ADFAC0FC(&v43, a1, a2, a3, a4, a5, a6, v39, v20);

    if (!v35)
    {
      return (*(v36 + 32))(v38, v20, v37);
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v30 = 0xD000000000000014;
    *(v30 + 8) = 0x80000001AE25FB50;
    *(v30 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

double sub_1ADFAC5BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *v3;
  v20 = v3[1];
  v21 = v3[2];
  v22 = v3[3];
  v23 = v3[4];
  v24 = v3[5];
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 48);
  type metadata accessor for CRDictionaryElement();

  swift_getWitnessTable();
  v18 = *(a2 + 32);
  v8 = type metadata accessor for CRSetRefMergeableDelta();
  sub_1AE174F20(a1, v8, v25);

  if (!v17)
  {
    v10 = v3 + *(a2 + 68);
    v11 = sub_1ADDF66A8(v10);
    v12 = *(v10 + *(type metadata accessor for FinalizedTimestamp(0) + 20));
    v13 = v26;
    v14 = v25[1];
    *a3 = v25[0];
    *(a3 + 16) = v14;
    *(a3 + 32) = v13;
    *(a3 + 40) = v11;
    *(a3 + 48) = v12;
    *(a3 + 56) = 0;
    result = v27[0];
    *(a3 + 57) = *v27;
    *(a3 + 72) = *(&v27[1] + 7);
  }

  return result;
}

uint64_t CRDictionary.MergeableDelta.encode(to:)(uint64_t a1, uint64_t a2)
{
  result = sub_1ADDFCC74();
  if (!v2)
  {

    sub_1ADFAC5BC(a1, a2, v6);
    swift_beginAccess();
    sub_1AE1B7950(v6);
    swift_endAccess();
  }

  return result;
}

uint64_t CRDictionary.MergeableDelta.visitReferences(_:)(void *a1, void *a2)
{
  v86 = a1;
  v4 = a2[3];
  v80 = a2[6];
  v81 = v4;
  v5 = type metadata accessor for CRDictionaryElement.Delta();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v68 - v11;
  v82 = a2;
  v12 = a2[2];
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v74 = &v68 - v19;
  v95 = v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v89 = sub_1AE23D7CC();
  v22 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v90 = &v68 - v26;
  v27 = *(v2 + 40);
  v28 = *(v27 + 64);
  v70 = v27 + 64;
  v29 = 1 << *(v27 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v28;
  v69 = (v29 + 63) >> 6;
  v92 = TupleTypeMetadata2;
  v88 = TupleTypeMetadata2 - 8;
  v32 = v9;
  v72 = v13 + 16;
  v71 = v6 + 16;
  v93 = (v6 + 32);
  v94 = (v13 + 32);
  v87 = (v25 + 32);
  v78 = v6;
  v83 = (v6 + 8);
  v75 = v13;
  v85 = (v13 + 8);
  v79 = v27;

  v34 = 0;
  v77 = v17;
  v73 = v9;
  v84 = v12;
  if (v31)
  {
    while (1)
    {
      v35 = v34;
LABEL_12:
      v41 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v42 = v41 | (v35 << 6);
      v43 = v79;
      v44 = v75;
      v45 = v74;
      (*(v75 + 16))(v74, *(v79 + 48) + *(v75 + 72) * v42, v12);
      v46 = v78;
      v47 = *(v43 + 56) + *(v78 + 72) * v42;
      v48 = v76;
      v49 = v95;
      (*(v78 + 16))(v76, v47, v95);
      v38 = v92;
      v50 = *(v92 + 48);
      v51 = *(v44 + 32);
      v39 = v91;
      v51(v91, v45, v12);
      (*(v46 + 32))(&v39[v50], v48, v49);
      v52 = 0;
      v37 = v35;
      v17 = v77;
      v32 = v73;
      v40 = v90;
LABEL_13:
      v53 = *(v38 - 8);
      (*(v53 + 56))(v39, v52, 1, v38);
      (*v87)(v40, v39, v89);
      if ((*(v53 + 48))(v40, 1, v38) == 1)
      {
      }

      v96 = v37;
      v54 = *(v38 + 48);
      v55 = v84;
      (*v94)(v17, v40, v84);
      v56 = v32;
      v57 = v32;
      v58 = v95;
      (*v93)(v57, &v40[v54]);
      v59 = v86;
      v60 = v17;
      v62 = v86[3];
      v61 = v86[4];
      __swift_project_boxed_opaque_existential_1(v86, v62);
      if ((*(v61 + 8))(v62, v61) & 1) != 0 || ((*(*(v82[4] + 8) + 48))(v59, v55), v63 = v59[3], v64 = v59[4], __swift_project_boxed_opaque_existential_1(v59, v63), ((*(v64 + 8))(v63, v64)))
      {

        (*v83)(v56, v58);
        return (*v85)(v60, v55);
      }

      v65 = v58;
      v66 = *(v58 + 36);
      v67 = sub_1AE23D7CC();
      v32 = v56;
      Optional<A>.visitReferences(_:)(v59, v67, v80);
      (*v83)(v56, v65);
      result = (*v85)(v60, v55);
      v34 = v96;
      v12 = v55;
      v17 = v60;
      if (!v31)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v69 <= v34 + 1)
    {
      v36 = v34 + 1;
    }

    else
    {
      v36 = v69;
    }

    v37 = v36 - 1;
    v39 = v91;
    v38 = v92;
    v40 = v90;
    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= v69)
      {
        v31 = 0;
        v52 = 1;
        goto LABEL_13;
      }

      v31 = *(v70 + 8 * v35);
      ++v34;
      if (v31)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1ADFACFA4@<X0>(void *a1@<X8>)
{
  CRDictionary.makeIterator()(a1);
  v2 = *v1;
}

uint64_t sub_1ADFACFD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1ADFAD024()
{
  swift_getWitnessTable();
  v1 = sub_1AE23836C();
  v2 = *v0;

  return v1;
}

uint64_t sub_1ADFAD0F0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *a1;
  v12 = a1[1];
  v13 = *(a1 + 16);
  v14 = *a2;
  v15 = a2[1];
  v16 = *(a2 + 16);
  v17 = type metadata accessor for CRDictionaryElement();

  return a9(v11, v12, v13, v14, v15, v16, a3, v17, a6);
}

uint64_t CRDictionary.Index.hash(into:)(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 16);
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[6];
  type metadata accessor for CRDictionaryElement();
  v10 = a2[5];

  return sub_1AE23CA6C();
}

uint64_t CRDictionary.Index.hashValue.getter(void *a1)
{
  v3 = *(v1 + 16);
  v6 = *v1;
  v7 = v3;
  sub_1AE23E31C();
  CRDictionary.Index.hash(into:)(v5, a1);
  return sub_1AE23E34C();
}

uint64_t sub_1ADFAD290(uint64_t a1, void *a2)
{
  sub_1AE23E31C();
  CRDictionary.Index.hash(into:)(v4, a2);
  return sub_1AE23E34C();
}

uint64_t CRDictionary.count.getter(void *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[6];
  type metadata accessor for CRDictionaryElement();
  v8 = a1[5];

  v9 = sub_1AE23CA7C();

  return v9;
}

uint64_t CRDictionary.insertionCount.getter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v9 = *(v3 + 40);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 48);
  v7 = *(a1 + 40);
  type metadata accessor for CRDictionaryElement();
  sub_1AE23CB1C();

  swift_getWitnessTable();
  sub_1AE23CF2C();

  return v10;
}

uint64_t sub_1ADFAD478@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for CRDictionaryElement();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(*(TupleTypeMetadata2 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = v21 - v12;
  v14 = *a1;
  (*(v15 + 16))(v21 - v12, a2, TupleTypeMetadata2, v11);
  v16 = &v13[*(TupleTypeMetadata2 + 48)];
  v17 = *&v16[*(v8 + 40)];
  v18 = *(*(v8 - 8) + 8);

  v18(v16, v8);
  v19 = *(v17 + 16);

  if (__OFADD__(v14, v19))
  {
    __break(1u);
  }

  else
  {
    result = (*(*(a3 - 8) + 8))(v13, a3);
    *a4 = v14 + v19;
  }

  return result;
}

void (*sub_1ADFAD628(uint64_t *a1, uint64_t *a2, void *a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v10 = a3[2];
  v9 = a3[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[4] = TupleTypeMetadata2;
  v12 = *(TupleTypeMetadata2 - 8);
  v8[5] = v12;
  if (v6)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v14 = v13;
  v8[6] = v13;
  v15 = sub_1ADFAD834(v8, a2, a3);
  v17 = v16;
  v8[7] = v15;
  (*(*(v10 - 8) + 16))(v14);
  (*(*(v9 - 8) + 16))(v14 + *(TupleTypeMetadata2 + 48), v17, v9);
  return sub_1ADFAD7BC;
}

void sub_1ADFAD7BC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_1ADFAD834(uint64_t *a1, uint64_t *a2, void *a3))(void *a1)
{
  v6 = a3[2];
  v7 = a3[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v9 = *(TupleTypeMetadata2 - 8);
  a1[1] = v9;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  a1[2] = v10;
  CRDictionary.subscript.getter(v10, v10 + *(TupleTypeMetadata2 + 48), a2, a3);
  return sub_1ADE022F8;
}

uint64_t sub_1ADFAD944(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v2 = v6[0];
  v6[1] = v3;
  v7 = v4;
  CRDictionary.index(after:)(v6, a2, a1);

  return sub_1ADDFFBC8(v2, v3, v4);
}

__n128 sub_1ADFAD9A8@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, unsigned int (*a5)(char *, uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v84 = a4;
  v85 = a6;
  v82 = a5;
  v83 = a3;
  v108 = a2;
  v78 = a7;
  v77 = type metadata accessor for FinalizedTimestamp(0);
  v10 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AE23D7CC();
  v80 = *(v12 - 8);
  v13 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v74 - v14;
  v81 = *(a5 - 1);
  v16 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v79 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1AE23BFEC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *v7;
  v106 = 1;
  v24 = a1[2];
  v25 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  swift_beginAccess();
  v26 = v24 + v25;
  v27 = v108;
  (*(v20 + 16))(v23, v26, v19);
  v88 = sub_1ADDF66A8(v23);
  v28 = v19;
  v29 = v80;
  (*(v20 + 8))(v23, v28);
  swift_beginAccess();
  v30 = a1[4];
  v95 = a1[3];
  v96 = v30;

  v86 = sub_1ADDF5C7C(v27);
  v32 = v31;

  sub_1ADE42CB8(0);
  (*(v29 + 16))(v15, v83, v12);
  v33 = v81;
  v34 = v82;
  if ((*(v81 + 48))(v15, 1) == 1)
  {
    v83 = v32;
    (*(v29 + 8))(v15, v12);
    v35 = swift_beginAccess();
    v95 = a1[5];
    MEMORY[0x1EEE9AC00](v35);
    v36 = v84;
    v37 = v85;
    v39 = v84[2];
    v38 = v84[3];
    *(&v74 - 10) = v39;
    *(&v74 - 9) = v38;
    v40 = v36[4];
    v41 = v36[5];
    *(&v74 - 8) = v34;
    *(&v74 - 7) = v40;
    v42 = v36[6];
    v43 = v36[7];
    *(&v74 - 6) = v41;
    *(&v74 - 5) = v42;
    *(&v74 - 4) = v43;
    *(&v74 - 3) = v37;
    *(&v74 - 2) = v108;
    MEMORY[0x1EEE9AC00](v44);
    *(&v74 - 10) = v39;
    *(&v74 - 9) = v45;
    *(&v74 - 8) = v34;
    *(&v74 - 7) = v46;
    *(&v74 - 6) = v41;
    *(&v74 - 5) = v47;
    *(&v74 - 4) = v48;
    *(&v74 - 3) = v49;
    *(&v74 - 2) = sub_1ADFB00F0;
    *(&v74 - 1) = v50;
    type metadata accessor for CRDictionaryElement();
    v51 = sub_1AE23CB1C();

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    WitnessTable = swift_getWitnessTable();
    v54 = v87;
    v55 = sub_1ADE08EB0(sub_1ADFB012C, (&v74 - 12), v51, &type metadata for Proto_Set.Element, v52, WitnessTable, MEMORY[0x1E69E7288], &v90);
    if (v54)
    {

      v32 = v83;
LABEL_5:
      v95 = v88;
      v96 = MEMORY[0x1E69E7CC0];
      v97 = MEMORY[0x1E69E7CC0];
      v98 = v86;
      v100 = 0;
      v101 = 0;
      v99 = v32;
      v102 = v106;
      *v103 = v107[0];
      *&v103[3] = *(v107 + 3);
      v104 = 0;
      v105 = 0;
      sub_1ADFAECE8(&v95);
      return result;
    }

    v65 = v55;

    v32 = v83;
  }

  else
  {
    v56 = v79;
    v57 = v15;
    v58 = v34;
    v59 = (*(v33 + 32))(v79, v57, v34);
    v83 = &v74;
    MEMORY[0x1EEE9AC00](v59);
    v60 = v84[7];
    *(&v74 - 6) = v34;
    *(&v74 - 5) = v60;
    v61 = v85;
    v62 = v108;
    *(&v74 - 4) = v85;
    *(&v74 - 3) = v62;
    *(&v74 - 2) = a1;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    v64 = v87;
    v65 = sub_1ADE13AA8(sub_1ADFB0170, (&v74 - 8), v58, &type metadata for Proto_Set.Element, v63, v61, MEMORY[0x1E69E7288], &v95);
    (*(v33 + 8))(v56, v58);
    if (v64)
    {
      goto LABEL_5;
    }
  }

  v67 = qword_1ED96F250;
  v68 = v75;
  swift_beginAccess();
  v69 = v76;
  sub_1ADDD2658(v68 + v67, v76, type metadata accessor for FinalizedTimestamp);
  v70 = sub_1ADDF66A8(v69);
  v71 = *(v69 + *(v77 + 20));
  sub_1ADDD2728(v69, type metadata accessor for FinalizedTimestamp);
  v106 = 0;
  *&v90 = v88;
  *(&v90 + 1) = v65;
  *(&v93 + 9) = v107[0];
  HIDWORD(v93) = *(v107 + 3);
  v91.n128_u64[0] = MEMORY[0x1E69E7CC0];
  v91.n128_u64[1] = v86;
  *&v92 = v32;
  *(&v92 + 1) = v70;
  *&v93 = v71;
  BYTE8(v93) = 0;
  v94 = 0uLL;
  v95 = v88;
  v96 = v65;
  v97 = MEMORY[0x1E69E7CC0];
  v98 = v86;
  v99 = v32;
  v100 = v70;
  v101 = v71;
  v102 = 0;
  *v103 = v107[0];
  *&v103[3] = *(v107 + 3);
  v104 = 0;
  v105 = 0;
  sub_1ADFAEE10(&v90, &v89);
  sub_1ADFAECE8(&v95);
  v72 = v93;
  v73 = v78;
  *(v78 + 32) = v92;
  *(v73 + 48) = v72;
  *(v73 + 64) = v94;
  result = v91;
  *v73 = v90;
  *(v73 + 16) = result;
  return result;
}

uint64_t sub_1ADFAE100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v26 = a9;
  v27 = a1;
  v30 = a4;
  v31 = a5;
  v42 = a5;
  v32 = a6;
  v33 = a7;
  v34 = a8;
  v35 = a10;
  v28 = a10;
  v36 = a11;
  v37 = a12;
  v38 = a2;
  v39 = a3;
  result = sub_1ADE6B9FC(sub_1ADFB0198, v29);
  if (!v12)
  {
    v25 = result;
    v24[1] = v24;
    MEMORY[0x1EEE9AC00](result);
    v16 = sub_1ADE6B938(sub_1ADFB01D0);
    v17 = *(a2 + *(type metadata accessor for CRDictionaryElement() + 40));

    sub_1ADF78ED0(v18, &v41);
    v40 = v41;
    v19 = sub_1ADDF5C7C(a3);
    v21 = v20;

    v22 = v25;
    v23 = v26;
    *v26 = v16;
    v23[1] = v22;
    v23[2] = v19;
    v23[3] = v21;
    v23[4] = 0;
  }

  return result;
}

uint64_t sub_1ADFAE2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for FinalizedTimestamp(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CRDictionaryElement();
  (*(v11 + 16))(v15, a1 + *(v16 + 36), a4);
  sub_1ADDD2658(a1, v10, type metadata accessor for FinalizedTimestamp);
  sub_1ADDD22FC(v15, v10, a4, &v20);
  v17 = type metadata accessor for CRRegister();
  CRRegister.encode(to:)(a2, v17);
}

uint64_t sub_1ADFAE444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, _OWORD *a8@<X8>)
{
  v28 = a7;
  v29 = a5;
  v30 = a2;
  v31 = a4;
  v27 = a8;
  v11 = *a3;
  v12 = *a3;
  v13 = *(*a3 + 88);
  v14 = sub_1AE23D7CC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v26 - v16;
  swift_beginAccess();
  v18 = a3[5];
  v19 = *(v11 + 80);
  v20 = *(v11 + 104);

  sub_1AE23CB7C();
  v21 = *(v13 - 8);
  result = (*(v21 + 48))(v17, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v23 = v34;
    sub_1ADFAE100(a1, v17, v30, v19, *(v13 + 16), v31, *(v12 + 96), v20, v32, *(v13 + 24), v29, a6);
    result = (*(v21 + 8))(v17, v13);
    if (v23)
    {
      *v28 = v23;
    }

    else
    {
      v24 = v32[1];
      v25 = v27;
      *v27 = v32[0];
      v25[1] = v24;
      *(v25 + 4) = v33;
    }
  }

  return result;
}

double sub_1ADFAE674@<D0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  type metadata accessor for CRDictionaryElement();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  a2(v14, a1, a1 + *(TupleTypeMetadata2 + 48));
  if (v7)
  {
    *a7 = v7;
  }

  else
  {
    result = *v14;
    v13 = v14[1];
    *a3 = v14[0];
    *(a3 + 16) = v13;
    *(a3 + 32) = v15;
  }

  return result;
}

uint64_t CRDictionary<>.encode(to:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v41[0] = *v4;
  v8 = a2[3];
  v31 = a2[2];
  v32 = v8;
  v9 = a2[5];
  v33 = a2[4];
  v34 = a3;
  v10 = a2[6];
  v11 = a2[7];
  v35 = v9;
  v36 = v10;
  v37 = a4;
  v38 = v11;
  v20 = v31;
  v21 = v8;
  v22 = v33;
  v23 = a3;
  v24 = v9;
  v25 = v10;
  v26 = a4;
  v27 = v11;
  v28 = sub_1ADFAF414;
  v29 = &v30;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v41[0] = sub_1ADE08EB0(sub_1ADFAF4B4, v19, a2, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v14);
  sub_1AE23D11C();
  swift_getWitnessTable();
  v15 = sub_1AE23CA4C();
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE23E3BC();
  v41[7] = v15;
  __swift_mutable_project_boxed_opaque_existential_1(v41, v41[3]);
  sub_1AE23CB1C();
  v39 = a3;
  v40 = a4;
  swift_getWitnessTable();
  sub_1AE23E06C();

  return __swift_destroy_boxed_opaque_existential_1(v41);
}

void sub_1ADFAE974()
{
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  sub_1AE23DC5C();
  __break(1u);
}

uint64_t sub_1ADFAEA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v8 = sub_1AE23D7CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADFA9038(a3);
  v19 = *v3;
  (*(v14 + 16))(v18, a2, v13);
  (*(v9 + 16))(v12, a1, v8);
  return sub_1ADFA3E00(v12, v18);
}

double sub_1ADFAEC5C@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v8 = *(v2 + 16);
  v9 = *(v2 + 32);
  v10 = *(v2 + 48);
  v11 = *(v2 + 64);
  v6 = sub_1ADE6B938(sub_1ADFB0090);
  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    *a2 = v6;
    result = 0.0;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
  }

  return result;
}

uint64_t sub_1ADFAED3C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[8];
  v9 = v1[7];
  return sub_1ADFA718C(a1);
}

double sub_1ADFAED70@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = v3[2];
  v9 = v3[3];
  v11 = v3[8];
  v10 = v3[9];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11(v15, a1, a1 + *(TupleTypeMetadata2 + 48));
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    result = *v15;
    v14 = v15[1];
    *a3 = v15[0];
    *(a3 + 16) = v14;
    *(a3 + 32) = v16;
  }

  return result;
}

uint64_t sub_1ADFAEE78()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  return v1();
}

uint64_t sub_1ADFAEEA0(uint64_t a1, __int128 *a2, __int128 *a3, _BYTE *a4, uint64_t a5)
{
  v6 = v5;
  v34 = a4;
  v11 = type metadata accessor for FinalizedTimestamp(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a5 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a2;
  v22 = *(a1 + *(a5 + 40));
  v35 = *a3;
  v36 = v21;
  v23 = sub_1ADF772F0(&v36, v22, &v35);
  v24 = *(v11 + 20);
  v25 = *(v6 + v24);
  v26 = *(a1 + v24);
  if (v25 != v26)
  {
    if (v25 >= v26)
    {
      goto LABEL_3;
    }

LABEL_7:
    (*(v16 + 16))(v20, a1 + *(a5 + 36), v15);
    v30 = *(a5 + 36);
    (*(*(a5 + 24) + 16))(v6 + v30, v15);
    (*(v16 + 40))(v6 + v30, v20, v15);
    result = sub_1ADFAFFE4(a1, v6);
    v31 = v34;
    v32 = *v34 | (v23 >> 8);
    goto LABEL_10;
  }

  if (sub_1ADF5EB00())
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_1ADDD2658(v6, v14, type metadata accessor for FinalizedTimestamp);
  v27 = *&v14[*(v11 + 20)];
  if (v26 == v27)
  {
    v28 = sub_1ADF5EB00();
    sub_1ADDD2728(v14, type metadata accessor for FinalizedTimestamp);
    if ((v28 & 1) == 0)
    {
      return (*(*(a5 + 24) + 16))(a1 + *(a5 + 36), v15);
    }
  }

  else
  {
    sub_1ADDD2728(v14, type metadata accessor for FinalizedTimestamp);
    if (v26 >= v27)
    {
      return (*(*(a5 + 24) + 16))(a1 + *(a5 + 36), v15);
    }
  }

  result = (*(*(a5 + 24) + 16))(a1 + *(a5 + 36), v15);
  v31 = v34;
  LOBYTE(v32) = *v34 | v23;
LABEL_10:
  *v31 = v32 & 1;
  return result;
}

uint64_t sub_1ADFAF178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  sub_1ADFA9038(a3);
  v12 = *(v6 - 8);
  (*(v12 + 16))(v11, a1, v6);
  (*(v12 + 56))(v11, 0, 1, v6);
  sub_1ADFAEA78(v11, a2, a3);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1ADFAF2D8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1ADFAF2E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinalizedTimestamp(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADFAF360(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  return sub_1ADFABFE0(a1, v1[8], v1[2]);
}

uint64_t sub_1ADFAF3F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[5];
  v7 = v3[6];
  v8 = v3[7];
  return sub_1ADFAD478(a1, a2, v3[2], a3);
}

uint64_t sub_1ADFAF414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  (*(*(v8 - 8) + 16))(a1, a3);
  v10 = *(*(v9 - 8) + 16);

  return v10(a2, a4, v9);
}

uint64_t sub_1ADFAF4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v8 = v2[10];
  v7 = v2[11];
  v9 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v8(a2, a2 + *(TupleTypeMetadata2 + 48), a1, a1 + v9);
}

uint64_t sub_1ADFAF58C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADFAF638()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADFAF68C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADFAF6E0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 48);
  type metadata accessor for CRDictionaryElement();
  swift_getWitnessTable();
  v8 = *(a1 + 32);
  result = type metadata accessor for CRSetRefMergeableDelta();
  if (v6 <= 0x3F)
  {
    result = type metadata accessor for FinalizedTimestamp(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ADFAF7D8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADFAF820(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 40))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1ADFAF87C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
    }
  }

  return result;
}

uint64_t sub_1ADFAF8E4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADFAF92C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1ADFAF974(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_1ADFAF9D0(uint64_t a1)
{
  sub_1ADFAFF70();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_1AE23D7CC();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1ADFAFA60(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1AE23BFEC() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  if (v8)
  {
    v15 = 8;
  }

  else
  {
    v15 = 9;
  }

  v16 = *(v6 + 64);
  v17 = *(v10 + 80);
  v18 = *(v10 + 64);
  if (!v12)
  {
    ++v18;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = ((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + v15 + v17;
  v20 = v18 + 7;
  if (v14 < a2)
  {
    v21 = ((v20 + (v19 & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v22 = v21 & 0xFFFFFFF8;
    if ((v21 & 0xFFFFFFF8) != 0)
    {
      v23 = 2;
    }

    else
    {
      v23 = a2 - v14 + 1;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v26 = *(a1 + v21);
        if (v26)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v26 = *(a1 + v21);
        if (v26)
        {
          goto LABEL_33;
        }
      }
    }

    else if (v25)
    {
      v26 = *(a1 + v21);
      if (v26)
      {
LABEL_33:
        v27 = v26 - 1;
        if (v22)
        {
          v27 = 0;
          v28 = *a1;
        }

        else
        {
          v28 = 0;
        }

        return v14 + (v28 | v27) + 1;
      }
    }
  }

  if (v9 == v14)
  {
    if (v8 >= 2)
    {
      v29 = (*(v7 + 48))(a1);
      goto LABEL_49;
    }

    return 0;
  }

  v30 = (a1 + v19) & ~v17;
  if (v13 == v14)
  {
    if (v12 >= 2)
    {
      v29 = (*(v11 + 48))(v30, v12);
LABEL_49:
      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v32 = *((v20 + v30) & 0xFFFFFFFFFFFFFFF8);
  if (v32 >= 0xFFFFFFFF)
  {
    LODWORD(v32) = -1;
  }

  return (v32 + 1);
}

void sub_1ADFAFCB0(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1AE23BFEC() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 64);
  v15 = *(v12 + 80);
  v16 = *(v12 + 64);
  if (v13)
  {
    v17 = v13 - 1;
  }

  else
  {
    v17 = 0;
  }

  if (v17 <= v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = v17;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  v19 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = v19 + 8;
  v21 = v19 + 9;
  if (v10)
  {
    v21 = v20;
  }

  v22 = v21 + v15;
  if (!v13)
  {
    ++v16;
  }

  v23 = v16 + 7;
  v24 = ((v23 + (v22 & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v23 + (v22 & ~v15)) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v25 = a3 - v18 + 1;
  }

  else
  {
    v25 = 2;
  }

  if (v25 >= 0x10000)
  {
    v26 = 4;
  }

  else
  {
    v26 = 2;
  }

  if (v25 < 0x100)
  {
    v26 = 1;
  }

  if (v25 >= 2)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v18 < a3)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  if (a2 > v18)
  {
    if (((v23 + (v22 & ~v15)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v29 = a2 - v18;
    }

    else
    {
      v29 = 1;
    }

    if (((v23 + (v22 & ~v15)) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v30 = ~v18 + a2;
      bzero(a1, ((v23 + (v22 & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v30;
    }

    if (v28 > 1)
    {
      if (v28 == 2)
      {
        *(a1 + v24) = v29;
      }

      else
      {
        *(a1 + v24) = v29;
      }
    }

    else if (v28)
    {
      *(a1 + v24) = v29;
    }

    return;
  }

  if (v28 > 1)
  {
    if (v28 != 2)
    {
      *(a1 + v24) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *(a1 + v24) = 0;
  }

  else if (v28)
  {
    *(a1 + v24) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!a2)
  {
    return;
  }

LABEL_48:
  if (v11 == v18)
  {
    v31 = a2 - v10;
    if (a2 >= v10)
    {
      if (v20)
      {
        bzero(a1, v20);
        *a1 = v31;
      }
    }

    else
    {
      v32 = *(v9 + 56);

      v32(a1, a2 + 1);
    }
  }

  else
  {
    v33 = (a1 + v22) & ~v15;
    if (v17 == v18)
    {
      v34 = *(v12 + 56);

      v34(v33, a2 + 1, v13);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v35 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v35 = a2 - 1;
      }

      *((v23 + v33) & 0xFFFFFFFFFFFFFFF8) = v35;
    }
  }
}

void sub_1ADFAFF70()
{
  if (!qword_1ED96A3C0)
  {
    type metadata accessor for FinalizedTimestamp(255);
    v0 = sub_1AE23D7CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED96A3C0);
    }
  }
}

uint64_t sub_1ADFAFFE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinalizedTimestamp(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_1ADFB012C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  v9 = *(v3 + 88);
  return sub_1ADFAE674(a1, *(v3 + 80), a3, *(v3 + 56), *(v3 + 64), *(v3 + 72), a2);
}

uint64_t sub_1ADFB0198()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  return sub_1ADFAE2A8(v0[10], v0[11], v0[2], v0[3]);
}

uint64_t sub_1ADFB0218()
{
  sub_1ADE42E40();
  swift_allocError();
  *v0 = 0xD00000000000001DLL;
  *(v0 + 8) = 0x80000001AE2618E0;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB030C()
{
  sub_1ADE42E40();
  swift_allocError();
  *v0 = 0xD000000000000025;
  *(v0 + 8) = 0x80000001AE261CD0;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0374()
{
  sub_1AE23DA2C();

  MEMORY[0x1B26FB670](0xD00000000000001FLL, 0x80000001AE261900);
  sub_1ADE42E40();
  swift_allocError();
  *v0 = 0x6574636172616843;
  *(v0 + 8) = 0xE900000000000072;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0430(uint64_t a1, uint64_t a2)
{
  sub_1AE23DA2C();

  MEMORY[0x1B26FB670](0xD00000000000001FLL, 0x80000001AE261900);
  sub_1ADE42E40();
  swift_allocError();
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = 0;
  return swift_willThrow();
}

uint64_t CRCodable.init(defaultState:)()
{
  sub_1AE23DA2C();
  v0 = sub_1AE23E40C();
  v2 = v1;

  MEMORY[0x1B26FB670](0xD00000000000001FLL, 0x80000001AE261900);
  sub_1ADE42E40();
  swift_allocError();
  *v3 = v0;
  *(v3 + 8) = v2;
  *(v3 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0610()
{
  sub_1ADE42E40();
  swift_allocError();
  *v0 = 0xD000000000000026;
  *(v0 + 8) = 0x80000001AE261B80;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0678()
{
  sub_1ADE42E40();
  swift_allocError();
  *v0 = 0xD000000000000028;
  *(v0 + 8) = 0x80000001AE261CA0;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB06E0()
{
  sub_1ADE42E40();
  swift_allocError();
  *v0 = 0xD000000000000028;
  *(v0 + 8) = 0x80000001AE261C70;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0748()
{
  sub_1ADE42E40();
  swift_allocError();
  *v0 = 0xD00000000000002DLL;
  *(v0 + 8) = 0x80000001AE261920;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB07B0()
{
  sub_1ADE42E40();
  swift_allocError();
  *v0 = 0xD00000000000002FLL;
  *(v0 + 8) = 0x80000001AE261980;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0828@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ADFB0430(0x3436746E49, 0xE500000000000000);
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1ADFB0864@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ADFB0430(1953384789, 0xE400000000000000);
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1ADFB089C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ADFB0430(0x3436746E4955, 0xE600000000000000);
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

BOOL sub_1ADFB08D8()
{
  v1 = v0[1];
  v2 = *v0 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 != 0;
}

uint64_t sub_1ADFB08F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ADFB0374();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_1ADFB0924()
{
  sub_1ADE42E40();
  swift_allocError();
  *v0 = 0xD000000000000023;
  *(v0 + 8) = 0x80000001AE261C40;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB098C()
{
  sub_1ADE42E40();
  swift_allocError();
  *v0 = 0xD00000000000002BLL;
  *(v0 + 8) = 0x80000001AE261C10;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

BOOL sub_1ADFB09F4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v7 = *(v1 + 16);
      v6 = *(v1 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v4 = BYTE6(v2);
    v5 = v1;
    v6 = v1 >> 32;
    if (v3)
    {
      v7 = v5;
    }

    else
    {
      v6 = v4;
      v7 = 0;
    }
  }

  return v7 != v6;
}

uint64_t sub_1ADFB0A44()
{
  sub_1ADE42E40();
  swift_allocError();
  *v0 = 0xD000000000000023;
  *(v0 + 8) = 0x80000001AE261BE0;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0AD4()
{
  sub_1ADE42E40();
  swift_allocError();
  *v0 = 0xD000000000000022;
  *(v0 + 8) = 0x80000001AE261BB0;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0B3C()
{
  sub_1ADE42E40();
  swift_allocError();
  *v0 = 0xD00000000000002ALL;
  *(v0 + 8) = 0x80000001AE261950;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0C08()
{
  sub_1ADE42E40();
  swift_allocError();
  *v0 = 0xD00000000000002CLL;
  *(v0 + 8) = 0x80000001AE261A50;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0C70()
{
  sub_1ADE42E40();
  swift_allocError();
  *v0 = 0xD000000000000035;
  *(v0 + 8) = 0x80000001AE2619B0;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0CD8()
{
  sub_1ADE42E40();
  swift_allocError();
  *v0 = 0xD00000000000002CLL;
  *(v0 + 8) = 0x80000001AE261A20;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0D40()
{
  sub_1ADE42E40();
  swift_allocError();
  *v0 = 0xD00000000000002DLL;
  *(v0 + 8) = 0x80000001AE2619F0;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0DA8()
{
  sub_1ADE42E40();
  swift_allocError();
  *v0 = 0xD000000000000031;
  *(v0 + 8) = 0x80000001AE261B40;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0E4C()
{
  sub_1ADE42E40();
  swift_allocError();
  *v0 = 0xD00000000000002DLL;
  *(v0 + 8) = 0x80000001AE261B10;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0EB4()
{
  sub_1ADE42E40();
  swift_allocError();
  *v0 = 0xD000000000000026;
  *(v0 + 8) = 0x80000001AE261AE0;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0F1C()
{
  sub_1ADE42E40();
  swift_allocError();
  *v0 = 0xD000000000000029;
  *(v0 + 8) = 0x80000001AE261AB0;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB0F84()
{
  sub_1ADE42E40();
  swift_allocError();
  *v0 = 0xD000000000000026;
  *(v0 + 8) = 0x80000001AE261A80;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1ADFB1024(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = sub_1AE23D7CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  sub_1AE23D34C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1ADFB10FC(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  result = sub_1AE23D0AC();
  if (result)
  {
    v12 = 0;
    do
    {
      v13 = sub_1AE23D08C();
      sub_1AE23D00C();
      if (v13)
      {
        result = (*(v4 + 16))(v10, a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, v3);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_1AE23DAAC();
        if (v16 != 8)
        {
          __break(1u);
          return result;
        }

        v18 = result;
        (*(v4 + 16))(v10, &v18, v3);
        result = swift_unknownObjectRelease();
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_10:
          __break(1u);
          return result;
        }
      }

      sub_1AE23D33C();
      (*(v4 + 8))(v7, v3);
      result = sub_1AE23D0AC();
      ++v12;
    }

    while (v14 != result);
  }

  return result;
}

uint64_t sub_1ADFB12F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = type metadata accessor for TreeNode();
  v9 = sub_1AE23D7CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v14 = v19 - v13;
  v15 = *(v8 - 8);
  (*(v15 + 16))(v19 - v13, a2, v8, v12);
  (*(v15 + 56))(v14, 0, 1, v8);
  WitnessTable = swift_getWitnessTable();
  v19[2] = v6;
  v19[3] = v8;
  v19[4] = v5;
  v19[5] = v7;
  v19[6] = &off_1F23C93F8;
  v19[7] = WitnessTable;
  v17 = type metadata accessor for CRDictionary();
  sub_1ADFAEA78(v14, a1, v17);
  return (*(v10 + 8))(v14, v9);
}

uint64_t sub_1ADFB14A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v4 + 16))(v7, v9);
  v12 = *(a2 + 32);
  sub_1AE23D38C();
  sub_1AE23D33C();
  return (*(v4 + 8))(v11, v3);
}

uint64_t CRUnorderedTree.insert(_:inParent:)(void (*a1)(void, void), char *a2, void *a3)
{
  v4 = v3;
  v8 = a3[2];
  v9 = a3[4];
  v94 = a3[3];
  v98 = v9;
  v10 = type metadata accessor for TreeNode();
  v102 = *(v10 - 8);
  v11 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v87 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v95 = &v77 - v14;
  v99 = *(v8 - 8);
  v15 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v91 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v90 = &v77 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v103 = &v77 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v92 = &v77 - v23;
  v97 = sub_1AE23D7CC();
  v105 = *(v97 - 8);
  v24 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v88 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v77 - v27;
  v93 = v10;
  v96 = sub_1AE23D7CC();
  v104 = *(v96 - 8);
  v29 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v85 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v77 - v32;
  v34 = *v4;
  v35 = v4[1];
  v36 = v4[2];
  v89 = v4 + 2;
  v106 = v34;
  v107 = v35;
  v108 = v36;

  LOBYTE(v35) = sub_1AE1823DC(a1, a2, a3);

  if (v35)
  {
    v100 = a1;
    v84 = a3;
    sub_1AE182774(a1, a3);
    v101 = v4;
    v38 = v28;
    v39 = v8;
    v40 = v105 + 16;
    v86 = *(v105 + 16);
    v41 = v97;
    (v86)(v38, a2, v97);
    v42 = v94;
    v43 = v98;
    sub_1ADE1E114(v38, v39, v33);
    v44 = v93;
    (*(v102 + 56))(v33, 0, 1, v93);
    WitnessTable = swift_getWitnessTable();
    v106 = v39;
    v107 = v44;
    v108 = v42;
    v109 = v43;
    v110 = &off_1F23C93F8;
    v111 = WitnessTable;
    v78 = type metadata accessor for CRDictionary();
    sub_1ADFAEA78(v33, v100, v78);
    v46 = *(v104 + 8);
    v104 += 8;
    v79 = v46;
    v46(v33, v96);
    v83 = a2;
    v105 = v40;
    (v86)(v38, a2, v41);
    v47 = v95;
    sub_1ADE1E114(v38, v39, v95);
    v48 = swift_allocObject();
    v48[2] = v39;
    v48[3] = v42;
    v48[4] = v43;
    v49 = *(v99 + 16);
    v81 = v99 + 16;
    v80 = v49;
    v49(v103, v100, v39);
    v50 = swift_allocObject();
    v50[2] = v39;
    v50[3] = v42;
    v50[4] = v43;
    v50[5] = sub_1ADFB21B0;
    v82 = v48;
    v50[6] = v48;
    v51 = v101;
    v52 = v101[1];
    swift_isUniquelyReferenced_nonNull_native();
    v53 = v51;
    v54 = v51[1];
    v106 = v54;
    v55 = swift_getWitnessTable();
    v94 = sub_1ADDFFB6C(v47, v44, v55);
    if (__OFADD__(*(v54 + 16), (v56 & 1) == 0))
    {
      __break(1u);
    }

    else
    {
      v57 = v56;
      v98 = sub_1AE23D38C();
      sub_1AE23DC0C();
      v58 = sub_1AE23DBEC();
      if (v58)
      {
        v58 = sub_1ADDFFB6C(v47, v44, v55);
        v94 = v58;
        v60 = v99;
        if ((v57 & 1) != (v59 & 1))
        {
LABEL_17:
          result = sub_1AE23E27C();
          __break(1u);
          return result;
        }

        v61 = v53;
        v62 = v102;
      }

      else
      {
        v61 = v53;
        v62 = v102;
        v60 = v99;
      }

      v63 = v103;
      v64 = v106;
      v61[1] = v106;
      if ((v57 & 1) == 0)
      {
        v65 = v50[6];
        v106 = (v50[5])(v58, v63);
        (*(v62 + 16))(v87, v47, v44);
        sub_1AE23DBFC();
      }

      v66 = *(v64 + 56) + 8 * v94;
      v67 = v92;
      sub_1AE23D33C();
      (*(v62 + 8))(v47, v44);
      v68 = *(v60 + 8);
      v68(v67, v39);
      v69 = *(v60 + 48);
      v70 = v69(v83, 1, v39);
      v71 = v84;
      v72 = v100;
      if (v70 == 1)
      {
        goto LABEL_12;
      }

      v73 = v88;
      v86();
      if (v69(v73, 1, v39) != 1)
      {
        v74 = v85;
        CRDictionary.subscript.getter(v85);
        v75 = (*(v102 + 48))(v74, 1, v44);
        v79(v74, v96);
        v68(v73, v39);
        if (v75 != 1)
        {
LABEL_13:
          sub_1AE182D10(v72, v71);
        }

LABEL_12:
        v80(v91, v72, v39);
        v76 = v90;
        sub_1AE23D33C();
        v68(v76, v39);
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1ADFB1EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE23D05C();
  if (sub_1AE23D0AC())
  {
    v6 = sub_1AE18F13C(v5, a1, a3);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  return v6;
}

uint64_t sub_1ADFB1F18@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t CRUnorderedTree.children(of:)(uint64_t a1, void *a2)
{
  v20 = a1;
  v4 = a2[2];
  v5 = sub_1AE23D7CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v11 = a2[3];
  v10 = a2[4];
  v12 = type metadata accessor for TreeNode();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v20 - v16;
  v18 = *(v2 + 8);
  (*(v6 + 16))(v9, v20, v5, v15);
  sub_1ADE1E114(v9, v4, v17);
  sub_1AE23D38C();
  swift_getWitnessTable();
  sub_1AE23CB7C();
  (*(v13 + 8))(v17, v12);
  result = v21;
  if (!v21)
  {
    return sub_1AE23C9EC();
  }

  return result;
}

uint64_t sub_1ADFB2144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static CRDT.== infix(_:_:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_1ADFB21C8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1ADFB2204()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void CRDictionary_v1.init(_:)(void *a1@<X0>, void *a2@<X8>)
{
  CRDictionary.init()(&v5);
  v4 = v5;

  *a2 = v4;
}

void *CRDictionary_v1.init()@<X0>(void *a1@<X8>)
{
  result = CRDictionary.init()(&v3);
  *a1 = v3;
  return result;
}

void *CRDictionary_v1.init(defaultState:)@<X0>(void *a1@<X8>)
{
  result = CRDictionary.init()(&v3);
  *a1 = v3;
  return result;
}

uint64_t CRDictionary_v1.copy(renamingReferences:)@<X0>(void *a1@<X0>, _OWORD *a2@<X1>, void *a3@<X8>)
{
  v11 = *v3;

  v7 = a2[2];
  v10[0] = a2[1];
  v10[1] = v7;
  v10[2] = a2[3];
  v8 = type metadata accessor for CRDictionary();
  CRDictionary.copy(renamingReferences:)(a1, v8, v10);

  *a3 = *&v10[0];
  return result;
}

uint64_t CRDictionary_v1.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X1>, void *a3@<X8>)
{
  v6 = *v3;
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v9 = v7;

  CRDictionary_v1.copy(renamingReferences:)(&v9, a2, a3);
}

uint64_t CRDictionary_v1.actionUndoingDifference(from:)@<X0>(void **a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v12[1] = *v3;
  v12[0] = v6;

  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v7 = type metadata accessor for CRDictionary();
  CRDictionary.actionUndoingDifference(from:)(v12, v7, a3);
}

void CRDictionary_v1.apply(_:)(__int128 *a1, _OWORD *a2)
{
  v6 = *a1;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v2 = type metadata accessor for CRDictionary();
  CRDictionary.apply(_:)(&v6, v2);
}

uint64_t CRDictionary_v1.subscript.getter@<X0>(_OWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v8 = *v2;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  type metadata accessor for CRDictionary();
  return CRDictionary.subscript.getter(a2);
}

uint64_t sub_1ADFB258C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *a1;
  v7 = *(a2 + a3 - 48);
  v8 = *(a2 + a3 - 32);
  v9 = *(a2 + a3 - 16);
  v5 = type metadata accessor for CRDictionary_v1();
  return CRDictionary_v1.subscript.getter(v5, a4);
}

uint64_t sub_1ADFB25FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + a4 - 48);
  v9 = *(a3 + a4 - 32);
  v10 = *(a3 + a4 - 16);
  v6 = type metadata accessor for CRDictionary_v1();
  return sub_1ADFB4480(a1, a3, v6);
}

uint64_t CRDictionary_v1.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADFB4480(a1, a2, a3);
  (*(*(*(a3 + 16) - 8) + 8))(a2);
  v6 = *(a3 + 24);
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

void (*CRDictionary_v1.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x48uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  v7[1] = v3;
  v9 = *(a3 + 24);
  v10 = sub_1AE23D7CC();
  v8[2] = v10;
  v11 = *(v10 - 8);
  v8[3] = v11;
  v12 = *(v11 + 64);
  if (v6)
  {
    v8[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v8[5] = v13;
  v15 = *(a3 + 16);
  v8[6] = v15;
  v16 = *(v15 - 8);
  v17 = v16;
  v8[7] = v16;
  if (v6)
  {
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v18 = malloc(*(v16 + 64));
  }

  v8[8] = v18;
  (*(v17 + 16))();
  v20 = *v3;
  CRDictionary_v1.subscript.getter(a3, v14);
  return sub_1ADFB28D0;
}

uint64_t CRDictionary_v1.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *v5;
  v9 = a4[3];
  v15 = a4[2];
  v16 = v9;
  v10 = a4[5];
  v17 = a4[4];
  v18 = v10;
  v11 = a4[7];
  v19 = a4[6];
  v20 = v11;
  v21 = a2;
  v22 = a3;
  v29 = v8;
  v23 = v15;
  v24 = v9;
  v25 = v17;
  v26 = v10;
  v27 = v19;
  v28 = v11;
  v12 = type metadata accessor for CRDictionary();
  return CRDictionary.subscript.getter(a1, sub_1ADFAEE78, &v14, v12, a5);
}

uint64_t CRDictionary_v1.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1ADFB44E0(a1, a2, a5);
  (*(*(*(a5 + 16) - 8) + 8))(a2);
  v8 = *(*(*(a5 + 24) - 8) + 8);

  return v8(a1);
}

void (*CRDictionary_v1.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5))(uint64_t **a1, char a2)
{
  v10 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x48uLL);
  }

  v12 = v11;
  *a1 = v11;
  *v11 = a5;
  v11[1] = v5;
  v13 = a5[3];
  v11[2] = v13;
  v14 = *(v13 - 8);
  v11[3] = v14;
  v15 = *(v14 + 64);
  if (v10)
  {
    v11[4] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[4] = malloc(v15);
    v16 = malloc(v15);
  }

  v17 = v16;
  v12[5] = v16;
  v18 = a5[2];
  v12[6] = v18;
  v19 = *(v18 - 8);
  v20 = v19;
  v12[7] = v19;
  if (v10)
  {
    v21 = swift_coroFrameAlloc();
  }

  else
  {
    v21 = malloc(*(v19 + 64));
  }

  v12[8] = v21;
  (*(v20 + 16))();
  v24 = *v5;
  CRDictionary_v1.subscript.getter(a2, a3, a4, a5, v17);
  return sub_1ADFB2BF0;
}

void sub_1ADFB2C08(uint64_t **a1, char a2, void (*a3)(void *, void *, uint64_t))
{
  v4 = *a1;
  v6 = (*a1)[7];
  v5 = (*a1)[8];
  v7 = (*a1)[5];
  v14 = (*a1)[6];
  v9 = (*a1)[3];
  v8 = (*a1)[4];
  v10 = (*a1)[1];
  v11 = (*a1)[2];
  v12 = **a1;
  if (a2)
  {
    (*(v9 + 16))(v4[4], v7, v4[2]);
    a3(v8, v5, v12);
    (*(v6 + 8))(v5, v14);
    v13 = *(v9 + 8);
    v13(v8, v11);
    v13(v7, v11);
  }

  else
  {
    a3(v7, v5, *v4);
    (*(v6 + 8))(v5, v14);
    (*(v9 + 8))(v7, v11);
  }

  free(v5);
  free(v7);
  free(v8);

  free(v4);
}

uint64_t CRDictionary_v1.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v5 = type metadata accessor for CRDictionary();
  return CRDictionary.removeValue(forKey:)(a1, v5, a3);
}

uint64_t CRDictionary_v1.index(where:)@<X0>(uint64_t (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t *a4@<X8>)
{
  v14 = *v4;

  v11 = a3[1];
  v12 = a3[2];
  v13 = a3[3];
  v9 = type metadata accessor for CRDictionary();
  CRDictionary.index(where:)(a1, a2, v9, a4);
}

uint64_t CRDictionary_v1.merge(_:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;

  v6 = a2[2];
  v11[0] = a2[1];
  v11[1] = v6;
  v11[2] = a2[3];
  v7 = type metadata accessor for CRDictionary();
  sub_1ADFA9038(v7);
  *&v11[0] = v5;
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1AE1755D4(v11, v7, WitnessTable);

  sub_1ADFAEA70();

  sub_1AE16F8E0(v9, a3);
}

uint64_t CRDictionary_v1.newRefs(from:)(uint64_t *a1, _OWORD *a2)
{
  v4 = *v2;
  v11[0] = *a1;
  v11[1] = v4;

  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v5 = type metadata accessor for CRDictionary();
  v6 = CRDictionary.newRefs(from:)(v11, v5);

  return v6;
}

uint64_t CRDictionary_v1.visitReferences(_:)(void *a1, _OWORD *a2)
{
  v10 = *v2;

  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v5 = type metadata accessor for CRDictionary();
  CRDictionary.visitReferences(_:)(a1, v5);
}

Swift::Bool __swiftcall CRDictionary_v1.needToFinalizeTimestamps()()
{
  v2 = v0;
  v7 = *v1;

  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  type metadata accessor for CRDictionary();
  LOBYTE(v2) = CRDictionary.needToFinalizeTimestamps()();

  return v2 & 1;
}

uint64_t CRDictionary_v1.finalizeTimestamps(_:)(uint64_t a1, _OWORD *a2)
{
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v3 = type metadata accessor for CRDictionary();
  return CRDictionary.finalizeTimestamps(_:)(a1, v3);
}

uint64_t static CRDictionary_v1.== infix(_:_:)(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v5 = *a2;
  v6 = v2;

  v3 = static CRDictionary.== infix(_:_:)(&v6, &v5);

  return v3 & 1;
}

uint64_t CRDictionary_v1.description.getter(_OWORD *a1)
{
  v7 = *v1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v2 = type metadata accessor for CRDictionary();
  return CRDictionary.description.getter(v2);
}

uint64_t CRDictionary_v1.hasDelta(from:)(void **a1, void *a2)
{
  v3 = *v2;
  v16 = *a1;
  v17 = v3;
  v4 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[6];
  v9 = a2[7];

  v15[2] = v4;
  v15[3] = v5;
  v15[4] = v7;
  v15[5] = v6;
  v15[6] = v8;
  v15[7] = v9;
  type metadata accessor for CRDictionary();
  v10 = CRDictionary.hasDelta(from:)(&v16);

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v17 = v3;
    v12 = sub_1ADFAEA70();
    v13 = swift_beginAccess();
    v15[0] = v15;
    v16 = *(v12 + 40);
    MEMORY[0x1EEE9AC00](v13);
    type metadata accessor for CRDictionaryElement();
    sub_1AE23CB1C();

    swift_getWitnessTable();
    v11 = sub_1AE23CF4C();
  }

  return v11 & 1;
}

uint64_t CRDictionary_v1.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = *a2;
  v14[1] = *v4;
  v14[0] = v8;

  v11 = a3[1];
  v12 = a3[2];
  v13 = a3[3];
  v9 = type metadata accessor for CRDictionary();
  CRDictionary.delta(_:from:)(a1, v14, v9, a4);
}

uint64_t CRDictionary_v1.canMerge(delta:)(uint64_t *a1, _OWORD *a2)
{
  v9 = *v2;

  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  type metadata accessor for CRDictionary();
  LOBYTE(a2) = CRDictionary.canMerge(delta:)(a1);

  return a2 & 1;
}

uint64_t CRDictionary_v1.merge(delta:)(void *a1, _OWORD *a2)
{
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v3 = type metadata accessor for CRDictionary();
  return CRDictionary.merge(delta:)(a1, v3) & 1;
}

uint64_t sub_1ADFB3530(uint64_t *a1, void **a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  v8 = a3[7];
  return static CRDictionary_v1.== infix(_:_:)(a1, a2);
}

uint64_t CRDictionary_v1.observableDifference(from:with:)@<X0>(void (**a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  v14[1] = *v4;
  v14[0] = v8;

  v11 = a3[1];
  v12 = a3[2];
  v13 = a3[3];
  v9 = type metadata accessor for CRDictionary();
  CRDictionary.observableDifference(from:with:)(v14, a2, v9, a4);
}

uint64_t CRDictionary_v1.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  result = CRDictionary.init(from:)(a1, a2, a3, a4, a5, a6, &v10);
  if (!v7)
  {
    *a7 = v10;
  }

  return result;
}

uint64_t CRDictionary_v1.encode(to:)(uint64_t a1, _OWORD *a2)
{
  v10 = *v2;

  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v5 = type metadata accessor for CRDictionary();
  CRDictionary.encode(to:)(a1, v5);
}

void *sub_1ADFB3714@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  return CRDictionary_v1.init(defaultState:)(a2);
}

uint64_t sub_1ADFB373C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, void (*a6)(void, void), uint64_t a7, void (*a8)(void, void, void))
{
  v81 = a1;
  v78 = a6;
  v79 = a8;
  v76 = a2;
  v77 = a5;
  v69 = *(a4 - 8);
  v11 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v68 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for FinalizedTimestamp(0);
  v13 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CRDictionaryElement();
  v16 = sub_1AE23D7CC();
  v71 = *(v16 - 8);
  v72 = v16;
  v17 = v71[8];
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v64 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21 = *(TupleTypeMetadata2 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v67 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v80 = &v64 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v64 - v27;
  v29 = *(v15 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v75 = &v64 - v32;
  v88 = v76;
  v82 = a3;
  v83 = a4;
  v76 = a4;
  v84 = v77;
  v85 = v78;
  v70 = a7;
  v86 = a7;
  v87 = v79;
  type metadata accessor for CRDictionary();
  v33 = sub_1ADFAEA70();
  v34 = *(v21 + 16);
  v77 = v21 + 16;
  v79 = v34;
  v34(v28, v81, TupleTypeMetadata2);
  v35 = v15;
  v36 = TupleTypeMetadata2;
  v37 = *(TupleTypeMetadata2 + 48);
  swift_beginAccess();
  v38 = *(v33 + 40);

  sub_1AE23CB7C();

  v39 = (v29 + 8);
  if ((*(v29 + 48))(v19, 1, v35) == 1)
  {
    v71[1](v19, v72);
    (*v39)(&v28[v37], v35);
    (*(*(a3 - 1) + 8))(v28, a3);
    v40 = 0;
  }

  else
  {
    (*(v29 + 32))(v75, v19, v35);
    v41 = v37;
    v42 = *(v29 + 8);
    v42(&v28[v41], v35);
    v65 = v35;
    v43 = *(a3 - 1);
    v78 = *(v43 + 8);
    v72 = v43 + 8;
    v78(v28, a3);
    v44 = v80;
    v45 = v81;
    v79(v80, v81, v36);
    v46 = *(v36 + 48);
    v47 = v39;
    v48 = v73;
    sub_1ADED0548(&v44[v46], v73);
    v49 = &v44[v46];
    v50 = v65;
    v71 = v47;
    v66 = v42;
    (v42)(v49);
    v51 = v75;
    v52 = *(v74 + 20);
    v53 = *&v75[v52];
    v54 = *(v48 + v52);
    v55 = v45;
    if (v53 == v54)
    {
      v56 = sub_1ADF5EB00();
    }

    else
    {
      v56 = v53 < v54;
    }

    sub_1ADE173B8(v48);
    v78(v80, a3);
    if (v56)
    {
      v66(v51, v50);
      v40 = 1;
    }

    else
    {
      v80 = a3;
      v57 = v67;
      v79(v67, v55, v36);
      v58 = &v57[*(v36 + 48)];
      v59 = v68;
      v60 = v69;
      v61 = v76;
      (*(v69 + 16))(v68, &v58[*(v50 + 36)], v76);
      v62 = v66;
      v66(v58, v50);
      v40 = (*(v70 + 24))(&v51[*(v50 + 36)], v61);
      (*(v60 + 8))(v59, v61);
      v62(v51, v50);
      v78(v57, v80);
    }
  }

  return v40 & 1;
}

uint64_t CRDictionary_v1.makeIterator()@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v8 = *v2;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  type metadata accessor for CRDictionary();
  CRDictionary.makeIterator()(a2);
}

uint64_t sub_1ADFB3E34@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  CRDictionary_v1.makeIterator()(a1, a2);
  v3 = *v2;
}

uint64_t sub_1ADFB3E60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1ADFB3EB4()
{
  swift_getWitnessTable();
  v1 = sub_1AE23836C();
  v2 = *v0;

  return v1;
}

uint64_t sub_1ADFB3F40(_OWORD *a1, uint64_t (*a2)(uint64_t))
{
  v9 = *v2;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v4 = type metadata accessor for CRDictionary();
  return a2(v4);
}

uint64_t CRDictionary_v1.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = *(a3 + 16);
  v19 = *v4;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  sub_1ADFAF2D8(v8, v9, v10);
  v13 = a4[1];
  v14 = a4[2];
  v15 = a4[3];
  v11 = type metadata accessor for CRDictionary();
  CRDictionary.subscript.getter(a1, a2, &v16, v11);
  return sub_1ADDFFBC8(v16, v17, v18);
}

uint64_t CRDictionary_v1.index(after:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  v14 = *v3;
  v12 = *a1;
  v13 = v6;

  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v7 = type metadata accessor for CRDictionary();
  CRDictionary.index(after:)(&v12, v7, a3);
}

void (*sub_1ADFB40D0(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[4] = TupleTypeMetadata2;
  v12 = *(TupleTypeMetadata2 - 8);
  v8[5] = v12;
  if (v6)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v14 = v13;
  v8[6] = v13;
  v15 = sub_1ADFB4264(v8, a2, a3);
  v17 = v16;
  v8[7] = v15;
  (*(*(v10 - 8) + 16))(v14);
  (*(*(v9 - 8) + 16))(v14 + *(TupleTypeMetadata2 + 48), v17, v9);
  return sub_1ADFAD7BC;
}

void (*sub_1ADFB4264(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v9 = *(TupleTypeMetadata2 - 8);
  a1[1] = v9;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  a1[2] = v10;
  CRDictionary_v1.subscript.getter(v10, v10 + *(TupleTypeMetadata2 + 48), a2, a3);
  return sub_1ADE022F8;
}

uint64_t sub_1ADFB4360(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *&v6 = *a1;
  v2 = v6;
  *(&v6 + 1) = v3;
  v7 = v4;
  CRDictionary_v1.index(after:)(&v6, a2, a1);

  return sub_1ADDFFBC8(v2, v3, v4);
}

uint64_t CRDictionary_v1<>.encode(to:)(void *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v14 = *v4;

  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v9 = type metadata accessor for CRDictionary();
  CRDictionary<>.encode(to:)(a1, v9, a3, a4);
}

uint64_t sub_1ADFB4480(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v7 = a3[1];
  v8 = a3[2];
  v9 = a3[3];
  v5 = type metadata accessor for CRDictionary();
  return sub_1ADFAEA78(a1, a2, v5);
}

uint64_t sub_1ADFB44E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v12 = v17 - v11;
  v13 = *(v6 - 8);
  (*(v13 + 16))(v17 - v11, a1, v6, v10);
  (*(v13 + 56))(v12, 0, 1, v6);
  v17[0] = *(a3 + 16);
  v17[1] = v6;
  v14 = *(a3 + 48);
  v18 = *(a3 + 32);
  v19 = v14;
  v15 = type metadata accessor for CRDictionary();
  sub_1ADFAEA78(v12, a2, v15);
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_1ADFB4690(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1ADFB4744()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1ADFB47A8(uint64_t a1, uint64_t a2)
{
  v291 = 0;
  __s1[2] = *MEMORY[0x1E69E9840];
  v334 = sub_1AE23C12C();
  v4 = *(v334 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v334);
  v304 = &v281 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v308 = &v281 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v330 = &v281 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v305 = &v281 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v281 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v281 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v323 = &v281 - v20;
  v21 = type metadata accessor for Replica();
  v322 = *(v21 - 8);
  v22 = v322[8];
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v281 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v281 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v321 = &v281 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v316 = &v281 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v317 = &v281 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v281 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v314 = &v281 - v39;
  v290 = *(a1 + 16);
  if (!v290)
  {
    goto LABEL_205;
  }

  v40 = 0;
  v41 = a1 + 32;
  v300 = a2 + 32;
  v328 = v4 + 16;
  v333 = (v4 + 32);
  v331 = (v4 + 8);
  v309 = v15;
  v319 = v18;
  v327 = v24;
  v284 = a1;
  v283 = a2;
  v329 = v4;
  v312 = v27;
  v318 = v37;
  v282 = a1 + 32;
  do
  {
    v293 = v40;
    v42 = (v41 + 32 * v40);
    v43 = *v42;
    if (!*v42)
    {
      goto LABEL_344;
    }

    v44 = v42[1];
    v45 = v42[2];
    v46 = v42[3];
    v47 = *(a2 + 16);
    v320 = *v42;
    v324 = v44;
    sub_1ADE42C78(v43);
    v294 = v45;
    v295 = v46;
    sub_1ADDD86D8(v45, v46);
    v299 = v47;
    if (!v47)
    {
LABEL_340:
      sub_1ADE42CB8(v320);
      v278 = v294;
      v279 = v295;
      goto LABEL_341;
    }

    v48 = 0;
    ++v293;
    v49 = v295 >> 62;
    if (v294)
    {
      v50 = 0;
    }

    else
    {
      v50 = v295 == 0xC000000000000000;
    }

    v51 = !v50;
    v289 = v51;
    v286 = HIDWORD(v294);
    v52 = __OFSUB__(HIDWORD(v294), v294);
    v288 = v52;
    v287 = HIDWORD(v294) - v294;
    v292 = BYTE6(v295);
    v53 = v294;
    v54 = v294 >> 32;
    v285 = (v294 >> 32) - v294;
    v297 = v295 >> 62;
    v296 = v294;
    v298 = v294 >> 32;
    while (1)
    {
      v56 = (v300 + 32 * v48);
      v57 = *v56;
      v58 = v56[1];
      v60 = v56[2];
      v59 = v56[3];
      v315 = v58;
      if (v57)
      {
        v301 = v48;
        v61 = *(v58 + 64);
        v310 = v58 + 64;
        v62 = v59;
        v63 = 1 << *(v58 + 32);
        if (v63 < 64)
        {
          v64 = ~(-1 << v63);
        }

        else
        {
          v64 = -1;
        }

        v65 = v64 & v61;
        v311 = v57;
        sub_1ADE42C78(v57);
        v302 = v60;
        v303 = v62;
        sub_1ADDD86D8(v60, v62);
        v307 = (v63 + 63) >> 6;

        v313 = 0;
        v66 = 0;
        v67 = 0;
        v68 = v319;
        while (1)
        {
          v326 = v67;
          if (v65)
          {
            v71 = v66;
LABEL_35:
            v75 = __clz(__rbit64(v65));
            v65 &= v65 - 1;
            v76 = v75 | (v71 << 6);
            v77 = v315;
            v78 = v321;
            sub_1ADDDE768(*(v315 + 48) + v322[9] * v76, v321);
            v79 = v329;
            v80 = v323;
            v81 = v334;
            (*(v329 + 16))(v323, *(v77 + 56) + *(v329 + 72) * v76, v334);
            v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
            v83 = *(v82 + 48);
            v84 = v78;
            v74 = v318;
            sub_1ADDD8010(v84, v318);
            (*(v79 + 32))(v74 + v83, v80, v81);
            (*(*(v82 - 8) + 56))(v74, 0, 1, v82);
            v68 = v319;
            v24 = v327;
          }

          else
          {
            v72 = v307 <= v66 + 1 ? v66 + 1 : v307;
            v73 = v72 - 1;
            v74 = v318;
            while (1)
            {
              v71 = v66 + 1;
              if (__OFADD__(v66, 1))
              {
                __break(1u);
LABEL_343:
                __break(1u);
                goto LABEL_344;
              }

              if (v71 >= v307)
              {
                break;
              }

              v65 = *(v310 + 8 * v71);
              ++v66;
              if (v65)
              {
                v66 = v71;
                goto LABEL_35;
              }
            }

            v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
            (*(*(v99 - 8) + 56))(v74, 1, 1, v99);
            v65 = 0;
            v66 = v73;
          }

          v85 = v314;
          sub_1ADFBA458(v74, v314);
          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
          v86 = *(v69 - 8);
          v325 = *(v86 + 48);
          v87 = (v325)(v85, 1, v69);
          v332 = v69;
          if (v87 == 1)
          {
            break;
          }

          v88 = *v333;
          (*v333)(v68, v85 + *(v69 + 48), v334);
          v89 = v312;
          sub_1ADDD8010(v85, v312);
          if (*(v324 + 16) && (v90 = sub_1ADDD8A6C(v89), (v91 & 1) != 0))
          {
            v92 = v305;
            v93 = v334;
            (*(v329 + 16))(v305, *(v324 + 56) + *(v329 + 72) * v90, v334);
            sub_1ADDF1F8C(v89);
            v94 = v92;
            v95 = v309;
            v88(v309, v94, v93);
            if (sub_1AE23C0BC())
            {
              v96 = sub_1AE23C04C();
              v97 = 2 * (v96 != sub_1AE23C04C());
              v69 = v332;
              v98 = v313;
            }

            else
            {
              v100 = sub_1AE23C04C();
              v101 = sub_1AE23C04C();
              v69 = v332;
              v98 = v313;
              if (v101 < v100 && (sub_1AE23C0BC() & 1) != 0)
              {
                v97 = 1;
              }

              else
              {
                v97 = 3;
              }
            }

            v70 = *v331;
            (*v331)(v95, v334);
            v102 = __OFADD__(v98, 1);
            v103 = (v98 + 1);
            if (v102)
            {
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
            }

            v313 = v103;
            v24 = v327;
            v67 = v97 | v326;
            v68 = v319;
          }

          else
          {
            sub_1ADDF1F8C(v89);
            v67 = v326 | 1;
            v69 = v332;
            v70 = *v331;
          }

          v70(v68, v334);
          if (v67 == 3)
          {

            v108 = 3;
            goto LABEL_64;
          }
        }

        if (v313 == *(v324 + 16))
        {
          v108 = v326;
        }

        else
        {
          v108 = v326 | 2;
        }

LABEL_64:
        v109 = *(v311 + 64);
        v307 = v311 + 64;
        v110 = 1 << *(v311 + 32);
        if (v110 < 64)
        {
          v111 = ~(-1 << v110);
        }

        else
        {
          v111 = -1;
        }

        v112 = v111 & v109;
        v306 = (v110 + 63) >> 6;
        v313 = (v86 + 56);

        v310 = 0;
        v113 = 0;
        v114 = v316;
        while (1)
        {
          if (v112)
          {
            v326 = v108;
            v116 = v113;
LABEL_80:
            v120 = __clz(__rbit64(v112));
            v112 &= v112 - 1;
            v121 = v120 | (v116 << 6);
            v122 = v311;
            v123 = v321;
            sub_1ADDDE768(*(v311 + 48) + v322[9] * v121, v321);
            v124 = v329;
            v125 = *(v122 + 56) + *(v329 + 72) * v121;
            v126 = v323;
            v127 = v334;
            (*(v329 + 16))(v323, v125, v334);
            v128 = v332;
            v129 = *(v332 + 48);
            v130 = v123;
            v114 = v316;
            sub_1ADDD8010(v130, v316);
            v131 = *(v124 + 32);
            v69 = v128;
            v131(v114 + v129, v126, v127);
            v132 = 0;
            v108 = v326;
            v24 = v327;
            v119 = v317;
          }

          else
          {
            v117 = v306 <= v113 + 1 ? v113 + 1 : v306;
            v118 = v117 - 1;
            v119 = v317;
            while (1)
            {
              v116 = v113 + 1;
              if (__OFADD__(v113, 1))
              {
                goto LABEL_343;
              }

              if (v116 >= v306)
              {
                break;
              }

              v112 = *(v307 + 8 * v116);
              ++v113;
              if (v112)
              {
                v326 = v108;
                v113 = v116;
                goto LABEL_80;
              }
            }

            v112 = 0;
            v132 = 1;
            v113 = v118;
          }

          (*v313)(v114, v132, 1, v69);
          sub_1ADFBA458(v114, v119);
          if ((v325)(v119, 1, v69) == 1)
          {
            break;
          }

          v133 = *v333;
          (*v333)(v330, v119 + *(v69 + 48), v334);
          sub_1ADDD8010(v119, v24);
          if (v320[2] && (v134 = sub_1ADDD8A6C(v24), (v135 & 1) != 0))
          {
            v136 = v304;
            v137 = v334;
            (*(v329 + 16))(v304, &v320[7][*(v329 + 72) * v134], v334);
            sub_1ADDF1F8C(v24);
            v138 = v308;
            v133(v308, v136, v137);
            if (sub_1AE23C0BC())
            {
              v139 = sub_1AE23C04C();
              v140 = 2 * (v139 != sub_1AE23C04C());
              v141 = v138;
            }

            else
            {
              v142 = sub_1AE23C04C();
              if (sub_1AE23C04C() < v142 && (sub_1AE23C0BC() & 1) != 0)
              {
                v140 = 1;
              }

              else
              {
                v140 = 3;
              }

              v141 = v308;
            }

            v24 = v327;
            v114 = v316;
            v69 = v332;
            v115 = *v331;
            (*v331)(v141, v334);
            if (__OFADD__(v310, 1))
            {
              goto LABEL_346;
            }

            ++v310;
            v108 |= v140;
          }

          else
          {
            sub_1ADDF1F8C(v24);
            v108 |= 1uLL;
            v115 = *v331;
          }

          v115(v330, v334);
          if (v108 == 3)
          {
            v55 = v311;

            sub_1ADE42CB8(v55);
            sub_1ADDCC35C(v302, v303);
            goto LABEL_16;
          }
        }

        v143 = v311;

        v144 = v320[2];
        sub_1ADE42CB8(v143);
        sub_1ADDCC35C(v302, v303);
        if (v310 == v144)
        {
          v48 = v301;
          v49 = v297;
          v53 = v296;
          v54 = v298;
          if ((v108 & 2) == 0)
          {
            goto LABEL_200;
          }
        }

        else
        {
LABEL_16:
          v48 = v301;
          v49 = v297;
          v53 = v296;
          v54 = v298;
        }

        goto LABEL_17;
      }

      v104 = v59 >> 62;
      if (v59 >> 62 == 3)
      {
        if (v60)
        {
          v105 = 0;
        }

        else
        {
          v105 = v59 == 0xC000000000000000;
        }

        v107 = !v105 || v49 < 3;
        if (((v107 | v289) & 1) == 0)
        {
          sub_1ADE42CB8(v320);
          v201 = 0;
          v202 = 0xC000000000000000;
          goto LABEL_202;
        }

LABEL_107:
        v145 = 0;
        if (v49 <= 1)
        {
          goto LABEL_104;
        }

        goto LABEL_108;
      }

      if (v104 > 1)
      {
        if (v104 != 2)
        {
          goto LABEL_107;
        }

        v147 = *(v60 + 16);
        v146 = *(v60 + 24);
        v102 = __OFSUB__(v146, v147);
        v145 = v146 - v147;
        if (v102)
        {
          goto LABEL_354;
        }

        if (v49 <= 1)
        {
LABEL_104:
          v148 = v292;
          if (v49)
          {
            v148 = v287;
            if (v288)
            {
              goto LABEL_350;
            }
          }

          goto LABEL_110;
        }
      }

      else if (v104)
      {
        LODWORD(v145) = HIDWORD(v60) - v60;
        if (__OFSUB__(HIDWORD(v60), v60))
        {
          goto LABEL_353;
        }

        v145 = v145;
        if (v49 <= 1)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v145 = BYTE6(v59);
        if (v49 <= 1)
        {
          goto LABEL_104;
        }
      }

LABEL_108:
      if (v49 != 2)
      {
        if (!v145)
        {
          goto LABEL_200;
        }

        goto LABEL_17;
      }

      v150 = *(v294 + 16);
      v149 = *(v294 + 24);
      v102 = __OFSUB__(v149, v150);
      v148 = v149 - v150;
      if (v102)
      {
        goto LABEL_349;
      }

LABEL_110:
      if (v145 != v148)
      {
        goto LABEL_17;
      }

      if (v145 < 1)
      {
        goto LABEL_200;
      }

      if (v104 > 1)
      {
        break;
      }

      if (v104)
      {
        if (v60 > v60 >> 32)
        {
          goto LABEL_356;
        }

        sub_1ADE42C78(0);
        v302 = v60;
        sub_1ADDD86D8(v60, v59);
        v156 = sub_1AE23BB7C();
        v303 = v59;
        if (v156)
        {
          v157 = v156;
          v158 = sub_1AE23BBAC();
          if (__OFSUB__(v60, v158))
          {
            goto LABEL_360;
          }

          v155 = (v60 - v158 + v157);
        }

        else
        {
          v155 = 0;
        }

        v54 = v298;
        sub_1AE23BB9C();
        if (v49 != 2)
        {
          if (v49 != 1)
          {
            LODWORD(__s1[0]) = v294;
            v163 = (v295 >> 40);
            BYTE4(__s1[0]) = v286;
            *(__s1 + 5) = *(&v294 + 5);
            HIBYTE(__s1[0]) = HIBYTE(v294);
            LODWORD(__s1[1]) = v295;
            WORD2(__s1[1]) = WORD2(v295);
            if (!v155)
            {
              goto LABEL_396;
            }

            goto LABEL_180;
          }

          if (v54 < v53)
          {
            goto LABEL_371;
          }

          v167 = sub_1AE23BB7C();
          if (v167)
          {
            v171 = sub_1AE23BBAC();
            if (__OFSUB__(v53, v171))
            {
              goto LABEL_380;
            }

            v167 += v53 - v171;
          }

          v54 = v298;
          v172 = sub_1AE23BB9C();
          v163 = v285;
          if (v172 < v285)
          {
            v163 = v172;
          }

          if (!v155)
          {
            goto LABEL_398;
          }

          v170 = v320;
          if (!v167)
          {
            goto LABEL_397;
          }

LABEL_160:
          if (v155 == v167)
          {
            goto LABEL_204;
          }

          v173 = v163;
          v174 = v155;
          v175 = v167;
LABEL_181:
          v194 = memcmp(v174, v175, v173);
          sub_1ADE42CB8(0);
          sub_1ADDCC35C(v302, v303);
          if (!v194)
          {
            goto LABEL_200;
          }

          goto LABEL_17;
        }

        v189 = *(v294 + 16);
        v190 = *(v294 + 24);
        v191 = sub_1AE23BB7C();
        v301 = v48;
        if (v191)
        {
          v192 = v191;
          v193 = sub_1AE23BBAC();
          if (__OFSUB__(v189, v193))
          {
            goto LABEL_378;
          }

          v188 = (v189 - v193 + v192);
        }

        else
        {
          v188 = 0;
        }

        v102 = __OFSUB__(v190, v189);
        v197 = (v190 - v189);
        if (v102)
        {
          goto LABEL_372;
        }

        v198 = sub_1AE23BB9C();
        if (v198 >= v197)
        {
          v163 = v197;
        }

        else
        {
          v163 = v198;
        }

        if (!v155)
        {
          goto LABEL_400;
        }

        v170 = v320;
        v49 = v297;
        v53 = v296;
        v54 = v298;
        if (!v188)
        {
          goto LABEL_399;
        }

        goto LABEL_198;
      }

      __s1[0] = v60;
      LOWORD(__s1[1]) = v59;
      BYTE2(__s1[1]) = BYTE2(v59);
      BYTE3(__s1[1]) = BYTE3(v59);
      BYTE4(__s1[1]) = BYTE4(v59);
      BYTE5(__s1[1]) = BYTE5(v59);
      if (!v49)
      {
        goto LABEL_135;
      }

      v302 = v60;
      if (v49 == 1)
      {
        if (v54 < v53)
        {
          goto LABEL_367;
        }

        sub_1ADE42C78(0);
        goto LABEL_167;
      }

      v176 = *(v294 + 24);
      v332 = *(v294 + 16);
      v326 = v176;
      sub_1ADE42C78(0);
      v303 = v59;
      sub_1ADDD86D8(v60, v59);
      v177 = v291;
      v178 = sub_1ADFB9F04(v332, v326, v295 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      v163 = &v323;
      v291 = v177;
      if (v177)
      {
        goto LABEL_401;
      }

      v179 = v178;
      sub_1ADE42CB8(0);
      sub_1ADDCC35C(v302, v303);
      if (v179)
      {
LABEL_200:
        sub_1ADE42CB8(v320);
        v201 = v294;
        v200 = &v327;
        goto LABEL_201;
      }

LABEL_17:
      if (++v48 == v299)
      {
        goto LABEL_340;
      }
    }

    if (v104 != 2)
    {
      memset(__s1, 0, 14);
      if (!v49)
      {
LABEL_135:
        __s2 = v294;
        v337 = v286;
        v338 = *(&v294 + 5);
        v339 = HIBYTE(v294);
        v340 = v295;
        v341 = WORD2(v295);
        if (!memcmp(__s1, &__s2, v292))
        {
          goto LABEL_200;
        }

        goto LABEL_17;
      }

      if (v49 == 2)
      {
        v159 = *(v294 + 24);
        v332 = *(v294 + 16);
        sub_1ADE42C78(0);
        v303 = v59;
        sub_1ADDD86D8(v60, v59);
        v160 = v159;
        v161 = v291;
        v162 = sub_1ADFB9F04(v332, v160, v295 & 0x3FFFFFFFFFFFFFFFLL, __s1);
        v163 = &v323;
        v291 = v161;
        if (v161)
        {
          goto LABEL_401;
        }

        v164 = v162;
        sub_1ADE42CB8(0);
        v165 = v60;
        v166 = v303;
      }

      else
      {
        if (v54 < v53)
        {
          goto LABEL_368;
        }

        sub_1ADE42C78(0);
        v302 = v60;
LABEL_167:
        sub_1ADDD86D8(v60, v59);
        v180 = v291;
        v181 = sub_1ADFB9F04(v53, v54, v295 & 0x3FFFFFFFFFFFFFFFLL, __s1);
        v163 = &v323;
        v291 = v180;
        if (v180)
        {
          goto LABEL_401;
        }

        v182 = v59;
        v164 = v181;
        sub_1ADE42CB8(0);
        v165 = v302;
        v166 = v182;
      }

      sub_1ADDCC35C(v165, v166);
      if (v164)
      {
        goto LABEL_200;
      }

      goto LABEL_17;
    }

    v151 = *(v60 + 16);
    sub_1ADE42C78(0);
    v302 = v60;
    sub_1ADDD86D8(v60, v59);
    v152 = sub_1AE23BB7C();
    v303 = v59;
    if (v152)
    {
      v153 = v152;
      v154 = sub_1AE23BBAC();
      if (__OFSUB__(v151, v154))
      {
        goto LABEL_359;
      }

      v155 = (v151 - v154 + v153);
    }

    else
    {
      v155 = 0;
    }

    v54 = v298;
    sub_1AE23BB9C();
    if (v49 != 2)
    {
      if (v49 == 1)
      {
        if (v54 < v53)
        {
          goto LABEL_369;
        }

        v167 = sub_1AE23BB7C();
        if (v167)
        {
          v168 = sub_1AE23BBAC();
          if (__OFSUB__(v53, v168))
          {
            goto LABEL_379;
          }

          v167 += v53 - v168;
        }

        v54 = v298;
        v169 = sub_1AE23BB9C();
        v163 = v285;
        if (v169 < v285)
        {
          v163 = v169;
        }

        if (!v155)
        {
          goto LABEL_393;
        }

        v170 = v320;
        if (!v167)
        {
          goto LABEL_392;
        }

        goto LABEL_160;
      }

      LODWORD(__s1[0]) = v294;
      v163 = (v295 >> 40);
      BYTE4(__s1[0]) = v286;
      *(__s1 + 5) = *(&v294 + 5);
      HIBYTE(__s1[0]) = HIBYTE(v294);
      LODWORD(__s1[1]) = v295;
      WORD2(__s1[1]) = WORD2(v295);
      if (!v155)
      {
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
LABEL_400:
        __break(1u);
LABEL_401:

        __break(1u);
        return;
      }

LABEL_180:
      v175 = __s1;
      v174 = v155;
      v173 = v292;
      goto LABEL_181;
    }

    v183 = *(v294 + 16);
    v184 = *(v294 + 24);
    v185 = sub_1AE23BB7C();
    v301 = v48;
    if (v185)
    {
      v186 = v185;
      v187 = sub_1AE23BBAC();
      if (__OFSUB__(v183, v187))
      {
        goto LABEL_377;
      }

      v188 = (v183 - v187 + v186);
    }

    else
    {
      v188 = 0;
    }

    v102 = __OFSUB__(v184, v183);
    v195 = (v184 - v183);
    if (v102)
    {
      goto LABEL_370;
    }

    v196 = sub_1AE23BB9C();
    if (v196 >= v195)
    {
      v163 = v195;
    }

    else
    {
      v163 = v196;
    }

    if (!v155)
    {
      goto LABEL_395;
    }

    v170 = v320;
    v49 = v297;
    v53 = v296;
    v54 = v298;
    if (!v188)
    {
      goto LABEL_394;
    }

LABEL_198:
    if (v155 != v188)
    {
      v199 = memcmp(v155, v188, v163);
      sub_1ADE42CB8(0);
      sub_1ADDCC35C(v302, v303);
      v48 = v301;
      if (!v199)
      {
        goto LABEL_200;
      }

      goto LABEL_17;
    }

LABEL_204:
    sub_1ADE42CB8(v170);
    sub_1ADDCC35C(v294, v295);
    sub_1ADE42CB8(0);
    v201 = v302;
    v200 = &v335;
LABEL_201:
    v202 = *(v200 - 32);
LABEL_202:
    sub_1ADDCC35C(v201, v202);
    v40 = v293;
    a1 = v284;
    a2 = v283;
    v41 = v282;
  }

  while (v293 != v290);
LABEL_205:
  v321 = *(a2 + 16);
  if (!v321)
  {
    goto LABEL_344;
  }

  v203 = 0;
  v204 = (a2 + 32);
  v322 = (a1 + 56);
  v319 = (a2 + 32);
  while (2)
  {
    v205 = &v204[32 * v203];
    v206 = *v205;
    v207 = *v205 != 0;
    if (!*v205)
    {
      break;
    }

    v329 = v203;
    LODWORD(v323) = v207;
    v208 = *(v205 + 1);
    v209 = *(v205 + 2);
    v210 = *(v205 + 3);
    v333 = v206;
    v334 = v208;
    sub_1ADE42C78(v206);
    sub_1ADDD86D8(v209, v210);
    if (!v290)
    {
LABEL_339:
      sub_1ADE42CB8(v333);
      v278 = v209;
      v279 = v210;
LABEL_341:
      sub_1ADDCC35C(v278, v279);
      break;
    }

    if (v209)
    {
      v211 = 0;
    }

    else
    {
      v211 = v210 == 0xC000000000000000;
    }

    v212 = !v211;
    LODWORD(v331) = v212;
    v213 = v210 >> 62;
    v324 = HIDWORD(v209);
    v214 = __OFSUB__(HIDWORD(v209), v209);
    LODWORD(v327) = v214;
    v332 = BYTE6(v210);
    v328 = v209;
    ++v329;
    v325 = v209 >> 32;
    v326 = HIDWORD(v209) - v209;
    v320 = ((v209 >> 32) - v209);
    v215 = v322;
    v216 = v290;
    v330 = v210;
    while (1)
    {
      v217 = *(v215 - 3);
      v218 = *(v215 - 2);
      v219 = *(v215 - 1);
      v220 = *v215;
      if (v217)
      {
        __s1[0] = 0;
        sub_1ADE42C78(v217);
        sub_1ADDD86D8(v219, v220);
        sub_1ADF6457C(v218, __s1, v334);
        sub_1ADF6457C(v217, __s1, v333);
        sub_1ADE42CB8(v217);
        sub_1ADDCC35C(v219, v220);
        if ((__s1[0] & 2) == 0)
        {
          goto LABEL_333;
        }

        goto LABEL_220;
      }

      v221 = v220 >> 62;
      if (v220 >> 62 == 3)
      {
        if (v219)
        {
          v222 = 0;
        }

        else
        {
          v222 = v220 == 0xC000000000000000;
        }

        v224 = !v222 || v213 < 3;
        if (((v224 | v331) & 1) == 0)
        {
          sub_1ADE42CB8(v333);
          v274 = 0;
          v275 = 0xC000000000000000;
          goto LABEL_334;
        }

LABEL_244:
        v225 = 0;
        if (v213 <= 1)
        {
          goto LABEL_241;
        }

        goto LABEL_245;
      }

      if (v221 > 1)
      {
        if (v221 != 2)
        {
          goto LABEL_244;
        }

        v227 = *(v219 + 16);
        v226 = *(v219 + 24);
        v102 = __OFSUB__(v226, v227);
        v225 = v226 - v227;
        if (v102)
        {
          goto LABEL_351;
        }

        if (v213 <= 1)
        {
          goto LABEL_241;
        }
      }

      else if (v221)
      {
        LODWORD(v225) = HIDWORD(v219) - v219;
        if (__OFSUB__(HIDWORD(v219), v219))
        {
          goto LABEL_352;
        }

        v225 = v225;
        if (v213 <= 1)
        {
LABEL_241:
          v228 = v332;
          if (v213)
          {
            v228 = v326;
            if (v327)
            {
              goto LABEL_347;
            }
          }

          goto LABEL_247;
        }
      }

      else
      {
        v225 = BYTE6(v220);
        if (v213 <= 1)
        {
          goto LABEL_241;
        }
      }

LABEL_245:
      if (v213 != 2)
      {
        if (!v225)
        {
          goto LABEL_333;
        }

        goto LABEL_220;
      }

      v230 = *(v209 + 16);
      v229 = *(v209 + 24);
      v102 = __OFSUB__(v229, v230);
      v228 = v229 - v230;
      if (v102)
      {
        goto LABEL_348;
      }

LABEL_247:
      if (v225 != v228)
      {
        goto LABEL_220;
      }

      if (v225 < 1)
      {
        goto LABEL_333;
      }

      if (v221 <= 1)
      {
        break;
      }

      if (v221 != 2)
      {
        memset(__s1, 0, 14);
        if (!v213)
        {
LABEL_273:
          LOWORD(__s2) = v209;
          BYTE2(__s2) = BYTE2(v209);
          HIBYTE(__s2) = BYTE3(v209);
          v337 = v324;
          LOBYTE(v338) = BYTE5(v209);
          HIBYTE(v338) = BYTE6(v209);
          v339 = HIBYTE(v209);
          LOWORD(v340) = v210;
          BYTE2(v340) = BYTE2(v210);
          HIBYTE(v340) = BYTE3(v210);
          LOBYTE(v341) = BYTE4(v210);
          HIBYTE(v341) = BYTE5(v210);
          if (!memcmp(__s1, &__s2, v332))
          {
            goto LABEL_333;
          }

          goto LABEL_220;
        }

        if (v213 == 2)
        {
LABEL_270:
          v242 = *(v209 + 16);
          v243 = *(v209 + 24);
          sub_1ADE42C78(0);
          sub_1ADDD86D8(v219, v220);
          v244 = v210 & 0x3FFFFFFFFFFFFFFFLL;
          v245 = v291;
          v246 = sub_1ADFB9F04(v242, v243, v244, __s1);
          v163 = &v323;
          v291 = v245;
          if (v245)
          {
            goto LABEL_401;
          }

          v247 = v246;
          sub_1ADE42CB8(0);
          sub_1ADDCC35C(v219, v220);
          v210 = v330;
          if (v247)
          {
            goto LABEL_333;
          }

          goto LABEL_220;
        }

        v231 = v328;
        v232 = v325;
        if (v325 < v328)
        {
          goto LABEL_361;
        }

        goto LABEL_301;
      }

      v233 = *(v219 + 16);
      v234 = *(v215 - 2);
      sub_1ADE42C78(0);
      sub_1ADDD86D8(v219, v220);
      v235 = sub_1AE23BB7C();
      if (v235)
      {
        v236 = v235;
        v237 = sub_1AE23BBAC();
        if (__OFSUB__(v233, v237))
        {
          goto LABEL_357;
        }

        v318 = (v233 - v237 + v236);
      }

      else
      {
        v318 = 0;
      }

      v210 = v330;
      sub_1AE23BB9C();
      v248 = v328;
      if (v213 == 2)
      {
        v261 = *(v209 + 16);
        v317 = *(v209 + 24);
        v249 = sub_1AE23BB7C();
        if (v249)
        {
          v262 = sub_1AE23BBAC();
          if (__OFSUB__(v261, v262))
          {
            goto LABEL_373;
          }

          v249 += v261 - v262;
        }

        v102 = __OFSUB__(v317, v261);
        v263 = &v317[-v261];
        if (v102)
        {
          goto LABEL_364;
        }

        v264 = sub_1AE23BB9C();
        if (v264 >= v263)
        {
          v163 = v263;
        }

        else
        {
          v163 = v264;
        }

        v252 = v318;
        if (!v318)
        {
          goto LABEL_382;
        }

        if (!v249)
        {
          __break(1u);
LABEL_382:
          __break(1u);
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
          __break(1u);
LABEL_389:
          __break(1u);
LABEL_390:
          __break(1u);
          goto LABEL_391;
        }
      }

      else
      {
        if (v213 != 1)
        {
          v256 = v318;
          LOWORD(__s1[0]) = v209;
          BYTE2(__s1[0]) = BYTE2(v209);
          BYTE3(__s1[0]) = BYTE3(v209);
          v163 = (v210 >> 40);
          BYTE4(__s1[0]) = v324;
          BYTE5(__s1[0]) = BYTE5(v209);
          BYTE6(__s1[0]) = BYTE6(v209);
          HIBYTE(__s1[0]) = HIBYTE(v209);
          LOWORD(__s1[1]) = v210;
          BYTE2(__s1[1]) = BYTE2(v210);
          BYTE3(__s1[1]) = BYTE3(v210);
          BYTE4(__s1[1]) = BYTE4(v210);
          BYTE5(__s1[1]) = BYTE5(v210);
          if (!v318)
          {
            goto LABEL_386;
          }

          goto LABEL_322;
        }

        if (v325 < v328)
        {
          goto LABEL_363;
        }

        v249 = sub_1AE23BB7C();
        if (v249)
        {
          v250 = sub_1AE23BBAC();
          if (__OFSUB__(v248, v250))
          {
            goto LABEL_374;
          }

          v249 += v248 - v250;
        }

        v251 = sub_1AE23BB9C();
        v163 = v320;
        if (v251 < v320)
        {
          v163 = v251;
        }

        v252 = v318;
        if (!v318)
        {
          goto LABEL_388;
        }

        if (!v249)
        {
          goto LABEL_387;
        }
      }

      if (v252 == v249)
      {
        sub_1ADE42CB8(v333);
        v276 = v209;
        v277 = v330;
        goto LABEL_338;
      }

      v265 = memcmp(v252, v249, v163);
      sub_1ADE42CB8(0);
      sub_1ADDCC35C(v219, v220);
      v210 = v330;
      if (!v265)
      {
        goto LABEL_333;
      }

LABEL_220:
      v215 += 4;
      if (!--v216)
      {
        goto LABEL_339;
      }
    }

    if (!v221)
    {
      __s1[0] = *(v215 - 1);
      LOWORD(__s1[1]) = v220;
      BYTE2(__s1[1]) = BYTE2(v220);
      BYTE3(__s1[1]) = BYTE3(v220);
      BYTE4(__s1[1]) = BYTE4(v220);
      BYTE5(__s1[1]) = BYTE5(v220);
      if (!v213)
      {
        goto LABEL_273;
      }

      if (v213 != 1)
      {
        goto LABEL_270;
      }

      v231 = v328;
      v232 = v325;
      if (v325 < v328)
      {
        goto LABEL_362;
      }

LABEL_301:
      sub_1ADE42C78(0);
      sub_1ADDD86D8(v219, v220);
      v257 = v210 & 0x3FFFFFFFFFFFFFFFLL;
      v258 = v291;
      v259 = sub_1ADFB9F04(v231, v232, v257, __s1);
      v163 = &v323;
      v291 = v258;
      if (v258)
      {
        goto LABEL_401;
      }

      v260 = v259;
      sub_1ADE42CB8(0);
      sub_1ADDCC35C(v219, v220);
      v210 = v330;
      if (v260)
      {
LABEL_333:
        sub_1ADE42CB8(v333);
        v274 = v209;
        v275 = v210;
        goto LABEL_334;
      }

      goto LABEL_220;
    }

    if (v219 > v219 >> 32)
    {
      goto LABEL_355;
    }

    v238 = *(v215 - 2);
    sub_1ADE42C78(0);
    sub_1ADDD86D8(v219, v220);
    v239 = sub_1AE23BB7C();
    if (v239)
    {
      v240 = v239;
      v241 = sub_1AE23BBAC();
      if (__OFSUB__(v219, v241))
      {
        goto LABEL_358;
      }

      v318 = (v219 - v241 + v240);
    }

    else
    {
      v318 = 0;
    }

    v210 = v330;
    sub_1AE23BB9C();
    if (v213 != 2)
    {
      if (v213 == 1)
      {
        if (v325 < v328)
        {
          goto LABEL_365;
        }

        v253 = sub_1AE23BB7C();
        if (v253)
        {
          v254 = sub_1AE23BBAC();
          if (__OFSUB__(v328, v254))
          {
            goto LABEL_376;
          }

          v253 += v328 - v254;
        }

        v255 = sub_1AE23BB9C();
        v163 = v320;
        if (v255 < v320)
        {
          v163 = v255;
        }

        v256 = v318;
        if (!v318)
        {
          goto LABEL_385;
        }

        if (!v253)
        {
          goto LABEL_384;
        }

        if (v318 == v253)
        {
          goto LABEL_337;
        }

LABEL_331:
        v270 = v163;
        v269 = v253;
      }

      else
      {
        v256 = v318;
        LOWORD(__s1[0]) = v209;
        BYTE2(__s1[0]) = BYTE2(v209);
        BYTE3(__s1[0]) = BYTE3(v209);
        v163 = (v210 >> 40);
        BYTE4(__s1[0]) = v324;
        BYTE5(__s1[0]) = BYTE5(v209);
        BYTE6(__s1[0]) = BYTE6(v209);
        HIBYTE(__s1[0]) = HIBYTE(v209);
        LOWORD(__s1[1]) = v210;
        BYTE2(__s1[1]) = BYTE2(v210);
        BYTE3(__s1[1]) = BYTE3(v210);
        BYTE4(__s1[1]) = BYTE4(v210);
        BYTE5(__s1[1]) = BYTE5(v210);
        if (!v318)
        {
          goto LABEL_383;
        }

LABEL_322:
        v269 = __s1;
        v270 = v332;
      }

      v273 = memcmp(v256, v269, v270);
      sub_1ADE42CB8(0);
      sub_1ADDCC35C(v219, v220);
      if (!v273)
      {
        goto LABEL_333;
      }

      goto LABEL_220;
    }

    v266 = *(v209 + 24);
    v317 = *(v209 + 16);
    v316 = v266;
    v253 = sub_1AE23BB7C();
    if (v253)
    {
      v267 = sub_1AE23BBAC();
      v268 = v317;
      if (__OFSUB__(v317, v267))
      {
        goto LABEL_375;
      }

      v253 += &v317[-v267];
    }

    else
    {
      v268 = v317;
    }

    v271 = (v316 - v268);
    if (__OFSUB__(v316, v268))
    {
      goto LABEL_366;
    }

    v272 = sub_1AE23BB9C();
    if (v272 >= v271)
    {
      v163 = v271;
    }

    else
    {
      v163 = v272;
    }

    v256 = v318;
    if (!v318)
    {
      goto LABEL_390;
    }

    if (!v253)
    {
      goto LABEL_389;
    }

    v210 = v330;
    if (v318 != v253)
    {
      goto LABEL_331;
    }

LABEL_337:
    sub_1ADE42CB8(v333);
    v276 = v209;
    v277 = v210;
LABEL_338:
    sub_1ADDCC35C(v276, v277);
    sub_1ADE42CB8(0);
    v274 = v219;
    v275 = v220;
LABEL_334:
    sub_1ADDCC35C(v274, v275);
    v203 = v329;
    v204 = v319;
    if (v329 != v321)
    {
      continue;
    }

    break;
  }

LABEL_344:
  v280 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1ADFB6944(uint64_t result)
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

  result = sub_1ADE555A4(result, v11, 1, v3);
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

uint64_t sub_1ADFB6A38(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1ADE5534C(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_1AE03A62C(v33, &v4[16 * v12 + 32], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  if (result)
  {
    v14 = *(v4 + 2);
    v15 = __OFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
      __break(1u);
LABEL_19:
      while (1)
      {
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_44;
        }

        if (v18 >= ((v6 + 64) >> 6))
        {
          v21 = 0;
          v22 = 0xF000000000000000;
          goto LABEL_42;
        }

        v17 = *(v13 + 8 * v18);
        ++v16;
        if (v17)
        {
          goto LABEL_22;
        }
      }
    }

    *(v4 + 2) = v16;
  }

  if (result != v13)
  {
LABEL_13:
    result = sub_1ADDDCE74();
    *v1 = v4;
    return result;
  }

LABEL_16:
  v2 = *(v4 + 2);
  v13 = v33[1];
  v31 = v33[0];
  v6 = v33[2];
  v16 = v34;
  v17 = v35;
  if (!v35)
  {
    goto LABEL_19;
  }

  v18 = v34;
LABEL_22:
  v19 = (v17 - 1) & v17;
  v20 = (*(v31 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v17)))));
  v21 = *v20;
  v22 = v20[1];
  sub_1ADDD86D8(*v20, v22);
  if (v22 >> 60 == 15)
  {
LABEL_42:
    sub_1ADDE1588(v21, v22);
    goto LABEL_13;
  }

  v32 = v18;
  while (1)
  {
    v23 = *(v4 + 3);
    v24 = v23 >> 1;
    if ((v23 >> 1) < v2 + 1)
    {
      v4 = sub_1ADE5534C((v23 > 1), v2 + 1, 1, v4);
      v24 = *(v4 + 3) >> 1;
    }

    if (v2 < v24)
    {
      break;
    }

LABEL_24:
    *(v4 + 2) = v2;
    if (v22 >> 60 == 15)
    {
      goto LABEL_42;
    }
  }

  while (1)
  {
    sub_1ADDD86D8(v21, v22);
    result = sub_1ADDE1588(v21, v22);
    v25 = &v4[16 * v2 + 32];
    *v25 = v21;
    v25[1] = v22;
    ++v2;
    if (!v19)
    {
      break;
    }

    v26 = v32;
LABEL_35:
    v28 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v29 = (*(v31 + 48) + ((v26 << 10) | (16 * v28)));
    v21 = *v29;
    v22 = v29[1];
    sub_1ADDD86D8(*v29, v22);
    if (v22 >> 60 == 15 || v2 >= v24)
    {
      goto LABEL_24;
    }
  }

  v27 = v32;
  while (1)
  {
    v26 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v26 >= ((v6 + 64) >> 6))
    {
      v21 = 0;
      *(v4 + 2) = v2;
      v22 = 0xF000000000000000;
      goto LABEL_42;
    }

    v19 = *(v13 + 8 * v26);
    ++v27;
    if (v19)
    {
      v32 = v26;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1ADFB6D60(uint64_t result)
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

  result = sub_1ADE5534C(result, v11, 1, v3);
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

uint64_t sub_1ADFB6E54(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  v8 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v4 + 24) >> 1) - *(v4 + 16) < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, v3);
  v11 = v9 + v3;
  if (!v10)
  {
    *(v4 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1ADFB6F58(uint64_t result)
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

  result = sub_1ADE55240(result, v11, 1, v3);
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

void *sub_1ADFB704C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_1ADE564E4(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F0, &qword_1AE241BD0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1ADFB7154()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1AE23E31C();
  sub_1AE23E33C();
  if (v1)
  {

    sub_1ADF76AA0(v6, v1);
    sub_1ADF76AA0(v6, v2);
    sub_1ADE42CB8(v1);
  }

  sub_1AE23BECC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADFB7204(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[2];
  v5 = v1[3];
  if (*v1)
  {
    v6 = v1[1];
    sub_1AE23E33C();

    sub_1ADF76AA0(a1, v3);
    sub_1ADF76AA0(a1, v6);
    sub_1ADE42CB8(v3);
  }

  else
  {
    sub_1AE23E33C();
  }

  return sub_1AE23BECC();
}

uint64_t sub_1ADFB72B0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1AE23E31C();
  sub_1AE23E33C();
  if (v1)
  {

    sub_1ADF76AA0(v6, v1);
    sub_1ADF76AA0(v6, v2);
    sub_1ADE42CB8(v1);
  }

  sub_1AE23BECC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADFB7360(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  v250 = sub_1AE23C12C();
  v4 = *(v250 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v250);
  v220 = &v198 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v224 = &v198 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v236 = &v198 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v221 = &v198 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v225 = &v198 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v198 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v241 = &v198 - v19;
  v20 = type metadata accessor for Replica();
  v240 = *(v20 - 8);
  v21 = *(v240 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v246 = &v198 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v198 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v239 = &v198 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v233 = &v198 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v198 - v32;
  MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  v38 = *(a2 + 16);
  if (!v38)
  {
    result = 0;
LABEL_219:
    v197 = *MEMORY[0x1E69E9840];
    return result;
  }

  v39 = 0;
  v40 = a2 + 32;
  v216 = a1 + 32;
  v244 = v4 + 16;
  v249 = (v4 + 32);
  v248 = (v4 + 8);
  v237 = v17;
  v234 = v25;
  v235 = v37;
  v201 = a1;
  v245 = v4;
  v228 = v33;
  v229 = &v198 - v36;
  v200 = v38;
  v199 = a2 + 32;
  while (1)
  {
    v211 = v39;
    v41 = (v40 + 32 * v39);
    v42 = *v41;
    result = *v41 == 0;
    if (!*v41)
    {
      goto LABEL_219;
    }

    v202 = 0;
    v44 = v41[1];
    v45 = v41[2];
    v46 = v41[3];
    v47 = *(a1 + 16);
    v238 = v42;
    v231 = v44;
    sub_1ADE42C78(v42);
    v212 = v45;
    v213 = v46;
    sub_1ADDD86D8(v45, v46);
    v215 = v47;
    if (!v47)
    {
LABEL_218:
      sub_1ADE42CB8(v238);
      sub_1ADDCC35C(v212, v213);
      result = 1;
      goto LABEL_219;
    }

    v48 = 0;
    ++v211;
    v49 = v213 >> 62;
    v50 = !v212 && v213 == 0xC000000000000000;
    v51 = !v50;
    v209 = v51;
    v205 = HIDWORD(v212);
    v52 = __OFSUB__(HIDWORD(v212), v212);
    v208 = v52;
    v207 = HIDWORD(v212) - v212;
    v210 = BYTE6(v213);
    v206 = v212;
    v204 = v212 >> 32;
    v203 = (v212 >> 32) - v212;
    v214 = v213 >> 62;
    while (1)
    {
      v54 = (v216 + 32 * v48);
      v55 = *v54;
      v56 = v54[1];
      v57 = v54[2];
      v58 = v54[3];
      v230 = v56;
      if (!v55)
      {
        break;
      }

      v217 = v48;
      v59 = *(v56 + 64);
      v223 = v56 + 64;
      v60 = 1 << *(v56 + 32);
      if (v60 < 64)
      {
        v61 = ~(-1 << v60);
      }

      else
      {
        v61 = -1;
      }

      v62 = v61 & v59;
      v227 = v55;
      sub_1ADE42C78(v55);
      v219 = v57;
      v218 = v58;
      sub_1ADDD86D8(v57, v58);
      v222 = (v60 + 63) >> 6;

      v226 = 0;
      v63 = 0;
      v64 = 0;
      do
      {
        v247 = v64;
        if (v62)
        {
          v66 = v63;
          goto LABEL_34;
        }

        if (v222 <= v63 + 1)
        {
          v67 = v63 + 1;
        }

        else
        {
          v67 = v222;
        }

        v68 = v67 - 1;
        v69 = v235;
        do
        {
          v66 = v63 + 1;
          if (__OFADD__(v63, 1))
          {
            __break(1u);
LABEL_221:
            __break(1u);
LABEL_222:
            __break(1u);
LABEL_223:
            __break(1u);
            goto LABEL_224;
          }

          if (v66 >= v222)
          {
            v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
            (*(*(v96 - 8) + 56))(v69, 1, 1, v96);
            v62 = 0;
            v63 = v68;
            goto LABEL_35;
          }

          v62 = *(v223 + 8 * v66);
          ++v63;
        }

        while (!v62);
        v63 = v66;
LABEL_34:
        v70 = __clz(__rbit64(v62));
        v62 &= v62 - 1;
        v71 = v70 | (v66 << 6);
        v72 = v230;
        v73 = v239;
        sub_1ADDDE768(*(v230 + 48) + *(v240 + 72) * v71, v239);
        v74 = v245;
        v75 = v241;
        v76 = v250;
        (*(v245 + 16))(v241, *(v72 + 56) + *(v245 + 72) * v71, v250);
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        v78 = *(v77 + 48);
        v79 = v73;
        v69 = v235;
        sub_1ADDD8010(v79, v235);
        (*(v74 + 32))(v69 + v78, v75, v76);
        (*(*(v77 - 8) + 56))(v69, 0, 1, v77);
        v25 = v234;
        v64 = v247;
LABEL_35:
        v80 = v229;
        sub_1ADFBA458(v69, v229);
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        v232 = *(v81 - 8);
        v242 = *(v232 + 48);
        v82 = v242(v80, 1, v81);
        v83 = v246;
        v243 = v81;
        if (v82 == 1)
        {

          if (v226 != *(v231 + 16))
          {
            v64 |= 2uLL;
          }

          goto LABEL_64;
        }

        v84 = *v249;
        v85 = v237;
        (*v249)(v237, v80 + *(v81 + 48), v250);
        sub_1ADDD8010(v80, v25);
        v86 = v231;
        if (!*(v231 + 16) || (v87 = sub_1ADDD8A6C(v25), (v88 & 1) == 0))
        {
          sub_1ADDF1F8C(v25);
          v64 = v247 | 1;
          v65 = *v248;
          goto LABEL_23;
        }

        v89 = *(v86 + 56) + *(v245 + 72) * v87;
        v90 = v221;
        v91 = v250;
        (*(v245 + 16))(v221, v89, v250);
        sub_1ADDF1F8C(v25);
        v92 = v225;
        v84(v225, v90, v91);
        if (sub_1AE23C0BC())
        {
          v93 = sub_1AE23C04C();
          v94 = 2 * (v93 != sub_1AE23C04C());
          v95 = v92;
        }

        else
        {
          v97 = sub_1AE23C04C();
          if (sub_1AE23C04C() < v97 && (sub_1AE23C0BC() & 1) != 0)
          {
            v94 = 1;
          }

          else
          {
            v94 = 3;
          }

          v95 = v225;
        }

        v83 = v246;
        v25 = v234;
        v98 = v226;
        v65 = *v248;
        (*v248)(v95, v250);
        v99 = __OFADD__(v98, 1);
        v100 = v98 + 1;
        if (v99)
        {
          goto LABEL_222;
        }

        v226 = v100;
        v64 = v94 | v247;
        v85 = v237;
LABEL_23:
        v65(v85, v250);
      }

      while (v64 != 3);

LABEL_64:
      v105 = *(v227 + 64);
      v223 = v227 + 64;
      v106 = 1 << *(v227 + 32);
      if (v106 < 64)
      {
        v107 = ~(-1 << v106);
      }

      else
      {
        v107 = -1;
      }

      v108 = v107 & v105;
      v222 = (v106 + 63) >> 6;
      v232 += 56;

      v226 = 0;
      v109 = 0;
      v110 = v233;
      while (1)
      {
        v247 = v64;
        if (v108)
        {
          v112 = v109;
LABEL_80:
          v115 = __clz(__rbit64(v108));
          v108 &= v108 - 1;
          v116 = v115 | (v112 << 6);
          v117 = v227;
          v118 = v239;
          sub_1ADDDE768(*(v227 + 48) + *(v240 + 72) * v116, v239);
          v119 = v245;
          v120 = *(v117 + 56) + *(v245 + 72) * v116;
          v121 = v241;
          v122 = v250;
          (*(v245 + 16))(v241, v120, v250);
          v123 = v243;
          v124 = *(v243 + 48);
          v125 = v118;
          v110 = v233;
          sub_1ADDD8010(v125, v233);
          (*(v119 + 32))(v110 + v124, v121, v122);
          v126 = 0;
          v83 = v246;
        }

        else
        {
          v113 = v222 <= v109 + 1 ? v109 + 1 : v222;
          v114 = v113 - 1;
          while (1)
          {
            v112 = v109 + 1;
            if (__OFADD__(v109, 1))
            {
              goto LABEL_221;
            }

            if (v112 >= v222)
            {
              break;
            }

            v108 = *(v223 + 8 * v112);
            ++v109;
            if (v108)
            {
              v109 = v112;
              goto LABEL_80;
            }
          }

          v108 = 0;
          v126 = 1;
          v109 = v114;
          v123 = v243;
        }

        (*v232)(v110, v126, 1, v123);
        v127 = v228;
        sub_1ADFBA458(v110, v228);
        if (v242(v127, 1, v123) == 1)
        {
          break;
        }

        v128 = *v249;
        v129 = v127 + *(v123 + 48);
        v130 = v236;
        (*v249)(v236, v129, v250);
        sub_1ADDD8010(v127, v83);
        if (*(v238 + 16) && (v131 = sub_1ADDD8A6C(v83), (v132 & 1) != 0))
        {
          v133 = v220;
          v134 = v250;
          (*(v245 + 16))(v220, *(v238 + 56) + *(v245 + 72) * v131, v250);
          sub_1ADDF1F8C(v83);
          v135 = v224;
          v128(v224, v133, v134);
          if (sub_1AE23C0BC())
          {
            v136 = sub_1AE23C04C();
            v137 = 2 * (v136 != sub_1AE23C04C());
            v138 = v135;
          }

          else
          {
            v139 = sub_1AE23C04C();
            if (sub_1AE23C04C() < v139 && (sub_1AE23C0BC() & 1) != 0)
            {
              v137 = 1;
            }

            else
            {
              v137 = 3;
            }

            v138 = v224;
          }

          v83 = v246;
          v110 = v233;
          v111 = *v248;
          (*v248)(v138, v250);
          if (__OFADD__(v226, 1))
          {
            goto LABEL_223;
          }

          ++v226;
          v64 = v137 | v247;
          v130 = v236;
        }

        else
        {
          sub_1ADDF1F8C(v83);
          v64 = v247 | 1;
          v111 = *v248;
        }

        v111(v130, v250);
        if (v64 == 3)
        {
          v53 = v227;

          sub_1ADE42CB8(v53);
          sub_1ADDCC35C(v219, v218);
          v25 = v234;
          v48 = v217;
          v49 = v214;
          goto LABEL_16;
        }
      }

      v140 = v227;

      v141 = *(v238 + 16);
      sub_1ADE42CB8(v140);
      sub_1ADDCC35C(v219, v218);
      v25 = v234;
      v48 = v217;
      v49 = v214;
      if (v226 == v141 && (v247 & 2) == 0)
      {
LABEL_212:
        sub_1ADE42CB8(v238);
        v195 = v212;
        v194 = &v245;
        goto LABEL_213;
      }

LABEL_16:
      if (++v48 == v215)
      {
        goto LABEL_218;
      }
    }

    v101 = v58 >> 62;
    if (v58 >> 62 != 3)
    {
      break;
    }

    if (v57)
    {
      v102 = 0;
    }

    else
    {
      v102 = v58 == 0xC000000000000000;
    }

    v104 = !v102 || v49 < 3;
    if ((v104 | v209))
    {
      goto LABEL_107;
    }

    sub_1ADE42CB8(v238);
    v195 = 0;
    v196 = 0xC000000000000000;
LABEL_214:
    sub_1ADDCC35C(v195, v196);
    v39 = v211;
    a1 = v201;
    v40 = v199;
    result = v202;
    if (v211 == v200)
    {
      goto LABEL_219;
    }
  }

  if (v101 > 1)
  {
    if (v101 != 2)
    {
LABEL_107:
      v142 = 0;
      if (v49 > 1)
      {
        goto LABEL_108;
      }

      goto LABEL_104;
    }

    v144 = *(v57 + 16);
    v143 = *(v57 + 24);
    v99 = __OFSUB__(v143, v144);
    v142 = v143 - v144;
    if (v99)
    {
      goto LABEL_227;
    }

    if (v49 <= 1)
    {
      goto LABEL_104;
    }

    goto LABEL_108;
  }

  if (v101)
  {
    LODWORD(v142) = HIDWORD(v57) - v57;
    if (__OFSUB__(HIDWORD(v57), v57))
    {
      goto LABEL_226;
    }

    v142 = v142;
    if (v49 <= 1)
    {
      goto LABEL_104;
    }

LABEL_108:
    if (v49 != 2)
    {
      if (!v142)
      {
        goto LABEL_212;
      }

      goto LABEL_16;
    }

    v147 = *(v212 + 16);
    v146 = *(v212 + 24);
    v99 = __OFSUB__(v146, v147);
    v145 = v146 - v147;
    if (!v99)
    {
      goto LABEL_110;
    }

LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
    goto LABEL_231;
  }

  v142 = BYTE6(v58);
  if (v49 > 1)
  {
    goto LABEL_108;
  }

LABEL_104:
  v145 = v210;
  if (v49)
  {
    v145 = v207;
    if (v208)
    {
      goto LABEL_225;
    }
  }

LABEL_110:
  if (v142 != v145)
  {
    goto LABEL_16;
  }

  if (v142 < 1)
  {
    goto LABEL_212;
  }

  if (v101 <= 1)
  {
    if (!v101)
    {
      __s1[0] = v57;
      LOWORD(__s1[1]) = v58;
      BYTE2(__s1[1]) = BYTE2(v58);
      BYTE3(__s1[1]) = BYTE3(v58);
      BYTE4(__s1[1]) = BYTE4(v58);
      BYTE5(__s1[1]) = BYTE5(v58);
      if (v49)
      {
        v219 = v57;
        if (v49 == 1)
        {
          if (v204 >= v206)
          {
            sub_1ADE42C78(0);
            sub_1ADDD86D8(v57, v58);
            v148 = sub_1AE23BB7C();
            if (!v148)
            {
              goto LABEL_261;
            }

            v149 = v148;
            v150 = sub_1AE23BBAC();
            if (!__OFSUB__(v206, v150))
            {
              v151 = (v206 - v150 + v149);
              v152 = sub_1AE23BB9C();
              if (!v151)
              {
                goto LABEL_260;
              }

LABEL_180:
              if (v152 >= v203)
              {
                v179 = v203;
              }

              else
              {
                v179 = v152;
              }

              v180 = __s1;
              v181 = v151;
LABEL_211:
              v193 = memcmp(v180, v181, v179);
              sub_1ADE42CB8(0);
              sub_1ADDCC35C(v219, v58);
              if (!v193)
              {
                goto LABEL_212;
              }

              goto LABEL_16;
            }

LABEL_237:
            __break(1u);
LABEL_238:
            __break(1u);
LABEL_239:
            __break(1u);
LABEL_240:
            __break(1u);
LABEL_241:
            __break(1u);
LABEL_242:
            __break(1u);
LABEL_243:
            __break(1u);
LABEL_244:
            __break(1u);
LABEL_245:
            __break(1u);
LABEL_246:
            __break(1u);
          }

LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
          goto LABEL_237;
        }

        v170 = *(v212 + 16);
        v171 = *(v212 + 24);
        sub_1ADE42C78(0);
        v218 = v58;
        sub_1ADDD86D8(v57, v58);
        v166 = sub_1AE23BB7C();
        if (v166)
        {
          v172 = sub_1AE23BBAC();
          if (__OFSUB__(v170, v172))
          {
            goto LABEL_241;
          }

          v166 += v170 - v172;
        }

        v99 = __OFSUB__(v171, v170);
        v168 = v171 - v170;
        if (v99)
        {
          goto LABEL_235;
        }

        v169 = sub_1AE23BB9C();
        v49 = v214;
        if (!v166)
        {
          goto LABEL_259;
        }

        goto LABEL_172;
      }

LABEL_165:
      __s2 = v212;
      v252 = v205;
      v253 = *(&v212 + 5);
      v254 = HIBYTE(v212);
      v255 = v213;
      v256 = WORD2(v213);
      if (!memcmp(__s1, &__s2, v210))
      {
        goto LABEL_212;
      }

      goto LABEL_16;
    }

    if (v57 > v57 >> 32)
    {
      goto LABEL_228;
    }

    sub_1ADE42C78(0);
    v219 = v57;
    sub_1ADDD86D8(v57, v58);
    v154 = sub_1AE23BB7C();
    if (v154)
    {
      v161 = sub_1AE23BBAC();
      if (__OFSUB__(v57, v161))
      {
        goto LABEL_230;
      }

      v154 += v57 - v161;
    }

    sub_1AE23BB9C();
    if (v49 != 2)
    {
      if (v49 == 1)
      {
        v218 = v58;
        if (v204 < v206)
        {
          goto LABEL_239;
        }

        v156 = sub_1AE23BB7C();
        if (v156)
        {
          v162 = sub_1AE23BBAC();
          if (__OFSUB__(v206, v162))
          {
            goto LABEL_246;
          }

          v156 += v206 - v162;
        }

        v163 = sub_1AE23BB9C();
        v159 = v203;
        if (v163 < v203)
        {
          v159 = v163;
        }

        if (!v154)
        {
          goto LABEL_258;
        }

        v160 = v238;
        if (!v156)
        {
          goto LABEL_257;
        }

LABEL_155:
        if (v154 != v156)
        {
          goto LABEL_206;
        }

LABEL_216:
        sub_1ADE42CB8(v160);
        sub_1ADDCC35C(v212, v213);
        sub_1ADE42CB8(0);
        v195 = v219;
        v194 = &v250;
LABEL_213:
        v196 = *(v194 - 32);
        goto LABEL_214;
      }

      LODWORD(__s1[0]) = v212;
      BYTE4(__s1[0]) = v205;
      *(__s1 + 5) = *(&v212 + 5);
      HIBYTE(__s1[0]) = HIBYTE(v212);
      LODWORD(__s1[1]) = v213;
      WORD2(__s1[1]) = WORD2(v213);
      if (!v154)
      {
        goto LABEL_250;
      }

LABEL_210:
      v181 = __s1;
      v180 = v154;
      v179 = v210;
      goto LABEL_211;
    }

    v218 = v58;
    v217 = v48;
    v187 = *(v212 + 16);
    v188 = *(v212 + 24);
    v156 = sub_1AE23BB7C();
    if (v156)
    {
      v189 = sub_1AE23BBAC();
      if (__OFSUB__(v187, v189))
      {
        goto LABEL_244;
      }

      v156 += v187 - v189;
    }

    v99 = __OFSUB__(v188, v187);
    v190 = v188 - v187;
    if (v99)
    {
      goto LABEL_240;
    }

    v191 = sub_1AE23BB9C();
    if (v191 >= v190)
    {
      v159 = v190;
    }

    else
    {
      v159 = v191;
    }

    v49 = v214;
    if (!v154)
    {
      goto LABEL_254;
    }

    v160 = v238;
    v48 = v217;
    if (!v156)
    {
      goto LABEL_253;
    }

LABEL_205:
    if (v154 == v156)
    {
      goto LABEL_216;
    }

LABEL_206:
    v173 = v159;
    v174 = v154;
    v175 = v156;
LABEL_207:
    v192 = memcmp(v174, v175, v173);
    sub_1ADE42CB8(0);
    sub_1ADDCC35C(v219, v218);
    if (!v192)
    {
      goto LABEL_212;
    }

    goto LABEL_16;
  }

  if (v101 != 2)
  {
    memset(__s1, 0, 14);
    if (!v49)
    {
      goto LABEL_165;
    }

    v219 = v57;
    if (v49 != 2)
    {
      if (v204 < v206)
      {
        goto LABEL_232;
      }

      sub_1ADE42C78(0);
      sub_1ADDD86D8(v57, v58);
      v176 = sub_1AE23BB7C();
      if (!v176)
      {
        goto LABEL_251;
      }

      v177 = v176;
      v178 = sub_1AE23BBAC();
      if (!__OFSUB__(v206, v178))
      {
        v151 = (v206 - v178 + v177);
        v152 = sub_1AE23BB9C();
        if (!v151)
        {
          goto LABEL_252;
        }

        goto LABEL_180;
      }

      goto LABEL_236;
    }

    v164 = *(v212 + 16);
    v165 = *(v212 + 24);
    sub_1ADE42C78(0);
    v218 = v58;
    sub_1ADDD86D8(v57, v58);
    v166 = sub_1AE23BB7C();
    if (v166)
    {
      v167 = sub_1AE23BBAC();
      if (__OFSUB__(v164, v167))
      {
        goto LABEL_242;
      }

      v166 += v164 - v167;
    }

    v99 = __OFSUB__(v165, v164);
    v168 = v165 - v164;
    if (v99)
    {
      goto LABEL_233;
    }

    v169 = sub_1AE23BB9C();
    v49 = v214;
    if (!v166)
    {
      goto LABEL_255;
    }

LABEL_172:
    if (v169 >= v168)
    {
      v173 = v168;
    }

    else
    {
      v173 = v169;
    }

    v174 = __s1;
    v175 = v166;
    goto LABEL_207;
  }

  v153 = *(v57 + 16);
  sub_1ADE42C78(0);
  v219 = v57;
  sub_1ADDD86D8(v57, v58);
  v154 = sub_1AE23BB7C();
  if (v154)
  {
    v155 = sub_1AE23BBAC();
    if (__OFSUB__(v153, v155))
    {
      goto LABEL_229;
    }

    v154 += v153 - v155;
  }

  sub_1AE23BB9C();
  if (v49 == 2)
  {
    v218 = v58;
    v217 = v48;
    v182 = *(v212 + 16);
    v183 = *(v212 + 24);
    v156 = sub_1AE23BB7C();
    if (v156)
    {
      v184 = sub_1AE23BBAC();
      if (__OFSUB__(v182, v184))
      {
        goto LABEL_243;
      }

      v156 += v182 - v184;
    }

    v99 = __OFSUB__(v183, v182);
    v185 = v183 - v182;
    if (v99)
    {
      goto LABEL_238;
    }

    v186 = sub_1AE23BB9C();
    if (v186 >= v185)
    {
      v159 = v185;
    }

    else
    {
      v159 = v186;
    }

    v49 = v214;
    if (!v154)
    {
      goto LABEL_249;
    }

    v160 = v238;
    v48 = v217;
    if (!v156)
    {
      goto LABEL_248;
    }

    goto LABEL_205;
  }

  if (v49 != 1)
  {
    LODWORD(__s1[0]) = v212;
    BYTE4(__s1[0]) = v205;
    *(__s1 + 5) = *(&v212 + 5);
    HIBYTE(__s1[0]) = HIBYTE(v212);
    LODWORD(__s1[1]) = v213;
    WORD2(__s1[1]) = WORD2(v213);
    if (!v154)
    {
      goto LABEL_256;
    }

    goto LABEL_210;
  }

  v218 = v58;
  if (v204 < v206)
  {
    goto LABEL_234;
  }

  v156 = sub_1AE23BB7C();
  if (v156)
  {
    v157 = sub_1AE23BBAC();
    if (__OFSUB__(v206, v157))
    {
      goto LABEL_245;
    }

    v156 += v206 - v157;
  }

  v158 = sub_1AE23BB9C();
  v159 = v203;
  if (v158 < v203)
  {
    v159 = v158;
  }

  if (!v154)
  {
    goto LABEL_247;
  }

  v160 = v238;
  if (v156)
  {
    goto LABEL_155;
  }

  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:
  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  __break(1u);
LABEL_251:
  sub_1AE23BB9C();
LABEL_252:
  __break(1u);
LABEL_253:
  __break(1u);
LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  __break(1u);
LABEL_258:
  __break(1u);
LABEL_259:
  __break(1u);
LABEL_260:
  __break(1u);
LABEL_261:
  result = sub_1AE23BB9C();
  __break(1u);
  return result;
}

uint64_t sub_1ADFB8BD0@<X0>(_WORD *a1@<X8>)
{
  v163 = a1;
  v209 = sub_1AE23C12C();
  v2 = *(v209 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v209);
  v179 = &v161 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v183 = &v161 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v204 = &v161 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v180 = &v161 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v184 = &v161 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v205 = &v161 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v196 = &v161 - v16;
  v17 = type metadata accessor for Replica();
  v195 = *(v17 - 8);
  v18 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v161 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v194 = &v161 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v161 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v161 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v161 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v161 - v37;
  v162 = v1;
  v210 = *v1;

  sub_1ADFB6944(v39);
  v40 = sub_1ADF7E5D8(v210);

  v41 = v40 + 56;
  v42 = 1 << *(v40 + 32);
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  else
  {
    v43 = -1;
  }

  v171 = v43 & *(v40 + 56);
  v44 = (v42 + 63) >> 6;
  v202 = v2 + 16;
  v203 = v2;
  v208 = (v2 + 32);
  v206 = (v2 + 8);
  v178 = v40;

  v45 = v44;
  v46 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  v201 = v23;
  v172 = v40 + 56;
  v166 = v44;
  v192 = v29;
  v193 = v20;
  v187 = v32;
  v190 = v38;
  v191 = v35;
  while (1)
  {
    v48 = v46;
    v49 = v205;
LABEL_6:
    v50 = v171;
    if (!v171)
    {
      break;
    }

    v51 = v48;
    v52 = v178;
LABEL_12:
    v168 = v47;
    v171 = (v50 - 1) & v50;
    v53 = *(v52 + 48);
    v169 = v51;
    v54 = (v53 + ((v51 << 11) | (32 * __clz(__rbit64(v50)))));
    v55 = v54[1];
    v167 = *v54;
    v56 = v167;
    v173 = v55;
    v57 = *(&v55 + 1);
    if (v167)
    {
      v58 = v49;
      v59 = *(&v167 + 1);
      v60 = 1 << *(v52 + 32);
      if (v60 < 64)
      {
        v61 = ~(-1 << v60);
      }

      else
      {
        v61 = -1;
      }

      v62 = v32;
      v63 = v29;
      v64 = v61 & *(v52 + 56);

      v200 = v56;
      v197 = v59;
      v49 = v58;
      sub_1ADE42C78(v56);
      v164 = v173;
      v165 = v57;
      sub_1ADDD86D8(v173, v57);
      v65 = v178;
      v66 = v64;
      v29 = v63;
      v32 = v62;
      v67 = 0;
      v170 = (v60 + 63) >> 6;
LABEL_17:
      while (v66)
      {
LABEL_22:
        v69 = __clz(__rbit64(v66));
        v66 &= v66 - 1;
        v70 = (*(v65 + 48) + ((v67 << 11) | (32 * v69)));
        v71 = *v70;
        if (*v70)
        {
          v176 = v67;
          v177 = v66;
          v73 = v70[1];
          v72 = v70[2];
          v74 = v70[3];
          v75 = *(v73 + 64);
          v185 = v73 + 64;
          v76 = 1 << *(v73 + 32);
          if (v76 < 64)
          {
            v77 = ~(-1 << v76);
          }

          else
          {
            v77 = -1;
          }

          v78 = v77 & v75;
          v186 = v71;
          sub_1ADE42C78(v71);
          v175 = v72;
          v174 = v74;
          sub_1ADDD86D8(v72, v74);
          v182 = (v76 + 63) >> 6;
          v188 = v73;

          v189 = 0;
          v79 = 0;
          v199 = 0;
          while (v78)
          {
            v84 = v79;
            v85 = v191;
LABEL_39:
            v88 = __clz(__rbit64(v78));
            v78 &= v78 - 1;
            v89 = v88 | (v84 << 6);
            v90 = v188;
            v91 = v194;
            sub_1ADDDE768(*(v188 + 48) + *(v195 + 72) * v89, v194);
            v92 = v203;
            v93 = v196;
            v94 = v209;
            (*(v203 + 16))(v196, *(v90 + 56) + *(v203 + 72) * v89, v209);
            v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
            v96 = *(v95 + 48);
            sub_1ADDD8010(v91, v85);
            (*(v92 + 32))(v85 + v96, v93, v94);
            (*(*(v95 - 8) + 56))(v85, 0, 1, v95);
            v49 = v205;
            v23 = v201;
LABEL_40:
            v97 = v190;
            sub_1ADFBA458(v85, v190);
            v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
            v98 = *(v83 - 8);
            v198 = *(v98 + 48);
            v99 = v198(v97, 1, v83);
            v207 = v83;
            if (v99 == 1)
            {

              if (v189 == *(v197 + 16))
              {
                v113 = v199;
              }

              else
              {
                v113 = v199 | 2;
              }

              goto LABEL_57;
            }

            v100 = *(v83 + 48);
            v101 = *v208;
            (*v208)(v49, v97 + v100, v209);
            sub_1ADDD8010(v97, v23);
            if (*(v197 + 16) && (v102 = sub_1ADDD8A6C(v23), (v103 & 1) != 0))
            {
              v104 = v180;
              v105 = v209;
              (*(v203 + 16))(v180, *(v197 + 56) + *(v203 + 72) * v102, v209);
              sub_1ADDF1F8C(v23);
              v106 = v184;
              v107 = v104;
              v49 = v205;
              v101(v184, v107, v105);
              if (sub_1AE23C0BC())
              {
                v108 = sub_1AE23C04C();
                v109 = 2 * (v108 != sub_1AE23C04C());
                v110 = v106;
              }

              else
              {
                v112 = sub_1AE23C04C();
                if (sub_1AE23C04C() < v112 && (sub_1AE23C0BC() & 1) != 0)
                {
                  v109 = 1;
                }

                else
                {
                  v109 = 3;
                }

                v110 = v184;
              }

              v23 = v201;
              v81 = *v206;
              (*v206)(v110, v209);
              if (__OFADD__(v189, 1))
              {
                goto LABEL_103;
              }

              v189 = (v189 + 1);
              v80 = v109 | v199;
            }

            else
            {
              sub_1ADDF1F8C(v23);
              v80 = v199 | 1;
              v81 = *v206;
            }

            v81(v49, v209);
            v199 = v80;
            v82 = v80 == 3;
            v83 = v207;
            if (v82)
            {

              v113 = 3;
LABEL_57:
              v114 = *(v186 + 64);
              v182 = v186 + 64;
              v115 = 1 << *(v186 + 32);
              if (v115 < 64)
              {
                v116 = ~(-1 << v115);
              }

              else
              {
                v116 = -1;
              }

              v117 = v116 & v114;
              v181 = (v115 + 63) >> 6;
              v189 = (v98 + 56);

              v185 = 0;
              v118 = 0;
              v119 = v193;
              while (1)
              {
                if (!v117)
                {
                  if (v181 <= v118 + 1)
                  {
                    v122 = v118 + 1;
                  }

                  else
                  {
                    v122 = v181;
                  }

                  v123 = v122 - 1;
                  while (1)
                  {
                    v121 = v118 + 1;
                    if (__OFADD__(v118, 1))
                    {
                      goto LABEL_101;
                    }

                    if (v121 >= v181)
                    {
                      v117 = 0;
                      v135 = 1;
                      v118 = v123;
                      v134 = v192;
                      goto LABEL_74;
                    }

                    v117 = *(v182 + 8 * v121);
                    ++v118;
                    if (v117)
                    {
                      v199 = v113;
                      v118 = v121;
                      goto LABEL_73;
                    }
                  }
                }

                v199 = v113;
                v121 = v118;
LABEL_73:
                v124 = __clz(__rbit64(v117));
                v117 &= v117 - 1;
                v125 = v124 | (v121 << 6);
                v126 = v186;
                v127 = v194;
                sub_1ADDDE768(*(v186 + 48) + *(v195 + 72) * v125, v194);
                v128 = v203;
                v129 = *(v126 + 56) + *(v203 + 72) * v125;
                v130 = v196;
                v131 = v209;
                (*(v203 + 16))(v196, v129, v209);
                v83 = v207;
                v132 = *(v207 + 48);
                v133 = v127;
                v134 = v192;
                sub_1ADDD8010(v133, v192);
                (*(v128 + 32))(v134 + v132, v130, v131);
                v135 = 0;
                v119 = v193;
                v23 = v201;
                v113 = v199;
LABEL_74:
                (*v189)(v134, v135, 1, v83);
                v136 = v187;
                sub_1ADFBA458(v134, v187);
                if (v198(v136, 1, v83) == 1)
                {
                  break;
                }

                v137 = *(v83 + 48);
                v138 = *v208;
                (*v208)(v204, v136 + v137, v209);
                sub_1ADDD8010(v136, v119);
                v49 = v205;
                if (*(v200 + 16) && (v139 = sub_1ADDD8A6C(v119), (v140 & 1) != 0))
                {
                  v141 = v179;
                  v142 = v209;
                  (*(v203 + 16))(v179, *(v200 + 56) + *(v203 + 72) * v139, v209);
                  sub_1ADDF1F8C(v119);
                  v143 = v183;
                  v138(v183, v141, v142);
                  if (sub_1AE23C0BC())
                  {
                    v144 = sub_1AE23C04C();
                    v145 = 2 * (v144 != sub_1AE23C04C());
                    v146 = v143;
                  }

                  else
                  {
                    v147 = sub_1AE23C04C();
                    if (sub_1AE23C04C() < v147 && (sub_1AE23C0BC() & 1) != 0)
                    {
                      v145 = 1;
                    }

                    else
                    {
                      v145 = 3;
                    }

                    v146 = v183;
                  }

                  v49 = v205;
                  v119 = v193;
                  v23 = v201;
                  v120 = *v206;
                  (*v206)(v146, v209);
                  if (__OFADD__(v185, 1))
                  {
                    goto LABEL_104;
                  }

                  ++v185;
                  v113 |= v145;
                }

                else
                {
                  sub_1ADDF1F8C(v119);
                  v113 |= 1uLL;
                  v120 = *v206;
                }

                v120(v204, v209);
                v83 = v207;
                if (v113 == 3)
                {
                  v150 = v186;

                  sub_1ADE42CB8(v150);
                  sub_1ADDCC35C(v175, v174);
                  v29 = v192;
                  v32 = v187;
                  v65 = v178;
                  v66 = v177;
                  v67 = v176;
                  goto LABEL_17;
                }
              }

              v148 = v186;

              v149 = *(v200 + 16);
              sub_1ADE42CB8(v148);
              sub_1ADDCC35C(v175, v174);
              v29 = v192;
              v32 = v136;
              v65 = v178;
              v66 = v177;
              v67 = v176;
              v49 = v205;
              if (v185 == v149 && v113 == 1)
              {

                sub_1ADE42CB8(v200);
                sub_1ADDCC35C(v164, v165);
                v48 = v169;
                v41 = v172;
                v45 = v166;
                v47 = v168;
                goto LABEL_6;
              }

              goto LABEL_17;
            }
          }

          if (v182 <= v79 + 1)
          {
            v86 = v79 + 1;
          }

          else
          {
            v86 = v182;
          }

          v87 = v86 - 1;
          v85 = v191;
          while (1)
          {
            v84 = v79 + 1;
            if (__OFADD__(v79, 1))
            {
              break;
            }

            if (v84 >= v182)
            {
              v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
              (*(*(v111 - 8) + 56))(v85, 1, 1, v111);
              v78 = 0;
              v79 = v87;
              goto LABEL_40;
            }

            v78 = *(v185 + 8 * v84);
            ++v79;
            if (v78)
            {
              v79 = v84;
              goto LABEL_39;
            }
          }

          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }
      }

      while (1)
      {
        v68 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          break;
        }

        if (v68 >= v170)
        {

          goto LABEL_92;
        }

        v66 = *(v172 + 8 * v68);
        ++v67;
        if (v66)
        {
          v67 = v68;
          goto LABEL_22;
        }
      }

LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    sub_1ADE42C78(0);
    sub_1ADDD86D8(v173, v57);
LABEL_92:
    v151 = v168;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v151;
    v210 = v151;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1ADE6F09C(0, *(v151 + 16) + 1, 1);
      v47 = v210;
    }

    v41 = v172;
    v45 = v166;
    v46 = v169;
    v153 = v173;
    v155 = *(v47 + 16);
    v154 = *(v47 + 24);
    if (v155 >= v154 >> 1)
    {
      sub_1ADE6F09C((v154 > 1), v155 + 1, 1);
      v153 = v173;
      v46 = v169;
      v45 = v166;
      v41 = v172;
      v47 = v210;
    }

    *(v47 + 16) = v155 + 1;
    v156 = v47 + 32 * v155;
    *(v156 + 48) = v153;
    *(v156 + 32) = v167;
  }

  v52 = v178;
  while (1)
  {
    v51 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v51 >= v45)
    {
      v157 = v47;

      *v162 = v157;
      if (qword_1EB5B9528 != -1)
      {
        goto LABEL_106;
      }

      goto LABEL_99;
    }

    v50 = *(v41 + 8 * v51);
    ++v48;
    if (v50)
    {
      goto LABEL_12;
    }
  }

LABEL_105:
  __break(1u);
LABEL_106:
  result = swift_once();
LABEL_99:
  v159 = byte_1EB5D74C2;
  v160 = v163;
  *v163 = word_1EB5D74C0;
  *(v160 + 2) = v159;
  return result;
}